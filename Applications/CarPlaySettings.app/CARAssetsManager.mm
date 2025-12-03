@interface CARAssetsManager
+ (_TtC15CarPlaySettings16CARAssetsManager)sharedInstance;
- (BOOL)isDarkModeAppearanceOnly;
- (id)observers;
- (void)addObserver:(id)observer;
- (void)setObservers:(id)observers;
- (void)setup;
@end

@implementation CARAssetsManager

- (id)observers
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings16CARAssetsManager_observers;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObservers:(id)observers
{
  v5 = OBJC_IVAR____TtC15CarPlaySettings16CARAssetsManager_observers;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = observers;
  observersCopy = observers;
}

+ (_TtC15CarPlaySettings16CARAssetsManager)sharedInstance
{
  if (qword_1001038D0 != -1)
  {
    swift_once();
  }

  v3 = static CARAssetsManager.sharedInstance;

  return v3;
}

- (BOOL)isDarkModeAppearanceOnly
{
  selfCopy = self;
  v3 = CARAssetsManager.isDarkModeAppearanceOnly.getter();

  return v3 & 1;
}

- (void)addObserver:(id)observer
{
  v5 = *((swift_isaMask & self->super.isa) + 0x68);
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = v5();
  [v6 addObject:observer];

  swift_unknownObjectRelease();
}

- (void)setup
{
  selfCopy = self;
  CARAssetsManager.setup()();
}

@end