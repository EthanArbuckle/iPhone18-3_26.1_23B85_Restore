@interface AVMobileControlsViewController
- (AVMobileControlsViewController)init;
- (AVMobileControlsViewControllerDelegate)delegate;
- (UIEdgeInsets)legibleContentInsetsAvoidingControlsUI;
- (id)eventManager;
- (void)addAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5;
- (void)addAction:(id)a3 forEvent:(id)a4;
- (void)removeAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5;
- (void)setControlItems:(id)a3;
- (void)setTransportBarCustomMenuItems:(id)a3;
@end

@implementation AVMobileControlsViewController

- (AVMobileControlsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removeAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(AVMobileControlsViewController *)self eventManager];
  [v10 removeAction:a3 withTarget:v9 forEvent:v8];
}

- (void)addAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(AVMobileControlsViewController *)self eventManager];
  [v10 addAction:a3 withTarget:v9 forEvent:v8];
}

- (void)addAction:(id)a3 forEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVMobileControlsViewController *)self eventManager];
  [v8 addAction:v7 forEvent:v6];
}

- (UIEdgeInsets)legibleContentInsetsAvoidingControlsUI
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setTransportBarCustomMenuItems:(id)a3
{
  v4 = [a3 copy];
  transportBarCustomMenuItems = self->_transportBarCustomMenuItems;
  self->_transportBarCustomMenuItems = v4;

  MEMORY[0x1EEE66BB8](v4, transportBarCustomMenuItems);
}

- (id)eventManager
{
  eventManager = self->_eventManager;
  if (!eventManager)
  {
    v4 = [[AVEventManager alloc] initWithOwner:self];
    v5 = self->_eventManager;
    self->_eventManager = v4;

    eventManager = self->_eventManager;
  }

  return eventManager;
}

- (void)setControlItems:(id)a3
{
  if (self->_controlItems != a3)
  {
    v4 = [a3 copy];
    controlItems = self->_controlItems;
    self->_controlItems = v4;

    MEMORY[0x1EEE66BB8](v4, controlItems);
  }
}

- (AVMobileControlsViewController)init
{
  v3.receiver = self;
  v3.super_class = AVMobileControlsViewController;
  result = [(AVControlsViewController *)&v3 init];
  if (result)
  {
    result->_includedControls = 63;
    result->_visibilityPolicy = 1;
    result->_secondaryPlaybackControlsType = 0;
  }

  return result;
}

@end