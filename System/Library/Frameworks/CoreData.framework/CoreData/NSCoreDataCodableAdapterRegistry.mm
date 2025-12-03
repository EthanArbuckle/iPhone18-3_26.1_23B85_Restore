@interface NSCoreDataCodableAdapterRegistry
- (NSCoreDataCodableAdapterRegistry)init;
- (id)decodeWithData:(id)data withAdapterNamed:(id)named error:(id *)error;
- (id)encodeWithValue:(id)value withAdapterNamed:(id)named error:(id *)error;
@end

@implementation NSCoreDataCodableAdapterRegistry

- (id)encodeWithValue:(id)value withAdapterNamed:(id)named error:(id *)error
{
  swift_unknownObjectRetain();
  namedCopy = named;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  NSCoreDataCodableAdapterRegistry.encode(value:withAdapterNamed:)(v18, v9, v11);
  v13 = v12;
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v18);

  v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v15);

  return v16.super.isa;
}

- (id)decodeWithData:(id)data withAdapterNamed:(id)named error:(id *)error
{
  dataCopy = data;
  namedCopy = named;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  NSCoreDataCodableAdapterRegistry.decode(data:withAdapterNamed:)(v10, v12, v13, v15);

  outlined consume of Data._Representation(v10, v12);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v16 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v18);

  return v16;
}

- (NSCoreDataCodableAdapterRegistry)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySS8CoreData06NSCoreD21CodableAdapterFactory_pGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySDySS8CoreData06NSCoreD21CodableAdapterFactory_pGSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x1E69E7CC8];
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(NSCoreDataCodableAdapterRegistry *)&v7 init];
}

@end