@interface _EXLaunchConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isLaunchConfigurationEqual:(id)equal;
- (NSArray)assertionAttributes;
- (NSArray)preferredLanguages;
- (NSDictionary)additionalEnvironmentVariables;
- (NSString)description;
- (NSString)sandboxProfileName;
- (_EXLaunchConfiguration)init;
- (_EXLaunchConfiguration)initWithCoder:(id)coder;
- (id)rbsProcessIdentityWithHost:(id)host;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAdditionalEnvironmentVariables:(id)variables;
- (void)setAssertionAttributes:(id)attributes;
- (void)setInstanceIdentifier:(id)identifier;
- (void)setLaunchPersona:(id)persona;
- (void)setPreferredLanguages:(id)languages;
- (void)setSandboxProfileName:(id)name;
@end

@implementation _EXLaunchConfiguration

- (int64_t)hash
{
  selfCopy = self;
  v3 = _EXLaunchConfiguration.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = _EXLaunchConfiguration.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  v3 = _EXLaunchConfiguration.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1865F36D0](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _EXLaunchConfiguration.encode(with:)(coderCopy);
}

- (_EXLaunchConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized _EXLaunchConfiguration.init(coder:)(coderCopy);

  return v4;
}

- (id)rbsProcessIdentityWithHost:(id)host
{
  hostCopy = host;
  selfCopy = self;
  v6 = _EXLaunchConfiguration.rbsProcessIdentity(withHost:)(hostCopy);

  return v6;
}

- (void)setInstanceIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  *(self + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier) = identifier;
  identifierCopy = identifier;
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

- (void)setPreferredLanguages:(id)languages
{
  if (languages)
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

- (void)setSandboxProfileName:(id)name
{
  if (name)
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

- (void)setAdditionalEnvironmentVariables:(id)variables
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);
  *(self + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables) = v4;
}

- (void)setLaunchPersona:(id)persona
{
  personaCopy = persona;
  selfCopy = self;
  _EXLaunchConfiguration.launchPersona.setter(persona);
}

- (NSArray)assertionAttributes
{
  v2 = *(self + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSDomainAttribute, 0x1E69C7560);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setAssertionAttributes:(id)attributes
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSDomainAttribute, 0x1E69C7560);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);
  *(self + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes) = v4;
}

- (BOOL)isLaunchConfigurationEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  LOBYTE(self) = _EXLaunchConfiguration.isLaunchConfigurationEqual(_:)(equalCopy);

  return self & 1;
}

- (_EXLaunchConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end