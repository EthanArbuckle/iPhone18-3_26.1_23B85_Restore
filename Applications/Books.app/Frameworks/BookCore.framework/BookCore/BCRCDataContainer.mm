@interface BCRCDataContainer
+ (BCRCDataContainer)defaultContainer;
- (BABooksTreatmentData)treatmentData;
- (BCRCDataContainer)init;
- (BOOL)configurationLoaded;
- (NSDictionary)configs;
- (void)configurationManager:(id)manager namespaceDataDidUpdateFrom:(id)from to:(id)to;
- (void)deployStagedDataIfNeeded;
- (void)registerOnConfigChange:(id)change;
- (void)setOverrideObject:(id)object forKey:(id)key;
- (void)setTreatmentData:(id)data;
- (void)unregisterOnConfigChange:(id)change;
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
  sharedInstance = [objc_opt_self() sharedInstance];
  v4 = objc_allocWithZone(ObjectType);
  v5 = sub_1B414C(sharedInstance);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (BOOL)configurationLoaded
{
  sharedInstance = [objc_opt_self() sharedInstance];
  configurationLoaded = [sharedInstance configurationLoaded];

  return configurationLoaded;
}

- (void)deployStagedDataIfNeeded
{
  selfCopy = self;
  RCDataContainer.deployStagedDataIfNeeded()();
}

- (BABooksTreatmentData)treatmentData
{
  v3 = OBJC_IVAR___BCRCDataContainer_treatmentData;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTreatmentData:(id)data
{
  v5 = OBJC_IVAR___BCRCDataContainer_treatmentData;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = data;
  dataCopy = data;
}

- (NSDictionary)configs
{
  selfCopy = self;
  RCDataContainer.configs.getter();

  v3.super.isa = sub_1EEE44().super.isa;

  return v3.super.isa;
}

- (void)registerOnConfigChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1EF0B4();
  if (qword_33F938 != -1)
  {
    swift_once();
  }

  sub_1EEAA4();
  [objc_allocWithZone(JSManagedValue) initWithValue:changeCopy];
  sub_18AFC0(&qword_340DB8);
  sub_1EEAC4();
}

- (void)unregisterOnConfigChange:(id)change
{
  selfCopy = self;
  sub_18AFC0(&qword_340DB8);
  sub_1EEAC4();
}

- (void)setOverrideObject:(id)object forKey:(id)key
{
  swift_unknownObjectRetain();
  keyCopy = key;
  selfCopy = self;
  sub_1EF444();
  swift_unknownObjectRelease();
  v8 = sub_1EEF04();
  v10 = v9;

  v11 = sub_1B91B0();
  sub_1BA890(v12, v8, v10, &v11);

  *(&selfCopy->super.isa + OBJC_IVAR___BCRCDataContainer____lazy_storage___overrides) = v11;

  sub_1B774C();

  sub_18E310(v12);
}

- (void)configurationManager:(id)manager namespaceDataDidUpdateFrom:(id)from to:(id)to
{
  managerCopy = manager;
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_1BD658(toCopy);
}

@end