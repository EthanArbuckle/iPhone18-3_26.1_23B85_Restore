@interface CTDataSettings
- (CTDataSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCellularDataEnabled:{-[CTDataSettings isCellularDataEnabled](self, "isCellularDataEnabled")}];
  [v4 setAirplaneModeEnabled:{-[CTDataSettings isAirplaneModeEnabled](self, "isAirplaneModeEnabled")}];
  [v4 setCellularDataCapable:{-[CTDataSettings isCellularDataCapable](self, "isCellularDataCapable")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTDataSettings isCellularDataEnabled](self forKey:{"isCellularDataEnabled"), @"cellularDataEnabled"}];
  [v4 encodeBool:-[CTDataSettings isAirplaneModeEnabled](self forKey:{"isAirplaneModeEnabled"), @"airplaneModeEnabled"}];
  [v4 encodeBool:-[CTDataSettings isCellularDataCapable](self forKey:{"isCellularDataCapable"), @"cellularDataCapable"}];
}

- (CTDataSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTDataSettings;
  v5 = [(CTDataSettings *)&v7 init];
  if (v5)
  {
    -[CTDataSettings setCellularDataEnabled:](v5, "setCellularDataEnabled:", [v4 decodeBoolForKey:@"cellularDataEnabled"]);
    -[CTDataSettings setAirplaneModeEnabled:](v5, "setAirplaneModeEnabled:", [v4 decodeBoolForKey:@"airplaneModeEnabled"]);
    -[CTDataSettings setCellularDataCapable:](v5, "setCellularDataCapable:", [v4 decodeBoolForKey:@"cellularDataCapable"]);
  }

  return v5;
}

@end