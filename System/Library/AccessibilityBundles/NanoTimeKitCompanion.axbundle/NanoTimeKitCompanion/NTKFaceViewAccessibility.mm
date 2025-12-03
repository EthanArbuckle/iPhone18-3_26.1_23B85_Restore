@interface NTKFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityCanStartTimeTravel;
- (BOOL)_accessibilityTimeTravelEnabled;
- (id)detachedComplicationDisplayWrapperForSlot:(id)slot;
- (id)normalComplicationDisplayWrapperForSlot:(id)slot;
- (void)_accessibilityAnnounceScrub;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityTimeAnnouncementDidFinish;
- (void)_loadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setTimeView:(id)view;
@end

@implementation NTKFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceVariable:@"_timeView" withType:"UIView<NTKTimeView>"];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"setTimeView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"_loadSnapshotContentViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"startScrubbingAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"endScrubbingAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"scrubToDate: animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"normalComplicationDisplayWrapperForSlot:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"detachedComplicationDisplayWrapperForSlot:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"_supportsTimeScrubbing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceVariable:@"_timeScrubbing" withType:"B"];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceVariable:@"_editing" withType:"B"];
  [validationsCopy validateClass:@"NTKTimeTravelSettings"];
  [validationsCopy validateClass:@"NTKTimeTravelSettings" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKTimeTravelSettings" hasInstanceMethod:@"isTimeTravelEnabled" withFullSignature:{"B", 0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKFaceViewAccessibility;
  [(NTKFaceViewAccessibility *)&v3 layoutSubviews];
  [(NTKFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NTKFaceViewAccessibility;
  [(NTKFaceViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKFaceViewAccessibility *)self safeValueForKey:@"_timeView"];
  [v3 _setAccessibilityServesAsFirstElement:1];
}

- (void)setTimeView:(id)view
{
  viewCopy = view;
  v5.receiver = self;
  v5.super_class = NTKFaceViewAccessibility;
  [(NTKFaceViewAccessibility *)&v5 setTimeView:viewCopy];
  if (viewCopy)
  {
    [viewCopy _setAccessibilityServesAsFirstElement:1];
  }
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKFaceViewAccessibility;
  [(NTKFaceViewAccessibility *)&v3 _loadSnapshotContentViews];
  [(NTKFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)dealloc
{
  _accessibilityNotificationObserver = [(NTKFaceViewAccessibility *)self _accessibilityNotificationObserver];

  if (_accessibilityNotificationObserver)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    _accessibilityNotificationObserver2 = [(NTKFaceViewAccessibility *)self _accessibilityNotificationObserver];
    [v4 removeObserver:_accessibilityNotificationObserver2];

    [(NTKFaceViewAccessibility *)self _accessibilitySetNotificationObserver:0];
    [AXTimeTravelDateManager setTimeTravelDate:0];
  }

  v6.receiver = self;
  v6.super_class = NTKFaceViewAccessibility;
  [(NTKFaceViewAccessibility *)&v6 dealloc];
}

- (id)normalComplicationDisplayWrapperForSlot:(id)slot
{
  slotCopy = slot;
  v8.receiver = self;
  v8.super_class = NTKFaceViewAccessibility;
  v5 = [(NTKFaceViewAccessibility *)&v8 normalComplicationDisplayWrapperForSlot:slotCopy];
  if (_AXSAutomationEnabled())
  {
    slotCopy = [NSString stringWithFormat:@"normal-complication-%@", slotCopy];
    [v5 setAccessibilityIdentifier:slotCopy];
  }

  return v5;
}

- (id)detachedComplicationDisplayWrapperForSlot:(id)slot
{
  slotCopy = slot;
  v8.receiver = self;
  v8.super_class = NTKFaceViewAccessibility;
  v5 = [(NTKFaceViewAccessibility *)&v8 detachedComplicationDisplayWrapperForSlot:slotCopy];
  if (_AXSAutomationEnabled())
  {
    slotCopy = [NSString stringWithFormat:@"detached-complication-%@", slotCopy];
    [v5 setAccessibilityIdentifier:slotCopy];
  }

  return v5;
}

- (void)_accessibilityAnnounceScrub
{
  _accessibilityTimeTravelDate = [(NTKFaceViewAccessibility *)self _accessibilityTimeTravelDate];
  if (_accessibilityTimeTravelDate)
  {
    v8 = _accessibilityTimeTravelDate;
    v4 = AXDateStringForFormat();
    v5 = [AXAttributedString axAttributedStringWithString:v4];
    [v5 setAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenClockTime];
    _accessibilityCharacterVoiceName = [(NTKFaceViewAccessibility *)self _accessibilityCharacterVoiceName];
    if ([_accessibilityCharacterVoiceName length])
    {
      [v5 setAttribute:_accessibilityCharacterVoiceName forKey:UIAccessibilityTokenSpeakAsCharacter];
      [v5 setAttribute:v8 forKey:UIAccessibilityTokenCharacterTimeToSpeak];
      [v5 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenCharacterSuppressFlavorSpeech];
    }

    UIAccessibilitySpeak();
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_accessibilityTimeAnnouncementDidFinish" name:UIAccessibilityAnnouncementDidFinishNotification object:0];

    [(NTKFaceViewAccessibility *)self _accessibilitySetTimeTravelDate:0];
    _accessibilityTimeTravelDate = v8;
  }
}

- (void)_accessibilityTimeAnnouncementDidFinish
{
  v3 = UIAccessibilityLayoutChangedNotification;
  v6[0] = kAXPerformElementUpdateImmediatelyToken;
  v6[1] = kAXForceUpdateChangeToken;
  v4 = [NSArray arrayWithObjects:v6 count:2];
  UIAccessibilityPostNotification(v3, v4);

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIAccessibilityAnnouncementDidFinishNotification object:0];
}

- (BOOL)_accessibilityTimeTravelEnabled
{
  v2 = [(NTKFaceViewAccessibility *)self safeBoolForKey:@"_supportsTimeScrubbing"];
  if (v2)
  {
    v3 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
    v4 = [v3 safeBoolForKey:@"isTimeTravelEnabled"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)_accessibilityCanStartTimeTravel
{
  _accessibilityTimeTravelEnabled = [(NTKFaceViewAccessibility *)self _accessibilityTimeTravelEnabled];
  if (_accessibilityTimeTravelEnabled)
  {
    LOBYTE(_accessibilityTimeTravelEnabled) = [(NTKFaceViewAccessibility *)self safeBoolForKey:@"_timeScrubbing"]^ 1;
  }

  return _accessibilityTimeTravelEnabled;
}

@end