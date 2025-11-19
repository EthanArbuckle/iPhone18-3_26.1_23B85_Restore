@interface HMShortcutAction
+ (BOOL)isSupportedForHome:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidWithError:(id *)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)requiresDeviceUnlock;
- (HMShortcutAction)init;
- (HMShortcutAction)initWithCoder:(id)a3;
- (HMShortcutAction)initWithDictionary:(id)a3 home:(id)a4;
- (HMShortcutAction)initWithShortcut:(id)a3;
- (HMShortcutAction)initWithUUID:(id)a3;
- (WFHomeWorkflow)shortcut;
- (char)initWithShortcut:(char *)a1 shortcutData:(void *)a2 uuid:(void *)a3;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shortcutData;
@end

@implementation HMShortcutAction

- (HMShortcutAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMShortcutAction;
  v5 = [(HMAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.workflowDataKey"];
    shortcutData = v5->_shortcutData;
    v5->_shortcutData = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
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
      v7 = [(HMShortcutAction *)self shortcutData];
      v8 = [(HMShortcutAction *)v6 shortcutData];
      v9 = v8;
      if (v7 && v8)
      {
        v10 = [v7 isEqualToData:v8];
      }

      else
      {
        v11 = [(HMAction *)self uniqueIdentifier];
        v12 = [(HMAction *)v6 uniqueIdentifier];
        v10 = [v11 isEqual:v12];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v4 = [HMShortcutAction initWithShortcut:self->_shortcut shortcutData:self->_shortcutData uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (char)initWithShortcut:(char *)a1 shortcutData:(void *)a2 uuid:(void *)a3
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = HMShortcutAction;
    a1 = objc_msgSendSuper2(&v13, sel_initWithUUID_, 0);
    if (a1)
    {
      v7 = &OBJC_IVAR___HMShortcutAction__shortcut;
      if (v5)
      {
        v8 = v5;
      }

      else
      {
        v7 = &OBJC_IVAR___HMShortcutAction__shortcutData;
        v8 = v6;
      }

      v9 = *v7;
      v10 = v8;
      v11 = *&a1[v9];
      *&a1[v9] = v10;
    }
  }

  return a1;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
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

  if (!v6)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v7 = [v6 shortcutData];
  os_unfair_lock_lock_with_options();
  shortcutData = self->_shortcutData;
  v9 = shortcutData;
  if (!shortcutData)
  {
    v9 = [(WFHomeWorkflow *)self->_shortcut data];
  }

  v10 = HMFEqualObjects();
  v11 = v10;
  if (!shortcutData)
  {

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v10 & 1) == 0)
  {
LABEL_9:
    objc_storeStrong(&self->_shortcutData, v7);
    shortcut = self->_shortcut;
    self->_shortcut = 0;
  }

LABEL_10:
  v13 = v11 ^ 1;
  os_unfair_lock_unlock(&self->_lock);

LABEL_12:
  return v13;
}

- (id)_serializeForAdd
{
  v3 = [(HMShortcutAction *)self shortcutData];
  if (v3)
  {
    v8.receiver = self;
    v8.super_class = HMShortcutAction;
    v4 = [(HMAction *)&v8 _serializeForAdd];
    v5 = [v4 mutableCopy];

    [v5 setObject:v3 forKeyedSubscript:@"HM.workflowDataKey"];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)requiresDeviceUnlock
{
  v2 = [(HMShortcutAction *)self shortcut];
  v3 = [v2 requiresDeviceUnlock];

  return v3;
}

- (BOOL)isValidWithError:(id *)a3
{
  v3 = [(HMShortcutAction *)self shortcutData];
  v4 = v3 != 0;

  return v4;
}

- (id)shortcutData
{
  os_unfair_lock_lock_with_options();
  shortcutData = self->_shortcutData;
  if (shortcutData)
  {
    v4 = shortcutData;
  }

  else
  {
    v4 = [(WFHomeWorkflow *)self->_shortcut data];
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (WFHomeWorkflow)shortcut
{
  os_unfair_lock_lock_with_options();
  shortcut = self->_shortcut;
  if (shortcut)
  {
LABEL_2:
    v4 = shortcut;
    goto LABEL_10;
  }

  if (self->_shortcutData && WorkflowKitLibraryCore())
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = getWFHomeWorkflowClass_softClass;
    v15 = getWFHomeWorkflowClass_softClass;
    if (!getWFHomeWorkflowClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getWFHomeWorkflowClass_block_invoke;
      v11[3] = &unk_1E754CB30;
      v11[4] = &v12;
      __getWFHomeWorkflowClass_block_invoke(v11);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    v7 = [[v5 alloc] initWithData:self->_shortcutData];
    v8 = self->_shortcut;
    self->_shortcut = v7;

    shortcut = self->_shortcut;
    if (shortcut)
    {
      shortcutData = self->_shortcutData;
      self->_shortcutData = 0;

      shortcut = self->_shortcut;
    }

    goto LABEL_2;
  }

  v4 = 0;
LABEL_10:
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (HMShortcutAction)initWithDictionary:(id)a3 home:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMShortcutAction;
  v7 = [(HMAction *)&v11 initWithDictionary:v6 home:a4];
  if (v7)
  {
    v8 = [v6 hmf_dataForKey:@"HM.workflowDataKey"];
    shortcutData = v7->_shortcutData;
    v7->_shortcutData = v8;
  }

  return v7;
}

- (HMShortcutAction)initWithShortcut:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = _HMFPreconditionFailure();
    [(HMShortcutAction *)v8 initWithUUID:v9, v10];
  }

  v5 = v4;
  v6 = [HMShortcutAction initWithShortcut:v4 shortcutData:0 uuid:?];

  return v6;
}

- (HMShortcutAction)initWithUUID:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMShortcutAction)init
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

+ (BOOL)isSupportedForHome:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 residentDevices];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v9 + 1) + 8 * i) capabilities] & 0x100) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

@end