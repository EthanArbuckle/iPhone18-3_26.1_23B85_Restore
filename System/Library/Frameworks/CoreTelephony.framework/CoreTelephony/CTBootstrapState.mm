@interface CTBootstrapState
- (BOOL)isEqual:(id)a3;
- (CTBootstrapState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTBootstrapState

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTBootstrapState *)self bootstrapStatus];
  if (v4 > 2)
  {
    v5 = "??";
  }

  else
  {
    v5 = off_1E6A44850[v4];
  }

  [v3 appendFormat:@", bootstrapStatus=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setBootstrapStatus:{-[CTBootstrapState bootstrapStatus](self, "bootstrapStatus")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bootstrapStatus = self->_bootstrapStatus;
      v6 = bootstrapStatus == [(CTBootstrapState *)v4 bootstrapStatus];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTBootstrapState bootstrapStatus](self forKey:{"bootstrapStatus"), @"bootsrtap_state"}];
}

- (CTBootstrapState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTBootstrapState;
  v5 = [(CTBootstrapState *)&v7 init];
  if (v5)
  {
    v5->_bootstrapStatus = [v4 decodeIntegerForKey:@"bootsrtap_state"];
  }

  return v5;
}

@end