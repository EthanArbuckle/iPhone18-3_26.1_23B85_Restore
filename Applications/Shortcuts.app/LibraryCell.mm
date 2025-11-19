@interface LibraryCell
- (BOOL)isSelected;
- (WFExecutableAppShortcut)autoShortcut;
- (WFWorkflowReference)workflowReference;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAutoShortcut:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setWorkflowReference:(id)a3;
@end

@implementation LibraryCell

- (BOOL)isSelected
{
  v2 = self;
  v3 = sub_10001D6CC();

  return v3 & 1;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10001D81C();
}

- (WFWorkflowReference)workflowReference
{
  v2 = sub_1000ADD38();

  return v2;
}

- (void)setWorkflowReference:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000ADDC4(a3);
}

- (WFExecutableAppShortcut)autoShortcut
{
  v2 = sub_1000ADE04();

  return v2;
}

- (void)setAutoShortcut:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000ADE90(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1000AE498();
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_1000AEBB4(a3);
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000AEE34();

  return v9;
}

@end