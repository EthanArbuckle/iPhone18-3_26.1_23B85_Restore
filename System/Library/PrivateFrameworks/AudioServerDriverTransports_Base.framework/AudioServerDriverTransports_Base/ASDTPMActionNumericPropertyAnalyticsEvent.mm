@interface ASDTPMActionNumericPropertyAnalyticsEvent
- (ASDTNumericProperty)numericProperty;
- (ASDTPMActionNumericPropertyAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer;
- (id)eventData;
- (void)eventData;
- (void)numericProperty;
@end

@implementation ASDTPMActionNumericPropertyAnalyticsEvent

- (ASDTPMActionNumericPropertyAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v46.receiver = self;
  v46.super_class = ASDTPMActionNumericPropertyAnalyticsEvent;
  v8 = [(ASDTPMActionAnalyticsEvent *)&v46 initWithConfig:configCopy forSequencer:sequencer];
  if (!v8)
  {
LABEL_46:
    propertyAddress = v8;
    goto LABEL_47;
  }

  asdtPropertyAddress = [configCopy asdtPropertyAddress];
  [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setPropertyAddress:asdtPropertyAddress];

  propertyAddress = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];

  if (propertyAddress)
  {
    asdtPMActionAnalyticsEventField = [configCopy asdtPMActionAnalyticsEventField];
    [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setFieldName:asdtPMActionAnalyticsEventField];

    fieldName = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 fieldName];

    if (fieldName)
    {
      asdtName = [configCopy asdtName];

      if (!asdtName)
      {
        v41 = MEMORY[0x277CCACA8];
        propertyAddress2 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v44 = [propertyAddress2 selector] >> 29;
        if (v44)
        {
          propertyAddress3 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if ([propertyAddress3 selector] >> 24 > 0x7E)
          {
            v43 = 0;
            v39 = 32;
          }

          else
          {
            propertyAddress4 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v39 = [propertyAddress4 selector] >> 24;
            v43 = 1;
          }
        }

        else
        {
          v43 = 0;
          v39 = 32;
        }

        propertyAddress5 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v40 = [propertyAddress5 selector] & 0xE00000;
        if (v40)
        {
          propertyAddress6 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if (([propertyAddress6 selector] >> 16) > 0x7Eu)
          {
            v38 = 0;
            v35 = 32;
          }

          else
          {
            propertyAddress7 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v35 = ([propertyAddress7 selector] >> 16);
            v38 = 1;
          }
        }

        else
        {
          v38 = 0;
          v35 = 32;
        }

        propertyAddress8 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v36 = [propertyAddress8 selector] & 0xE000;
        if (v36)
        {
          propertyAddress9 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if (([propertyAddress9 selector] >> 8) > 0x7Eu)
          {
            v34 = 0;
            v33 = 32;
          }

          else
          {
            propertyAddress10 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v33 = ([propertyAddress10 selector] >> 8);
            v34 = 1;
          }
        }

        else
        {
          v34 = 0;
          v33 = 32;
        }

        propertyAddress11 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v16 = [propertyAddress11 selector] & 0xE0;
        if (v16)
        {
          propertyAddress12 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if ([propertyAddress12 selector] > 0x7Eu)
          {
            v18 = 0;
            selector = 32;
          }

          else
          {
            propertyAddress13 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            selector = [propertyAddress13 selector];
            v18 = 1;
          }
        }

        else
        {
          v18 = 0;
          selector = 32;
        }

        propertyAddress14 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        element = [propertyAddress14 element];
        propertyAddress15 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v22 = [v41 stringWithFormat:@"NumericPropertyAnalyticsEvent: S:%c%c%c%c E:%u S:%x", v39, v35, v33, selector, element, objc_msgSend(propertyAddress15, "scope")];
        [(ASDTPMAction *)v8 setName:v22];

        if (v18)
        {
        }

        if (v16)
        {
        }

        if (v34)
        {
        }

        if (v36)
        {
        }

        if (v38)
        {
        }

        if (v40)
        {
        }

        if (v43)
        {
        }

        if (v44)
        {
        }
      }

      name = [(ASDTPMDevice *)v8 name];
      v24 = [ASDTCondition conditionWithName:name];
      [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setLock:v24];

      goto LABEL_46;
    }

    v14 = ASDTBaseLogType();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionNumericPropertyAnalyticsEvent initWithConfig:v8 forSequencer:?];
    }

    propertyAddress = 0;
  }

LABEL_47:

  return propertyAddress;
}

- (ASDTNumericProperty)numericProperty
{
  lock = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self lock];
  [lock lock];

  WeakRetained = objc_loadWeakRetained(&self->_numericProperty);
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    parentSequencer = [(ASDTPMDevice *)self parentSequencer];
    parentDevice = [parentSequencer parentDevice];
    propertyAddress = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self propertyAddress];
    v9 = [parentDevice customPropertyForAddress:propertyAddress];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 conformsToProtocol:&unk_285364BA8])
    {
      objc_storeWeak(&self->_numericProperty, v9);
    }

    else
    {
      v10 = ASDTBaseLogType();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
      }
    }

    v5 = objc_loadWeakRetained(&self->_numericProperty);
  }

  lock2 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self lock];
  [lock2 unlock];

  v12 = v5;

  return v12;
}

- (id)eventData
{
  v17[1] = *MEMORY[0x277D85DE8];
  numericProperty = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
  propertyValue = [numericProperty propertyValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    numericProperty2 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
    numericType = [numericProperty2 numericType];

    fieldName = propertyValue;
    v8 = [fieldName length];
    if (v8 < [MEMORY[0x277CCABB0] asdtDataSizeForNumericType:numericType])
    {
      v9 = ASDTBaseLogType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ASDTPMActionNumericPropertyAnalyticsEvent *)self eventData];
      }

      v10 = 0;
      propertyValue = fieldName;
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CCABB0];
    bytes = [fieldName bytes];
    numericProperty3 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
    propertyValue = [v11 asdtNumberFromData:bytes withNumericType:{objc_msgSend(numericProperty3, "numericType")}];
  }

  if (propertyValue)
  {
    fieldName = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self fieldName];
    v16 = fieldName;
    v17[0] = propertyValue;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
LABEL_9:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)numericProperty
{
  v10 = *MEMORY[0x277D85DE8];
  name = [self name];
  propertyAddress = [self propertyAddress];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)eventData
{
  v10 = *MEMORY[0x277D85DE8];
  name = [self name];
  [a2 length];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

@end