@interface APAdRequestContents
- (APAdRequestContents)initWithContext:(id)context contentTypes:(id)types deliverEntireBatch:(BOOL)batch;
@end

@implementation APAdRequestContents

- (APAdRequestContents)initWithContext:(id)context contentTypes:(id)types deliverEntireBatch:(BOOL)batch
{
  contextCopy = context;
  typesCopy = types;
  v22.receiver = self;
  v22.super_class = APAdRequestContents;
  v11 = [(APAdRequestContents *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_apContext, context);
    objc_storeStrong(&v12->_contentTypes, types);
    v12->_deliverEntireBatch = batch;
    v19 = objc_msgSend_activeClientInfo(MEMORY[0x1E6986190], v13, v14, v15, v16, v17, v18);
    clientInfo = v12->_clientInfo;
    v12->_clientInfo = v19;
  }

  return v12;
}

@end