@interface CLHidDevice
- (BOOL)setReport:(int64_t)a3 payload:(char *)a4 length:(int64_t)a5;
- (CLHidDevice)initWithHidDevice:(id)a3 matchingDict:(id)a4;
- (void)dealloc;
- (void)setHidDevice:(id)a3;
@end

@implementation CLHidDevice

- (CLHidDevice)initWithHidDevice:(id)a3 matchingDict:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLHidDevice;
  v6 = [(CLHidDevice *)&v8 init];
  if (v6)
  {
    v6->_hidDevice = a3;
    v6->_matching = a4;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_cancel(self->_hidDevice, a2, v2);
  objc_msgSend_close(self->_hidDevice, v4, v5);

  v6.receiver = self;
  v6.super_class = CLHidDevice;
  [(CLHidDevice *)&v6 dealloc];
}

- (void)setHidDevice:(id)a3
{
  hidDevice = self->_hidDevice;
  if (hidDevice != a3)
  {
    objc_msgSend_cancel(hidDevice, a2, a3);
    objc_msgSend_close(self->_hidDevice, v6, v7);

    self->_hidDevice = a3;
  }
}

- (BOOL)setReport:(int64_t)a3 payload:(char *)a4 length:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v8 = objc_msgSend_hidDevice(self, a2, a3);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B6ED854;
  v16[3] = &unk_1E7534FC8;
  v16[4] = a3;
  v10 = objc_msgSend_setReport_reportLength_withIdentifier_forType_error_timeout_callback_(v8, v9, a4, a5, a3, 2, &v17, 0, v16);
  if ((v10 & 1) == 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v11 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v23 = a3;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[CLHidManager] setReport: id=0x%lx, failed=%@", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      v18 = 134218242;
      v19 = a3;
      v20 = 2112;
      v21 = v17;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CLHidDevice setReport:payload:length:]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

@end