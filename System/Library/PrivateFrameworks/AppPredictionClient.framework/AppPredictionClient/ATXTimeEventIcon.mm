@interface ATXTimeEventIcon
- (ATXTimeEventIcon)initWithBundleId:(id)id;
- (ATXTimeEventIcon)initWithCoder:(id)coder;
- (ATXTimeEventIcon)initWithContactImageData:(id)data;
- (ATXTimeEventIcon)initWithSymbolImageName:(id)name backgroundColorName:(id)colorName foregroundColorName:(id)foregroundColorName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeEventIcon

- (ATXTimeEventIcon)initWithBundleId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = ATXTimeEventIcon;
  v5 = [(ATXTimeEventIcon *)&v9 init];
  if (v5)
  {
    v6 = [idCopy copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;
  }

  return v5;
}

- (ATXTimeEventIcon)initWithContactImageData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ATXTimeEventIcon;
  v5 = [(ATXTimeEventIcon *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    contactImageData = v5->_contactImageData;
    v5->_contactImageData = v6;
  }

  return v5;
}

- (ATXTimeEventIcon)initWithSymbolImageName:(id)name backgroundColorName:(id)colorName foregroundColorName:(id)foregroundColorName
{
  nameCopy = name;
  colorNameCopy = colorName;
  foregroundColorNameCopy = foregroundColorName;
  v19.receiver = self;
  v19.super_class = ATXTimeEventIcon;
  v11 = [(ATXTimeEventIcon *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    symbolImageName = v11->_symbolImageName;
    v11->_symbolImageName = v12;

    v14 = [colorNameCopy copy];
    backgroundColorName = v11->_backgroundColorName;
    v11->_backgroundColorName = v14;

    v16 = [foregroundColorNameCopy copy];
    foregroundColorName = v11->_foregroundColorName;
    v11->_foregroundColorName = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  bundleId = self->_bundleId;
  coderCopy = coder;
  [coderCopy encodeObject:bundleId forKey:@"bundle"];
  [coderCopy encodeObject:self->_contactImageData forKey:@"imageData"];
  [coderCopy encodeObject:self->_symbolImageName forKey:@"symbol"];
  [coderCopy encodeObject:self->_foregroundColorName forKey:@"foreground"];
  [coderCopy encodeObject:self->_backgroundColorName forKey:@"background"];
}

- (ATXTimeEventIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ATXTimeEventIcon;
  v5 = [(ATXTimeEventIcon *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    contactImageData = v5->_contactImageData;
    v5->_contactImageData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
    symbolImageName = v5->_symbolImageName;
    v5->_symbolImageName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foreground"];
    foregroundColorName = v5->_foregroundColorName;
    v5->_foregroundColorName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    backgroundColorName = v5->_backgroundColorName;
    v5->_backgroundColorName = v14;
  }

  return v5;
}

@end