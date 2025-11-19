@interface CPMessageListItemTrailingConfiguration
- (CPMessageListItemTrailingConfiguration)initWithCoder:(id)a3;
- (CPMessageListItemTrailingConfiguration)initWithTrailingItem:(CPMessageTrailingItem)trailingItem trailingImage:(UIImage *)trailingImage;
- (UIImage)trailingImage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPMessageListItemTrailingConfiguration

- (CPMessageListItemTrailingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPMessageListItemTrailingConfiguration;
  v5 = [(CPMessageListItemTrailingConfiguration *)&v9 init];
  if (v5)
  {
    v5->_trailingItem = [v4 decodeIntegerForKey:@"kCPMessageListItemTrailingConfigurationItemKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPMessageListItemTrailingConfigurationImageSetKey"];
    trailingImageSet = v5->_trailingImageSet;
    v5->_trailingImageSet = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CPMessageListItemTrailingConfiguration trailingItem](self forKey:{"trailingItem"), @"kCPMessageListItemTrailingConfigurationItemKey"}];
  v5 = [(CPMessageListItemTrailingConfiguration *)self trailingImageSet];
  [v4 encodeObject:v5 forKey:@"kCPMessageListItemTrailingConfigurationImageSetKey"];
}

- (CPMessageListItemTrailingConfiguration)initWithTrailingItem:(CPMessageTrailingItem)trailingItem trailingImage:(UIImage *)trailingImage
{
  v6 = trailingImage;
  v12.receiver = self;
  v12.super_class = CPMessageListItemTrailingConfiguration;
  v7 = [(CPMessageListItemTrailingConfiguration *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_trailingItem = trailingItem;
    if (v6)
    {
      v9 = [[CPImageSet alloc] initWithImage:v6 treatmentBlock:&__block_literal_global_83];
      trailingImageSet = v8->_trailingImageSet;
      v8->_trailingImageSet = v9;
    }
  }

  return v8;
}

- (UIImage)trailingImage
{
  v2 = [(CPMessageListItemTrailingConfiguration *)self trailingImageSet];
  v3 = [v2 image];

  return v3;
}

@end