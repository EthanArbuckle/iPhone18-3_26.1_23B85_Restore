@interface CRLStreamDataCompression
- (BOOL)handleData:(id)a3 isDone:(BOOL)a4;
- (CRLStreamDataCompression)initWithAlgorithm:(int)a3 operation:(int)a4;
- (void)setHandler:(id)a3;
@end

@implementation CRLStreamDataCompression

- (CRLStreamDataCompression)initWithAlgorithm:(int)a3 operation:(int)a4
{
  v8.receiver = self;
  v8.super_class = CRLStreamDataCompression;
  v4 = [(CRLStreamCompression *)&v8 initWithAlgorithm:*&a3 operation:*&a4];
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

- (BOOL)handleData:(id)a3 isDone:(BOOL)a4
{
  concat = dispatch_data_create_concat(self->_outputData, a3);
  outputData = self->_outputData;
  self->_outputData = concat;

  return 1;
}

- (void)setHandler:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003921BC;
  v6[3] = &unk_10185AB80;
  v7 = a3;
  v5.receiver = self;
  v5.super_class = CRLStreamDataCompression;
  v4 = v7;
  [(CRLStreamCompression *)&v5 setHandler:v6];
}

@end