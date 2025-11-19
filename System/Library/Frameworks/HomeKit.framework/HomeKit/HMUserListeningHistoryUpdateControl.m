@interface HMUserListeningHistoryUpdateControl
- (BOOL)isEqual:(id)a3;
- (HMUserListeningHistoryUpdateControl)initWithAccessories:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMUserListeningHistoryUpdateControl

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableUserListeningHistoryUpdateControl allocWithZone:a3];
  v5 = [(HMUserListeningHistoryUpdateControl *)self accessories];
  v6 = [(HMMutableUserListeningHistoryUpdateControl *)v4 initWithAccessories:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = [(HMUserListeningHistoryUpdateControl *)self accessories];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __47__HMUserListeningHistoryUpdateControl_isEqual___block_invoke;
      v20[3] = &unk_1E754C588;
      v21 = v7;
      v9 = v7;
      [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

      v10 = [MEMORY[0x1E695DFA8] set];
      v11 = [(HMUserListeningHistoryUpdateControl *)v6 accessories];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __47__HMUserListeningHistoryUpdateControl_isEqual___block_invoke_2;
      v18 = &unk_1E754C588;
      v19 = v10;
      v12 = v10;
      [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];

      v13 = [v9 isEqualToSet:{v12, v15, v16, v17, v18}];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

uint64_t __47__HMUserListeningHistoryUpdateControl_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

uint64_t __47__HMUserListeningHistoryUpdateControl_isEqual___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (HMUserListeningHistoryUpdateControl)initWithAccessories:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMUserListeningHistoryUpdateControl;
  v5 = [(HMUserListeningHistoryUpdateControl *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFA8];
    v7 = [v4 copy];
    v8 = [v6 setWithArray:v7];
    internalAccessories = v5->_internalAccessories;
    v5->_internalAccessories = v8;
  }

  return v5;
}

@end