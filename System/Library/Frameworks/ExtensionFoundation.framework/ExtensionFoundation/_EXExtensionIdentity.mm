@interface _EXExtensionIdentity
+ (_EXExtensionIdentity)current;
+ (id)identityFromDataRepresentation:(id)representation error:(id *)error;
- (BOOL)builtForNSExtension;
- (BOOL)disableLaunchdCheckinTimeout;
- (BOOL)enabled;
- (BOOL)hasSandboxEntitlement;
- (BOOL)isEqual:(id)equal;
- (BOOL)launchesViaExtensionKitService;
- (BOOL)performsUserInteractiveWork;
- (BOOL)presentsUserInterface;
- (BOOL)requiresHostToBeContainerApp;
- (BOOL)requiresLegacyInfrastructure;
- (BOOL)requiresLibXPCConnection;
- (BOOL)requiresMacCatalystBehavior;
- (BOOL)requiresMultiInstance;
- (BOOL)requiresNetworkAttribution;
- (BOOL)requiresUIKitSceneHosting;
- (BOOL)spotlightIndexable;
- (BOOL)supportsNSExtensionPlistKeys;
- (BOOL)systemComponent;
- (BOOL)targetsServiceExtensionPoint;
- (BOOL)targetsSystemExtensionPoint;
- (BOOL)unelected;
- (Class)connectionHandlerClass;
- (Class)extensionClass;
- (Class)extensionContextClass;
- (Class)hostContextClass;
- (Class)principalClass;
- (ISIcon)icon;
- (LSApplicationExtensionRecord)applicationExtensionRecord;
- (LSBundleRecord)containingBundleRecord;
- (NSArray)alternateSandboxProfileNames;
- (NSArray)roles;
- (NSArray)spotlightImporterIdentifiers;
- (NSDictionary)attributes;
- (NSDictionary)extensionDictionary;
- (NSDictionary)nsExtensionAttributes;
- (NSDictionary)requiredHostEntitlements;
- (NSDictionary)sdkDictionary;
- (NSString)bundleIdentifier;
- (NSString)bundleVersion;
- (NSString)developerName;
- (NSString)extensionPointIdentifier;
- (NSString)groupIdentifier;
- (NSString)localizedName;
- (NSString)privateSandboxProfileEntitlement;
- (NSString)sandboxProfileName;
- (NSString)serviceName;
- (NSURL)url;
- (_EXExtensionIdentity)init;
- (_EXExtensionIdentity)initWithPlugInKitProxy:(id)proxy;
- (_EXExtensionIdentity)initWithServiceIdentifier:(id)identifier error:(id *)error;
- (id)entitlementNamed:(id)named ofClass:(Class)class;
- (id)makeXPCConnectionWithError:(id *)error;
- (int64_t)hash;
- (unsigned)defaultUserElection;
- (unsigned)platform;
- (unsigned)userElection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EXExtensionIdentity

- (NSString)bundleIdentifier
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 64))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10 = MEMORY[0x1865F36D0](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)requiresHostToBeContainerApp
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 216))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)targetsSystemExtensionPoint
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 312))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_EXExtensionIdentity)init
{
  v2 = self + OBJC_IVAR____EXExtensionIdentity__inner;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v4.receiver = self;
  v4.super_class = _EXExtensionIdentity;
  return [(_EXExtensionIdentity *)&v4 init];
}

- (int64_t)hash
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  uniqueIdentifier = [(_EXExtensionIdentity *)selfCopy uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UUID.hashValue.getter();
  (*(v4 + 8))(v7, v3);
  return v10;
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

  v6 = _EXExtensionIdentity.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (BOOL)launchesViaExtensionKitService
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 384))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  outlined init with copy of UUID?(self + v5, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v7 + 8);
    coderCopy = coder;
    selfCopy = self;
    v8(coderCopy, v6, v7);

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    __break(1u);
  }
}

- (LSBundleRecord)containingBundleRecord
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 256))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)requiresLegacyInfrastructure
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 200))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)requiresMultiInstance
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 376))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)serviceName
{
  selfCopy = self;
  bundleIdentifier = [(_EXExtensionIdentity *)selfCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleIdentifier = MEMORY[0x1865F36D0](v4);
  }

  return bundleIdentifier;
}

- (BOOL)requiresLibXPCConnection
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 136))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)presentsUserInterface
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 104))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)requiresNetworkAttribution
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 144))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)entitlementNamed:(id)named ofClass:(Class)class
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v8, &v17, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v18)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    outlined init with take of _InnerAppExtensionIdentity(&v17, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = *(v12 + 472);
    selfCopy = self;
    v15 = v13(ObjCClassMetadata, v5, v7, v11, v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v19[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
    v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)identityFromDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = specialized _EXExtensionProcessIdentity.__allocating_init(dataRepresentation:)(v5, v7);

  return v8;
}

+ (_EXExtensionIdentity)current
{
  v2 = specialized static _EXExtensionIdentity.current.getter();

  return v2;
}

- (_EXExtensionIdentity)initWithPlugInKitProxy:(id)proxy
{
  v3 = self + OBJC_IVAR____EXExtensionIdentity__inner;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_EXExtensionIdentity)initWithServiceIdentifier:(id)identifier error:(id *)error
{
  v4 = self + OBJC_IVAR____EXExtensionIdentity__inner;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)extensionPointIdentifier
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 40))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10 = MEMORY[0x1865F36D0](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)bundleVersion
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 80))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10 = MEMORY[0x1865F36D0](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (LSApplicationExtensionRecord)applicationExtensionRecord
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 264))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSURL)url
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v8, &v16, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v17)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v16, v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v11 + 272))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    (*(v4 + 8))(v7, v3);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (ISIcon)icon
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)localizedName
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 16))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10 = MEMORY[0x1865F36D0](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)developerName
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 32))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10 = MEMORY[0x1865F36D0](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)requiresMacCatalystBehavior
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 112))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)requiresUIKitSceneHosting
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 128))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSDictionary)attributes
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v6 + 304);
    selfCopy = self;
    v9 = v7(v5, v6);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v10.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)builtForNSExtension
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 208))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)targetsServiceExtensionPoint
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 232))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)spotlightIndexable
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 240))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSArray)spotlightImporterIdentifiers
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 248))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v7.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSDictionary)nsExtensionAttributes
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v6 + 176);
    selfCopy = self;
    v9 = v7(v5, v6);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v10.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)enabled
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v10, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v11)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v6 + 416);
    selfCopy = self;
    v9 = v7(0, v5, v6);

    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)unelected
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v10, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v11)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v6 + 424);
    selfCopy = self;
    v9 = v7(0, v5, v6);

    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)makeXPCConnectionWithError:(id *)error
{
  selfCopy = self;
  v5.super.isa = _EXExtensionIdentity.makeXPCConnection()().super.isa;

  if (v6.super.isa)
  {
    if (error)
    {
      v7 = _convertErrorToNSError(_:)();

      v8 = v7;
      isa = 0;
      *error = v7;
    }

    else
    {

      isa = 0;
    }
  }

  else
  {
    isa = v5.super.isa;
  }

  return isa;
}

- (NSArray)roles
{
  selfCopy = self;
  _EXExtensionIdentity.roles.getter();

  type metadata accessor for _EXSceneRole(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)groupIdentifier
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 72))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    if (v9)
    {
      v10 = MEMORY[0x1865F36D0](v7, v9);
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSDictionary)requiredHostEntitlements
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 184))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v7.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSDictionary)sdkDictionary
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v6 + 288);
    selfCopy = self;
    v9 = v7(v5, v6);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v10.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSDictionary)extensionDictionary
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v6 + 296);
    selfCopy = self;
    v9 = v7(v5, v6);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v10.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (unsigned)platform
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LODWORD(v5) = (*(v6 + 88))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (unsigned)userElection
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v10, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v11)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v6 + 440);
    selfCopy = self;
    v9 = v7(0, v5, v6);

    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (unsigned)defaultUserElection
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 456))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)sandboxProfileName
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 328))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10 = MEMORY[0x1865F36D0](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSArray)alternateSandboxProfileNames
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 336))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v7.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)privateSandboxProfileEntitlement
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v12)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 344))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    if (v9)
    {
      v10 = MEMORY[0x1865F36D0](v7, v9);
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)hasSandboxEntitlement
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 352))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)disableLaunchdCheckinTimeout
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 360))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)performsUserInteractiveWork
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 368))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)systemComponent
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 320))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)supportsNSExtensionPlistKeys
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    LOBYTE(v5) = (*(v6 + 504))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)extensionContextClass
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 512))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    if (v7)
    {
      return swift_getObjCClassFromMetadata();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)hostContextClass
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 520))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    if (v7)
    {
      return swift_getObjCClassFromMetadata();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)principalClass
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 528))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    if (v7)
    {
      return swift_getObjCClassFromMetadata();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)extensionClass
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 536))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    if (v7)
    {
      return swift_getObjCClassFromMetadata();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)connectionHandlerClass
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(self + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 544))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    if (v7)
    {
      return swift_getObjCClassFromMetadata();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end