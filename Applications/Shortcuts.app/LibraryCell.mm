@interface LibraryCell
- (BOOL)isSelected;
- (WFExecutableAppShortcut)autoShortcut;
- (WFWorkflowReference)workflowReference;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAutoShortcut:(id)shortcut;
- (void)setSelected:(BOOL)selected;
- (void)setWorkflowReference:(id)reference;
@end

@implementation LibraryCell

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = sub_10001D6CC();

  return v3 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10001D81C();
}

- (WFWorkflowReference)workflowReference
{
  v2 = sub_1000ADD38();

  return v2;
}

- (void)setWorkflowReference:(id)reference
{
  referenceCopy = reference;
  selfCopy = self;
  sub_1000ADDC4(reference);
}

- (WFExecutableAppShortcut)autoShortcut
{
  v2 = sub_1000ADE04();

  return v2;
}

- (void)setAutoShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  selfCopy = self;
  sub_1000ADE90(shortcut);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1000AE498();
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_1000AEBB4(selected);
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1000AEE34();

  return v9;
}

@end