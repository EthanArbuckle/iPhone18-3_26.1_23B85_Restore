@interface SafariImportSheetController
- (void)viewDidLoad;
@end

@implementation SafariImportSheetController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = SafariImportSheetController;
  [(SafariImportExportSheetController *)&v17 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [UIImage imageNamed:@"ImportHeader" inBundle:v3];

  v5 = [[UIImageView alloc] initWithImage:v4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = [(SafariImportExportSheetController *)self stackView];
  [stackView insertArrangedSubview:v5 atIndex:0];

  [v5 setContentMode:1];
  widthAnchor = [v5 widthAnchor];
  stackView2 = [(SafariImportExportSheetController *)self stackView];
  layoutMarginsGuide = [stackView2 layoutMarginsGuide];
  widthAnchor2 = [layoutMarginsGuide widthAnchor];
  v11 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.7];
  [v11 setActive:1];

  detailLabel = [(SafariImportExportSheetController *)self detailLabel];

  if (detailLabel)
  {
    stackView3 = [(SafariImportExportSheetController *)self stackView];
    titleLabel = [(SafariImportExportSheetController *)self titleLabel];
    [stackView3 setCustomSpacing:titleLabel afterView:10.0];

    v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
    detailLabel2 = [(SafariImportExportSheetController *)self detailLabel];
    [detailLabel2 setFont:v15];
  }
}

@end