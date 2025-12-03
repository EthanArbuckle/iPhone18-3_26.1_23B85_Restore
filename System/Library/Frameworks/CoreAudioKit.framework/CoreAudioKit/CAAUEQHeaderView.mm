@interface CAAUEQHeaderView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)didMoveToSuperview;
- (void)removeFromSuperview;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)textFieldEditingDidChange:(id)change;
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
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver_];
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_237134124();
}

- (void)textFieldEditingDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_237134694(changeCopy);
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  [editingCopy selectAll_];
  textColor = [editingCopy textColor];
  if (textColor)
  {
    v6 = textColor;
    colorWithAlphaComponent_ = [textColor colorWithAlphaComponent_];
  }

  else
  {
    colorWithAlphaComponent_ = 0;
  }

  [editingCopy setBackgroundColor_];
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  v5 = objc_opt_self();
  editingCopy = editing;
  clearColor = [v5 clearColor];
  [editingCopy setBackgroundColor_];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
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