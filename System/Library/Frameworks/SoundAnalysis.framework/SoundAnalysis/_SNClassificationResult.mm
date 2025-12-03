@interface _SNClassificationResult
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (NSDictionary)classificationDictionary;
- (NSString)classifierIdentifier;
- (_SNClassificationResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (_SNClassificationResult)initWithCoder:(id)coder;
- (id)binarySampleRepresentation;
- (id)classificationForIdentifier:(id)identifier;
- (id)classifications;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setClassificationDictionary:(id)dictionary;
- (void)setClassifierIdentifier:(id)identifier;
- (void)setTimeRange:(id *)range;
@end

@implementation _SNClassificationResult

- (NSDictionary)classificationDictionary
{
  selfCopy = self;
  _SNClassificationResult.classificationDictionary.getter();

  sub_1C97BD318(0, &qword_1EC3C54B0);
  v3 = sub_1C9A922F8();

  return v3;
}

- (void)setClassificationDictionary:(id)dictionary
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v4 = sub_1C9A92328();
  selfCopy = self;
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

- (void)setTimeRange:(id *)range
{
  var3 = range->var1.var3;
  v4[0] = *&range->var0.var0;
  v4[1] = *&range->var0.var1;
  v5 = *&range->var0.var3;
  v6 = *&range->var1.var1;
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

- (void)setClassifierIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1C9A924A8();
  }

  selfCopy = self;
  _SNClassificationResult.classifierIdentifier.setter();
}

- (id)classificationForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1C9A924A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1C9847768(v4, v6);

  return v8;
}

- (id)classifications
{
  selfCopy = self;
  sub_1C98478CC();

  type metadata accessor for _SNClassification();
  v3 = sub_1C9A92768();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = _SNClassificationResult.hash.getter();

  return v3;
}

- (_SNClassificationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  _SNClassificationResult.init(coder:)();
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _SNClassificationResult.encode(with:)(coderCopy);
}

- (id)binarySampleRepresentation
{
  selfCopy = self;
  v3 = _SNClassificationResult.binarySampleRepresentation()();
  v5 = v4;

  v6 = sub_1C9A915F8();
  sub_1C97A5978(v3, v5);

  return v6;
}

- (_SNClassificationResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  metadataCopy = metadata;
  v8 = sub_1C9A91618();
  v10 = v9;

  if (metadataCopy)
  {
    sub_1C9A92328();
  }

  return _SNClassificationResult.init(binarySampleRepresentation:metadata:timestamp:)(v8, v10);
}

@end