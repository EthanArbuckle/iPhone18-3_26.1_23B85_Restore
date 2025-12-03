@interface ASDTSelectorControl
- (ASDTSelectorControl)initWithConfig:(id)config withDevice:(id)device;
@end

@implementation ASDTSelectorControl

- (ASDTSelectorControl)initWithConfig:(id)config withDevice:(id)device
{
  v37 = *MEMORY[0x277D85DE8];
  configCopy = config;
  deviceCopy = device;
  v35 = 0;
  if (![configCopy asdtControlClassID:&v35])
  {
LABEL_24:
    selfCopy = 0;
    goto LABEL_25;
  }

  asdtIsSettable = [configCopy asdtIsSettable];
  asdtElement = [configCopy asdtElement];
  asdtScope = [configCopy asdtScope];
  plugin = [deviceCopy plugin];
  v34.receiver = self;
  v34.super_class = ASDTSelectorControl;
  self = [(ASDSelectorControl *)&v34 initWithIsSettable:asdtIsSettable forElement:asdtElement inScope:asdtScope withPlugin:plugin andObjectClassID:v35];

  if (!self)
  {
    goto LABEL_14;
  }

  asdtSelectorControlItems = [configCopy asdtSelectorControlItems];
  if (![asdtSelectorControlItems count])
  {
    v24 = ASDTBaseLogType();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ASDTSelectorControl initWithConfig:deviceCopy withDevice:?];
    }

LABEL_23:
    goto LABEL_24;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  asdtSelectorControlItems = asdtSelectorControlItems;
  v13 = [asdtSelectorControlItems countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = *v31;
  v28 = deviceCopy;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(asdtSelectorControlItems);
      }

      v17 = *(*(&v30 + 1) + 8 * i);
      asdtName = [v17 asdtName];
      asdtSelectorControlItemKind = [v17 asdtSelectorControlItemKind];
      asdtSelectorControlItemSelected = [v17 asdtSelectorControlItemSelected];
      v29 = 0;
      if (([v17 asdtSelectorControlItemValue:&v29] & 1) == 0)
      {
        v25 = ASDTBaseLogType();
        deviceCopy = v28;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [ASDTSelectorControl initWithConfig:v28 withDevice:?];
        }

        goto LABEL_22;
      }

      v21 = [MEMORY[0x277CEFB70] withValue:v29 name:asdtName andKind:asdtSelectorControlItemKind selected:asdtSelectorControlItemSelected];
      if (!v21)
      {
        v25 = ASDTBaseLogType();
        deviceCopy = v28;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [ASDTSelectorControl initWithConfig:v28 withDevice:?];
        }

LABEL_22:

        goto LABEL_23;
      }

      v22 = v21;
      [(ASDSelectorControl *)self addValue:v21];
    }

    v14 = [asdtSelectorControlItems countByEnumeratingWithState:&v30 objects:v36 count:16];
    deviceCopy = v28;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_13:

LABEL_14:
  self = self;
  selfCopy = self;
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)initWithConfig:(void *)a1 withDevice:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Selector control items must include a value.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 withDevice:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Memory allocation error for selector value.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 withDevice:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Selector control must contain items.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end