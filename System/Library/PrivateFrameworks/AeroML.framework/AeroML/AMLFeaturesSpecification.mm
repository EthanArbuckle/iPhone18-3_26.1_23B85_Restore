@interface AMLFeaturesSpecification
- (AMLFeaturesSpecification)initWithFeaturesDescription:(id)a3;
- (NSArray)featuresDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setFeaturesDescription:(id)a3;
@end

@implementation AMLFeaturesSpecification

- (NSArray)featuresDescription
{
  sub_21AEEDC28();
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v2 = sub_21AF0987C();

  return v2;
}

- (void)setFeaturesDescription:(id)a3
{
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v4 = sub_21AF0988C();
  v5 = self;
  sub_21AEEDCB4(v4);
}

- (AMLFeaturesSpecification)initWithFeaturesDescription:(id)a3
{
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v3 = sub_21AF0988C();
  return AMLFeaturesSpecification.init(featuresDescription:)(v3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AEEE224(v4);
}

@end