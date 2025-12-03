@interface LPCircularProgressIndicatorStyle
- (LPCircularProgressIndicatorStyle)initWithPlatform:(int64_t)platform;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPCircularProgressIndicatorStyle

- (LPCircularProgressIndicatorStyle)initWithPlatform:(int64_t)platform
{
  v14.receiver = self;
  v14.super_class = LPCircularProgressIndicatorStyle;
  v4 = [(LPCircularProgressIndicatorStyle *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_borderWidth = 3.0;
    if (platform < 5 || platform == 6)
    {
      lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
      borderColor = v5->_borderColor;
      v5->_borderColor = lightGrayColor;

      lightGrayColor2 = [MEMORY[0x1E69DC888] lightGrayColor];
    }

    else
    {
      if (platform != 5)
      {
        goto LABEL_5;
      }

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v13 = v5->_borderColor;
      v5->_borderColor = whiteColor;

      lightGrayColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    fillColor = v5->_fillColor;
    v5->_fillColor = lightGrayColor2;

LABEL_5:
    v10 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPCircularProgressIndicatorStyle allocWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v4->_borderWidth = self->_borderWidth;
    v6 = [(UIColor *)self->_borderColor copy];
    borderColor = v5->_borderColor;
    v5->_borderColor = v6;

    v8 = [(UIColor *)self->_fillColor copy];
    fillColor = v5->_fillColor;
    v5->_fillColor = v8;

    v10 = v5;
  }

  return v5;
}

@end