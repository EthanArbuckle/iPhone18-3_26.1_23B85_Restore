@interface _EXHostViewControllerSessionConfiguration
- (CGRect)initialFrame;
- (_EXHostViewControllerSessionConfiguration)initWithSceneIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _EXHostViewControllerSessionConfiguration

- (_EXHostViewControllerSessionConfiguration)initWithSceneIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _EXHostViewControllerSessionConfiguration;
  v6 = [(_EXHostViewControllerSessionConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneIdentifier, a3);
    initializationParameters = v7->_initializationParameters;
    v7->_initializationParameters = 0;

    v9 = [MEMORY[0x1E6966CA0] sharedInstance];
    v7->_beginHostingImmediately = [v9 startUIHostingSessionImmediately];

    v7->_sizeBridgingOptions = -1;
    v7->__shouldHostRemoteTextEffectsWindow = 1;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_sceneIdentifier copy];
  [v4 setSceneIdentifier:v5];

  [v4 setInitializationParameters:self->_initializationParameters];
  [v4 setBeginHostingImmediately:self->_beginHostingImmediately];
  [v4 setSizeBridgingOptions:self->_sizeBridgingOptions];
  [v4 setInitialFrame:{self->_initialFrame.origin.x, self->_initialFrame.origin.y, self->_initialFrame.size.width, self->_initialFrame.size.height}];
  [v4 setInvalidationHandler:self->_invalidationHandler];
  [v4 set_shouldHostRemoteTextEffectsWindow:self->__shouldHostRemoteTextEffectsWindow];
  return v4;
}

- (CGRect)initialFrame
{
  x = self->_initialFrame.origin.x;
  y = self->_initialFrame.origin.y;
  width = self->_initialFrame.size.width;
  height = self->_initialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end