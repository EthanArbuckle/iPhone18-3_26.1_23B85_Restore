@interface ASXConnection
- (id)_extractor;
- (void)getSignature:(id)signature;
- (void)reset;
@end

@implementation ASXConnection

- (void)reset
{
  _extractor = [(ASXConnection *)self _extractor];
  [_extractor reset];
}

- (void)getSignature:(id)signature
{
  signatureCopy = signature;
  _extractor = [(ASXConnection *)self _extractor];
  currentSignature = [_extractor currentSignature];

  if (signatureCopy)
  {
    signatureCopy[2](signatureCopy, currentSignature);
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