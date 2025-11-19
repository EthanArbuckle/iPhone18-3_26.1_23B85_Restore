@interface LAPSPasscodePersistenceMKBAdapter
- (BOOL)isPasscodeLockedOut;
- (id)_deviceLockStateValueForKey:(id)a3;
- (id)_mementoStateValueForKey:(id)a3;
- (id)_verifyPasscode:(id)a3 options:(id)a4;
- (id)verifyRecoveryPasscode:(id)a3;
@end

@implementation LAPSPasscodePersistenceMKBAdapter

- (BOOL)isPasscodeLockedOut
{
  v2 = MKBGetDeviceLockStateInfo();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D28AF0]];
  v4 = v3;
  v5 = &unk_284B876F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 unsignedIntValue];
  return (v7 >> 3) & 1;
}

- (id)verifyRecoveryPasscode:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"UseMementoBlob";
  v11[0] = MEMORY[0x277CBEC38];
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [(LAPSPasscodePersistenceMKBAdapter *)self _verifyPasscode:v5 options:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_verifyPasscode:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = LACLogPasscodeService();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238BCD000, v8, OS_LOG_TYPE_DEFAULT, "Will start passcode verification", buf, 2u);
  }

  v9 = MKBVerifyPasswordWithContext();
  v10 = LACLogPasscodeService();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_238BCD000, v10, OS_LOG_TYPE_DEFAULT, "Did finish passcode verification", v13, 2u);
  }

  v11 = [(LAPSPasscodePersistenceMKBAdapter *)self _persistenceErrorWithPasscodeVerificationStatus:v9];

  return v11;
}

- (id)_mementoStateValueForKey:(id)a3
{
  v3 = a3;
  if (MKBKeyBagMementoGetBlobState())
  {
    v4 = 0;
  }

  else
  {
    v4 = [0 objectForKeyedSubscript:v3];
  }

  return v4;
}

- (id)_deviceLockStateValueForKey:(id)a3
{
  v3 = a3;
  v4 = MKBGetDeviceLockStateInfo();
  v5 = [v4 objectForKey:v3];

  return v5;
}

@end