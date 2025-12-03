@interface CNMultiValueRemoveUpdate
- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error;
- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map;
@end

@implementation CNMultiValueRemoveUpdate

- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map
{
  valueCopy = value;
  mapCopy = map;
  value = [(CNMultiValueSingleUpdate *)self value];
  identifier = [value identifier];
  v9 = [CN indexOfUnifiedIdentifier:identifier onNonUnifiedMultiValue:valueCopy withIdentifierMap:mapCopy];

  if (v9 < [valueCopy count])
  {
    [valueCopy removeObjectAtIndex:v9];
  }
}

- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  loggerCopy = logger;
  value = [(CNMultiValueSingleUpdate *)self value];
  v16 = [descriptionCopy key];
  [loggerCopy applyContactUpdateOfKind:"multi value remove" value:value property:v16];

  value2 = [(CNMultiValueSingleUpdate *)self value];
  v18 = [(CNMultiValueUpdate *)self multiValueIndexForValue:value2 inMultiValue:abmultivalue identifier:0];

  if (v18 == -1 && unified)
  {
    v19 = 1;
  }

  else
  {
    if (v18 == -1)
    {
      v19 = 0;
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v19 = ABMultiValueRemoveValueAndLabelAtIndex(abmultivalue, v18);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    if (!v19)
    {
      v26 = @"CNKeyPaths";
      v20 = [descriptionCopy key];
      v25 = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v27[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v23 = +[CNErrorFactory genericiOSABError];
      *error = [CNErrorFactory errorByAddingUserInfoEntries:v22 toError:v23];

      v19 = 0;
    }
  }

LABEL_10:

  return v19;
}

@end