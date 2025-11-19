@interface AVTCoreModelColorsPicker
- (AVTCoreModelColorsPicker)initWithTitle:(id)a3 primaryColors:(id)a4 extendedColors:(id)a5 alwaysShowExtended:(BOOL)a6 colorCategory:(int64_t)a7 destination:(int64_t)a8 pairing:(id)a9 options:(id)a10;
- (AVTCoreModelColorsPicker)initWithTitle:(id)a3 primaryColors:(id)a4 extendedColors:(id)a5 identifier:(id)a6 alwaysShowExtended:(BOOL)a7 colorCategory:(int64_t)a8 destination:(int64_t)a9 pairing:(id)a10 options:(id)a11;
- (BOOL)isEmpty;
- (NSString)description;
@end

@implementation AVTCoreModelColorsPicker

- (AVTCoreModelColorsPicker)initWithTitle:(id)a3 primaryColors:(id)a4 extendedColors:(id)a5 alwaysShowExtended:(BOOL)a6 colorCategory:(int64_t)a7 destination:(int64_t)a8 pairing:(id)a9 options:(id)a10
{
  v11 = a6;
  v16 = MEMORY[0x1E696AFB0];
  v17 = a10;
  v18 = a9;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v16 UUID];
  v23 = [v22 UUIDString];
  v24 = [(AVTCoreModelColorsPicker *)self initWithTitle:v21 primaryColors:v20 extendedColors:v19 identifier:v23 alwaysShowExtended:v11 colorCategory:a7 destination:a8 pairing:v18 options:v17];

  return v24;
}

- (AVTCoreModelColorsPicker)initWithTitle:(id)a3 primaryColors:(id)a4 extendedColors:(id)a5 identifier:(id)a6 alwaysShowExtended:(BOOL)a7 colorCategory:(int64_t)a8 destination:(int64_t)a9 pairing:(id)a10 options:(id)a11
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v28 = a10;
  v19 = a11;
  v29.receiver = self;
  v29.super_class = AVTCoreModelColorsPicker;
  v20 = [(AVTCoreModelColorsPicker *)&v29 init];
  if (v20)
  {
    v21 = [v18 copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v15 copy];
    title = v20->_title;
    v20->_title = v23;

    objc_storeStrong(&v20->_primaryColors, a4);
    objc_storeStrong(&v20->_extendedColors, a5);
    v20->_alwaysShowExtended = a7;
    v20->_destination = a9;
    v20->_colorCategory = a8;
    objc_storeStrong(&v20->_pairing, a10);
    objc_storeStrong(&v20->_options, a11);
  }

  return v20;
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = AVTCoreModelColorsPicker;
  v3 = [(AVTCoreModelColorsPicker *)&v17 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTCoreModelColorsPicker *)self identifier];
  [v4 appendFormat:@" identifier: %@", v5];

  v6 = [(AVTCoreModelColorsPicker *)self title];
  [v4 appendFormat:@" title: %@", v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVTCoreModelColorsPicker colorCategory](self, "colorCategory")}];
  [v4 appendFormat:@" category: %@", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVTCoreModelColorsPicker destination](self, "destination")}];
  [v4 appendFormat:@" destination: %@", v8];

  v9 = [(AVTCoreModelColorsPicker *)self primaryColors];

  if (v9)
  {
    v10 = [(AVTCoreModelColorsPicker *)self primaryColors];
    v11 = [v10 avt_description];
    [v4 appendFormat:@" primary colors: %@", v11];
  }

  v12 = [(AVTCoreModelColorsPicker *)self extendedColors];

  if (v12)
  {
    v13 = [(AVTCoreModelColorsPicker *)self extendedColors];
    v14 = [v13 avt_description];
    [v4 appendFormat:@" extended colors: %@", v14];
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
  v3 = [(AVTCoreModelColorsPicker *)self primaryColors];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(AVTCoreModelColorsPicker *)self extendedColors];
    v4 = [v5 count] == 0;
  }

  return v4;
}

@end