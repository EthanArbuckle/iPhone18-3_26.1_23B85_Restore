@interface UserDefaultsBooleanObserver
- (_TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation UserDefaultsBooleanObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v3 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
  v4 = *&self->objectWillChange[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
  selfCopy = self;
  v6 = v2;

  v7 = sub_29E754198();

  [v6 removeObserver:selfCopy forKeyPath:v7 context:selfCopy + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for UserDefaultsBooleanObserver();
  [(UserDefaultsBooleanObserver *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_29E7541D8();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_29E754C38();
  sub_29E751758();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_29E6226A0(&qword_2A1856610, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_29E754078();

LABEL_8:
  sub_29E6220BC(v10, v12, v18, v15, context);

  sub_29E60E88C(v18);
}

- (_TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end