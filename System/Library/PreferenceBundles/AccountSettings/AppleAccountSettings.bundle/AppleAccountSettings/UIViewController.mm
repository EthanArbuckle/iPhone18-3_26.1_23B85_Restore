@interface UIViewController
- (void)aaui_showViewController:(id)a3 sender:(id)a4;
@end

@implementation UIViewController

- (void)aaui_showViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_356D0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v8 = a3;
    v9 = self;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_2E834(a3, v12, v10);

  sub_2DFB0(v10, &qword_69F98, &qword_405E0);
  sub_2DFB0(v12, &qword_69FB8, &qword_40698);
}

@end