@interface AMSUIPasswordSettingsFreeDownloadsCell
- (AMSUIPasswordSettingsFreeDownloadsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setup;
- (void)_toggleChanged:(id)a3;
@end

@implementation AMSUIPasswordSettingsFreeDownloadsCell

- (AMSUIPasswordSettingsFreeDownloadsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AMSUIPasswordSettingsFreeDownloadsCell;
  v4 = [(AMSUIPasswordSettingsFreeDownloadsCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v6];

  [(AMSUIPasswordSettingsFreeDownloadsCell *)self setSelectedBackgroundView:v7];
}

- (void)_toggleChanged:(id)a3
{
  v7 = a3;
  v4 = [(AMSUIPasswordSettingsFreeDownloadsCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AMSUIPasswordSettingsFreeDownloadsCell *)self delegate];
    [v6 freeDownloadsToggle:v7 changedValue:{objc_msgSend(v7, "isOn")}];
  }
}

@end