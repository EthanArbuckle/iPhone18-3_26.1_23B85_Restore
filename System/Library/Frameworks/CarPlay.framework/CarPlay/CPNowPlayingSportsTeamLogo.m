@interface CPNowPlayingSportsTeamLogo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTeamLogo:(id)a3;
- (CPNowPlayingSportsTeamLogo)initWithCoder:(id)a3;
- (CPNowPlayingSportsTeamLogo)initWithTeamInitials:(id)a3;
- (CPNowPlayingSportsTeamLogo)initWithTeamLogo:(id)a3;
- (unint64_t)hashValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPNowPlayingSportsTeamLogo

- (CPNowPlayingSportsTeamLogo)initWithTeamLogo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPNowPlayingSportsTeamLogo;
  v5 = [(CPNowPlayingSportsTeamLogo *)&v9 init];
  if (v5)
  {
    v6 = CPImageByScalingImageToSize(v4, 350.0, 350.0);
    logo = v5->_logo;
    v5->_logo = v6;
  }

  return v5;
}

- (CPNowPlayingSportsTeamLogo)initWithTeamInitials:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPNowPlayingSportsTeamLogo;
  v5 = [(CPNowPlayingSportsTeamLogo *)&v9 init];
  if (v5)
  {
    if ([v4 length] < 4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = [v4 substringToIndex:3];
    }

    initials = v5->_initials;
    v5->_initials = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsTeamLogo *)self isEqualToTeamLogo:v4];

  return v5;
}

- (BOOL)isEqualToTeamLogo:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingSportsTeamLogo *)self logo];

  if (v5)
  {
    v6 = [(CPNowPlayingSportsTeamLogo *)self logo];
    v7 = [v4 logo];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(CPNowPlayingSportsTeamLogo *)self initials];

  v10 = (v9 == 0) & v8;
  if (v9 && v8)
  {
    v11 = [(CPNowPlayingSportsTeamLogo *)self initials];
    v12 = [v4 initials];
    v10 = [v11 isEqualToString:v12];
  }

  return v10;
}

- (unint64_t)hashValue
{
  v3 = [(CPNowPlayingSportsTeamLogo *)self logo];
  v4 = [v3 hash];
  v5 = [(CPNowPlayingSportsTeamLogo *)self initials];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (CPNowPlayingSportsTeamLogo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPNowPlayingSportsTeamLogo;
  v5 = [(CPNowPlayingSportsTeamLogo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamInitialsKey"];
    initials = v5->_initials;
    v5->_initials = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamLogoImageKey"];
    logo = v5->_logo;
    v5->_logo = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingSportsTeamLogo *)self initials];
  [v4 encodeObject:v5 forKey:@"kCPNowPlayingSportsTeamInitialsKey"];

  v6 = [(CPNowPlayingSportsTeamLogo *)self logo];
  [v4 encodeObject:v6 forKey:@"kCPNowPlayingSportsTeamLogoImageKey"];
}

@end