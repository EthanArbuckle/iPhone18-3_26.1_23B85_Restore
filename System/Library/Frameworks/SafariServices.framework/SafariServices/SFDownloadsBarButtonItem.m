@interface SFDownloadsBarButtonItem
- (SFDownloadsBarButtonItem)initWithTarget:(id)a3 action:(SEL)a4;
- (void)setEnabled:(BOOL)a3;
@end

@implementation SFDownloadsBarButtonItem

- (SFDownloadsBarButtonItem)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = SFDownloadsBarButtonItem;
  v7 = [(SFDownloadsBarButtonItem *)&v19 init];
  if (v7)
  {
    v8 = MEMORY[0x1E69DB978];
    v9 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v10 = MEMORY[0x1E69DB970];
    if (!v9)
    {
      v10 = v8;
    }

    v11 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*v10];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithFont:v11 scale:3];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle" withConfiguration:v12];
    [(SFDownloadsBarButtonItem *)v7 setImage:v13];

    [(SFDownloadsBarButtonItem *)v7 setTarget:v6];
    [(SFDownloadsBarButtonItem *)v7 setAction:a4];
    v14 = SFAccessibilityTitleForBarItem();
    [(SFDownloadsBarButtonItem *)v7 setTitle:v14];

    v15 = [SFDownloadsBarButtonItemView buttonWithBarButtonItem:v7];
    buttonView = v7->_buttonView;
    v7->_buttonView = v15;

    [(SFDownloadsBarButtonItem *)v7 setCustomView:v7->_buttonView];
    [(SFDownloadsBarButtonItem *)v7 setProgress:-2.0];
    v17 = v7;
  }

  return v7;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SFDownloadsBarButtonItem;
  [(SFDownloadsBarButtonItem *)&v5 setEnabled:?];
  [(SFDownloadsBarButtonItemView *)self->_buttonView setEnabled:v3];
}

@end