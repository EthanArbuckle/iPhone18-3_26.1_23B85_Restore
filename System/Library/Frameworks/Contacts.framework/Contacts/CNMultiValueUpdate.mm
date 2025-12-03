@interface CNMultiValueUpdate
+ (id)addValue:(id)value;
+ (id)removeValue:(id)value;
+ (id)reorderValues:(id)values;
+ (id)replaceValue:(id)value withValue:(id)withValue;
- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error;
- (int64_t)multiValueIndexForValue:(id)value inMultiValue:(void *)multiValue identifier:(id *)identifier;
- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map;
@end

@implementation CNMultiValueUpdate

+ (id)addValue:(id)value
{
  valueCopy = value;
  v4 = [(CNMultiValueSingleUpdate *)[CNMultiValueAddUpdate alloc] initWithValue:valueCopy];

  return v4;
}

+ (id)removeValue:(id)value
{
  valueCopy = value;
  v4 = [(CNMultiValueSingleUpdate *)[CNMultiValueRemoveUpdate alloc] initWithValue:valueCopy];

  return v4;
}

+ (id)replaceValue:(id)value withValue:(id)withValue
{
  withValueCopy = withValue;
  v5 = [(CNMultiValueSingleUpdate *)[CNMultiValueReplaceUpdate alloc] initWithValue:withValueCopy];

  return v5;
}

+ (id)reorderValues:(id)values
{
  valuesCopy = values;
  v4 = [[CNMultiValueReorderUpdate alloc] initWithValues:valuesCopy];

  return v4;
}

- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map
{
  valueCopy = value;
  mapCopy = map;
  selfCopy = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error
{
  descriptionCopy = description;
  loggerCopy = logger;
  selfCopy = self;
  v13 = CNAbstractMethodException();
  objc_exception_throw(v13);
}

- (int64_t)multiValueIndexForValue:(id)value inMultiValue:(void *)multiValue identifier:(id *)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  identifier = [valueCopy identifier];
  IndexForGUID = ABMultiValueGetIndexForGUID(multiValue, identifier);
  if (IndexForGUID == -1)
  {

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    linkedIdentifiers = [valueCopy linkedIdentifiers];
    identifier = [linkedIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (identifier)
    {
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != identifier; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(linkedIdentifiers);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = ABMultiValueGetIndexForGUID(multiValue, v16);
          if (v17 != -1)
          {
            v10 = v17;
            identifier = v16;
            goto LABEL_15;
          }
        }

        identifier = [linkedIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (identifier)
        {
          continue;
        }

        break;
      }
    }

    v10 = -1;
LABEL_15:

    if (identifier)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = IndexForGUID;
    if (identifier)
    {
LABEL_3:
      v11 = identifier;
      *identifier = identifier;
    }
  }

  return v10;
}

@end