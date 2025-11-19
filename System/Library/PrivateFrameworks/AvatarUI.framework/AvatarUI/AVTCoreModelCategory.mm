@interface AVTCoreModelCategory
- (AVTCoreModelCategory)initWithPresetCategory:(int64_t)a3 presets:(id)a4 tags:(id)a5 rows:(id)a6 pairing:(id)a7;
- (id)description;
@end

@implementation AVTCoreModelCategory

- (AVTCoreModelCategory)initWithPresetCategory:(int64_t)a3 presets:(id)a4 tags:(id)a5 rows:(id)a6 pairing:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = AVTCoreModelCategory;
  v16 = [(AVTCoreModelCategory *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_presetCategory = a3;
    v18 = [v12 copy];
    presets = v17->_presets;
    v17->_presets = v18;

    v20 = [v14 copy];
    pickers = v17->_pickers;
    v17->_pickers = v20;

    v22 = [v13 copy];
    tags = v17->_tags;
    v17->_tags = v22;

    objc_storeStrong(&v17->_pairing, a7);
  }

  return v17;
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = AVTCoreModelCategory;
  v3 = [(AVTCoreModelCategory *)&v15 description];
  v4 = [v3 mutableCopy];

  [(AVTCoreModelCategory *)self presetCategory];
  v5 = AVTPresetCategoryToString();
  [v4 appendFormat:@" AVTPresetCategory: %@\n", v5];

  v6 = [(AVTCoreModelCategory *)self pairing];

  if (v6)
  {
    v7 = [(AVTCoreModelCategory *)self pairing];
    [v7 pairedCategory];
    v8 = AVTPresetCategoryToString();
    [v4 appendFormat:@" paired with: %@\n", v8];
  }

  v9 = [(AVTCoreModelCategory *)self pickers];
  v10 = [v9 avt_description];
  [v4 appendFormat:@" rows: %@\n", v10];

  v11 = [(AVTCoreModelCategory *)self presets];
  v12 = [v11 avt_description];
  [v4 appendFormat:@" presets: %@\n", v12];

  v13 = [v4 copy];

  return v13;
}

@end