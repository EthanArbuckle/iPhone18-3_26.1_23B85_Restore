@interface CNMultiValueAddUpdate
- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error;
- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map;
@end

@implementation CNMultiValueAddUpdate

- (void)applyToMutableMultiValue:(id)value withIdentifierMap:(id)map
{
  valueCopy = value;
  value = [(CNMultiValueSingleUpdate *)self value];
  [valueCopy addObject:value];
}

- (BOOL)applyToABPerson:(void *)person abmultivalue:(void *)abmultivalue propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  loggerCopy = logger;
  value = [(CNMultiValueSingleUpdate *)self value];
  v14 = [descriptionCopy key];
  [loggerCopy applyContactUpdateOfKind:"multi value add" value:value property:v14];

  value2 = [(CNMultiValueSingleUpdate *)self value];
  v15Value = [value2 value];
  v17 = [descriptionCopy ABMultiValueValueFromCNLabeledValueValue:v15Value];

  label = [value2 label];
  v19 = [descriptionCopy ABMultiValueLabelFromCNLabeledValueLabel:label];

  Count = ABMultiValueGetCount(abmultivalue);
  v21 = [descriptionCopy key];
  v22 = [v21 isEqualToString:@"addressingGrammars"];

  if (!v22 || v17)
  {
    if ([(CNMultiValueUpdate *)self ignoreIdentifiers])
    {
      inserted = ABMultiValueInsertValueAndLabelAtIndex(abmultivalue, v17, v19, Count, 0);
      v30 = ABMultiValueCopyUUIDAtIndex();
      errorCopy2 = error;
      if (v30)
      {
        v32 = v30;
        [CN addLinkedIdentifier:v30 toLabeledValue:value2];
        CFRelease(v32);
      }
    }

    else
    {
      [value2 identifier];
      inserted = ABMultiValueInsertValueAndLabelAndUUIDAtIndex();
      errorCopy2 = error;
    }

    if (errorCopy2 && (inserted & 1) == 0)
    {
      v46 = @"CNKeyPaths";
      v33 = [descriptionCopy key];
      v45 = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v47[0] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v36 = +[CNErrorFactory genericiOSABError];
      *errorCopy2 = [CNErrorFactory errorByAddingUserInfoEntries:v35 toError:v36];

      v37 = MEMORY[0x1E696AEC0];
      v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNMultiValueUpdate ignoreIdentifiers](self, "ignoreIdentifiers")}];
      v39 = [v37 stringWithFormat:@"multi value add, ignore identifiers = %@", v38];

      uTF8String = [v39 UTF8String];
      value3 = [(CNMultiValueSingleUpdate *)self value];
      v42 = [descriptionCopy key];
      [loggerCopy failedToApplyContactUpdateOfKind:uTF8String value:value3 property:v42 error:*errorCopy2];

      inserted = 0;
    }
  }

  else
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNMultiValueUpdate ignoreIdentifiers](self, "ignoreIdentifiers")}];
    v25 = [v23 stringWithFormat:@"multi value add, ignore identifiers = %@", v24];

    uTF8String2 = [v25 UTF8String];
    value4 = [(CNMultiValueSingleUpdate *)self value];
    v28 = [descriptionCopy key];
    [loggerCopy failedToApplyContactUpdateOfKind:uTF8String2 value:value4 property:v28 error:0];

    inserted = 1;
  }

  return inserted;
}

@end