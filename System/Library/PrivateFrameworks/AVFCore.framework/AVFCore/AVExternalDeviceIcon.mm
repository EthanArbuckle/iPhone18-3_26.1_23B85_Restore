@interface AVExternalDeviceIcon
- (AVExternalDeviceIcon)initWithDictionary:(id)dictionary;
- (CGSize)pixelSize;
- (void)dealloc;
@end

@implementation AVExternalDeviceIcon

- (AVExternalDeviceIcon)initWithDictionary:(id)dictionary
{
  v18.receiver = self;
  v18.super_class = AVExternalDeviceIcon;
  v4 = [(AVExternalDeviceIcon *)&v18 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVExternalDeviceIconInternal);
    v4->_externalDeviceIcon = v5;
    if (v5)
    {
      v6 = [dictionary valueForKey:@"widthPixels"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v8 = 0.0;
      v9 = 0.0;
      if (isKindOfClass)
      {
        [v6 floatValue];
        v9 = v10;
      }

      v4->_externalDeviceIcon->_size.width = v9;
      v11 = [dictionary valueForKey:@"heightPixels"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 floatValue];
        v8 = v12;
      }

      v4->_externalDeviceIcon->_size.height = v8;
      v13 = [dictionary valueForKey:@"imageData"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v4->_externalDeviceIcon->_data = v14;
      v15 = [dictionary valueForKey:@"prerendered"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v15 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      v4->_externalDeviceIcon->_prerendered = bOOLValue;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  externalDeviceIcon = self->_externalDeviceIcon;
  if (externalDeviceIcon)
  {

    CFRelease(self->_externalDeviceIcon);
  }

  v4.receiver = self;
  v4.super_class = AVExternalDeviceIcon;
  [(AVExternalDeviceIcon *)&v4 dealloc];
}

- (CGSize)pixelSize
{
  externalDeviceIcon = self->_externalDeviceIcon;
  width = externalDeviceIcon->_size.width;
  height = externalDeviceIcon->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end