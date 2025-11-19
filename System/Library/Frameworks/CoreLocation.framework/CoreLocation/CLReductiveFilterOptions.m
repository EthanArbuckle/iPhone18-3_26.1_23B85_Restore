@interface CLReductiveFilterOptions
- (CLReductiveFilterOptions)initWithBeaconType:(unint64_t)a3 transmitPower:(double)a4;
@end

@implementation CLReductiveFilterOptions

- (CLReductiveFilterOptions)initWithBeaconType:(unint64_t)a3 transmitPower:(double)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CLReductiveFilterOptions;
  v6 = [(CLReductiveFilterOptions *)&v14 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 1) = a3;
    *(v6 + 24) = xmmword_19BA8CE50;
    if (a4 < 4.0 || a4 > 20.0)
    {
      if (qword_1EAFE4768 != -1)
      {
        dispatch_once(&qword_1EAFE4768, &unk_1F0E6E578);
      }

      v9 = qword_1EAFE4770;
      if (os_log_type_enabled(qword_1EAFE4770, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289794;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2050;
        v20 = a4;
        v21 = 2050;
        v22 = 0x4010000000000000;
        v23 = 2050;
        v24 = 0x4034000000000000;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:transmitPower: invalid range of transmit power, transmitPower_dBm:%{public}.6f, min.TransmitPower_dBm:%{public}.6f, max.TransmitPower_dBm:%{public}.6f}", buf, 0x30u);
        if (qword_1EAFE4768 != -1)
        {
          dispatch_once(&qword_1EAFE4768, &unk_1F0E6E578);
        }
      }

      v10 = qword_1EAFE4770;
      if (os_signpost_enabled(qword_1EAFE4770))
      {
        *buf = 68289794;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2050;
        v20 = a4;
        v21 = 2050;
        v22 = 0x4010000000000000;
        v23 = 2050;
        v24 = 0x4034000000000000;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "transmitPower: invalid range of transmit power", "{msg%{public}.0s:transmitPower: invalid range of transmit power, transmitPower_dBm:%{public}.6f, min.TransmitPower_dBm:%{public}.6f, max.TransmitPower_dBm:%{public}.6f}", buf, 0x30u);
      }

      v11 = 4.0;
      if (a4 >= 4.0)
      {
        v11 = a4;
      }

      a4 = fmin(v11, 20.0);
    }

    v7->_transmitPower = a4;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

@end