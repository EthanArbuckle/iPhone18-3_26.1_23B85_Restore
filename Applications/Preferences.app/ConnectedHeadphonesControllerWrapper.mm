@interface ConnectedHeadphonesControllerWrapper
- (ConnectedHeadphonesControllerWrapper)init;
- (id)connectedHeadphoneInfo;
- (void)dealloc;
- (void)setDeviceChangeHandler:(id)handler;
@end

@implementation ConnectedHeadphonesControllerWrapper

- (ConnectedHeadphonesControllerWrapper)init
{
  v6.receiver = self;
  v6.super_class = ConnectedHeadphonesControllerWrapper;
  v2 = [(ConnectedHeadphonesControllerWrapper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(HPSConnectedHeadphonesController);
    headphonesController = v2->__headphonesController;
    v2->__headphonesController = v3;
  }

  return v2;
}

- (void)dealloc
{
  _headphonesController = [(ConnectedHeadphonesControllerWrapper *)self _headphonesController];
  [_headphonesController setDeviceChangeHandler:0];

  v4.receiver = self;
  v4.super_class = ConnectedHeadphonesControllerWrapper;
  [(ConnectedHeadphonesControllerWrapper *)&v4 dealloc];
}

- (id)connectedHeadphoneInfo
{
  _headphonesController = [(ConnectedHeadphonesControllerWrapper *)self _headphonesController];
  connectedHeadphoneInfo = [_headphonesController connectedHeadphoneInfo];

  return connectedHeadphoneInfo;
}

- (void)setDeviceChangeHandler:(id)handler
{
  handlerCopy = handler;
  _headphonesController = [(ConnectedHeadphonesControllerWrapper *)self _headphonesController];
  v6 = _headphonesController;
  if (handlerCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004CC90;
    v7[3] = &unk_10014C9C8;
    v8 = handlerCopy;
    [v6 setDeviceChangeHandler:v7];
  }

  else
  {
    [_headphonesController setDeviceChangeHandler:0];
  }
}

@end