@interface AEPreference
- (AEPreference)initWithKey:(id)key preferencesPrimitives:(id)primitives systemNotificationPrimitives:(id)notificationPrimitives defaultValue:(id)value;
- (id)preferenceValue;
- (void)preferenceDidUpdate;
- (void)setPreferenceValue:(id)value;
- (void)setValue:(id)value;
@end

@implementation AEPreference

- (AEPreference)initWithKey:(id)key preferencesPrimitives:(id)primitives systemNotificationPrimitives:(id)notificationPrimitives defaultValue:(id)value
{
  keyCopy = key;
  primitivesCopy = primitives;
  notificationPrimitivesCopy = notificationPrimitives;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = AEPreference;
  v14 = [(AEPreference *)&v21 init];
  if (v14)
  {
    v15 = [keyCopy copy];
    key = v14->_key;
    v14->_key = v15;

    objc_storeStrong(&v14->_preferencePrimitives, primitives);
    objc_storeStrong(&v14->_systemNotificationPrimitives, notificationPrimitives);
    objc_storeStrong(&v14->_defaultValue, value);
    preferenceValue = [(AEPreference *)v14 preferenceValue];
    v14->_overridden = preferenceValue != 0;
    if ([(AEPreference *)v14 isOverridden])
    {
      defaultValue = preferenceValue;
    }

    else
    {
      defaultValue = [(AEPreference *)v14 defaultValue];
    }

    value = v14->_value;
    v14->_value = defaultValue;
  }

  return v14;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  preferenceValue = [(AEPreference *)self preferenceValue];
  if (valueCopy && (-[AEPreference defaultValue](self, "defaultValue"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:valueCopy], v6, !v7))
  {
    self->_overridden = 1;
    objc_storeStrong(&self->_value, value);
    if ([preferenceValue isEqual:valueCopy])
    {
      goto LABEL_8;
    }

    selfCopy2 = self;
    v11 = valueCopy;
  }

  else
  {
    self->_overridden = 0;
    defaultValue = [(AEPreference *)self defaultValue];
    value = self->_value;
    self->_value = defaultValue;

    if (!preferenceValue)
    {
      goto LABEL_8;
    }

    selfCopy2 = self;
    v11 = 0;
  }

  [(AEPreference *)selfCopy2 setPreferenceValue:v11];
LABEL_8:
}

- (void)setPreferenceValue:(id)value
{
  valueCopy = value;
  preferencePrimitives = [(AEPreference *)self preferencePrimitives];

  if (preferencePrimitives)
  {
    if (valueCopy && ([MEMORY[0x277CCAC58] propertyList:valueCopy isValidForFormat:100] & 1) == 0)
    {
      [(AEPreference *)a2 setPreferenceValue:?];
    }

    preferencePrimitives2 = [(AEPreference *)self preferencePrimitives];
    v7 = [(AEPreference *)self key];
    [preferencePrimitives2 setObject:valueCopy forKey:v7];

    systemNotificationPrimitives = [(AEPreference *)self systemNotificationPrimitives];
    [systemNotificationPrimitives postSystemNotificationWithName:@"com.apple.assessmentmode.preferencesDidChangeNotification"];
  }
}

- (id)preferenceValue
{
  preferencePrimitives = [(AEPreference *)self preferencePrimitives];
  v4 = [(AEPreference *)self key];
  v5 = [preferencePrimitives objectForKey:v4];

  return v5;
}

- (void)preferenceDidUpdate
{
  preferenceValue = [(AEPreference *)self preferenceValue];
  value = [(AEPreference *)self value];
  v4 = [value isEqual:preferenceValue];

  if ((v4 & 1) == 0)
  {
    [(AEPreference *)self setValue:preferenceValue];
  }
}

- (void)setPreferenceValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AEPreference.m" lineNumber:75 description:@"Value should be PropertyListType"];
}

@end