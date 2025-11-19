@interface UIBarButtonItem(AMSUIWebButtonModel)
+ (id)barButtonItemWithWebButtonModel:()AMSUIWebButtonModel navigationBarModel:actionBlock:;
@end

@implementation UIBarButtonItem(AMSUIWebButtonModel)

+ (id)barButtonItemWithWebButtonModel:()AMSUIWebButtonModel navigationBarModel:actionBlock:
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v20 = 0;
    v14 = v9;
    goto LABEL_12;
  }

  v11 = a4;
  v12 = [v8 actionBlock];
  v13 = v12;
  if (!v12)
  {
    v12 = v10;
  }

  v14 = _Block_copy(v12);

  v15 = [v11 style];
  v16 = [v8 _imageForButtonWithNavStyle:v15];
  v17 = [v8 activityIndicator];

  if (!v17)
  {
    if ([v8 style] == 4)
    {
      v18 = objc_alloc(MEMORY[0x1E69DC708]);
      v19 = [v8 _makeProxCardButtonWithActionBlock:v14];
      goto LABEL_9;
    }

    v24 = [v8 title];
    if (v24 && ([v8 title], v13 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v13, "isEqualToString:", &stru_1F3921360) & 1) != 0))
    {

      if (v16)
      {
LABEL_18:
        v25 = [v8 title];
        if (v25 && ([v8 title], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "isEqualToString:", &stru_1F3921360)))
        {
          v21 = [MEMORY[0x1E696AEC0] string];
        }

        else
        {
          v21 = [v8 title];
          if (!v25)
          {
LABEL_28:

            v32 = objc_alloc(MEMORY[0x1E69DC708]);
            v33 = MEMORY[0x1E69DC628];
            v35 = MEMORY[0x1E69E9820];
            v36 = 3221225472;
            v37 = __103__UIBarButtonItem_AMSUIWebButtonModel__barButtonItemWithWebButtonModel_navigationBarModel_actionBlock___block_invoke_2;
            v38 = &unk_1E7F24D78;
            v39 = v14;
            v34 = [v33 actionWithTitle:v21 image:v16 identifier:0 handler:&v35];
            v20 = [v32 initWithPrimaryAction:{v34, v35, v36, v37, v38}];

            [v20 setStyle:{objc_msgSend(v8, "_barButtonItemStyle")}];
            goto LABEL_10;
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      v26 = [v8 title];
      v5 = (v26 | v16) == 0;

      if (v24)
      {

        if ((v5 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (!v5)
      {
        goto LABEL_18;
      }
    }

    v27 = [v8 _systemItem];
    v28 = objc_alloc(MEMORY[0x1E69DC708]);
    v29 = MEMORY[0x1E69DC628];
    v30 = [MEMORY[0x1E696AEC0] string];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __103__UIBarButtonItem_AMSUIWebButtonModel__barButtonItemWithWebButtonModel_navigationBarModel_actionBlock___block_invoke;
    v40[3] = &unk_1E7F24D78;
    v41 = v14;
    v31 = [v29 actionWithTitle:v30 image:0 identifier:0 handler:v40];
    v20 = [v28 initWithBarButtonSystemItem:v27 primaryAction:v31];

    goto LABEL_11;
  }

  v18 = objc_alloc(MEMORY[0x1E69DC708]);
  v19 = [v8 _makeActivityIndicatorView];
LABEL_9:
  v21 = v19;
  v20 = [v18 initWithCustomView:v19];
LABEL_10:

LABEL_11:
  v22 = [v8 accessibilityLabel];
  [v20 setAccessibilityLabel:v22];

  [v20 setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
  [v20 setIsAccessibilityElement:1];
  [v20 setEnabled:{objc_msgSend(v8, "enabled")}];

LABEL_12:

  return v20;
}

@end