@interface AXMVisionColor
+ (id)colorWithHue:(unsigned __int8)a3 saturation:(unsigned __int8)a4 brightness:(unsigned __int8)a5;
+ (id)colorWithRed:(unsigned __int8)a3 green:(unsigned __int8)a4 blue:(unsigned __int8)a5;
- (AXMVisionColor)init;
- (AXMVisionColor)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAXMVisionColor:(id)a3;
- (double)euclidianDistanceHS:(id)a3;
- (double)euclidianDistanceHSV:(id)a3;
- (id)description;
- (void)_getHue:(char *)a3 saturation:(char *)a4 brightness:(char *)a5;
- (void)_getRed:(char *)a3 green:(char *)a4 blue:(char *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionColor

+ (id)colorWithRed:(unsigned __int8)a3 green:(unsigned __int8)a4 blue:(unsigned __int8)a5
{
  v8 = objc_alloc_init(a1);
  v8[8] = a3;
  v8[9] = a4;
  v8[10] = a5;
  [v8 _getHue:v8 + 11 saturation:v8 + 12 brightness:v8 + 13];

  return v8;
}

+ (id)colorWithHue:(unsigned __int8)a3 saturation:(unsigned __int8)a4 brightness:(unsigned __int8)a5
{
  v8 = objc_alloc_init(a1);
  v8[11] = a3;
  v8[12] = a4;
  v8[13] = a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXMVisionColor *)self isEqualToAXMVisionColor:v4];
  }

  return v5;
}

- (BOOL)isEqualToAXMVisionColor:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_red == v4[8] && self->_green == v4[9] && self->_blue == v4[10];

  return v5;
}

- (AXMVisionColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionColor *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"red"];
    v7 = v6;
    if (v6)
    {
      v5->_red = [v6 unsignedCharValue];
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"green"];

    if (v8)
    {
      v5->_green = [v8 unsignedCharValue];
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blue"];

    if (v9)
    {
      v5->_blue = [v9 unsignedCharValue];
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hue"];

    if (v10)
    {
      v5->_hue = [v10 unsignedCharValue];
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saturation"];

    if (v11)
    {
      v5->_saturation = [v11 unsignedCharValue];
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brightness"];

    if (v12)
    {
      v5->_brightness = [v12 unsignedCharValue];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  red = self->_red;
  v6 = a3;
  v7 = [v4 numberWithUnsignedChar:red];
  [v6 encodeObject:v7 forKey:@"red"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_green];
  [v6 encodeObject:v8 forKey:@"green"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_blue];
  [v6 encodeObject:v9 forKey:@"blue"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_hue];
  [v6 encodeObject:v10 forKey:@"hue"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_saturation];
  [v6 encodeObject:v11 forKey:@"saturation"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_brightness];
  [v6 encodeObject:v12 forKey:@"brightness"];
}

- (void)_getHue:(char *)a3 saturation:(char *)a4 brightness:(char *)a5
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
  *a3 = (v13 * 255.0);
  *a4 = (v12 * 255.0);
  *a5 = (v11 * 255.0);
}

- (void)_getRed:(char *)a3 green:(char *)a4 blue:(char *)a5
{
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  v5.i8[0] = self->_hue;
  *v5.i64 = v5.u64[0] / 255.0;
  LOBYTE(v6) = self->_saturation;
  LOBYTE(v7) = self->_brightness;
  _AXMHSBToRGB(&v14, &v13, &v12, v5, v6 / 255.0, v7 / 255.0, v8);
  *a3 = (v14 * 255.0);
  *a4 = (v13 * 255.0);
  *a5 = (v12 * 255.0);
}

- (double)euclidianDistanceHSV:(id)a3
{
  v4 = a3;
  [(AXMVisionColor *)self saturationFloat];
  v6 = v5;
  [(AXMVisionColor *)self hueRadians];
  v8 = v6 * cos(v7);
  [(AXMVisionColor *)self saturationFloat];
  v10 = v9;
  [(AXMVisionColor *)self hueRadians];
  v12 = v10 * sin(v11);
  [v4 saturationFloat];
  v14 = v13;
  [v4 hueRadians];
  v16 = v14 * cos(v15);
  [v4 saturationFloat];
  v18 = v17;
  [v4 hueRadians];
  v20 = v8 - v16;
  v21 = v12 - v18 * sin(v19);
  [(AXMVisionColor *)self brightnessFloat];
  v23 = v22;
  [v4 brightnessFloat];
  v25 = v24;

  return sqrt(v21 * v21 + v20 * v20 + (v23 - v25) * (v23 - v25));
}

- (double)euclidianDistanceHS:(id)a3
{
  v4 = a3;
  [(AXMVisionColor *)self saturationFloat];
  v6 = v5;
  [(AXMVisionColor *)self hueRadians];
  v8 = v6 * cos(v7);
  [(AXMVisionColor *)self saturationFloat];
  v10 = v9;
  [(AXMVisionColor *)self hueRadians];
  v12 = v10 * sin(v11);
  [v4 saturationFloat];
  v14 = v13;
  [v4 hueRadians];
  v16 = v14 * cos(v15);
  [v4 saturationFloat];
  v18 = v17;
  [v4 hueRadians];
  v20 = v19;

  v21 = sin(v20);
  return sqrt((v12 - v18 * v21) * (v12 - v18 * v21) + (v8 - v16) * (v8 - v16));
}

@end