@interface UIStackView(MKUIKitExtras)
- (void)_mapkit_removeArrangedSubview:()MKUIKitExtras;
- (void)_mapkit_setArrangedSubviews:()MKUIKitExtras;
@end

@implementation UIStackView(MKUIKitExtras)

- (void)_mapkit_removeArrangedSubview:()MKUIKitExtras
{
  v6 = a3;
  if (v6)
  {
    v4 = [a1 subviews];
    v5 = [v4 containsObject:v6];

    if (v5)
    {
      [a1 removeArrangedSubview:v6];
      [v6 removeFromSuperview];
    }
  }
}

- (void)_mapkit_setArrangedSubviews:()MKUIKitExtras
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [a1 subviews];
  v7 = [v5 arrayWithArray:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [a1 _mapkit_removeArrangedSubview:*(*(&v22 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [a1 addArrangedSubview:{*(*(&v18 + 1) + 8 * v17++), v18}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

@end