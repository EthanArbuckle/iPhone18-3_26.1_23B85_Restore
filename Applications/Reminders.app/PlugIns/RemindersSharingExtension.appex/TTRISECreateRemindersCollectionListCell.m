@interface TTRISECreateRemindersCollectionListCell
- (_TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell)initWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)prepareForReuse;
@end

@implementation TTRISECreateRemindersCollectionListCell

- (_TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver) = 0;
  result = sub_10004CD40();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRISECreateRemindersCollectionListCell();
  v2 = v4.receiver;
  [(TTRISECreateRemindersCollectionListCell *)&v4 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver])
  {
    v3 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver];

    sub_10004A920();
  }

  else
  {
    __break(1u);
  }
}

- (void)invalidateIntrinsicContentSize
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100015EE0;
  *(v5 + 24) = v4;
  v8[4] = sub_10000A118;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10003415C;
  v8[3] = &unk_10005FB50;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

@end