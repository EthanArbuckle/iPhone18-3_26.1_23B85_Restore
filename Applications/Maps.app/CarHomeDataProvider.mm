@interface CarHomeDataProvider
- (void)carMapsSuggestionControllerDidRefresh:(id)refresh;
- (void)dealloc;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
@end

@implementation CarHomeDataProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = qword_1019066C8;
  selfCopy = self;
  if (v4 != -1)
  {
    v8 = selfCopy;
    swift_once();
    selfCopy = v8;
  }

  v6 = selfCopy;
  v7 = sub_1002E2C5C();
  [v7 unregisterObserver:v6];

  v9.receiver = v6;
  v9.super_class = ObjectType;
  [(CarHomeDataProvider *)&v9 dealloc];
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001DCA04(&unk_101609B30, sub_1001DCD50, &unk_101609B48);
  swift_unknownObjectRelease();
}

- (void)carMapsSuggestionControllerDidRefresh:(id)refresh
{
  refreshCopy = refresh;
  selfCopy = self;
  sub_1001DCA04(&unk_101609AE0, sub_1001DCCB8, &unk_101609AF8);
}

@end