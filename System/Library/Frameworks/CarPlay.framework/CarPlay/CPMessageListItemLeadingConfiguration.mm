@interface CPMessageListItemLeadingConfiguration
- (CPMessageListItemLeadingConfiguration)initWithCoder:(id)coder;
- (CPMessageListItemLeadingConfiguration)initWithLeadingItem:(CPMessageLeadingItem)leadingItem leadingImage:(UIImage *)leadingImage unread:(BOOL)unread;
- (UIImage)leadingImage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPMessageListItemLeadingConfiguration

- (CPMessageListItemLeadingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPMessageListItemLeadingConfiguration;
  v5 = [(CPMessageListItemLeadingConfiguration *)&v9 init];
  if (v5)
  {
    v5->_unread = [coderCopy decodeBoolForKey:@"kCPMessageListItemLeadingConfigurationUnreadKey"];
    v5->_leadingItem = [coderCopy decodeIntegerForKey:@"kCPMessageListItemLeadingConfigurationItemKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemLeadingConfigurationImageSetKey"];
    leadingImageSet = v5->_leadingImageSet;
    v5->_leadingImageSet = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CPMessageListItemLeadingConfiguration isUnread](self forKey:{"isUnread"), @"kCPMessageListItemLeadingConfigurationUnreadKey"}];
  [coderCopy encodeInteger:-[CPMessageListItemLeadingConfiguration leadingItem](self forKey:{"leadingItem"), @"kCPMessageListItemLeadingConfigurationItemKey"}];
  leadingImageSet = [(CPMessageListItemLeadingConfiguration *)self leadingImageSet];
  [coderCopy encodeObject:leadingImageSet forKey:@"kCPMessageListItemLeadingConfigurationImageSetKey"];
}

- (CPMessageListItemLeadingConfiguration)initWithLeadingItem:(CPMessageLeadingItem)leadingItem leadingImage:(UIImage *)leadingImage unread:(BOOL)unread
{
  v8 = leadingImage;
  v14.receiver = self;
  v14.super_class = CPMessageListItemLeadingConfiguration;
  v9 = [(CPMessageListItemLeadingConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_unread = unread;
    v9->_leadingItem = leadingItem;
    if (v8)
    {
      v11 = [[CPImageSet alloc] initWithImage:v8 treatmentBlock:&__block_literal_global_25];
      leadingImageSet = v10->_leadingImageSet;
      v10->_leadingImageSet = v11;
    }
  }

  return v10;
}

- (UIImage)leadingImage
{
  leadingImageSet = [(CPMessageListItemLeadingConfiguration *)self leadingImageSet];
  image = [leadingImageSet image];

  return image;
}

@end