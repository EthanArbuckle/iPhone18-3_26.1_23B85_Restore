@interface MTApplication_iOS
- (id)delegate;
- (id)nextResponder;
@end

@implementation MTApplication_iOS

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MTApplication_iOS;
  delegate = [(MTApplication *)&v4 delegate];

  return delegate;
}

- (id)nextResponder
{
  delegate = [(MTApplication_iOS *)self delegate];
  internalAppDelegate = [delegate internalAppDelegate];

  commandController = [internalAppDelegate commandController];

  return commandController;
}

@end