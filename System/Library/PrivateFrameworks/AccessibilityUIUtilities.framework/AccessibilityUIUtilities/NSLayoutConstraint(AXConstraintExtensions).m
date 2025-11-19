@interface NSLayoutConstraint(AXConstraintExtensions)
- (id)ax_copyWithPriority:()AXConstraintExtensions;
@end

@implementation NSLayoutConstraint(AXConstraintExtensions)

- (id)ax_copyWithPriority:()AXConstraintExtensions
{
  v4 = MEMORY[0x1E696ACD8];
  v5 = [a1 firstItem];
  v6 = [a1 firstAttribute];
  v7 = [a1 relation];
  v8 = [a1 secondItem];
  v9 = [a1 secondAttribute];
  [a1 multiplier];
  v11 = v10;
  [a1 constant];
  v13 = [v4 constraintWithItem:v5 attribute:v6 relatedBy:v7 toItem:v8 attribute:v9 multiplier:v11 constant:v12];

  *&v14 = a2;
  [v13 setPriority:v14];

  return v13;
}

@end