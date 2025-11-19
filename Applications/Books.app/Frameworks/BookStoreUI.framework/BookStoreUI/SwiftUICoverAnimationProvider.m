@interface SwiftUICoverAnimationProvider
- (_TtC11BookStoreUI29SwiftUICoverAnimationProvider)init;
- (double)cardStackTransitioningCoverSourceExtraXOffset;
- (id)cardStackTransitioningCoverSourceHide;
- (id)coverAnimationSourceView;
- (void)cardStackTransitioningCoverSourceReplaceReferenceView:(id)a3;
- (void)setCardStackTransitioningCoverSourceExtraXOffset:(double)a3;
@end

@implementation SwiftUICoverAnimationProvider

- (double)cardStackTransitioningCoverSourceExtraXOffset
{
  v3 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCardStackTransitioningCoverSourceExtraXOffset:(double)a3
{
  v5 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC11BookStoreUI29SwiftUICoverAnimationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cardStackTransitioningCoverSourceReplaceReferenceView:(id)a3
{
  v4 = a3;
  v5 = self;
  SwiftUICoverAnimationProvider.cardStackTransitioningCoverSourceReplaceReferenceView(_:)(v4);
}

- (id)cardStackTransitioningCoverSourceHide
{
  v7 = 0;
  v2 = self;
  sub_6620C(&qword_3C27A8);
  sub_2C44D8();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  aBlock[4] = sub_149508;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_750DC;
  aBlock[3] = &unk_38EED8;
  v4 = _Block_copy(aBlock);

  return v4;
}

- (id)coverAnimationSourceView
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_sourceReferenceView);
  v3 = self;
  v4 = v2;

  v5 = sub_2C5F68();

  return v5;
}

@end