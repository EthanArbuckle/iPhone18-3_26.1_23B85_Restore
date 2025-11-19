@interface FPTag
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTag:(id)a3;
- (FPTag)initWithCoder:(id)a3;
- (FPTag)initWithLabel:(id)a3 color:(int)a4;
- (int64_t)localizedStandardCompare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPTag

- (FPTag)initWithLabel:(id)a3 color:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FPTag;
  v8 = [(FPTag *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_label, a3);
    v9->_color = a4;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FPTag *)self label];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FPTag *)self isEqualToTag:v4];
  }

  return v5;
}

- (FPTag)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FPTag;
  v5 = [(FPTag *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_color = [v4 decodeIntForKey:@"_color"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"_label"];
  [v5 encodeInt:self->_color forKey:@"_color"];
}

- (BOOL)isEqualToTag:(id)a3
{
  v4 = a3;
  v5 = [(FPTag *)self label];
  v6 = [v4 label];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (int64_t)localizedStandardCompare:(id)a3
{
  v4 = a3;
  v5 = [(FPTag *)self label];
  v6 = [v4 label];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

@end