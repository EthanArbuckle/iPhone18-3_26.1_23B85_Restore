@interface RCSwipeActionConfiguration
- (RCSwipeActionConfiguration)initWithControlsAction:(int64_t)action recordingUUID:(id)d actionTitle:(id)title;
@end

@implementation RCSwipeActionConfiguration

- (RCSwipeActionConfiguration)initWithControlsAction:(int64_t)action recordingUUID:(id)d actionTitle:(id)title
{
  dCopy = d;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = RCSwipeActionConfiguration;
  v11 = [(RCSwipeActionConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_controlsAction = action;
    objc_storeStrong(&v11->_uuidForAction, d);
    objc_storeStrong(&v12->_actionTitle, title);
  }

  return v12;
}

@end