@interface _MFNSShadow
- (_MFNSShadow)initWithCoder:(id)coder;
- (_MFNSShadow)initWithShadow:(id)shadow;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MFNSShadow

- (_MFNSShadow)initWithShadow:(id)shadow
{
  shadowCopy = shadow;
  v9.receiver = self;
  v9.super_class = _MFNSShadow;
  v6 = [(_MFNSShadow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shadow, shadow);
  }

  return v7;
}

- (_MFNSShadow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _MFNSShadow;
  v5 = [(_MFNSShadow *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    shadow = v5->_shadow;
    v5->_shadow = v6;

    [coderCopy decodeCGSizeForKey:@"offset"];
    [(NSShadow *)v5->_shadow setShadowOffset:?];
    [coderCopy decodeDoubleForKey:@"blurRadius"];
    [(NSShadow *)v5->_shadow setShadowBlurRadius:?];
    if ([coderCopy containsValueForKey:@"color"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
      [(NSShadow *)v5->_shadow setShadowColor:v8];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(NSShadow *)self->_shadow shadowOffset];
  [coderCopy encodeCGSize:@"offset" forKey:?];
  [(NSShadow *)self->_shadow shadowBlurRadius];
  [coderCopy encodeDouble:@"blurRadius" forKey:?];
  shadowColor = [(NSShadow *)self->_shadow shadowColor];

  if (shadowColor)
  {
    shadowColor2 = [(NSShadow *)self->_shadow shadowColor];
    [coderCopy encodeObject:shadowColor2 forKey:@"color"];
  }
}

@end