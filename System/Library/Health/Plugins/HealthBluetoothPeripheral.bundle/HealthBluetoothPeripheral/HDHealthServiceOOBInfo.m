@interface HDHealthServiceOOBInfo
- (HDHealthServiceOOBInfo)initWithOOBData:(id)a3 btAddress:(id)a4;
- (id)description;
@end

@implementation HDHealthServiceOOBInfo

- (HDHealthServiceOOBInfo)initWithOOBData:(id)a3 btAddress:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 length] != &stru_20.cmd + 2)
  {
    _HKInitializeLogging();
    v19 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2E9CC(v7, v19);
    }

    goto LABEL_11;
  }

  v22.receiver = self;
  v22.super_class = HDHealthServiceOOBInfo;
  v9 = [(HDHealthServiceOOBInfo *)&v22 init];
  self = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_oobData, a3);
    v10 = sub_EA0C(HDHealthServiceOOBInfo, v8);
    btAddress = self->_btAddress;
    self->_btAddress = v10;

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    [v7 getBytes:&v23 length:34];
    if (v23 == 114 && BYTE1(v24) == 99)
    {
      v12 = [NSData dataWithBytes:&v23 + 1 length:16];
      v13 = [NSData dataWithBytes:&v24 + 2 length:16];
      v14 = sub_EA0C(HDHealthServiceOOBInfo, v12);
      randomValue = self->_randomValue;
      self->_randomValue = v14;

      v16 = sub_EA0C(HDHealthServiceOOBInfo, v13);
      confirmationValue = self->_confirmationValue;
      self->_confirmationValue = v16;

      goto LABEL_6;
    }

    _HKInitializeLogging();
    v20 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2E9CC(v7, v20);
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

LABEL_6:
  self = self;
  v18 = self;
LABEL_12:

  return v18;
}

- (id)description
{
  v3 = [(HDHealthServiceOOBInfo *)self randomValue];
  v4 = [(HDHealthServiceOOBInfo *)self confirmationValue];
  v5 = [(HDHealthServiceOOBInfo *)self btAddress];
  v6 = [NSString stringWithFormat:@"OOBInfo: randomValue=%@, confirmationValue=%@, btAddress=%@", v3, v4, v5];

  return v6;
}

@end