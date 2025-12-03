@interface HMMatterCommandAction
+ (id)actionWithProtoBuf:(id)buf home:(id)home;
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (HMMatterCommandAction)init;
- (HMMatterCommandAction)initWithCoder:(id)coder;
- (HMMatterCommandAction)initWithCommands:(id)commands enforceExecutionOrder:(BOOL)order uuid:(id)uuid;
- (HMMatterCommandAction)initWithDictionary:(id)dictionary home:(id)home;
- (HMMatterCommandAction)initWithUUID:(id)d;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProtoBuf;
- (void)__configureWithContext:(id)context actionSet:(id)set;
@end

@implementation HMMatterCommandAction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMMatterCommandAction enforceExecutionOrder](self, "enforceExecutionOrder")}];
  commands = [(HMMatterCommandAction *)self commands];
  v6 = [v3 stringWithFormat:@"EnforceExecutionOrder: %@ Commands: %@", v4, commands];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock_with_options();
  v5 = [HMMatterCommandAction allocWithZone:zone];
  commands = [(HMMatterCommandAction *)self commands];
  v7 = [(HMMatterCommandAction *)v5 initWithMatterCommands:commands enforceExecutionOrder:[(HMMatterCommandAction *)self enforceExecutionOrder]];

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      commands = [(HMMatterCommandAction *)self commands];
      commands2 = [(HMMatterCommandAction *)v6 commands];
      if ([commands isEqualToArray:commands2])
      {
        enforceExecutionOrder = [(HMMatterCommandAction *)self enforceExecutionOrder];
        v10 = enforceExecutionOrder ^ [(HMMatterCommandAction *)v6 enforceExecutionOrder]^ 1;
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

- (HMMatterCommandAction)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HMMatterCommandAction;
  v5 = [(HMAction *)&v28 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = HMAllowedClassesForMatterCommand();
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HMCommandKey"];

  if (v10)
  {
    array = [MEMORY[0x1E695DF70] array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__HMMatterCommandAction_initWithCoder___block_invoke;
    v24[3] = &unk_1E754B750;
    v25 = v6;
    v12 = v5;
    v26 = v12;
    v27 = array;
    v13 = array;
    v14 = v6;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    v15 = [v13 copy];
    commands = v12->_commands;
    v12->_commands = v15;

    v12->_enforceExecutionOrder = [coderCopy decodeBoolForKey:@"HMEnforceExecutionOrderCodingKey"];
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
  uuid = [(HMAction *)self uuid];
  hm_convertToData = [uuid hm_convertToData];
  [(HMPBMatterCommandAction *)v3 setActionUUID:hm_convertToData];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(HMPBMatterCommandAction *)v3 setCommands:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  commands = [(HMMatterCommandAction *)self commands];
  v8 = [commands countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(commands);
        }

        encodeAsProtoBuf = [*(*(&v17 + 1) + 8 * i) encodeAsProtoBuf];
        if (encodeAsProtoBuf)
        {
          commands2 = [(HMPBMatterCommandAction *)v3 commands];
          [commands2 addObject:encodeAsProtoBuf];
        }
      }

      v9 = [commands countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    _serializeForAdd = [(HMAction *)&v11 _serializeForAdd];
    v4 = [_serializeForAdd mutableCopy];

    commands = [(HMMatterCommandAction *)self commands];
    v6 = [commands na_map:&__block_literal_global_39045];

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

- (void)__configureWithContext:(id)context actionSet:(id)set
{
  contextCopy = context;
  setCopy = set;
  v14.receiver = self;
  v14.super_class = HMMatterCommandAction;
  [(HMAction *)&v14 __configureWithContext:contextCopy actionSet:setCopy];
  commands = [(HMMatterCommandAction *)self commands];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HMMatterCommandAction___configureWithContext_actionSet___block_invoke;
  v11[3] = &unk_1E754B700;
  v12 = contextCopy;
  v13 = setCopy;
  v9 = setCopy;
  v10 = contextCopy;
  [commands hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void __58__HMMatterCommandAction___configureWithContext_actionSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 home];
  [v4 _configureWithContext:v2 home:v5];
}

- (HMMatterCommandAction)initWithDictionary:(id)dictionary home:(id)home
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v46.receiver = self;
  v46.super_class = HMMatterCommandAction;
  v8 = [(HMAction *)&v46 initWithDictionary:dictionaryCopy home:homeCopy];
  if (!v8)
  {
    goto LABEL_27;
  }

  array = [MEMORY[0x1E695DF70] array];
  [dictionaryCopy hmf_arrayForKey:@"HMCommandActionCommandsKey"];
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

      v18 = [[HMMatterCommand alloc] initWithDictionary:v15 home:homeCopy];
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
      [array addObject:v18];
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

  v20 = [array copy];
  commands = v8->_commands;
  v8->_commands = v20;

  v41 = 0;
  v22 = [dictionaryCopy hmf_BOOLForKey:@"HMEnforceExecutionOrderKey" error:&v41];
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

- (HMMatterCommandAction)initWithCommands:(id)commands enforceExecutionOrder:(BOOL)order uuid:(id)uuid
{
  commandsCopy = commands;
  v13.receiver = self;
  v13.super_class = HMMatterCommandAction;
  v10 = [(HMAction *)&v13 initWithUUID:uuid];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_commands, commands);
    v11->_enforceExecutionOrder = order;
  }

  return v11;
}

- (HMMatterCommandAction)initWithUUID:(id)d
{
  v4.receiver = self;
  v4.super_class = HMMatterCommandAction;
  return [(HMAction *)&v4 initWithUUID:d];
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

+ (id)actionWithProtoBuf:(id)buf home:(id)home
{
  v39 = *MEMORY[0x1E69E9840];
  bufCopy = buf;
  homeCopy = home;
  v7 = MEMORY[0x1E696AFB0];
  actionUUID = [bufCopy actionUUID];
  v27 = [v7 hmf_UUIDWithBytesAsData:actionUUID];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = bufCopy;
  commands = [bufCopy commands];
  v10 = [commands countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(commands);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [(__objc2_class *)v13[242] commandWithProtoBuf:v15 home:homeCopy, v27];
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
            v21 = v20 = homeCopy;
            *buf = 138543618;
            v35 = v21;
            v36 = 2112;
            v37 = v15;
            _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create command with proto buf: %@", buf, 0x16u);

            homeCopy = v20;
            v12 = v19;
            v13 = off_1E7545000;
          }

          objc_autoreleasePoolPop(v17);
        }
      }

      v11 = [commands countByEnumeratingWithState:&v30 objects:v38 count:16];
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