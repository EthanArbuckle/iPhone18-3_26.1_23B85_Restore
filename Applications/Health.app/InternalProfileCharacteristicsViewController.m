@interface InternalProfileCharacteristicsViewController
- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithCoder:(id)a3;
- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithHealthStore:(id)a3;
@end

@implementation InternalProfileCharacteristicsViewController

- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithHealthStore:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InternalProfileCharacteristicsViewController();
  return [(InternalProfileCharacteristicsViewController *)&v5 initWithHealthStore:a3];
}

- (_TtC6HealthP33_20B3255B537141CA25842A215889B6DB44InternalProfileCharacteristicsViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InternalProfileCharacteristicsViewController();
  v4 = a3;
  v5 = [(InternalProfileCharacteristicsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end