@interface _MFNSShadow
- (_MFNSShadow)initWithCoder:(id)a3;
- (_MFNSShadow)initWithShadow:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFNSShadow

- (_MFNSShadow)initWithShadow:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MFNSShadow;
  v6 = [(_MFNSShadow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shadow, a3);
  }

  return v7;
}

- (_MFNSShadow)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _MFNSShadow;
  v5 = [(_MFNSShadow *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    shadow = v5->_shadow;
    v5->_shadow = v6;

    [v4 decodeCGSizeForKey:@"offset"];
    [(NSShadow *)v5->_shadow setShadowOffset:?];
    [v4 decodeDoubleForKey:@"blurRadius"];
    [(NSShadow *)v5->_shadow setShadowBlurRadius:?];
    if ([v4 containsValueForKey:@"color"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
      [(NSShadow *)v5->_shadow setShadowColor:v8];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [(NSShadow *)self->_shadow shadowOffset];
  [v6 encodeCGSize:@"offset" forKey:?];
  [(NSShadow *)self->_shadow shadowBlurRadius];
  [v6 encodeDouble:@"blurRadius" forKey:?];
  v4 = [(NSShadow *)self->_shadow shadowColor];

  if (v4)
  {
    v5 = [(NSShadow *)self->_shadow shadowColor];
    [v6 encodeObject:v5 forKey:@"color"];
  }
}

@end