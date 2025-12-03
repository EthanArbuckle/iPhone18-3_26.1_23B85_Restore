@interface UITableViewCell(MessageUI)
- (void)_mf_setBackgroundConfigurationColor:()MessageUI;
- (void)mf_updateBackgroundColorForPopover:()MessageUI;
- (void)mf_updateContentConfigurationWithBlock:()MessageUI;
@end

@implementation UITableViewCell(MessageUI)

- (void)mf_updateContentConfigurationWithBlock:()MessageUI
{
  v9 = a3;
  contentConfiguration = [self contentConfiguration];
  v5 = [contentConfiguration copy];
  v6 = v5;
  if (v5)
  {
    defaultContentConfiguration = v5;
  }

  else
  {
    defaultContentConfiguration = [self defaultContentConfiguration];
  }

  v8 = defaultContentConfiguration;

  v9[2](v9, v8);
  [self setContentConfiguration:v8];
}

- (void)_mf_setBackgroundConfigurationColor:()MessageUI
{
  v11 = a3;
  backgroundConfiguration = [self backgroundConfiguration];
  v5 = [backgroundConfiguration copy];
  v6 = v5;
  if (v5)
  {
    listGroupedCellConfiguration = v5;
  }

  else
  {
    listGroupedCellConfiguration = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
  }

  v8 = listGroupedCellConfiguration;

  backgroundColor = [v8 backgroundColor];
  v10 = [backgroundColor isEqual:v11];

  if ((v10 & 1) == 0)
  {
    [v8 setBackgroundColor:v11];
    [self setBackgroundConfiguration:v8];
  }
}

- (void)mf_updateBackgroundColorForPopover:()MessageUI
{
  if (a3)
  {
    mailPopoverBackgroundCellColor = [MEMORY[0x1E69DC888] mailPopoverBackgroundCellColor];
  }

  else
  {
    listGroupedCellConfiguration = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
    backgroundColor = [listGroupedCellConfiguration backgroundColor];

    mailPopoverBackgroundCellColor = backgroundColor;
  }

  v7 = mailPopoverBackgroundCellColor;
  [self _mf_setBackgroundConfigurationColor:mailPopoverBackgroundCellColor];
}

@end