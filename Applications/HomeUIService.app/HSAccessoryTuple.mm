@interface HSAccessoryTuple
- (HMAccessory)accessory;
- (NSString)accessoryCategoryOrPrimaryServiceType;
- (NSString)titleForAccessory;
- (NSString)userFriendlyAccessoryLocalizedCapitalizedDescription;
- (NSString)userFriendlyAccessoryLocalizedLowercaseDescription;
- (id)_moveToNextStep;
- (id)description;
- (id)titleForAccessoryWithDefaultValue:(id)value;
- (void)setAccessory:(id)accessory;
@end

@implementation HSAccessoryTuple

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  userFriendlyAccessoryLocalizedCapitalizedDescription = [(HSAccessoryTuple *)self userFriendlyAccessoryLocalizedCapitalizedDescription];
  v6 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:[(HSAccessoryTuple *)self currentStep]];
  accessory = [(HSAccessoryTuple *)self accessory];
  v8 = [NSString stringWithFormat:@"%@ <accessoryCategoryOrPrimaryServiceType %@, currentStep %@, accessory %@>", v4, userFriendlyAccessoryLocalizedCapitalizedDescription, v6, accessory];

  return v8;
}

- (HMAccessory)accessory
{
  configuration = [(HSAccessoryTuple *)self configuration];
  addedAccessory = [configuration addedAccessory];

  return addedAccessory;
}

- (void)setAccessory:(id)accessory
{
  accessoryCopy = accessory;
  configuration = [(HSAccessoryTuple *)self configuration];
  [configuration setAddedAccessory:accessoryCopy];
}

- (NSString)accessoryCategoryOrPrimaryServiceType
{
  accessory = [(HSAccessoryTuple *)self accessory];
  hf_categoryOrPrimaryServiceType = [accessory hf_categoryOrPrimaryServiceType];
  v5 = hf_categoryOrPrimaryServiceType;
  if (hf_categoryOrPrimaryServiceType)
  {
    v6 = hf_categoryOrPrimaryServiceType;
  }

  else
  {
    configuration = [(HSAccessoryTuple *)self configuration];
    setupDescription = [configuration setupDescription];
    category = [setupDescription category];
    categoryType = [category categoryType];
    v11 = categoryType;
    v12 = HMAccessoryCategoryTypeOther;
    if (categoryType)
    {
      v12 = categoryType;
    }

    v6 = v12;
  }

  return v6;
}

- (NSString)userFriendlyAccessoryLocalizedCapitalizedDescription
{
  accessory = [(HSAccessoryTuple *)self accessory];
  v4 = accessory;
  if (accessory)
  {
    hf_userFriendlyLocalizedCapitalizedDescription = [accessory hf_userFriendlyLocalizedCapitalizedDescription];
  }

  else
  {
    accessoryCategoryOrPrimaryServiceType = [(HSAccessoryTuple *)self accessoryCategoryOrPrimaryServiceType];
    hf_userFriendlyLocalizedCapitalizedDescription = [HMAccessory hf_userFriendlyLocalizedCapitalizedDescription:accessoryCategoryOrPrimaryServiceType];
  }

  return hf_userFriendlyLocalizedCapitalizedDescription;
}

- (NSString)userFriendlyAccessoryLocalizedLowercaseDescription
{
  accessory = [(HSAccessoryTuple *)self accessory];
  v4 = accessory;
  if (accessory)
  {
    hf_userFriendlyLocalizedLowercaseDescription = [accessory hf_userFriendlyLocalizedLowercaseDescription];
  }

  else
  {
    accessoryCategoryOrPrimaryServiceType = [(HSAccessoryTuple *)self accessoryCategoryOrPrimaryServiceType];
    hf_userFriendlyLocalizedLowercaseDescription = [HMAccessory hf_userFriendlyLocalizedLowercaseDescription:accessoryCategoryOrPrimaryServiceType];
  }

  return hf_userFriendlyLocalizedLowercaseDescription;
}

- (NSString)titleForAccessory
{
  userFriendlyAccessoryLocalizedCapitalizedDescription = [(HSAccessoryTuple *)self userFriendlyAccessoryLocalizedCapitalizedDescription];
  v4 = [(HSAccessoryTuple *)self titleForAccessoryWithDefaultValue:userFriendlyAccessoryLocalizedCapitalizedDescription];

  return v4;
}

- (id)titleForAccessoryWithDefaultValue:(id)value
{
  valueCopy = value;
  configuration = [(HSAccessoryTuple *)self configuration];
  userGivenAccessoryName = [configuration userGivenAccessoryName];

  if (userGivenAccessoryName)
  {
    configuration2 = [(HSAccessoryTuple *)self configuration];
    userGivenAccessoryName2 = [configuration2 userGivenAccessoryName];
    goto LABEL_22;
  }

  accessory = [(HSAccessoryTuple *)self accessory];
  configuration2 = [accessory hf_primaryService];

  accessory2 = [(HSAccessoryTuple *)self accessory];
  configuredName = [accessory2 configuredName];

  serviceType = [configuration2 serviceType];
  v13 = [serviceType isEqualToString:HMServiceTypeTelevision];

  if (!v13)
  {
    configuredName2 = configuredName;
    if (!configuredName)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  configuredName2 = [configuration2 configuredName];

  configuration3 = [(HSAccessoryTuple *)self configuration];
  home = [configuration3 home];
  roomForEntireHome = [home roomForEntireHome];
  name = [roomForEntireHome name];

  LOBYTE(home) = [configuredName2 isEqualToString:name];
  configuration4 = [(HSAccessoryTuple *)self configuration];
  roomName = [configuration4 roomName];
  v21 = [configuredName2 isEqualToString:roomName];

  if ((home & 1) == 0 && !v21)
  {

    if (!configuredName2)
    {
LABEL_7:
      configuration5 = [(HSAccessoryTuple *)self configuration];
      setupDescription = [configuration5 setupDescription];
      hf_marketingName = [setupDescription hf_marketingName];
      v25 = hf_marketingName;
      if (hf_marketingName)
      {
        name = hf_marketingName;
      }

      else
      {
        configuration6 = [(HSAccessoryTuple *)self configuration];
        setupDescription2 = [configuration6 setupDescription];
        accessoryName = [setupDescription2 accessoryName];
        v28 = accessoryName;
        if (accessoryName)
        {
          name = accessoryName;
        }

        else
        {
          accessory3 = [(HSAccessoryTuple *)self accessory];
          name = [accessory3 name];
        }
      }

      goto LABEL_17;
    }

LABEL_10:
    name = configuredName2;
LABEL_17:
    v30 = [HFUtilities sanitizeAutoGeneratedHomeKitName:name];
    if ([v30 length])
    {
      v31 = v30;
    }

    else
    {
      v31 = valueCopy;
    }

    userGivenAccessoryName2 = v31;

    goto LABEL_21;
  }

  userGivenAccessoryName2 = valueCopy;
LABEL_21:

LABEL_22:

  return userGivenAccessoryName2;
}

- (id)_moveToNextStep
{
  if ([(HSAccessoryTuple *)self isSetupComplete])
  {
    v3 = [NAFuture futureWithResult:&__kCFBooleanTrue];
  }

  else
  {
    stateMachine = [(HSAccessoryTuple *)self stateMachine];
    currentStep = [(HSAccessoryTuple *)self currentStep];
    configuration = [(HSAccessoryTuple *)self configuration];
    -[HSAccessoryTuple setCurrentStep:](self, "setCurrentStep:", [stateMachine stepFollowingStep:currentStep withConfiguration:configuration]);

    v7 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:[(HSAccessoryTuple *)self currentStep]];
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calculating potential skip of: %@", buf, 0xCu);
    }

    stateMachine2 = [(HSAccessoryTuple *)self stateMachine];
    currentStep2 = [(HSAccessoryTuple *)self currentStep];
    configuration2 = [(HSAccessoryTuple *)self configuration];
    v12 = [stateMachine2 shouldSkipStep:currentStep2 withConfiguration:configuration2];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100063648;
    v15[3] = &unk_1000C71B0;
    v16 = v7;
    selfCopy = self;
    v13 = v7;
    v3 = [v12 flatMap:v15];
  }

  return v3;
}

@end