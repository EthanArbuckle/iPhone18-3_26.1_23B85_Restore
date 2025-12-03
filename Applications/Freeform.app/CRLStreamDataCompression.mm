@interface CRLStreamDataCompression
- (BOOL)handleData:(id)data isDone:(BOOL)done;
- (CRLStreamDataCompression)initWithAlgorithm:(int)algorithm operation:(int)operation;
- (void)setHandler:(id)handler;
@end

@implementation CRLStreamDataCompression

- (CRLStreamDataCompression)initWithAlgorithm:(int)algorithm operation:(int)operation
{
  v8.receiver = self;
  v8.super_class = CRLStreamDataCompression;
  v4 = [(CRLStreamCompression *)&v8 initWithAlgorithm:*&algorithm operation:*&operation];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_outputData, &_dispatch_data_empty);
    v7.receiver = v5;
    v7.super_class = CRLStreamDataCompression;
    [(CRLStreamCompression *)&v7 setHandler:&stru_10185AB58];
  }

  return v5;
}

- (BOOL)handleData:(id)data isDone:(BOOL)done
{
  concat = dispatch_data_create_concat(self->_outputData, data);
  outputData = self->_outputData;
  self->_outputData = concat;

  return 1;
}

- (void)setHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003921BC;
  v6[3] = &unk_10185AB80;
  handlerCopy = handler;
  v5.receiver = self;
  v5.super_class = CRLStreamDataCompression;
  v4 = handlerCopy;
  [(CRLStreamCompression *)&v5 setHandler:v6];
}

@end