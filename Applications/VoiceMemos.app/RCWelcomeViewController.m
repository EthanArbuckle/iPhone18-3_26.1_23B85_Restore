@interface RCWelcomeViewController
- (RCWelcomeViewController)initWithCompletionBlock:(id)a3;
- (id)keyCommands;
- (unint64_t)supportedInterfaceOrientations;
- (void)handleContinueButton:(id)a3;
- (void)handleWelcomeItem1LearnMoreLinkButton:(id)a3;
- (void)setupSubviewsForDefaultScreen;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RCWelcomeViewController

- (RCWelcomeViewController)initWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"WHATS_NEW_TITLE_FULL" value:&stru_100295BB8 table:0];
  v11.receiver = self;
  v11.super_class = RCWelcomeViewController;
  v7 = [(RCWelcomeViewController *)&v11 initWithTitle:v6 detailText:0 icon:0];

  if (v7)
  {
    v8 = objc_retainBlock(v4);
    completionBlock = v7->_completionBlock;
    v7->_completionBlock = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = RCWelcomeViewController;
  [(RCWelcomeViewController *)&v9 viewDidLoad];
  [(RCWelcomeViewController *)self setupSubviewsForDefaultScreen];
  v3 = +[OBBoldTrayButton boldButton];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"WELCOME_CONTINUE" value:&stru_100295BB8 table:0];
  [v3 setTitle:v5 forState:0];

  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v7 = [v6 standardInteractionTintColor];
  [v3 setTintColor:v7];

  [v3 addTarget:self action:"handleContinueButton:" forControlEvents:64];
  v8 = [(RCWelcomeViewController *)self buttonTray];
  [v8 addButton:v3];

  [(RCWelcomeViewController *)self becomeFirstResponder];
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"handleContinueButton:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = RCWelcomeViewController;
  [(RCWelcomeViewController *)&v3 viewDidAppear:a3];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (void)setupSubviewsForDefaultScreen
{
  v20 = [UIImage _systemImageNamed:@"person.spatialaudio.fill"];
  v3 = +[OBBulletedListItemLinkButton linkButton];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"WELCOME_ITEM_1_LEARN_MORE_LINK" value:&stru_100295BB8 table:0];
  [v3 setTitle:v5 forState:0];

  [v3 addTarget:self action:"handleWelcomeItem1LearnMoreLinkButton:" forControlEvents:64];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"WELCOME_ITEM_1_TITLE" value:&stru_100295BB8 table:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"WELCOME_ITEM_1_DESCRIPTION" value:&stru_100295BB8 table:0];
  [(RCWelcomeViewController *)self addBulletedListItemWithTitle:v7 description:v9 image:v20 linkButton:v3];

  v10 = [UIImage _systemImageNamed:@"waveform.and.person.filled"];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"WELCOME_ITEM_2_TITLE" value:&stru_100295BB8 table:0];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"WELCOME_ITEM_2_DESCRIPTION" value:&stru_100295BB8 table:0];
  [(RCWelcomeViewController *)self addBulletedListItemWithTitle:v12 description:v14 image:v10];

  v15 = [UIImage _systemImageNamed:@"square.and.arrow.up"];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"WELCOME_ITEM_3_TITLE" value:&stru_100295BB8 table:0];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"WELCOME_ITEM_3_DESCRIPTION" value:&stru_100295BB8 table:0];
  [(RCWelcomeViewController *)self addBulletedListItemWithTitle:v17 description:v19 image:v15];
}

- (void)handleContinueButton:(id)a3
{
  +[RCWelcomeUtilities finishShowingWelcomeScreen];
  completionBlock = self->_completionBlock;

  [(RCWelcomeViewController *)self dismissViewControllerAnimated:1 completion:completionBlock];
}

- (void)handleWelcomeItem1LearnMoreLinkButton:(id)a3
{
  v4 = [NSURL URLWithString:@"https://support.apple.com/guide/iphone/make-a-recording-iph4d2a39a3b/ios"];
  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
}

@end