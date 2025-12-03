@interface StandardSectionHeaderView
- (_TtC4Maps25StandardSectionHeaderView)initWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setActionHandler:(id)handler;
@end

@implementation StandardSectionHeaderView

- (void)setActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000FA694;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = (self + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler);
  v9 = *(self + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler);
  v10 = *(self + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler + 8);
  *v8 = v7;
  v8[1] = v6;
  selfCopy = self;
  sub_1000CD9D4(v7);
  sub_1000D3B90(v9, v10);
  sub_100506AAC();

  sub_1000D3B90(v7, v6);
}

- (_TtC4Maps25StandardSectionHeaderView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderSize) = 1;
  v4 = (self + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler);
  *v4 = 0;
  v4[1] = 0;
  *(self + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderPosition) = 2;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  sub_100506AAC();

  sub_1000DB2F4(v9);
}

@end