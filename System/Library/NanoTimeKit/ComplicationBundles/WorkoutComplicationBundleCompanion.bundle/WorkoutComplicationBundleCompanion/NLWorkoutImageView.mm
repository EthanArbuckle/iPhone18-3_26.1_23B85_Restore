@interface NLWorkoutImageView
- (NLWorkoutImageView)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startAnimating;
@end

@implementation NLWorkoutImageView

- (NLWorkoutImageView)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = NLWorkoutImageView;
  v6 = [(NLWorkoutImageView *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(NLWorkoutImageView *)v6 addObserver:v6 forKeyPath:@"layer.contentsMultiplyColor" options:0 context:&kNLWorkoutImageViewKVOContext];
  }

  v3 = v6;
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v16 = 0;
  objc_storeStrong(&v16, object);
  v15 = 0;
  objc_storeStrong(&v15, change);
  contextCopy = context;
  if (context == &kNLWorkoutImageViewKVOContext)
  {
    tintColor = [(NLWorkoutImageView *)selfCopy tintColor];
    v6 = tintColor;
    cGColor = [tintColor CGColor];
    layer = [(NLWorkoutImageView *)selfCopy layer];
    [layer setContentsMultiplyColor:cGColor];
  }

  else
  {
    v13.receiver = selfCopy;
    v13.super_class = NLWorkoutImageView;
    [(NLWorkoutImageView *)&v13 observeValueForKeyPath:location[0] ofObject:v16 change:v15 context:contextCopy];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(NLWorkoutImageView *)self removeObserver:self forKeyPath:@"layer.contentsMultiplyColor"];
  v2.receiver = selfCopy;
  v2.super_class = NLWorkoutImageView;
  [(NLWorkoutImageView *)&v2 dealloc];
}

- (void)startAnimating
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = NLWorkoutImageView;
  [(NLWorkoutImageView *)&v3 startAnimating];
  layer = [(NLWorkoutImageView *)selfCopy layer];
  [layer removeAnimationForKey:@"contentsMultiplyColor"];
}

@end