@interface CPNowPlayingSportsEventStatus
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGameStatus:(id)status;
- (CPNowPlayingSportsEventStatus)initWithCoder:(id)coder;
- (CPNowPlayingSportsEventStatus)initWithEventStatusText:(id)text eventStatusImage:(id)image eventClock:(id)clock;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNowPlayingSportsEventStatus

- (CPNowPlayingSportsEventStatus)initWithEventStatusText:(id)text eventStatusImage:(id)image eventClock:(id)clock
{
  textCopy = text;
  imageCopy = image;
  clockCopy = clock;
  v17.receiver = self;
  v17.super_class = CPNowPlayingSportsEventStatus;
  v11 = [(CPNowPlayingSportsEventStatus *)&v17 init];
  if (v11)
  {
    v12 = [textCopy copy];
    eventStatusText = v11->_eventStatusText;
    v11->_eventStatusText = v12;

    objc_storeStrong(&v11->_eventClock, clock);
    if (imageCopy)
    {
      v14 = CPImageByScalingImageToSize(imageCopy, 30.0, 30.0);
      eventStatusImage = v11->_eventStatusImage;
      v11->_eventStatusImage = v14;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsEventStatus *)self isEqualToGameStatus:equalCopy];

  return v5;
}

- (BOOL)isEqualToGameStatus:(id)status
{
  statusCopy = status;
  eventClock = [(CPNowPlayingSportsEventStatus *)self eventClock];

  if (eventClock)
  {
    eventClock2 = [(CPNowPlayingSportsEventStatus *)self eventClock];
    eventClock3 = [statusCopy eventClock];
    v8 = [eventClock2 isEqual:eventClock3];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  eventStatusText = [(CPNowPlayingSportsEventStatus *)self eventStatusText];

  if (!eventStatusText)
  {
    goto LABEL_5;
  }

  eventStatusText2 = [(CPNowPlayingSportsEventStatus *)self eventStatusText];
  eventStatusText3 = [statusCopy eventStatusText];
  v12 = [eventStatusText2 isEqualToArray:eventStatusText3];

  if (!v12)
  {
LABEL_7:
    v16 = 0;
  }

  else
  {
LABEL_5:
    eventStatusImage = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];

    if (eventStatusImage)
    {
      eventStatusImage2 = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];
      eventStatusImage3 = [statusCopy eventStatusImage];
      v16 = [eventStatusImage2 isEqual:eventStatusImage3];
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
  eventClock = [(CPNowPlayingSportsEventStatus *)self eventClock];
  v4 = [eventClock hash];
  eventStatusText = [(CPNowPlayingSportsEventStatus *)self eventStatusText];
  v6 = [eventStatusText hash] ^ v4;
  eventStatusImage = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];
  v8 = [eventStatusImage hash];

  return v6 ^ v8;
}

- (CPNowPlayingSportsEventStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CPNowPlayingSportsEventStatus;
  v5 = [(CPNowPlayingSportsEventStatus *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsEventStatusClockKey"];
    eventClock = v5->_eventClock;
    v5->_eventClock = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kCPNowPlayingModeSportsEventStatusTextKey"];
    eventStatusText = v5->_eventStatusText;
    v5->_eventStatusText = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPNowPlayingModeSportsEventtatusImageKey"];
    eventStatusImage = v5->_eventStatusImage;
    v5->_eventStatusImage = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventClock = [(CPNowPlayingSportsEventStatus *)self eventClock];
  [coderCopy encodeObject:eventClock forKey:@"kCPNowPlayingModeSportsEventStatusClockKey"];

  eventStatusText = [(CPNowPlayingSportsEventStatus *)self eventStatusText];
  [coderCopy encodeObject:eventStatusText forKey:@"kCPNowPlayingModeSportsEventStatusTextKey"];

  eventStatusImage = [(CPNowPlayingSportsEventStatus *)self eventStatusImage];
  [coderCopy encodeObject:eventStatusImage forKey:@"kCPNowPlayingModeSportsEventtatusImageKey"];
}

@end