@interface MTCarPlayMigrationBridge
+ (MTCarPlayMigrationBridge)sharedInstance;
- (BOOL)isMigrating;
- (MTCarPlayMigrationBridge)init;
- (void)setIsMigrating:(BOOL)a3;
@end

@implementation MTCarPlayMigrationBridge

+ (MTCarPlayMigrationBridge)sharedInstance
{
  if (qword_100572708 != -1)
  {
    swift_once();
  }

  v3 = qword_100593220;

  return v3;
}

- (BOOL)isMigrating
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setIsMigrating:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (MTCarPlayMigrationBridge)init
{
  v3 = sub_100168088(&qword_1005737C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR___MTCarPlayMigrationBridge__isMigrating;
  v12 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v7, v6, v3);
  v8 = type metadata accessor for CarPlayMigrationBridge();
  v11.receiver = self;
  v11.super_class = v8;
  return [(MTCarPlayMigrationBridge *)&v11 init];
}

@end