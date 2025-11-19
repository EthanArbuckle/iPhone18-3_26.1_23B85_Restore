@interface ConnectedHeadphonesControllerWrapper
- (ConnectedHeadphonesControllerWrapper)init;
- (id)connectedHeadphoneInfo;
- (void)dealloc;
- (void)setDeviceChangeHandler:(id)a3;
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
  v3 = [(ConnectedHeadphonesControllerWrapper *)self _headphonesController];
  [v3 setDeviceChangeHandler:0];

  v4.receiver = self;
  v4.super_class = ConnectedHeadphonesControllerWrapper;
  [(ConnectedHeadphonesControllerWrapper *)&v4 dealloc];
}

- (id)connectedHeadphoneInfo
{
  v2 = [(ConnectedHeadphonesControllerWrapper *)self _headphonesController];
  v3 = [v2 connectedHeadphoneInfo];

  return v3;
}

- (void)setDeviceChangeHandler:(id)a3
{
  v4 = a3;
  v5 = [(ConnectedHeadphonesControllerWrapper *)self _headphonesController];
  v6 = v5;
  if (v4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004CC90;
    v7[3] = &unk_10014C9C8;
    v8 = v4;
    [v6 setDeviceChangeHandler:v7];
  }

  else
  {
    [v5 setDeviceChangeHandler:0];
  }
}

@end