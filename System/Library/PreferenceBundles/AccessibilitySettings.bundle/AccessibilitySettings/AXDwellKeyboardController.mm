@interface AXDwellKeyboardController
- (AXDwellKeyboardController)initWithNibName:(id)name bundle:(id)bundle;
- (double)valueForSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)dealloc;
- (void)specifier:(id)specifier setValue:(double)value;
@end

@implementation AXDwellKeyboardController

- (AXDwellKeyboardController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_19BFE4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_164728(v5, v7, bundle);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v4 = v3;
    v5 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterRemoveObserver(v4, selfCopy, v5, 0);

    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for DwellKeyboardController();
    [(AXDwellKeyboardController *)&v6 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_164B08();

  if (v3)
  {
    v4.super.isa = sub_19C094().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (double)valueForSpecifier:(id)specifier
{
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance setAssistiveTouchMouseDwellControlKeyboardKeyActivationTimeout:value];
}

- (id)stringValueForSpecifier:(id)specifier
{
  selfCopy = self;
  specifierCopy = specifier;
  [(AXDwellKeyboardController *)selfCopy valueForSpecifier:specifierCopy];
  v7 = [objc_allocWithZone(NSNumber) initWithDouble:v6];
  v8 = AXFormatNumberWithOptions();

  if (v8)
  {
    sub_19BFE4();

    v9 = sub_19BFB4();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

@end