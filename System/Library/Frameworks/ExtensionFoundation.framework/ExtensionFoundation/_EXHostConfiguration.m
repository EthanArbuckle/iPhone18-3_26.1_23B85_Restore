@interface _EXHostConfiguration
- (NSArray)assertionAttributes;
- (NSArray)preferredLanguages;
- (NSDictionary)additionalEnvironmentVariables;
- (NSString)description;
- (NSString)sandboxProfileName;
- (RBSProcessIdentity)rbsProcessIdentity;
- (_EXExtensionRepresenting)extension;
- (_EXHostConfiguration)initWithExtension:(id)a3 instanceIdentifier:(id)a4;
- (_EXHostConfiguration)initWithExtensionIdentity:(id)a3;
- (_EXHostConfiguration)initWithExtensionIdentity:(id)a3 instanceIdentifier:(id)a4;
- (id)copyWithZone:(void *)a3;
- (id)interruptionHandler;
- (void)setAdditionalEnvironmentVariables:(id)a3;
- (void)setAssertionAttributes:(id)a3;
- (void)setExtension:(id)a3;
- (void)setExtensionIdentity:(id)a3;
- (void)setInstanceIdentifier:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setLaunchPersona:(id)a3;
- (void)setPreferredLanguages:(id)a3;
- (void)setSandboxProfileName:(id)a3;
@end

@implementation _EXHostConfiguration

- (_EXHostConfiguration)initWithExtensionIdentity:(id)a3 instanceIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v5, v6);

  return v7;
}

- (void)setLaunchPersona:(id)a3
{
  v4 = *(self + OBJC_IVAR____EXHostConfiguration_launchPersona);
  *(self + OBJC_IVAR____EXHostConfiguration_launchPersona) = a3;
  v3 = a3;
}

- (void)setAssertionAttributes:(id)a3
{
  type metadata accessor for RBSDomainAttribute();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____EXHostConfiguration_assertionAttributes);
  *(self + OBJC_IVAR____EXHostConfiguration_assertionAttributes) = v4;
}

- (_EXHostConfiguration)initWithExtensionIdentity:(id)a3
{
  v5 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration());
  v6 = a3;
  v7 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v6, 0);

  swift_getObjectType();
  v8 = *((*MEMORY[0x1E69E7D40] & *self) + 0x30);
  v9 = *((*MEMORY[0x1E69E7D40] & *self) + 0x34);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)setExtensionIdentity:(id)a3
{
  v4 = *(self + OBJC_IVAR____EXHostConfiguration__extensionIdentity);
  *(self + OBJC_IVAR____EXHostConfiguration__extensionIdentity) = a3;
  v3 = a3;
}

- (id)interruptionHandler
{
  if (*(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler))
  {
    v2 = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8);
    v5[4] = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v5[3] = &block_descriptor_4;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____EXHostConfiguration_interruptionHandler);
  v8 = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler);
  v9 = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

- (void)setInstanceIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____EXHostConfiguration_instanceIdentifier);
  *(self + OBJC_IVAR____EXHostConfiguration_instanceIdentifier) = a3;
  v3 = a3;
}

- (NSArray)preferredLanguages
{
  if (*(self + OBJC_IVAR____EXHostConfiguration_preferredLanguages))
  {
    v2 = *(self + OBJC_IVAR____EXHostConfiguration_preferredLanguages);

    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)setPreferredLanguages:(id)a3
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____EXHostConfiguration_preferredLanguages);
  *(self + OBJC_IVAR____EXHostConfiguration_preferredLanguages) = v4;
}

- (NSDictionary)additionalEnvironmentVariables
{
  v2 = *(self + OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables);

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setAdditionalEnvironmentVariables:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables);
  *(self + OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables) = v4;
}

- (NSString)sandboxProfileName
{
  v2 = *(self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName);
    v4 = *(self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8);

    v5 = MEMORY[0x1865F36D0](v3, v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSandboxProfileName:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName);
  v7 = *(self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSArray)assertionAttributes
{
  v2 = *(self + OBJC_IVAR____EXHostConfiguration_assertionAttributes);
  type metadata accessor for RBSDomainAttribute();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  _EXHostConfiguration.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v4;
}

- (NSString)description
{
  v2 = self;
  v3 = _EXHostConfiguration.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1865F36D0](v3, v5);

  return v6;
}

- (RBSProcessIdentity)rbsProcessIdentity
{
  v2 = self;
  v3 = _EXHostConfiguration.rbsProcessIdentity.getter();

  return v3;
}

- (_EXHostConfiguration)initWithExtension:(id)a3 instanceIdentifier:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

- (_EXExtensionRepresenting)extension
{
  result = *(self + OBJC_IVAR____EXHostConfiguration__extensionIdentity);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (void)setExtension:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _EXHostConfiguration.extensionRepresenting.setter();
}

@end