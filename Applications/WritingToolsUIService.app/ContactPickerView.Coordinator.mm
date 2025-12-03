@interface ContactPickerView.Coordinator
- (_TtCV21WritingToolsUIService17ContactPickerView11Coordinator)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
@end

@implementation ContactPickerView.Coordinator

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_100186C30(contactCopy);
}

- (_TtCV21WritingToolsUIService17ContactPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end