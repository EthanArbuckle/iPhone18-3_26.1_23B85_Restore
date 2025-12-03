@interface HUDLoadingController
- (_TtC23ShelfKitCollectionViews20HUDLoadingController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HUDLoadingController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_25ACB8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = type metadata accessor for HUDLoadingController(0);
  v4 = v10.receiver;
  [(HUDLoadingController *)&v10 viewDidAppear:appearCopy];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v9[4] = sub_25CF98;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_914CC;
  v9[3] = &block_descriptor_49_0;
  v7 = _Block_copy(v9);
  v8 = v4;

  [v5 animateWithDuration:131074 delay:v7 options:0 animations:0.2 completion:0.0];
  _Block_release(v7);
}

- (_TtC23ShelfKitCollectionViews20HUDLoadingController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end