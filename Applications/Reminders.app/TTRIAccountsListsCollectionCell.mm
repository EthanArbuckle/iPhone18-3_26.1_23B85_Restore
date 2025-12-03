@interface TTRIAccountsListsCollectionCell
- (_TtC9Reminders31TTRIAccountsListsCollectionCell)initWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)prepareForReuse;
@end

@implementation TTRIAccountsListsCollectionCell

- (void)invalidateIntrinsicContentSize
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000263A8;
  *(v5 + 24) = v4;
  v8[4] = sub_100026410;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026440;
  v8[3] = &unk_100733228;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC9Reminders31TTRIAccountsListsCollectionCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsCollectionCell_viewModelObserver) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRIAccountsListsCollectionCell();
  v2 = v3.receiver;
  [(TTRIAccountsListsCollectionCell *)&v3 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsCollectionCell_viewModelObserver])
  {

    TTRViewModelObserver.unsubscribe()();
  }

  else
  {
    __break(1u);
  }
}

@end