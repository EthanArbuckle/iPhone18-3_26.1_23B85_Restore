@interface LPInertTextView
- (LPInertTextView)init;
@end

@implementation LPInertTextView

- (LPInertTextView)init
{
  v6.receiver = self;
  v6.super_class = LPInertTextView;
  v2 = [(LPInertTextView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(LPInertTextView *)v2 setUserInteractionEnabled:0];
    v4 = v3;
  }

  return v3;
}

@end