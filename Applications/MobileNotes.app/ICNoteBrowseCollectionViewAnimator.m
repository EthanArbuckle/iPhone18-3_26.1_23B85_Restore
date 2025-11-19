@interface ICNoteBrowseCollectionViewAnimator
+ (id)animator;
+ (id)springAnimation;
- (ICNoteBrowseCollectionViewAnimator)initWithCoder:(id)a3;
- (UISpringTimingParameters)springTimingParameters;
- (id)commonInit;
@end

@implementation ICNoteBrowseCollectionViewAnimator

+ (id)animator
{
  v2 = [a1 alloc];
  v3 = [v2 commonInit];

  return v3;
}

- (id)commonInit
{
  v2 = self;
  v3 = [objc_opt_class() springAnimation];
  [v3 settlingDuration];
  v4 = [(ICNoteBrowseCollectionViewAnimator *)v2 initWithDuration:v2 timingParameters:?];

  return v4;
}

- (ICNoteBrowseCollectionViewAnimator)initWithCoder:(id)a3
{
  v4 = [(ICNoteBrowseCollectionViewAnimator *)self commonInit];

  return v4;
}

- (UISpringTimingParameters)springTimingParameters
{
  v2 = [objc_opt_class() springAnimation];
  v3 = [UISpringTimingParameters alloc];
  [v2 mass];
  v5 = v4;
  [v2 stiffness];
  v7 = v6;
  [v2 damping];
  v9 = v8;
  [v2 initialVelocity];
  v11 = v10;
  [v2 initialVelocity];
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