@interface SUUISettingsSoftwareUpdateController
- (SUUISettingsSoftwareUpdateController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation SUUISettingsSoftwareUpdateController

- (void)viewDidLoad
{
  self;
  SUUISettingsSoftwareUpdateController.viewDidLoad()();
  _objc_release(self);
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  l;
  v11 = _Block_copy(completion);
  self;
  if (l)
  {
    v7 = sub_51290();
    _objc_release(l);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v11;
    v5 = sub_4F6D8;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  SUUISettingsSoftwareUpdateController.handleURL(_:withCompletion:)(v8, v5, v6);
  sub_15224(v5);

  _objc_release(self);
}

- (SUUISettingsSoftwareUpdateController)initWithNibName:(id)name bundle:(id)bundle
{
  name;
  bundle;
  if (name)
  {
    v6 = sub_51310();
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

  return SUUISettingsSoftwareUpdateController.init(nibName:bundle:)(v8, v9, bundle);
}

@end