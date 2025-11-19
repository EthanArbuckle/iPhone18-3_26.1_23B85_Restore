@interface CLKSizeScalePair
+ (id)pairWithSizeClass:(unint64_t)a3 scale:(id)a4;
- (CLKSizeScalePair)initWithSizeClass:(unint64_t)a3 scale:(id)a4;
@end

@implementation CLKSizeScalePair

+ (id)pairWithSizeClass:(unint64_t)a3 scale:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithSizeClass:a3 scale:v6];

  return v7;
}

- (CLKSizeScalePair)initWithSizeClass:(unint64_t)a3 scale:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CLKSizeScalePair;
  v8 = [(CLKSizeScalePair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sizeClass = a3;
    objc_storeStrong(&v8->_scale, a4);
  }

  return v9;
}

@end