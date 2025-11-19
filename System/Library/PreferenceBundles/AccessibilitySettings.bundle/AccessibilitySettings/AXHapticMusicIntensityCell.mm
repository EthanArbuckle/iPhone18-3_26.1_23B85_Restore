@interface AXHapticMusicIntensityCell
- (AXHapticMusicIntensityCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)makeContentConfigurationCell:(id)a3 setter:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation AXHapticMusicIntensityCell

- (AXHapticMusicIntensityCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = AXHapticMusicIntensityCell;
  v9 = [(AXHapticMusicIntensityCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    [(AXHapticMusicIntensityCell *)v9 setUserInteractionEnabled:1];
    v11 = [v8 propertyForKey:@"Getter"];
    v12 = [v8 propertyForKey:@"Setter"];
    [(AXHapticMusicIntensityCell *)v10 makeContentConfigurationCell:v11 setter:v12];
  }

  return v10;
}

- (void)makeContentConfigurationCell:(id)a3 setter:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  *(swift_allocObject() + 16) = v7;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9830);
  v9[4] = sub_162D0C(&qword_2B9838, &qword_2B9830);
  __swift_allocate_boxed_opaque_existential_1(v9);
  type metadata accessor for IntensitySelection();
  sub_18F2F0(&qword_2B9840, type metadata accessor for IntensitySelection);
  v8 = self;
  sub_19B804();
  sub_19C3F4();
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_1845C4();
  sub_18F2F0(&qword_2B9850, sub_1845C4);
  sub_19C174();
  v6 = a4;
  v7 = self;
  isa = sub_19C164().super.isa;

  v9.receiver = v7;
  v9.super_class = AXHapticMusicIntensityCell;
  [(AXHapticMusicIntensityCell *)&v9 touchesEnded:isa withEvent:v6];
}

@end