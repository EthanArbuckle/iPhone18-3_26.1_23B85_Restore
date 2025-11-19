@interface INBooleanResolutionResult
- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4;
- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4;
@end

@implementation INBooleanResolutionResult

- (id)_vocabularyValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 description];
  v8 = [MEMORY[0x1E695DF58] systemLocale];
  v9 = [v8 groupingSeparator];
  v10 = [v6 valueType];

  if (v10 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 firstObject], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
    {
      v13 = [v5 valueForKey:@"stringValue"];
      v14 = [v13 if_escapedComponentsJoinedByString:v9 forLocale:v8];

      v7 = v13;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      v14 = [v5 stringValue];
    }

    v7 = v14;
  }

LABEL_8:

  return v7;
}

- (id)_intentSlotValueForObject:(id)a3 slotDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([v6 valueType] == 1)
  {
    [(_INPBIntentSlotValue *)v7 setType:100];
    if ([v6 valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadPrimitiveBool:](v7, "addPayloadPrimitiveBool:", [v5 BOOLValue]);
      }
    }
  }

  return v7;
}

@end