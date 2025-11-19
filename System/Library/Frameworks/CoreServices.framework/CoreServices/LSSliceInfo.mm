@interface LSSliceInfo
- (BOOL)isEqual:(id)a3;
- (LSSliceInfo)initWithCoder:(id)a3;
- (LSSliceInfo)initWithType:(int)a3 subtype:(int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSSliceInfo

- (LSSliceInfo)initWithType:(int)a3 subtype:(int)a4
{
  v7.receiver = self;
  v7.super_class = LSSliceInfo;
  result = [(LSSliceInfo *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_subtype = a4;
  }

  return result;
}

- (LSSliceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LSSliceInfo;
  v5 = [(LSSliceInfo *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"type"];
    v5->_subtype = [v4 decodeInt64ForKey:@"subtype"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_type forKey:@"type"];
  [v4 encodeInt64:self->_subtype forKey:@"subtype"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[LSSliceInfo type](self, "type"), v5 == [v4 type]))
  {
    v6 = [(LSSliceInfo *)self subtype];
    v7 = v6 == [v4 subtype];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end