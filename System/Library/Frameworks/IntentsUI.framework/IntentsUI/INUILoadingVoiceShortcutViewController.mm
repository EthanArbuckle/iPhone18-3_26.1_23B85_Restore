@interface INUILoadingVoiceShortcutViewController
- (void)viewDidLoad;
@end

@implementation INUILoadingVoiceShortcutViewController

- (void)viewDidLoad
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = INUILoadingVoiceShortcutViewController;
  [(INUILoadingVoiceShortcutViewController *)&v18 viewDidLoad];
  v3 = [(INUILoadingVoiceShortcutViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(INUILoadingVoiceShortcutViewController *)self view];
  [v6 addSubview:v5];

  v17 = MEMORY[0x277CCAAD0];
  v7 = [v5 centerXAnchor];
  v8 = [(INUILoadingVoiceShortcutViewController *)self view];
  v9 = [v8 centerXAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v19[0] = v10;
  v11 = [v5 centerYAnchor];
  v12 = [(INUILoadingVoiceShortcutViewController *)self view];
  v13 = [v12 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v17 activateConstraints:v15];

  [v5 startAnimating];
  v16 = *MEMORY[0x277D85DE8];
}

@end