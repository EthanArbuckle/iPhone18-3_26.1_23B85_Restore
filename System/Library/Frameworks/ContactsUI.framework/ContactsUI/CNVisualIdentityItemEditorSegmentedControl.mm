@interface CNVisualIdentityItemEditorSegmentedControl
+ (id)segmentedControlForItemType:(unint64_t)type;
- (CNVisualIdentityItemEditorSegmentedControl)initWithItems:(id)items;
- (void)setStyleOnlyMode;
- (void)setTextAndStyleMode;
@end

@implementation CNVisualIdentityItemEditorSegmentedControl

- (void)setStyleOnlyMode
{
  [(CNVisualIdentityItemEditorSegmentedControl *)self setStyleSegmentEnabled:1];
  [(CNVisualIdentityItemEditorSegmentedControl *)self setTextSegmentEnabled:0];

  [(CNVisualIdentityItemEditorSegmentedControl *)self selectStyleSegment];
}

- (void)setTextAndStyleMode
{
  [(CNVisualIdentityItemEditorSegmentedControl *)self setStyleSegmentEnabled:1];
  [(CNVisualIdentityItemEditorSegmentedControl *)self setTextSegmentEnabled:1];

  [(CNVisualIdentityItemEditorSegmentedControl *)self selectTextSegment];
}

- (CNVisualIdentityItemEditorSegmentedControl)initWithItems:(id)items
{
  v7.receiver = self;
  v7.super_class = CNVisualIdentityItemEditorSegmentedControl;
  v3 = [(CNVisualIdentityItemEditorSegmentedControl *)&v7 initWithItems:items];
  v4 = v3;
  if (v3)
  {
    [(CNVisualIdentityItemEditorSegmentedControl *)v3 setSelectedSegmentIndex:0];
    [(CNVisualIdentityItemEditorSegmentedControl *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = v4;
  }

  return v4;
}

+ (id)segmentedControlForItemType:(unint64_t)type
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = CNContactsUIBundle();
  v5 = v4;
  if (type == 4)
  {
    v6 = @"PHOTO_TEXT_STYLE_EDITOR_EMOJI_LABEL";
  }

  else
  {
    v6 = @"PHOTO_TEXT_STYLE_EDITOR_TEXT_LABEL";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F0CE7398 table:@"Localized"];

  v8 = [CNVisualIdentityItemEditorSegmentedControl alloc];
  v14[0] = v7;
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"PHOTO_TEXT_STYLE_EDITOR_STYLE_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [(CNVisualIdentityItemEditorSegmentedControl *)v8 initWithItems:v11];

  return v12;
}

@end