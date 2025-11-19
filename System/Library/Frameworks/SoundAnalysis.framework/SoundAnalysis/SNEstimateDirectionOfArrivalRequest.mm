@interface SNEstimateDirectionOfArrivalRequest
- (BOOL)isEqual:(id)a3;
- (NSArray)spatialSpectrum;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SNEstimateDirectionOfArrivalRequest

- (NSArray)spatialSpectrum
{
  v2 = sub_1C9A92768();

  return v2;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SNEstimateDirectionOfArrivalRequest.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = SNEstimateDirectionOfArrivalRequest.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SNEstimateDirectionOfArrivalRequest.isEqual(_:)();

  sub_1C97DA1E0(v8, &unk_1EC3C5E60);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SNEstimateDirectionOfArrivalRequest.encode(with:)(v4);
}

@end