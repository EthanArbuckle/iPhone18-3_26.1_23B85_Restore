@interface WKModelInteractionGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation WKModelInteractionGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [(WKModelInteractionGestureRecognizer *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [-[WKModelInteractionGestureRecognizer view](self "view")];

    [v7 touchesBegan:a3 withEvent:a4];
  }

  else
  {

    [(WKModelInteractionGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  [(WKModelInteractionGestureRecognizer *)self setState:2];
  v7 = [-[WKModelInteractionGestureRecognizer view](self "view")];

  [v7 touchesMoved:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([a3 isEqualToSet:{objc_msgSend(a4, "touchesForGestureRecognizer:", self)}])
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  [(WKModelInteractionGestureRecognizer *)self setState:v7];
  v8 = [-[WKModelInteractionGestureRecognizer view](self "view")];

  [v8 touchesEnded:a3 withEvent:a4];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([a3 isEqualToSet:{objc_msgSend(a4, "touchesForGestureRecognizer:", self)}])
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  [(WKModelInteractionGestureRecognizer *)self setState:v7];
  v8 = [-[WKModelInteractionGestureRecognizer view](self "view")];

  [v8 touchesCancelled:a3 withEvent:a4];
}

@end