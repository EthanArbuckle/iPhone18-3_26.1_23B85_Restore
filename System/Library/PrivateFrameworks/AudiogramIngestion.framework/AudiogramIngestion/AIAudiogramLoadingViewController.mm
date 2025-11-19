@interface AIAudiogramLoadingViewController
- (AIAudiogramLoadingViewController)initWithTitle:(id)a3 style:(int64_t)a4;
- (void)setProgress:(float)a3;
- (void)showLoadingMessage:(id)a3;
- (void)viewDidLoad;
@end

@implementation AIAudiogramLoadingViewController

- (AIAudiogramLoadingViewController)initWithTitle:(id)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = AIAudiogramLoadingViewController;
  v5 = [(AIAudiogramLoadingViewController *)&v8 initWithTitle:a3 detailText:0 icon:0];
  v6 = v5;
  if (v5)
  {
    [(AIAudiogramLoadingViewController *)v5 setStyle:a4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v80[9] = *MEMORY[0x277D85DE8];
  v79.receiver = self;
  v79.super_class = AIAudiogramLoadingViewController;
  [(OBBaseWelcomeController *)&v79 viewDidLoad];
  v3 = [(AIAudiogramLoadingViewController *)self headerView];
  LODWORD(v4) = 1036831949;
  [v3 setTitleHyphenationFactor:v4];

  v5 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
  [(AIAudiogramLoadingViewController *)self setProgressView:v5];

  v6 = [(AIAudiogramLoadingViewController *)self progressView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(AIAudiogramLoadingViewController *)self progressView];
  [v7 setProgress:0.0];

  v8 = [(AIAudiogramLoadingViewController *)self progressView];
  [v8 setHidden:{-[AIAudiogramLoadingViewController style](self, "style") != 0}];

  v9 = [(AIAudiogramLoadingViewController *)self view];
  v10 = [(AIAudiogramLoadingViewController *)self progressView];
  [v9 addSubview:v10];

  v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [(AIAudiogramLoadingViewController *)self setActivityIndicator:v11];

  v12 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  [v13 setHidden:{-[AIAudiogramLoadingViewController style](self, "style") != 1}];

  v14 = [(AIAudiogramLoadingViewController *)self style];
  v15 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  v16 = v15;
  if (v14 == 1)
  {
    [v15 startAnimating];
  }

  else
  {
    [v15 stopAnimating];
  }

  v17 = [(AIAudiogramLoadingViewController *)self view];
  v18 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  [v17 addSubview:v18];

  v19 = objc_opt_new();
  [(AIAudiogramLoadingViewController *)self setProgressLabel:v19];

  v20 = [MEMORY[0x277D75348] labelColor];
  v21 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [v21 setTextColor:v20];

  v22 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [v22 setTextAlignment:1];

  v23 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (![(AIAudiogramLoadingViewController *)self style])
  {
    v28 = MEMORY[0x277CCACA8];
    v26 = aiLocString(@"AudiogramIngestionLoadingProgress");
    v27 = [v28 stringWithFormat:v26, @"0", @"%"];
    v29 = [(AIAudiogramLoadingViewController *)self progressLabel];
    [v29 setText:v27];

    goto LABEL_8;
  }

  if ([(AIAudiogramLoadingViewController *)self style]== 1)
  {
    v24 = aiLocString(@"AudiogramIngestionLoadingTitle");
    v25 = [(AIAudiogramLoadingViewController *)self progressLabel];
    [v25 setText:v24];

    v26 = [MEMORY[0x277D75348] systemGrayColor];
    v27 = [(AIAudiogramLoadingViewController *)self progressLabel];
    [v27 setTextColor:v26];
LABEL_8:
  }

  v30 = [(AIAudiogramLoadingViewController *)self view];
  v31 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [v30 addSubview:v31];

  v59 = MEMORY[0x277CCAAD0];
  v78 = [(AIAudiogramLoadingViewController *)self progressView];
  v76 = [v78 centerYAnchor];
  v77 = [(AIAudiogramLoadingViewController *)self view];
  v75 = [v77 centerYAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v80[0] = v74;
  v73 = [(AIAudiogramLoadingViewController *)self progressView];
  v71 = [v73 centerXAnchor];
  v72 = [(AIAudiogramLoadingViewController *)self view];
  v70 = [v72 centerXAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v80[1] = v69;
  v68 = [(AIAudiogramLoadingViewController *)self progressView];
  v66 = [v68 widthAnchor];
  v67 = [(AIAudiogramLoadingViewController *)self view];
  v65 = [v67 widthAnchor];
  v64 = [v66 constraintEqualToAnchor:v65 multiplier:0.8];
  v80[2] = v64;
  v63 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  v61 = [v63 centerYAnchor];
  v62 = [(AIAudiogramLoadingViewController *)self view];
  v60 = [v62 centerYAnchor];
  v58 = [v61 constraintEqualToAnchor:v60];
  v80[3] = v58;
  v57 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  v55 = [v57 centerXAnchor];
  v56 = [(AIAudiogramLoadingViewController *)self view];
  v54 = [v56 centerXAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v80[4] = v53;
  v52 = [(AIAudiogramLoadingViewController *)self progressLabel];
  v50 = [v52 topAnchor];
  v51 = [(AIAudiogramLoadingViewController *)self activityIndicator];
  v49 = [v51 bottomAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:20.0];
  v80[5] = v48;
  v47 = [(AIAudiogramLoadingViewController *)self progressLabel];
  v45 = [v47 topAnchor];
  v46 = [(AIAudiogramLoadingViewController *)self progressView];
  v44 = [v46 bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:20.0];
  v80[6] = v43;
  v42 = [(AIAudiogramLoadingViewController *)self progressLabel];
  v32 = [v42 widthAnchor];
  v33 = [(AIAudiogramLoadingViewController *)self view];
  v34 = [v33 widthAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 multiplier:0.8];
  v80[7] = v35;
  v36 = [(AIAudiogramLoadingViewController *)self progressLabel];
  v37 = [v36 centerXAnchor];
  v38 = [(AIAudiogramLoadingViewController *)self view];
  v39 = [v38 centerXAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  v80[8] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:9];
  [v59 activateConstraints:v41];
}

- (void)setProgress:(float)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = aiLocString(@"AudiogramIngestionLoadingProgress");
  v7 = [MEMORY[0x277CCABB0] numberWithInt:(a3 * 100.0)];
  v8 = [v5 stringWithFormat:v6, v7, @"%"];
  v9 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [v9 setText:v8];

  v11 = [(AIAudiogramLoadingViewController *)self progressView];
  *&v10 = a3;
  [v11 setProgress:1 animated:v10];
}

- (void)showLoadingMessage:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramLoadingViewController *)self progressLabel];
  [v5 setText:v4];
}

@end