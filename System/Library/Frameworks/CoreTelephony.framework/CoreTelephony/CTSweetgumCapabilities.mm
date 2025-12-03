@interface CTSweetgumCapabilities
- (BOOL)isEqual:(id)equal;
- (CTSweetgumCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSweetgumCapabilities

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" supportsServices=%d", -[CTSweetgumCapabilities supportsServices](self, "supportsServices")];
  [v3 appendFormat:@" supportsUsage=%d", -[CTSweetgumCapabilities supportsUsage](self, "supportsUsage")];
  [v3 appendFormat:@" supportsPlans=%d", -[CTSweetgumCapabilities supportsPlans](self, "supportsPlans")];
  [v3 appendFormat:@" supportsApplications=%d", -[CTSweetgumCapabilities supportsApplications](self, "supportsApplications")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTSweetgumCapabilities *)self supportsServices], v5 == [(CTSweetgumCapabilities *)equalCopy supportsServices]) && (v6 = [(CTSweetgumCapabilities *)self supportsUsage], v6 == [(CTSweetgumCapabilities *)equalCopy supportsUsage]) && (v7 = [(CTSweetgumCapabilities *)self supportsPlans], v7 == [(CTSweetgumCapabilities *)equalCopy supportsPlans]))
    {
      supportsApplications = [(CTSweetgumCapabilities *)self supportsApplications];
      v8 = supportsApplications ^ [(CTSweetgumCapabilities *)equalCopy supportsApplications]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSupportsServices:{-[CTSweetgumCapabilities supportsServices](self, "supportsServices")}];
  [v4 setSupportsUsage:{-[CTSweetgumCapabilities supportsUsage](self, "supportsUsage")}];
  [v4 setSupportsPlans:{-[CTSweetgumCapabilities supportsPlans](self, "supportsPlans")}];
  [v4 setSupportsApplications:{-[CTSweetgumCapabilities supportsApplications](self, "supportsApplications")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  supportsServices = self->_supportsServices;
  coderCopy = coder;
  [coderCopy encodeBool:supportsServices forKey:@"services"];
  [coderCopy encodeBool:self->_supportsUsage forKey:@"usage"];
  [coderCopy encodeBool:self->_supportsPlans forKey:@"plans"];
  [coderCopy encodeBool:self->_supportsApplications forKey:@"applications"];
}

- (CTSweetgumCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTSweetgumCapabilities;
  v5 = [(CTSweetgumCapabilities *)&v7 init];
  if (v5)
  {
    v5->_supportsServices = [coderCopy decodeBoolForKey:@"services"];
    v5->_supportsUsage = [coderCopy decodeBoolForKey:@"usage"];
    v5->_supportsPlans = [coderCopy decodeBoolForKey:@"plans"];
    v5->_supportsApplications = [coderCopy decodeBoolForKey:@"applications"];
  }

  return v5;
}

@end