@interface BKCustomAnimationPropertiesView
- (BKCustomAnimationPropertiesView)initWithFrame:(CGRect)frame;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (void)addAnimatablePropertyWithKey:(id)key;
@end

@implementation BKCustomAnimationPropertiesView

- (BKCustomAnimationPropertiesView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BKCustomAnimationPropertiesView;
  v3 = [(BKCustomAnimationPropertiesView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSMutableSet set];
    animatableKeys = v3->_animatableKeys;
    v3->_animatableKeys = v4;
  }

  return v3;
}

- (void)addAnimatablePropertyWithKey:(id)key
{
  keyCopy = key;
  animatableKeys = [(BKCustomAnimationPropertiesView *)self animatableKeys];
  [animatableKeys addObject:keyCopy];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v8.receiver = self;
  v8.super_class = BKCustomAnimationPropertiesView;
  if ([(BKCustomAnimationPropertiesView *)&v8 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    animatableKeys = [(BKCustomAnimationPropertiesView *)self animatableKeys];
    v5 = [animatableKeys containsObject:keyCopy];
  }

  return v5;
}

@end