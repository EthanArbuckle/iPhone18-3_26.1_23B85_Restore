@interface BCSNFCReaderURLRecord
- (BCSNFCReaderURLRecord)initWithURL:(id)a3 message:(id)a4;
@end

@implementation BCSNFCReaderURLRecord

- (BCSNFCReaderURLRecord)initWithURL:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = BCSNFCReaderURLRecord;
  v9 = [(BCSNFCReaderURLRecord *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_message, a4);
    v11 = v10;
  }

  return v10;
}

@end