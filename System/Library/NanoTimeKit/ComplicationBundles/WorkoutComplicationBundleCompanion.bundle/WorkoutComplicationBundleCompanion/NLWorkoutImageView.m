@interface NLWorkoutImageView
- (NLWorkoutImageView)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = a6;
  if (a6 == &kNLWorkoutImageViewKVOContext)
  {
    v9 = [(NLWorkoutImageView *)v18 tintColor];
    v6 = v9;
    v7 = [v9 CGColor];
    v8 = [(NLWorkoutImageView *)v18 layer];
    [v8 setContentsMultiplyColor:v7];
  }

  else
  {
    v13.receiver = v18;
    v13.super_class = NLWorkoutImageView;
    [(NLWorkoutImageView *)&v13 observeValueForKeyPath:location[0] ofObject:v16 change:v15 context:v14];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(NLWorkoutImageView *)self removeObserver:self forKeyPath:@"layer.contentsMultiplyColor"];
  v2.receiver = v4;
  v2.super_class = NLWorkoutImageView;
  [(NLWorkoutImageView *)&v2 dealloc];
}

- (void)startAnimating
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = NLWorkoutImageView;
  [(NLWorkoutImageView *)&v3 startAnimating];
  v2 = [(NLWorkoutImageView *)v5 layer];
  [v2 removeAnimationForKey:@"contentsMultiplyColor"];
}

@end