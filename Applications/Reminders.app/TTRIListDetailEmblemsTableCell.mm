@interface TTRIListDetailEmblemsTableCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC9Reminders30TTRIListDetailEmblemsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)cancelEmojiSelection;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation TTRIListDetailEmblemsTableCell

- (_TtC9Reminders30TTRIListDetailEmblemsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005CF0CC(style, identifier, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  selfCopy = self;
  dispatch thunk of TTRListAppearanceGridView.height(forWidth:)();
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)cancelEmojiSelection
{
  selfCopy = self;
  sub_1005CFE70();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(v7) = sub_1005D0808(v7, v9);

  return v7 & 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1005D08EC();
}

@end