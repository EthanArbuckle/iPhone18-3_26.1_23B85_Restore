@interface FPTag
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTag:(id)tag;
- (FPTag)initWithCoder:(id)coder;
- (FPTag)initWithLabel:(id)label color:(int)color;
- (int64_t)localizedStandardCompare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPTag

- (FPTag)initWithLabel:(id)label color:(int)color
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = FPTag;
  v8 = [(FPTag *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_label, label);
    v9->_color = color;
  }

  return v9;
}

- (unint64_t)hash
{
  label = [(FPTag *)self label];
  v3 = [label hash];

  return v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FPTag *)self isEqualToTag:equalCopy];
  }

  return v5;
}

- (FPTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FPTag;
  v5 = [(FPTag *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_color = [coderCopy decodeIntForKey:@"_color"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  [coderCopy encodeObject:label forKey:@"_label"];
  [coderCopy encodeInt:self->_color forKey:@"_color"];
}

- (BOOL)isEqualToTag:(id)tag
{
  tagCopy = tag;
  label = [(FPTag *)self label];
  label2 = [tagCopy label];

  LOBYTE(tagCopy) = [label isEqualToString:label2];
  return tagCopy;
}

- (int64_t)localizedStandardCompare:(id)compare
{
  compareCopy = compare;
  label = [(FPTag *)self label];
  label2 = [compareCopy label];

  v7 = [label localizedStandardCompare:label2];
  return v7;
}

@end