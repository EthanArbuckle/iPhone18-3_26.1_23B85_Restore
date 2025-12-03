@interface InternalProfileCharacteristicsViewController
- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithCoder:(id)coder;
- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithHealthStore:(id)store;
@end

@implementation InternalProfileCharacteristicsViewController

- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithHealthStore:(id)store
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InternalProfileCharacteristicsViewController();
  return [(InternalProfileCharacteristicsViewController *)&v5 initWithHealthStore:store];
}

- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InternalProfileCharacteristicsViewController();
  coderCopy = coder;
  v5 = [(InternalProfileCharacteristicsViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end