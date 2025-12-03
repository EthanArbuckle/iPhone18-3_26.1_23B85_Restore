@interface MKPlaceCardFooterActionsViewController
- (void)reloadData;
- (void)viewDidLoad;
@end

@implementation MKPlaceCardFooterActionsViewController

- (void)reloadData
{
  actionManager = [(MKPlaceCardActionsViewController *)self actionManager];
  createFooterActions = [actionManager createFooterActions];
  [(MKPlaceCardActionsViewController *)self setActionItemArray:createFooterActions];
}

- (void)viewDidLoad
{
  v3 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlaceCardFooterActionsViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = MKPlaceCardFooterActionsViewController;
  [(MKPlaceCardActionsViewController *)&v8 viewDidLoad];
  [(MKPlaceCardActionsViewController *)self setHaveTwoColumns:0];
  [(MKPlaceCardActionsViewController *)self setAllowRowSelection:1];
  -[MKPlaceCardActionsViewController setShowTopButtonSeparator:](self, "setShowTopButtonSeparator:", [MEMORY[0x1E69DB878] _mapkit_accessibilityTextEnabled]);
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView setShowsBottomHairline:0];

  [(MKPlaceCardActionsViewController *)self setShowTopSeparator:0];
  actionManager = [(MKPlaceCardActionsViewController *)self actionManager];
  createFooterActions = [actionManager createFooterActions];
  [(MKPlaceCardActionsViewController *)self setActionItemArray:createFooterActions];

  v7 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlaceCardFooterActionsViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }
}

@end