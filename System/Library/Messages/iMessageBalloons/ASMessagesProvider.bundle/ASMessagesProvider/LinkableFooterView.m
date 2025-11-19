@interface LinkableFooterView
- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LinkableFooterView

- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_769240();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_3ED878(v3, v4);
}

- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView)initWithCoder:(id)a3
{
  v4 = sub_7666D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761818LinkableFooterView_linkedLabel;
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v4, qword_99F790);
  (*(v5 + 16))(v7, v9, v4);
  v10 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(&self->super.super.super.super.isa + v8) = sub_4ECF40(v7, 0, 0);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_3EDD00();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3EDF98(a3);
}

@end