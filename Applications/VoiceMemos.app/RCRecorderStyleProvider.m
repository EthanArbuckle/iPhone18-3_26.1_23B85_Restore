@interface RCRecorderStyleProvider
+ (id)sharedStyleProvider;
- (BOOL)_isIpad;
- (BOOL)_isIphone;
- (BOOL)_isLandscape;
- (BOOL)_isPortrait;
- (BOOL)_isWatch;
- (BOOL)appIsRightToLeft;
- (BOOL)expandsRecordingsCollectionViewItemOnSelection;
- (BOOL)explicitlyScrollsToRecordingsCollectionViewItemOnSelection;
- (BOOL)hasPlaybackCard;
- (BOOL)isAccessibilityLargerTextSizeEnabled;
- (BOOL)librarySupportsBlueCellSelectionStyle;
- (BOOL)setSplitViewHorizontalSizeClass:(int64_t)a3;
- (BOOL)shouldUseIntegratedButtonSearchBarPlacementInRecordingsList;
- (CAFrameRateRange)displayRefreshRate:(BOOL)a3;
- (CGSize)actionMenuImageSize;
- (CGSize)bannerSize;
- (CGSize)cardCenterClusterMaximumControlSize;
- (CGSize)cardCenterClusterMinimumControlSize;
- (CGSize)centerClusterControlSizeRecentlyDeleted;
- (CGSize)libraryCenterClusterControlSize;
- (CGSize)minimumSceneSize;
- (CGSize)playbackSpeedSliderTickSize;
- (NSDirectionalEdgeInsets)toggleButtonContentInsets;
- (UIEdgeInsets)recordingViewTitleTextInsets;
- (double)activityWaveformTimeWindowDuration;
- (double)bottomControlsContainerInterElementPadding;
- (double)bottomControlsContainerLeadingTrailingPadding;
- (double)bottomSpacerViewHeight;
- (double)centerContentTranscriptViewMaxWidth;
- (double)descriptionViewTitleToSecondaryPadding;
- (double)doneButtonHeight;
- (double)editToolbarButtonTopInset;
- (double)editToolbarTitleTopInset;
- (double)platterWaveformWidthCompact;
- (double)playbackViewControlSectionHeight;
- (double)playbackViewTimeSectionBottomPadding;
- (double)playbackViewTimeSectionHeight;
- (double)playbackViewTopPadding;
- (double)playbackViewVerticalSpacingAboveOverviewWaveform;
- (double)playbackViewVerticalSpacingBelowOverviewWaveform;
- (double)positionReadoutLabelYOffset;
- (double)presentedViewsMinimumWidth;
- (double)recordButtonHeight;
- (double)recordButtonOuterStrokeWidth;
- (double)recordingControlSectionHeight;
- (double)recordingSectionDoneButtonDisabledOpacity;
- (double)recordingViewOverviewWaveformSidePadding;
- (double)shuttleBarCenterClusterHorizontalEdgeInsets;
- (double)shuttleBarCenterClusterSpacing;
- (double)sidebarCollectionViewTopPadding;
- (double)topMarginMinSafeAreaTopInsetForCardView;
- (double)topSpacerViewHeight;
- (double)transcriptViewParagraphSpacing;
- (double)trimDeleteButtonHeight;
- (double)trimDeleteButtonPadding;
- (double)verticalSpaceAfterCenterContentContainer:(BOOL)a3 isDisplayingTranscriptView:(BOOL)a4 isTranscriptViewExpanded:(BOOL)a5 isTrimMode:(BOOL)a6;
- (double)verticalSpaceAfterOverviewWaveformWhenTranscriptViewIsExpanded;
- (double)verticalSpaceAfterTopSpacerView;
- (double)verticalSpaceBetweenOverviewWaveformAndTimeLabel;
- (double)verticalSpaceBetweenTimeLabelAndBottomControlsContainer;
- (double)verticalSpaceBetweenTitleAndCenterContentContainer:(BOOL)a3 isDisplayingTranscriptView:(BOOL)a4;
- (id)_cardGoBackwardForwardImageSymbolConfiguration;
- (id)_cardPlayPauseImageSymbolConfiguration;
- (id)_platterTimeLabelFontWithTextStyle:(id)a3 traitCollection:(id)a4;
- (id)_tintedImageForNavBarSelectedState:(id)a3;
- (id)accessibilityLargeSizes;
- (id)bannerBackgroundColor;
- (id)cardGoBackwardImage;
- (id)cardGoForwardImage;
- (id)cardPauseImage;
- (id)cardPlayImage;
- (id)copyTranscriptImage;
- (id)descriptionViewScalableTitleFontForCardView;
- (id)descriptionViewScalableTitleFontForRecordingCollectionViewCell;
- (id)editingToolbarButtonDisabledTextColor;
- (id)editingToolbarButtonTextColor;
- (id)editingToolbarTitleLabelFont;
- (id)ellipsisImage;
- (id)expandCompactRecordingCardPropertyAnimator;
- (id)favoriteActivitySystemImageName:(BOOL)a3;
- (id)favoriteImage;
- (id)favoriteImageForSwipeAction;
- (id)filledMoveToFolderImage;
- (id)formattedDateStringFromDate:(id)a3 forUUID:(id)a4;
- (id)libraryGoBackwardImage;
- (id)libraryGoForwardImage;
- (id)libraryPauseImage;
- (id)libraryPlayImage;
- (id)moveToFolderImage;
- (id)multitrackImageForLayerNumber:(unint64_t)a3 rounded:(BOOL)a4 slash:(BOOL)a5 circleFill:(BOOL)a6;
- (id)notFavoriteImage;
- (id)notFavoriteImageForSwipeAction;
- (id)playbackPositionBarColor;
- (id)playbackSettingsImageForNavBarSelectedState;
- (id)playbackViewTimeLabelFont;
- (id)recordingCardBottomAccessoryBackgroundColor;
- (id)recordingCollectionViewCellCustomBackgroundColor;
- (id)recordingCollectionViewSelectedCellTextColor;
- (id)recordingControlInnerColorResume;
- (id)recordingSectionDoneAndCancelButtonTextColor;
- (id)recordingSectionDoneButtonInnerColor;
- (id)selectionOverlayColor;
- (id)sidebarNavBarNewFolderImageTintColor;
- (id)standardInteractionTintColor;
- (id)swipeTrashImage;
- (id)transcriptionImageForNavBarSelectedState;
- (id)waveformColorForSelected:(BOOL)a3 muted:(BOOL)a4 trimMode:(BOOL)a5;
- (id)waveformPlaybackBackgroundColor;
- (id)waveformPlaybackHighlightedBackgroundColor;
- (id)waveformRecordingColor;
- (int64_t)recordingsCollectionViewLayoutListAppearance;
- (int64_t)sidebarCollectionViewListAppearance;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation RCRecorderStyleProvider

- (double)topSpacerViewHeight
{
  v3 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 14.0;
  if ((v3 & 1) == 0)
  {
    v5 = [(RCRecorderStyleProvider *)self _isWideIPad];
    result = 17.5;
    if (v5)
    {
      return 12.5;
    }
  }

  return result;
}

+ (id)sharedStyleProvider
{
  if (qword_1002D6FE0 != -1)
  {
    sub_100005658();
  }

  v3 = qword_1002D6FD8;

  return v3;
}

- (BOOL)_isIpad
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    return 0;
  }

  v3 = +[UIDevice currentDevice];
  v2 = [v3 userInterfaceIdiom] == 1;

  return v2;
}

- (BOOL)hasPlaybackCard
{
  if ([(RCRecorderStyleProvider *)self _isIpad])
  {
    return 1;
  }

  return [(RCRecorderStyleProvider *)self _isIOSMac];
}

- (double)bottomSpacerViewHeight
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 0.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (UIEdgeInsets)recordingViewTitleTextInsets
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

- (BOOL)expandsRecordingsCollectionViewItemOnSelection
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

- (id)descriptionViewScalableTitleFontForCardView
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  v3 = &UIFontTextStyleTitle3;
  if (!v2)
  {
    v3 = &UIFontTextStyleTitle2;
  }

  v4 = *v3;

  return [UIFont preferredFontForTextStyle:v4 weight:UIFontWeightBold];
}

- (BOOL)isAccessibilityLargerTextSizeEnabled
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [(RCRecorderStyleProvider *)self accessibilityLargeSizes];
  LOBYTE(v3) = [v5 containsObject:v4];

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

- (double)descriptionViewTitleToSecondaryPadding
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 3.0;
  if (v2)
  {
    return 4.0;
  }

  return result;
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

- (double)doneButtonHeight
{
  if (![(RCRecorderStyleProvider *)self _isIOSMac])
  {
    return 49.0;
  }

  [(RCRecorderStyleProvider *)self trimDeleteButtonHeight];
  return result;
}

- (id)libraryGoBackwardImage
{
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  v4 = [(RCRecorderStyleProvider *)self goBackwardImage];
  v5 = [v4 imageWithSymbolConfiguration:v3];

  return v5;
}

- (id)libraryGoForwardImage
{
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  v4 = [(RCRecorderStyleProvider *)self goForwardImage];
  v5 = [v4 imageWithSymbolConfiguration:v3];

  return v5;
}

- (double)shuttleBarCenterClusterSpacing
{
  v3 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 14.0;
  if ((v3 & 1) == 0)
  {
    v5 = [(RCRecorderStyleProvider *)self _isWideIPad];
    result = 20.0;
    if (v5)
    {
      return 27.0;
    }
  }

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

- (id)cardPlayImage
{
  v3 = [(RCRecorderStyleProvider *)self _cardPlayPauseImageSymbolConfiguration];
  v4 = [(RCRecorderStyleProvider *)self playImage];
  v5 = [v4 imageWithSymbolConfiguration:v3];

  return v5;
}

- (id)cardGoForwardImage
{
  v3 = [(RCRecorderStyleProvider *)self _cardGoBackwardForwardImageSymbolConfiguration];
  v4 = [(RCRecorderStyleProvider *)self goForwardImage];
  v5 = [v4 imageWithSymbolConfiguration:v3];

  return v5;
}

- (id)_cardPlayPauseImageSymbolConfiguration
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    [UIFont systemFontOfSize:22.0 weight:UIFontWeightBold];
  }

  else
  {
    [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightBold];
  }
  v2 = ;
  v3 = [UIImageSymbolConfiguration configurationWithFont:v2 scale:3];

  return v3;
}

- (id)cardGoBackwardImage
{
  v3 = [(RCRecorderStyleProvider *)self _cardGoBackwardForwardImageSymbolConfiguration];
  v4 = [(RCRecorderStyleProvider *)self goBackwardImage];
  v5 = [v4 imageWithSymbolConfiguration:v3];

  return v5;
}

- (id)_cardGoBackwardForwardImageSymbolConfiguration
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    [UIFont systemFontOfSize:17.0 weight:UIFontWeightBold];
  }

  else
  {
    [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2 weight:UIFontWeightBold];
  }
  v2 = ;
  v3 = [UIImageSymbolConfiguration configurationWithFont:v2 scale:3];

  return v3;
}

- (double)bottomControlsContainerLeadingTrailingPadding
{
  v2 = [(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac];
  result = 36.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (double)recordButtonHeight
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 60.0;
  if (v2)
  {
    return 44.0;
  }

  return result;
}

- (BOOL)_isIphone
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (id)recordingCardBottomAccessoryBackgroundColor
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000FE20;
  v4[3] = &unk_10028A880;
  objc_copyWeak(&v5, &location);
  v2 = [UIColor colorWithDynamicProvider:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)playbackViewTimeLabelFont
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = [UIFont monospacedDigitSystemFontOfSize:32.0 weight:UIFontWeightBold];
  }

  else
  {
    v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
    [v3 pointSize];
    v2 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];
  }

  return v2;
}

- (double)positionReadoutLabelYOffset
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (double)verticalSpaceBetweenOverviewWaveformAndTimeLabel
{
  if ([(RCRecorderStyleProvider *)self _isCompactWidth])
  {
    return 44.0;
  }

  if ([(RCRecorderStyleProvider *)self _isWideIPad])
  {
    return 47.0;
  }

  v4 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 0.0;
  if (v4)
  {
    return 31.0;
  }

  return result;
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

- (double)recordButtonOuterStrokeWidth
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 4.0;
  if (v2)
  {
    return 2.0;
  }

  return result;
}

- (int64_t)recordingsCollectionViewLayoutListAppearance
{
  if ([(RCRecorderStyleProvider *)self _recordingsListShouldUsePlainAppearance])
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (id)descriptionViewScalableTitleFontForRecordingCollectionViewCell
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  v3 = &UIFontTextStyleHeadline;
  if (!v2)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = *v3;

  return [UIFont preferredFontForTextStyle:v4 weight:UIFontWeightSemibold];
}

- (id)recordingCollectionViewCellCustomBackgroundColor
{
  if ([(RCRecorderStyleProvider *)self librarySupportsBlueCellSelectionStyle])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[UIColor systemBackgroundColor];
  }

  return v2;
}

- (BOOL)librarySupportsBlueCellSelectionStyle
{
  if ([(RCRecorderStyleProvider *)self recordingsCollectionViewSupportsListAppearanceSidebar])
  {
    return 1;
  }

  return [(RCRecorderStyleProvider *)self _isIOSMac];
}

- (double)transcriptViewParagraphSpacing
{
  v2 = [(RCRecorderStyleProvider *)self _isWideIPad];
  result = 16.0;
  if (v2)
  {
    return 18.0;
  }

  return result;
}

- (id)formattedDateStringFromDate:(id)a3 forUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[RCDateFormatter sharedDateFormatter];
  v8 = [v7 formattedDateStringFromDate:v6 forUUID:v5];

  return v8;
}

- (BOOL)setSplitViewHorizontalSizeClass:(int64_t)a3
{
  v5 = [(RCRecorderStyleProvider *)self _horizontalSizeClassFromSplitView]!= a3;
  [(RCRecorderStyleProvider *)self set_horizontalSizeClassFromSplitView:a3];
  return v5;
}

- (BOOL)appIsRightToLeft
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

- (CGSize)minimumSceneSize
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  v3 = 976.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  v4 = 700.0;
  if (v2)
  {
    v4 = 500.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)libraryCenterClusterControlSize
{
  v2 = 55.0;
  v3 = 66.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)cardCenterClusterMinimumControlSize
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {

    [(RCRecorderStyleProvider *)self cardCenterClusterMaximumControlSize];
  }

  else
  {
    v3 = 48.0;
    v4 = 48.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)cardCenterClusterMaximumControlSize
{
  [(RCRecorderStyleProvider *)self recordButtonHeight];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSDirectionalEdgeInsets)toggleButtonContentInsets
{
  [(RCRecorderStyleProvider *)self editButtonContentTopBottomPadding];
  v3 = 2.5;
  v4 = 2.5;
  v5 = v2;
  result.trailing = v4;
  result.bottom = v5;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)verticalSpaceAfterTopSpacerView
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 12.5;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (double)verticalSpaceBetweenTitleAndCenterContentContainer:(BOOL)a3 isDisplayingTranscriptView:(BOOL)a4
{
  result = 0.0;
  if (!a3)
  {
    v5 = a4;
    v7 = [(RCRecorderStyleProvider *)self _isCompactWidth];
    if (v5)
    {
      result = 16.0;
      if (v7)
      {
        return result;
      }

      v8 = [(RCRecorderStyleProvider *)self _isWideIPad];
      v9 = 6.0;
      result = 30.0;
      if (v8)
      {
        return result;
      }
    }

    else
    {
      if (v7)
      {
        return 48.0;
      }

      if ([(RCRecorderStyleProvider *)self _isWideIPad])
      {
        return 55.0;
      }

      v9 = 32.0;
    }

    v10 = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = 0.0;
    if (v10)
    {
      return v9;
    }
  }

  return result;
}

- (double)verticalSpaceAfterCenterContentContainer:(BOOL)a3 isDisplayingTranscriptView:(BOOL)a4 isTranscriptViewExpanded:(BOOL)a5 isTrimMode:(BOOL)a6
{
  result = 0.0;
  if (!a3)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v11 = [(RCRecorderStyleProvider *)self _isCompactWidth];
    if (v9)
    {
      if (v11)
      {
        v12 = !v8;
        result = 40.0;
        v13 = 0.0;
        goto LABEL_9;
      }

      if ([(RCRecorderStyleProvider *)self _isWideIPad])
      {
        v12 = !v8;
        result = 42.0;
        v13 = 25.0;
LABEL_9:
        if (!v12)
        {
          return v13;
        }

        return result;
      }

      v14 = [(RCRecorderStyleProvider *)self _isIOSMac];
      result = 33.0;
      if (v8)
      {
        result = 25.0;
      }

      v15 = v14 == 0;
    }

    else
    {
      if (v11)
      {
        v12 = !v7;
        result = 39.0;
        v13 = 26.0;
        goto LABEL_9;
      }

      if ([(RCRecorderStyleProvider *)self _isWideIPad])
      {
        return 46.0;
      }

      v15 = ![(RCRecorderStyleProvider *)self _isIOSMac];
      result = 38.0;
    }

    if (v15)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)verticalSpaceAfterOverviewWaveformWhenTranscriptViewIsExpanded
{
  v3 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 16.0;
  if ((v3 & 1) == 0)
  {
    v5 = [(RCRecorderStyleProvider *)self _isWideIPad];
    result = 0.0;
    if (v5)
    {
      return 22.0;
    }
  }

  return result;
}

- (double)verticalSpaceBetweenTimeLabelAndBottomControlsContainer
{
  if ([(RCRecorderStyleProvider *)self _isWideIPad])
  {
    return 45.0;
  }

  v4 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 0.0;
  if (v4)
  {
    return 26.0;
  }

  return result;
}

- (double)bottomControlsContainerInterElementPadding
{
  v3 = [(RCRecorderStyleProvider *)self _isCompactWidth];
  result = 12.0;
  if ((v3 & 1) == 0)
  {
    v5 = [(RCRecorderStyleProvider *)self _isWideIPad];
    result = 14.0;
    if ((v5 & 1) == 0)
    {
      v6 = [(RCRecorderStyleProvider *)self _isIOSMac];
      result = 0.0;
      if (v6)
      {
        return 8.0;
      }
    }
  }

  return result;
}

- (double)recordingControlSectionHeight
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 96.0;
  if (v2)
  {
    return 73.0;
  }

  return result;
}

- (id)transcriptionImageForNavBarSelectedState
{
  v3 = [(RCRecorderStyleProvider *)self transcriptionToggleImage];
  v4 = [(RCRecorderStyleProvider *)self _tintedImageForNavBarSelectedState:v3];

  return v4;
}

- (double)topMarginMinSafeAreaTopInsetForCardView
{
  v2 = [(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac];
  result = 32.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (double)recordingViewOverviewWaveformSidePadding
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 32.0;
  if (v2)
  {
    return 23.0;
  }

  return result;
}

- (double)trimDeleteButtonPadding
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 4.0;
  if (v2)
  {
    return 6.0;
  }

  return result;
}

- (double)trimDeleteButtonHeight
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 44.0;
  if (v2)
  {
    return 36.0;
  }

  return result;
}

- (id)expandCompactRecordingCardPropertyAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 initialVelocity:{0.0, 0.0}];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.5];

  return v3;
}

- (double)shuttleBarCenterClusterHorizontalEdgeInsets
{
  v3 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = -11.0;
  if ((v3 & 1) == 0)
  {
    v5 = [(RCRecorderStyleProvider *)self _isWideIPad];
    result = 0.0;
    if (v5)
    {
      return -28.0;
    }
  }

  return result;
}

- (double)playbackViewTimeSectionHeight
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 70.0;
  if (v2)
  {
    return 116.0;
  }

  return result;
}

- (double)playbackViewTimeSectionBottomPadding
{
  v2 = [(RCRecorderStyleProvider *)self _isIpad];
  result = 0.0;
  if (v2)
  {
    return 18.0;
  }

  return result;
}

- (double)playbackViewControlSectionHeight
{
  if (![(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac])
  {
    return 92.0;
  }

  [(RCRecorderStyleProvider *)self recordingControlSectionHeight];
  return result;
}

- (double)playbackViewTopPadding
{
  v2 = [(RCRecorderStyleProvider *)self presentsEditingControlsInRecordingView];
  result = 50.0;
  if (v2)
  {
    return 4.0;
  }

  return result;
}

- (double)playbackViewVerticalSpacingAboveOverviewWaveform
{
  v3 = [(RCRecorderStyleProvider *)self _isIpad];
  result = 22.0;
  if ((v3 & 1) == 0)
  {
    v5 = [(RCRecorderStyleProvider *)self _isIOSMac];
    result = 62.0;
    if (v5)
    {
      return 38.0;
    }
  }

  return result;
}

- (double)playbackViewVerticalSpacingBelowOverviewWaveform
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 41.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)_isPortrait
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation] - 1 < 2;

  return v6;
}

- (BOOL)_isLandscape
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation] - 3 < 2;

  return v6;
}

- (CGSize)playbackSpeedSliderTickSize
{
  [(RCRecorderStyleProvider *)self playbackSpeedSliderHeight];
  v3 = v2 * 3.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)actionMenuImageSize
{
  v2 = 32.0;
  v3 = 32.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)centerContentTranscriptViewMaxWidth
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 930.0;
  if (v2)
  {
    return 1024.0;
  }

  return result;
}

- (CAFrameRateRange)displayRefreshRate:(BOOL)a3
{
  v3 = a3;
  result = CAFrameRateRangeMake(48.0, 120.0, 48.0);
  if (!v3)
  {
    result.minimum = CAFrameRateRangeDefault.minimum;
    result.maximum = CAFrameRateRangeDefault.maximum;
    result.preferred = CAFrameRateRangeDefault.preferred;
  }

  return result;
}

- (double)editToolbarTitleTopInset
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 12.5;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (double)editToolbarButtonTopInset
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 6.0;
  if (v2)
  {
    return 9.0;
  }

  return result;
}

- (id)libraryPlayImage
{
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:32.0];
  v4 = [(RCRecorderStyleProvider *)self playImage];
  v5 = [v4 imageWithSymbolConfiguration:v3];

  return v5;
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
  v2 = [(RCRecorderStyleProvider *)self _cardPlayPauseImageSymbolConfiguration];
  v3 = [UIImage systemImageNamed:@"pause.fill"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

- (id)ellipsisImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  v3 = [UIImage systemImageNamed:@"ellipsis"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

- (id)playbackSettingsImageForNavBarSelectedState
{
  v3 = [(RCRecorderStyleProvider *)self playbackSettingsImage];
  v4 = [(RCRecorderStyleProvider *)self _tintedImageForNavBarSelectedState:v3];

  return v4;
}

- (id)_tintedImageForNavBarSelectedState:(id)a3
{
  v3 = a3;
  v4 = +[UIColor systemBlueColor];
  v5 = [v3 imageWithTintColor:v4];

  return v5;
}

- (id)copyTranscriptImage
{
  v2 = [(RCRecorderStyleProvider *)self copyTranscriptImageName];
  v3 = [UIImage systemImageNamed:v2];

  return v3;
}

- (id)swipeTrashImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:22.0];
  v3 = [UIImage systemImageNamed:@"trash.fill" withConfiguration:v2];

  return v3;
}

- (id)filledMoveToFolderImage
{
  v3 = [UIImage systemImageNamed:@"folder.fill"];
  v4 = [(RCRecorderStyleProvider *)self imageSymbolConfigForAXsizes];
  v5 = [v3 imageWithSymbolConfiguration:v4];

  return v5;
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

- (id)notFavoriteImageForSwipeAction
{
  v3 = [(RCRecorderStyleProvider *)self notFavoriteImageName];
  v4 = [UIImage systemImageNamed:v3];
  v5 = [(RCRecorderStyleProvider *)self imageSymbolConfigForAXsizes];
  v6 = [v4 imageWithSymbolConfiguration:v5];

  return v6;
}

- (id)favoriteImageForSwipeAction
{
  v3 = [(RCRecorderStyleProvider *)self favoriteImageName];
  v4 = [UIImage systemImageNamed:v3];
  v5 = [(RCRecorderStyleProvider *)self imageSymbolConfigForAXsizes];
  v6 = [v4 imageWithSymbolConfiguration:v5];

  return v6;
}

- (id)favoriteImage
{
  v2 = [(RCRecorderStyleProvider *)self favoriteImageName];
  v3 = [UIImage systemImageNamed:v2];

  return v3;
}

- (id)notFavoriteImage
{
  v2 = [(RCRecorderStyleProvider *)self notFavoriteImageName];
  v3 = [UIImage systemImageNamed:v2];

  return v3;
}

- (id)multitrackImageForLayerNumber:(unint64_t)a3 rounded:(BOOL)a4 slash:(BOOL)a5 circleFill:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = [NSString stringWithFormat:@"%lu", a3];
  v10 = v9;
  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = [v10 stringByAppendingString:@".slash"];

    v10 = v12;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v11 = [v9 stringByAppendingString:@".rounded"];

  v10 = v11;
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v6)
  {
LABEL_11:
    v16 = +[NSLocale numberingSystem];
    if ([v16 isEqualToString:@"deva"])
    {
      v17 = @".hi";
    }

    else
    {
      if (![v16 isEqualToString:@"arab"])
      {
        goto LABEL_16;
      }

      v17 = @".ar";
    }

    v18 = [v10 stringByAppendingString:v17];

    v10 = v18;
LABEL_16:
    v15 = [UIImage imageNamed:v10];

    v14 = v10;
    if (v15)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_7:
  v13 = v6 & ~(v8 || v7);
  v14 = [v10 stringByAppendingString:@".circle.fill"];

  if (!v13)
  {
    v10 = v14;
    goto LABEL_11;
  }

  v15 = [UIImage systemImageNamed:v14];
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = OSLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1001B6CC8(v14, v19);
  }

LABEL_20:

  return v15;
}

- (id)editingToolbarButtonDisabledTextColor
{
  v2 = +[UIColor systemGrayColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  return v3;
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
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 0.0;
  if (v2)
  {
    return 7.0;
  }

  return result;
}

- (double)presentedViewsMinimumWidth
{
  v2 = [(RCRecorderStyleProvider *)self _isIOSMac];
  result = 500.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (id)recordingControlInnerColorResume
{
  v2 = +[UIColor systemRedColor];
  [v2 alphaComponent];
  v4 = [v2 colorWithAlphaComponent:v3 * 0.3];

  return v4;
}

- (id)recordingSectionDoneButtonInnerColor
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[UIColor systemGray4Color];
  }

  return v2;
}

- (id)recordingSectionDoneAndCancelButtonTextColor
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[UIColor labelColor];
  }

  return v2;
}

- (double)recordingSectionDoneButtonDisabledOpacity
{
  v2 = [(RCRecorderStyleProvider *)self _isWideIpadOrIOSMac];
  result = 0.2;
  if (v2)
  {
    return 0.575;
  }

  return result;
}

- (id)recordingCollectionViewSelectedCellTextColor
{
  if ([(RCRecorderStyleProvider *)self librarySupportsBlueCellSelectionStyle])
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    [(RCRecorderStyleProvider *)self recordingCollectionViewCellTextColor];
  }
  v3 = ;

  return v3;
}

- (id)waveformRecordingColor
{
  if (qword_1002D6FF0 != -1)
  {
    sub_1001B6D54();
  }

  v3 = qword_1002D6FE8;

  return v3;
}

- (id)playbackPositionBarColor
{
  if ([(RCRecorderStyleProvider *)self _isIOSMac])
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

- (id)waveformColorForSelected:(BOOL)a3 muted:(BOOL)a4 trimMode:(BOOL)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D72C;
  v7[3] = &unk_10028A960;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v5 = [UIColor colorWithDynamicProvider:v7];

  return v5;
}

- (id)waveformPlaybackBackgroundColor
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003D9E0;
  v4[3] = &unk_10028A880;
  objc_copyWeak(&v5, &location);
  v2 = [UIColor colorWithDynamicProvider:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)waveformPlaybackHighlightedBackgroundColor
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003DBBC;
  v4[3] = &unk_10028A880;
  objc_copyWeak(&v5, &location);
  v2 = [UIColor colorWithDynamicProvider:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)editingToolbarTitleLabelFont
{
  v2 = [(RCRecorderStyleProvider *)self _isWatch];
  v3 = 17.0;
  if (v2)
  {
    v3 = 21.0;
  }

  v4 = &UIFontWeightMedium;
  if (!v2)
  {
    v4 = &UIFontWeightSemibold;
  }

  v5 = [UIFont systemFontOfSize:v3 weight:*v4];

  return v5;
}

- (BOOL)_isWatch
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 4;

  return v3;
}

- (double)activityWaveformTimeWindowDuration
{
  v2 = [(RCRecorderStyleProvider *)self _isWatch];
  result = 2.4;
  if (!v2)
  {
    return 2.0;
  }

  return result;
}

- (CGSize)bannerSize
{
  v2 = 82.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (id)bannerBackgroundColor
{
  v2 = +[UIColor blackColor];
  v3 = [v2 colorWithAlphaComponent:0.9];

  return v3;
}

- (id)_platterTimeLabelFontWithTextStyle:(id)a3 traitCollection:(id)a4
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 compatibleWithTraitCollection:a4];
  [v4 pointSize];
  v5 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];

  return v5;
}

- (double)platterWaveformWidthCompact
{
  v3 = [(RCRecorderStyleProvider *)self platterCompactViewSliceCount];
  [(RCRecorderStyleProvider *)self platterWaveformSliceWidth];
  v5 = v4;
  [(RCRecorderStyleProvider *)self platterWaveformSlicePadding];
  return v6 * v3 + v3 * v5;
}

- (BOOL)explicitlyScrollsToRecordingsCollectionViewItemOnSelection
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

- (BOOL)shouldUseIntegratedButtonSearchBarPlacementInRecordingsList
{
  v3 = [(RCRecorderStyleProvider *)self _isIpad];
  if (v3)
  {

    LOBYTE(v3) = [(RCRecorderStyleProvider *)self _isCompactWidth];
  }

  return v3;
}

- (id)favoriteActivitySystemImageName:(BOOL)a3
{
  if (a3)
  {
    [(RCRecorderStyleProvider *)self favoriteImageName];
  }

  else
  {
    [(RCRecorderStyleProvider *)self notFavoriteImageName];
  }
  v3 = ;

  return v3;
}

@end