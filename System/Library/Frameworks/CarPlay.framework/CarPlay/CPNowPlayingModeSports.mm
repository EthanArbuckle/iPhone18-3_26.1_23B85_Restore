@interface CPNowPlayingModeSports
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNowPlayingModeSports:(id)sports;
- (CPNowPlayingModeSports)initWithCoder:(id)coder;
- (CPNowPlayingModeSports)initWithLeftTeam:(id)team rightTeam:(id)rightTeam eventStatus:(id)status backgroundArtwork:(id)artwork;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNowPlayingModeSports

- (CPNowPlayingModeSports)initWithLeftTeam:(id)team rightTeam:(id)rightTeam eventStatus:(id)status backgroundArtwork:(id)artwork
{
  teamCopy = team;
  rightTeamCopy = rightTeam;
  statusCopy = status;
  artworkCopy = artwork;
  v20.receiver = self;
  v20.super_class = CPNowPlayingModeSports;
  v15 = [(CPNowPlayingMode *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leftTeam, team);
    objc_storeStrong(&v16->_rightTeam, rightTeam);
    objc_storeStrong(&v16->_eventStatus, status);
    if (artworkCopy)
    {
      v17 = CPImageByScalingImageToSize(artworkCopy, 500.0, 500.0);
      backgroundArtwork = v16->_backgroundArtwork;
      v16->_backgroundArtwork = v17;
    }
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingModeSports *)self isEqualToNowPlayingModeSports:equalCopy];

  return v5;
}

- (BOOL)isEqualToNowPlayingModeSports:(id)sports
{
  sportsCopy = sports;
  leftTeam = [(CPNowPlayingModeSports *)self leftTeam];
  leftTeam2 = [sportsCopy leftTeam];
  if ([leftTeam isEqual:leftTeam2])
  {
    rightTeam = [(CPNowPlayingModeSports *)self rightTeam];
    rightTeam2 = [sportsCopy rightTeam];
    v9 = [rightTeam isEqual:rightTeam2];

    if (!v9)
    {
      goto LABEL_9;
    }

    eventStatus = [(CPNowPlayingModeSports *)self eventStatus];

    if (eventStatus)
    {
      eventStatus2 = [(CPNowPlayingModeSports *)self eventStatus];
      eventStatus3 = [sportsCopy eventStatus];
      v13 = [eventStatus2 isEqual:eventStatus3];

      if (!v13)
      {
LABEL_9:
        v15 = 0;
        goto LABEL_10;
      }
    }

    backgroundArtwork = [(CPNowPlayingModeSports *)self backgroundArtwork];

    if (!backgroundArtwork)
    {
      v15 = 1;
      goto LABEL_10;
    }

    leftTeam = [(CPNowPlayingModeSports *)self backgroundArtwork];
    leftTeam2 = [sportsCopy backgroundArtwork];
    v15 = [leftTeam isEqual:leftTeam2];
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
  leftTeam = [(CPNowPlayingModeSports *)self leftTeam];
  v4 = [leftTeam hash];
  rightTeam = [(CPNowPlayingModeSports *)self rightTeam];
  v6 = [rightTeam hash] ^ v4;
  eventStatus = [(CPNowPlayingModeSports *)self eventStatus];
  v8 = [eventStatus hash];
  backgroundArtwork = [(CPNowPlayingModeSports *)self backgroundArtwork];
  v10 = v8 ^ [backgroundArtwork hash];

  return v6 ^ v10;
}

- (CPNowPlayingModeSports)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CPNowPlayingModeSports;
  v5 = [(CPNowPlayingMode *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsLeftTeamKey"];
    leftTeam = v5->_leftTeam;
    v5->_leftTeam = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsRightTeamKey"];
    rightTeam = v5->_rightTeam;
    v5->_rightTeam = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsEventStatusKey"];
    eventStatus = v5->_eventStatus;
    v5->_eventStatus = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsBackgroundArtworkKey"];
    backgroundArtwork = v5->_backgroundArtwork;
    v5->_backgroundArtwork = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CPNowPlayingModeSports;
  coderCopy = coder;
  [(CPNowPlayingMode *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CPNowPlayingModeSports *)self leftTeam:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPNowPlayingModeSportsLeftTeamKey"];

  rightTeam = [(CPNowPlayingModeSports *)self rightTeam];
  [coderCopy encodeObject:rightTeam forKey:@"kCPNowPlayingModeSportsRightTeamKey"];

  eventStatus = [(CPNowPlayingModeSports *)self eventStatus];
  [coderCopy encodeObject:eventStatus forKey:@"kCPNowPlayingModeSportsEventStatusKey"];

  backgroundArtwork = [(CPNowPlayingModeSports *)self backgroundArtwork];
  [coderCopy encodeObject:backgroundArtwork forKey:@"kCPNowPlayingModeSportsBackgroundArtworkKey"];
}

@end