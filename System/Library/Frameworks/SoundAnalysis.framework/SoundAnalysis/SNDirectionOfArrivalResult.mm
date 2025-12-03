@interface SNDirectionOfArrivalResult
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (BOOL)isEqual:(id)equal;
- (NSArray)spatialSpectrum;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setSpatialSpectrum:(id)spectrum;
- (void)setTimeRange:(id *)range;
@end

@implementation SNDirectionOfArrivalResult

- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange
{
  SNDirectionOfArrivalResult.timeRange.getter(v9);
  v5 = v12;
  v6 = v11;
  v7 = v10;
  v8 = v9[1];
  retstr->var0.var0 = v9[0];
  *&retstr->var0.var1 = v8;
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = v6;
  retstr->var1.var3 = v5;
  return result;
}

- (void)setTimeRange:(id *)range
{
  var3 = range->var1.var3;
  v4[0] = range->var0.var0;
  v4[1] = *&range->var0.var1;
  v5 = *&range->var0.var3;
  v6 = *&range->var1.var1;
  v7 = var3;
  SNDirectionOfArrivalResult.timeRange.setter(v4);
}

- (NSArray)spatialSpectrum
{
  selfCopy = self;
  SNDirectionOfArrivalResult.spatialSpectrum.getter();

  sub_1C9841D44();
  v3 = sub_1C9A92768();

  return v3;
}

- (void)setSpatialSpectrum:(id)spectrum
{
  sub_1C9841D44();
  v4 = sub_1C9A92798();
  selfCopy = self;
  SNDirectionOfArrivalResult.spatialSpectrum.setter(v4);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNDirectionOfArrivalResult.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SNDirectionOfArrivalResult.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNDirectionOfArrivalResult.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  SNDirectionOfArrivalResult.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

@end