@interface THWKeynoteInfo
- (THWKeynoteInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 showInfo:(id)a6 adornmentInfo:(id)a7 showTransportControls:(BOOL)a8 autoPlayConfig:(id)a9;
- (id)childEnumerator;
- (id)childInfos;
- (void)dealloc;
@end

@implementation THWKeynoteInfo

- (THWKeynoteInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 showInfo:(id)a6 adornmentInfo:(id)a7 showTransportControls:(BOOL)a8 autoPlayConfig:(id)a9
{
  v9 = a8;
  v15.receiver = self;
  v15.super_class = THWKeynoteInfo;
  v12 = [(THWKeynoteInfo *)&v15 initWithContext:a3 geometry:a4, a5];
  v13 = v12;
  if (v12)
  {
    [(THWKeynoteInfo *)v12 setShowInfo:a6];
    [(THWKeynoteInfo *)v13 setAdornmentInfo:a7];
    [(THWKeynoteInfo *)v13 setShowTransportControls:v9];
    [(THWKeynoteInfo *)v13 setAutoplayConfig:a9];
    [a7 updateParentInfo:v13];
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
  v2 = [(THWKeynoteInfo *)self childInfos];

  return [v2 objectEnumerator];
}

@end