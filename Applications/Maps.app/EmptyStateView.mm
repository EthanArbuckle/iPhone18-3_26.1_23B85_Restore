@interface EmptyStateView
- (NSAttributedString)attributedSubtitle;
- (id)disclosureAction;
- (void)_pressedDisclosureCell;
- (void)setDisclosureAction:(id)action;
@end

@implementation EmptyStateView

- (NSAttributedString)attributedSubtitle
{
  attributedText = [*(self + OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel) attributedText];

  return attributedText;
}

- (id)disclosureAction
{
  if (*(self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100039C64;
    v5[3] = &unk_1016166B8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDisclosureAction:(id)action
{
  v4 = _Block_copy(action);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000FA694;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction);
  v8 = *(self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction);
  v9 = *(self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1000D3B90(v8, v9);
}

- (void)_pressedDisclosureCell
{
  v2 = *(self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction + 8);
    selfCopy = self;
    v5 = sub_1000CD9D4(v2);
    v2(v5);

    sub_1000D3B90(v2, v3);
  }
}

@end