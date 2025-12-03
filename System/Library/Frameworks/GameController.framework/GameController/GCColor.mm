@interface GCColor
- (GCColor)initWithCoder:(id)coder;
- (GCColor)initWithColorPreset:(int64_t)preset;
- (GCColor)initWithRed:(float)red green:(float)green blue:(float)blue;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  red = self->_red;
  coderCopy = coder;
  *&v5 = red;
  [coderCopy encodeFloat:@"red" forKey:v5];
  *&v6 = self->_green;
  [coderCopy encodeFloat:@"green" forKey:v6];
  *&v7 = self->_blue;
  [coderCopy encodeFloat:@"blue" forKey:v7];
}

- (GCColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GCColor;
  v5 = [(GCColor *)&v10 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"red"];
    v5->_red = v6;
    [coderCopy decodeFloatForKey:@"green"];
    v5->_green = v7;
    [coderCopy decodeFloatForKey:@"blue"];
    v5->_blue = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 2) = LODWORD(self->_red);
    *(result + 3) = LODWORD(self->_green);
    *(result + 4) = LODWORD(self->_blue);
  }

  return result;
}

- (GCColor)initWithColorPreset:(int64_t)preset
{
  if (preset <= 3)
  {
    if (preset == 2)
    {
      LODWORD(v3) = 1056997505;
      LODWORD(v4) = 1017159841;
      LODWORD(v5) = 1017159841;
      goto LABEL_15;
    }

    if (preset != 3)
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

  if (preset == 4)
  {
    LODWORD(v3) = 1017159841;
    LODWORD(v5) = 1056997505;
    goto LABEL_10;
  }

  if (preset == 5)
  {
    LODWORD(v4) = 1017159841;
    LODWORD(v3) = 1056997505;
    goto LABEL_12;
  }

  if (preset != 6)
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