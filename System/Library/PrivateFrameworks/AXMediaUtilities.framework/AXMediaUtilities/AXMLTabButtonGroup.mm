@interface AXMLTabButtonGroup
- (id)textLabel;
- (id)topmost;
@end

@implementation AXMLTabButtonGroup

- (id)topmost
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(AXMMLElementGroup *)self subfeatures];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (v5)
        {
          [*(*(&v12 + 1) + 8 * i) frame];
          MinY = CGRectGetMinY(v19);
          [v5 frame];
          if (MinY >= CGRectGetMinY(v20))
          {
            continue;
          }
        }

        v10 = v8;

        v5 = v10;
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)textLabel
{
  v50 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(AXMMLElementGroup *)self subfeatures];
  v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v44)
  {
    v41 = &stru_1F23EA908;
    v42 = &stru_1F23EA908;
    goto LABEL_28;
  }

  v2 = *v46;
  v3 = 0x1E695D000uLL;
  v41 = &stru_1F23EA908;
  v42 = &stru_1F23EA908;
  v40 = *v46;
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v46 != v2)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v45 + 1) + 8 * i);
      v6 = [v5 feature];
      v7 = [v6 value];
      v8 = [*(v3 + 4016) null];
      if ([v7 isEqual:v8])
      {
        goto LABEL_14;
      }

      v9 = [v5 feature];
      v10 = [v9 value];
      if (![v10 length])
      {

        goto LABEL_14;
      }

      v11 = [v5 feature];
      if ([v11 uiClass] == 11)
      {

LABEL_13:
        v6 = [v5 feature];
        v7 = [v6 value];
        v8 = v42;
        v42 = __AXMStringForVariables(v42, v15, v16, v17, v18, v19, v20, v21, v7);
LABEL_14:

        goto LABEL_15;
      }

      v12 = [v5 feature];
      v13 = [v12 uiClass];

      v2 = v40;
      v14 = v13 == 17;
      v3 = 0x1E695D000uLL;
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_15:
      v22 = [v5 feature];
      v23 = [v22 value];
      v24 = [*(v3 + 4016) null];
      if ([v23 isEqual:v24])
      {
        goto LABEL_23;
      }

      v25 = [v5 feature];
      v26 = [v25 value];
      if (![v26 length])
      {

        goto LABEL_23;
      }

      v27 = [v5 feature];
      if ([v27 uiClass] == 5)
      {

LABEL_22:
        v22 = [v5 feature];
        v23 = [v22 value];
        v24 = v41;
        v41 = __AXMStringForVariables(v41, v30, v31, v32, v33, v34, v35, v36, v23);
LABEL_23:

        continue;
      }

      v28 = [v5 feature];
      v29 = [v28 uiClass];

      v2 = v40;
      v14 = v29 == 16;
      v3 = 0x1E695D000;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v44);
LABEL_28:

  if ([(__CFString *)v42 length])
  {
    v37 = v42;
  }

  else
  {
    v37 = v41;
  }

  v38 = v37;

  return v37;
}

@end