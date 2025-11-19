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

  v4 = [(ENUILegalDocumentViewController *)self specifier];
  v47 = [v4 userInfo];

  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v6 = [v5 fontDescriptorWithSymbolicTraits:0x10000];

  v48 = [v6 fontDescriptorWithDesign:UIFontDescriptorSystemDesignSerif];

  v7 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ENUILegalDocumentViewController *)self setLegalTextView:v7];

  v8 = [UIFont fontWithDescriptor:v48 size:0.0];
  v9 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v9 setFont:v8];

  v10 = +[UIColor clearColor];
  v11 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v11 setBackgroundColor:v10];

  v12 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v12 setAlwaysBounceVertical:1];

  v13 = [v47 consentStatus];
  v14 = [v13 textConsented];
  v15 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v15 setText:v14];

  v16 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v16 setContentInset:{20.0, 20.0, 20.0, 20.0}];

  v17 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v17 setEditable:0];

  v18 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v19 setDataDetectorTypes:3];

  v20 = [(ENUILegalDocumentViewController *)self view];
  v21 = [(ENUILegalDocumentViewController *)self legalTextView];
  [v20 addSubview:v21];

  v46 = [(ENUILegalDocumentViewController *)self legalTextView];
  v44 = [v46 leadingAnchor];
  v45 = [(ENUILegalDocumentViewController *)self view];
  v43 = [v45 safeAreaLayoutGuide];
  v42 = [v43 leadingAnchor];
  v41 = [v44 constraintEqualToAnchor:v42];
  v50[0] = v41;
  v40 = [(ENUILegalDocumentViewController *)self legalTextView];
  v38 = [v40 trailingAnchor];
  v39 = [(ENUILegalDocumentViewController *)self view];
  v37 = [v39 safeAreaLayoutGuide];
  v36 = [v37 trailingAnchor];
  v35 = [v38 constraintEqualToAnchor:v36];
  v50[1] = v35;
  v34 = [(ENUILegalDocumentViewController *)self legalTextView];
  v32 = [v34 topAnchor];
  v33 = [(ENUILegalDocumentViewController *)self view];
  v22 = [v33 safeAreaLayoutGuide];
  v23 = [v22 topAnchor];
  v24 = [v32 constraintEqualToAnchor:v23];
  v50[2] = v24;
  v25 = [(ENUILegalDocumentViewController *)self legalTextView];
  v26 = [v25 bottomAnchor];
  v27 = [(ENUILegalDocumentViewController *)self view];
  v28 = [v27 safeAreaLayoutGuide];
  v29 = [v28 bottomAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];
  v50[3] = v30;
  v31 = [NSArray arrayWithObjects:v50 count:4];
  [NSLayoutConstraint activateConstraints:v31];
}

@end