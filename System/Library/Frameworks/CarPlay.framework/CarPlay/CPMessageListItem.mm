@interface CPMessageListItem
- (BOOL)isEqual:(id)a3;
- (CPListTemplate)listTemplate;
- (CPMessageListItem)initWithCoder:(id)a3;
- (CPMessageListItem)initWithConversationIdentifier:(NSString *)conversationIdentifier text:(NSString *)text leadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration trailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration detailText:(NSString *)detailText trailingText:(NSString *)trailingText;
- (CPMessageListItem)initWithFullName:(NSString *)fullName phoneOrEmailAddress:(NSString *)phoneOrEmailAddress leadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration trailingConfiguration:(CPMessageListItemTrailingConfiguration *)trailingConfiguration detailText:(NSString *)detailText trailingText:(NSString *)trailingText;
- (NSString)description;
- (UIImage)leadingDetailTextImage;
- (unint64_t)hash;
- (void)_setNeedsUpdate;
- (void)encodeWithCoder:(id)a3;
- (void)setConversationIdentifier:(NSString *)conversationIdentifier;
- (void)setDetailText:(NSString *)detailText;
- (void)setEnabled:(BOOL)enabled;
- (void)setLeadingConfiguration:(CPMessageListItemLeadingConfiguration *)leadingConfiguration;
- (void)setLeadingDetailTextImage:(id)a3;
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
  v5 = [(CPMessageListItem *)self identifier];
  v6 = [(CPMessageListItem *)self conversationIdentifier];
  v7 = [(CPMessageListItem *)self text];
  v8 = [v3 stringWithFormat:@"%@: {identifier: %@, conversationIdentifier: %@, text: %@, detailText: %@, trailingText: %@, leadingConfiguration: %@, trailingConfiguration: %@}", v4, v5, v6, v7, self->_detailText, self->_trailingText, self->_leadingConfiguration, self->_trailingConfiguration];

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
    v19 = [MEMORY[0x277CCAD78] UUID];
    identifier = v18->_identifier;
    v18->_identifier = v19;

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
    v19 = [MEMORY[0x277CCAD78] UUID];
    identifier = v18->_identifier;
    v18->_identifier = v19;

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

- (CPMessageListItem)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CPMessageListItem;
  v5 = [(CPMessageListItem *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemTextKey"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemConversationIdentifierKey"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemPhoneOrEmailKey"];
    phoneOrEmailAddress = v5->_phoneOrEmailAddress;
    v5->_phoneOrEmailAddress = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemLeadingConfigurationKey"];
    leadingConfiguration = v5->_leadingConfiguration;
    v5->_leadingConfiguration = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemTrailingConfigurationKey"];
    trailingConfiguration = v5->_trailingConfiguration;
    v5->_trailingConfiguration = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemDetailTextKey"];
    detailText = v5->_detailText;
    v5->_detailText = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemTrailingTextKey"];
    trailingText = v5->_trailingText;
    v5->_trailingText = v20;

    v5->_enabled = [v4 decodeBoolForKey:@"kCPMessageListItemEnabledKey"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemLeadingDetailTextImageSetKey"];
    leadingDetailTextImageSet = v5->_leadingDetailTextImageSet;
    v5->_leadingDetailTextImageSet = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPMessageListItem *)self text];
  [v4 encodeObject:v5 forKey:@"kCPMessageListItemTextKey"];

  v6 = [(CPMessageListItem *)self identifier];
  [v4 encodeObject:v6 forKey:@"kCPMessageListItemIdentifierKey"];

  v7 = [(CPMessageListItem *)self conversationIdentifier];
  [v4 encodeObject:v7 forKey:@"kCPMessageListItemConversationIdentifierKey"];

  v8 = [(CPMessageListItem *)self phoneOrEmailAddress];
  [v4 encodeObject:v8 forKey:@"kCPMessageListItemPhoneOrEmailKey"];

  v9 = [(CPMessageListItem *)self leadingConfiguration];
  [v4 encodeObject:v9 forKey:@"kCPMessageListItemLeadingConfigurationKey"];

  v10 = [(CPMessageListItem *)self trailingConfiguration];
  [v4 encodeObject:v10 forKey:@"kCPMessageListItemTrailingConfigurationKey"];

  v11 = [(CPMessageListItem *)self detailText];
  [v4 encodeObject:v11 forKey:@"kCPMessageListItemDetailTextKey"];

  v12 = [(CPMessageListItem *)self trailingText];
  [v4 encodeObject:v12 forKey:@"kCPMessageListItemTrailingTextKey"];

  [v4 encodeBool:-[CPMessageListItem isEnabled](self forKey:{"isEnabled"), @"kCPMessageListItemEnabledKey"}];
  v13 = [(CPMessageListItem *)self leadingDetailTextImageSet];
  [v4 encodeObject:v13 forKey:@"kCPMessageListItemLeadingDetailTextImageSetKey"];
}

- (unint64_t)hash
{
  v3 = [(CPMessageListItem *)self text];
  v4 = [v3 hash];
  v5 = [(CPMessageListItem *)self conversationIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(CPMessageListItem *)self identifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 conversationIdentifier];
    v6 = [(CPMessageListItem *)self conversationIdentifier];
    v7 = [v5 isEqualToString:v6];
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
  v3 = [(CPMessageListItem *)self listTemplate];
  [v3 _setItemNeedsUpdate:self];
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

- (void)setLeadingDetailTextImage:(id)a3
{
  v7 = a3;
  v4 = [(CPImageSet *)self->_leadingDetailTextImageSet image];

  v5 = v7;
  if (v4 != v7)
  {
    if (v7)
    {
      v5 = [[CPImageSet alloc] initWithImage:v7 treatmentBlock:&__block_literal_global_114];
    }

    leadingDetailTextImageSet = self->_leadingDetailTextImageSet;
    self->_leadingDetailTextImageSet = v5;

    [(CPMessageListItem *)self _setNeedsUpdate];
    v5 = v7;
  }
}

- (UIImage)leadingDetailTextImage
{
  v2 = [(CPMessageListItem *)self leadingDetailTextImageSet];
  v3 = [v2 image];

  return v3;
}

- (CPListTemplate)listTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_listTemplate);

  return WeakRetained;
}

@end