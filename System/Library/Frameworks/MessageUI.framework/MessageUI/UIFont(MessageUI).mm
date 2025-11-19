@interface UIFont(MessageUI)
+ (id)mf_messageHeaderSenderLabelFont;
+ (id)mf_messageHeaderSenderLabelFontForMailActionHeader;
@end

@implementation UIFont(MessageUI)

+ (id)mf_messageHeaderSenderLabelFont
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:32770 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)mf_messageHeaderSenderLabelFontForMailActionHeader
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = *MEMORY[0x1E69DDC38];
  if (UIContentSizeCategoryCompareToCategory(v1, v2) == NSOrderedAscending)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];
  v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v4];
  v6 = [v5 fontDescriptorWithSymbolicTraits:32770];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];

  return v7;
}

@end