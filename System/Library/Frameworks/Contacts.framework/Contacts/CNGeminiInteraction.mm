@interface CNGeminiInteraction
- (CNGeminiInteraction)initWithTransport:(int64_t)transport directionality:(int64_t)directionality destinationHandle:(id)handle destinationContactIdentifier:(id)identifier;
@end

@implementation CNGeminiInteraction

- (CNGeminiInteraction)initWithTransport:(int64_t)transport directionality:(int64_t)directionality destinationHandle:(id)handle destinationContactIdentifier:(id)identifier
{
  handleCopy = handle;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = CNGeminiInteraction;
  v12 = [(CNGeminiInteraction *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_transport = transport;
    v12->_directionality = directionality;
    v14 = [handleCopy copy];
    handle = v13->_handle;
    v13->_handle = v14;

    v16 = [identifierCopy copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

@end