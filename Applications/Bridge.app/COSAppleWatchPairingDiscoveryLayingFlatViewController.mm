@interface COSAppleWatchPairingDiscoveryLayingFlatViewController
- (COSAppleWatchPairingDiscoveryLayingFlatViewController)init;
- (id)detailString;
- (id)titleString;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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
  view = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];

  v5 = [[COSAppleWatchCameraAlignementView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  instructionView = self->_instructionView;
  self->_instructionView = v5;

  contentView = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  [contentView addSubview:self->_instructionView];

  [(COSAppleWatchCameraAlignementView *)self->_instructionView setContentMode:1];
  [(COSAppleWatchCameraAlignementView *)self->_instructionView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(COSAppleWatchCameraAlignementView *)self->_instructionView topAnchor];
  contentView2 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:25.0];
  v22[0] = v8;
  bottomAnchor = [(COSAppleWatchCameraAlignementView *)self->_instructionView bottomAnchor];
  contentView3 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[1] = v12;
  centerXAnchor = [(COSAppleWatchCameraAlignementView *)self->_instructionView centerXAnchor];
  contentView4 = [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[2] = v16;
  v17 = [NSArray arrayWithObjects:v22 count:3];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSAppleWatchPairingDiscoveryLayingFlatViewController;
  [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)&v4 viewDidAppear:appear];
  [(COSAppleWatchCameraAlignementView *)self->_instructionView setAnimationsEnabled:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = COSAppleWatchPairingDiscoveryLayingFlatViewController;
  [(COSAppleWatchPairingDiscoveryLayingFlatViewController *)&v4 viewDidDisappear:disappear];
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