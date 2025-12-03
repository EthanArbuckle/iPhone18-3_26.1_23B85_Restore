@interface THWPageIndicator
- (THWPageIndicator)initWithLayer:(id)layer;
- (void)dealloc;
@end

@implementation THWPageIndicator

- (THWPageIndicator)initWithLayer:(id)layer
{
  v7.receiver = self;
  v7.super_class = THWPageIndicator;
  v4 = [(THWPageIndicator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWPageIndicator *)v4 setLayer:layer];
  }

  return v5;
}

- (void)dealloc
{
  [(THWPageIndicator *)self setLayer:0];
  v3.receiver = self;
  v3.super_class = THWPageIndicator;
  [(THWPageIndicator *)&v3 dealloc];
}

@end