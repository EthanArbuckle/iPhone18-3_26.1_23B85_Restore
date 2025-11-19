@interface RemoteBaseSceneHostingController
- (_TtC10StickerKit32RemoteBaseSceneHostingController)initWithCoder:(id)a3;
- (_TtC10StickerKit32RemoteBaseSceneHostingController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)activityType;
- (id)transitionerForConnectingHostingController:(id)a3;
- (void)dealloc;
- (void)sendAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation RemoteBaseSceneHostingController

- (id)activityType
{
  v2 = sub_19A7AAFE4();

  return v2;
}

- (void)sendAction:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  sub_19A7AB644();

  [v7 sendAction_];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  v2 = v6.receiver;
  [(RemoteBaseSceneHostingController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    sub_19A714DAC();
  }

  else
  {
    __break(1u);
  }
}

- (id)transitionerForConnectingHostingController:(id)a3
{
  v5[4] = sub_19A6D26D4;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_19A6DB1A8;
  v5[3] = &block_descriptor_33_0;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit32RemoteBaseSceneHostingController_keyboardSuppression);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  [(RemoteBaseSceneHostingController *)&v5 dealloc];
}

- (_TtC10StickerKit32RemoteBaseSceneHostingController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19A7AB014();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_19A5F5028(0, &unk_1EAFCB0D0);
  v8 = a4;
  sub_19A7AB664();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit32RemoteBaseSceneHostingController_keyboardSuppression) = 0;
  if (v7)
  {
    v9 = sub_19A7AAFE4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  v10 = [(RemoteBaseSceneHostingController *)&v12 initWithNibName:v9 bundle:v8];

  return v10;
}

- (_TtC10StickerKit32RemoteBaseSceneHostingController)initWithCoder:(id)a3
{
  sub_19A5F5028(0, &unk_1EAFCB0D0);
  v5 = a3;
  sub_19A7AB664();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit32RemoteBaseSceneHostingController_keyboardSuppression) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  v6 = [(RemoteBaseSceneHostingController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end