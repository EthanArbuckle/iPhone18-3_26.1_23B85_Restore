@interface ObservationForSharedAVKitSetting
@end

@implementation ObservationForSharedAVKitSetting

void ___ObservationForSharedAVKitSetting_block_invoke(id *a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ObservationForSharedAVKitSetting_block_invoke_2;
  v8[3] = &unk_1E7207180;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void ___ObservationForSharedAVKitSetting_block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = AVKitUserDefaults();
  v3 = [v2 stringForKey:*(a1 + 32)];

  v4 = [*(a1 + 40) valueForKey:*(a1 + 48)];
  v5 = v4;
  if (v3 != v4)
  {
    v6 = !v3 || v4 == 0;
    if (v6 || ([v3 isEqualToString:v4] & 1) == 0)
    {
      [*(a1 + 40) setValue:v3 forKey:*(a1 + 48)];
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = v3;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Observation: shared value of '%{public}@' changed to '%{public}@", &v10, 0x16u);
      }

      if ([*(a1 + 56) length])
      {
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        [v9 postNotificationName:*(a1 + 56) object:v3 userInfo:0];
      }
    }
  }
}

@end