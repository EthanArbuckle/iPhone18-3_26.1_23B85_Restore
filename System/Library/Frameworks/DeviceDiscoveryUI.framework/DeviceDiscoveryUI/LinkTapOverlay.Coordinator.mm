@interface LinkTapOverlay.Coordinator
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator)init;
- (void)didTapLabel:(id)a3;
@end

@implementation LinkTapOverlay.Coordinator

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v6 view];
  if (v9)
  {
    v10 = v9;
    [v7 locationInView_];

    v11 = sub_2380768FC();
    v12 = v11;
    if (v11)
    {
      sub_23807A454(v11);
    }

    LOBYTE(v9) = v12 != 0;
  }

  else
  {
    __break(1u);
  }

  return v9;
}

- (void)didTapLabel:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v4 locationInView_];

    v7 = sub_2380768FC();
    if (v7)
    {
      v8 = v7;
      v7();

      sub_23807A454(v8);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

- (_TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end