@interface WKModelInteractionGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation WKModelInteractionGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(WKModelInteractionGestureRecognizer *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [-[WKModelInteractionGestureRecognizer view](self "view")];

    [v7 touchesBegan:began withEvent:event];
  }

  else
  {

    [(WKModelInteractionGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [(WKModelInteractionGestureRecognizer *)self setState:2];
  v7 = [-[WKModelInteractionGestureRecognizer view](self "view")];

  [v7 touchesMoved:moved withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([ended isEqualToSet:{objc_msgSend(event, "touchesForGestureRecognizer:", self)}])
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  [(WKModelInteractionGestureRecognizer *)self setState:v7];
  v8 = [-[WKModelInteractionGestureRecognizer view](self "view")];

  [v8 touchesEnded:ended withEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([cancelled isEqualToSet:{objc_msgSend(event, "touchesForGestureRecognizer:", self)}])
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  [(WKModelInteractionGestureRecognizer *)self setState:v7];
  v8 = [-[WKModelInteractionGestureRecognizer view](self "view")];

  [v8 touchesCancelled:cancelled withEvent:event];
}

@end