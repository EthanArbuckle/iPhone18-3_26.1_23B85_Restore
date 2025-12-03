@interface MessagesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)shouldPerformSegueWithIdentifier:(id)identifier sender:(id)sender;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateCollectionViewAccessibilityForPresentationStyle:(unint64_t)style;
- (void)_accessibilityUpdateRecordButtonLabel;
- (void)dismissLaunchScreenIfNecessaryForPresentationStyle:(unint64_t)style controller:(id)controller;
- (void)handleRecordTap:(id)tap;
- (void)hideUserInfoLabelWithDuration:(double)duration;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)showUserInfoLabelWithText:(id)text;
- (void)viewDidLoad;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation MessagesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTAvatarListCell"];
  [validationsCopy validateClass:@"AVTAvatar"];
  [validationsCopy validateClass:@"AVTAnimoji"];
  [validationsCopy validateClass:@"AVTMemoji"];
  [validationsCopy validateClass:@"MessagesViewController" isKindOfClass:@"MSMessagesAppViewController"];
  [validationsCopy validateClass:@"PuppetCollectionViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_confirmSendingMessageButton" withType:"UIButton"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_cancelSendingMessageButton" withType:"InsetBackgroundUIButton"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_replayMessageButton" withType:"ImageLabelButton"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_editButton" withType:"InsetBackgroundUIButton"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_recordButton" withType:"RecordButton"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_recording" withType:"BOOL"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_puppetView" withType:"AVTRecordView"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_puppetCollectionViewController" withType:"PuppetCollectionViewController"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_userInfoView" withType:"AVTUserInfoView"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_avatarListController" withType:"<AVTRecordingCarouselController>"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_avatarDataSource" withType:"AVTAvatarRecordDataSource"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_recordingDisplayView" withType:"RecordingTimeDisplayView"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_UIState" withType:"Q"];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceVariable:@"_arSessionState" withType:"Q"];
  [validationsCopy validateClass:@"AVTPuppetView" hasInstanceMethod:@"mute" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVTPuppetView" hasInstanceMethod:@"faceIsTracked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MSMessagesAppViewController" hasInstanceMethod:@"presentationStyle" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"displaysLaunchScreen" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"liveCell" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"addItemView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"recordListItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"displayedRecord" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarListCell" hasInstanceMethod:@"avatar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarListCell" hasInstanceMethod:@"avtView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTUserInfoView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RecordingTimeDisplayView" hasInstanceMethod:@"timerLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarPuppetRecord" hasInstanceMethod:@"puppetName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarRecord" hasInstanceMethod:@"avatarData" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"AVTAvatarRecord" hasRequiredInstanceMethod:@"isEditable"];
  [validationsCopy validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"selectedRecord" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"handleRecordTap:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"updateUIState:animated:" withFullSignature:{"v", "Q", "B", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"observeValueForKeyPath:ofObject:change:context:" withFullSignature:{"v", "@", "@", "@", "^v", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"handleSceneShortPress:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"recordingDidFinish:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"showUserInfoLabelWithText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"hideUserInfoLabelWithDuration:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"handleResumeTrackingTap:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"willTransitionToPresentationStyle:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"dismissAvatarUIControllerAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"dismissLaunchScreenIfNecessaryForPresentationStyle:controller:" withFullSignature:{"v", "Q", "@", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"updateEditButtonVisibilityForceHide:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MessagesViewController" hasInstanceMethod:@"shouldPerformSegueWithIdentifier:sender:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"AVTAvatarRecordDataSource" hasInstanceMethod:@"numberOfRecords" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"indexPathForItemClosestToCenter" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"loadRecords" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"displayAvatarForRecord:animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"AVTMultiAvatarController" hasInstanceMethod:@"scrollToViewAtIndex:animated:" withFullSignature:{"v", "Q", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25.receiver = self;
  v25.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v25 _accessibilityLoadAccessibilityInformation];
  [(MessagesViewControllerAccessibility *)self _accessibilityUpdateRecordButtonLabel];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_recordButton"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | *MEMORY[0x29EDC7F70]];
  v5 = accessibilityJellyfishLocalizedString(@"button.record.hint");
  [v4 setAccessibilityHint:v5];

  v6 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_confirmSendingMessageButton"];
  v7 = accessibilityJellyfishLocalizedString(@"button.send");
  [v6 setAccessibilityLabel:v7];

  v8 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_cancelSendingMessageButton"];
  v9 = accessibilityJellyfishLocalizedString(@"button.cancel");
  [v8 setAccessibilityLabel:v9];

  v10 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_replayMessageButton"];
  v11 = accessibilityJellyfishLocalizedString(@"button.replay");
  [v10 setAccessibilityLabel:v11];

  v12 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_editButton"];
  v13 = accessibilityJellyfishLocalizedString(@"button.edit");
  [v12 setAccessibilityLabel:v13];

  LOBYTE(location) = 0;
  objc_opt_class();
  v14 = [(MessagesViewControllerAccessibility *)self safeValueForKeyPath:@"_recordingDisplayView.timerLabel"];
  v15 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v15);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __81__MessagesViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v22[3] = &unk_29F29CEE8;
  objc_copyWeak(&v23, &location);
  [v15 _setAccessibilityLabelBlock:v22];
  [(MessagesViewControllerAccessibility *)self _accessibilityUpdateCollectionViewAccessibilityForPresentationStyle:[(MessagesViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"presentationStyle"]];
  v16 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_avatarListController"];
  v17 = [v16 safeUIViewForKey:@"view"];
  [v16 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v18 = [v16 safeValueForKeyPath:@"multiAvatarController.liveCell"];
  v19 = __UIAccessibilityCastAsClass();

  [(MessagesViewControllerAccessibility *)self _setAXLiveCell:v19];
  _axAvatarCarousel = [(MessagesViewControllerAccessibility *)self _axAvatarCarousel];
  if (!_axAvatarCarousel && v17)
  {
    _axAvatarCarousel = [[AX_AvatarCarousel alloc] initWithMessagesController:self accessibilityContainer:v17];
    [(MessagesViewControllerAccessibility *)self _setAXAvatarCarousel:_axAvatarCarousel];
  }

  v21 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, _axAvatarCarousel}];
  [v17 setAccessibilityElements:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

id __81__MessagesViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x29EDBD7E8]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained text];
  v5 = [v2 initWithString:v4];

  [v5 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD888]];

  return v5;
}

- (void)_accessibilityUpdateRecordButtonLabel
{
  objc_opt_class();
  v3 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_recordButton"];
  v4 = __UIAccessibilityCastAsClass();

  if ([(MessagesViewControllerAccessibility *)self safeBoolForKey:@"_recording"])
  {
    v5 = @"button.record.stop";
  }

  else
  {
    v5 = @"button.record.start";
  }

  v6 = accessibilityJellyfishLocalizedString(v5);
  [v4 setAccessibilityLabel:v6];
}

- (void)_accessibilityUpdateCollectionViewAccessibilityForPresentationStyle:(unint64_t)style
{
  v5 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_puppetCollectionViewController"];
  v8 = [v5 safeValueForKey:@"view"];

  v6 = [(MessagesViewControllerAccessibility *)self safeBoolForKey:@"displaysLaunchScreen"];
  if (style == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  [v8 setAccessibilityElementsHidden:v7];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v3 viewDidLoad];
  [(MessagesViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)handleRecordTap:(id)tap
{
  v4.receiver = self;
  v4.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v4 handleRecordTap:tap];
  [(MessagesViewControllerAccessibility *)self _accessibilityUpdateRecordButtonLabel];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"faceIsTracked"])
  {
    v22 = 0;
    objc_opt_class();
    v13 = [(MessagesViewControllerAccessibility *)self safeValueForKeyPath:@"_avatarListController.multiAvatarController.liveCell"];
    v14 = __UIAccessibilityCastAsClass();

    _axLiveCell = [(MessagesViewControllerAccessibility *)self _axLiveCell];
    v16 = [v14 isEqual:_axLiveCell];

    if (v16)
    {
      v17 = [(MessagesViewControllerAccessibility *)self safeValueForKey:@"_puppetView"];
      v18 = [v17 safeBoolForKey:@"faceIsTracked"];

      if (v18)
      {
        v19 = @"face.tracking.enabled";
      }

      else
      {
        v19 = @"face.tracking.disabled";
      }

      v20 = accessibilityJellyfishLocalizedString(v19);
      UIAccessibilitySpeak();
    }

    else
    {
      [(MessagesViewControllerAccessibility *)self _setAXLiveCell:v14];
    }
  }

  v21.receiver = self;
  v21.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
}

- (void)showUserInfoLabelWithText:(id)text
{
  textCopy = text;
  v7.receiver = self;
  v7.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v7 showUserInfoLabelWithText:textCopy];
  _axLastUserInfoString = [(MessagesViewControllerAccessibility *)self _axLastUserInfoString];
  v6 = [textCopy isEqualToString:_axLastUserInfoString];

  if ((v6 & 1) == 0)
  {
    [(MessagesViewControllerAccessibility *)self _setAXLastUserInfoString:textCopy];
    UIAccessibilitySpeakOrQueueIfNeeded();
  }
}

- (void)hideUserInfoLabelWithDuration:(double)duration
{
  v4.receiver = self;
  v4.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v4 hideUserInfoLabelWithDuration:duration];
  [(MessagesViewControllerAccessibility *)self _setAXLastUserInfoString:0];
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v5 willTransitionToPresentationStyle:?];
  [(MessagesViewControllerAccessibility *)self _accessibilityUpdateCollectionViewAccessibilityForPresentationStyle:style];
}

- (void)dismissLaunchScreenIfNecessaryForPresentationStyle:(unint64_t)style controller:(id)controller
{
  v6.receiver = self;
  v6.super_class = MessagesViewControllerAccessibility;
  [(MessagesViewControllerAccessibility *)&v6 dismissLaunchScreenIfNecessaryForPresentationStyle:style controller:controller];
  [(MessagesViewControllerAccessibility *)self _accessibilityUpdateCollectionViewAccessibilityForPresentationStyle:style];
}

- (BOOL)shouldPerformSegueWithIdentifier:(id)identifier sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = MessagesViewControllerAccessibility;
  v5 = [(MessagesViewControllerAccessibility *)&v7 shouldPerformSegueWithIdentifier:identifier sender:sender];
  [(MessagesViewControllerAccessibility *)self _accessibilityUpdateCollectionViewAccessibilityForPresentationStyle:[(MessagesViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"presentationStyle"]];
  return v5;
}

@end