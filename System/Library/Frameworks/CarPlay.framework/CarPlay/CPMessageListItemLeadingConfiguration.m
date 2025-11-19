@interface CPMessageListItemLeadingConfiguration
- (CPMessageListItemLeadingConfiguration)initWithCoder:(id)a3;
- (CPMessageListItemLeadingConfiguration)initWithLeadingItem:(CPMessageLeadingItem)leadingItem leadingImage:(UIImage *)leadingImage unread:(BOOL)unread;
- (UIImage)leadingImage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPMessageListItemLeadingConfiguration

- (CPMessageListItemLeadingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPMessageListItemLeadingConfiguration;
  v5 = [(CPMessageListItemLeadingConfiguration *)&v9 init];
  if (v5)
  {
    v5->_unread = [v4 decodeBoolForKey:@"kCPMessageListItemLeadingConfigurationUnreadKey"];
    v5->_leadingItem = [v4 decodeIntegerForKey:@"kCPMessageListItemLeadingConfigurationItemKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemLeadingConfigurationImageSetKey"];
    leadingImageSet = v5->_leadingImageSet;
    v5->_leadingImageSet = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CPMessageListItemLeadingConfiguration isUnread](self forKey:{"isUnread"), @"kCPMessageListItemLeadingConfigurationUnreadKey"}];
  [v4 encodeInteger:-[CPMessageListItemLeadingConfiguration leadingItem](self forKey:{"leadingItem"), @"kCPMessageListItemLeadingConfigurationItemKey"}];
  v5 = [(CPMessageListItemLeadingConfiguration *)self leadingImageSet];
  [v4 encodeObject:v5 forKey:@"kCPMessageListItemLeadingConfigurationImageSetKey"];
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
  v2 = [(CPMessageListItemLeadingConfiguration *)self leadingImageSet];
  v3 = [v2 image];

  return v3;
}

@end