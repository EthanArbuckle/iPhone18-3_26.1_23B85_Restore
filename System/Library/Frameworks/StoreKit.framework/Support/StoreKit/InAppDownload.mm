@interface InAppDownload
- (InAppDownload)initWithIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5;
@end

@implementation InAppDownload

- (InAppDownload)initWithIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = InAppDownload;
  v12 = [(InAppDownload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_info, a5);
    objc_storeStrong(&v13->_transactionIdentifier, a4);
  }

  return v13;
}

@end