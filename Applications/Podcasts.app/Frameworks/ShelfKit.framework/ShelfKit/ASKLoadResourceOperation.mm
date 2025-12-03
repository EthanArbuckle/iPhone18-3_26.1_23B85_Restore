@interface ASKLoadResourceOperation
- (void)didCompleteWithResource:(id)resource error:(id)error;
@end

@implementation ASKLoadResourceOperation

- (void)didCompleteWithResource:(id)resource error:(id)error
{
  resourceCopy = resource;
  errorCopy = error;
  outputBlock = [(ASKLoadResourceOperation *)self outputBlock];
  v8 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, resourceCopy, errorCopy);
    [(ASKLoadResourceOperation *)self setOutputBlock:0];
  }
}

@end