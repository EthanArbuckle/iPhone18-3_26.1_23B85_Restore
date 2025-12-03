@interface LSSliceInfo
- (BOOL)isEqual:(id)equal;
- (LSSliceInfo)initWithCoder:(id)coder;
- (LSSliceInfo)initWithType:(int)type subtype:(int)subtype;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSSliceInfo

- (LSSliceInfo)initWithType:(int)type subtype:(int)subtype
{
  v7.receiver = self;
  v7.super_class = LSSliceInfo;
  result = [(LSSliceInfo *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_subtype = subtype;
  }

  return result;
}

- (LSSliceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = LSSliceInfo;
  v5 = [(LSSliceInfo *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"type"];
    v5->_subtype = [coderCopy decodeInt64ForKey:@"subtype"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_type forKey:@"type"];
  [coderCopy encodeInt64:self->_subtype forKey:@"subtype"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[LSSliceInfo type](self, "type"), v5 == [equalCopy type]))
  {
    subtype = [(LSSliceInfo *)self subtype];
    v7 = subtype == [equalCopy subtype];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end