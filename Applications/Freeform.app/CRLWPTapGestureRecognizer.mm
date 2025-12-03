@interface CRLWPTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CRLWPTapGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = CRLWPTapGestureRecognizer;
  beganCopy = began;
  [(CRLWPTapGestureRecognizer *)&v8 touchesBegan:beganCopy withEvent:event];
  anyObject = [beganCopy anyObject];

  self->_tapCount = [anyObject tapCount];
  -[CRLWPTapGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([anyObject type]));
}

- (void)reset
{
  v11.receiver = self;
  v11.super_class = CRLWPTapGestureRecognizer;
  [(CRLWPTapGestureRecognizer *)&v11 reset];
  self->_tapCount = 0;
  delegate = [(CRLWPTapGestureRecognizer *)self delegate];
  v10 = sub_1003035DC(delegate, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

  [v10 didReset:self];
}

@end