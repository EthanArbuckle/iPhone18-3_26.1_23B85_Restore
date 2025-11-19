@interface PDFBlockQueuePair
+ (id)blockQueuePairWithBlock:(id)a3 andQueue:(id)a4;
- (PDFBlockQueuePair)initWithBlock:(id)a3 andQueue:(id)a4;
@end

@implementation PDFBlockQueuePair

+ (id)blockQueuePairWithBlock:(id)a3 andQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PDFBlockQueuePair alloc] initWithBlock:v6 andQueue:v5];

  return v7;
}

- (PDFBlockQueuePair)initWithBlock:(id)a3 andQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PDFBlockQueuePair;
  v8 = [(PDFBlockQueuePair *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_queue, a4);
  }

  return v8;
}

@end