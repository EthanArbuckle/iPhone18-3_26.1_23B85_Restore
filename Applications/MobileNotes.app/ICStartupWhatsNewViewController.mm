@interface ICStartupWhatsNewViewController
- (id)startupNavigationController;
- (unint64_t)callSummarySupport;
- (unint64_t)callTranscriptionSupport;
- (void)addButtons;
- (void)addCallItemWithTranscription:(BOOL)transcription summarization:(BOOL)summarization;
- (void)addItems;
- (void)addItemsForiPad;
- (void)addItemsForiPhone;
- (void)addMarkdownItem;
- (void)addMoreItem;
- (void)addToolbarItem;
- (void)addWatchItem;
- (void)didTapContinueButton:(id)button;
- (void)viewDidLoad;
@end

@implementation ICStartupWhatsNewViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICStartupWhatsNewViewController;
  [(ICStartupWhatsNewViewController *)&v4 viewDidLoad];
  [(ICStartupWhatsNewViewController *)self addItems];
  [(ICStartupWhatsNewViewController *)self addButtons];
  view = [(ICStartupWhatsNewViewController *)self view];
  [view setAccessibilityViewIsModal:1];
}

- (unint64_t)callTranscriptionSupport
{
  modelAvailabilityManager = [(ICStartupWhatsNewViewController *)self modelAvailabilityManager];
  supportsCallTranscription = [modelAvailabilityManager supportsCallTranscription];

  return supportsCallTranscription;
}

- (unint64_t)callSummarySupport
{
  modelAvailabilityManager = [(ICStartupWhatsNewViewController *)self modelAvailabilityManager];
  supportsPrivateCloudComputeSummary = [modelAvailabilityManager supportsPrivateCloudComputeSummary];

  return supportsPrivateCloudComputeSummary;
}

- (void)addButtons
{
  v7 = +[OBBoldTrayButton boldButton];
  configuration = [v7 configuration];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Continue" value:&stru_100661CF0 table:0];
  [configuration setTitle:v5];

  [v7 setConfiguration:configuration];
  [v7 addTarget:self action:"didTapContinueButton:" forControlEvents:0x2000];
  buttonTray = [(ICStartupWhatsNewViewController *)self buttonTray];
  [buttonTray addButton:v7];
}

- (void)addItems
{
  if (+[UIDevice ic_isVision])
  {

    [(ICStartupWhatsNewViewController *)self addItemsForVision];
  }

  else if (+[UIDevice ic_isiPad])
  {

    [(ICStartupWhatsNewViewController *)self addItemsForiPad];
  }

  else
  {

    [(ICStartupWhatsNewViewController *)self addItemsForiPhone];
  }
}

- (void)addItemsForiPad
{
  callTranscriptionSupport = [(ICStartupWhatsNewViewController *)self callTranscriptionSupport];
  callSummarySupport = [(ICStartupWhatsNewViewController *)self callSummarySupport];
  [(ICStartupWhatsNewViewController *)self addWatchItem];
  if (callSummarySupport | callTranscriptionSupport)
  {
    [(ICStartupWhatsNewViewController *)self addCallItemWithTranscription:1 summarization:callSummarySupport != 0];
  }

  [(ICStartupWhatsNewViewController *)self addMarkdownItem];

  [(ICStartupWhatsNewViewController *)self addMoreItem];
}

- (void)addItemsForiPhone
{
  [(ICStartupWhatsNewViewController *)self addWatchItem];
  [(ICStartupWhatsNewViewController *)self addToolbarItem];

  [(ICStartupWhatsNewViewController *)self addMarkdownItem];
}

- (void)addWatchItem
{
  v3 = +[NSBundle mainBundle];
  v7 = [v3 localizedStringForKey:@"Notes on Apple Watch" value:&stru_100661CF0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Access all of your iCloud notes from your Apple Watch." value:&stru_100661CF0 table:0];

  v6 = [UIImage ic_systemImageNamed:@"applewatch"];
  [(ICStartupWhatsNewViewController *)self addBulletedListItemWithTitle:v7 description:v5 image:v6];
}

- (void)addToolbarItem
{
  v3 = +[NSBundle mainBundle];
  v7 = [v3 localizedStringForKey:@"An Adaptive Toolbar" value:&stru_100661CF0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Your toolbar icons adjust based on what you’re doing in your note." value:&stru_100661CF0 table:0];

  v6 = [UIImage ic_systemImageNamed:@"textformat.alt"];
  [(ICStartupWhatsNewViewController *)self addBulletedListItemWithTitle:v7 description:v5 image:v6];
}

- (void)addCallItemWithTranscription:(BOOL)transcription summarization:(BOOL)summarization
{
  summarizationCopy = summarization;
  v6 = +[NSBundle mainBundle];
  v12 = [v6 localizedStringForKey:@"Call Transcripts" value:&stru_100661CF0 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (summarizationCopy)
  {
    v9 = @"Capture a FaceTime audio or phone conversation as text and audio, then view a summary of the call.";
  }

  else
  {
    v9 = @"Capture a FaceTime audio or phone conversation as text and audio.";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_100661CF0 table:0];

  v11 = [UIImage ic_systemImageNamed:@"waveform"];
  [(ICStartupWhatsNewViewController *)self addBulletedListItemWithTitle:v12 description:v10 image:v11];
}

- (void)addMarkdownItem
{
  v3 = +[NSBundle mainBundle];
  v7 = [v3 localizedStringForKey:@"Markdown Export & Import" value:&stru_100661CF0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Save and download your notes as Markdown files." value:&stru_100661CF0 table:0];

  v6 = [UIImage ic_systemImageNamed:@"square.and.arrow.up.on.square"];
  [(ICStartupWhatsNewViewController *)self addBulletedListItemWithTitle:v7 description:v5 image:v6];
}

- (void)addMoreItem
{
  v3 = +[NSBundle mainBundle];
  v7 = [v3 localizedStringForKey:@"And More" value:&stru_100661CF0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Try handwriting with the new Reed Pen from the tool palette value:or graphing equations in 3D." table:{&stru_100661CF0, 0}];

  v6 = [UIImage ic_systemImageNamed:@"surprisebox"];
  [(ICStartupWhatsNewViewController *)self addBulletedListItemWithTitle:v7 description:v5 image:v6];
}

- (id)startupNavigationController
{
  objc_opt_class();
  navigationController = [(ICStartupWhatsNewViewController *)self navigationController];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (void)didTapContinueButton:(id)button
{
  +[ICStartupController setLastShownStartupWelcomeScreenVersionToCurrentVersion];
  startupNavigationController = [(ICStartupWhatsNewViewController *)self startupNavigationController];
  [startupNavigationController dismiss];
}

@end