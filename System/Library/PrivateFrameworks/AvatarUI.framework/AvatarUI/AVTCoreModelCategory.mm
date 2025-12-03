@interface AVTCoreModelCategory
- (AVTCoreModelCategory)initWithPresetCategory:(int64_t)category presets:(id)presets tags:(id)tags rows:(id)rows pairing:(id)pairing;
- (id)description;
@end

@implementation AVTCoreModelCategory

- (AVTCoreModelCategory)initWithPresetCategory:(int64_t)category presets:(id)presets tags:(id)tags rows:(id)rows pairing:(id)pairing
{
  presetsCopy = presets;
  tagsCopy = tags;
  rowsCopy = rows;
  pairingCopy = pairing;
  v25.receiver = self;
  v25.super_class = AVTCoreModelCategory;
  v16 = [(AVTCoreModelCategory *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_presetCategory = category;
    v18 = [presetsCopy copy];
    presets = v17->_presets;
    v17->_presets = v18;

    v20 = [rowsCopy copy];
    pickers = v17->_pickers;
    v17->_pickers = v20;

    v22 = [tagsCopy copy];
    tags = v17->_tags;
    v17->_tags = v22;

    objc_storeStrong(&v17->_pairing, pairing);
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

  pairing = [(AVTCoreModelCategory *)self pairing];

  if (pairing)
  {
    pairing2 = [(AVTCoreModelCategory *)self pairing];
    [pairing2 pairedCategory];
    v8 = AVTPresetCategoryToString();
    [v4 appendFormat:@" paired with: %@\n", v8];
  }

  pickers = [(AVTCoreModelCategory *)self pickers];
  avt_description = [pickers avt_description];
  [v4 appendFormat:@" rows: %@\n", avt_description];

  presets = [(AVTCoreModelCategory *)self presets];
  avt_description2 = [presets avt_description];
  [v4 appendFormat:@" presets: %@\n", avt_description2];

  v13 = [v4 copy];

  return v13;
}

@end