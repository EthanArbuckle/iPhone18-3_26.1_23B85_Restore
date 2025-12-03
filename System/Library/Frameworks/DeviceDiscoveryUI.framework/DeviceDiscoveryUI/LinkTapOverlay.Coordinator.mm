@interface LinkTapOverlay.Coordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator)init;
- (void)didTapLabel:(id)label;
@end

@implementation LinkTapOverlay.Coordinator

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  view = [recognizerCopy view];
  if (view)
  {
    v10 = view;
    [touchCopy locationInView_];

    v11 = sub_2380768FC();
    v12 = v11;
    if (v11)
    {
      sub_23807A454(v11);
    }

    LOBYTE(view) = v12 != 0;
  }

  else
  {
    __break(1u);
  }

  return view;
}

- (void)didTapLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  view = [labelCopy view];
  if (view)
  {
    v6 = view;
    [labelCopy locationInView_];

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