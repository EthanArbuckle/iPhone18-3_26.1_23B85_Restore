@interface CKRequiredFeatureSet
- (CKRequiredFeatureSet)initWithZoneFeatures:(id)features recordFeatures:(id)recordFeatures fieldFeatures:(id)fieldFeatures;
- (id)copyWithZone:(void *)zone;
- (id)fieldFeatures;
- (id)recordFeatures;
- (id)zoneFeatures;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRequiredFeatureSet

- (CKRequiredFeatureSet)initWithZoneFeatures:(id)features recordFeatures:(id)recordFeatures fieldFeatures:(id)fieldFeatures
{
  type metadata accessor for CKZoneFeature(self);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for CKRecordFeature(v5);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for CKFieldFeature(v6);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return CKRequiredFeatureSet.init(zoneFeatures:recordFeatures:fieldFeatures:)(v5, v6, v7);
}

- (id)zoneFeatures
{
  selfCopy = self;
  v3 = CKRequiredFeatureSet.zoneFeatures.getter();

  return v3;
}

- (id)recordFeatures
{
  selfCopy = self;
  v3 = CKRequiredFeatureSet.recordFeatures.getter();

  return v3;
}

- (id)fieldFeatures
{
  selfCopy = self;
  v3 = CKRequiredFeatureSet.fieldFeatures.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKRequiredFeatureSet.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CKRequiredFeatureSet.copy(with:)(selfCopy, v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKRequiredFeatureSet.hash.getter();

  return v3;
}

@end