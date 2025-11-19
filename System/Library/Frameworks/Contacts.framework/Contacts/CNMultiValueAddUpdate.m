@interface CNMultiValueAddUpdate
- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8;
- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4;
@end

@implementation CNMultiValueAddUpdate

- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4
{
  v5 = a3;
  v6 = [(CNMultiValueSingleUpdate *)self value];
  [v5 addObject:v6];
}

- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8
{
  v47[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a7;
  v13 = [(CNMultiValueSingleUpdate *)self value];
  v14 = [v11 key];
  [v12 applyContactUpdateOfKind:"multi value add" value:v13 property:v14];

  v15 = [(CNMultiValueSingleUpdate *)self value];
  v16 = [v15 value];
  v17 = [v11 ABMultiValueValueFromCNLabeledValueValue:v16];

  v18 = [v15 label];
  v19 = [v11 ABMultiValueLabelFromCNLabeledValueLabel:v18];

  Count = ABMultiValueGetCount(a4);
  v21 = [v11 key];
  v22 = [v21 isEqualToString:@"addressingGrammars"];

  if (!v22 || v17)
  {
    if ([(CNMultiValueUpdate *)self ignoreIdentifiers])
    {
      inserted = ABMultiValueInsertValueAndLabelAtIndex(a4, v17, v19, Count, 0);
      v30 = ABMultiValueCopyUUIDAtIndex();
      v31 = a8;
      if (v30)
      {
        v32 = v30;
        [CN addLinkedIdentifier:v30 toLabeledValue:v15];
        CFRelease(v32);
      }
    }

    else
    {
      [v15 identifier];
      inserted = ABMultiValueInsertValueAndLabelAndUUIDAtIndex();
      v31 = a8;
    }

    if (v31 && (inserted & 1) == 0)
    {
      v46 = @"CNKeyPaths";
      v33 = [v11 key];
      v45 = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v47[0] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v36 = +[CNErrorFactory genericiOSABError];
      *v31 = [CNErrorFactory errorByAddingUserInfoEntries:v35 toError:v36];

      v37 = MEMORY[0x1E696AEC0];
      v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNMultiValueUpdate ignoreIdentifiers](self, "ignoreIdentifiers")}];
      v39 = [v37 stringWithFormat:@"multi value add, ignore identifiers = %@", v38];

      v40 = [v39 UTF8String];
      v41 = [(CNMultiValueSingleUpdate *)self value];
      v42 = [v11 key];
      [v12 failedToApplyContactUpdateOfKind:v40 value:v41 property:v42 error:*v31];

      inserted = 0;
    }
  }

  else
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNMultiValueUpdate ignoreIdentifiers](self, "ignoreIdentifiers")}];
    v25 = [v23 stringWithFormat:@"multi value add, ignore identifiers = %@", v24];

    v26 = [v25 UTF8String];
    v27 = [(CNMultiValueSingleUpdate *)self value];
    v28 = [v11 key];
    [v12 failedToApplyContactUpdateOfKind:v26 value:v27 property:v28 error:0];

    inserted = 1;
  }

  return inserted;
}

@end