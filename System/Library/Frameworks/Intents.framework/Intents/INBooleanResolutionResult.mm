@interface INBooleanResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INBooleanResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  valueType = [descriptionCopy valueType];

  if (valueType == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([objectCopy firstObject], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
    {
      v13 = [objectCopy valueForKey:@"stringValue"];
      stringValue = [v13 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v13;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      stringValue = [objectCopy stringValue];
    }

    v7 = stringValue;
  }

LABEL_8:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 1)
  {
    [(_INPBIntentSlotValue *)v7 setType:100];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[_INPBIntentSlotValue addPayloadPrimitiveBool:](v7, "addPayloadPrimitiveBool:", [objectCopy BOOLValue]);
      }
    }
  }

  return v7;
}

@end