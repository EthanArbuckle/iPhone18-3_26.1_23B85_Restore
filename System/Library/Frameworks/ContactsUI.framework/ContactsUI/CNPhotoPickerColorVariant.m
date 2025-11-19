@interface CNPhotoPickerColorVariant
- (BOOL)isEqual:(id)a3;
- (CNPhotoPickerColorVariant)initWithColor:(id)a3 named:(id)a4;
@end

@implementation CNPhotoPickerColorVariant

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = MEMORY[0x1E69966F0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__CNPhotoPickerColorVariant_isEqual___block_invoke;
    v12[3] = &unk_1E74E7460;
    v12[4] = self;
    v13 = v7;
    v9 = v7;
    v10 = [v8 isObject:self equalToOther:v9 withBlocks:{v12, 0}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __37__CNPhotoPickerColorVariant_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) color];
  v3 = [*(a1 + 40) color];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (CNPhotoPickerColorVariant)initWithColor:(id)a3 named:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerColorVariant;
  v9 = [(CNPhotoPickerColorVariant *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_color, a3);
    objc_storeStrong(&v10->_colorName, a4);
    v11 = v10;
  }

  return v10;
}

@end