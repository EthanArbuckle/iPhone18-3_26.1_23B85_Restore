@interface MFMailURLSettingsViewController
+ (NSString)title;
- (MFMailURLSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MFMailURLSettingsViewController

+ (NSString)title
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MailURLSettingsViewController.title.getter();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)viewDidLoad
{
  _objc_retain(self);
  MailURLSettingsViewController.viewDidLoad()();
  _objc_release(self);
}

- (MFMailURLSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;
    _objc_release(a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return MailURLSettingsViewController.init(nibName:bundle:)(v8, v9, a4);
}

@end