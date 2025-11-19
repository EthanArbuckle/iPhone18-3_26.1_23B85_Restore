@interface CPNowPlayingModeSports
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNowPlayingModeSports:(id)a3;
- (CPNowPlayingModeSports)initWithCoder:(id)a3;
- (CPNowPlayingModeSports)initWithLeftTeam:(id)a3 rightTeam:(id)a4 eventStatus:(id)a5 backgroundArtwork:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPNowPlayingModeSports

- (CPNowPlayingModeSports)initWithLeftTeam:(id)a3 rightTeam:(id)a4 eventStatus:(id)a5 backgroundArtwork:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CPNowPlayingModeSports;
  v15 = [(CPNowPlayingMode *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leftTeam, a3);
    objc_storeStrong(&v16->_rightTeam, a4);
    objc_storeStrong(&v16->_eventStatus, a5);
    if (v14)
    {
      v17 = CPImageByScalingImageToSize(v14, 500.0, 500.0);
      backgroundArtwork = v16->_backgroundArtwork;
      v16->_backgroundArtwork = v17;
    }
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingModeSports *)self isEqualToNowPlayingModeSports:v4];

  return v5;
}

- (BOOL)isEqualToNowPlayingModeSports:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingModeSports *)self leftTeam];
  v6 = [v4 leftTeam];
  if ([v5 isEqual:v6])
  {
    v7 = [(CPNowPlayingModeSports *)self rightTeam];
    v8 = [v4 rightTeam];
    v9 = [v7 isEqual:v8];

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(CPNowPlayingModeSports *)self eventStatus];

    if (v10)
    {
      v11 = [(CPNowPlayingModeSports *)self eventStatus];
      v12 = [v4 eventStatus];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
LABEL_9:
        v15 = 0;
        goto LABEL_10;
      }
    }

    v14 = [(CPNowPlayingModeSports *)self backgroundArtwork];

    if (!v14)
    {
      v15 = 1;
      goto LABEL_10;
    }

    v5 = [(CPNowPlayingModeSports *)self backgroundArtwork];
    v6 = [v4 backgroundArtwork];
    v15 = [v5 isEqual:v6];
  }

  else
  {
    v15 = 0;
  }

LABEL_10:
  return v15;
}

- (unint64_t)hash
{
  v3 = [(CPNowPlayingModeSports *)self leftTeam];
  v4 = [v3 hash];
  v5 = [(CPNowPlayingModeSports *)self rightTeam];
  v6 = [v5 hash] ^ v4;
  v7 = [(CPNowPlayingModeSports *)self eventStatus];
  v8 = [v7 hash];
  v9 = [(CPNowPlayingModeSports *)self backgroundArtwork];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (CPNowPlayingModeSports)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CPNowPlayingModeSports;
  v5 = [(CPNowPlayingMode *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsLeftTeamKey"];
    leftTeam = v5->_leftTeam;
    v5->_leftTeam = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsRightTeamKey"];
    rightTeam = v5->_rightTeam;
    v5->_rightTeam = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsEventStatusKey"];
    eventStatus = v5->_eventStatus;
    v5->_eventStatus = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsBackgroundArtworkKey"];
    backgroundArtwork = v5->_backgroundArtwork;
    v5->_backgroundArtwork = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CPNowPlayingModeSports;
  v4 = a3;
  [(CPNowPlayingMode *)&v9 encodeWithCoder:v4];
  v5 = [(CPNowPlayingModeSports *)self leftTeam:v9.receiver];
  [v4 encodeObject:v5 forKey:@"kCPNowPlayingModeSportsLeftTeamKey"];

  v6 = [(CPNowPlayingModeSports *)self rightTeam];
  [v4 encodeObject:v6 forKey:@"kCPNowPlayingModeSportsRightTeamKey"];

  v7 = [(CPNowPlayingModeSports *)self eventStatus];
  [v4 encodeObject:v7 forKey:@"kCPNowPlayingModeSportsEventStatusKey"];

  v8 = [(CPNowPlayingModeSports *)self backgroundArtwork];
  [v4 encodeObject:v8 forKey:@"kCPNowPlayingModeSportsBackgroundArtworkKey"];
}

@end