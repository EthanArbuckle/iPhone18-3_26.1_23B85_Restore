@interface NSLayoutDimension(NSLayoutDimension_AVKitAdditions)
- (id)avkit_constraintEqualToConstant:()NSLayoutDimension_AVKitAdditions priority:;
- (id)avkit_constraintGreaterThanOrEqualToConstant:()NSLayoutDimension_AVKitAdditions priority:;
- (id)avkit_constraintLessThanOrEqualToConstant:()NSLayoutDimension_AVKitAdditions priority:;
@end

@implementation NSLayoutDimension(NSLayoutDimension_AVKitAdditions)

- (id)avkit_constraintLessThanOrEqualToConstant:()NSLayoutDimension_AVKitAdditions priority:
{
  v4 = [a1 constraintLessThanOrEqualToConstant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)avkit_constraintGreaterThanOrEqualToConstant:()NSLayoutDimension_AVKitAdditions priority:
{
  v4 = [a1 constraintGreaterThanOrEqualToConstant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)avkit_constraintEqualToConstant:()NSLayoutDimension_AVKitAdditions priority:
{
  v4 = [a1 constraintEqualToConstant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end