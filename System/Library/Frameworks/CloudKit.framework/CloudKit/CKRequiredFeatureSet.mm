@interface CKRequiredFeatureSet
- (CKRequiredFeatureSet)initWithZoneFeatures:(id)a3 recordFeatures:(id)a4 fieldFeatures:(id)a5;
- (id)copyWithZone:(void *)a3;
- (id)fieldFeatures;
- (id)recordFeatures;
- (id)zoneFeatures;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKRequiredFeatureSet

- (CKRequiredFeatureSet)initWithZoneFeatures:(id)a3 recordFeatures:(id)a4 fieldFeatures:(id)a5
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
  v2 = self;
  v3 = CKRequiredFeatureSet.zoneFeatures.getter();

  return v3;
}

- (id)recordFeatures
{
  v2 = self;
  v3 = CKRequiredFeatureSet.recordFeatures.getter();

  return v3;
}

- (id)fieldFeatures
{
  v2 = self;
  v3 = CKRequiredFeatureSet.fieldFeatures.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CKRequiredFeatureSet.encode(with:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  CKRequiredFeatureSet.copy(with:)(v3, v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CKRequiredFeatureSet.hash.getter();

  return v3;
}

@end