@interface CTPrivateNetworkCapabilities
- (CTPrivateNetworkCapabilities)init;
- (CTPrivateNetworkCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsPrivateNetworkSIM:{-[CTPrivateNetworkCapabilities isPrivateNetworkSIM](self, "isPrivateNetworkSIM")}];
  [v4 setIsPrivateNetworkPreferredOverWifi:{-[CTPrivateNetworkCapabilities isPrivateNetworkPreferredOverWifi](self, "isPrivateNetworkPreferredOverWifi")}];
  [v4 setIsPrivateNetworkModeEnabled:{-[CTPrivateNetworkCapabilities isPrivateNetworkModeEnabled](self, "isPrivateNetworkModeEnabled")}];
  [v4 setHideDataRoaming:{-[CTPrivateNetworkCapabilities hideDataRoaming](self, "hideDataRoaming")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTPrivateNetworkCapabilities isPrivateNetworkSIM](self forKey:{"isPrivateNetworkSIM"), @"isPrivateNetworkSIM"}];
  [coderCopy encodeBool:-[CTPrivateNetworkCapabilities isPrivateNetworkPreferredOverWifi](self forKey:{"isPrivateNetworkPreferredOverWifi"), @"isPrivateNetworkPreferredOverWifi"}];
  [coderCopy encodeBool:-[CTPrivateNetworkCapabilities isPrivateNetworkModeEnabled](self forKey:{"isPrivateNetworkModeEnabled"), @"isPrivateNetworkModeEnabled"}];
  [coderCopy encodeBool:-[CTPrivateNetworkCapabilities hideDataRoaming](self forKey:{"hideDataRoaming"), @"hideDataRoaming"}];
}

- (CTPrivateNetworkCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTPrivateNetworkCapabilities;
  v5 = [(CTPrivateNetworkCapabilities *)&v7 init];
  if (v5)
  {
    v5->_isPrivateNetworkSIM = [coderCopy decodeBoolForKey:@"isPrivateNetworkSIM"];
    v5->_isPrivateNetworkPreferredOverWifi = [coderCopy decodeBoolForKey:@"isPrivateNetworkPreferredOverWifi"];
    v5->_isPrivateNetworkModeEnabled = [coderCopy decodeBoolForKey:@"isPrivateNetworkModeEnabled"];
    v5->_hideDataRoaming = [coderCopy decodeBoolForKey:@"hideDataRoaming"];
  }

  return v5;
}

@end