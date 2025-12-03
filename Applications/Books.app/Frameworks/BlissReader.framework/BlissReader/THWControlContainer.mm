@interface THWControlContainer
- (THWControlContainer)initWithDelegate:(id)delegate;
- (void)dealloc;
@end

@implementation THWControlContainer

- (THWControlContainer)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = THWControlContainer;
  result = [(THWControlContainer *)&v6 init];
  if (result)
  {
    result->_delegate = delegate;
    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    *&result->_tag = vnegq_f64(v5);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWControlContainer;
  [(THWControlContainer *)&v3 dealloc];
}

@end