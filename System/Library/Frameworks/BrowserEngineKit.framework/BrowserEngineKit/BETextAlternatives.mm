@interface BETextAlternatives
- (id)_initWithNSTextAlternatives:(id)alternatives;
- (void)noteSelectedAlternativeString:(id)string;
@end

@implementation BETextAlternatives

- (id)_initWithNSTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  v9.receiver = self;
  v9.super_class = BETextAlternatives;
  v6 = [(BETextAlternatives *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingTextAlternatives, alternatives);
  }

  return v7;
}

- (void)noteSelectedAlternativeString:(id)string
{
  stringCopy = string;
  backingTextAlternatives = [(BETextAlternatives *)self backingTextAlternatives];
  [backingTextAlternatives noteSelectedAlternativeString:stringCopy];
}

@end