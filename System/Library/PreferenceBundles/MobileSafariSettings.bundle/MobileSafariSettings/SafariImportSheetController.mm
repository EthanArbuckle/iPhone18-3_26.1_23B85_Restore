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
  v6 = [(SafariImportExportSheetController *)self stackView];
  [v6 insertArrangedSubview:v5 atIndex:0];

  [v5 setContentMode:1];
  v7 = [v5 widthAnchor];
  v8 = [(SafariImportExportSheetController *)self stackView];
  v9 = [v8 layoutMarginsGuide];
  v10 = [v9 widthAnchor];
  v11 = [v7 constraintLessThanOrEqualToAnchor:v10 multiplier:0.7];
  [v11 setActive:1];

  v12 = [(SafariImportExportSheetController *)self detailLabel];

  if (v12)
  {
    v13 = [(SafariImportExportSheetController *)self stackView];
    v14 = [(SafariImportExportSheetController *)self titleLabel];
    [v13 setCustomSpacing:v14 afterView:10.0];

    v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
    v16 = [(SafariImportExportSheetController *)self detailLabel];
    [v16 setFont:v15];
  }
}

@end