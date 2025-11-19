@interface CTSweetgumCapabilities
- (BOOL)isEqual:(id)a3;
- (CTSweetgumCapabilities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTSweetgumCapabilities *)self supportsServices], v5 == [(CTSweetgumCapabilities *)v4 supportsServices]) && (v6 = [(CTSweetgumCapabilities *)self supportsUsage], v6 == [(CTSweetgumCapabilities *)v4 supportsUsage]) && (v7 = [(CTSweetgumCapabilities *)self supportsPlans], v7 == [(CTSweetgumCapabilities *)v4 supportsPlans]))
    {
      v10 = [(CTSweetgumCapabilities *)self supportsApplications];
      v8 = v10 ^ [(CTSweetgumCapabilities *)v4 supportsApplications]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSupportsServices:{-[CTSweetgumCapabilities supportsServices](self, "supportsServices")}];
  [v4 setSupportsUsage:{-[CTSweetgumCapabilities supportsUsage](self, "supportsUsage")}];
  [v4 setSupportsPlans:{-[CTSweetgumCapabilities supportsPlans](self, "supportsPlans")}];
  [v4 setSupportsApplications:{-[CTSweetgumCapabilities supportsApplications](self, "supportsApplications")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  supportsServices = self->_supportsServices;
  v5 = a3;
  [v5 encodeBool:supportsServices forKey:@"services"];
  [v5 encodeBool:self->_supportsUsage forKey:@"usage"];
  [v5 encodeBool:self->_supportsPlans forKey:@"plans"];
  [v5 encodeBool:self->_supportsApplications forKey:@"applications"];
}

- (CTSweetgumCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTSweetgumCapabilities;
  v5 = [(CTSweetgumCapabilities *)&v7 init];
  if (v5)
  {
    v5->_supportsServices = [v4 decodeBoolForKey:@"services"];
    v5->_supportsUsage = [v4 decodeBoolForKey:@"usage"];
    v5->_supportsPlans = [v4 decodeBoolForKey:@"plans"];
    v5->_supportsApplications = [v4 decodeBoolForKey:@"applications"];
  }

  return v5;
}

@end