@interface THWInteractiveImageWidgetController
- (THWInteractiveImageWidgetController)initWithLayout:(id)a3;
- (void)dealloc;
- (void)selectOption:(unint64_t)a3 contentOffset:(CGPoint)a4 force:(BOOL)a5 animated:(BOOL)a6;
- (void)selectOption:(unint64_t)a3 force:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation THWInteractiveImageWidgetController

- (THWInteractiveImageWidgetController)initWithLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = THWInteractiveImageWidgetController;
  result = [(THWInteractiveImageWidgetController *)&v5 init];
  if (result)
  {
    result->_layout = a3;
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

- (void)selectOption:(unint64_t)a3 force:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  calloutIndex = self->_calloutIndex;
  layout = self->_layout;
  if (calloutIndex == a3)
  {
    v11 = v8;
  }

  else
  {
    v11 = a3;
  }

  [objc_msgSend(-[THWInteractiveImageWidgetLayout info](layout "info")];

  [(THWInteractiveImageWidgetController *)self selectOption:v11 contentOffset:v6 force:v5 animated:?];
}

- (void)selectOption:(unint64_t)a3 contentOffset:(CGPoint)a4 force:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a5 || [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate userInteractionEnabled])
  {
    [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate setUserInteractionEnabled:0];
    calloutIndex = self->_calloutIndex;
    layout = self->_layout;
    self->_calloutIndex = a3;
    [(THWInteractiveImageWidgetLayout *)layout setSelectedCalloutIndex:a3];
    [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate selectedCalloutIndexUpdatedAnimated:v6];
    [(THWInteractiveImageWidgetControllerDelegate *)self->_delegate changeToViewport:a3 previousCalloutIndex:calloutIndex contentOffset:v6 animated:x, y];
    transportControlsRep = self->_transportControlsRep;

    [(THWInteractiveImageRadioPanelRep *)transportControlsRep setSelectedCallout:a3];
  }
}

@end