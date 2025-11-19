@interface GCColor
- (GCColor)initWithCoder:(id)a3;
- (GCColor)initWithColorPreset:(int64_t)a3;
- (GCColor)initWithRed:(float)red green:(float)green blue:(float)blue;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCColor

- (GCColor)initWithRed:(float)red green:(float)green blue:(float)blue
{
  v9.receiver = self;
  v9.super_class = GCColor;
  result = [(GCColor *)&v9 init];
  if (result)
  {
    result->_red = red;
    result->_green = green;
    result->_blue = blue;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  red = self->_red;
  v8 = a3;
  *&v5 = red;
  [v8 encodeFloat:@"red" forKey:v5];
  *&v6 = self->_green;
  [v8 encodeFloat:@"green" forKey:v6];
  *&v7 = self->_blue;
  [v8 encodeFloat:@"blue" forKey:v7];
}

- (GCColor)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GCColor;
  v5 = [(GCColor *)&v10 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"red"];
    v5->_red = v6;
    [v4 decodeFloatForKey:@"green"];
    v5->_green = v7;
    [v4 decodeFloatForKey:@"blue"];
    v5->_blue = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 2) = LODWORD(self->_red);
    *(result + 3) = LODWORD(self->_green);
    *(result + 4) = LODWORD(self->_blue);
  }

  return result;
}

- (GCColor)initWithColorPreset:(int64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 == 2)
    {
      LODWORD(v3) = 1056997505;
      LODWORD(v4) = 1017159841;
      LODWORD(v5) = 1017159841;
      goto LABEL_15;
    }

    if (a3 != 3)
    {
LABEL_14:
      LODWORD(v3) = 1056997505;
      LODWORD(v4) = 1040220289;
      LODWORD(v5) = 1017159841;
      goto LABEL_15;
    }

    LODWORD(v4) = 1056997505;
    LODWORD(v3) = 1017159841;
LABEL_12:
    LODWORD(v5) = LODWORD(v3);
    goto LABEL_15;
  }

  if (a3 == 4)
  {
    LODWORD(v3) = 1017159841;
    LODWORD(v5) = 1056997505;
    goto LABEL_10;
  }

  if (a3 == 5)
  {
    LODWORD(v4) = 1017159841;
    LODWORD(v3) = 1056997505;
    goto LABEL_12;
  }

  if (a3 != 6)
  {
    goto LABEL_14;
  }

  LODWORD(v3) = 1056997505;
  LODWORD(v5) = 1017159841;
LABEL_10:
  LODWORD(v4) = LODWORD(v3);
LABEL_15:
  v6 = [(GCColor *)self initWithRed:v3 green:v4 blue:v5];

  return v6;
}

@end