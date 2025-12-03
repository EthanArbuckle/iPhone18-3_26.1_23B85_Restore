@interface BloodPressureJournalTypeSelectionCell
- (BOOL)isSelected;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setSelected:(BOOL)selected;
@end

@implementation BloodPressureJournalTypeSelectionCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  return [(BloodPressureJournalTypeSelectionCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_29D79B948(selected);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_29D937998();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937988();
  selfCopy = self;
  sub_29D79C80C();

  (*(v5 + 8))(v9, v4);
}

@end