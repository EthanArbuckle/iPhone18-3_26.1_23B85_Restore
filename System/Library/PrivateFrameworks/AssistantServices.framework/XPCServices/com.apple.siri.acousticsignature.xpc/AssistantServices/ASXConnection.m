@interface ASXConnection
- (id)_extractor;
- (void)getSignature:(id)a3;
- (void)reset;
@end

@implementation ASXConnection

- (void)reset
{
  v2 = [(ASXConnection *)self _extractor];
  [v2 reset];
}

- (void)getSignature:(id)a3
{
  v6 = a3;
  v4 = [(ASXConnection *)self _extractor];
  v5 = [v4 currentSignature];

  if (v6)
  {
    v6[2](v6, v5);
  }
}

- (id)_extractor
{
  extractor = self->_extractor;
  if (!extractor)
  {
    v4 = objc_alloc_init(ASXExtractor);
    v5 = self->_extractor;
    self->_extractor = v4;

    extractor = self->_extractor;
  }

  return extractor;
}

@end