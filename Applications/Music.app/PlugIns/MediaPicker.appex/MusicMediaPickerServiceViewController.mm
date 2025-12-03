@interface MusicMediaPickerServiceViewController
- (MusicMediaPickerServiceViewController)initWithCoder:(id)coder;
- (MusicMediaPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)mediaPickerNavigationControllerDidCancel:(id)cancel;
- (void)updateWithConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation MusicMediaPickerServiceViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000191C();
}

- (void)mediaPickerNavigationControllerDidCancel:(id)cancel
{
  selfCopy = self;
  v3 = sub_10000215C();
  if (v3)
  {
    [v3 remoteMediaPickerDidCancel];
    swift_unknownObjectRelease();
  }
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_10000221C();
}

- (MusicMediaPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000040A0();
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = sub_100004090();
  }

  else
  {
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MusicMediaPickerServiceViewController();
  v9 = [(MusicMediaPickerServiceViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (MusicMediaPickerServiceViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for MusicMediaPickerServiceViewController();
  coderCopy = coder;
  v6 = [(MusicMediaPickerServiceViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end