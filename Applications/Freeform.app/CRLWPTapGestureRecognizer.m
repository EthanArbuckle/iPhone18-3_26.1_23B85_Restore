@interface CRLWPTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CRLWPTapGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = CRLWPTapGestureRecognizer;
  v6 = a3;
  [(CRLWPTapGestureRecognizer *)&v8 touchesBegan:v6 withEvent:a4];
  v7 = [v6 anyObject];

  self->_tapCount = [v7 tapCount];
  -[CRLWPTapGestureRecognizer setInputType:](self, "setInputType:", sub_10042B6C0([v7 type]));
}

- (void)reset
{
  v11.receiver = self;
  v11.super_class = CRLWPTapGestureRecognizer;
  [(CRLWPTapGestureRecognizer *)&v11 reset];
  self->_tapCount = 0;
  v3 = [(CRLWPTapGestureRecognizer *)self delegate];
  v10 = sub_1003035DC(v3, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLGestureDelegate);

  [v10 didReset:self];
}

@end