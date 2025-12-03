@interface UIBarButtonItem(Additions)
- (id)ql_copySystemItem;
- (id)ql_toAction;
@end

@implementation UIBarButtonItem(Additions)

- (id)ql_copySystemItem
{
  [self customView];
  if (objc_claimAutoreleasedReturnValue())
  {
    [UIBarButtonItem(Additions) ql_copySystemItem];
  }

  isSystemItem = [self isSystemItem];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  if (isSystemItem)
  {
    systemItem = [self systemItem];
    target = [self target];
    v6 = [v3 initWithBarButtonSystemItem:systemItem target:target action:{objc_msgSend(self, "action")}];
  }

  else
  {
    title = [self title];
    style = [self style];
    target2 = [self target];
    v6 = [v3 initWithTitle:title style:style target:target2 action:{objc_msgSend(self, "action")}];

    image = [self image];
    [v6 setImage:image];

    possibleTitles = [self possibleTitles];
    [v6 setPossibleTitles:possibleTitles];

    target = [self primaryAction];
    [v6 setPrimaryAction:target];
  }

  accessibilityIdentifier = [self accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:accessibilityIdentifier];

  return v6;
}

- (id)ql_toAction
{
  v2 = MEMORY[0x277D750C8];
  title = [self title];
  image = [self image];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__UIBarButtonItem_Additions__ql_toAction__block_invoke;
  v7[3] = &unk_278B589E0;
  v7[4] = self;
  v5 = [v2 actionWithTitle:title image:image identifier:0 handler:v7];

  [v5 setState:{objc_msgSend(self, "isSelected")}];
  [v5 setAttributes:{objc_msgSend(self, "isEnabled") ^ 1}];

  return v5;
}

@end