@interface TTRIAccountsListsViewPinnedListsCell
+ (Class)containerViewClass;
+ (Class)layerClass;
- (NSArray)preferredFocusEnvironments;
- (UIColor)separatorColor;
- (_TtC9Reminders36TTRIAccountsListsViewPinnedListsCell)initWithCoder:(id)a3;
- (_TtC9Reminders36TTRIAccountsListsViewPinnedListsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
@end

@implementation TTRIAccountsListsViewPinnedListsCell

+ (Class)containerViewClass
{
  type metadata accessor for TTRIPinnedListsView();

  return swift_getObjCClassFromMetadata();
}

- (_TtC9Reminders36TTRIAccountsListsViewPinnedListsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10032A290(a3, a4, v6);
}

- (_TtC9Reminders36TTRIAccountsListsViewPinnedListsCell)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  *&self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  type metadata accessor for CellLayer();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(TTRIAccountsListsViewPinnedListsCell *)&v2 prepareForReuse];
}

- (UIColor)separatorColor
{
  v2 = [objc_opt_self() clearColor];

  return v2;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIAccountsListsViewPinnedListsCell *)&v3 layoutMarginsDidChange];
  sub_10032A5C0();
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  sub_10032A858();

  sub_100058000(&qword_100780A40);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end