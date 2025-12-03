@interface AVDefaultBehaviorContext
- (AVDefaultBehaviorContext)initWithAVKitOwner:(id)owner;
- (AVPlayerViewController)playerViewController;
@end

@implementation AVDefaultBehaviorContext

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (AVDefaultBehaviorContext)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  v8.receiver = self;
  v8.super_class = AVDefaultBehaviorContext;
  v5 = [(AVDefaultBehaviorContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, ownerCopy);
  }

  return v6;
}

@end