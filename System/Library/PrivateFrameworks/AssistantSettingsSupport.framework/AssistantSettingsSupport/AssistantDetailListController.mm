@interface AssistantDetailListController
+ (id)bundle;
- (AssistantDetailListController)init;
- (UIImage)checkmarkImage;
- (UIImage)transparentImage;
- (void)setChecked:(BOOL)checked forSpecifier:(id)specifier;
@end

@implementation AssistantDetailListController

- (AssistantDetailListController)init
{
  v4.receiver = self;
  v4.super_class = AssistantDetailListController;
  v2 = [(AssistantDetailListController *)&v4 init];
  if (v2)
  {
    v2->_supportsMultilingualResponses = [MEMORY[0x277CEF2A8] isMultilingualResponseVariantSelectorEnabled];
  }

  return v2;
}

+ (id)bundle
{
  v2 = bundle_sAssistantLanguageBundle_0;
  if (!bundle_sAssistantLanguageBundle_0)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantLanguageBundle_0;
    bundle_sAssistantLanguageBundle_0 = v3;

    v2 = bundle_sAssistantLanguageBundle_0;
  }

  return v2;
}

- (void)setChecked:(BOOL)checked forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v12 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
  imageView = [v12 imageView];
  if (checked)
  {
    checkmarkImage = [(AssistantDetailListController *)self checkmarkImage];
    [imageView setImage:checkmarkImage];

    [(AssistantDetailListController *)self checkmarkImage];
  }

  else
  {
    transparentImage = [(AssistantDetailListController *)self transparentImage];
    [imageView setImage:transparentImage];

    [(AssistantDetailListController *)self transparentImage];
  }
  v10 = ;
  [specifierCopy setProperty:v10 forKey:*MEMORY[0x277D3FFC0]];

  checkedSpecifier = self->_checkedSpecifier;
  self->_checkedSpecifier = specifierCopy;
}

- (UIImage)checkmarkImage
{
  checkmarkImage = self->_checkmarkImage;
  if (!checkmarkImage)
  {
    v4 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v5 = [v4 fontDescriptorWithSymbolicTraits:2];

    v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
    v7 = [MEMORY[0x277D755D0] configurationWithFont:v6 scale:2];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v7];
    v9 = self->_checkmarkImage;
    self->_checkmarkImage = v8;

    checkmarkImage = self->_checkmarkImage;
  }

  return checkmarkImage;
}

- (UIImage)transparentImage
{
  transparentImage = self->_transparentImage;
  if (!transparentImage)
  {
    v4 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v5 = [v4 fontDescriptorWithSymbolicTraits:2];

    v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
    v7 = [MEMORY[0x277D755D0] configurationWithFont:v6 scale:2];
    v8 = MEMORY[0x277D755D0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v10 = [v8 configurationWithHierarchicalColor:clearColor];

    v11 = [v7 configurationByApplyingConfiguration:v10];
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v11];
    v13 = self->_transparentImage;
    self->_transparentImage = v12;

    transparentImage = self->_transparentImage;
  }

  return transparentImage;
}

@end