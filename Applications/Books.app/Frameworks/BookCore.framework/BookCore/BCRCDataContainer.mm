@interface BCRCDataContainer
+ (BCRCDataContainer)defaultContainer;
- (BABooksTreatmentData)treatmentData;
- (BCRCDataContainer)init;
- (BOOL)configurationLoaded;
- (NSDictionary)configs;
- (void)configurationManager:(id)a3 namespaceDataDidUpdateFrom:(id)a4 to:(id)a5;
- (void)deployStagedDataIfNeeded;
- (void)registerOnConfigChange:(id)a3;
- (void)setOverrideObject:(id)a3 forKey:(id)a4;
- (void)setTreatmentData:(id)a3;
- (void)unregisterOnConfigChange:(id)a3;
@end

@implementation BCRCDataContainer

+ (BCRCDataContainer)defaultContainer
{
  if (qword_33F930 != -1)
  {
    swift_once();
  }

  v3 = qword_340D38;

  return v3;
}

- (BCRCDataContainer)init
{
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() sharedInstance];
  v4 = objc_allocWithZone(ObjectType);
  v5 = sub_1B414C(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (BOOL)configurationLoaded
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 configurationLoaded];

  return v3;
}

- (void)deployStagedDataIfNeeded
{
  v2 = self;
  RCDataContainer.deployStagedDataIfNeeded()();
}

- (BABooksTreatmentData)treatmentData
{
  v3 = OBJC_IVAR___BCRCDataContainer_treatmentData;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTreatmentData:(id)a3
{
  v5 = OBJC_IVAR___BCRCDataContainer_treatmentData;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSDictionary)configs
{
  v2 = self;
  RCDataContainer.configs.getter();

  v3.super.isa = sub_1EEE44().super.isa;

  return v3.super.isa;
}

- (void)registerOnConfigChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1EF0B4();
  if (qword_33F938 != -1)
  {
    swift_once();
  }

  sub_1EEAA4();
  [objc_allocWithZone(JSManagedValue) initWithValue:v4];
  sub_18AFC0(&qword_340DB8);
  sub_1EEAC4();
}

- (void)unregisterOnConfigChange:(id)a3
{
  v3 = self;
  sub_18AFC0(&qword_340DB8);
  sub_1EEAC4();
}

- (void)setOverrideObject:(id)a3 forKey:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1EF444();
  swift_unknownObjectRelease();
  v8 = sub_1EEF04();
  v10 = v9;

  v11 = sub_1B91B0();
  sub_1BA890(v12, v8, v10, &v11);

  *(&v7->super.isa + OBJC_IVAR___BCRCDataContainer____lazy_storage___overrides) = v11;

  sub_1B774C();

  sub_18E310(v12);
}

- (void)configurationManager:(id)a3 namespaceDataDidUpdateFrom:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1BD658(v10);
}

@end