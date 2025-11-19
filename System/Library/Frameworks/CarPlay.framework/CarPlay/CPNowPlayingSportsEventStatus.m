@interface CPNowPlayingSportsEventStatus
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGameStatus:(id)a3;
- (CPNowPlayingSportsEventStatus)initWithCoder:(id)a3;
- (CPNowPlayingSportsEventStatus)initWithEventStatusText:(id)a3 eventStatusImage:(id)a4 eventClock:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPNowPlayingSportsEventStatus

- (CPNowPlayingSportsEventStatus)initWithEventStatusText:(id)a3 eventStatusImage:(id)a4 eventClock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CPNowPlayingSportsEventStatus;
  v11 = [(CPNowPlayingSportsEventStatus *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    eventStatusText = v11->_eventStatusText;
    v11->_eventStatusText = v12;

    objc_storeStrong(&v11->_eventClock, a5);
    if (v9)
    {
      v14 = CPImageByScalingImageToSize(v9, 30.0, 30.0);
      eventStatusImage = v11->_eventStatusImage;
      v11->_eventStatusImage = v14;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsEventStatus *)self isEqualToGameStatus:v4];

  return v5;
}

- (BOOL)isEqualToGameStatus:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingSportsEventStatus *)self eventClock];

  if (v5)
  {
    v6 = [(CPNowPlayingSportsEventStatus *)self eventClock];
    v7 = [v4 eventClock];
    v8 = [v6 isEqual:v7];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [(CPNowPlayingSportsEventStatus *)self eventStatusText];

  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [(CPNowPlayingSportsEventStatus *)self eventStatusText];
  v11 = [v4 eventStatusText];
  v12 = [v10 isEqualToArray:v11];

  if (!v12)
  {
LABEL_7:
    v16 = 0;
  }

  else
  {
LABEL_5:
    v13 = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];

    if (v13)
    {
      v14 = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];
      v15 = [v4 eventStatusImage];
      v16 = [v14 isEqual:v15];
    }

    else
    {
      v16 = 1;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(CPNowPlayingSportsEventStatus *)self eventClock];
  v4 = [v3 hash];
  v5 = [(CPNowPlayingSportsEventStatus *)self eventStatusText];
  v6 = [v5 hash] ^ v4;
  v7 = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (CPNowPlayingSportsEventStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPNowPlayingSportsEventStatus;
  v5 = [(CPNowPlayingSportsEventStatus *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsEventStatusClockKey"];
    eventClock = v5->_eventClock;
    v5->_eventClock = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kCPNowPlayingModeSportsEventStatusTextKey"];
    eventStatusText = v5->_eventStatusText;
    v5->_eventStatusText = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsEventtatusImageKey"];
    eventStatusImage = v5->_eventStatusImage;
    v5->_eventStatusImage = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPNowPlayingSportsEventStatus *)self eventClock];
  [v4 encodeObject:v5 forKey:@"kCPNowPlayingModeSportsEventStatusClockKey"];

  v6 = [(CPNowPlayingSportsEventStatus *)self eventStatusText];
  [v4 encodeObject:v6 forKey:@"kCPNowPlayingModeSportsEventStatusTextKey"];

  v7 = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];
  [v4 encodeObject:v7 forKey:@"kCPNowPlayingModeSportsEventtatusImageKey"];
}

@end