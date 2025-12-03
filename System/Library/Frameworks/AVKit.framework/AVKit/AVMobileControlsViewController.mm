@interface AVMobileControlsViewController
- (AVMobileControlsViewController)init;
- (AVMobileControlsViewControllerDelegate)delegate;
- (UIEdgeInsets)legibleContentInsetsAvoidingControlsUI;
- (id)eventManager;
- (void)addAction:(SEL)action withTarget:(id)target forEvent:(id)event;
- (void)addAction:(id)action forEvent:(id)event;
- (void)removeAction:(SEL)action withTarget:(id)target forEvent:(id)event;
- (void)setControlItems:(id)items;
- (void)setTransportBarCustomMenuItems:(id)items;
@end

@implementation AVMobileControlsViewController

- (AVMobileControlsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removeAction:(SEL)action withTarget:(id)target forEvent:(id)event
{
  eventCopy = event;
  targetCopy = target;
  eventManager = [(AVMobileControlsViewController *)self eventManager];
  [eventManager removeAction:action withTarget:targetCopy forEvent:eventCopy];
}

- (void)addAction:(SEL)action withTarget:(id)target forEvent:(id)event
{
  eventCopy = event;
  targetCopy = target;
  eventManager = [(AVMobileControlsViewController *)self eventManager];
  [eventManager addAction:action withTarget:targetCopy forEvent:eventCopy];
}

- (void)addAction:(id)action forEvent:(id)event
{
  eventCopy = event;
  actionCopy = action;
  eventManager = [(AVMobileControlsViewController *)self eventManager];
  [eventManager addAction:actionCopy forEvent:eventCopy];
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

- (void)setTransportBarCustomMenuItems:(id)items
{
  v4 = [items copy];
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

- (void)setControlItems:(id)items
{
  if (self->_controlItems != items)
  {
    v4 = [items copy];
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