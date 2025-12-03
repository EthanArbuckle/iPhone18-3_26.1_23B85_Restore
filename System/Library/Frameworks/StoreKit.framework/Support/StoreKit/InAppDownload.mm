@interface InAppDownload
- (InAppDownload)initWithIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier info:(id)info;
@end

@implementation InAppDownload

- (InAppDownload)initWithIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier info:(id)info
{
  identifierCopy = identifier;
  transactionIdentifierCopy = transactionIdentifier;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = InAppDownload;
  v12 = [(InAppDownload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_info, info);
    objc_storeStrong(&v13->_transactionIdentifier, transactionIdentifier);
  }

  return v13;
}

@end