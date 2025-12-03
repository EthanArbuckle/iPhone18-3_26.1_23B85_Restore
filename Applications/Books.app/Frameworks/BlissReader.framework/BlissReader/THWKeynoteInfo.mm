@interface THWKeynoteInfo
- (THWKeynoteInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style showInfo:(id)info adornmentInfo:(id)adornmentInfo showTransportControls:(BOOL)controls autoPlayConfig:(id)config;
- (id)childEnumerator;
- (id)childInfos;
- (void)dealloc;
@end

@implementation THWKeynoteInfo

- (THWKeynoteInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style showInfo:(id)info adornmentInfo:(id)adornmentInfo showTransportControls:(BOOL)controls autoPlayConfig:(id)config
{
  controlsCopy = controls;
  v15.receiver = self;
  v15.super_class = THWKeynoteInfo;
  style = [(THWKeynoteInfo *)&v15 initWithContext:context geometry:geometry, style];
  v13 = style;
  if (style)
  {
    [(THWKeynoteInfo *)style setShowInfo:info];
    [(THWKeynoteInfo *)v13 setAdornmentInfo:adornmentInfo];
    [(THWKeynoteInfo *)v13 setShowTransportControls:controlsCopy];
    [(THWKeynoteInfo *)v13 setAutoplayConfig:config];
    [adornmentInfo updateParentInfo:v13];
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWKeynoteInfo;
  [(THWKeynoteInfo *)&v3 dealloc];
}

- (id)childInfos
{
  adornmentInfo = self->_adornmentInfo;
  showInfo = self->_showInfo;
  if (showInfo)
  {
    showInfo = [NSArray arrayWithObject:?];
  }

  return [(THWWidgetAdornmentInfo *)adornmentInfo interleavedInfosWithInfos:showInfo];
}

- (id)childEnumerator
{
  childInfos = [(THWKeynoteInfo *)self childInfos];

  return [childInfos objectEnumerator];
}

@end