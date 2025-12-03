@interface CTBootstrapState
- (BOOL)isEqual:(id)equal;
- (CTBootstrapState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTBootstrapState

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  bootstrapStatus = [(CTBootstrapState *)self bootstrapStatus];
  if (bootstrapStatus > 2)
  {
    v5 = "??";
  }

  else
  {
    v5 = off_1E6A44850[bootstrapStatus];
  }

  [v3 appendFormat:@", bootstrapStatus=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setBootstrapStatus:{-[CTBootstrapState bootstrapStatus](self, "bootstrapStatus")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bootstrapStatus = self->_bootstrapStatus;
      v6 = bootstrapStatus == [(CTBootstrapState *)equalCopy bootstrapStatus];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTBootstrapState bootstrapStatus](self forKey:{"bootstrapStatus"), @"bootsrtap_state"}];
}

- (CTBootstrapState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTBootstrapState;
  v5 = [(CTBootstrapState *)&v7 init];
  if (v5)
  {
    v5->_bootstrapStatus = [coderCopy decodeIntegerForKey:@"bootsrtap_state"];
  }

  return v5;
}

@end