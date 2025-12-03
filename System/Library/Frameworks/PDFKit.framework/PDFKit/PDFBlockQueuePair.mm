@interface PDFBlockQueuePair
+ (id)blockQueuePairWithBlock:(id)block andQueue:(id)queue;
- (PDFBlockQueuePair)initWithBlock:(id)block andQueue:(id)queue;
@end

@implementation PDFBlockQueuePair

+ (id)blockQueuePairWithBlock:(id)block andQueue:(id)queue
{
  queueCopy = queue;
  blockCopy = block;
  v7 = [[PDFBlockQueuePair alloc] initWithBlock:blockCopy andQueue:queueCopy];

  return v7;
}

- (PDFBlockQueuePair)initWithBlock:(id)block andQueue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = PDFBlockQueuePair;
  v8 = [(PDFBlockQueuePair *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(blockCopy);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_queue, queue);
  }

  return v8;
}

@end