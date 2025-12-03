@interface CNMultiValueReplaceUpdate
- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error;
- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map;
@end

@implementation CNMultiValueReplaceUpdate

- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map
{
  valueCopy = value;
  mapCopy = map;
  value = [(CNMultiValueSingleUpdate *)self value];
  identifier = [value identifier];
  v9 = [CN indexOfUnifiedIdentifier:identifier onNonUnifiedMultiValue:valueCopy withIdentifierMap:mapCopy];

  if (v9 < [valueCopy count])
  {
    value2 = [(CNMultiValueSingleUpdate *)self value];
    [valueCopy replaceObjectAtIndex:v9 withObject:value2];
  }
}

- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  loggerCopy = logger;
  value = [(CNMultiValueSingleUpdate *)self value];
  v16 = [descriptionCopy key];
  [loggerCopy applyContactUpdateOfKind:"multi value replace" value:value property:v16];

  value2 = [(CNMultiValueSingleUpdate *)self value];
  v18 = [(CNMultiValueUpdate *)self multiValueIndexForValue:value2 inMultiValue:abmultivalue identifier:0];
  if (v18 == -1 && unified)
  {
    v19 = 1;
  }

  else
  {
    v17Value = [value2 value];
    v21 = [descriptionCopy ABMultiValueValueFromCNLabeledValueValue:v17Value];

    label = [value2 label];
    v23 = [descriptionCopy ABMultiValueLabelFromCNLabeledValueLabel:label];

    if (v18 == -1 || !ABMultiValueReplaceLabelAtIndex(abmultivalue, v23, v18))
    {
      v19 = 0;
      if (!error)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v19 = ABMultiValueReplaceValueAtIndex(abmultivalue, v21, v18);
      if (!error)
      {
        goto LABEL_11;
      }
    }

    if (!v19)
    {
      v30 = @"CNKeyPaths";
      v24 = [descriptionCopy key];
      v29 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v31[0] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v27 = +[CNErrorFactory genericiOSABError];
      *error = [CNErrorFactory errorByAddingUserInfoEntries:v26 toError:v27];

      v19 = 0;
    }
  }

LABEL_11:

  return v19;
}

@end