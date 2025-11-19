@interface CNMultiValueReorderUpdate
- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8;
- (CNMultiValueReorderUpdate)initWithValues:(id)a3;
- (id)description;
- (int64_t)compareIndexOfIdentifier:(id)a3 toIndexOfIdentifier:(id)a4;
- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4;
@end

@implementation CNMultiValueReorderUpdate

- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a7;
  values = self->_values;
  v15 = [v12 key];
  [v13 applyContactUpdateOfKind:"multi value reorder" value:values property:v15];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = self;
  v16 = [(CNMultiValueReorderUpdate *)self values];
  v17 = [v16 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (!v17)
  {
    v32 = v16;
    v33 = 1;
LABEL_31:

    goto LABEL_33;
  }

  v18 = v17;
  v38 = a8;
  v39 = v13;
  v40 = v12;
  v43 = 0;
  v19 = *v46;
  v20 = a6;
  v21 = self;
LABEL_3:
  v22 = 0;
  while (1)
  {
    if (*v46 != v19)
    {
      objc_enumerationMutation(v16);
    }

    v23 = *(*(&v45 + 1) + 8 * v22);
    v44 = 0;
    v24 = [(CNMultiValueUpdate *)v21 multiValueIndexForValue:v23 inMultiValue:a4 identifier:&v44];
    v25 = v44;
    if (v24 == -1 && v20)
    {
      goto LABEL_24;
    }

    v26 = v19;
    inserted = v24 != -1;
    if (v24 == -1 || v24 <= v43)
    {
      goto LABEL_22;
    }

    v29 = v16;
    v30 = ABMultiValueCopyValueAtIndex(a4, v24);
    v31 = ABMultiValueCopyLabelAtIndex(a4, v24);
    if (ABMultiValueRemoveValueAndLabelAtIndex(a4, v24))
    {
      inserted = ABMultiValueInsertValueAndLabelAndUUIDAtIndex();
      if (!v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      CFRelease(v30);
      goto LABEL_18;
    }

    inserted = 0;
    if (v30)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v31)
    {
      CFRelease(v31);
      v16 = v29;
      v20 = a6;
      v21 = v41;
      if ((inserted & 1) == 0)
      {
        break;
      }

      goto LABEL_23;
    }

    v16 = v29;
    v20 = a6;
    v21 = v41;
LABEL_22:
    if (!inserted)
    {
      break;
    }

LABEL_23:
    ++v43;
    v19 = v26;
LABEL_24:

    if (v18 == ++v22)
    {
      v18 = [v16 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v18)
      {
        goto LABEL_3;
      }

      v32 = v16;
      v33 = 1;
      v12 = v40;
      goto LABEL_29;
    }
  }

  if (v38)
  {
    v50 = @"CNKeyPaths";
    v12 = v40;
    v32 = [v40 key];
    v49 = v32;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v51 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v36 = +[CNErrorFactory genericiOSABError];
    *v38 = [CNErrorFactory errorByAddingUserInfoEntries:v35 toError:v36];

    v33 = 0;
LABEL_29:
    v13 = v39;
    goto LABEL_31;
  }

  v33 = 0;
  v13 = v39;
  v12 = v40;
LABEL_33:

  return v33;
}

- (CNMultiValueReorderUpdate)initWithValues:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNMultiValueReorderUpdate;
  v5 = [(CNMultiValueReorderUpdate *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v4];
    values = v5->_values;
    v5->_values = v6;

    v8 = v5;
  }

  return v5;
}

- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__CNMultiValueReorderUpdate_applyToMutableMultiValue_withIdentifierMap___block_invoke;
  v4[3] = &unk_1E7417860;
  v4[4] = self;
  [a3 sortUsingComparator:{v4, a4}];
}

uint64_t __72__CNMultiValueReorderUpdate_applyToMutableMultiValue_withIdentifierMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 identifier];
  v7 = [v5 identifier];

  v8 = [v4 compareIndexOfIdentifier:v6 toIndexOfIdentifier:v7];
  return v8;
}

- (int64_t)compareIndexOfIdentifier:(id)a3 toIndexOfIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  values = self->_values;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__CNMultiValueReorderUpdate_compareIndexOfIdentifier_toIndexOfIdentifier___block_invoke;
  v18[3] = &unk_1E7413448;
  v19 = v6;
  v9 = v6;
  v10 = [(NSOrderedSet *)values indexOfObjectPassingTest:v18];
  v11 = self->_values;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__CNMultiValueReorderUpdate_compareIndexOfIdentifier_toIndexOfIdentifier___block_invoke_2;
  v16[3] = &unk_1E7413448;
  v17 = v7;
  v12 = v7;
  v13 = [(NSOrderedSet *)v11 indexOfObjectPassingTest:v16];
  if (v10 < v13)
  {
    v14 = -1;
  }

  else
  {
    v14 = v10 > v13;
  }

  return v14;
}

uint64_t __74__CNMultiValueReorderUpdate_compareIndexOfIdentifier_toIndexOfIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __74__CNMultiValueReorderUpdate_compareIndexOfIdentifier_toIndexOfIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"values", self->_values, 0}];
  v5 = [v3 build];

  return v5;
}

@end