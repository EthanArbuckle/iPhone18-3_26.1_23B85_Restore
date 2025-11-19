@interface _SNClassificationResult
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (NSDictionary)classificationDictionary;
- (NSString)classifierIdentifier;
- (_SNClassificationResult)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (_SNClassificationResult)initWithCoder:(id)a3;
- (id)binarySampleRepresentation;
- (id)classificationForIdentifier:(id)a3;
- (id)classifications;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setClassificationDictionary:(id)a3;
- (void)setClassifierIdentifier:(id)a3;
- (void)setTimeRange:(id *)a3;
@end

@implementation _SNClassificationResult

- (NSDictionary)classificationDictionary
{
  v2 = self;
  _SNClassificationResult.classificationDictionary.getter();

  sub_1C97BD318(0, &qword_1EC3C54B0);
  v3 = sub_1C9A922F8();

  return v3;
}

- (void)setClassificationDictionary:(id)a3
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v4 = sub_1C9A92328();
  v5 = self;
  _SNClassificationResult.classificationDictionary.setter(v4);
}

- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange
{
  _SNClassificationResult.timeRange.getter(v9);
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

- (void)setTimeRange:(id *)a3
{
  var3 = a3->var1.var3;
  v4[0] = *&a3->var0.var0;
  v4[1] = *&a3->var0.var1;
  v5 = *&a3->var0.var3;
  v6 = *&a3->var1.var1;
  v7 = var3;
  _SNClassificationResult.timeRange.setter(v4);
}

- (NSString)classifierIdentifier
{
  _SNClassificationResult.classifierIdentifier.getter();
  if (v2)
  {
    v3 = sub_1C9A92478();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClassifierIdentifier:(id)a3
{
  if (a3)
  {
    sub_1C9A924A8();
  }

  v4 = self;
  _SNClassificationResult.classifierIdentifier.setter();
}

- (id)classificationForIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1C9A924A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_1C9847768(v4, v6);

  return v8;
}

- (id)classifications
{
  v2 = self;
  sub_1C98478CC();

  type metadata accessor for _SNClassification();
  v3 = sub_1C9A92768();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = _SNClassificationResult.hash.getter();

  return v3;
}

- (_SNClassificationResult)initWithCoder:(id)a3
{
  v3 = a3;
  _SNClassificationResult.init(coder:)();
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _SNClassificationResult.encode(with:)(v4);
}

- (id)binarySampleRepresentation
{
  v2 = self;
  v3 = _SNClassificationResult.binarySampleRepresentation()();
  v5 = v4;

  v6 = sub_1C9A915F8();
  sub_1C97A5978(v3, v5);

  return v6;
}

- (_SNClassificationResult)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1C9A91618();
  v10 = v9;

  if (v7)
  {
    sub_1C9A92328();
  }

  return _SNClassificationResult.init(binarySampleRepresentation:metadata:timestamp:)(v8, v10);
}

@end