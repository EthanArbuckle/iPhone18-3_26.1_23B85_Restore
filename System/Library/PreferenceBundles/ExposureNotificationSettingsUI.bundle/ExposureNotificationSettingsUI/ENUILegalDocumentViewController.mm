@interface ENUILegalDocumentViewController
- (void)viewDidLoad;
@end

@implementation ENUILegalDocumentViewController

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = ENUILegalDocumentViewController;
  [(ENUILegalDocumentViewController *)&v49 viewDidLoad];
  v3 = ENUILocalizedString();
  [(ENUILegalDocumentViewController *)self setTitle:v3];

  specifier = [(ENUILegalDocumentViewController *)self specifier];
  userInfo = [specifier userInfo];

  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v6 = [v5 fontDescriptorWithSymbolicTraits:0x10000];

  v48 = [v6 fontDescriptorWithDesign:UIFontDescriptorSystemDesignSerif];

  v7 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ENUILegalDocumentViewController *)self setLegalTextView:v7];

  v8 = [UIFont fontWithDescriptor:v48 size:0.0];
  legalTextView = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView setFont:v8];

  v10 = +[UIColor clearColor];
  legalTextView2 = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView2 setBackgroundColor:v10];

  legalTextView3 = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView3 setAlwaysBounceVertical:1];

  consentStatus = [userInfo consentStatus];
  textConsented = [consentStatus textConsented];
  legalTextView4 = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView4 setText:textConsented];

  legalTextView5 = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView5 setContentInset:{20.0, 20.0, 20.0, 20.0}];

  legalTextView6 = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView6 setEditable:0];

  legalTextView7 = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView7 setTranslatesAutoresizingMaskIntoConstraints:0];

  legalTextView8 = [(ENUILegalDocumentViewController *)self legalTextView];
  [legalTextView8 setDataDetectorTypes:3];

  view = [(ENUILegalDocumentViewController *)self view];
  legalTextView9 = [(ENUILegalDocumentViewController *)self legalTextView];
  [view addSubview:legalTextView9];

  legalTextView10 = [(ENUILegalDocumentViewController *)self legalTextView];
  leadingAnchor = [legalTextView10 leadingAnchor];
  view2 = [(ENUILegalDocumentViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[0] = v41;
  legalTextView11 = [(ENUILegalDocumentViewController *)self legalTextView];
  trailingAnchor = [legalTextView11 trailingAnchor];
  view3 = [(ENUILegalDocumentViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[1] = v35;
  legalTextView12 = [(ENUILegalDocumentViewController *)self legalTextView];
  topAnchor = [legalTextView12 topAnchor];
  view4 = [(ENUILegalDocumentViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v50[2] = v24;
  legalTextView13 = [(ENUILegalDocumentViewController *)self legalTextView];
  bottomAnchor = [legalTextView13 bottomAnchor];
  view5 = [(ENUILegalDocumentViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v50[3] = v30;
  v31 = [NSArray arrayWithObjects:v50 count:4];
  [NSLayoutConstraint activateConstraints:v31];
}

@end