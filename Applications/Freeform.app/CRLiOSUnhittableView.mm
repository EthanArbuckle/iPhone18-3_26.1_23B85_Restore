@interface CRLiOSUnhittableView
- (CRLiOSUnhittableView)init;
- (CRLiOSUnhittableView)initWithCoder:(id)a3;
- (CRLiOSUnhittableView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
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

- (CRLiOSUnhittableView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLiOSUnhittableView;
  v3 = [(CRLiOSUnhittableView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSUnhittableView *)v3 p_commonInit];
  }

  return v4;
}

- (CRLiOSUnhittableView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CRLiOSUnhittableView;
  v3 = [(CRLiOSUnhittableView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CRLiOSUnhittableView;
  v5 = [(CRLiOSUnhittableView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end