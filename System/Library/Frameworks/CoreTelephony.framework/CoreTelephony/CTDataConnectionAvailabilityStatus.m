@interface CTDataConnectionAvailabilityStatus
- (CTDataConnectionAvailabilityStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTDataConnectionAvailabilityStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", available=%d", -[CTDataConnectionAvailabilityStatus available](self, "available")];
  [v3 appendFormat:@", error=%d", -[CTDataConnectionAvailabilityStatus csiError](self, "csiError")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAvailable:{-[CTDataConnectionAvailabilityStatus available](self, "available")}];
  [v4 setCsiError:{-[CTDataConnectionAvailabilityStatus csiError](self, "csiError")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTDataConnectionAvailabilityStatus available](self forKey:{"available"), @"available"}];
  [v4 encodeInt:-[CTDataConnectionAvailabilityStatus csiError](self forKey:{"csiError"), @"error"}];
}

- (CTDataConnectionAvailabilityStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTDataConnectionAvailabilityStatus;
  v5 = [(CTDataConnectionAvailabilityStatus *)&v7 init];
  if (v5)
  {
    v5->_available = [v4 decodeBoolForKey:@"available"];
    v5->_csiError = [v4 decodeIntForKey:@"error"];
  }

  return v5;
}

@end