@interface AMSUIPasswordSettingsFreeDownloadsCell
- (AMSUIPasswordSettingsFreeDownloadsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setup;
- (void)_toggleChanged:(id)changed;
@end

@implementation AMSUIPasswordSettingsFreeDownloadsCell

- (AMSUIPasswordSettingsFreeDownloadsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AMSUIPasswordSettingsFreeDownloadsCell;
  v4 = [(AMSUIPasswordSettingsFreeDownloadsCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AMSUIPasswordSettingsFreeDownloadsCell *)v4 _setup];
  }

  return v5;
}

- (void)_setup
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  toggle = self->_toggle;
  self->_toggle = v3;

  [(UISwitch *)self->_toggle addTarget:self action:sel__toggleChanged_ forControlEvents:4096];
  [(AMSUIPasswordSettingsFreeDownloadsCell *)self setAccessoryView:self->_toggle];
  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  [(AMSUIPasswordSettingsFreeDownloadsCell *)self bounds];
  v7 = [v5 initWithFrame:?];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  [(AMSUIPasswordSettingsFreeDownloadsCell *)self setSelectedBackgroundView:v7];
}

- (void)_toggleChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(AMSUIPasswordSettingsFreeDownloadsCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AMSUIPasswordSettingsFreeDownloadsCell *)self delegate];
    [delegate2 freeDownloadsToggle:changedCopy changedValue:{objc_msgSend(changedCopy, "isOn")}];
  }
}

@end