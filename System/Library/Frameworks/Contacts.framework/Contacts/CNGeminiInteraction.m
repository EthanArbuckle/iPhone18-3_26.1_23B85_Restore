@interface CNGeminiInteraction
- (CNGeminiInteraction)initWithTransport:(int64_t)a3 directionality:(int64_t)a4 destinationHandle:(id)a5 destinationContactIdentifier:(id)a6;
@end

@implementation CNGeminiInteraction

- (CNGeminiInteraction)initWithTransport:(int64_t)a3 directionality:(int64_t)a4 destinationHandle:(id)a5 destinationContactIdentifier:(id)a6
{
  v10 = a5;
  v11 = a6;
  v20.receiver = self;
  v20.super_class = CNGeminiInteraction;
  v12 = [(CNGeminiInteraction *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_transport = a3;
    v12->_directionality = a4;
    v14 = [v10 copy];
    handle = v13->_handle;
    v13->_handle = v14;

    v16 = [v11 copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

@end