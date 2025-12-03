@interface CPNowPlayingSportsTeamLogo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTeamLogo:(id)logo;
- (CPNowPlayingSportsTeamLogo)initWithCoder:(id)coder;
- (CPNowPlayingSportsTeamLogo)initWithTeamInitials:(id)initials;
- (CPNowPlayingSportsTeamLogo)initWithTeamLogo:(id)logo;
- (unint64_t)hashValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNowPlayingSportsTeamLogo

- (CPNowPlayingSportsTeamLogo)initWithTeamLogo:(id)logo
{
  logoCopy = logo;
  v9.receiver = self;
  v9.super_class = CPNowPlayingSportsTeamLogo;
  v5 = [(CPNowPlayingSportsTeamLogo *)&v9 init];
  if (v5)
  {
    v6 = CPImageByScalingImageToSize(logoCopy, 350.0, 350.0);
    logo = v5->_logo;
    v5->_logo = v6;
  }

  return v5;
}

- (CPNowPlayingSportsTeamLogo)initWithTeamInitials:(id)initials
{
  initialsCopy = initials;
  v9.receiver = self;
  v9.super_class = CPNowPlayingSportsTeamLogo;
  v5 = [(CPNowPlayingSportsTeamLogo *)&v9 init];
  if (v5)
  {
    if ([initialsCopy length] < 4)
    {
      v6 = [initialsCopy copy];
    }

    else
    {
      v6 = [initialsCopy substringToIndex:3];
    }

    initials = v5->_initials;
    v5->_initials = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsTeamLogo *)self isEqualToTeamLogo:equalCopy];

  return v5;
}

- (BOOL)isEqualToTeamLogo:(id)logo
{
  logoCopy = logo;
  logo = [(CPNowPlayingSportsTeamLogo *)self logo];

  if (logo)
  {
    logo2 = [(CPNowPlayingSportsTeamLogo *)self logo];
    logo3 = [logoCopy logo];
    v8 = [logo2 isEqual:logo3];
  }

  else
  {
    v8 = 1;
  }

  initials = [(CPNowPlayingSportsTeamLogo *)self initials];

  v10 = (initials == 0) & v8;
  if (initials && v8)
  {
    initials2 = [(CPNowPlayingSportsTeamLogo *)self initials];
    initials3 = [logoCopy initials];
    v10 = [initials2 isEqualToString:initials3];
  }

  return v10;
}

- (unint64_t)hashValue
{
  logo = [(CPNowPlayingSportsTeamLogo *)self logo];
  v4 = [logo hash];
  initials = [(CPNowPlayingSportsTeamLogo *)self initials];
  v6 = [initials hash];

  return v6 ^ v4;
}

- (CPNowPlayingSportsTeamLogo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPNowPlayingSportsTeamLogo;
  v5 = [(CPNowPlayingSportsTeamLogo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamInitialsKey"];
    initials = v5->_initials;
    v5->_initials = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamLogoImageKey"];
    logo = v5->_logo;
    v5->_logo = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  initials = [(CPNowPlayingSportsTeamLogo *)self initials];
  [coderCopy encodeObject:initials forKey:@"kCPNowPlayingSportsTeamInitialsKey"];

  logo = [(CPNowPlayingSportsTeamLogo *)self logo];
  [coderCopy encodeObject:logo forKey:@"kCPNowPlayingSportsTeamLogoImageKey"];
}

@end