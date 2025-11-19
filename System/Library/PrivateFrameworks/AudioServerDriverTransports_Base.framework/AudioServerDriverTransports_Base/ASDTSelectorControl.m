@interface ASDTSelectorControl
- (ASDTSelectorControl)initWithConfig:(id)a3 withDevice:(id)a4;
@end

@implementation ASDTSelectorControl

- (ASDTSelectorControl)initWithConfig:(id)a3 withDevice:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = 0;
  if (![v6 asdtControlClassID:&v35])
  {
LABEL_24:
    v23 = 0;
    goto LABEL_25;
  }

  v8 = [v6 asdtIsSettable];
  v9 = [v6 asdtElement];
  v10 = [v6 asdtScope];
  v11 = [v7 plugin];
  v34.receiver = self;
  v34.super_class = ASDTSelectorControl;
  self = [(ASDSelectorControl *)&v34 initWithIsSettable:v8 forElement:v9 inScope:v10 withPlugin:v11 andObjectClassID:v35];

  if (!self)
  {
    goto LABEL_14;
  }

  v12 = [v6 asdtSelectorControlItems];
  if (![v12 count])
  {
    v24 = ASDTBaseLogType();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ASDTSelectorControl initWithConfig:v7 withDevice:?];
    }

LABEL_23:
    goto LABEL_24;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v12;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = *v31;
  v28 = v7;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v30 + 1) + 8 * i);
      v18 = [v17 asdtName];
      v19 = [v17 asdtSelectorControlItemKind];
      v20 = [v17 asdtSelectorControlItemSelected];
      v29 = 0;
      if (([v17 asdtSelectorControlItemValue:&v29] & 1) == 0)
      {
        v25 = ASDTBaseLogType();
        v7 = v28;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [ASDTSelectorControl initWithConfig:v28 withDevice:?];
        }

        goto LABEL_22;
      }

      v21 = [MEMORY[0x277CEFB70] withValue:v29 name:v18 andKind:v19 selected:v20];
      if (!v21)
      {
        v25 = ASDTBaseLogType();
        v7 = v28;
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

    v14 = [v12 countByEnumeratingWithState:&v30 objects:v36 count:16];
    v7 = v28;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_13:

LABEL_14:
  self = self;
  v23 = self;
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
  return v23;
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