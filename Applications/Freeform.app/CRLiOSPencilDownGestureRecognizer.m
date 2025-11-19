@interface CRLiOSPencilDownGestureRecognizer
- (CRLiOSPencilDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSPencilDownGestureRecognizer

- (CRLiOSPencilDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = CRLiOSPencilDownGestureRecognizer;
  v4 = [(CRLiOSPencilDownGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(CRLiOSPencilDownGestureRecognizer *)v4 setAllowedTouchTypes:&off_1018E10F8];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  v6 = [v5 type];

  if (v6 != 2)
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if (![(CRLiOSPencilDownGestureRecognizer *)self state:a3])
  {

    [(CRLiOSPencilDownGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (![(CRLiOSPencilDownGestureRecognizer *)self state:a3])
  {

    [(CRLiOSPencilDownGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if (![(CRLiOSPencilDownGestureRecognizer *)self state:a3])
  {

    [(CRLiOSPencilDownGestureRecognizer *)self setState:5];
  }
}

@end