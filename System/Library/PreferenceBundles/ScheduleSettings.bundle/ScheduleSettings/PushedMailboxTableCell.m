@interface PushedMailboxTableCell
+ (int)_cacheIndexForType:(int64_t)a3;
- (PushedMailboxTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupMailFolderIconForImage:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setType:(int64_t)a3;
@end

@implementation PushedMailboxTableCell

+ (int)_cacheIndexForType:(int64_t)a3
{
  v3 = -3;
  for (i = &_mailFolderImages; *i != a3; i += 3)
  {
    v3 += 3;
    if (v3 >= 0x12)
    {
      +[PushedMailboxTableCell _cacheIndexForType:];
    }
  }

  return v3 + 5;
}

- (PushedMailboxTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PushedMailboxTableCell;
  v4 = [(PushedMailboxTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    v4->_mailboxName = v5;
    -[UILabel setFont:](v5, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:18.0]);
    [-[PushedMailboxTableCell contentView](v4 "contentView")];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PushedMailboxTableCell;
  [(PushedMailboxTableCell *)&v3 dealloc];
}

- (void)_setupMailFolderIconForImage:(id)a3
{
  mailboxIcon = self->_mailboxIcon;
  if (!mailboxIcon)
  {
    self->_mailboxIcon = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
    [-[PushedMailboxTableCell contentView](self "contentView")];
    mailboxIcon = self->_mailboxIcon;
  }

  [(UIImageView *)mailboxIcon setImage:a3];
  v6 = self->_mailboxIcon;

  [(UIImageView *)v6 sizeToFit];
}

- (void)setType:(int64_t)a3
{
  v4 = [PushedMailboxTableCell _iconForType:a3 nested:self->_level != 0];

  [(PushedMailboxTableCell *)self _setupMailFolderIconForImage:v4];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PushedMailboxTableCell;
  [(PushedMailboxTableCell *)&v7 setEnabled:?];
  mailboxName = self->_mailboxName;
  if (v3)
  {
    v6 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  [(UILabel *)mailboxName setTextColor:v6];
}

- (void)setChecked:(BOOL)a3
{
  v3 = self;
  if (!a3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if ([(PushedMailboxTableCell *)self isUserInteractionEnabled])
  {
    self = v3;
    v4 = 3;
LABEL_5:

    [(PushedMailboxTableCell *)self setAccessoryType:v4];
    return;
  }

  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
  [(PushedMailboxTableCell *)v3 setAccessoryView:v6];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PushedMailboxTableCell;
  [(PushedMailboxTableCell *)&v3 prepareForReuse];
  [(PushedMailboxTableCell *)self setAccessoryView:0];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = PushedMailboxTableCell;
  [(PushedMailboxTableCell *)&v21 layoutSubviews];
  [(PushedMailboxTableCell *)self frame];
  [-[PushedMailboxTableCell contentView](self "contentView")];
  v4 = v3;
  [(UILabel *)self->_mailboxName sizeToFit];
  [(UILabel *)self->_mailboxName frame];
  v6 = v5;
  v8 = v7;
  level = self->_level;
  if (level)
  {
    if (level == 1)
    {
      v10 = 86.0;
    }

    else
    {
      v10 = ((level - 1) * 30.0) + 90.0 + -4.0;
    }
  }

  else
  {
    v10 = 55.0;
  }

  UIRoundToViewScale();
  v12 = v11;
  [-[PushedMailboxTableCell contentView](self "contentView")];
  v14 = v4 - v10 - v13 + -5.0;
  if (v6 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v6;
  }

  [(UILabel *)self->_mailboxName setFrame:v10, v12, v15, v8];
  [(UIImageView *)self->_mailboxIcon frame];
  width = v22.size.width;
  height = v22.size.height;
  self->_level;
  CGRectGetWidth(v22);
  UIRoundToViewScale();
  v19 = v18;
  UIRoundToViewScale();
  [(UIImageView *)self->_mailboxIcon setFrame:v19, v20, width, height];
  [(PushedMailboxTableCell *)self _setMarginWidth:v10];
}

@end