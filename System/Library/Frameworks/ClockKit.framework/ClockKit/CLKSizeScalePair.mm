@interface CLKSizeScalePair
+ (id)pairWithSizeClass:(unint64_t)class scale:(id)scale;
- (CLKSizeScalePair)initWithSizeClass:(unint64_t)class scale:(id)scale;
@end

@implementation CLKSizeScalePair

+ (id)pairWithSizeClass:(unint64_t)class scale:(id)scale
{
  scaleCopy = scale;
  v7 = [[self alloc] initWithSizeClass:class scale:scaleCopy];

  return v7;
}

- (CLKSizeScalePair)initWithSizeClass:(unint64_t)class scale:(id)scale
{
  scaleCopy = scale;
  v11.receiver = self;
  v11.super_class = CLKSizeScalePair;
  v8 = [(CLKSizeScalePair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sizeClass = class;
    objc_storeStrong(&v8->_scale, scale);
  }

  return v9;
}

@end