@interface _MSConversationState
- (_MSConversationState)init;
- (_MSConversationState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MSConversationState

- (_MSConversationState)init
{
  v3.receiver = self;
  v3.super_class = _MSConversationState;
  return [(_MSConversationState *)&v3 init];
}

- (id)description
{
  activeMessage = self->_activeMessage;
  conversationID = self->_conversationID;
  senderIdentifier = self->_senderIdentifier;
  recipientIdentifiers = self->_recipientIdentifiers;
  conversationIdentifier = self->_conversationIdentifier;
  iMessageLoginID = self->_iMessageLoginID;
  senderAddress = self->_senderAddress;
  recipientAddresses = self->_recipientAddresses;
  if (self->_isiMessage)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_isBusiness)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_isUltraConstrainedNetwork)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"conversationID: %@, senderIdentifier: %@, recipientIdentifiers: %@, activeMessage: %@, conversationIdentifier: %@, iMessageLoginID: %@, senderAddress: %@, recipientAddresses: %@, isiMessage: %@, isBusiness: %@, isUltraConstrainedNetwork", conversationID, senderIdentifier, recipientIdentifiers, activeMessage, conversationIdentifier, iMessageLoginID, senderAddress, recipientAddresses, v10, v11, v12];
}

- (_MSConversationState)initWithCoder:(id)coder
{
  v49[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = _MSConversationState;
  v5 = [(_MSConversationState *)&v45 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_conversationEngramID"];
    conversationEngramID = v5->_conversationEngramID;
    v5->_conversationEngramID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_senderIdentifier"];
    senderIdentifier = v5->_senderIdentifier;
    v5->_senderIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_recipientIdentifiers"];
    recipientIdentifiers = v5->_recipientIdentifiers;
    v5->_recipientIdentifiers = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activeMessage"];
    activeMessage = v5->_activeMessage;
    v5->_activeMessage = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cid"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lid"];
    iMessageLoginID = v5->_iMessageLoginID;
    v5->_iMessageLoginID = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sad"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v25;

    v27 = MEMORY[0x1E695DFD8];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v29 = [v27 setWithArray:v28];

    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"_rad"];
    recipientAddresses = v5->_recipientAddresses;
    v5->_recipientAddresses = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smry"];
    generatedSummary = v5->_generatedSummary;
    v5->_generatedSummary = v32;

    v34 = MEMORY[0x1E695DFD8];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v47[2] = objc_opt_class();
    v47[3] = objc_opt_class();
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    v36 = [v34 setWithArray:v35];

    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"_ccxt"];
    conversationContext = v5->_conversationContext;
    v5->_conversationContext = v37;

    v5->_isiMessage = [coderCopy decodeBoolForKey:@"_isiMessage"];
    v5->_isBusiness = [coderCopy decodeBoolForKey:@"_isBusiness"];
    v5->_isUltraConstrainedNetwork = [coderCopy decodeBoolForKey:@"_isUltraConstrainedNetwork"];
    v39 = MEMORY[0x1E695DFD8];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v41 = [v39 setWithArray:v40];

    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"_dap"];
    draftAssetArchives = v5->_draftAssetArchives;
    v5->_draftAssetArchives = v42;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  conversationID = self->_conversationID;
  coderCopy = coder;
  [coderCopy encodeObject:conversationID forKey:@"_conversationID"];
  [coderCopy encodeObject:self->_conversationEngramID forKey:@"_conversationEngramID"];
  [coderCopy encodeObject:self->_groupID forKey:@"_groupID"];
  [coderCopy encodeObject:self->_iMessageLoginID forKey:@"_lid"];
  [coderCopy encodeObject:self->_senderIdentifier forKey:@"_senderIdentifier"];
  [coderCopy encodeObject:self->_recipientIdentifiers forKey:@"_recipientIdentifiers"];
  [coderCopy encodeObject:self->_activeMessage forKey:@"_activeMessage"];
  [coderCopy encodeObject:self->_conversationIdentifier forKey:@"_cid"];
  [coderCopy encodeObject:self->_senderAddress forKey:@"_sad"];
  [coderCopy encodeObject:self->_recipientAddresses forKey:@"_rad"];
  [coderCopy encodeObject:self->_generatedSummary forKey:@"_smry"];
  [coderCopy encodeObject:self->_conversationContext forKey:@"_ccxt"];
  [coderCopy encodeBool:self->_isiMessage forKey:@"_isiMessage"];
  [coderCopy encodeBool:self->_isBusiness forKey:@"_isBusiness"];
  [coderCopy encodeBool:self->_isUltraConstrainedNetwork forKey:@"_isUltraConstrainedNetwork"];
  [coderCopy encodeObject:self->_draftAssetArchives forKey:@"_dap"];
}

@end