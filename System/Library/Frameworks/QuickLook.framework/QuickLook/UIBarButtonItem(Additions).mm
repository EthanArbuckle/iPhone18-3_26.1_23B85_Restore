@interface UIBarButtonItem(Additions)
- (id)ql_copySystemItem;
- (id)ql_toAction;
@end

@implementation UIBarButtonItem(Additions)

- (id)ql_copySystemItem
{
  [a1 customView];
  if (objc_claimAutoreleasedReturnValue())
  {
    [UIBarButtonItem(Additions) ql_copySystemItem];
  }

  v2 = [a1 isSystemItem];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  if (v2)
  {
    v4 = [a1 systemItem];
    v5 = [a1 target];
    v6 = [v3 initWithBarButtonSystemItem:v4 target:v5 action:{objc_msgSend(a1, "action")}];
  }

  else
  {
    v7 = [a1 title];
    v8 = [a1 style];
    v9 = [a1 target];
    v6 = [v3 initWithTitle:v7 style:v8 target:v9 action:{objc_msgSend(a1, "action")}];

    v10 = [a1 image];
    [v6 setImage:v10];

    v11 = [a1 possibleTitles];
    [v6 setPossibleTitles:v11];

    v5 = [a1 primaryAction];
    [v6 setPrimaryAction:v5];
  }

  v12 = [a1 accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:v12];

  return v6;
}

- (id)ql_toAction
{
  v2 = MEMORY[0x277D750C8];
  v3 = [a1 title];
  v4 = [a1 image];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__UIBarButtonItem_Additions__ql_toAction__block_invoke;
  v7[3] = &unk_278B589E0;
  v7[4] = a1;
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v7];

  [v5 setState:{objc_msgSend(a1, "isSelected")}];
  [v5 setAttributes:{objc_msgSend(a1, "isEnabled") ^ 1}];

  return v5;
}

@end