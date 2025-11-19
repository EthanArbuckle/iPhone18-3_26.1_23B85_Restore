@interface CNMultiValueRemoveUpdate
- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8;
- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4;
@end

@implementation CNMultiValueRemoveUpdate

- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CNMultiValueSingleUpdate *)self value];
  v8 = [v7 identifier];
  v9 = [CN indexOfUnifiedIdentifier:v8 onNonUnifiedMultiValue:v10 withIdentifierMap:v6];

  if (v9 < [v10 count])
  {
    [v10 removeObjectAtIndex:v9];
  }
}

- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8
{
  v27[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a7;
  v15 = [(CNMultiValueSingleUpdate *)self value];
  v16 = [v13 key];
  [v14 applyContactUpdateOfKind:"multi value remove" value:v15 property:v16];

  v17 = [(CNMultiValueSingleUpdate *)self value];
  v18 = [(CNMultiValueUpdate *)self multiValueIndexForValue:v17 inMultiValue:a4 identifier:0];

  if (v18 == -1 && a6)
  {
    v19 = 1;
  }

  else
  {
    if (v18 == -1)
    {
      v19 = 0;
      if (!a8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v19 = ABMultiValueRemoveValueAndLabelAtIndex(a4, v18);
      if (!a8)
      {
        goto LABEL_10;
      }
    }

    if (!v19)
    {
      v26 = @"CNKeyPaths";
      v20 = [v13 key];
      v25 = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v27[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v23 = +[CNErrorFactory genericiOSABError];
      *a8 = [CNErrorFactory errorByAddingUserInfoEntries:v22 toError:v23];

      v19 = 0;
    }
  }

LABEL_10:

  return v19;
}

@end