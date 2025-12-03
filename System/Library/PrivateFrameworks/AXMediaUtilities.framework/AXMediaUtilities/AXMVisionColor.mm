@interface AXMVisionColor
+ (id)colorWithHue:(unsigned __int8)hue saturation:(unsigned __int8)saturation brightness:(unsigned __int8)brightness;
+ (id)colorWithRed:(unsigned __int8)red green:(unsigned __int8)green blue:(unsigned __int8)blue;
- (AXMVisionColor)init;
- (AXMVisionColor)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAXMVisionColor:(id)color;
- (double)euclidianDistanceHS:(id)s;
- (double)euclidianDistanceHSV:(id)v;
- (id)description;
- (void)_getHue:(char *)hue saturation:(char *)saturation brightness:(char *)brightness;
- (void)_getRed:(char *)red green:(char *)green blue:(char *)blue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionColor

+ (id)colorWithRed:(unsigned __int8)red green:(unsigned __int8)green blue:(unsigned __int8)blue
{
  v8 = objc_alloc_init(self);
  v8[8] = red;
  v8[9] = green;
  v8[10] = blue;
  [v8 _getHue:v8 + 11 saturation:v8 + 12 brightness:v8 + 13];

  return v8;
}

+ (id)colorWithHue:(unsigned __int8)hue saturation:(unsigned __int8)saturation brightness:(unsigned __int8)brightness
{
  v8 = objc_alloc_init(self);
  v8[11] = hue;
  v8[12] = saturation;
  v8[13] = brightness;
  [v8 _getRed:v8 + 8 green:v8 + 9 blue:v8 + 10];

  return v8;
}

- (AXMVisionColor)init
{
  v3.receiver = self;
  v3.super_class = AXMVisionColor;
  result = [(AXMVisionColor *)&v3 init];
  if (result)
  {
    *&result->_saturation = 0;
    *&result->_red = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p> [r:%u g:%u b:%u] [h:%u s:%u b:%u]", v5, self, self->_red, self->_green, self->_blue, self->_hue, self->_saturation, self->_brightness];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXMVisionColor *)self isEqualToAXMVisionColor:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAXMVisionColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy && self->_red == colorCopy[8] && self->_green == colorCopy[9] && self->_blue == colorCopy[10];

  return v5;
}

- (AXMVisionColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AXMVisionColor *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"red"];
    v7 = v6;
    if (v6)
    {
      v5->_red = [v6 unsignedCharValue];
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"green"];

    if (v8)
    {
      v5->_green = [v8 unsignedCharValue];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blue"];

    if (v9)
    {
      v5->_blue = [v9 unsignedCharValue];
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hue"];

    if (v10)
    {
      v5->_hue = [v10 unsignedCharValue];
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saturation"];

    if (v11)
    {
      v5->_saturation = [v11 unsignedCharValue];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brightness"];

    if (v12)
    {
      v5->_brightness = [v12 unsignedCharValue];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  red = self->_red;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedChar:red];
  [coderCopy encodeObject:v7 forKey:@"red"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_green];
  [coderCopy encodeObject:v8 forKey:@"green"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_blue];
  [coderCopy encodeObject:v9 forKey:@"blue"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_hue];
  [coderCopy encodeObject:v10 forKey:@"hue"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_saturation];
  [coderCopy encodeObject:v11 forKey:@"saturation"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_brightness];
  [coderCopy encodeObject:v12 forKey:@"brightness"];
}

- (void)_getHue:(char *)hue saturation:(char *)saturation brightness:(char *)brightness
{
  v12 = 0.0;
  v13 = 0.0;
  v11 = 0.0;
  v5.i8[0] = self->_red;
  *v5.i64 = v5.u64[0] / 255.0;
  v6.i8[0] = self->_green;
  *v6.i64 = v6.u64[0] / 255.0;
  LOBYTE(v7) = self->_blue;
  _AXMRGBToHSB(&v13, &v12, &v11, v5, v6, v7 / 255.0);
  *hue = (v13 * 255.0);
  *saturation = (v12 * 255.0);
  *brightness = (v11 * 255.0);
}

- (void)_getRed:(char *)red green:(char *)green blue:(char *)blue
{
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  v5.i8[0] = self->_hue;
  *v5.i64 = v5.u64[0] / 255.0;
  LOBYTE(v6) = self->_saturation;
  LOBYTE(v7) = self->_brightness;
  _AXMHSBToRGB(&v14, &v13, &v12, v5, v6 / 255.0, v7 / 255.0, v8);
  *red = (v14 * 255.0);
  *green = (v13 * 255.0);
  *blue = (v12 * 255.0);
}

- (double)euclidianDistanceHSV:(id)v
{
  vCopy = v;
  [(AXMVisionColor *)self saturationFloat];
  v6 = v5;
  [(AXMVisionColor *)self hueRadians];
  v8 = v6 * cos(v7);
  [(AXMVisionColor *)self saturationFloat];
  v10 = v9;
  [(AXMVisionColor *)self hueRadians];
  v12 = v10 * sin(v11);
  [vCopy saturationFloat];
  v14 = v13;
  [vCopy hueRadians];
  v16 = v14 * cos(v15);
  [vCopy saturationFloat];
  v18 = v17;
  [vCopy hueRadians];
  v20 = v8 - v16;
  v21 = v12 - v18 * sin(v19);
  [(AXMVisionColor *)self brightnessFloat];
  v23 = v22;
  [vCopy brightnessFloat];
  v25 = v24;

  return sqrt(v21 * v21 + v20 * v20 + (v23 - v25) * (v23 - v25));
}

- (double)euclidianDistanceHS:(id)s
{
  sCopy = s;
  [(AXMVisionColor *)self saturationFloat];
  v6 = v5;
  [(AXMVisionColor *)self hueRadians];
  v8 = v6 * cos(v7);
  [(AXMVisionColor *)self saturationFloat];
  v10 = v9;
  [(AXMVisionColor *)self hueRadians];
  v12 = v10 * sin(v11);
  [sCopy saturationFloat];
  v14 = v13;
  [sCopy hueRadians];
  v16 = v14 * cos(v15);
  [sCopy saturationFloat];
  v18 = v17;
  [sCopy hueRadians];
  v20 = v19;

  v21 = sin(v20);
  return sqrt((v12 - v18 * v21) * (v12 - v18 * v21) + (v8 - v16) * (v8 - v16));
}

@end