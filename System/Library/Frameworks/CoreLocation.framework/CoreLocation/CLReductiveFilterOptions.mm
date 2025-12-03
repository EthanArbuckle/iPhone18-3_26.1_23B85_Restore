@interface CLReductiveFilterOptions
- (CLReductiveFilterOptions)initWithBeaconType:(unint64_t)type transmitPower:(double)power;
@end

@implementation CLReductiveFilterOptions

- (CLReductiveFilterOptions)initWithBeaconType:(unint64_t)type transmitPower:(double)power
{
  v25 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CLReductiveFilterOptions;
  v6 = [(CLReductiveFilterOptions *)&v14 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 1) = type;
    *(v6 + 24) = xmmword_19BA8CE50;
    if (power < 4.0 || power > 20.0)
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
        powerCopy2 = power;
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
        powerCopy2 = power;
        v21 = 2050;
        v22 = 0x4010000000000000;
        v23 = 2050;
        v24 = 0x4034000000000000;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "transmitPower: invalid range of transmit power", "{msg%{public}.0s:transmitPower: invalid range of transmit power, transmitPower_dBm:%{public}.6f, min.TransmitPower_dBm:%{public}.6f, max.TransmitPower_dBm:%{public}.6f}", buf, 0x30u);
      }

      powerCopy3 = 4.0;
      if (power >= 4.0)
      {
        powerCopy3 = power;
      }

      power = fmin(powerCopy3, 20.0);
    }

    v7->_transmitPower = power;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

@end