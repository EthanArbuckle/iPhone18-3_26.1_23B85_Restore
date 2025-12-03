@interface FaceToFaceViewController
- (_TtC17SequoiaTranslator24FaceToFaceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)closeButtonPressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FaceToFaceViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000F2EF8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FaceToFaceViewController();
  v4 = v10.receiver;
  [(FaceToFaceViewController *)&v10 viewWillAppear:appearCopy];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v9[4] = sub_1000F7E30;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100096948;
  v9[3] = &unk_100384428;
  v7 = _Block_copy(v9);
  v8 = v4;

  [v5 animateWithDuration:v7 animations:0.25];

  _Block_release(v7);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000F3100(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(FaceToFaceViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)closeButtonPressed
{
  selfCopy = self;
  sub_1000F74FC();
}

- (_TtC17SequoiaTranslator24FaceToFaceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end