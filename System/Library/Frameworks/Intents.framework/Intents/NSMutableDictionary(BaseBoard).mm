@interface NSMutableDictionary(BaseBoard)
- (void)intents_setArrayOfWidgetPlistRepresentable:()BaseBoard forKey:parameters:error:;
- (void)intents_setBoolIfTrue:()BaseBoard forKey:;
- (void)intents_setIntegerIfNonZero:()BaseBoard forKey:;
- (void)intents_setPlistSafeObject:()BaseBoard forKey:;
- (void)intents_setWidgetPlistRepresentable:()BaseBoard forKey:parameters:error:;
@end

@implementation NSMutableDictionary(BaseBoard)

- (void)intents_setArrayOfWidgetPlistRepresentable:()BaseBoard forKey:parameters:error:
{
  v20 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v13 = [v9 count];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    while (1)
    {
      v16 = [v9 objectAtIndexedSubscript:{v15, v20}];
      v21 = 0;
      v17 = [v16 widgetPlistableRepresentationWithParameters:v11 error:&v21];
      v18 = v21;

      if (v18)
      {
        break;
      }

      [v12 setObject:v17 atIndexedSubscript:v15];

      if (v14 == ++v15)
      {
        goto LABEL_5;
      }
    }

    if (v20)
    {
      v19 = v18;
      *v20 = v18;
    }
  }

  else
  {
LABEL_5:
    [self intents_setPlistSafeObject:v12 forKey:{v10, v20}];
  }
}

- (void)intents_setWidgetPlistRepresentable:()BaseBoard forKey:parameters:error:
{
  v10 = a4;
  v15 = 0;
  v11 = [a3 widgetPlistableRepresentationWithParameters:a5 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    if (a6)
    {
      v14 = v12;
      *a6 = v13;
    }
  }

  else
  {
    [self intents_setPlistSafeObject:v11 forKey:v10];
  }
}

- (void)intents_setBoolIfTrue:()BaseBoard forKey:
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = a4;
    v7 = [v5 numberWithBool:1];
    [self intents_setPlistSafeObject:v7 forKey:v6];
  }
}

- (void)intents_setPlistSafeObject:()BaseBoard forKey:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = [v6 absoluteString];

      v6 = absoluteString;
    }

    v6 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {

LABEL_13:
      [self setObject:v6 forKey:v8];
      goto LABEL_14;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_13;
    }

    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315650;
      v14 = "[NSMutableDictionary(BaseBoard) intents_setPlistSafeObject:forKey:]";
      v15 = 2114;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_fault_impl(&dword_18E991000, v12, OS_LOG_TYPE_FAULT, "%s Unsupported plistable type attempting to be encoded for key [%{public}@]: %@", &v13, 0x20u);
    }
  }

LABEL_14:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)intents_setIntegerIfNonZero:()BaseBoard forKey:
{
  if (a3)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = a4;
    v8 = [v6 numberWithInteger:a3];
    [self intents_setPlistSafeObject:v8 forKey:v7];
  }
}

@end