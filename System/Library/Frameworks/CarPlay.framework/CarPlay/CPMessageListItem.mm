@interface CPMessageListItem
- (BOOL)isEqual:(id)equal;
- (CPListTemplate)listTemplate;
- (CPMessageListItem)initWithCoder:(id)coder;
- (CPMessageListItem)initWithConversationIdentifier:(NSString *)conversationIdentifier text:(NSString *)text leadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration trailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration detailText:(NSString *)detailText trailingText:(NSString *)trailingText;
- (CPMessageListItem)initWithFullName:(NSString *)fullName phoneOrEmailAddress:(NSString *)phoneOrEmailAddress leadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration trailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration detailText:(NSString *)detailText trailingText:(NSString *)trailingText;
- (NSString)description;
- (UIImage)leadingDetailTextImage;
- (unint64_t)hash;
- (void)_setNeedsUpdate;
- (void)encodeWithCoder:(id)coder;
- (void)setConversationIdentifier:(NSString *)conversationIdentifier;
- (void)setDetailText:(NSString *)detailText;
- (void)setEnabled:(BOOL)enabled;
- (void)setLeadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration;
- (void)setLeadingDetailTextImage:(id)image;
- (void)setPhoneOrEmailAddress:(NSString *)phoneOrEmailAddress;
- (void)setText:(NSString *)text;
- (void)setTrailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration;
- (void)setTrailingText:(NSString *)trailingText;
@end

@implementation CPMessageListItem

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPMessageListItem;
  v4 = [(CPMessageListItem *)&v10 description];
  identifier = [(CPMessageListItem *)self identifier];
  conversationIdentifier = [(CPMessageListItem *)self conversationIdentifier];
  text = [(CPMessageListItem *)self text];
  v8 = [v3 stringWithFormat:@"%@: {identifier: %@, conversationIdentifier: %@, text: %@, detailText: %@, trailingText: %@, leadingConfiguration: %@, trailingConfiguration: %@}", v4, identifier, conversationIdentifier, text, self->_detailText, self->_trailingText, self->_leadingConfiguration, self->_trailingConfiguration];

  return v8;
}

- (CPMessageListItem)initWithConversationIdentifier:(NSString *)conversationIdentifier text:(NSString *)text leadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration trailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration detailText:(NSString *)detailText trailingText:(NSString *)trailingText
{
  v24 = conversationIdentifier;
  v23 = text;
  v22 = leadingConfiguration;
  v15 = trailingConfiguration;
  v16 = detailText;
  v17 = trailingText;
  v25.receiver = self;
  v25.super_class = CPMessageListItem;
  v18 = [(CPMessageListItem *)&v25 init];
  if (v18)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v18->_identifier;
    v18->_identifier = uUID;

    objc_storeStrong(&v18->_text, text);
    objc_storeStrong(&v18->_conversationIdentifier, conversationIdentifier);
    objc_storeStrong(&v18->_leadingConfiguration, leadingConfiguration);
    objc_storeStrong(&v18->_trailingConfiguration, trailingConfiguration);
    objc_storeStrong(&v18->_detailText, detailText);
    objc_storeStrong(&v18->_trailingText, trailingText);
    v18->_enabled = 1;
  }

  return v18;
}

- (CPMessageListItem)initWithFullName:(NSString *)fullName phoneOrEmailAddress:(NSString *)phoneOrEmailAddress leadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration trailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration detailText:(NSString *)detailText trailingText:(NSString *)trailingText
{
  v24 = fullName;
  v23 = phoneOrEmailAddress;
  v22 = leadingConfiguration;
  v15 = trailingConfiguration;
  v16 = detailText;
  v17 = trailingText;
  v25.receiver = self;
  v25.super_class = CPMessageListItem;
  v18 = [(CPMessageListItem *)&v25 init];
  if (v18)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v18->_identifier;
    v18->_identifier = uUID;

    objc_storeStrong(&v18->_text, fullName);
    objc_storeStrong(&v18->_phoneOrEmailAddress, phoneOrEmailAddress);
    objc_storeStrong(&v18->_leadingConfiguration, leadingConfiguration);
    objc_storeStrong(&v18->_trailingConfiguration, trailingConfiguration);
    objc_storeStrong(&v18->_detailText, detailText);
    objc_storeStrong(&v18->_trailingText, trailingText);
    v18->_enabled = 1;
  }

  return v18;
}

- (CPMessageListItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CPMessageListItem;
  v5 = [(CPMessageListItem *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemTextKey"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemConversationIdentifierKey"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemPhoneOrEmailKey"];
    phoneOrEmailAddress = v5->_phoneOrEmailAddress;
    v5->_phoneOrEmailAddress = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemLeadingConfigurationKey"];
    leadingConfiguration = v5->_leadingConfiguration;
    v5->_leadingConfiguration = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemTrailingConfigurationKey"];
    trailingConfiguration = v5->_trailingConfiguration;
    v5->_trailingConfiguration = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemDetailTextKey"];
    detailText = v5->_detailText;
    v5->_detailText = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemTrailingTextKey"];
    trailingText = v5->_trailingText;
    v5->_trailingText = v20;

    v5->_enabled = [coderCopy decodeBoolForKey:@"kCPMessageListItemEnabledKey"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemLeadingDetailTextImageSetKey"];
    leadingDetailTextImageSet = v5->_leadingDetailTextImageSet;
    v5->_leadingDetailTextImageSet = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(CPMessageListItem *)self text];
  [coderCopy encodeObject:text forKey:@"kCPMessageListItemTextKey"];

  identifier = [(CPMessageListItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPMessageListItemIdentifierKey"];

  conversationIdentifier = [(CPMessageListItem *)self conversationIdentifier];
  [coderCopy encodeObject:conversationIdentifier forKey:@"kCPMessageListItemConversationIdentifierKey"];

  phoneOrEmailAddress = [(CPMessageListItem *)self phoneOrEmailAddress];
  [coderCopy encodeObject:phoneOrEmailAddress forKey:@"kCPMessageListItemPhoneOrEmailKey"];

  leadingConfiguration = [(CPMessageListItem *)self leadingConfiguration];
  [coderCopy encodeObject:leadingConfiguration forKey:@"kCPMessageListItemLeadingConfigurationKey"];

  trailingConfiguration = [(CPMessageListItem *)self trailingConfiguration];
  [coderCopy encodeObject:trailingConfiguration forKey:@"kCPMessageListItemTrailingConfigurationKey"];

  detailText = [(CPMessageListItem *)self detailText];
  [coderCopy encodeObject:detailText forKey:@"kCPMessageListItemDetailTextKey"];

  trailingText = [(CPMessageListItem *)self trailingText];
  [coderCopy encodeObject:trailingText forKey:@"kCPMessageListItemTrailingTextKey"];

  [coderCopy encodeBool:-[CPMessageListItem isEnabled](self forKey:{"isEnabled"), @"kCPMessageListItemEnabledKey"}];
  leadingDetailTextImageSet = [(CPMessageListItem *)self leadingDetailTextImageSet];
  [coderCopy encodeObject:leadingDetailTextImageSet forKey:@"kCPMessageListItemLeadingDetailTextImageSetKey"];
}

- (unint64_t)hash
{
  text = [(CPMessageListItem *)self text];
  v4 = [text hash];
  conversationIdentifier = [(CPMessageListItem *)self conversationIdentifier];
  v6 = [conversationIdentifier hash] ^ v4;
  identifier = [(CPMessageListItem *)self identifier];
  v8 = [identifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    conversationIdentifier = [equalCopy conversationIdentifier];
    conversationIdentifier2 = [(CPMessageListItem *)self conversationIdentifier];
    v7 = [conversationIdentifier isEqualToString:conversationIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CPMessageListItem *)self _setNeedsUpdate];
  }
}

- (void)_setNeedsUpdate
{
  listTemplate = [(CPMessageListItem *)self listTemplate];
  [listTemplate _setItemNeedsUpdate:self];
}

- (void)setConversationIdentifier:(NSString *)conversationIdentifier
{
  v5 = conversationIdentifier;
  if (![(NSString *)self->_conversationIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_conversationIdentifier, conversationIdentifier);
    [(CPMessageListItem *)self _setNeedsUpdate];
  }
}

- (void)setLeadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration
{
  objc_storeStrong(&self->_leadingConfiguration, leadingConfiguration);

  [(CPMessageListItem *)self _setNeedsUpdate];
}

- (void)setTrailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration
{
  objc_storeStrong(&self->_trailingConfiguration, trailingConfiguration);

  [(CPMessageListItem *)self _setNeedsUpdate];
}

- (void)setTrailingText:(NSString *)trailingText
{
  v5 = trailingText;
  if (![(NSString *)self->_trailingText isEqualToString:?])
  {
    objc_storeStrong(&self->_trailingText, trailingText);
    [(CPMessageListItem *)self _setNeedsUpdate];
  }
}

- (void)setText:(NSString *)text
{
  v5 = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    [(CPMessageListItem *)self _setNeedsUpdate];
  }
}

- (void)setDetailText:(NSString *)detailText
{
  v5 = detailText;
  if (![(NSString *)self->_detailText isEqualToString:?])
  {
    objc_storeStrong(&self->_detailText, detailText);
    [(CPMessageListItem *)self _setNeedsUpdate];
  }
}

- (void)setPhoneOrEmailAddress:(NSString *)phoneOrEmailAddress
{
  v5 = phoneOrEmailAddress;
  if (![(NSString *)self->_phoneOrEmailAddress isEqualToString:?])
  {
    objc_storeStrong(&self->_phoneOrEmailAddress, phoneOrEmailAddress);
    [(CPMessageListItem *)self _setNeedsUpdate];
  }
}

- (void)setLeadingDetailTextImage:(id)image
{
  imageCopy = image;
  image = [(CPImageSet *)self->_leadingDetailTextImageSet image];

  v5 = imageCopy;
  if (image != imageCopy)
  {
    if (imageCopy)
    {
      v5 = [[CPImageSet alloc] initWithImage:imageCopy treatmentBlock:&__block_literal_global_114];
    }

    leadingDetailTextImageSet = self->_leadingDetailTextImageSet;
    self->_leadingDetailTextImageSet = v5;

    [(CPMessageListItem *)self _setNeedsUpdate];
    v5 = imageCopy;
  }
}

- (UIImage)leadingDetailTextImage
{
  leadingDetailTextImageSet = [(CPMessageListItem *)self leadingDetailTextImageSet];
  image = [leadingDetailTextImageSet image];

  return image;
}

- (CPListTemplate)listTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_listTemplate);

  return WeakRetained;
}

@end