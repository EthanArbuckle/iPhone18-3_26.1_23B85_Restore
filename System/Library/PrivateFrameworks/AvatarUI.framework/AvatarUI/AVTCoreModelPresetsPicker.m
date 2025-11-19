@interface AVTCoreModelPresetsPicker
- (AVTCoreModelPresetsPicker)initWithTitle:(id)a3 representedTags:(id)a4 pairing:(id)a5 options:(id)a6;
- (AVTCoreModelPresetsPicker)initWithTitle:(id)a3 representedTags:(id)a4 pairing:(id)a5 options:(id)a6 identifier:(id)a7;
- (NSString)description;
@end

@implementation AVTCoreModelPresetsPicker

- (AVTCoreModelPresetsPicker)initWithTitle:(id)a3 representedTags:(id)a4 pairing:(id)a5 options:(id)a6
{
  v10 = MEMORY[0x1E696AFB0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 UUID];
  v16 = [v15 UUIDString];
  v17 = [(AVTCoreModelPresetsPicker *)self initWithTitle:v14 representedTags:v13 pairing:v12 options:v11 identifier:v16];

  return v17;
}

- (AVTCoreModelPresetsPicker)initWithTitle:(id)a3 representedTags:(id)a4 pairing:(id)a5 options:(id)a6 identifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = AVTCoreModelPresetsPicker;
  v17 = [(AVTCoreModelPresetsPicker *)&v25 init];
  if (v17)
  {
    v18 = [v12 copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [v13 copy];
    representedTags = v17->_representedTags;
    v17->_representedTags = v20;

    objc_storeStrong(&v17->_pairing, a5);
    objc_storeStrong(&v17->_options, a6);
    v22 = [v16 copy];
    identifier = v17->_identifier;
    v17->_identifier = v22;
  }

  return v17;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = AVTCoreModelPresetsPicker;
  v3 = [(AVTCoreModelPresetsPicker *)&v10 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTCoreModelPresetsPicker *)self identifier];
  [v4 appendFormat:@" identifier: %@\n", v5];

  v6 = [(AVTCoreModelPresetsPicker *)self title];
  [v4 appendFormat:@" title: %@\n", v6];

  v7 = [(AVTCoreModelPresetsPicker *)self representedTags];
  [v4 appendFormat:@" tags: %@\n", v7];

  v8 = [v4 copy];

  return v8;
}

@end