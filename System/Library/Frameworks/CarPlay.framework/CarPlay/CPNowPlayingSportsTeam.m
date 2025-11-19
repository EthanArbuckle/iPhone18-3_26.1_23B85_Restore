@interface CPNowPlayingSportsTeam
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSportsTeam:(id)a3;
- (CPNowPlayingSportsTeam)initWithCoder:(id)a3;
- (CPNowPlayingSportsTeam)initWithName:(id)a3 logo:(id)a4 teamStandings:(id)a5 eventScore:(id)a6 possessionIndicator:(id)a7 favorite:(BOOL)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPNowPlayingSportsTeam

- (CPNowPlayingSportsTeam)initWithName:(id)a3 logo:(id)a4 teamStandings:(id)a5 eventScore:(id)a6 possessionIndicator:(id)a7 favorite:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v31.receiver = self;
  v31.super_class = CPNowPlayingSportsTeam;
  v19 = [(CPNowPlayingSportsTeam *)&v31 init];
  if (v19)
  {
    v20 = [MEMORY[0x277CCAD78] UUID];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [v14 copy];
    name = v19->_name;
    v19->_name = v22;

    v24 = [v16 copy];
    teamStandings = v19->_teamStandings;
    v19->_teamStandings = v24;

    if ([v17 length] < 6)
    {
      if ([v17 length])
      {
        v26 = [v17 copy];
      }

      else
      {
        v26 = @"0";
      }
    }

    else
    {
      v26 = [v17 substringToIndex:5];
    }

    eventScore = v19->_eventScore;
    v19->_eventScore = &v26->isa;

    objc_storeStrong(&v19->_logo, a4);
    if (v18)
    {
      v28 = CPImageByScalingImageToSize(v18, 30.0, 30.0);
      possessionIndicator = v19->_possessionIndicator;
      v19->_possessionIndicator = v28;
    }

    v19->_favorite = a8;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsTeam *)self isEqualToSportsTeam:v4];

  return v5;
}

- (BOOL)isEqualToSportsTeam:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingSportsTeam *)self identifier];
  v6 = [v4 identifier];
  if (![v5 isEqual:v6])
  {
    goto LABEL_13;
  }

  v7 = [(CPNowPlayingSportsTeam *)self name];
  v8 = [v4 name];
  if (![v7 isEqualToString:v8])
  {
LABEL_12:

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v9 = [(CPNowPlayingSportsTeam *)self logo];
  v10 = [v4 logo];
  if (![v9 isEqual:v10])
  {

    goto LABEL_12;
  }

  v11 = [(CPNowPlayingSportsTeam *)self isFavorite];
  v12 = [v4 isFavorite];

  if (v11 != v12)
  {
    goto LABEL_16;
  }

  v13 = [(CPNowPlayingSportsTeam *)self teamStandings];

  if (v13)
  {
    v14 = [(CPNowPlayingSportsTeam *)self teamStandings];
    v15 = [v4 teamStandings];
    v16 = [v14 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  v17 = [(CPNowPlayingSportsTeam *)self possessionIndicator];

  if (v17)
  {
    v18 = [(CPNowPlayingSportsTeam *)self possessionIndicator];
    v19 = [v4 possessionIndicator];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
LABEL_16:
      v22 = 0;
      goto LABEL_15;
    }
  }

  v21 = [(CPNowPlayingSportsTeam *)self eventScore];

  if (!v21)
  {
    v22 = 1;
    goto LABEL_15;
  }

  v5 = [(CPNowPlayingSportsTeam *)self eventScore];
  v6 = [v4 eventScore];
  v22 = [v5 isEqualToString:v6];
LABEL_14:

LABEL_15:
  return v22;
}

- (unint64_t)hash
{
  v3 = [(CPNowPlayingSportsTeam *)self identifier];
  v4 = [v3 hash];
  v5 = [(CPNowPlayingSportsTeam *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(CPNowPlayingSportsTeam *)self teamStandings];
  v8 = [v7 hash];
  v9 = [(CPNowPlayingSportsTeam *)self eventScore];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CPNowPlayingSportsTeam *)self logo];
  v12 = [v11 hash];
  v13 = [(CPNowPlayingSportsTeam *)self possessionIndicator];
  v14 = v10 ^ v12 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPNowPlayingSportsTeam isFavorite](self, "isFavorite")}];
  v16 = [v15 hash];

  return v14 ^ v16;
}

- (CPNowPlayingSportsTeam)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CPNowPlayingSportsTeam;
  v5 = [(CPNowPlayingSportsTeam *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamLogoKey"];
    logo = v5->_logo;
    v5->_logo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamStandingKey"];
    teamStandings = v5->_teamStandings;
    v5->_teamStandings = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamScoreKey"];
    eventScore = v5->_eventScore;
    v5->_eventScore = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamPossessionIndicatorKey"];
    possessionIndicator = v5->_possessionIndicator;
    v5->_possessionIndicator = v14;

    v5->_favorite = [v4 decodeBoolForKey:@"kCPNowPlayingSportsTeamFavoriteKey"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingSportsTeamIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingSportsTeam *)self name];
  [v4 encodeObject:v5 forKey:@"kCPNowPlayingSportsTeamNameKey"];

  v6 = [(CPNowPlayingSportsTeam *)self logo];
  [v4 encodeObject:v6 forKey:@"kCPNowPlayingSportsTeamLogoKey"];

  v7 = [(CPNowPlayingSportsTeam *)self eventScore];
  [v4 encodeObject:v7 forKey:@"kCPNowPlayingSportsTeamScoreKey"];

  v8 = [(CPNowPlayingSportsTeam *)self teamStandings];
  [v4 encodeObject:v8 forKey:@"kCPNowPlayingSportsTeamStandingKey"];

  v9 = [(CPNowPlayingSportsTeam *)self possessionIndicator];
  [v4 encodeObject:v9 forKey:@"kCPNowPlayingSportsTeamPossessionIndicatorKey"];

  [v4 encodeBool:-[CPNowPlayingSportsTeam isFavorite](self forKey:{"isFavorite"), @"kCPNowPlayingSportsTeamFavoriteKey"}];
  v10 = [(CPNowPlayingSportsTeam *)self identifier];
  [v4 encodeObject:v10 forKey:@"kCPNowPlayingSportsTeamIdentifierKey"];
}

@end