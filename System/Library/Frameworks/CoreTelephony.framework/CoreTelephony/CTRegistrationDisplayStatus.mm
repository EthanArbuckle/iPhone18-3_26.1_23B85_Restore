@interface CTRegistrationDisplayStatus
- (CTRegistrationDisplayStatus)initWithCoder:(id)a3;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTRegistrationDisplayStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTRegistrationDisplayStatus *)self registrationDisplayStatus];
  [v3 appendFormat:@", registrationDisplayStatus=%@", v4];

  [v3 appendFormat:@", isInHomeCountry=%d", -[CTRegistrationDisplayStatus isInHomeCountry](self, "isInHomeCountry")];
  [v3 appendFormat:@", changedDueToSimRemoval=%d", -[CTRegistrationDisplayStatus changedDueToSimRemoval](self, "changedDueToSimRemoval")];
  [v3 appendFormat:@", isRegistrationForcedHome=%d", -[CTRegistrationDisplayStatus isRegistrationForcedHome](self, "isRegistrationForcedHome")];
  [v3 appendFormat:@", isSatelliteSystem=%d", -[CTRegistrationDisplayStatus isSatelliteSystem](self, "isSatelliteSystem")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTRegistrationDisplayStatus *)self registrationDisplayStatus];
  v6 = [v5 copy];
  [v4 setRegistrationDisplayStatus:v6];

  [v4 setIsInHomeCountry:{-[CTRegistrationDisplayStatus isInHomeCountry](self, "isInHomeCountry")}];
  [v4 setChangedDueToSimRemoval:{-[CTRegistrationDisplayStatus changedDueToSimRemoval](self, "changedDueToSimRemoval")}];
  [v4 setIsRegistrationForcedHome:{-[CTRegistrationDisplayStatus isRegistrationForcedHome](self, "isRegistrationForcedHome")}];
  [v4 setIsSatelliteSystem:{-[CTRegistrationDisplayStatus isSatelliteSystem](self, "isSatelliteSystem")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTRegistrationDisplayStatus *)self registrationDisplayStatus];
  [v5 encodeObject:v4 forKey:@"display_status"];

  [v5 encodeBool:-[CTRegistrationDisplayStatus isInHomeCountry](self forKey:{"isInHomeCountry"), @"home_country"}];
  [v5 encodeBool:-[CTRegistrationDisplayStatus changedDueToSimRemoval](self forKey:{"changedDueToSimRemoval"), @"sim_removal"}];
  [v5 encodeBool:-[CTRegistrationDisplayStatus isRegistrationForcedHome](self forKey:{"isRegistrationForcedHome"), @"forced_home"}];
  [v5 encodeBool:-[CTRegistrationDisplayStatus isSatelliteSystem](self forKey:{"isSatelliteSystem"), @"is_satellite_system"}];
}

- (CTRegistrationDisplayStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTRegistrationDisplayStatus;
  v5 = [(CTRegistrationDisplayStatus *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_status"];
    registrationDisplayStatus = v5->_registrationDisplayStatus;
    v5->_registrationDisplayStatus = v6;

    v5->_isInHomeCountry = [v4 decodeBoolForKey:@"home_country"];
    v5->_changedDueToSimRemoval = [v4 decodeBoolForKey:@"sim_removal"];
    v5->_isRegistrationForcedHome = [v4 decodeBoolForKey:@"forced_home"];
    v5->_isSatelliteSystem = [v4 decodeBoolForKey:@"is_satellite_system"];
  }

  return v5;
}

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(CTRegistrationDisplayStatus *)self ct_shortName];
  v5 = [v3 stringWithFormat:@"<%@ ", v4];

  v6 = [(CTRegistrationDisplayStatus *)self registrationDisplayStatus];
  [v5 appendFormat:@", status=%@", v6];

  [v5 appendFormat:@", homeCountry=%d", -[CTRegistrationDisplayStatus isInHomeCountry](self, "isInHomeCountry")];
  [v5 appendFormat:@", removal=%d", -[CTRegistrationDisplayStatus changedDueToSimRemoval](self, "changedDueToSimRemoval")];
  [v5 appendFormat:@", forcedHome=%d", -[CTRegistrationDisplayStatus isRegistrationForcedHome](self, "isRegistrationForcedHome")];
  [v5 appendFormat:@", satellite=%d", -[CTRegistrationDisplayStatus isSatelliteSystem](self, "isSatelliteSystem")];
  [v5 appendString:@">"];

  return v5;
}

@end