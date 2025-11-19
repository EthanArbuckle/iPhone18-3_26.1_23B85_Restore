@interface NTKFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityCanStartTimeTravel;
- (BOOL)_accessibilityTimeTravelEnabled;
- (id)detachedComplicationDisplayWrapperForSlot:(id)a3;
- (id)normalComplicationDisplayWrapperForSlot:(id)a3;
- (void)_accessibilityAnnounceScrub;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityTimeAnnouncementDidFinish;
- (void)_loadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setTimeView:(id)a3;
@end

@implementation NTKFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKFaceView" hasInstanceVariable:@"_timeView" withType:"UIView<NTKTimeView>"];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"setTimeView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"_loadSnapshotContentViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"startScrubbingAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"endScrubbingAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"scrubToDate: animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"normalComplicationDisplayWrapperForSlot:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"detachedComplicationDisplayWrapperForSlot:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"_supportsTimeScrubbing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceVariable:@"_timeScrubbing" withType:"B"];
  [v3 validateClass:@"NTKFaceView" hasInstanceVariable:@"_editing" withType:"B"];
  [v3 validateClass:@"NTKTimeTravelSettings"];
  [v3 validateClass:@"NTKTimeTravelSettings" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKTimeTravelSettings" hasInstanceMethod:@"isTimeTravelEnabled" withFullSignature:{"B", 0}];
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

- (void)setTimeView:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NTKFaceViewAccessibility;
  [(NTKFaceViewAccessibility *)&v5 setTimeView:v4];
  if (v4)
  {
    [v4 _setAccessibilityServesAsFirstElement:1];
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
  v3 = [(NTKFaceViewAccessibility *)self _accessibilityNotificationObserver];

  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = [(NTKFaceViewAccessibility *)self _accessibilityNotificationObserver];
    [v4 removeObserver:v5];

    [(NTKFaceViewAccessibility *)self _accessibilitySetNotificationObserver:0];
    [AXTimeTravelDateManager setTimeTravelDate:0];
  }

  v6.receiver = self;
  v6.super_class = NTKFaceViewAccessibility;
  [(NTKFaceViewAccessibility *)&v6 dealloc];
}

- (id)normalComplicationDisplayWrapperForSlot:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NTKFaceViewAccessibility;
  v5 = [(NTKFaceViewAccessibility *)&v8 normalComplicationDisplayWrapperForSlot:v4];
  if (_AXSAutomationEnabled())
  {
    v6 = [NSString stringWithFormat:@"normal-complication-%@", v4];
    [v5 setAccessibilityIdentifier:v6];
  }

  return v5;
}

- (id)detachedComplicationDisplayWrapperForSlot:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NTKFaceViewAccessibility;
  v5 = [(NTKFaceViewAccessibility *)&v8 detachedComplicationDisplayWrapperForSlot:v4];
  if (_AXSAutomationEnabled())
  {
    v6 = [NSString stringWithFormat:@"detached-complication-%@", v4];
    [v5 setAccessibilityIdentifier:v6];
  }

  return v5;
}

- (void)_accessibilityAnnounceScrub
{
  v3 = [(NTKFaceViewAccessibility *)self _accessibilityTimeTravelDate];
  if (v3)
  {
    v8 = v3;
    v4 = AXDateStringForFormat();
    v5 = [AXAttributedString axAttributedStringWithString:v4];
    [v5 setAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenClockTime];
    v6 = [(NTKFaceViewAccessibility *)self _accessibilityCharacterVoiceName];
    if ([v6 length])
    {
      [v5 setAttribute:v6 forKey:UIAccessibilityTokenSpeakAsCharacter];
      [v5 setAttribute:v8 forKey:UIAccessibilityTokenCharacterTimeToSpeak];
      [v5 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenCharacterSuppressFlavorSpeech];
    }

    UIAccessibilitySpeak();
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_accessibilityTimeAnnouncementDidFinish" name:UIAccessibilityAnnouncementDidFinishNotification object:0];

    [(NTKFaceViewAccessibility *)self _accessibilitySetTimeTravelDate:0];
    v3 = v8;
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
  v3 = [(NTKFaceViewAccessibility *)self _accessibilityTimeTravelEnabled];
  if (v3)
  {
    LOBYTE(v3) = [(NTKFaceViewAccessibility *)self safeBoolForKey:@"_timeScrubbing"]^ 1;
  }

  return v3;
}

@end