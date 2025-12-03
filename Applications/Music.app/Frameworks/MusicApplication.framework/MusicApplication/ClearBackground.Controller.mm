@interface ClearBackground.Controller
- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithCoder:(id)coder;
- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation ClearBackground.Controller

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClearBackground.Controller();
  v2 = v6.receiver;
  [(ClearBackground.Controller *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:clearColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClearBackground.Controller();
  v4 = v9.receiver;
  controllerCopy = controller;
  [(ClearBackground.Controller *)&v9 willMoveToParentViewController:controllerCopy];
  if (controllerCopy)
  {
    view = [controllerCopy view];
    if (view)
    {
      v7 = view;
      clearColor = [objc_opt_self() clearColor];
      [v7 setBackgroundColor:clearColor];
    }
  }
}

- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_AB92A0();
    bundleCopy = bundle;
    v7 = sub_AB9260();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ClearBackground.Controller();
  v9 = [(ClearBackground.Controller *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClearBackground.Controller();
  coderCopy = coder;
  v5 = [(ClearBackground.Controller *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end