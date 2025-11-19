@interface JSCircleImageViewController
- (_TtC16MusicApplication27JSCircleImageViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication27JSCircleImageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation JSCircleImageViewController

- (_TtC16MusicApplication27JSCircleImageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  JSCircleImageViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(JSCircleImageViewController *)&v14 viewDidLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = sub_2B26DC();
    [v13 setFrame:{v6, v8, v10, v12}];

    sub_2B28DC(0, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(JSCircleImageViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 2) = v7;
  v8[3] = width;
  v8[4] = height;
  v11[4] = sub_2B5104;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_CF24C;
  v11[3] = &block_descriptor_17;
  v9 = _Block_copy(v11);
  v10 = v7;

  [a4 animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSCircleImageViewController.traitCollectionDidChange(_:)(v9);
}

- (_TtC16MusicApplication27JSCircleImageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end