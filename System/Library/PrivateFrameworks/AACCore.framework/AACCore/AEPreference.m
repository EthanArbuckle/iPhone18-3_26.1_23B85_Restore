@interface AEPreference
- (AEPreference)initWithKey:(id)a3 preferencesPrimitives:(id)a4 systemNotificationPrimitives:(id)a5 defaultValue:(id)a6;
- (id)preferenceValue;
- (void)preferenceDidUpdate;
- (void)setPreferenceValue:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation AEPreference

- (AEPreference)initWithKey:(id)a3 preferencesPrimitives:(id)a4 systemNotificationPrimitives:(id)a5 defaultValue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = AEPreference;
  v14 = [(AEPreference *)&v21 init];
  if (v14)
  {
    v15 = [v10 copy];
    key = v14->_key;
    v14->_key = v15;

    objc_storeStrong(&v14->_preferencePrimitives, a4);
    objc_storeStrong(&v14->_systemNotificationPrimitives, a5);
    objc_storeStrong(&v14->_defaultValue, a6);
    v17 = [(AEPreference *)v14 preferenceValue];
    v14->_overridden = v17 != 0;
    if ([(AEPreference *)v14 isOverridden])
    {
      v18 = v17;
    }

    else
    {
      v18 = [(AEPreference *)v14 defaultValue];
    }

    value = v14->_value;
    v14->_value = v18;
  }

  return v14;
}

- (void)setValue:(id)a3
{
  v12 = a3;
  v5 = [(AEPreference *)self preferenceValue];
  if (v12 && (-[AEPreference defaultValue](self, "defaultValue"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v12], v6, !v7))
  {
    self->_overridden = 1;
    objc_storeStrong(&self->_value, a3);
    if ([v5 isEqual:v12])
    {
      goto LABEL_8;
    }

    v10 = self;
    v11 = v12;
  }

  else
  {
    self->_overridden = 0;
    v8 = [(AEPreference *)self defaultValue];
    value = self->_value;
    self->_value = v8;

    if (!v5)
    {
      goto LABEL_8;
    }

    v10 = self;
    v11 = 0;
  }

  [(AEPreference *)v10 setPreferenceValue:v11];
LABEL_8:
}

- (void)setPreferenceValue:(id)a3
{
  v9 = a3;
  v5 = [(AEPreference *)self preferencePrimitives];

  if (v5)
  {
    if (v9 && ([MEMORY[0x277CCAC58] propertyList:v9 isValidForFormat:100] & 1) == 0)
    {
      [(AEPreference *)a2 setPreferenceValue:?];
    }

    v6 = [(AEPreference *)self preferencePrimitives];
    v7 = [(AEPreference *)self key];
    [v6 setObject:v9 forKey:v7];

    v8 = [(AEPreference *)self systemNotificationPrimitives];
    [v8 postSystemNotificationWithName:@"com.apple.assessmentmode.preferencesDidChangeNotification"];
  }
}

- (id)preferenceValue
{
  v3 = [(AEPreference *)self preferencePrimitives];
  v4 = [(AEPreference *)self key];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)preferenceDidUpdate
{
  v5 = [(AEPreference *)self preferenceValue];
  v3 = [(AEPreference *)self value];
  v4 = [v3 isEqual:v5];

  if ((v4 & 1) == 0)
  {
    [(AEPreference *)self setValue:v5];
  }
}

- (void)setPreferenceValue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AEPreference.m" lineNumber:75 description:@"Value should be PropertyListType"];
}

@end