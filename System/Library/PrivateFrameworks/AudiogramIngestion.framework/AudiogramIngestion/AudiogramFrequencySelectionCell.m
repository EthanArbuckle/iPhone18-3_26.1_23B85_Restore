@interface AudiogramFrequencySelectionCell
- (_TtC18AudiogramIngestion31AudiogramFrequencySelectionCell)initWithCoder:(id)a3;
- (_TtC18AudiogramIngestion31AudiogramFrequencySelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation AudiogramFrequencySelectionCell

- (_TtC18AudiogramIngestion31AudiogramFrequencySelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_2417E419C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequency) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequencySelected) = 0;
    v6 = sub_2417E416C();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequency) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequencySelected) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for AudiogramFrequencySelectionCell();
  v7 = [(AudiogramFrequencySelectionCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC18AudiogramIngestion31AudiogramFrequencySelectionCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequency) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18AudiogramIngestion31AudiogramFrequencySelectionCell_frequencySelected) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiogramFrequencySelectionCell();
  v4 = a3;
  v5 = [(AudiogramFrequencySelectionCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end