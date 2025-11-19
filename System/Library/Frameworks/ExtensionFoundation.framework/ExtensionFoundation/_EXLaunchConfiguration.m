@interface _EXLaunchConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isLaunchConfigurationEqual:(id)a3;
- (NSArray)assertionAttributes;
- (NSArray)preferredLanguages;
- (NSDictionary)additionalEnvironmentVariables;
- (NSString)description;
- (NSString)sandboxProfileName;
- (_EXLaunchConfiguration)init;
- (_EXLaunchConfiguration)initWithCoder:(id)a3;
- (id)rbsProcessIdentityWithHost:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAdditionalEnvironmentVariables:(id)a3;
- (void)setAssertionAttributes:(id)a3;
- (void)setInstanceIdentifier:(id)a3;
- (void)setLaunchPersona:(id)a3;
- (void)setPreferredLanguages:(id)a3;
- (void)setSandboxProfileName:(id)a3;
@end

@implementation _EXLaunchConfiguration

- (int64_t)hash
{
  v2 = self;
  v3 = _EXLaunchConfiguration.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = _EXLaunchConfiguration.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6;
}

- (NSString)description
{
  v2 = self;
  v3 = _EXLaunchConfiguration.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1865F36D0](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _EXLaunchConfiguration.encode(with:)(v4);
}

- (_EXLaunchConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized _EXLaunchConfiguration.init(coder:)(v3);

  return v4;
}

- (id)rbsProcessIdentityWithHost:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _EXLaunchConfiguration.rbsProcessIdentity(withHost:)(v4);

  return v6;
}

- (void)setInstanceIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  *(self + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier) = a3;
  v3 = a3;
}

- (NSArray)preferredLanguages
{
  if (*(self + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages))
  {
    v2 = *(self + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages);

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

  v5 = *(self + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages);
  *(self + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages) = v4;
}

- (NSString)sandboxProfileName
{
  v2 = *(self + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);
    v4 = *(self + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);

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

  v6 = (self + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);
  v7 = *(self + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSDictionary)additionalEnvironmentVariables
{
  v2 = *(self + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setAdditionalEnvironmentVariables:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);
  *(self + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables) = v4;
}

- (void)setLaunchPersona:(id)a3
{
  v5 = a3;
  v6 = self;
  _EXLaunchConfiguration.launchPersona.setter(a3);
}

- (NSArray)assertionAttributes
{
  v2 = *(self + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSDomainAttribute, 0x1E69C7560);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setAssertionAttributes:(id)a3
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSDomainAttribute, 0x1E69C7560);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);
  *(self + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes) = v4;
}

- (BOOL)isLaunchConfigurationEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _EXLaunchConfiguration.isLaunchConfigurationEqual(_:)(v4);

  return self & 1;
}

- (_EXLaunchConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end