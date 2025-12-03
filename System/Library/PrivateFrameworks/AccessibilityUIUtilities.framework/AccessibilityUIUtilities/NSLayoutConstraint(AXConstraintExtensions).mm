@interface NSLayoutConstraint(AXConstraintExtensions)
- (id)ax_copyWithPriority:()AXConstraintExtensions;
@end

@implementation NSLayoutConstraint(AXConstraintExtensions)

- (id)ax_copyWithPriority:()AXConstraintExtensions
{
  v4 = MEMORY[0x1E696ACD8];
  firstItem = [self firstItem];
  firstAttribute = [self firstAttribute];
  relation = [self relation];
  secondItem = [self secondItem];
  secondAttribute = [self secondAttribute];
  [self multiplier];
  v11 = v10;
  [self constant];
  v13 = [v4 constraintWithItem:firstItem attribute:firstAttribute relatedBy:relation toItem:secondItem attribute:secondAttribute multiplier:v11 constant:v12];

  *&v14 = a2;
  [v13 setPriority:v14];

  return v13;
}

@end