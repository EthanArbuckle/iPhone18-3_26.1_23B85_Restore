@interface APOnBoardingWelcomeController
- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
    scrollView = [v2 scrollView];
    [v4 performAdjustmentsForScrollView_];
  }
}

- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = sub_1AEA32454();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1AEA2735C(v9, v11, text, v13, v14, v16, layout);
  }

  text = sub_1AEA32454();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1AEA32454();
  v16 = v15;
  return sub_1AEA2735C(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC15AppProtectionUI29APOnBoardingWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  sub_1AEA32454();
  if (text)
  {
    sub_1AEA32454();
    text = v10;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI29APOnBoardingWelcomeController_assistant) = 0;
  iconCopy = icon;
  v12 = sub_1AEA32444();

  if (text)
  {
    v13 = sub_1AEA32444();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for APOnBoardingWelcomeController();
  v14 = [(APOnBoardingWelcomeController *)&v16 initWithTitle:v12 detailText:v13 icon:iconCopy contentLayout:layout];

  return v14;
}

@end