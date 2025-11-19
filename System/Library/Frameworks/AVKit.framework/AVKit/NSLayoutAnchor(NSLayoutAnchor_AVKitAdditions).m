@interface NSLayoutAnchor(NSLayoutAnchor_AVKitAdditions)
- (id)avkit_constraintEqualToAnchor:()NSLayoutAnchor_AVKitAdditions constant:priority:;
- (id)avkit_constraintEqualToAnchor:()NSLayoutAnchor_AVKitAdditions priority:;
- (id)avkit_constraintGreaterThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions constant:priority:;
- (id)avkit_constraintGreaterThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions priority:;
- (id)avkit_constraintLessThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions constant:priority:;
- (id)avkit_constraintLessThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions priority:;
@end

@implementation NSLayoutAnchor(NSLayoutAnchor_AVKitAdditions)

- (id)avkit_constraintLessThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions constant:priority:
{
  v4 = [a1 constraintLessThanOrEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)avkit_constraintGreaterThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions constant:priority:
{
  v4 = [a1 constraintGreaterThanOrEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)avkit_constraintEqualToAnchor:()NSLayoutAnchor_AVKitAdditions constant:priority:
{
  v4 = [a1 constraintEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)avkit_constraintLessThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions priority:
{
  v3 = [a1 constraintLessThanOrEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)avkit_constraintGreaterThanOrEqualToAnchor:()NSLayoutAnchor_AVKitAdditions priority:
{
  v3 = [a1 constraintGreaterThanOrEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)avkit_constraintEqualToAnchor:()NSLayoutAnchor_AVKitAdditions priority:
{
  v3 = [a1 constraintEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

@end