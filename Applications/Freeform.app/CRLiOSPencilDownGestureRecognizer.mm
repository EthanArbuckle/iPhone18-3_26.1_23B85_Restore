@interface CRLiOSPencilDownGestureRecognizer
- (CRLiOSPencilDownGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CRLiOSPencilDownGestureRecognizer

- (CRLiOSPencilDownGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = CRLiOSPencilDownGestureRecognizer;
  v4 = [(CRLiOSPencilDownGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(CRLiOSPencilDownGestureRecognizer *)v4 setAllowedTouchTypes:&off_1018E10F8];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  anyObject = [began anyObject];
  type = [anyObject type];

  if (type != 2)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C880();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C894(v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C940();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v9, v7);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSPencilDownGestureRecognizer touchesBegan:withEvent:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSPencilDownGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:25 isFatal:0 description:"Should only see pencil input to this gesture."];
  }

  [(CRLiOSPencilDownGestureRecognizer *)self setState:3];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (![(CRLiOSPencilDownGestureRecognizer *)self state:moved])
  {

    [(CRLiOSPencilDownGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (![(CRLiOSPencilDownGestureRecognizer *)self state:ended])
  {

    [(CRLiOSPencilDownGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (![(CRLiOSPencilDownGestureRecognizer *)self state:cancelled])
  {

    [(CRLiOSPencilDownGestureRecognizer *)self setState:5];
  }
}

@end