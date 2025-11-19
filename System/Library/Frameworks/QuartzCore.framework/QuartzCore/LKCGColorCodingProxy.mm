@interface LKCGColorCodingProxy
- (LKCGColorCodingProxy)initWithCoder:(id)a3;
- (LKCGColorCodingProxy)initWithObject:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LKCGColorCodingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = LKCGColorCodingProxy;
  [(LKCGColorCodingProxy *)&v3 dealloc];
}

- (LKCGColorCodingProxy)initWithCoder:(id)a3
{
  components[4] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = LKCGColorCodingProxy;
  v4 = [(LKCGColorCodingProxy *)&v15 init];
  if (v4)
  {
    v5 = [a3 CA_decodeObjectForKey:@"CGColorPattern"];
    if (!v5)
    {
      [a3 decodeFloatForKey:@"r"];
      components[0] = v9;
      [a3 decodeFloatForKey:@"g"];
      components[1] = v10;
      [a3 decodeFloatForKey:@"b"];
      components[2] = v11;
      [a3 decodeFloatForKey:@"a"];
      components[3] = v12;
      v13 = CAGetColorSpace(35);
      v8 = CGColorCreate(v13, components);
      goto LABEL_6;
    }

    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CGPatternGetTypeID())
    {
      v8 = CA_CGPatternColorCreate(v6);
LABEL_6:
      v4->_color = v8;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  Pattern = CGColorGetPattern(self->_color);
  if (Pattern)
  {

    [a3 CA_encodeObject:Pattern forKey:@"CGColorPattern" conditional:0];
  }

  else
  {
    Components = CGColorGetComponents(self->_color);
    v7 = *Components;
    *&v7 = *Components;
    [a3 encodeFloat:@"r" forKey:v7];
    v8 = Components[1];
    *&v8 = v8;
    [a3 encodeFloat:@"g" forKey:v8];
    v9 = Components[2];
    *&v9 = v9;
    [a3 encodeFloat:@"b" forKey:v9];
    v10 = Components[3];
    *&v10 = v10;

    [a3 encodeFloat:@"a" forKey:v10];
  }
}

- (LKCGColorCodingProxy)initWithObject:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = LKCGColorCodingProxy;
  v4 = [(LKCGColorCodingProxy *)&v8 init];
  if (v4)
  {
    if (!CGColorGetPattern(a3))
    {
      v7 = CAGetColorSpace(35);
      CARetainColorTransform(v7);
      v4->_color = CGColorTransformConvertColor();
      CGColorTransformRelease();
      if (v4->_color)
      {
        return v4;
      }

      goto LABEL_4;
    }

    v5 = CGColorRetain(a3);
    v4->_color = v5;
    if (!v5)
    {
LABEL_4:

      return 0;
    }
  }

  return v4;
}

@end