@interface COSAppleWatchPairingDiscoveryLayingFlatViewController
- (COSAppleWatchPairingDiscoveryLayingFlatViewController)init;
- (id)detailString;
- (id)titleString;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation COSAppleWatchPairingDiscoveryLayingFlatViewController

- (COSAppleWatchPairingDiscoveryLayingFlatViewController)init
{
  v5.receiver = self;
  v5.super_class = COSAppleWatchPairingDiscoveryLayingFlatViewController;
  v2 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)v2 setStyle:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = COSAppleWatchPairingDiscoveryLayingFlatViewController;
  [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)&v21 viewDidLoad];
  v3 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [[COSAppleWatchCameraAlignementView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  instructionView = self->_instructionView;
  self->_instructionView = v5;

  v7 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  [v7 addSubview:self->_instructionView];

  [(COSAppleWatchCameraAlignementView *)self->_instructionView setContentMode:1];
  [(COSAppleWatchCameraAlignementView *)self->_instructionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(COSAppleWatchCameraAlignementView *)self->_instructionView topAnchor];
  v20 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  v18 = [v20 topAnchor];
  v8 = [v19 constraintEqualToAnchor:v18 constant:25.0];
  v22[0] = v8;
  v9 = [(COSAppleWatchCameraAlignementView *)self->_instructionView bottomAnchor];
  v10 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v22[1] = v12;
  v13 = [(COSAppleWatchCameraAlignementView *)self->_instructionView centerXAnchor];
  v14 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  v15 = [v14 centerXAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v22[2] = v16;
  v17 = [NSArray arrayWithObjects:v22 count:3];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSAppleWatchPairingDiscoveryLayingFlatViewController;
  [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)&v4 viewDidAppear:a3];
  [(COSAppleWatchCameraAlignementView *)self->_instructionView setAnimationsEnabled:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSAppleWatchPairingDiscoveryLayingFlatViewController;
  [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)&v4 viewDidDisappear:a3];
  [(COSAppleWatchCameraAlignementView *)self->_instructionView setAnimationsEnabled:0];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLE_WATCH_DETECTED_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLE_WATCH_DETECTED_DETAIL_TEXT" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end