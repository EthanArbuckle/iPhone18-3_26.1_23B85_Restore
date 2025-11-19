@interface CAAUEQHeaderView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)didMoveToSuperview;
- (void)removeFromSuperview;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)textFieldEditingDidChange:(id)a3;
- (void)tintColorDidChange;
@end

@implementation CAAUEQHeaderView

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAAUEQHeaderView();
  v2 = v4.receiver;
  [(CAAUEQHeaderView *)&v4 didMoveToSuperview];
  v3 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewSetup;
  if ((v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewSetup] & 1) == 0)
  {
    sub_2371388BC();
    v2[v3] = 1;
  }
}

- (void)removeFromSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAAUEQHeaderView();
  v2 = v4.receiver;
  [(CAAUEQHeaderView *)&v4 removeFromSuperview];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_237134124();
}

- (void)textFieldEditingDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_237134694(v4);
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v8 = self;
  [v4 selectAll_];
  v5 = [v4 textColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v7 = 0;
  }

  [v4 setBackgroundColor_];
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v5 = objc_opt_self();
  v7 = a3;
  v6 = [v5 clearColor];
  [v7 setBackgroundColor_];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v5 = sub_2371962EC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  sub_23719657C();
  sub_2371962DC();
  sub_2371962DC();

  v14 = sub_2371962CC();
  v15 = *(v6 + 8);
  v15(v10, v5);
  v15(v13, v5);
  return v14 & 1;
}

@end