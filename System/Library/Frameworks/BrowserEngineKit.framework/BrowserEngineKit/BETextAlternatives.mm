@interface BETextAlternatives
- (id)_initWithNSTextAlternatives:(id)a3;
- (void)noteSelectedAlternativeString:(id)a3;
@end

@implementation BETextAlternatives

- (id)_initWithNSTextAlternatives:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BETextAlternatives;
  v6 = [(BETextAlternatives *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingTextAlternatives, a3);
  }

  return v7;
}

- (void)noteSelectedAlternativeString:(id)a3
{
  v4 = a3;
  v5 = [(BETextAlternatives *)self backingTextAlternatives];
  [v5 noteSelectedAlternativeString:v4];
}

@end