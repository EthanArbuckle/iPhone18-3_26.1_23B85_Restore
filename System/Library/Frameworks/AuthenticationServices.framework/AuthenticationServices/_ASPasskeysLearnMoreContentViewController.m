@interface _ASPasskeysLearnMoreContentViewController
- (_ASPasskeysLearnMoreContentViewController)init;
- (id)_contentBodyAttributedString;
- (id)_passkeySymbolHeaderImage;
- (void)_setUpContentBodyText;
- (void)viewDidLoad;
@end

@implementation _ASPasskeysLearnMoreContentViewController

- (_ASPasskeysLearnMoreContentViewController)init
{
  v3 = +[_ASPasskeysLearnMoreContent titleString];
  v4 = +[_ASPasskeysLearnMoreContent subtitleString];
  v7.receiver = self;
  v7.super_class = _ASPasskeysLearnMoreContentViewController;
  v5 = [(_ASPasskeysLearnMoreContentViewController *)&v7 initWithTitle:v3 detailText:v4 symbolName:0];

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _ASPasskeysLearnMoreContentViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  [(_ASPasskeysLearnMoreContentViewController *)self _setUpContentBodyText];
  v3 = [(_ASPasskeysLearnMoreContentViewController *)self headerView];
  v4 = [(_ASPasskeysLearnMoreContentViewController *)self _passkeySymbolHeaderImage];
  [v3 setIcon:v4 accessibilityLabel:0];
}

- (id)_passkeySymbolHeaderImage
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] tintColor];
  v5 = [v3 configurationWithHierarchicalColor:v4];

  v6 = [v5 configurationByApplyingConfiguration:v2];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = +[_ASPasskeysLearnMoreContent systemImageName];
  v9 = [v7 systemImageNamed:v8 withConfiguration:v6];

  return v9;
}

- (void)_setUpContentBodyText
{
  v24[4] = *MEMORY[0x1E69E9840];
  v3 = [(_ASPasskeysLearnMoreContentViewController *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v5 = [(_ASPasskeysLearnMoreContentViewController *)self _contentBodyAttributedString];
  [v4 setAttributedText:v5];

  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];
  [v4 setFont:v8];

  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setNumberOfLines:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  v18 = MEMORY[0x1E696ACD8];
  v23 = [v4 topAnchor];
  v22 = [v3 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v24[0] = v21;
  v20 = [v4 bottomAnchor];
  v19 = [v3 bottomAnchor];
  v9 = [v20 constraintEqualToAnchor:v19];
  v24[1] = v9;
  v10 = [v4 leadingAnchor];
  v11 = [v3 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v24[2] = v12;
  v13 = [v4 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v24[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v18 activateConstraints:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_contentBodyAttributedString
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
  v4 = [v2 imageWithConfiguration:v3];
  v5 = [v4 imageWithRenderingMode:2];

  v6 = [MEMORY[0x1E69DC888] tintColor];
  v7 = [v5 imageWithTintColor:v6 renderingMode:2];

  v8 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v7];
  v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
  v10 = objc_alloc(MEMORY[0x1E696AD40]);
  v11 = +[_ASPasskeysLearnMoreContent bodyString];
  v12 = [v10 initWithString:v11];

  v16 = @"{square.and.arrow.up}";
  v17[0] = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [v12 safari_replaceCharactersWithStringBindings:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

@end