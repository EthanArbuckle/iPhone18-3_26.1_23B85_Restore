@interface RCSwipeActionConfiguration
- (RCSwipeActionConfiguration)initWithControlsAction:(int64_t)a3 recordingUUID:(id)a4 actionTitle:(id)a5;
@end

@implementation RCSwipeActionConfiguration

- (RCSwipeActionConfiguration)initWithControlsAction:(int64_t)a3 recordingUUID:(id)a4 actionTitle:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RCSwipeActionConfiguration;
  v11 = [(RCSwipeActionConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_controlsAction = a3;
    objc_storeStrong(&v11->_uuidForAction, a4);
    objc_storeStrong(&v12->_actionTitle, a5);
  }

  return v12;
}

@end