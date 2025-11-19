@interface FMSettingsUpdateViewController
- (void)backAction;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMSettingsUpdateViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMSettingsUpdateViewController();
  v2 = v6.receiver;
  v3 = [(FMSettingsUpdateViewController *)&v6 viewDidLoad];
  (*((swift_isaMask & *v2) + 0xF8))(v3);
  sub_100343D80();
  (*((swift_isaMask & *v2) + 0x108))(v4, v5);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMSettingsUpdateViewController();
  v4 = v6.receiver;
  v5 = [(FMSettingsUpdateViewController *)&v6 viewWillAppear:v3];
  (*((swift_isaMask & *v4) + 0x110))(v5);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1003446B8();
}

- (void)backAction
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6[4] = sub_1000822F4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100004AE4;
  v6[3] = &unk_1006379A0;
  v4 = _Block_copy(v6);
  v5 = self;

  [(FMSettingsUpdateViewController *)v5 dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

@end