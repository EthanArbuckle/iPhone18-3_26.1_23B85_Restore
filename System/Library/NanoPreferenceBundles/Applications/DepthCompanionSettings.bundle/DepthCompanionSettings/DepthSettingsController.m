@interface DepthSettingsController
- (_TtC22DepthCompanionSettings23DepthSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)openUserGuide;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DepthSettingsController

- (_TtC22DepthCompanionSettings23DepthSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_A174();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_562C(a4, v6, a4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_59D0(v3);
}

- (id)localizedPaneTitle
{
  v2 = sub_A154();

  return v2;
}

- (id)applicationBundleIdentifier
{
  v2 = sub_A154();

  return v2;
}

- (id)specifiers
{
  v2 = self;
  v3 = sub_5F70();

  if (v3)
  {
    v4.super.isa = sub_A1E4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_9FF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9FE4();
  v11 = a3;
  v12 = self;
  sub_67B4(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)openUserGuide
{
  v0 = (*(*(sub_21F8(&qword_14CA8, &unk_AC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v22 - v1;
  v3 = sub_9FA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0xD000000000000025;
  v27 = 0x800000000000B900;
  v8 = [objc_opt_self() sharedInstance];
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 getActivePairedDevice];

  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = [v10 valueForProperty:NRDevicePropertyAbsoluteDepthLimit];

  if (v11)
  {
    sub_A2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  sub_7690(v25, &v23);
  if (!*(&v24 + 1))
  {
    sub_7700(&v23, &qword_14928, &unk_AB10);
    goto LABEL_12;
  }

  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v29._object = 0x800000000000B930;
    v29._countAndFlagsBits = 0xD000000000000013;
    sub_A1B4(v29);
    goto LABEL_13;
  }

  v12 = v22[1];
  isa = sub_A2B4(6).super.super.isa;
  v14 = sub_A2D4();

  if ((v14 & 1) == 0)
  {

    goto LABEL_12;
  }

  v28._countAndFlagsBits = 0x333730396470612FLL;
  v28._object = 0xED00003664333863;
  sub_A1B4(v28);

LABEL_13:
  sub_9F94();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_7700(v25, &qword_14928, &unk_AB10);

    v15 = &qword_14CA8;
    v16 = &unk_AC48;
    v17 = v2;
LABEL_17:
    sub_7700(v17, v15, v16);
    return;
  }

  (*(v4 + 32))(v7, v2, v3);
  if (UIApp)
  {
    v18 = UIApp;

    sub_9F84(v19);
    v21 = v20;
    [v18 openURL:v20 withCompletionHandler:0];

    (*(v4 + 8))(v7, v3);
    v15 = &qword_14928;
    v16 = &unk_AB10;
    v17 = v25;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

@end