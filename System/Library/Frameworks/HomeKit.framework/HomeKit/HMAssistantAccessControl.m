@interface HMAssistantAccessControl
+ (BOOL)isAccessorySupported:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAssistantAccessControl)initWithCoder:(id)a3;
- (HMAssistantAccessControl)initWithUser:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAssistantAccessControl

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[HMAssistantAccessControl isEnabled](self forKey:{"isEnabled"), @"HM.enabled"}];
  [v4 encodeInteger:-[HMAssistantAccessControl options](self forKey:{"options"), @"HM.options"}];
  [v4 encodeBool:-[HMAssistantAccessControl areActivityNotificationsEnabledForPersonalRequests](self forKey:{"areActivityNotificationsEnabledForPersonalRequests"), @"HM.activityNotificationsEnabledForPersonalRequests"}];
}

- (HMAssistantAccessControl)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMAssistantAccessControl;
  v5 = [(HMAccessControl *)&v11 initWithCoder:v4];
  if (v5)
  {
    *(&v5->_enabled + 4) = [v4 decodeBoolForKey:@"HM.enabled"];
    v5->_options = [v4 decodeIntegerForKey:@"HM.options"];
    v5->_activityNotificationsEnabledForPersonalRequests = [v4 decodeBoolForKey:@"HM.activityNotificationsEnabledForPersonalRequests"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"HM.accessories"];
    v8 = [v6 setWithArray:v7];
    accessories = v5->_accessories;
    v5->_accessories = v8;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [HMMutableAssistantAccessControl allocWithZone:?];
  v6 = [(HMAccessControl *)self user];
  v7 = [(HMAssistantAccessControl *)v5 initWithUser:v6];

  [(HMMutableAssistantAccessControl *)v7 setEnabled:[(HMAssistantAccessControl *)self isEnabled]];
  [(HMMutableAssistantAccessControl *)v7 setOptions:[(HMAssistantAccessControl *)self options]];
  [(HMMutableAssistantAccessControl *)v7 setActivityNotificationsEnabledForPersonalRequests:[(HMAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests]];
  v8 = [(HMAssistantAccessControl *)self accessories];
  v9 = [v8 copyWithZone:a3];
  [(HMMutableAssistantAccessControl *)v7 setAccessories:v9];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)isAccessorySupported:(id)a3
{
  v3 = a3;
  v4 = [v3 category];
  v5 = [v4 categoryType];
  v6 = [v5 isEqualToString:@"1D8FD40E-7CAE-4AD5-9973-977D18890DE2"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 siriEndpointProfile];
    v7 = v8 != 0;
  }

  return v7;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  [(HMAssistantAccessControl *)self isEnabled];
  v8 = HMFBooleanToString();
  v9 = HMAssistantAccessControlOptionsToString([(HMAssistantAccessControl *)self options]);
  [(HMAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
  v10 = HMFBooleanToString();
  v11 = [(HMAssistantAccessControl *)self accessories];
  if ([v11 count])
  {
    v12 = [(HMAssistantAccessControl *)self accessories];
    v13 = [v5 stringWithFormat:@"<%@%@, Enabled = %@, Options = %@, Activity Notifications Enabled For Personal Requests = %@, Accessories = %@>", v6, v7, v8, v9, v10, v12];
  }

  else
  {
    v13 = [v5 stringWithFormat:@"<%@%@, Enabled = %@, Options = %@, Activity Notifications Enabled For Personal Requests = %@, Accessories = %@>", v6, v7, v8, v9, v10, @"None"];
  }

  if (v3)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v33 = 1;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = HMAssistantAccessControl;
    if ([(HMAccessControl *)&v35 isEqual:v4])
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = [(HMAssistantAccessControl *)self isEnabled];
      if (v8 != [(HMAssistantAccessControl *)v7 isEnabled])
      {
        goto LABEL_17;
      }

      v9 = [(HMAssistantAccessControl *)self options];
      if (v9 != [(HMAssistantAccessControl *)v7 options])
      {
        goto LABEL_17;
      }

      v10 = [(HMAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
      if (v10 != [(HMAssistantAccessControl *)v7 areActivityNotificationsEnabledForPersonalRequests])
      {
        goto LABEL_17;
      }

      v11 = [(HMAssistantAccessControl *)self accessories];
      v12 = [v11 count];
      v13 = [(HMAssistantAccessControl *)v7 accessories];
      v14 = [v13 count];

      if (v12 == v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = MEMORY[0x1E695DFA8];
        v17 = [(HMAssistantAccessControl *)self accessories];
        v18 = [v16 setWithCapacity:{objc_msgSend(v17, "count")}];

        v19 = MEMORY[0x1E695DFA8];
        v20 = [(HMAssistantAccessControl *)v7 accessories];
        v21 = [v19 setWithCapacity:{objc_msgSend(v20, "count")}];

        v22 = [(HMAssistantAccessControl *)self accessories];
        v23 = [v22 count];

        if (v23)
        {
          v24 = 0;
          do
          {
            v25 = [(HMAssistantAccessControl *)self accessories];
            v26 = [v25 objectAtIndexedSubscript:v24];
            v27 = [v26 uuid];
            [v18 addObject:v27];

            v28 = [(HMAssistantAccessControl *)v7 accessories];
            v29 = [v28 objectAtIndexedSubscript:v24];
            v30 = [v29 uuid];
            [v21 addObject:v30];

            ++v24;
            v31 = [(HMAssistantAccessControl *)self accessories];
            v32 = [v31 count];
          }

          while (v24 < v32);
        }

        v33 = [v18 isEqualToSet:v21];

        objc_autoreleasePoolPop(v15);
      }

      else
      {
LABEL_17:
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

- (HMAssistantAccessControl)initWithUser:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMAssistantAccessControl;
  v3 = [(HMAccessControl *)&v7 initWithUser:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    accessories = v3->_accessories;
    v3->_accessories = v4;
  }

  return v3;
}

@end