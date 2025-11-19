@interface ClearBackground.Controller
- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithCoder:(id)a3;
- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation ClearBackground.Controller

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClearBackground.Controller();
  v2 = v6.receiver;
  [(ClearBackground.Controller *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClearBackground.Controller();
  v4 = v9.receiver;
  v5 = a3;
  [(ClearBackground.Controller *)&v9 willMoveToParentViewController:v5];
  if (v5)
  {
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() clearColor];
      [v7 setBackgroundColor:v8];
    }
  }
}

- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1004BBE64();
    v6 = a4;
    v7 = sub_1004BBE24();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ClearBackground.Controller();
  v9 = [(ClearBackground.Controller *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtCV11MusicCoreUIP33_BED032AFC26D7293E5DA491DDAECC51415ClearBackground10Controller)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClearBackground.Controller();
  v4 = a3;
  v5 = [(ClearBackground.Controller *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end