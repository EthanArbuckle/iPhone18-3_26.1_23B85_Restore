@interface MessageActionsViewController
- (_TtC26GameCenterMessageExtension28MessageActionsViewController)initWithCoder:(id)coder;
- (_TtC26GameCenterMessageExtension28MessageActionsViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC26GameCenterMessageExtension28MessageActionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation MessageActionsViewController

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_1000412F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100041B20();
  v14 = v13;
  sub_1000412D0();
  viewCopy = view;
  selfCopy = self;
  v17 = sub_100003D8C(viewCopy, v12, v14, v11);

  (*(v8 + 8))(v11, v7);

  return v17;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1000412F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000412D0();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100003FE8();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_1000412F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000412D0();
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate))
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100030A64();

    swift_unknownObjectRelease();
  }

  (*(v6 + 8))(v9, v5);
}

- (_TtC26GameCenterMessageExtension28MessageActionsViewController)initWithCollectionViewLayout:(id)layout
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer) = 0;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate);
  v6 = type metadata accessor for MessageActionsViewController();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(MessageActionsViewController *)&v8 initWithCollectionViewLayout:layout];
}

- (_TtC26GameCenterMessageExtension28MessageActionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100041B20();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer) = 0;
    v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate);
    *v6 = 0;
    v6[1] = 0;
    bundleCopy = bundle;
    v8 = sub_100041AF0();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer) = 0;
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for MessageActionsViewController();
  v11 = [(MessageActionsViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC26GameCenterMessageExtension28MessageActionsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MessageActionsViewController();
  coderCopy = coder;
  v6 = [(MessageActionsViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end