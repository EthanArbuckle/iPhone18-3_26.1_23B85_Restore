@interface ACCiAP2ShimServerDelegateInfo
- (ACCiAP2ShimServerDelegateInfo)initWithDelegate:(id)delegate;
- (void)dealloc;
@end

@implementation ACCiAP2ShimServerDelegateInfo

- (ACCiAP2ShimServerDelegateInfo)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ACCiAP2ShimServerDelegateInfo;
  v6 = [(ACCiAP2ShimServerDelegateInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
  }

  return v7;
}

- (void)dealloc
{
  delegate = self->_delegate;
  self->_delegate = 0;

  v4.receiver = self;
  v4.super_class = ACCiAP2ShimServerDelegateInfo;
  [(ACCiAP2ShimServerDelegateInfo *)&v4 dealloc];
}

@end