@interface THWInteractiveImageWidgetController
- (THWInteractiveImageWidgetController)initWithLayout:(id)layout;
- (void)dealloc;
- (void)selectOption:(unint64_t)option contentOffset:(CGPoint)offset force:(BOOL)force animated:(BOOL)animated;
- (void)selectOption:(unint64_t)option force:(BOOL)force animated:(BOOL)animated;
@end

@implementation THWInteractiveImageWidgetController

- (THWInteractiveImageWidgetController)initWithLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = THWInteractiveImageWidgetController;
  result = [(THWInteractiveImageWidgetController *)&v5 init];
  if (result)
  {
    result->_layout = layout;
  }

  return result;
}

- (void)dealloc
{
  self->_layout = 0;

  self->_transportControlsRep = 0;
  v3.receiver = self;
  v3.super_class = THWInteractiveImageWidgetController;
  [(THWInteractiveImageWidgetController *)&v3 dealloc];
}

- (void)selectOption:(unint64_t)option force:(BOOL)force animated:(BOOL)animated
{
  animatedCopy = animated;
  forceCopy = force;
  if (force)
  {
    optionCopy = option;
  }

  else
  {
    optionCopy = 0;
  }

  calloutIndex = self->_calloutIndex;
  layout = self->_layout;
  if (calloutIndex == option)
  {
    optionCopy2 = optionCopy;
  }

  else
  {
    optionCopy2 = option;
  }

  [objc_msgSend(-[THWInteractiveImageWidgetLayout info](layout "info")];

  [(THWInteractiveImageWidgetController *)self selectOption:optionCopy2 contentOffset:forceCopy force:animatedCopy animated:?];
}

- (void)selectOption:(unint64_t)option contentOffset:(CGPoint)offset force:(BOOL)force animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (force || [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate userInteractionEnabled])
  {
    [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate setUserInteractionEnabled:0];
    calloutIndex = self->_calloutIndex;
    layout = self->_layout;
    self->_calloutIndex = option;
    [(THWInteractiveImageWidgetLayout *)layout setSelectedCalloutIndex:option];
    [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate selectedCalloutIndexUpdatedAnimated:animatedCopy];
    [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate changeToViewport:option previousCalloutIndex:calloutIndex contentOffset:animatedCopy animated:x, y];
    transportControlsRep = self->_transportControlsRep;

    [(THWInteractiveImageRadioPanelRep *)transportControlsRep setSelectedCallout:option];
  }
}

@end