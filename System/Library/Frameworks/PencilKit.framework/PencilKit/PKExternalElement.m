@interface PKExternalElement
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingBox;
- (PKExternalElement)initWithIdentifier:(id)a3 path:(CGPath *)a4;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PKExternalElement

- (PKExternalElement)initWithIdentifier:(id)a3 path:(CGPath *)a4
{
  v7 = a3;
  v8 = [(PKExternalElement *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_path = MEMORY[0x1CCA6DFB0](a4);
    v9->_boundingBox = CGPathGetBoundingBox(a4);
  }

  return v9;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = PKExternalElement;
  [(PKExternalElement *)&v3 dealloc];
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unint64_t)hash
{
  v2 = [(PKExternalElement *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKExternalElement *)self identifier];
      v6 = [(PKExternalElement *)v4 identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end