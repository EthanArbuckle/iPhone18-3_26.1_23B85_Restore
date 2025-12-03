@interface RCRecorderStyleProvider
+ (id)sharedStyleProvider;
- (BOOL)_isIpad;
- (BOOL)_isIphone;
- (BOOL)_isLandscape;
- (BOOL)_isPortrait;
- (BOOL)_isWatch;
- (BOOL)appIsRightToLeft;
- (BOOL)expandsTableViewRowOnSelection;
- (BOOL)explicitlyScrollsToTableViewRowOnSelection;
- (BOOL)hasPlaybackCard;
- (BOOL)isAccessibilityLargerTextSizeEnabled;
- (BOOL)librarySupportsBlueCellSelectionStyle;
- (BOOL)needsTouchDownWorkaround;
- (BOOL)setSplitViewHorizontalSizeClass:(int64_t)class;
- (CGSize)actionMenuImageSize;
- (CGSize)centerClusterControlSize;
- (CGSize)centerClusterControlSizeRecentlyDeleted;
- (CGSize)doneCancelButtonRightSize;
- (CGSize)playbackSpeedSliderTickSize;
- (CGSize)trimDeleteButtonLeftSize;
- (NSDirectionalEdgeInsets)playbackSettingsButtonContentInsets;
- (UIEdgeInsets)playbackViewEdgeInsets;
- (UIEdgeInsets)playbackViewFullScreenEdgeInsets;
- (UIEdgeInsets)playbackViewTitleTextInsets;
- (double)annotationViewHeight;
- (double)beginEndLabelsTopPadding;
- (double)centerClusterWidthCard;
- (double)centerClusterWidthJumpButton;
- (double)compactStyleTimeBarDefaultHeight;
- (double)compactWaveformWaveVerticalPadding;
- (double)descriptionViewSecondaryLabelsTopMargin;
- (double)descriptionViewTitleToSecondaryPadding;
- (double)editToolbarButtonTopInset;
- (double)editToolbarHeight;
- (double)editToolbarTitleTopInset;
- (double)editTrimToolbarButtonTopInset;
- (double)jumpBackwardForwardButtonSpacing;
- (double)libraryCellSliderAndControlsVerticalStackViewSpacing;
- (double)librarySelectedMoreAndTrashButtonPadding;
- (double)maximumPrimaryColumnWidth;
- (double)minimumPrimaryColumnWidth;
- (double)overviewWaveformCornerRadius;
- (double)overviewWaveformHeight;
- (double)overviewWaveformHorizontalSpacing;
- (double)overviewWaveformWaveVerticalPadding;
- (double)overviewWaveformWaveWidth;
- (double)playbackViewControlSectionHeight;
- (double)playbackViewCornerRadius;
- (double)playbackViewTimeLabelYOffset;
- (double)playbackViewTimeSectionBottomPadding;
- (double)playbackViewTimeSectionHeight;
- (double)playbackViewTopPadding;
- (double)playbackViewVerticalSpacingAboveOverviewWaveform;
- (double)playbackViewVerticalSpacingBelowOverviewWaveform;
- (double)playbackViewWaveformOverviewSidePadding;
- (double)positionReadoutHeight;
- (double)positionReadoutLabelYOffset;
- (double)presentedViewsMinimumWidth;
- (double)recordingControlHorizontalOffset;
- (double)recordingControlSectionHeight;
- (double)recordingSectionBottomPadding;
- (double)recordingSectionDoneButtonDisabledOpacity;
- (double)recordingViewSpaceBetweenToolbarAndDescriptionView;
- (double)recordingViewWaveformOverviewSpaceBetweenMainWaveformAndOverview;
- (double)recordingViewWaveformOverviewSpaceBetweenTimelabelAndOverview;
- (double)selectionBarWidth;
- (double)selectionKnobRadius;
- (double)sidebarCollectionViewTopPadding;
- (double)timeLineMajorTickHeight;
- (double)timeLineMinorTickHeight;
- (double)topMarginMinSafeAreaTopInsetForCardView;
- (double)topScreenSpacerHeight;
- (double)trimDeleteButtonLeftPaddingDistance;
- (double)virtualNavBarButtonExtraSpaceItemSpacing;
- (double)virtualNavBarWidthInset;
- (double)waveformHorizontalSpacing;
- (double)waveformVerticalHeightReduction;
- (double)waveformVerticalOffset;
- (double)waveformViewBottomPadding;
- (double)waveformViewTopPadding;
- (double)waveformWaveVerticalPadding;
- (double)waveformWaveWidth;
- (id)_gobackwardSystemImage;
- (id)_goforwardSystemImage;
- (id)accessibilityLargeSizes;
- (id)actionControlsColorForPlaybackCard;
- (id)activityImageSymbolConfiguration;
- (id)cardGoBackwardImage;
- (id)cardGoForwardImage;
- (id)cardPauseImage;
- (id)cardPlayImage;
- (id)descriptionViewScalableTitleFontForCardView;
- (id)durationLabelFontForCompactRecordingView;
- (id)editingToolbarButtonDisabledTextColor;
- (id)editingToolbarButtonTextColor;
- (id)editingToolbarTitleLabelFont;
- (id)ellipsisImage;
- (id)emptyLibraryBackgroundColor:(BOOL)color;
- (id)emptyLibraryMessageTextColor:(BOOL)color;
- (id)expandCompactRecordingCardPropertyAnimator;
- (id)favoriteImage;
- (id)folderSelectionCollectionViewCellColor;
- (id)folderSelectionNavBarNewFolderImageTintColor;
- (id)formattedDateStringFromDate:(id)date forUUID:(id)d;
- (id)libraryGoBackwardImage;
- (id)libraryGoForwardImage;
- (id)libraryPauseImage;
- (id)libraryPlayImage;
- (id)mainViewBackgroundColor;
- (id)maxTrackTintColor:(BOOL)color;
- (id)minTrackTintColor:(BOOL)color;
- (id)moveToFolderImage;
- (id)notFavoriteImage;
- (id)playbackCardBottomGradientColor:(BOOL)color;
- (id)playbackCardSecondaryLabelFontColor;
- (id)playbackCardTopBorderColor1:(BOOL)color1;
- (id)playbackCardTopBorderColor2:(BOOL)color2;
- (id)playbackCardTopGradientColor:(BOOL)color;
- (id)playbackPositionBarColor;
- (id)playbackViewTimeLabelFont;
- (id)progressViewBackgroundColorTableViewCell:(BOOL)cell;
- (id)recentlyDeleteToolBarDividerColor;
- (id)recordingCardDefaultBackgroundColor:(BOOL)color;
- (id)recordingControlInnerColorResume;
- (id)recordingControlOuterColor:(BOOL)color;
- (id)selectionOverlayColor;
- (id)sidebarCollectionViewBackgroundColor;
- (id)sidebarNavBarNewFolderImageTintColor;
- (id)splitViewSeparatorColor:(BOOL)color;
- (id)standardInteractionTintColor;
- (id)swipeTrashImage;
- (id)tableViewBackgroundColor;
- (id)tableViewSelectedCellTextColor;
- (id)tableViewToolboxSeparatorColor;
- (id)timeLineLabelFont;
- (id)timelinePlaybackBackgroundColor:(BOOL)color;
- (id)transportControlsColorForPlaybackCard:(BOOL)card;
- (id)waveformPlaybackBackgroundColor:(BOOL)color;
- (id)waveformPlaybackHighlightedBackgroundColor:(BOOL)color;
- (id)waveformRecordingColor;
- (id)waveformStandardColor:(BOOL)color;
- (id)windowHeaderSpacerViewBackgroundColor:(BOOL)color;
- (int64_t)cellSelectionStyle;
- (int64_t)sidebarCollectionViewListAppearance;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation RCRecorderStyleProvider

+ (id)sharedStyleProvider
{
  if (qword_82388 != -1)
  {
    sub_42338();
  }

  v3 = qword_82380;

  return v3;
}

- (id)formattedDateStringFromDate:(id)date forUUID:(id)d
{
  dCopy = d;
  dateCopy = date;
  v7 = +[RCDateFormatter sharedDateFormatter];
  v8 = [v7 formattedDateStringFromDate:dateCopy forUUID:dCopy];

  return v8;
}

- (BOOL)setSplitViewHorizontalSizeClass:(int64_t)class
{
  v5 = [(RCRecorderStyleProvider *)self _horizontalSizeClassFromSplitView]!= class;
  [(RCRecorderStyleProvider *)self set_horizontalSizeClassFromSplitView:class];
  return v5;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(RCRecorderStyleProvider *)self _isIpad])
  {
    return 30;
  }

  else
  {
    return 6;
  }
}

- (BOOL)appIsRightToLeft
{
  v2 = +[_TtC22AudioMessagesExtension24AMMessagesViewController sharedMessagesViewController];
  view = [v2 view];
  v4 = [view effectiveUserInterfaceLayoutDirection] == &dword_0 + 1;

  return v4;
}

- (double)minimumPrimaryColumnWidth
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    return 182.0;
  }

  [(RCRecorderStyleProvider *)self primaryColumnWidth];
  return result;
}

- (double)maximumPrimaryColumnWidth
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    return 600.0;
  }

  [(RCRecorderStyleProvider *)self primaryColumnWidth];
  return result;
}

- (double)centerClusterWidthCard
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;

  if ([(RCRecorderStyleProvider *)self _isWideIPad])
  {

    [(RCRecorderStyleProvider *)self centerClusterWidthJumpButton];
  }

  else
  {
    _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = v5 + -58.0;
    if (_isIOSMac)
    {
      return 260.0;
    }
  }

  return result;
}

- (double)centerClusterWidthJumpButton
{
  if ([(RCRecorderStyleProvider *)self _isWideIPad])
  {
    v3 = 198.0;
  }

  else if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v3 = 260.0;
  }

  else
  {
    v3 = 296.0;
  }

  [(RCRecorderStyleProvider *)self jumpBackwardForwardButtonSpacing];
  return v3 + v4 * 2.0;
}

- (double)librarySelectedMoreAndTrashButtonPadding
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  result = 4.0;
  if (_isWideIPad)
  {
    return 0.0;
  }

  return result;
}

- (CGSize)centerClusterControlSize
{
  v2 = 55.0;
  v3 = 66.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)centerClusterControlSizeRecentlyDeleted
{
  v2 = 1.79769313e308;
  v3 = 66.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSDirectionalEdgeInsets)playbackSettingsButtonContentInsets
{
  [(RCRecorderStyleProvider *)self editButtonContentTopBottomPadding];
  v3 = v2 + 2.0;
  v4 = 5.0;
  v5 = 5.0;
  v6 = v3;
  result.trailing = v5;
  result.bottom = v6;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (double)topScreenSpacerHeight
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 30.0;
  if (_isIOSMac)
  {
    return 0.0;
  }

  return result;
}

- (double)recordingControlSectionHeight
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    return 94.8051948;
  }

  if (![(RCRecorderStyleProvider *)self _isWatch])
  {
    return 96.0;
  }

  [(RCRecorderStyleProvider *)self recordingControlHeight];
  return v4 + 24.0;
}

- (double)recordingControlHorizontalOffset
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 0.0;
  if (_usesVibrantUI)
  {
    return 8.0;
  }

  return result;
}

- (double)overviewWaveformHeight
{
  if ([(RCRecorderStyleProvider *)self _isWideIPad])
  {
    return 48.0;
  }

  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 57.0;
  if (_isIOSMac)
  {
    return 61.038961;
  }

  return result;
}

- (double)overviewWaveformCornerRadius
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 5.19480519;
  if (!_isIOSMac)
  {
    return 4.0;
  }

  return result;
}

- (double)recordingSectionBottomPadding
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 39.0;
  if (!_usesVibrantUI)
  {
    return 0.0;
  }

  return result;
}

- (double)positionReadoutHeight
{
  if ([(RCRecorderStyleProvider *)self _isWideIPad])
  {
    return 76.0;
  }

  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 70.0;
  if (_isIOSMac)
  {
    return 151.948052;
  }

  return result;
}

- (double)positionReadoutLabelYOffset
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 1.2987013;
  if (!_isIOSMac)
  {
    return 0.0;
  }

  return result;
}

- (double)editToolbarHeight
{
  _isVibrantUIOrIOSMac = [(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac];
  result = 50.0;
  if (_isVibrantUIOrIOSMac)
  {
    return 75.0;
  }

  return result;
}

- (double)topMarginMinSafeAreaTopInsetForCardView
{
  _isWideIpadOrIOSMac = [(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac];
  result = 32.0;
  if (_isWideIpadOrIOSMac)
  {
    return 0.0;
  }

  return result;
}

- (double)recordingViewWaveformOverviewSpaceBetweenMainWaveformAndOverview
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  result = 22.0;
  if ((_isWideIPad & 1) == 0)
  {
    _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = 116.0;
    if (_isIOSMac)
    {
      return 49.3506494;
    }
  }

  return result;
}

- (double)recordingViewWaveformOverviewSpaceBetweenTimelabelAndOverview
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  result = 24.0;
  if ((_isWideIPad & 1) == 0)
  {
    [(RCRecorderStyleProvider *)self _isIOSMac];
    return 0.0;
  }

  return result;
}

- (double)recordingViewSpaceBetweenToolbarAndDescriptionView
{
  if (![(RCRecorderStyleProvider *)self _isWideIPad])
  {
    return 0.0;
  }

  [(RCRecorderStyleProvider *)self playbackViewTopPadding];
  return result;
}

- (double)virtualNavBarWidthInset
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 0.0;
  if (_usesVibrantUI)
  {
    return -4.0;
  }

  return result;
}

- (double)virtualNavBarButtonExtraSpaceItemSpacing
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 0.0;
  if (_usesVibrantUI)
  {
    return 22.0;
  }

  return result;
}

- (double)trimDeleteButtonLeftPaddingDistance
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 15.5844156;
  if (!_isIOSMac)
  {
    return 10.0;
  }

  return result;
}

- (CGSize)trimDeleteButtonLeftSize
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  v3 = 80.0;
  if (_isIOSMac)
  {
    v3 = 116.883117;
  }

  v4 = 32.0;
  if (_isIOSMac)
  {
    v4 = 36.3636364;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)doneCancelButtonRightSize
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  v3 = 136.0;
  if (_isIOSMac)
  {
    v3 = 90.0;
  }

  v4 = 50.0;
  if (_isIOSMac)
  {
    v4 = 36.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (id)expandCompactRecordingCardPropertyAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 initialVelocity:{0.0, 0.0}];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.5];

  return v3;
}

- (double)jumpBackwardForwardButtonSpacing
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  result = 35.0;
  if (!_isWideIPad)
  {
    return 0.0;
  }

  return result;
}

- (id)playbackViewTimeLabelFont
{
  if ([(RCRecorderStyleProvider *)self _isWatch])
  {
    v3 = UIFontWeightRegular;
    v4 = 35.0;
  }

  else
  {
    if ([(RCRecorderStyleProvider *)self _isIpad])
    {
      v3 = UIFontWeightBold;
      v5 = 0x4041000000000000;
    }

    else
    {
      v3 = UIFontWeightSemibold;
      [(RCRecorderStyleProvider *)self _isIOSMac];
      v5 = 0x4045000000000000;
    }

    v4 = *&v5;
  }

  return [UIFont monospacedDigitSystemFontOfSize:v4 weight:v3];
}

- (double)playbackViewTimeSectionHeight
{
  if ([(RCRecorderStyleProvider *)self _usesVibrantUI])
  {
    return 60.0;
  }

  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 70.0;
  if (_isIOSMac)
  {
    return 150.649351;
  }

  return result;
}

- (double)playbackViewTimeSectionBottomPadding
{
  _isIpad = [(RCRecorderStyleProvider *)self _isIpad];
  result = 0.0;
  if (_isIpad)
  {
    return 18.0;
  }

  return result;
}

- (double)playbackViewTimeLabelYOffset
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 2.5974026;
  if (!_usesVibrantUI)
  {
    return 0.0;
  }

  return result;
}

- (double)playbackViewControlSectionHeight
{
  if ([(RCRecorderStyleProvider *)self _usesVibrantUI])
  {
    return 94.8051948;
  }

  if (![(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac])
  {
    return 92.0;
  }

  [(RCRecorderStyleProvider *)self recordingControlSectionHeight];
  return result;
}

- (double)playbackViewTopPadding
{
  presentsTitleAndAdditionalEditingControlsInPlaybackCard = [(RCRecorderStyleProvider *)self presentsTitleAndAdditionalEditingControlsInPlaybackCard];
  result = 50.0;
  if (presentsTitleAndAdditionalEditingControlsInPlaybackCard)
  {
    return 4.0;
  }

  return result;
}

- (double)playbackViewWaveformOverviewSidePadding
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 42.0;
  if (_isIOSMac)
  {
    return 42.8571429;
  }

  return result;
}

- (double)playbackViewVerticalSpacingAboveOverviewWaveform
{
  _isIpad = [(RCRecorderStyleProvider *)self _isIpad];
  result = 22.0;
  if ((_isIpad & 1) == 0)
  {
    _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = 62.0;
    if (_isIOSMac)
    {
      return 49.3506494;
    }
  }

  return result;
}

- (double)playbackViewVerticalSpacingBelowOverviewWaveform
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 23.0;
  if ((_usesVibrantUI & 1) == 0)
  {
    _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = 41.0;
    if (_isIOSMac)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)playbackViewCornerRadius
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 0.0;
  if (_usesVibrantUI)
  {
    return 10.0;
  }

  return result;
}

- (BOOL)_isPortrait
{
  v2 = +[_TtC22AudioMessagesExtension24AMMessagesViewController sharedMessagesViewController];
  view = [v2 view];
  window = [view window];
  windowScene = [window windowScene];
  v6 = [windowScene interfaceOrientation] - 1 < &dword_0 + 2;

  return v6;
}

- (BOOL)_isLandscape
{
  v2 = +[_TtC22AudioMessagesExtension24AMMessagesViewController sharedMessagesViewController];
  view = [v2 view];
  window = [view window];
  windowScene = [window windowScene];
  v6 = [windowScene interfaceOrientation] - 3 < &dword_0 + 2;

  return v6;
}

- (UIEdgeInsets)playbackViewEdgeInsets
{
  if ([(RCRecorderStyleProvider *)self _isIpad])
  {
    [(RCRecorderStyleProvider *)self _isPortrait];
    right = 0.0;
    bottom = 0.0;
    left = 0.0;
    top = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)playbackViewFullScreenEdgeInsets
{
  if ([(RCRecorderStyleProvider *)self _isIpad])
  {
    [(RCRecorderStyleProvider *)self _isPortrait];
    top = 24.0;
    right = 0.0;
    bottom = 0.0;
    left = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)playbackViewTitleTextInsets
{
  v2 = 0.0;
  v3 = -12.0;
  v4 = 0.0;
  v5 = -5.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)playbackSpeedSliderTickSize
{
  [(RCRecorderStyleProvider *)self playbackSpeedSliderHeight];
  v3 = v2 * 3.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)libraryCellSliderAndControlsVerticalStackViewSpacing
{
  if (UIAccessibilityIsBoldTextEnabled())
  {
    return 35.0;
  }

  isAccessibilityLargerTextSizeEnabled = [(RCRecorderStyleProvider *)self isAccessibilityLargerTextSizeEnabled];
  result = 35.0;
  if (!isAccessibilityLargerTextSizeEnabled)
  {
    return 29.0;
  }

  return result;
}

- (BOOL)librarySupportsBlueCellSelectionStyle
{
  if ([(RCRecorderStyleProvider *)self recordingTableViewSupportsSidebarBackgroundConfiguration])
  {
    return 1;
  }

  return [(RCRecorderStyleProvider *)self _isIOSMac];
}

- (CGSize)actionMenuImageSize
{
  v2 = 32.0;
  v3 = 32.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)descriptionViewSecondaryLabelsTopMargin
{
  _isVibrantUIOrIOSMac = [(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac];
  result = 4.0;
  if (_isVibrantUIOrIOSMac)
  {
    return 2.0;
  }

  return result;
}

- (double)descriptionViewTitleToSecondaryPadding
{
  _isVibrantUIOrIOSMac = [(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac];
  result = 3.0;
  if (_isVibrantUIOrIOSMac)
  {
    return 4.0;
  }

  return result;
}

- (double)waveformVerticalHeightReduction
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = -8.0;
  if ((_usesVibrantUI & 1) == 0)
  {
    _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = 90.0;
    if (_isIOSMac)
    {
      return -38.0;
    }
  }

  return result;
}

- (double)waveformVerticalOffset
{
  if ([(RCRecorderStyleProvider *)self _usesVibrantUI])
  {
    return 52.0;
  }

  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 21.0;
  if (_isIOSMac)
  {
    return 25.0;
  }

  return result;
}

- (double)waveformViewTopPadding
{
  if ([(RCRecorderStyleProvider *)self _isIpad])
  {
    return 52.0;
  }

  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 70.0;
  if (_isIOSMac)
  {
    return 0.0;
  }

  return result;
}

- (double)waveformViewBottomPadding
{
  _usesVibrantUI = [(RCRecorderStyleProvider *)self _usesVibrantUI];
  result = 10.0;
  if ((_usesVibrantUI & 1) == 0)
  {
    _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = 12.987013;
    if (!_isIOSMac)
    {
      return 24.0;
    }
  }

  return result;
}

- (double)waveformWaveWidth
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 1.2987013;
  if (!_isIOSMac)
  {
    return 1.0;
  }

  return result;
}

- (double)waveformHorizontalSpacing
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  [(RCRecorderStyleProvider *)self waveformWaveWidth];
  result = v4 + 3.0;
  if (_isIOSMac)
  {
    return result / 0.77;
  }

  return result;
}

- (double)overviewWaveformWaveWidth
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 1.2987013;
  if (!_isIOSMac)
  {
    return 1.0;
  }

  return result;
}

- (double)overviewWaveformHorizontalSpacing
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  [(RCRecorderStyleProvider *)self overviewWaveformWaveWidth];
  result = v4 + 1.0;
  if (_isIOSMac)
  {
    return result / 0.77;
  }

  return result;
}

- (double)waveformWaveVerticalPadding
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 12.987013;
  if (!_isIOSMac)
  {
    return 10.0;
  }

  return result;
}

- (double)overviewWaveformWaveVerticalPadding
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 12.987013;
  if (!_isIOSMac)
  {
    return 10.0;
  }

  return result;
}

- (double)compactWaveformWaveVerticalPadding
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 23.3766234;
  if (!_isIOSMac)
  {
    return 18.0;
  }

  return result;
}

- (double)beginEndLabelsTopPadding
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 6.49350649;
  if (!_isIOSMac)
  {
    return 5.0;
  }

  return result;
}

- (double)timeLineMajorTickHeight
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 12.987013;
  if (!_isIOSMac)
  {
    return 10.0;
  }

  return result;
}

- (double)timeLineMinorTickHeight
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 6.49350649;
  if (!_isIOSMac)
  {
    return 5.0;
  }

  return result;
}

- (double)annotationViewHeight
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 35.0649351;
  if (!_isIOSMac)
  {
    return 27.0;
  }

  return result;
}

- (double)editToolbarTitleTopInset
{
  _isVibrantUIOrIOSMac = [(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac];
  result = 12.5;
  if (_isVibrantUIOrIOSMac)
  {
    return 16.0;
  }

  return result;
}

- (double)editToolbarButtonTopInset
{
  _isVibrantUIOrIOSMac = [(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac];
  result = 6.0;
  if (_isVibrantUIOrIOSMac)
  {
    return 9.0;
  }

  return result;
}

- (double)editTrimToolbarButtonTopInset
{
  _isVibrantUIOrIOSMac = [(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac];
  result = 14.0;
  if (_isVibrantUIOrIOSMac)
  {
    return 11.0;
  }

  return result;
}

- (double)selectionKnobRadius
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 4.54545455;
  if (!_isIOSMac)
  {
    return 3.5;
  }

  return result;
}

- (double)selectionBarWidth
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 1.2987013;
  if (!_isIOSMac)
  {
    return 1.0;
  }

  return result;
}

- (double)compactStyleTimeBarDefaultHeight
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 63.0;
  if (_isIOSMac)
  {
    return 81.8181818;
  }

  return result;
}

- (id)libraryPlayImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:32.0];
  v3 = [UIImage systemImageNamed:@"play.fill"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

- (id)cardPlayImage
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  if (_isWideIPad)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  v4 = 42.0;
  if (_isWideIPad)
  {
    v4 = 50.0;
  }

  v5 = [UIImageSymbolConfiguration configurationWithPointSize:v3 weight:2 scale:v4];
  v6 = [UIImage systemImageNamed:@"play.fill"];
  v7 = [v6 imageWithSymbolConfiguration:v5];

  return v7;
}

- (id)libraryPauseImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:32.0];
  v3 = [UIImage systemImageNamed:@"pause.fill"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

- (id)cardPauseImage
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  if (_isWideIPad)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  v4 = 42.0;
  if (_isWideIPad)
  {
    v4 = 50.0;
  }

  v5 = [UIImageSymbolConfiguration configurationWithPointSize:v3 weight:2 scale:v4];
  v6 = [UIImage systemImageNamed:@"pause.fill"];
  v7 = [v6 imageWithSymbolConfiguration:v5];

  return v7;
}

- (id)libraryGoBackwardImage
{
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  _gobackwardSystemImage = [(RCRecorderStyleProvider *)self _gobackwardSystemImage];
  v5 = [_gobackwardSystemImage imageWithSymbolConfiguration:v3];

  return v5;
}

- (id)cardGoBackwardImage
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  if (_isWideIPad)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = 25.0;
  if (_isWideIPad)
  {
    v5 = 31.0;
  }

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:v4 weight:2 scale:v5];
  _gobackwardSystemImage = [(RCRecorderStyleProvider *)self _gobackwardSystemImage];
  v8 = [_gobackwardSystemImage imageWithSymbolConfiguration:v6];

  return v8;
}

- (id)_gobackwardSystemImage
{
  if ([(RCRecorderStyleProvider *)self needsLocalizedSymbolImageWorkaround])
  {
    [UIImage systemImageNamedNumberAware:@"gobackward.15"];
  }

  else
  {
    [UIImage systemImageNamed:@"gobackward.15"];
  }
  v2 = ;

  return v2;
}

- (id)libraryGoForwardImage
{
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  _goforwardSystemImage = [(RCRecorderStyleProvider *)self _goforwardSystemImage];
  v5 = [_goforwardSystemImage imageWithSymbolConfiguration:v3];

  return v5;
}

- (id)cardGoForwardImage
{
  _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
  if (_isWideIPad)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = 25.0;
  if (_isWideIPad)
  {
    v5 = 31.0;
  }

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:v4 weight:2 scale:v5];
  _goforwardSystemImage = [(RCRecorderStyleProvider *)self _goforwardSystemImage];
  v8 = [_goforwardSystemImage imageWithSymbolConfiguration:v6];

  return v8;
}

- (id)_goforwardSystemImage
{
  if ([(RCRecorderStyleProvider *)self needsLocalizedSymbolImageWorkaround])
  {
    [UIImage systemImageNamedNumberAware:@"goforward.15"];
  }

  else
  {
    [UIImage systemImageNamed:@"goforward.15"];
  }
  v2 = ;

  return v2;
}

- (id)ellipsisImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  v3 = [UIImage systemImageNamed:@"ellipsis"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

- (id)swipeTrashImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  v3 = [UIImage systemImageNamed:@"trash.fill" withConfiguration:v2];

  return v3;
}

- (id)moveToFolderImage
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = 0;
  }

  else
  {
    v2 = [UIImage systemImageNamed:@"folder"];
  }

  return v2;
}

- (id)favoriteImage
{
  favoriteImageName = [(RCRecorderStyleProvider *)self favoriteImageName];
  v3 = [UIImage systemImageNamed:favoriteImageName];

  return v3;
}

- (id)notFavoriteImage
{
  notFavoriteImageName = [(RCRecorderStyleProvider *)self notFavoriteImageName];
  v3 = [UIImage systemImageNamed:notFavoriteImageName];

  return v3;
}

- (id)mainViewBackgroundColor
{
  if ([(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac])
  {
    [(RCRecorderStyleProvider *)self _roundedThemePrimaryBackgroundColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (id)windowHeaderSpacerViewBackgroundColor:(BOOL)color
{
  if (color)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)transportControlsColorForPlaybackCard:(BOOL)card
{
  v3 = 0.129411765;
  if (card)
  {
    v3 = 1.0;
  }

  return [UIColor colorWithWhite:v3 alpha:?];
}

- (id)actionControlsColorForPlaybackCard
{
  v2 = objc_opt_new();
  tintColor = [v2 tintColor];

  return tintColor;
}

- (id)playbackCardTopGradientColor:(BOOL)color
{
  if (color)
  {
    [(RCRecorderStyleProvider *)self recordingCardTopGradientColor];
  }

  else
  {
    [UIColor colorWithWhite:0.93 alpha:1.0];
  }
  v3 = ;

  return v3;
}

- (id)playbackCardBottomGradientColor:(BOOL)color
{
  if (color)
  {
    [(RCRecorderStyleProvider *)self recordingCardBottomGradientColor];
  }

  else
  {
    [UIColor colorWithWhite:0.83 alpha:1.0];
  }
  v3 = ;

  return v3;
}

- (id)playbackCardTopBorderColor1:(BOOL)color1
{
  if (color1)
  {
    [(RCRecorderStyleProvider *)self recordingCardTopBorderColor1];
  }

  else
  {
    [UIColor colorWithWhite:0.7 alpha:1.0];
  }
  v3 = ;

  return v3;
}

- (id)playbackCardTopBorderColor2:(BOOL)color2
{
  if (color2)
  {
    [(RCRecorderStyleProvider *)self recordingCardTopBorderColor2];
  }

  else
  {
    [UIColor colorWithWhite:1.0 alpha:1.0];
  }
  v3 = ;

  return v3;
}

- (id)splitViewSeparatorColor:(BOOL)color
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac]&& color)
  {
    v5 = +[UIColor systemBlackColor];
  }

  else
  {
    v6 = +[UIColor separatorColor];
    sidebarCollectionViewBackgroundColor = [(RCRecorderStyleProvider *)self sidebarCollectionViewBackgroundColor];
    [v6 alphaComponent];
    v5 = [sidebarCollectionViewBackgroundColor colorWithAlphaComponent:?];
  }

  return v5;
}

- (id)recordingCardDefaultBackgroundColor:(BOOL)color
{
  colorCopy = color;
  v5 = +[UIColor secondarySystemBackgroundColor];
  if ([(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac]|| !colorCopy)
  {
    v6 = +[UIColor systemBackgroundColor];

    v5 = v6;
  }

  return v5;
}

- (id)editingToolbarButtonTextColor
{
  if ([(RCRecorderStyleProvider *)self hostsTransportAndDoneButtonInBottomSection])
  {
    [UIColor colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v2 = ;

  return v2;
}

- (id)editingToolbarButtonDisabledTextColor
{
  v2 = +[UIColor systemGrayColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  return v3;
}

- (id)sidebarCollectionViewBackgroundColor
{
  if ([(RCRecorderStyleProvider *)self recordingTableViewSupportsSidebarBackgroundConfiguration])
  {
    recordingCardBottomAccessoryBackgroundColor = [(RCRecorderStyleProvider *)self recordingCardBottomAccessoryBackgroundColor];
  }

  else
  {
    recordingCardBottomAccessoryBackgroundColor = 0;
  }

  return recordingCardBottomAccessoryBackgroundColor;
}

- (id)sidebarNavBarNewFolderImageTintColor
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)folderSelectionCollectionViewCellColor
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = +[UIColor systemBackgroundColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)folderSelectionNavBarNewFolderImageTintColor
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)sidebarCollectionViewListAppearance
{
  if ([(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (double)sidebarCollectionViewTopPadding
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 0.0;
  if (_isIOSMac)
  {
    return 7.0;
  }

  return result;
}

- (double)presentedViewsMinimumWidth
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 500.0;
  if (!_isIOSMac)
  {
    return 0.0;
  }

  return result;
}

- (id)playbackCardSecondaryLabelFontColor
{
  if ([(RCRecorderStyleProvider *)self _usesVibrantUI])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    [UIColor colorWithRed:0.298039216 green:0.298039216 blue:0.298039216 alpha:1.0];
  }
  v2 = ;

  return v2;
}

- (id)recordingControlOuterColor:(BOOL)color
{
  colorCopy = color;
  v4 = +[UIColor systemGrayColor];
  if (colorCopy)
  {
    v5 = +[UIColor labelColor];

    v4 = v5;
  }

  return v4;
}

- (id)recordingControlInnerColorResume
{
  v2 = +[UIColor systemRedColor];
  [v2 alphaComponent];
  v4 = [v2 colorWithAlphaComponent:v3 * 0.3];

  return v4;
}

- (double)recordingSectionDoneButtonDisabledOpacity
{
  _isWideIpadOrIOSMac = [(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac];
  result = 0.2;
  if (_isWideIpadOrIOSMac)
  {
    return 0.575;
  }

  return result;
}

- (id)emptyLibraryMessageTextColor:(BOOL)color
{
  v3 = 0.59;
  if (color)
  {
    v3 = 0.39;
  }

  v4 = [UIColor colorWithWhite:v3 alpha:1.0];

  return v4;
}

- (id)emptyLibraryBackgroundColor:(BOOL)color
{
  colorCopy = color;
  if ([(RCRecorderStyleProvider *)self showsEmptyLibraryMessageInLibrary])
  {
    [(RCRecorderStyleProvider *)self tableViewBackgroundColor];
  }

  else
  {
    [(RCRecorderStyleProvider *)self playbackViewBackgroundColor:colorCopy];
  }
  v5 = ;

  return v5;
}

- (id)tableViewBackgroundColor
{
  if ([(RCRecorderStyleProvider *)self _usesVibrantUI])
  {
    [(RCRecorderStyleProvider *)self _roundedThemePrimaryBackgroundColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (id)tableViewSelectedCellTextColor
{
  if ([(RCRecorderStyleProvider *)self librarySupportsBlueCellSelectionStyle])
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    [(RCRecorderStyleProvider *)self tableViewCellTextColor];
  }
  v3 = ;

  return v3;
}

- (int64_t)cellSelectionStyle
{
  if ([(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)tableViewToolboxSeparatorColor
{
  v3 = [UIColor colorWithWhite:0.698039216 alpha:1.0];
  if ([(RCRecorderStyleProvider *)self _usesVibrantUI])
  {
    v4 = [UIColor colorWithWhite:1.0 alpha:0.15];

    v3 = v4;
  }

  return v3;
}

- (id)waveformRecordingColor
{
  if (qword_82398 != -1)
  {
    sub_4234C();
  }

  v3 = qword_82390;

  return v3;
}

- (id)waveformPlaybackBackgroundColor:(BOOL)color
{
  colorCopy = color;
  if ([(RCRecorderStyleProvider *)self _isIpadOrIOSMac]&& colorCopy)
  {
    v5 = +[UIColor tertiarySystemFillColor];
    [v5 alphaComponent];
    v7 = v6 * 0.66;

    v8 = +[UIColor tertiarySystemFillColor];
  }

  else
  {
    [(RCRecorderStyleProvider *)self _isCompactWidth];
    v9 = +[UIColor quaternarySystemFillColor];
    [v9 alphaComponent];
    v7 = v10 * 0.33;

    v8 = +[UIColor quaternarySystemFillColor];
  }

  v11 = v8;
  v12 = [v8 colorWithAlphaComponent:v7];

  return v12;
}

- (id)waveformPlaybackHighlightedBackgroundColor:(BOOL)color
{
  colorCopy = color;
  if ([(RCRecorderStyleProvider *)self _isIpadOrIOSMac]&& colorCopy)
  {
    v5 = +[UIColor tertiarySystemFillColor];
    [v5 alphaComponent];
    v7 = v6 * 0.38;

    v8 = +[UIColor tertiarySystemFillColor];
    v9 = v8;
    v10 = v7;
  }

  else
  {
    _isCompactWidth = [(RCRecorderStyleProvider *)self _isCompactWidth];
    v12 = +[UIColor quaternarySystemFillColor];
    [v12 alphaComponent];
    v14 = v13;

    v8 = +[UIColor quaternarySystemFillColor];
    v9 = v8;
    if (_isCompactWidth && colorCopy)
    {
      v15 = 0.65;
    }

    else
    {
      v15 = 0.67;
    }

    v10 = v14 * v15;
  }

  v16 = [v8 colorWithAlphaComponent:v10];

  return v16;
}

- (id)waveformStandardColor:(BOOL)color
{
  if (color)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v3 = ;

  return v3;
}

- (id)timelinePlaybackBackgroundColor:(BOOL)color
{
  colorCopy = color;
  v5 = +[UIColor systemBackgroundColor];
  if (colorCopy && [(RCRecorderStyleProvider *)self _isIphone])
  {
    v6 = +[UIColor secondarySystemBackgroundColor];

    v5 = v6;
  }

  return v5;
}

- (id)playbackPositionBarColor
{
  if ([(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac])
  {
    [UIColor colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v2 = ;

  return v2;
}

- (id)selectionOverlayColor
{
  v2 = +[UIColor systemYellowColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  return v3;
}

- (id)minTrackTintColor:(BOOL)color
{
  if (color)
  {
    v3 = 0.898039216;
    v4 = 0.917647059;
  }

  else
  {
    v3 = 0.56;
    v4 = 0.58;
  }

  v5 = [UIColor colorWithRed:v3 green:v3 blue:v4 alpha:1.0];

  return v5;
}

- (id)maxTrackTintColor:(BOOL)color
{
  if (color)
  {
    v3 = 0.180392157;
    v4 = 0.184313725;
    v5 = 1.0;
    v6 = 0.180392157;
  }

  else
  {
    v3 = 0.87;
    v5 = 1.0;
    v6 = 0.87;
    v4 = 0.87;
  }

  v7 = [UIColor colorWithRed:v3 green:v6 blue:v4 alpha:v5];

  return v7;
}

- (id)recentlyDeleteToolBarDividerColor
{
  if ([(RCRecorderStyleProvider *)self _isIpad])
  {
    v2 = [UIColor colorWithWhite:1.0 alpha:0.15];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)standardInteractionTintColor
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[UIColor systemBlueColor];
  }

  return v2;
}

- (id)descriptionViewScalableTitleFontForCardView
{
  v3 = UIFontWeightSemibold;
  v4 = 28.0;
  if (![(RCRecorderStyleProvider *)self _isIOSMac])
  {
    _isWideIPad = [(RCRecorderStyleProvider *)self _isWideIPad];
    v4 = _isWideIPad ? 34.0 : 22.0;
    if (_isWideIPad)
    {
      v3 = UIFontWeightBold;
    }
  }

  if ([(RCRecorderStyleProvider *)self isAccessibilityLargerTextSizeEnabled])
  {
    if ([(RCRecorderStyleProvider *)self _isWideIPad])
    {
      v4 = v4 * 0.85;
    }

    else
    {
      v4 = 20.0;
    }
  }

  return [UIFont scaledSystemFontOfSize:v4 weight:v3];
}

- (id)editingToolbarTitleLabelFont
{
  _isWatch = [(RCRecorderStyleProvider *)self _isWatch];
  v3 = 17.0;
  if (_isWatch)
  {
    v3 = 21.0;
  }

  v4 = &UIFontWeightMedium;
  if (!_isWatch)
  {
    v4 = &UIFontWeightSemibold;
  }

  v5 = [UIFont systemFontOfSize:v3 weight:*v4];

  return v5;
}

- (id)durationLabelFontForCompactRecordingView
{
  isAccessibilityLargerTextSizeEnabled = [(RCRecorderStyleProvider *)self isAccessibilityLargerTextSizeEnabled];
  v3 = 17.0;
  if (isAccessibilityLargerTextSizeEnabled)
  {
    v3 = 15.0;
  }

  v4 = [UIFont scaledMonospacedSystemFontOfSize:v3];

  return v4;
}

- (id)timeLineLabelFont
{
  _isIOSMac = [(RCRecorderStyleProvider *)self _isIOSMac];
  v3 = 15.5844156;
  if (!_isIOSMac)
  {
    v3 = 12.0;
  }

  return [UIFont systemFontOfSize:v3];
}

- (id)progressViewBackgroundColorTableViewCell:(BOOL)cell
{
  cellCopy = cell;
  if ([(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac])
  {
    [(RCRecorderStyleProvider *)self progressViewBackgroundColorEditingCard:cellCopy];
  }

  else
  {
    +[UIColor clearColor];
  }
  v5 = ;

  return v5;
}

- (BOOL)_isIpad
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    return 0;
  }

  v3 = +[UIDevice currentDevice];
  v2 = [v3 userInterfaceIdiom] == &dword_0 + 1;

  return v2;
}

- (BOOL)_isIphone
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)_isWatch
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == &dword_4;

  return v3;
}

- (id)accessibilityLargeSizes
{
  v4[0] = UIContentSizeCategoryAccessibilityMedium;
  v4[1] = UIContentSizeCategoryAccessibilityLarge;
  v4[2] = UIContentSizeCategoryAccessibilityExtraLarge;
  v4[3] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v4[4] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (BOOL)isAccessibilityLargerTextSizeEnabled
{
  v3 = +[UIContentSizeCategoryPreference system];
  preferredContentSizeCategory = [v3 preferredContentSizeCategory];

  accessibilityLargeSizes = [(RCRecorderStyleProvider *)self accessibilityLargeSizes];
  LOBYTE(v3) = [accessibilityLargeSizes containsObject:preferredContentSizeCategory];

  return v3;
}

- (BOOL)hasPlaybackCard
{
  if ([(RCRecorderStyleProvider *)self _isIpad])
  {
    return 1;
  }

  return [(RCRecorderStyleProvider *)self _isIOSMac];
}

- (BOOL)explicitlyScrollsToTableViewRowOnSelection
{
  if ([(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac])
  {
    return +[UIKeyboard isInHardwareKeyboardMode]^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)expandsTableViewRowOnSelection
{
  if ([(RCRecorderStyleProvider *)self _isWideIPad])
  {
    return 0;
  }

  else
  {
    return ![(RCRecorderStyleProvider *)self _isIOSMac];
  }
}

- (BOOL)needsTouchDownWorkaround
{
  _isIpad = [(RCRecorderStyleProvider *)self _isIpad];
  if (_isIpad)
  {
    LOBYTE(_isIpad) = ![(RCRecorderStyleProvider *)self _isVibrantUIOrIOSMac];
  }

  return _isIpad;
}

- (id)activityImageSymbolConfiguration
{
  if ([(RCRecorderStyleProvider *)self isAccessibilityLargerTextSizeEnabled])
  {
    v2 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v2];

    v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

    v5 = [UIFont fontWithDescriptor:v4 size:0.0];
    [v5 pointSize];
    v6 = [UIImageSymbolConfiguration configurationWithPointSize:?];
  }

  else
  {
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:UIImageSymbolSizeLarge];
  }

  return v6;
}

@end