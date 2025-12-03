@interface BCSNFCReaderURLRecord
- (BCSNFCReaderURLRecord)initWithURL:(id)l message:(id)message;
@end

@implementation BCSNFCReaderURLRecord

- (BCSNFCReaderURLRecord)initWithURL:(id)l message:(id)message
{
  lCopy = l;
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = BCSNFCReaderURLRecord;
  v9 = [(BCSNFCReaderURLRecord *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_message, message);
    v11 = v10;
  }

  return v10;
}

@end