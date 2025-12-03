@interface PKExternalElement
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (PKExternalElement)initWithIdentifier:(id)identifier path:(CGPath *)path;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PKExternalElement

- (PKExternalElement)initWithIdentifier:(id)identifier path:(CGPath *)path
{
  identifierCopy = identifier;
  v8 = [(PKExternalElement *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_path = MEMORY[0x1CCA6DFB0](path);
    v9->_boundingBox = CGPathGetBoundingBox(path);
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
  identifier = [(PKExternalElement *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(PKExternalElement *)self identifier];
      identifier2 = [(PKExternalElement *)equalCopy identifier];
      v7 = [identifier isEqual:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end