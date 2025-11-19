@interface ATXTimeEventIcon
- (ATXTimeEventIcon)initWithBundleId:(id)a3;
- (ATXTimeEventIcon)initWithCoder:(id)a3;
- (ATXTimeEventIcon)initWithContactImageData:(id)a3;
- (ATXTimeEventIcon)initWithSymbolImageName:(id)a3 backgroundColorName:(id)a4 foregroundColorName:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeEventIcon

- (ATXTimeEventIcon)initWithBundleId:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXTimeEventIcon;
  v5 = [(ATXTimeEventIcon *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;
  }

  return v5;
}

- (ATXTimeEventIcon)initWithContactImageData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXTimeEventIcon;
  v5 = [(ATXTimeEventIcon *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contactImageData = v5->_contactImageData;
    v5->_contactImageData = v6;
  }

  return v5;
}

- (ATXTimeEventIcon)initWithSymbolImageName:(id)a3 backgroundColorName:(id)a4 foregroundColorName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ATXTimeEventIcon;
  v11 = [(ATXTimeEventIcon *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    symbolImageName = v11->_symbolImageName;
    v11->_symbolImageName = v12;

    v14 = [v9 copy];
    backgroundColorName = v11->_backgroundColorName;
    v11->_backgroundColorName = v14;

    v16 = [v10 copy];
    foregroundColorName = v11->_foregroundColorName;
    v11->_foregroundColorName = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  bundleId = self->_bundleId;
  v5 = a3;
  [v5 encodeObject:bundleId forKey:@"bundle"];
  [v5 encodeObject:self->_contactImageData forKey:@"imageData"];
  [v5 encodeObject:self->_symbolImageName forKey:@"symbol"];
  [v5 encodeObject:self->_foregroundColorName forKey:@"foreground"];
  [v5 encodeObject:self->_backgroundColorName forKey:@"background"];
}

- (ATXTimeEventIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ATXTimeEventIcon;
  v5 = [(ATXTimeEventIcon *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    contactImageData = v5->_contactImageData;
    v5->_contactImageData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
    symbolImageName = v5->_symbolImageName;
    v5->_symbolImageName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foreground"];
    foregroundColorName = v5->_foregroundColorName;
    v5->_foregroundColorName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    backgroundColorName = v5->_backgroundColorName;
    v5->_backgroundColorName = v14;
  }

  return v5;
}

@end