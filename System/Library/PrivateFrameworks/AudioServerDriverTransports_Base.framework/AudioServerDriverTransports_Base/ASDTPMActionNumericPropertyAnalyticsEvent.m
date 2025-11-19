@interface ASDTPMActionNumericPropertyAnalyticsEvent
- (ASDTNumericProperty)numericProperty;
- (ASDTPMActionNumericPropertyAnalyticsEvent)initWithConfig:(id)a3 forSequencer:(id)a4;
- (id)eventData;
- (void)eventData;
- (void)numericProperty;
@end

@implementation ASDTPMActionNumericPropertyAnalyticsEvent

- (ASDTPMActionNumericPropertyAnalyticsEvent)initWithConfig:(id)a3 forSequencer:(id)a4
{
  v7 = a3;
  v46.receiver = self;
  v46.super_class = ASDTPMActionNumericPropertyAnalyticsEvent;
  v8 = [(ASDTPMActionAnalyticsEvent *)&v46 initWithConfig:v7 forSequencer:a4];
  if (!v8)
  {
LABEL_46:
    v10 = v8;
    goto LABEL_47;
  }

  v9 = [v7 asdtPropertyAddress];
  [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setPropertyAddress:v9];

  v10 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];

  if (v10)
  {
    v11 = [v7 asdtPMActionAnalyticsEventField];
    [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setFieldName:v11];

    v12 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 fieldName];

    if (v12)
    {
      v13 = [v7 asdtName];

      if (!v13)
      {
        v41 = MEMORY[0x277CCACA8];
        v45 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v44 = [v45 selector] >> 29;
        if (v44)
        {
          v30 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if ([v30 selector] >> 24 > 0x7E)
          {
            v43 = 0;
            v39 = 32;
          }

          else
          {
            v26 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v39 = [v26 selector] >> 24;
            v43 = 1;
          }
        }

        else
        {
          v43 = 0;
          v39 = 32;
        }

        v42 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v40 = [v42 selector] & 0xE00000;
        if (v40)
        {
          v32 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if (([v32 selector] >> 16) > 0x7Eu)
          {
            v38 = 0;
            v35 = 32;
          }

          else
          {
            v29 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v35 = ([v29 selector] >> 16);
            v38 = 1;
          }
        }

        else
        {
          v38 = 0;
          v35 = 32;
        }

        v37 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v36 = [v37 selector] & 0xE000;
        if (v36)
        {
          v31 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if (([v31 selector] >> 8) > 0x7Eu)
          {
            v34 = 0;
            v33 = 32;
          }

          else
          {
            v28 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v33 = ([v28 selector] >> 8);
            v34 = 1;
          }
        }

        else
        {
          v34 = 0;
          v33 = 32;
        }

        v15 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v16 = [v15 selector] & 0xE0;
        if (v16)
        {
          v4 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
          if ([v4 selector] > 0x7Eu)
          {
            v18 = 0;
            v17 = 32;
          }

          else
          {
            v27 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
            v17 = [v27 selector];
            v18 = 1;
          }
        }

        else
        {
          v18 = 0;
          v17 = 32;
        }

        v19 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v20 = [v19 element];
        v21 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 propertyAddress];
        v22 = [v41 stringWithFormat:@"NumericPropertyAnalyticsEvent: S:%c%c%c%c E:%u S:%x", v39, v35, v33, v17, v20, objc_msgSend(v21, "scope")];
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

      v23 = [(ASDTPMDevice *)v8 name];
      v24 = [ASDTCondition conditionWithName:v23];
      [(ASDTPMActionNumericPropertyAnalyticsEvent *)v8 setLock:v24];

      goto LABEL_46;
    }

    v14 = ASDTBaseLogType();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionNumericPropertyAnalyticsEvent initWithConfig:v8 forSequencer:?];
    }

    v10 = 0;
  }

LABEL_47:

  return v10;
}

- (ASDTNumericProperty)numericProperty
{
  v3 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self lock];
  [v3 lock];

  WeakRetained = objc_loadWeakRetained(&self->_numericProperty);
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v6 = [(ASDTPMDevice *)self parentSequencer];
    v7 = [v6 parentDevice];
    v8 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self propertyAddress];
    v9 = [v7 customPropertyForAddress:v8];

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

  v11 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self lock];
  [v11 unlock];

  v12 = v5;

  return v12;
}

- (id)eventData
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
  v4 = [v3 propertyValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
    v6 = [v5 numericType];

    v7 = v4;
    v8 = [v7 length];
    if (v8 < [MEMORY[0x277CCABB0] asdtDataSizeForNumericType:v6])
    {
      v9 = ASDTBaseLogType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ASDTPMActionNumericPropertyAnalyticsEvent *)self eventData];
      }

      v10 = 0;
      v4 = v7;
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CCABB0];
    v12 = [v7 bytes];
    v13 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self numericProperty];
    v4 = [v11 asdtNumberFromData:v12 withNumericType:{objc_msgSend(v13, "numericType")}];
  }

  if (v4)
  {
    v7 = [(ASDTPMActionNumericPropertyAnalyticsEvent *)self fieldName];
    v16 = v7;
    v17[0] = v4;
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
  v2 = [a1 name];
  v9 = [a1 propertyAddress];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)eventData
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = [a1 name];
  [a2 length];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

@end