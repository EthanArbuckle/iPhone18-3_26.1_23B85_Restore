@interface HSPCFaceRecognitionPhotoLibraryAccessViewController
- (HSPCFaceRecognitionPhotoLibraryAccessViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)attributedSubtitle;
@end

@implementation HSPCFaceRecognitionPhotoLibraryAccessViewController

- (HSPCFaceRecognitionPhotoLibraryAccessViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005DAC0;
  v21[3] = &unk_1000C7DF8;
  selfCopy = self;
  v22 = selfCopy;
  v9 = objc_retainBlock(v21);
  v20.receiver = selfCopy;
  v20.super_class = HSPCFaceRecognitionPhotoLibraryAccessViewController;
  v10 = [(HSPCMVVMShellViewController *)&v20 initWithTableViewStyle:2 moduleCreator:&stru_1000C7DD0 moduleControllerBuilder:v9];
  v11 = v10;
  if (v10)
  {
    [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v10 setConfig:configCopy];
    [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v11 setCoordinator:coordinatorCopy];
    v12 = HULocalizedString();
    [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v11 setTitle:v12];

    v13 = [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v11 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v11 futureSelector:"commitConfiguration"];
    [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v11 setSubtitle:@" "];
    attributedSubtitle = [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v11 attributedSubtitle];
    contentView = [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v11 contentView];
    subtitleLabel = [contentView subtitleLabel];
    [subtitleLabel setAttributedText:attributedSubtitle];

    contentView2 = [(HSPCFaceRecognitionPhotoLibraryAccessViewController *)v11 contentView];
    subtitleLabel2 = [contentView2 subtitleLabel];
    [subtitleLabel2 setTextAlignment:4];
  }

  return v11;
}

- (id)attributedSubtitle
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v20 = [v2 fontDescriptorWithSymbolicTraits:32770];

  [v20 pointSize];
  v19 = [UIFont fontWithDescriptor:v20 size:?];
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

  [v4 pointSize];
  v18 = [UIFont fontWithDescriptor:v4 size:?];
  v5 = HULocalizedString();
  v6 = [NSString stringWithFormat:@"\n%@", v5];

  v7 = objc_opt_new();
  v8 = [NSAttributedString alloc];
  v23 = NSFontAttributeName;
  v24 = v19;
  v9 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v10 = [v8 initWithString:v6 attributes:v9];

  v11 = HULocalizedString();
  v12 = [NSString stringWithFormat:@"\n%@", v11];

  v13 = [NSAttributedString alloc];
  v21 = NSFontAttributeName;
  v22 = v18;
  v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v15 = [v13 initWithString:v12 attributes:v14];

  [v7 appendAttributedString:v10];
  [v7 appendAttributedString:v15];
  v16 = [v7 copy];

  return v16;
}

@end