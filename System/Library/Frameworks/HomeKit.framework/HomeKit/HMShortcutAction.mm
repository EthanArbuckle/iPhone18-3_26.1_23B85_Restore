@interface HMShortcutAction
+ (BOOL)isSupportedForHome:(id)home;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidWithError:(id *)error;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)requiresDeviceUnlock;
- (HMShortcutAction)init;
- (HMShortcutAction)initWithCoder:(id)coder;
- (HMShortcutAction)initWithDictionary:(id)dictionary home:(id)home;
- (HMShortcutAction)initWithShortcut:(id)shortcut;
- (HMShortcutAction)initWithUUID:(id)d;
- (WFHomeWorkflow)shortcut;
- (char)initWithShortcut:(char *)shortcut shortcutData:(void *)data uuid:(void *)uuid;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortcutData;
@end

@implementation HMShortcutAction

- (HMShortcutAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMShortcutAction;
  v5 = [(HMAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.workflowDataKey"];
    shortcutData = v5->_shortcutData;
    v5->_shortcutData = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
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
      shortcutData = [(HMShortcutAction *)self shortcutData];
      shortcutData2 = [(HMShortcutAction *)v6 shortcutData];
      v9 = shortcutData2;
      if (shortcutData && shortcutData2)
      {
        v10 = [shortcutData isEqualToData:shortcutData2];
      }

      else
      {
        uniqueIdentifier = [(HMAction *)self uniqueIdentifier];
        uniqueIdentifier2 = [(HMAction *)v6 uniqueIdentifier];
        v10 = [uniqueIdentifier isEqual:uniqueIdentifier2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock_with_options();
  v4 = [HMShortcutAction initWithShortcut:self->_shortcut shortcutData:self->_shortcutData uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (char)initWithShortcut:(char *)shortcut shortcutData:(void *)data uuid:(void *)uuid
{
  dataCopy = data;
  uuidCopy = uuid;
  if (shortcut)
  {
    v13.receiver = shortcut;
    v13.super_class = HMShortcutAction;
    shortcut = objc_msgSendSuper2(&v13, sel_initWithUUID_, 0);
    if (shortcut)
    {
      v7 = &OBJC_IVAR___HMShortcutAction__shortcut;
      if (dataCopy)
      {
        v8 = dataCopy;
      }

      else
      {
        v7 = &OBJC_IVAR___HMShortcutAction__shortcutData;
        v8 = uuidCopy;
      }

      v9 = *v7;
      v10 = v8;
      v11 = *&shortcut[v9];
      *&shortcut[v9] = v10;
    }
  }

  return shortcut;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
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

  shortcutData = [v6 shortcutData];
  os_unfair_lock_lock_with_options();
  shortcutData = self->_shortcutData;
  data = shortcutData;
  if (!shortcutData)
  {
    data = [(WFHomeWorkflow *)self->_shortcut data];
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
    objc_storeStrong(&self->_shortcutData, shortcutData);
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
  shortcutData = [(HMShortcutAction *)self shortcutData];
  if (shortcutData)
  {
    v8.receiver = self;
    v8.super_class = HMShortcutAction;
    _serializeForAdd = [(HMAction *)&v8 _serializeForAdd];
    v5 = [_serializeForAdd mutableCopy];

    [v5 setObject:shortcutData forKeyedSubscript:@"HM.workflowDataKey"];
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
  shortcut = [(HMShortcutAction *)self shortcut];
  requiresDeviceUnlock = [shortcut requiresDeviceUnlock];

  return requiresDeviceUnlock;
}

- (BOOL)isValidWithError:(id *)error
{
  shortcutData = [(HMShortcutAction *)self shortcutData];
  v4 = shortcutData != 0;

  return v4;
}

- (id)shortcutData
{
  os_unfair_lock_lock_with_options();
  shortcutData = self->_shortcutData;
  if (shortcutData)
  {
    data = shortcutData;
  }

  else
  {
    data = [(WFHomeWorkflow *)self->_shortcut data];
  }

  v5 = data;
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

- (HMShortcutAction)initWithDictionary:(id)dictionary home:(id)home
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = HMShortcutAction;
  v7 = [(HMAction *)&v11 initWithDictionary:dictionaryCopy home:home];
  if (v7)
  {
    v8 = [dictionaryCopy hmf_dataForKey:@"HM.workflowDataKey"];
    shortcutData = v7->_shortcutData;
    v7->_shortcutData = v8;
  }

  return v7;
}

- (HMShortcutAction)initWithShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (!shortcutCopy)
  {
    v8 = _HMFPreconditionFailure();
    [(HMShortcutAction *)v8 initWithUUID:v9, v10];
  }

  v5 = shortcutCopy;
  v6 = [HMShortcutAction initWithShortcut:shortcutCopy shortcutData:0 uuid:?];

  return v6;
}

- (HMShortcutAction)initWithUUID:(id)d
{
  dCopy = d;
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

+ (BOOL)isSupportedForHome:(id)home
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  residentDevices = [home residentDevices];
  v4 = [residentDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(residentDevices);
        }

        if (([*(*(&v9 + 1) + 8 * i) capabilities] & 0x100) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [residentDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
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