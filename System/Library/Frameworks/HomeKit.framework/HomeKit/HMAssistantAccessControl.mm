@interface HMAssistantAccessControl
+ (BOOL)isAccessorySupported:(id)supported;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAssistantAccessControl)initWithCoder:(id)coder;
- (HMAssistantAccessControl)initWithUser:(id)user;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAssistantAccessControl

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[HMAssistantAccessControl isEnabled](self forKey:{"isEnabled"), @"HM.enabled"}];
  [coderCopy encodeInteger:-[HMAssistantAccessControl options](self forKey:{"options"), @"HM.options"}];
  [coderCopy encodeBool:-[HMAssistantAccessControl areActivityNotificationsEnabledForPersonalRequests](self forKey:{"areActivityNotificationsEnabledForPersonalRequests"), @"HM.activityNotificationsEnabledForPersonalRequests"}];
}

- (HMAssistantAccessControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMAssistantAccessControl;
  v5 = [(HMAccessControl *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    *(&v5->_enabled + 4) = [coderCopy decodeBoolForKey:@"HM.enabled"];
    v5->_options = [coderCopy decodeIntegerForKey:@"HM.options"];
    v5->_activityNotificationsEnabledForPersonalRequests = [coderCopy decodeBoolForKey:@"HM.activityNotificationsEnabledForPersonalRequests"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"HM.accessories"];
    v8 = [v6 setWithArray:v7];
    accessories = v5->_accessories;
    v5->_accessories = v8;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [HMMutableAssistantAccessControl allocWithZone:?];
  user = [(HMAccessControl *)self user];
  v7 = [(HMAssistantAccessControl *)v5 initWithUser:user];

  [(HMMutableAssistantAccessControl *)v7 setEnabled:[(HMAssistantAccessControl *)self isEnabled]];
  [(HMMutableAssistantAccessControl *)v7 setOptions:[(HMAssistantAccessControl *)self options]];
  [(HMMutableAssistantAccessControl *)v7 setActivityNotificationsEnabledForPersonalRequests:[(HMAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests]];
  accessories = [(HMAssistantAccessControl *)self accessories];
  v9 = [accessories copyWithZone:zone];
  [(HMMutableAssistantAccessControl *)v7 setAccessories:v9];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)isAccessorySupported:(id)supported
{
  supportedCopy = supported;
  category = [supportedCopy category];
  categoryType = [category categoryType];
  v6 = [categoryType isEqualToString:@"1D8FD40E-7CAE-4AD5-9973-977D18890DE2"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    siriEndpointProfile = [supportedCopy siriEndpointProfile];
    v7 = siriEndpointProfile != 0;
  }

  return v7;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
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
  accessories = [(HMAssistantAccessControl *)self accessories];
  if ([accessories count])
  {
    accessories2 = [(HMAssistantAccessControl *)self accessories];
    v13 = [v5 stringWithFormat:@"<%@%@, Enabled = %@, Options = %@, Activity Notifications Enabled For Personal Requests = %@, Accessories = %@>", shortDescription, v7, v8, v9, v10, accessories2];
  }

  else
  {
    v13 = [v5 stringWithFormat:@"<%@%@, Enabled = %@, Options = %@, Activity Notifications Enabled For Personal Requests = %@, Accessories = %@>", shortDescription, v7, v8, v9, v10, @"None"];
  }

  if (pointerCopy)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v33 = 1;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = HMAssistantAccessControl;
    if ([(HMAccessControl *)&v35 isEqual:equalCopy])
    {
      v5 = equalCopy;
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

      isEnabled = [(HMAssistantAccessControl *)self isEnabled];
      if (isEnabled != [(HMAssistantAccessControl *)v7 isEnabled])
      {
        goto LABEL_17;
      }

      options = [(HMAssistantAccessControl *)self options];
      if (options != [(HMAssistantAccessControl *)v7 options])
      {
        goto LABEL_17;
      }

      areActivityNotificationsEnabledForPersonalRequests = [(HMAssistantAccessControl *)self areActivityNotificationsEnabledForPersonalRequests];
      if (areActivityNotificationsEnabledForPersonalRequests != [(HMAssistantAccessControl *)v7 areActivityNotificationsEnabledForPersonalRequests])
      {
        goto LABEL_17;
      }

      accessories = [(HMAssistantAccessControl *)self accessories];
      v12 = [accessories count];
      accessories2 = [(HMAssistantAccessControl *)v7 accessories];
      v14 = [accessories2 count];

      if (v12 == v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = MEMORY[0x1E695DFA8];
        accessories3 = [(HMAssistantAccessControl *)self accessories];
        v18 = [v16 setWithCapacity:{objc_msgSend(accessories3, "count")}];

        v19 = MEMORY[0x1E695DFA8];
        accessories4 = [(HMAssistantAccessControl *)v7 accessories];
        v21 = [v19 setWithCapacity:{objc_msgSend(accessories4, "count")}];

        accessories5 = [(HMAssistantAccessControl *)self accessories];
        v23 = [accessories5 count];

        if (v23)
        {
          v24 = 0;
          do
          {
            accessories6 = [(HMAssistantAccessControl *)self accessories];
            v26 = [accessories6 objectAtIndexedSubscript:v24];
            uuid = [v26 uuid];
            [v18 addObject:uuid];

            accessories7 = [(HMAssistantAccessControl *)v7 accessories];
            v29 = [accessories7 objectAtIndexedSubscript:v24];
            uuid2 = [v29 uuid];
            [v21 addObject:uuid2];

            ++v24;
            accessories8 = [(HMAssistantAccessControl *)self accessories];
            v32 = [accessories8 count];
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

- (HMAssistantAccessControl)initWithUser:(id)user
{
  v7.receiver = self;
  v7.super_class = HMAssistantAccessControl;
  v3 = [(HMAccessControl *)&v7 initWithUser:user];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    accessories = v3->_accessories;
    v3->_accessories = v4;
  }

  return v3;
}

@end