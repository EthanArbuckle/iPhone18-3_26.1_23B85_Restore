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
  view = [(INUILoadingVoiceShortcutViewController *)self view];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(INUILoadingVoiceShortcutViewController *)self view];
  [view2 addSubview:v5];

  v17 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v5 centerXAnchor];
  view3 = [(INUILoadingVoiceShortcutViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v19[0] = v10;
  centerYAnchor = [v5 centerYAnchor];
  view4 = [(INUILoadingVoiceShortcutViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v17 activateConstraints:v15];

  [v5 startAnimating];
  v16 = *MEMORY[0x277D85DE8];
}

@end