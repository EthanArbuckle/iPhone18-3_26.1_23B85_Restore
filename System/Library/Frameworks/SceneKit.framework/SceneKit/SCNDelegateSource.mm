@interface SCNDelegateSource
- (BOOL)isOpaque;
- (id)textureSource;
- (void)dealloc;
@end

@implementation SCNDelegateSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNDelegateSource;
  [(SCNDelegateSource *)&v3 dealloc];
}

- (id)textureSource
{
  v3 = objc_alloc_init(SCNTextureDelegateSource);
  [(SCNTextureDelegateSource *)v3 setDelegate:[(SCNDelegateSource *)self delegate]];
  return v3;
}

- (BOOL)isOpaque
{
  delegate = [(SCNDelegateSource *)self delegate];

  return [delegate isOpaque];
}

@end