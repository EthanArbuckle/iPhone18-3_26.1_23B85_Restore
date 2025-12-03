@interface ASDControl(ASDTIOA2Control)
- (BOOL)asdtAddControlProperties:()ASDTIOA2Control;
- (void)asdtRemoveControlProperties;
- (void)asdtSendControlPropertyChangeNotificationAtIndex:()ASDTIOA2Control;
@end

@implementation ASDControl(ASDTIOA2Control)

- (BOOL)asdtAddControlProperties:()ASDTIOA2Control
{
  v64 = *MEMORY[0x277D85DE8];
  v45 = a3;
  selfCopy = self;
  v5 = MEMORY[0x277CBEB18];
  v46 = selfCopy;
  properties = [selfCopy properties];
  v47 = [v5 arrayWithCapacity:{objc_msgSend(properties, "count") + 1}];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  properties2 = [v46 properties];
  v8 = [properties2 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v8)
  {
    v9 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(properties2);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = MEMORY[0x277CCABB0];
          address = [v11 address];
          v14 = [v12 numberWithUnsignedInt:{objc_msgSend(address, "selector")}];
          [v47 addObject:v14];
        }

        else
        {
          [v47 addObject:&unk_2853578A0];
        }
      }

      v8 = [properties2 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v8);
  }

  if ([v47 isEqual:v45])
  {
    v15 = 1;
    goto LABEL_44;
  }

  [v46 asdtRemoveControlProperties];
  propertySelectorInfo = [v46 propertySelectorInfo];
  if (![propertySelectorInfo count] || !objc_msgSend(v45, "count"))
  {
    v15 = 1;
    goto LABEL_43;
  }

  v16 = [v45 count];
  if (v16 != [propertySelectorInfo count])
  {
    log = ASDTIOA2LogType();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v45 count];
      v42 = [propertySelectorInfo count];
      *buf = 138412802;
      v58 = v40;
      v59 = 1024;
      v60 = v41;
      v61 = 1024;
      v62 = v42;
      _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@: Invalid property selector count in registry: found %u, expected %u", buf, 0x18u);
    }

    v15 = 0;
    goto LABEL_42;
  }

  log = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v45, "count")}];
  for (j = 0; ; ++j)
  {
    v18 = [v45 count];
    v15 = v18 <= j;
    if (v18 <= j)
    {
      v26 = [log copy];
      [v46 setProperties:v26];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      properties3 = [v46 properties];
      v28 = [properties3 countByEnumeratingWithState:&v48 objects:v56 count:16];
      v29 = v28;
      if (v28)
      {
        v30 = *v49;
        do
        {
          v31 = 0;
          do
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(properties3);
            }

            v32 = *(*(&v48 + 1) + 8 * v31);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              ioa2Device = [v46 ioa2Device];
              [ioa2Device addCustomProperty:v32];
            }

            ++v31;
          }

          while (v29 != v31);
          v29 = [properties3 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v29);
      }

      goto LABEL_41;
    }

    v19 = [v45 objectAtIndexedSubscript:j];
    unsignedIntValue = [v19 unsignedIntValue];

    if (unsignedIntValue)
    {
      break;
    }

    properties3 = [MEMORY[0x277CBEB68] null];
    [log addObject:properties3];
LABEL_23:
  }

  properties3 = [propertySelectorInfo objectAtIndexedSubscript:j];
  v21 = [properties3 objectForKeyedSubscript:@"selector"];
  unsignedIntValue2 = [v21 unsignedIntValue];

  v23 = [properties3 objectForKeyedSubscript:@"dataType"];
  unsignedIntValue3 = [v23 unsignedIntValue];

  v25 = [MEMORY[0x277CEFB80] forControl:v46 controlSelector:unsignedIntValue2 propertySelector:unsignedIntValue propertyDataType:unsignedIntValue3];
  if (v25)
  {
    [log addObject:v25];

    goto LABEL_23;
  }

  v34 = ASDTIOA2LogType();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    [(ASDControl(ASDTIOA2Control) *)v36 asdtAddControlProperties:unsignedIntValue, buf, v34];
  }

LABEL_41:
LABEL_42:

LABEL_43:
LABEL_44:

  v37 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)asdtRemoveControlProperties
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  properties = [selfCopy properties];
  v3 = [properties countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(properties);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ioa2Device = [selfCopy ioa2Device];
          [ioa2Device removeCustomProperty:v6];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [properties countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  [selfCopy setProperties:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)asdtSendControlPropertyChangeNotificationAtIndex:()ASDTIOA2Control
{
  properties = [self properties];
  v5 = [properties objectAtIndex:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 sendPropertyChangeNotification];
  }
}

- (void)asdtAddControlProperties:()ASDTIOA2Control .cold.1(void *a1, unsigned int a2, uint8_t *buf, os_log_t log)
{
  v5 = HIBYTE(a2);
  if ((a2 - 0x20000000) >> 24 >= 0x5F)
  {
    v5 = 32;
  }

  v6 = BYTE2(a2);
  if (BYTE2(a2) - 32 >= 0x5F)
  {
    v6 = 32;
  }

  v7 = BYTE1(a2);
  if (BYTE1(a2) - 32 >= 0x5F)
  {
    v7 = 32;
  }

  *buf = 138413314;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  *(buf + 9) = 1024;
  *(buf + 5) = v6;
  *(buf + 12) = 1024;
  *(buf + 26) = v7;
  if (a2 - 32 >= 0x5F)
  {
    v8 = 32;
  }

  else
  {
    v8 = a2;
  }

  *(buf + 15) = 1024;
  *(buf + 8) = v8;
  _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@: Failed creating custom property for selector '%c%c%c%c'.", buf, 0x24u);
}

@end