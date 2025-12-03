@interface CTDataConnectionAvailabilityStatus
- (CTDataConnectionAvailabilityStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAvailable:{-[CTDataConnectionAvailabilityStatus available](self, "available")}];
  [v4 setCsiError:{-[CTDataConnectionAvailabilityStatus csiError](self, "csiError")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTDataConnectionAvailabilityStatus available](self forKey:{"available"), @"available"}];
  [coderCopy encodeInt:-[CTDataConnectionAvailabilityStatus csiError](self forKey:{"csiError"), @"error"}];
}

- (CTDataConnectionAvailabilityStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTDataConnectionAvailabilityStatus;
  v5 = [(CTDataConnectionAvailabilityStatus *)&v7 init];
  if (v5)
  {
    v5->_available = [coderCopy decodeBoolForKey:@"available"];
    v5->_csiError = [coderCopy decodeIntForKey:@"error"];
  }

  return v5;
}

@end