@interface AIAudiogramLoadingViewController
- (AIAudiogramLoadingViewController)initWithTitle:(id)title style:(int64_t)style;
- (void)setProgress:(float)progress;
- (void)showLoadingMessage:(id)message;
- (void)viewDidLoad;
@end

@implementation AIAudiogramLoadingViewController

- (AIAudiogramLoadingViewController)initWithTitle:(id)title style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = AIAudiogramLoadingViewController;
  v5 = [(AIAudiogramLoadingViewController *)&v8 initWithTitle:title detailText:0 icon:0];
  v6 = v5;
  if (v5)
  {
    [(AIAudiogramLoadingViewController *)v5 setStyle:style];
  }

  return v6;
}

- (void)viewDidLoad
{
  v80[9] = *MEMORY[0x277D85DE8];
  v79.receiver = self;
  v79.super_class = AIAudiogramLoadingViewController;
  [(OBBaseWelcomeController *)&v79 viewDidLoad];
  headerView = [(AIAudiogramLoadingViewController *)self headerView];
  LODWORD(v4) = 1036831949;
  [headerView setTitleHyphenationFactor:v4];

  v5 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
  [(AIAudiogramLoadingViewController *)self setProgressView:v5];

  progressView = [(AIAudiogramLoadingViewController *)self progressView];
  [progressView setTranslatesAutoresizingMaskIntoConstraints:0];

  progressView2 = [(AIAudiogramLoadingViewController *)self progressView];
  [progressView2 setProgress:0.0];

  progressView3 = [(AIAudiogramLoadingViewController *)self progressView];
  [progressView3 setHidden:{-[AIAudiogramLoadingViewController style](self, "style") != 0}];

  view = [(AIAudiogramLoadingViewController *)self view];
  progressView4 = [(AIAudiogramLoadingViewController *)self progressView];
  [view addSubview:progressView4];

  v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [(AIAudiogramLoadingViewController *)self setActivityIndicator:v11];

  activityIndicator = [(AIAudiogramLoadingViewController *)self activityIndicator];
  [activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];

  activityIndicator2 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  [activityIndicator2 setHidden:{-[AIAudiogramLoadingViewController style](self, "style") != 1}];

  style = [(AIAudiogramLoadingViewController *)self style];
  activityIndicator3 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  v16 = activityIndicator3;
  if (style == 1)
  {
    [activityIndicator3 startAnimating];
  }

  else
  {
    [activityIndicator3 stopAnimating];
  }

  view2 = [(AIAudiogramLoadingViewController *)self view];
  activityIndicator4 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  [view2 addSubview:activityIndicator4];

  v19 = objc_opt_new();
  [(AIAudiogramLoadingViewController *)self setProgressLabel:v19];

  labelColor = [MEMORY[0x277D75348] labelColor];
  progressLabel = [(AIAudiogramLoadingViewController *)self progressLabel];
  [progressLabel setTextColor:labelColor];

  progressLabel2 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [progressLabel2 setTextAlignment:1];

  progressLabel3 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [progressLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (![(AIAudiogramLoadingViewController *)self style])
  {
    v28 = MEMORY[0x277CCACA8];
    systemGrayColor = aiLocString(@"AudiogramIngestionLoadingProgress");
    progressLabel6 = [v28 stringWithFormat:systemGrayColor, @"0", @"%"];
    progressLabel4 = [(AIAudiogramLoadingViewController *)self progressLabel];
    [progressLabel4 setText:progressLabel6];

    goto LABEL_8;
  }

  if ([(AIAudiogramLoadingViewController *)self style]== 1)
  {
    v24 = aiLocString(@"AudiogramIngestionLoadingTitle");
    progressLabel5 = [(AIAudiogramLoadingViewController *)self progressLabel];
    [progressLabel5 setText:v24];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    progressLabel6 = [(AIAudiogramLoadingViewController *)self progressLabel];
    [progressLabel6 setTextColor:systemGrayColor];
LABEL_8:
  }

  view3 = [(AIAudiogramLoadingViewController *)self view];
  progressLabel7 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [view3 addSubview:progressLabel7];

  v59 = MEMORY[0x277CCAAD0];
  progressView5 = [(AIAudiogramLoadingViewController *)self progressView];
  centerYAnchor = [progressView5 centerYAnchor];
  view4 = [(AIAudiogramLoadingViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v74 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v80[0] = v74;
  progressView6 = [(AIAudiogramLoadingViewController *)self progressView];
  centerXAnchor = [progressView6 centerXAnchor];
  view5 = [(AIAudiogramLoadingViewController *)self view];
  centerXAnchor2 = [view5 centerXAnchor];
  v69 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v80[1] = v69;
  progressView7 = [(AIAudiogramLoadingViewController *)self progressView];
  widthAnchor = [progressView7 widthAnchor];
  view6 = [(AIAudiogramLoadingViewController *)self view];
  widthAnchor2 = [view6 widthAnchor];
  v64 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.8];
  v80[2] = v64;
  activityIndicator5 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  centerYAnchor3 = [activityIndicator5 centerYAnchor];
  view7 = [(AIAudiogramLoadingViewController *)self view];
  centerYAnchor4 = [view7 centerYAnchor];
  v58 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v80[3] = v58;
  activityIndicator6 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  centerXAnchor3 = [activityIndicator6 centerXAnchor];
  view8 = [(AIAudiogramLoadingViewController *)self view];
  centerXAnchor4 = [view8 centerXAnchor];
  v53 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v80[4] = v53;
  progressLabel8 = [(AIAudiogramLoadingViewController *)self progressLabel];
  topAnchor = [progressLabel8 topAnchor];
  activityIndicator7 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  bottomAnchor = [activityIndicator7 bottomAnchor];
  v48 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:20.0];
  v80[5] = v48;
  progressLabel9 = [(AIAudiogramLoadingViewController *)self progressLabel];
  topAnchor2 = [progressLabel9 topAnchor];
  progressView8 = [(AIAudiogramLoadingViewController *)self progressView];
  bottomAnchor2 = [progressView8 bottomAnchor];
  v43 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:20.0];
  v80[6] = v43;
  progressLabel10 = [(AIAudiogramLoadingViewController *)self progressLabel];
  widthAnchor3 = [progressLabel10 widthAnchor];
  view9 = [(AIAudiogramLoadingViewController *)self view];
  widthAnchor4 = [view9 widthAnchor];
  v35 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.8];
  v80[7] = v35;
  progressLabel11 = [(AIAudiogramLoadingViewController *)self progressLabel];
  centerXAnchor5 = [progressLabel11 centerXAnchor];
  view10 = [(AIAudiogramLoadingViewController *)self view];
  centerXAnchor6 = [view10 centerXAnchor];
  v40 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v80[8] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:9];
  [v59 activateConstraints:v41];
}

- (void)setProgress:(float)progress
{
  v5 = MEMORY[0x277CCACA8];
  v6 = aiLocString(@"AudiogramIngestionLoadingProgress");
  v7 = [MEMORY[0x277CCABB0] numberWithInt:(progress * 100.0)];
  v8 = [v5 stringWithFormat:v6, v7, @"%"];
  progressLabel = [(AIAudiogramLoadingViewController *)self progressLabel];
  [progressLabel setText:v8];

  progressView = [(AIAudiogramLoadingViewController *)self progressView];
  *&v10 = progress;
  [progressView setProgress:1 animated:v10];
}

- (void)showLoadingMessage:(id)message
{
  messageCopy = message;
  progressLabel = [(AIAudiogramLoadingViewController *)self progressLabel];
  [progressLabel setText:messageCopy];
}

@end