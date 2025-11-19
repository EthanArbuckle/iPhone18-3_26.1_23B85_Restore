@interface BKCustomAnimationPropertiesView
- (BKCustomAnimationPropertiesView)initWithFrame:(CGRect)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)addAnimatablePropertyWithKey:(id)a3;
@end

@implementation BKCustomAnimationPropertiesView

- (BKCustomAnimationPropertiesView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = BKCustomAnimationPropertiesView;
  v3 = [(BKCustomAnimationPropertiesView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NSMutableSet set];
    animatableKeys = v3->_animatableKeys;
    v3->_animatableKeys = v4;
  }

  return v3;
}

- (void)addAnimatablePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = [(BKCustomAnimationPropertiesView *)self animatableKeys];
  [v5 addObject:v4];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKCustomAnimationPropertiesView;
  if ([(BKCustomAnimationPropertiesView *)&v8 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(BKCustomAnimationPropertiesView *)self animatableKeys];
    v5 = [v6 containsObject:v4];
  }

  return v5;
}

@end