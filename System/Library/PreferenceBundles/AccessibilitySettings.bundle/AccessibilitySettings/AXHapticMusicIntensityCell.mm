@interface AXHapticMusicIntensityCell
- (AXHapticMusicIntensityCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)makeContentConfigurationCell:(id)cell setter:(id)setter;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation AXHapticMusicIntensityCell

- (AXHapticMusicIntensityCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = AXHapticMusicIntensityCell;
  v9 = [(AXHapticMusicIntensityCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(AXHapticMusicIntensityCell *)v9 setUserInteractionEnabled:1];
    v11 = [specifierCopy propertyForKey:@"Getter"];
    v12 = [specifierCopy propertyForKey:@"Setter"];
    [(AXHapticMusicIntensityCell *)v10 makeContentConfigurationCell:v11 setter:v12];
  }

  return v10;
}

- (void)makeContentConfigurationCell:(id)cell setter:(id)setter
{
  v6 = _Block_copy(cell);
  v7 = _Block_copy(setter);
  *(swift_allocObject() + 16) = v6;
  *(swift_allocObject() + 16) = v7;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9830);
  v9[4] = sub_162D0C(&qword_2B9838, &qword_2B9830);
  __swift_allocate_boxed_opaque_existential_1(v9);
  type metadata accessor for IntensitySelection();
  sub_18F2F0(&qword_2B9840, type metadata accessor for IntensitySelection);
  selfCopy = self;
  sub_19B804();
  sub_19C3F4();
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_1845C4();
  sub_18F2F0(&qword_2B9850, sub_1845C4);
  sub_19C174();
  eventCopy = event;
  selfCopy = self;
  isa = sub_19C164().super.isa;

  v9.receiver = selfCopy;
  v9.super_class = AXHapticMusicIntensityCell;
  [(AXHapticMusicIntensityCell *)&v9 touchesEnded:isa withEvent:eventCopy];
}

@end