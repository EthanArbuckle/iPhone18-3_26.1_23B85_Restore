@interface APAdRequestContents
- (APAdRequestContents)initWithContext:(id)a3 contentTypes:(id)a4 deliverEntireBatch:(BOOL)a5;
@end

@implementation APAdRequestContents

- (APAdRequestContents)initWithContext:(id)a3 contentTypes:(id)a4 deliverEntireBatch:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = APAdRequestContents;
  v11 = [(APAdRequestContents *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_apContext, a3);
    objc_storeStrong(&v12->_contentTypes, a4);
    v12->_deliverEntireBatch = a5;
    v19 = objc_msgSend_activeClientInfo(MEMORY[0x1E6986190], v13, v14, v15, v16, v17, v18);
    clientInfo = v12->_clientInfo;
    v12->_clientInfo = v19;
  }

  return v12;
}

@end