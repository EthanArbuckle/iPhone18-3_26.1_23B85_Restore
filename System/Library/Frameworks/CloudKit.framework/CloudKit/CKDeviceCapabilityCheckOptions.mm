@interface CKDeviceCapabilityCheckOptions
- (CKDeviceCapabilityCheckOptions)initWithCoder:(id)coder;
- (CKDeviceCapabilityCheckOptions)initWithExcludeDevicesWithoutCapabilityCheckingSupport:(BOOL)support excludeZoneAccessBefore:(id)before;
- (NSDate)excludeZoneAccessBefore;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDeviceCapabilityCheckOptions

- (CKDeviceCapabilityCheckOptions)initWithExcludeDevicesWithoutCapabilityCheckingSupport:(BOOL)support excludeZoneAccessBefore:(id)before
{
  v5 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (before)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = 1;
  }

  sub_1883F90F4(v8, v10, 1, v9);
  CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)();
  return result;
}

- (NSDate)excludeZoneAccessBefore
{
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.getter();
  v6 = type metadata accessor for Date();
  isa = 0;
  if (sub_1883F971C(v5, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return isa;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKDeviceCapabilityCheckOptions.encode(with:)(coderCopy);
}

- (CKDeviceCapabilityCheckOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  CKDeviceCapabilityCheckOptions.init(coder:)();
  return result;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CKDeviceCapabilityCheckOptions.copy(with:)(selfCopy, v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKDeviceCapabilityCheckOptions.hash.getter();

  return v3;
}

@end