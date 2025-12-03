@interface AVTCoreModelPresetsPicker
- (AVTCoreModelPresetsPicker)initWithTitle:(id)title representedTags:(id)tags pairing:(id)pairing options:(id)options;
- (AVTCoreModelPresetsPicker)initWithTitle:(id)title representedTags:(id)tags pairing:(id)pairing options:(id)options identifier:(id)identifier;
- (NSString)description;
@end

@implementation AVTCoreModelPresetsPicker

- (AVTCoreModelPresetsPicker)initWithTitle:(id)title representedTags:(id)tags pairing:(id)pairing options:(id)options
{
  v10 = MEMORY[0x1E696AFB0];
  optionsCopy = options;
  pairingCopy = pairing;
  tagsCopy = tags;
  titleCopy = title;
  uUID = [v10 UUID];
  uUIDString = [uUID UUIDString];
  v17 = [(AVTCoreModelPresetsPicker *)self initWithTitle:titleCopy representedTags:tagsCopy pairing:pairingCopy options:optionsCopy identifier:uUIDString];

  return v17;
}

- (AVTCoreModelPresetsPicker)initWithTitle:(id)title representedTags:(id)tags pairing:(id)pairing options:(id)options identifier:(id)identifier
{
  titleCopy = title;
  tagsCopy = tags;
  pairingCopy = pairing;
  optionsCopy = options;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = AVTCoreModelPresetsPicker;
  v17 = [(AVTCoreModelPresetsPicker *)&v25 init];
  if (v17)
  {
    v18 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [tagsCopy copy];
    representedTags = v17->_representedTags;
    v17->_representedTags = v20;

    objc_storeStrong(&v17->_pairing, pairing);
    objc_storeStrong(&v17->_options, options);
    v22 = [identifierCopy copy];
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

  identifier = [(AVTCoreModelPresetsPicker *)self identifier];
  [v4 appendFormat:@" identifier: %@\n", identifier];

  title = [(AVTCoreModelPresetsPicker *)self title];
  [v4 appendFormat:@" title: %@\n", title];

  representedTags = [(AVTCoreModelPresetsPicker *)self representedTags];
  [v4 appendFormat:@" tags: %@\n", representedTags];

  v8 = [v4 copy];

  return v8;
}

@end