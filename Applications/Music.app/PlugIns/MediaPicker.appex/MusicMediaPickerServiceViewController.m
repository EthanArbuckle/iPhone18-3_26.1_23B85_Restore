@interface MusicMediaPickerServiceViewController
- (MusicMediaPickerServiceViewController)initWithCoder:(id)a3;
- (MusicMediaPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)mediaPickerNavigationControllerDidCancel:(id)a3;
- (void)updateWithConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation MusicMediaPickerServiceViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000191C();
}

- (void)mediaPickerNavigationControllerDidCancel:(id)a3
{
  v4 = self;
  v3 = sub_10000215C();
  if (v3)
  {
    [v3 remoteMediaPickerDidCancel];
    swift_unknownObjectRelease();
  }
}

- (void)updateWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000221C();
}

- (MusicMediaPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000040A0();
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = sub_100004090();
  }

  else
  {
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MusicMediaPickerServiceViewController();
  v9 = [(MusicMediaPickerServiceViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (MusicMediaPickerServiceViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for MusicMediaPickerServiceViewController();
  v5 = a3;
  v6 = [(MusicMediaPickerServiceViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end