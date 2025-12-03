@interface CMCatherineFeeder
- (CMCatherineFeeder)init;
- (void)dealloc;
- (void)feedCatherine:(double)catherine confidence:(double)confidence;
@end

@implementation CMCatherineFeeder

- (CMCatherineFeeder)init
{
  v4.receiver = self;
  v4.super_class = CMCatherineFeeder;
  v2 = [(CMCatherineFeeder *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMCatherineFeederInternal);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *(objc_msgSend_internal(self, a2, v2) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B734D78;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);

  v5.receiver = self;
  v5.super_class = CMCatherineFeeder;
  [(CMCatherineFeeder *)&v5 dealloc];
}

- (void)feedCatherine:(double)catherine confidence:(double)confidence
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29E8 != -1)
  {
    dispatch_once(&qword_1EAFE29E8, &unk_1F0E27FE0);
  }

  v7 = qword_1EAFE29F0;
  if (os_log_type_enabled(qword_1EAFE29F0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134283777;
    catherineCopy = catherine;
    v21 = 2049;
    confidenceCopy = confidence;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "feedCatherine called with HR %{private}f, confidence %{private}f", buf, 0x16u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29E8 != -1)
    {
      dispatch_once(&qword_1EAFE29E8, &unk_1F0E27FE0);
    }

    v15 = 134283777;
    catherineCopy2 = catherine;
    v17 = 2049;
    confidenceCopy2 = confidence;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCatherineFeeder feedCatherine:confidence:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = *(objc_msgSend_internal(self, v9, v10) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B734FD0;
  block[3] = &unk_1E7533448;
  block[4] = self;
  *&block[5] = catherine;
  *&block[6] = confidence;
  dispatch_async(v12, block);
  v13 = *MEMORY[0x1E69E9840];
}

@end