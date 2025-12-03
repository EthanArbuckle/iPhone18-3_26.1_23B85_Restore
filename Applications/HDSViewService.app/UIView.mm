@interface UIView
- (void)addSubviewToBounds:(id)bounds with:(UIEdgeInsets)with;
@end

@implementation UIView

- (void)addSubviewToBounds:(id)bounds with:(UIEdgeInsets)with
{
  right = with.right;
  bottom = with.bottom;
  left = with.left;
  top = with.top;
  boundsCopy = bounds;
  selfCopy = self;
  v11 = sub_1000834C0(boundsCopy, selfCopy, top, left, bottom, right);
  v13 = v12;
  v15 = v14;
  v17 = v16;
}

@end