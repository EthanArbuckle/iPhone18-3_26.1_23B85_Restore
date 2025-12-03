@interface SwiftUICoverAnimationProvider
- (_TtC11BookStoreUI29SwiftUICoverAnimationProvider)init;
- (double)cardStackTransitioningCoverSourceExtraXOffset;
- (id)cardStackTransitioningCoverSourceHide;
- (id)coverAnimationSourceView;
- (void)cardStackTransitioningCoverSourceReplaceReferenceView:(id)view;
- (void)setCardStackTransitioningCoverSourceExtraXOffset:(double)offset;
@end

@implementation SwiftUICoverAnimationProvider

- (double)cardStackTransitioningCoverSourceExtraXOffset
{
  v3 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCardStackTransitioningCoverSourceExtraXOffset:(double)offset
{
  v5 = OBJC_IVAR____TtC11BookStoreUI29SwiftUICoverAnimationProvider_cardStackTransitioningCoverSourceExtraXOffset;
  swift_beginAccess();
  *(&self->super.isa + v5) = offset;
}

- (_TtC11BookStoreUI29SwiftUICoverAnimationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cardStackTransitioningCoverSourceReplaceReferenceView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  SwiftUICoverAnimationProvider.cardStackTransitioningCoverSourceReplaceReferenceView(_:)(viewCopy);
}

- (id)cardStackTransitioningCoverSourceHide
{
  v7 = 0;
  selfCopy = self;
  sub_6620C(&qword_3C27A8);
  sub_2C44D8();
  v3 = swift_allocObject();
  *(v3 + 16) = selfCopy;
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
  selfCopy = self;
  v4 = v2;

  v5 = sub_2C5F68();

  return v5;
}

@end