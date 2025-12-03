@interface MFMailIntelligenceLightSettingsViewController
+ (NSString)title;
- (MFMailIntelligenceLightSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation MFMailIntelligenceLightSettingsViewController

+ (NSString)title
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MailIntelligenceLightSettingsViewController.title.getter();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)viewDidLoad
{
  _objc_retain(self);
  MailIntelligenceLightSettingsViewController.viewDidLoad()();
  _objc_release(self);
}

- (MFMailIntelligenceLightSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  _objc_retain(name);
  _objc_retain(bundle);
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;
    _objc_release(name);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return MailIntelligenceLightSettingsViewController.init(nibName:bundle:)(v8, v9, bundle);
}

@end