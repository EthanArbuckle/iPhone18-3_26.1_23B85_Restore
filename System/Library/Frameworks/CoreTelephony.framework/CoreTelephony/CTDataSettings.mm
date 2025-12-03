@interface CTDataSettings
- (CTDataSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTDataSettings

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", cellularDataEnabled=%d", -[CTDataSettings isCellularDataEnabled](self, "isCellularDataEnabled")];
  [v3 appendFormat:@", airplaneModeEnabled=%d", -[CTDataSettings isAirplaneModeEnabled](self, "isAirplaneModeEnabled")];
  [v3 appendFormat:@", cellularDataCapable=%d", -[CTDataSettings isCellularDataCapable](self, "isCellularDataCapable")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCellularDataEnabled:{-[CTDataSettings isCellularDataEnabled](self, "isCellularDataEnabled")}];
  [v4 setAirplaneModeEnabled:{-[CTDataSettings isAirplaneModeEnabled](self, "isAirplaneModeEnabled")}];
  [v4 setCellularDataCapable:{-[CTDataSettings isCellularDataCapable](self, "isCellularDataCapable")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTDataSettings isCellularDataEnabled](self forKey:{"isCellularDataEnabled"), @"cellularDataEnabled"}];
  [coderCopy encodeBool:-[CTDataSettings isAirplaneModeEnabled](self forKey:{"isAirplaneModeEnabled"), @"airplaneModeEnabled"}];
  [coderCopy encodeBool:-[CTDataSettings isCellularDataCapable](self forKey:{"isCellularDataCapable"), @"cellularDataCapable"}];
}

- (CTDataSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTDataSettings;
  v5 = [(CTDataSettings *)&v7 init];
  if (v5)
  {
    -[CTDataSettings setCellularDataEnabled:](v5, "setCellularDataEnabled:", [coderCopy decodeBoolForKey:@"cellularDataEnabled"]);
    -[CTDataSettings setAirplaneModeEnabled:](v5, "setAirplaneModeEnabled:", [coderCopy decodeBoolForKey:@"airplaneModeEnabled"]);
    -[CTDataSettings setCellularDataCapable:](v5, "setCellularDataCapable:", [coderCopy decodeBoolForKey:@"cellularDataCapable"]);
  }

  return v5;
}

@end