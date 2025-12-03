@interface ASKLoadResourceOperation
- (ASKLoadResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer;
- (void)didCompleteWithResource:(id)resource error:(id)error;
@end

@implementation ASKLoadResourceOperation

- (ASKLoadResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer
{
  v6.receiver = self;
  v6.super_class = ASKLoadResourceOperation;
  return [(ASKLoadResourceOperation *)&v6 init:request];
}

- (void)didCompleteWithResource:(id)resource error:(id)error
{
  resourceCopy = resource;
  errorCopy = error;
  outputBlock = [(ASKLoadResourceOperation *)self outputBlock];
  if (outputBlock)
  {
    [(ASKLoadResourceOperation *)self setOutputBlock:0];
    (outputBlock)[2](outputBlock, resourceCopy, errorCopy);
  }
}

@end