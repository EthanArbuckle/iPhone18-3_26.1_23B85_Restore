@interface UIView
- (void)addSubviewToBounds:(id)a3 with:(UIEdgeInsets)a4;
@end

@implementation UIView

- (void)addSubviewToBounds:(id)a3 with:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = self;
  v11 = sub_1000834C0(v9, v10, top, left, bottom, right);
  v13 = v12;
  v15 = v14;
  v17 = v16;
}

@end