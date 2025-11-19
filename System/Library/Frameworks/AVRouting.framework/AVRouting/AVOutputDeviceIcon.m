@interface AVOutputDeviceIcon
- (AVOutputDeviceIcon)initWithDict:(id)a3;
- (void)dealloc;
@end

@implementation AVOutputDeviceIcon

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceIcon;
  [(AVOutputDeviceIcon *)&v3 dealloc];
}

- (AVOutputDeviceIcon)initWithDict:(id)a3
{
  v17.receiver = self;
  v17.super_class = AVOutputDeviceIcon;
  v4 = [(AVOutputDeviceIcon *)&v17 init];
  if (v4)
  {
    v5 = [a3 valueForKey:@"widthPixels"];
    objc_opt_class();
    v6 = 0.0;
    v7 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      [v5 floatValue];
      v7 = v8;
    }

    v9 = [a3 valueForKey:@"heightPixels"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      v6 = v10;
    }

    v4->_pixelSize = [MEMORY[0x1E696B098] valueWithSize:{v7, v6}];
    v11 = [a3 valueForKey:@"imageData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v4->_imageData = v12;
    v13 = [a3 valueForKey:@"prerendered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 BOOLValue];
    }

    else
    {
      v14 = 1;
    }

    v4->_prerendered = v14;
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end