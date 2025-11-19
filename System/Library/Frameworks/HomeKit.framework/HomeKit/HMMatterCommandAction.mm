@interface HMMatterCommandAction
+ (id)actionWithProtoBuf:(id)a3 home:(id)a4;
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (HMMatterCommandAction)init;
- (HMMatterCommandAction)initWithCoder:(id)a3;
- (HMMatterCommandAction)initWithCommands:(id)a3 enforceExecutionOrder:(BOOL)a4 uuid:(id)a5;
- (HMMatterCommandAction)initWithDictionary:(id)a3 home:(id)a4;
- (HMMatterCommandAction)initWithUUID:(id)a3;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProtoBuf;
- (void)__configureWithContext:(id)a3 actionSet:(id)a4;
@end

@implementation HMMatterCommandAction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMMatterCommandAction enforceExecutionOrder](self, "enforceExecutionOrder")}];
  v5 = [(HMMatterCommandAction *)self commands];
  v6 = [v3 stringWithFormat:@"EnforceExecutionOrder: %@ Commands: %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v5 = [HMMatterCommandAction allocWithZone:a3];
  v6 = [(HMMatterCommandAction *)self commands];
  v7 = [(HMMatterCommandAction *)v5 initWithMatterCommands:v6 enforceExecutionOrder:[(HMMatterCommandAction *)self enforceExecutionOrder]];

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
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
      v7 = [(HMMatterCommandAction *)self commands];
      v8 = [(HMMatterCommandAction *)v6 commands];
      if ([v7 isEqualToArray:v8])
      {
        v9 = [(HMMatterCommandAction *)self enforceExecutionOrder];
        v10 = v9 ^ [(HMMatterCommandAction *)v6 enforceExecutionOrder]^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HMMatterCommandAction)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HMMatterCommandAction;
  v5 = [(HMAction *)&v28 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = HMAllowedClassesForMatterCommand();
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HMCommandKey"];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__HMMatterCommandAction_initWithCoder___block_invoke;
    v24[3] = &unk_1E754B750;
    v25 = v6;
    v12 = v5;
    v26 = v12;
    v27 = v11;
    v13 = v11;
    v14 = v6;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    v15 = [v13 copy];
    commands = v12->_commands;
    v12->_commands = v15;

    v12->_enforceExecutionOrder = [v4 decodeBoolForKey:@"HMEnforceExecutionOrderCodingKey"];
LABEL_4:
    v17 = v5;
    goto LABEL_8;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v5;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v21;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to get serializedCommands from coder", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v17 = 0;
LABEL_8:

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

void __39__HMMatterCommandAction_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[HMMatterCommand alloc] initWithDictionary:v3 home:*(a1 + 32)];
  if (v4)
  {
    [*(a1 + 48) addObject:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to create matter command from dictionary: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)encodeAsProtoBuf
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(HMPBMatterCommandAction);
  v4 = [(HMAction *)self uuid];
  v5 = [v4 hm_convertToData];
  [(HMPBMatterCommandAction *)v3 setActionUUID:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(HMPBMatterCommandAction *)v3 setCommands:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(HMMatterCommandAction *)self commands];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) encodeAsProtoBuf];
        if (v12)
        {
          v13 = [(HMPBMatterCommandAction *)v3 commands];
          [v13 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(HMPBMatterCommandAction *)v3 setEnforceExecutionOrder:[(HMMatterCommandAction *)self enforceExecutionOrder]];
  v14 = objc_alloc_init(HMPBActionContainer);
  [(HMPBActionContainer *)v14 setType:4];
  [(HMPBActionContainer *)v14 setMatterCommandAction:v3];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_serializeForAdd
{
  if ([(HMAction *)self isValid])
  {
    v11.receiver = self;
    v11.super_class = HMMatterCommandAction;
    v3 = [(HMAction *)&v11 _serializeForAdd];
    v4 = [v3 mutableCopy];

    v5 = [(HMMatterCommandAction *)self commands];
    v6 = [v5 na_map:&__block_literal_global_39045];

    v7 = [v6 copy];
    [v4 setObject:v7 forKeyedSubscript:@"HMCommandActionCommandsKey"];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMMatterCommandAction enforceExecutionOrder](self, "enforceExecutionOrder")}];
    [v4 setObject:v8 forKeyedSubscript:@"HMEnforceExecutionOrderKey"];

    v9 = [v4 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)__configureWithContext:(id)a3 actionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMMatterCommandAction;
  [(HMAction *)&v14 __configureWithContext:v6 actionSet:v7];
  v8 = [(HMMatterCommandAction *)self commands];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HMMatterCommandAction___configureWithContext_actionSet___block_invoke;
  v11[3] = &unk_1E754B700;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void __58__HMMatterCommandAction___configureWithContext_actionSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 home];
  [v4 _configureWithContext:v2 home:v5];
}

- (HMMatterCommandAction)initWithDictionary:(id)a3 home:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = HMMatterCommandAction;
  v8 = [(HMAction *)&v46 initWithDictionary:v6 home:v7];
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = [MEMORY[0x1E695DF70] array];
  [v6 hmf_arrayForKey:@"HMCommandActionCommandsKey"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v45 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *v43;
  v40 = v8;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v43 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v42 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (!v17)
      {
        v29 = objc_autoreleasePoolPush();
        v8 = v40;
        v30 = v40;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v32;
          v49 = 2112;
          v50 = v15;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize encoded command %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        goto LABEL_24;
      }

      v18 = [[HMMatterCommand alloc] initWithDictionary:v15 home:v7];
      if (!v18)
      {
        v33 = objc_autoreleasePoolPush();
        v8 = v40;
        v34 = v40;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v36;
          v49 = 2112;
          v50 = v17;
          _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to initialize command from dictionary %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
LABEL_24:

        goto LABEL_25;
      }

      v19 = v18;
      [v9 addObject:v18];
    }

    v12 = [v10 countByEnumeratingWithState:&v42 objects:v51 count:16];
    v8 = v40;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_14:

  v20 = [v9 copy];
  commands = v8->_commands;
  v8->_commands = v20;

  v41 = 0;
  v22 = [v6 hmf_BOOLForKey:@"HMEnforceExecutionOrderKey" error:&v41];
  v23 = v41;
  v8->_enforceExecutionOrder = v22;
  if (!v23)
  {

LABEL_27:
    v37 = v8;
    goto LABEL_28;
  }

  v24 = v23;
  v25 = objc_autoreleasePoolPush();
  v26 = v8;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v28;
    _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Command action dictionary must have enforce execution order key", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
LABEL_25:

  v37 = 0;
LABEL_28:

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

- (HMMatterCommandAction)initWithCommands:(id)a3 enforceExecutionOrder:(BOOL)a4 uuid:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HMMatterCommandAction;
  v10 = [(HMAction *)&v13 initWithUUID:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_commands, a3);
    v11->_enforceExecutionOrder = a4;
  }

  return v11;
}

- (HMMatterCommandAction)initWithUUID:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMMatterCommandAction;
  return [(HMAction *)&v4 initWithUUID:a3];
}

- (HMMatterCommandAction)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)actionWithProtoBuf:(id)a3 home:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696AFB0];
  v8 = [v5 actionUUID];
  v27 = [v7 hmf_UUIDWithBytesAsData:v8];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = v5;
  v9 = [v5 commands];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v13 = off_1E7545000;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [(__objc2_class *)v13[242] commandWithProtoBuf:v15 home:v6, v27];
        if (v16)
        {
          [v29 addObject:v16];
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v19 = v12;
            v21 = v20 = v6;
            *buf = 138543618;
            v35 = v21;
            v36 = 2112;
            v37 = v15;
            _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create command with proto buf: %@", buf, 0x16u);

            v6 = v20;
            v12 = v19;
            v13 = off_1E7545000;
          }

          objc_autoreleasePoolPop(v17);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v11);
  }

  v22 = [HMMatterCommandAction alloc];
  v23 = [v29 copy];
  v24 = -[HMMatterCommandAction initWithCommands:enforceExecutionOrder:uuid:](v22, "initWithCommands:enforceExecutionOrder:uuid:", v23, [v28 enforceExecutionOrder], v27);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)new
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end