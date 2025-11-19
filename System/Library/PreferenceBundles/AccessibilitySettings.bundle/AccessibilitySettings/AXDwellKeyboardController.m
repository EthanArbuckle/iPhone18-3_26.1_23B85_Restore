@interface AXDwellKeyboardController
- (AXDwellKeyboardController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)valueForSpecifier:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (void)dealloc;
- (void)specifier:(id)a3 setValue:(double)a4;
@end

@implementation AXDwellKeyboardController

- (AXDwellKeyboardController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_19BFE4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_164728(v5, v7, a4);
}

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v4 = v3;
    v5 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterRemoveObserver(v4, v2, v5, 0);

    v6.receiver = v2;
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
  v2 = self;
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

- (double)valueForSpecifier:(id)a3
{
  v3 = [objc_opt_self() sharedInstance];
  [v3 assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v5 = [objc_opt_self() sharedInstance];
  [v5 setAssistiveTouchMouseDwellControlKeyboardKeyActivationTimeout:a4];
}

- (id)stringValueForSpecifier:(id)a3
{
  v4 = self;
  v5 = a3;
  [(AXDwellKeyboardController *)v4 valueForSpecifier:v5];
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