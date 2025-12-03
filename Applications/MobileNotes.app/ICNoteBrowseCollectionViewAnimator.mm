@interface ICNoteBrowseCollectionViewAnimator
+ (id)animator;
+ (id)springAnimation;
- (ICNoteBrowseCollectionViewAnimator)initWithCoder:(id)coder;
- (UISpringTimingParameters)springTimingParameters;
- (id)commonInit;
@end

@implementation ICNoteBrowseCollectionViewAnimator

+ (id)animator
{
  v2 = [self alloc];
  commonInit = [v2 commonInit];

  return commonInit;
}

- (id)commonInit
{
  selfCopy = self;
  springAnimation = [objc_opt_class() springAnimation];
  [springAnimation settlingDuration];
  v4 = [(ICNoteBrowseCollectionViewAnimator *)selfCopy initWithDuration:selfCopy timingParameters:?];

  return v4;
}

- (ICNoteBrowseCollectionViewAnimator)initWithCoder:(id)coder
{
  commonInit = [(ICNoteBrowseCollectionViewAnimator *)self commonInit];

  return commonInit;
}

- (UISpringTimingParameters)springTimingParameters
{
  springAnimation = [objc_opt_class() springAnimation];
  v3 = [UISpringTimingParameters alloc];
  [springAnimation mass];
  v5 = v4;
  [springAnimation stiffness];
  v7 = v6;
  [springAnimation damping];
  v9 = v8;
  [springAnimation initialVelocity];
  v11 = v10;
  [springAnimation initialVelocity];
  v13 = [v3 initWithMass:v5 stiffness:v7 damping:v9 initialVelocity:{v11, v12}];

  return v13;
}

+ (id)springAnimation
{
  v2 = objc_alloc_init(CASpringAnimation);
  [v2 setStiffness:350.0];
  [v2 setDamping:31.0];

  return v2;
}

@end