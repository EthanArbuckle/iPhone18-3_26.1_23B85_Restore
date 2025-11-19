@interface BloodPressureJournalTypeSelectionCell
- (BOOL)isSelected;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation BloodPressureJournalTypeSelectionCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  return [(BloodPressureJournalTypeSelectionCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_29D79B948(a3);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_29D937998();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937988();
  v10 = self;
  sub_29D79C80C();

  (*(v5 + 8))(v9, v4);
}

@end