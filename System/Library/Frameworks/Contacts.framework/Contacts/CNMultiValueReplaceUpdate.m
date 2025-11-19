@interface CNMultiValueReplaceUpdate
- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8;
- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4;
@end

@implementation CNMultiValueReplaceUpdate

- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CNMultiValueSingleUpdate *)self value];
  v8 = [v7 identifier];
  v9 = [CN indexOfUnifiedIdentifier:v8 onNonUnifiedMultiValue:v11 withIdentifierMap:v6];

  if (v9 < [v11 count])
  {
    v10 = [(CNMultiValueSingleUpdate *)self value];
    [v11 replaceObjectAtIndex:v9 withObject:v10];
  }
}

- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8
{
  v31[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a7;
  v15 = [(CNMultiValueSingleUpdate *)self value];
  v16 = [v13 key];
  [v14 applyContactUpdateOfKind:"multi value replace" value:v15 property:v16];

  v17 = [(CNMultiValueSingleUpdate *)self value];
  v18 = [(CNMultiValueUpdate *)self multiValueIndexForValue:v17 inMultiValue:a4 identifier:0];
  if (v18 == -1 && a6)
  {
    v19 = 1;
  }

  else
  {
    v20 = [v17 value];
    v21 = [v13 ABMultiValueValueFromCNLabeledValueValue:v20];

    v22 = [v17 label];
    v23 = [v13 ABMultiValueLabelFromCNLabeledValueLabel:v22];

    if (v18 == -1 || !ABMultiValueReplaceLabelAtIndex(a4, v23, v18))
    {
      v19 = 0;
      if (!a8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v19 = ABMultiValueReplaceValueAtIndex(a4, v21, v18);
      if (!a8)
      {
        goto LABEL_11;
      }
    }

    if (!v19)
    {
      v30 = @"CNKeyPaths";
      v24 = [v13 key];
      v29 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v31[0] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v27 = +[CNErrorFactory genericiOSABError];
      *a8 = [CNErrorFactory errorByAddingUserInfoEntries:v26 toError:v27];

      v19 = 0;
    }
  }

LABEL_11:

  return v19;
}

@end