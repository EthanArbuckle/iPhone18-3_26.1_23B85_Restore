@interface BNTemplateItemProvider
- (BNCAPackageProviding)templateItemCAPackageProvider;
- (BNImageProviding)templateItemImageProvider;
- (BNTemplateItemProvider)initWithCoder:(id)a3;
- (BNTemplateItemProvider)initWithItem:(id)a3;
- (NSAttributedString)templateItemAttributedText;
- (NSString)templateItemText;
- (UIButtonConfiguration)templateItemButtonConfiguration;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BNTemplateItemProvider

- (BNTemplateItemProvider)initWithItem:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
LABEL_10:
    v8 = v6;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 2;
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 isImageProvider])
  {
    v7 = 3;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 4;
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 isCAPackageProvider])
  {
    v7 = 5;
    goto LABEL_10;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"BNTemplateItemProvider.m" lineNumber:62 description:{@"Invalid item: %@", v6}];
  v7 = 0;
LABEL_11:

  v12.receiver = self;
  v12.super_class = BNTemplateItemProvider;
  v9 = [(BNTemplateItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_templateItem, a3);
    v10->_templateItemType = v7;
  }

  return v10;
}

- (NSString)templateItemText
{
  if (self->_templateItemType == 1)
  {
    return self->_templateItem;
  }

  else
  {
    return 0;
  }
}

- (NSAttributedString)templateItemAttributedText
{
  if (self->_templateItemType == 2)
  {
    return self->_templateItem;
  }

  else
  {
    return 0;
  }
}

- (BNImageProviding)templateItemImageProvider
{
  if (self->_templateItemType == 3)
  {
    return self->_templateItem;
  }

  else
  {
    return 0;
  }
}

- (UIButtonConfiguration)templateItemButtonConfiguration
{
  if (self->_templateItemType == 4)
  {
    return self->_templateItem;
  }

  else
  {
    return 0;
  }
}

- (BNCAPackageProviding)templateItemCAPackageProvider
{
  if (self->_templateItemType == 5)
  {
    return self->_templateItem;
  }

  else
  {
    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:self->_templateItemType forKey:@"itemType"];
  v4 = self->_templateItemType - 1;
  if (v4 <= 3)
  {
    [v7 encodeObject:self->_templateItem forKey:off_1E81E4848[v4]];
  }

  if (self->_visualStyleCategory >= 1 && self->_visualStyle >= 1)
  {
    [v7 encodeInteger:? forKey:?];
    [v7 encodeInteger:self->_visualStyle forKey:@"visualStyle"];
  }

  if (self->_hidden)
  {
    [v7 encodeBool:1 forKey:@"hidden"];
  }

  v5 = [(NSString *)self->_accessibilityIdentifier length];
  v6 = v7;
  if (v5)
  {
    v5 = [v7 encodeObject:self->_accessibilityIdentifier forKey:@"accessibilityIdentifier"];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (BNTemplateItemProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"itemType"] - 1;
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:off_1E81E4888[v5]];
  }

  v7 = [(BNTemplateItemProvider *)self initWithItem:v6];
  if (v7)
  {
    v7->_visualStyleCategory = [v4 decodeIntegerForKey:@"visualStyleCategory"];
    v7->_visualStyle = [v4 decodeIntegerForKey:@"visualStyle"];
    v7->_hidden = [v4 decodeBoolForKey:@"hidden"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityIdentifier"];
    accessibilityIdentifier = v7->_accessibilityIdentifier;
    v7->_accessibilityIdentifier = v8;
  }

  return v7;
}

@end