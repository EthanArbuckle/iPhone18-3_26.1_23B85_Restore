@interface AMLFeaturesSpecification
- (AMLFeaturesSpecification)initWithFeaturesDescription:(id)description;
- (NSArray)featuresDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setFeaturesDescription:(id)description;
@end

@implementation AMLFeaturesSpecification

- (NSArray)featuresDescription
{
  sub_21AEEDC28();
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v2 = sub_21AF0987C();

  return v2;
}

- (void)setFeaturesDescription:(id)description
{
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v4 = sub_21AF0988C();
  selfCopy = self;
  sub_21AEEDCB4(v4);
}

- (AMLFeaturesSpecification)initWithFeaturesDescription:(id)description
{
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v3 = sub_21AF0988C();
  return AMLFeaturesSpecification.init(featuresDescription:)(v3);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21AEEE224(coderCopy);
}

@end