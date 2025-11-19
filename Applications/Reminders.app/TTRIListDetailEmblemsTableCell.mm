@interface TTRIListDetailEmblemsTableCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC9Reminders30TTRIListDetailEmblemsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)cancelEmojiSelection;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation TTRIListDetailEmblemsTableCell

- (_TtC9Reminders30TTRIListDetailEmblemsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005CF0CC(a3, a4, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  v6 = self;
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
  v2 = self;
  sub_1005CFE70();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_1005D0808(v7, v9);

  return v7 & 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005D08EC();
}

@end