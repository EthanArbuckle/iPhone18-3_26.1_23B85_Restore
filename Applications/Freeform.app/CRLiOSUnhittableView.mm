@interface CRLiOSUnhittableView
- (CRLiOSUnhittableView)init;
- (CRLiOSUnhittableView)initWithCoder:(id)coder;
- (CRLiOSUnhittableView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)p_commonInit;
@end

@implementation CRLiOSUnhittableView

- (CRLiOSUnhittableView)init
{
  v5.receiver = self;
  v5.super_class = CRLiOSUnhittableView;
  v2 = [(CRLiOSUnhittableView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLiOSUnhittableView *)v2 p_commonInit];
  }

  return v3;
}

- (CRLiOSUnhittableView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLiOSUnhittableView;
  v3 = [(CRLiOSUnhittableView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSUnhittableView *)v3 p_commonInit];
  }

  return v4;
}

- (CRLiOSUnhittableView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CRLiOSUnhittableView;
  v3 = [(CRLiOSUnhittableView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSUnhittableView *)v3 p_commonInit];
  }

  return v4;
}

- (void)p_commonInit
{
  v3 = +[UIColor clearColor];
  [(CRLiOSUnhittableView *)self setBackgroundColor:v3];

  [(CRLiOSUnhittableView *)self setOpaque:0];

  [(CRLiOSUnhittableView *)self setUserInteractionEnabled:1];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CRLiOSUnhittableView;
  v5 = [(CRLiOSUnhittableView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end