@interface APOnBoardingWelcomeController
- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLayoutSubviews;
@end

@implementation APOnBoardingWelcomeController

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for APOnBoardingWelcomeController();
  v2 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 scrollView];
    [v4 performAdjustmentsForScrollView_];
  }
}

- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = sub_1AEA32454();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1AEA2735C(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = sub_1AEA32454();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1AEA32454();
  v16 = v15;
  return sub_1AEA2735C(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  sub_1AEA32454();
  if (a4)
  {
    sub_1AEA32454();
    a4 = v10;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant) = 0;
  v11 = a5;
  v12 = sub_1AEA32444();

  if (a4)
  {
    v13 = sub_1AEA32444();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for APOnBoardingWelcomeController();
  v14 = [(APOnBoardingWelcomeController *)&v16 initWithTitle:v12 detailText:v13 icon:v11 contentLayout:a6];

  return v14;
}

@end