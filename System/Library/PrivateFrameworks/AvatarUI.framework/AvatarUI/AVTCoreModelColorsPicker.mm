@interface AVTCoreModelColorsPicker
- (AVTCoreModelColorsPicker)initWithTitle:(id)title primaryColors:(id)colors extendedColors:(id)extendedColors alwaysShowExtended:(BOOL)extended colorCategory:(int64_t)category destination:(int64_t)destination pairing:(id)pairing options:(id)self0;
- (AVTCoreModelColorsPicker)initWithTitle:(id)title primaryColors:(id)colors extendedColors:(id)extendedColors identifier:(id)identifier alwaysShowExtended:(BOOL)extended colorCategory:(int64_t)category destination:(int64_t)destination pairing:(id)self0 options:(id)self1;
- (BOOL)isEmpty;
- (NSString)description;
@end

@implementation AVTCoreModelColorsPicker

- (AVTCoreModelColorsPicker)initWithTitle:(id)title primaryColors:(id)colors extendedColors:(id)extendedColors alwaysShowExtended:(BOOL)extended colorCategory:(int64_t)category destination:(int64_t)destination pairing:(id)pairing options:(id)self0
{
  extendedCopy = extended;
  v16 = MEMORY[0x1E696AFB0];
  optionsCopy = options;
  pairingCopy = pairing;
  extendedColorsCopy = extendedColors;
  colorsCopy = colors;
  titleCopy = title;
  uUID = [v16 UUID];
  uUIDString = [uUID UUIDString];
  v24 = [(AVTCoreModelColorsPicker *)self initWithTitle:titleCopy primaryColors:colorsCopy extendedColors:extendedColorsCopy identifier:uUIDString alwaysShowExtended:extendedCopy colorCategory:category destination:destination pairing:pairingCopy options:optionsCopy];

  return v24;
}

- (AVTCoreModelColorsPicker)initWithTitle:(id)title primaryColors:(id)colors extendedColors:(id)extendedColors identifier:(id)identifier alwaysShowExtended:(BOOL)extended colorCategory:(int64_t)category destination:(int64_t)destination pairing:(id)self0 options:(id)self1
{
  titleCopy = title;
  colorsCopy = colors;
  extendedColorsCopy = extendedColors;
  identifierCopy = identifier;
  pairingCopy = pairing;
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = AVTCoreModelColorsPicker;
  v20 = [(AVTCoreModelColorsPicker *)&v29 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [titleCopy copy];
    title = v20->_title;
    v20->_title = v23;

    objc_storeStrong(&v20->_primaryColors, colors);
    objc_storeStrong(&v20->_extendedColors, extendedColors);
    v20->_alwaysShowExtended = extended;
    v20->_destination = destination;
    v20->_colorCategory = category;
    objc_storeStrong(&v20->_pairing, pairing);
    objc_storeStrong(&v20->_options, options);
  }

  return v20;
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = AVTCoreModelColorsPicker;
  v3 = [(AVTCoreModelColorsPicker *)&v17 description];
  v4 = [v3 mutableCopy];

  identifier = [(AVTCoreModelColorsPicker *)self identifier];
  [v4 appendFormat:@" identifier: %@", identifier];

  title = [(AVTCoreModelColorsPicker *)self title];
  [v4 appendFormat:@" title: %@", title];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVTCoreModelColorsPicker colorCategory](self, "colorCategory")}];
  [v4 appendFormat:@" category: %@", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVTCoreModelColorsPicker destination](self, "destination")}];
  [v4 appendFormat:@" destination: %@", v8];

  primaryColors = [(AVTCoreModelColorsPicker *)self primaryColors];

  if (primaryColors)
  {
    primaryColors2 = [(AVTCoreModelColorsPicker *)self primaryColors];
    avt_description = [primaryColors2 avt_description];
    [v4 appendFormat:@" primary colors: %@", avt_description];
  }

  extendedColors = [(AVTCoreModelColorsPicker *)self extendedColors];

  if (extendedColors)
  {
    extendedColors2 = [(AVTCoreModelColorsPicker *)self extendedColors];
    avt_description2 = [extendedColors2 avt_description];
    [v4 appendFormat:@" extended colors: %@", avt_description2];
  }

  if ([(AVTCoreModelColorsPicker *)self alwaysShowExtended])
  {
    [v4 appendString:@" alwaysShowExtended"];
  }

  v15 = [v4 copy];

  return v15;
}

- (BOOL)isEmpty
{
  primaryColors = [(AVTCoreModelColorsPicker *)self primaryColors];
  if ([primaryColors count])
  {
    v4 = 0;
  }

  else
  {
    extendedColors = [(AVTCoreModelColorsPicker *)self extendedColors];
    v4 = [extendedColors count] == 0;
  }

  return v4;
}

@end