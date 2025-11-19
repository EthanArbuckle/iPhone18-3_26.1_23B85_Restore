@interface CTPrivateNetworkCapabilities
- (CTPrivateNetworkCapabilities)init;
- (CTPrivateNetworkCapabilities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPrivateNetworkCapabilities

- (CTPrivateNetworkCapabilities)init
{
  v3.receiver = self;
  v3.super_class = CTPrivateNetworkCapabilities;
  return [(CTPrivateNetworkCapabilities *)&v3 init];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isPrivateNetworkSIM=%d", -[CTPrivateNetworkCapabilities isPrivateNetworkSIM](self, "isPrivateNetworkSIM")];
  [v3 appendFormat:@", isPrivateNetworkPreferredOverWifi=%d", -[CTPrivateNetworkCapabilities isPrivateNetworkPreferredOverWifi](self, "isPrivateNetworkPreferredOverWifi")];
  [v3 appendFormat:@", isPrivateNetworkModeEnabled=%d", -[CTPrivateNetworkCapabilities isPrivateNetworkModeEnabled](self, "isPrivateNetworkModeEnabled")];
  [v3 appendFormat:@", hideDataRoaming=%d", -[CTPrivateNetworkCapabilities hideDataRoaming](self, "hideDataRoaming")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsPrivateNetworkSIM:{-[CTPrivateNetworkCapabilities isPrivateNetworkSIM](self, "isPrivateNetworkSIM")}];
  [v4 setIsPrivateNetworkPreferredOverWifi:{-[CTPrivateNetworkCapabilities isPrivateNetworkPreferredOverWifi](self, "isPrivateNetworkPreferredOverWifi")}];
  [v4 setIsPrivateNetworkModeEnabled:{-[CTPrivateNetworkCapabilities isPrivateNetworkModeEnabled](self, "isPrivateNetworkModeEnabled")}];
  [v4 setHideDataRoaming:{-[CTPrivateNetworkCapabilities hideDataRoaming](self, "hideDataRoaming")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTPrivateNetworkCapabilities isPrivateNetworkSIM](self forKey:{"isPrivateNetworkSIM"), @"isPrivateNetworkSIM"}];
  [v4 encodeBool:-[CTPrivateNetworkCapabilities isPrivateNetworkPreferredOverWifi](self forKey:{"isPrivateNetworkPreferredOverWifi"), @"isPrivateNetworkPreferredOverWifi"}];
  [v4 encodeBool:-[CTPrivateNetworkCapabilities isPrivateNetworkModeEnabled](self forKey:{"isPrivateNetworkModeEnabled"), @"isPrivateNetworkModeEnabled"}];
  [v4 encodeBool:-[CTPrivateNetworkCapabilities hideDataRoaming](self forKey:{"hideDataRoaming"), @"hideDataRoaming"}];
}

- (CTPrivateNetworkCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTPrivateNetworkCapabilities;
  v5 = [(CTPrivateNetworkCapabilities *)&v7 init];
  if (v5)
  {
    v5->_isPrivateNetworkSIM = [v4 decodeBoolForKey:@"isPrivateNetworkSIM"];
    v5->_isPrivateNetworkPreferredOverWifi = [v4 decodeBoolForKey:@"isPrivateNetworkPreferredOverWifi"];
    v5->_isPrivateNetworkModeEnabled = [v4 decodeBoolForKey:@"isPrivateNetworkModeEnabled"];
    v5->_hideDataRoaming = [v4 decodeBoolForKey:@"hideDataRoaming"];
  }

  return v5;
}

@end