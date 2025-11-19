@interface CNPolicy
- (BOOL)_validateLabeledValueArrayAttributeSupport:(id)a3 forContactProperty:(id)a4 replacementValue:(id *)a5;
- (BOOL)_validateLabeledValueArrayLabels:(id)a3 forContactProperty:(id)a4 replacementValue:(id *)a5;
- (BOOL)shouldSetValue:(id)a3 property:(id)a4 contact:(id)a5 replacementValue:(id *)a6;
- (CNPolicy)initWithCoder:(id)a3;
- (id)_replacementLabeledValue:(id)a3 omittingKeys:(id)a4;
@end

@implementation CNPolicy

- (BOOL)shouldSetValue:(id)a3 property:(id)a4 contact:(id)a5 replacementValue:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[CN contactPropertiesByKey];
  v12 = [v11 objectForKey:v10];

  if (![(CNPolicy *)self isContactPropertySupported:v10])
  {
    goto LABEL_5;
  }

  if (![v12 isMultiValue])
  {
    v14 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v13 = [v9 count], v13 <= -[CNPolicy maximumCountOfValuesForContactProperty:](self, "maximumCountOfValuesForContactProperty:", v10)))
  {
    v24 = 0;
    v17 = [(CNPolicy *)self _validateLabeledValueArrayLabels:v9 forContactProperty:v10 replacementValue:&v24];
    v18 = v24;
    v19 = v18;
    if (!v17 && v18)
    {
      v20 = v18;

      v9 = v20;
    }

    v23 = v19;
    v21 = [(CNPolicy *)self _validateLabeledValueArrayAttributeSupport:v9 forContactProperty:v10 replacementValue:&v23];
    v14 = v23;

    v15 = v17 && v21;
    if (a6 && !v15 && v14)
    {
      v22 = v14;
      *a6 = v14;
    }
  }

  else
  {
LABEL_5:
    v14 = 0;
    LOBYTE(v15) = 0;
  }

LABEL_7:

  return v15;
}

- (BOOL)_validateLabeledValueArrayLabels:(id)a3 forContactProperty:(id)a4 replacementValue:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v35 = a4;
  v32 = [(CNPolicy *)self supportedLabelsForContactProperty:?];
  if (![v32 count])
  {
    v9 = 1;
    goto LABEL_35;
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  if (a5)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v31, "count")}];
    v33 = [MEMORY[0x1E696AD50] indexSet];
  }

  else
  {
    v33 = 0;
    v8 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = v32;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v11)
  {
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNPolicy maximumCountOfValuesForContactProperty:label:](self, "maximumCountOfValuesForContactProperty:label:", v35, v14)}];
        [v7 setObject:v15 forKey:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v11);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v31;
  v16 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v16)
  {

    v9 = 1;
    goto LABEL_34;
  }

  v17 = *v48;
  v9 = 1;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v48 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v47 + 1) + 8 * j);
      v20 = [v19 label];
      v21 = [v7 objectForKey:v20];

      if (v21 && [v21 integerValue])
      {
        if (v8)
        {
          v22 = [v19 label];
          [v8 addObject:v22];
        }

        v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v21, "integerValue") - 1}];
        v24 = [v19 label];
        [v7 setObject:v23 forKey:v24];

        goto LABEL_25;
      }

      if (v8)
      {
        [v33 addIndex:{objc_msgSend(v8, "count")}];
        v23 = [MEMORY[0x1E695DFB0] null];
        [v8 addObject:v23];
        v9 = 0;
LABEL_25:

        goto LABEL_27;
      }

      v9 = 0;
LABEL_27:
    }

    v16 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  }

  while (v16);

  if (!((a5 == 0) | v9 & 1))
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 1;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __81__CNPolicy__validateLabeledValueArrayLabels_forContactProperty_replacementValue___block_invoke;
    v39[3] = &unk_1E74173F8;
    v40 = v7;
    v25 = v8;
    v41 = v25;
    v42 = &v43;
    [v33 enumerateIndexesUsingBlock:v39];
    if (*(v44 + 24) == 1)
    {
      v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __81__CNPolicy__validateLabeledValueArrayLabels_forContactProperty_replacementValue___block_invoke_2;
      v36[3] = &unk_1E74140E0;
      v37 = v25;
      v27 = v26;
      v38 = v27;
      [obj enumerateObjectsUsingBlock:v36];
      v28 = v27;
      *a5 = v27;
    }

    _Block_object_dispose(&v43, 8);
    v9 = 0;
  }

LABEL_34:

LABEL_35:
  return v9 & 1;
}

void __81__CNPolicy__validateLabeledValueArrayLabels_forContactProperty_replacementValue___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__33;
  v18 = __Block_byref_object_dispose__33;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__33;
  v12 = __Block_byref_object_dispose__33;
  v13 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__CNPolicy__validateLabeledValueArrayLabels_forContactProperty_replacementValue___block_invoke_24;
  v7[3] = &unk_1E74173D0;
  v7[4] = &v14;
  v7[5] = &v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  if (v15[5])
  {
    [*(a1 + 40) replaceObjectAtIndex:a2 withObject:?];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9[5], "integerValue") - 1}];
    [v5 setObject:v6 forKey:v15[5]];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __81__CNPolicy__validateLabeledValueArrayLabels_forContactProperty_replacementValue___block_invoke_24(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([v8 integerValue] >= 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __81__CNPolicy__validateLabeledValueArrayLabels_forContactProperty_replacementValue___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 label];
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v10];
  }

  else
  {
    v8 = [*(a1 + 32) objectAtIndex:a3];
    v9 = [v10 labeledValueBySettingLabel:v8];

    [*(a1 + 40) addObject:v9];
  }
}

- (BOOL)_validateLabeledValueArrayAttributeSupport:(id)a3 forContactProperty:(id)a4 replacementValue:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__33;
  v26 = __Block_byref_object_dispose__33;
  v27 = 0;
  v10 = [(CNPolicy *)self unsupportedAttributesForLabeledContactProperty:v9];
  v11 = v10;
  if (!v10)
  {
    *(v29 + 24) = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v10 count])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__CNPolicy__validateLabeledValueArrayAttributeSupport_forContactProperty_replacementValue___block_invoke;
    v15[3] = &unk_1E7417420;
    v16 = v11;
    v19 = &v28;
    v21 = a5 != 0;
    v20 = &v22;
    v17 = v8;
    v18 = self;
    [v17 enumerateObjectsUsingBlock:v15];
  }

  if (a5)
  {
LABEL_7:
    v12 = v23[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

LABEL_9:
  v13 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

void __91__CNPolicy__validateLabeledValueArrayAttributeSupport_forContactProperty_replacementValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v7 value];
        v15 = [v14 valueForKey:v13];

        if (v15)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          if (*(a1 + 72))
          {
            if (!*(*(*(a1 + 64) + 8) + 40))
            {
              v16 = [*(a1 + 40) mutableCopy];
              v17 = *(*(a1 + 64) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = v16;
            }
          }

          else
          {
            *a4 = 1;
          }

          v19 = [*(a1 + 48) _replacementLabeledValue:v7 omittingKeys:*(a1 + 32)];
          if (v19)
          {
            v20 = [v7 labeledValueBySettingValue:v19];
            [*(*(*(a1 + 64) + 8) + 40) replaceObjectAtIndex:a3 withObject:v20];
          }

          else
          {
            v21 = *(*(a1 + 64) + 8);
            v22 = *(v21 + 40);
            *(v21 + 40) = 0;

            *a4 = 1;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (id)_replacementLabeledValue:(id)a3 omittingKeys:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 value];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [v5 value];
    v10 = [v9 mutableCopy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 setValue:0 forKey:{*(*(&v17 + 1) + 8 * i), v17}];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CNPolicy)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNPolicy;
  v3 = [(CNPolicy *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end