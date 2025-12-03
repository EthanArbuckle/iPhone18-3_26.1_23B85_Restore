@interface CPNowPlayingSportsTeam
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSportsTeam:(id)team;
- (CPNowPlayingSportsTeam)initWithCoder:(id)coder;
- (CPNowPlayingSportsTeam)initWithName:(id)name logo:(id)logo teamStandings:(id)standings eventScore:(id)score possessionIndicator:(id)indicator favorite:(BOOL)favorite;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNowPlayingSportsTeam

- (CPNowPlayingSportsTeam)initWithName:(id)name logo:(id)logo teamStandings:(id)standings eventScore:(id)score possessionIndicator:(id)indicator favorite:(BOOL)favorite
{
  nameCopy = name;
  logoCopy = logo;
  standingsCopy = standings;
  scoreCopy = score;
  indicatorCopy = indicator;
  v31.receiver = self;
  v31.super_class = CPNowPlayingSportsTeam;
  v19 = [(CPNowPlayingSportsTeam *)&v31 init];
  if (v19)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v19->_identifier;
    v19->_identifier = uUID;

    v22 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v22;

    v24 = [standingsCopy copy];
    teamStandings = v19->_teamStandings;
    v19->_teamStandings = v24;

    if ([scoreCopy length] < 6)
    {
      if ([scoreCopy length])
      {
        v26 = [scoreCopy copy];
      }

      else
      {
        v26 = @"0";
      }
    }

    else
    {
      v26 = [scoreCopy substringToIndex:5];
    }

    eventScore = v19->_eventScore;
    v19->_eventScore = &v26->isa;

    objc_storeStrong(&v19->_logo, logo);
    if (indicatorCopy)
    {
      v28 = CPImageByScalingImageToSize(indicatorCopy, 30.0, 30.0);
      possessionIndicator = v19->_possessionIndicator;
      v19->_possessionIndicator = v28;
    }

    v19->_favorite = favorite;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsTeam *)self isEqualToSportsTeam:equalCopy];

  return v5;
}

- (BOOL)isEqualToSportsTeam:(id)team
{
  teamCopy = team;
  identifier = [(CPNowPlayingSportsTeam *)self identifier];
  identifier2 = [teamCopy identifier];
  if (![identifier isEqual:identifier2])
  {
    goto LABEL_13;
  }

  name = [(CPNowPlayingSportsTeam *)self name];
  name2 = [teamCopy name];
  if (![name isEqualToString:name2])
  {
LABEL_12:

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  logo = [(CPNowPlayingSportsTeam *)self logo];
  logo2 = [teamCopy logo];
  if (![logo isEqual:logo2])
  {

    goto LABEL_12;
  }

  isFavorite = [(CPNowPlayingSportsTeam *)self isFavorite];
  isFavorite2 = [teamCopy isFavorite];

  if (isFavorite != isFavorite2)
  {
    goto LABEL_16;
  }

  teamStandings = [(CPNowPlayingSportsTeam *)self teamStandings];

  if (teamStandings)
  {
    teamStandings2 = [(CPNowPlayingSportsTeam *)self teamStandings];
    teamStandings3 = [teamCopy teamStandings];
    v16 = [teamStandings2 isEqualToString:teamStandings3];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  possessionIndicator = [(CPNowPlayingSportsTeam *)self possessionIndicator];

  if (possessionIndicator)
  {
    possessionIndicator2 = [(CPNowPlayingSportsTeam *)self possessionIndicator];
    possessionIndicator3 = [teamCopy possessionIndicator];
    v20 = [possessionIndicator2 isEqual:possessionIndicator3];

    if (!v20)
    {
LABEL_16:
      v22 = 0;
      goto LABEL_15;
    }
  }

  eventScore = [(CPNowPlayingSportsTeam *)self eventScore];

  if (!eventScore)
  {
    v22 = 1;
    goto LABEL_15;
  }

  identifier = [(CPNowPlayingSportsTeam *)self eventScore];
  identifier2 = [teamCopy eventScore];
  v22 = [identifier isEqualToString:identifier2];
LABEL_14:

LABEL_15:
  return v22;
}

- (unint64_t)hash
{
  identifier = [(CPNowPlayingSportsTeam *)self identifier];
  v4 = [identifier hash];
  name = [(CPNowPlayingSportsTeam *)self name];
  v6 = [name hash] ^ v4;
  teamStandings = [(CPNowPlayingSportsTeam *)self teamStandings];
  v8 = [teamStandings hash];
  eventScore = [(CPNowPlayingSportsTeam *)self eventScore];
  v10 = v6 ^ v8 ^ [eventScore hash];
  logo = [(CPNowPlayingSportsTeam *)self logo];
  v12 = [logo hash];
  possessionIndicator = [(CPNowPlayingSportsTeam *)self possessionIndicator];
  v14 = v10 ^ v12 ^ [possessionIndicator hash];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPNowPlayingSportsTeam isFavorite](self, "isFavorite")}];
  v16 = [v15 hash];

  return v14 ^ v16;
}

- (CPNowPlayingSportsTeam)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CPNowPlayingSportsTeam;
  v5 = [(CPNowPlayingSportsTeam *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamLogoKey"];
    logo = v5->_logo;
    v5->_logo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamStandingKey"];
    teamStandings = v5->_teamStandings;
    v5->_teamStandings = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamScoreKey"];
    eventScore = v5->_eventScore;
    v5->_eventScore = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamPossessionIndicatorKey"];
    possessionIndicator = v5->_possessionIndicator;
    v5->_possessionIndicator = v14;

    v5->_favorite = [coderCopy decodeBoolForKey:@"kCPNowPlayingSportsTeamFavoriteKey"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(CPNowPlayingSportsTeam *)self name];
  [coderCopy encodeObject:name forKey:@"kCPNowPlayingSportsTeamNameKey"];

  logo = [(CPNowPlayingSportsTeam *)self logo];
  [coderCopy encodeObject:logo forKey:@"kCPNowPlayingSportsTeamLogoKey"];

  eventScore = [(CPNowPlayingSportsTeam *)self eventScore];
  [coderCopy encodeObject:eventScore forKey:@"kCPNowPlayingSportsTeamScoreKey"];

  teamStandings = [(CPNowPlayingSportsTeam *)self teamStandings];
  [coderCopy encodeObject:teamStandings forKey:@"kCPNowPlayingSportsTeamStandingKey"];

  possessionIndicator = [(CPNowPlayingSportsTeam *)self possessionIndicator];
  [coderCopy encodeObject:possessionIndicator forKey:@"kCPNowPlayingSportsTeamPossessionIndicatorKey"];

  [coderCopy encodeBool:-[CPNowPlayingSportsTeam isFavorite](self forKey:{"isFavorite"), @"kCPNowPlayingSportsTeamFavoriteKey"}];
  identifier = [(CPNowPlayingSportsTeam *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPNowPlayingSportsTeamIdentifierKey"];
}

@end