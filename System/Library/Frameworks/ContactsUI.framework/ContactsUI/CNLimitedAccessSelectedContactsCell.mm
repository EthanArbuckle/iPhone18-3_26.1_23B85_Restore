@interface CNLimitedAccessSelectedContactsCell
- (CNLimitedAccessSelectedContactsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation CNLimitedAccessSelectedContactsCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CNLimitedAccessSelectedContactsCell;
  [(CNLimitedAccessSelectedContactsCell *)&v4 setSelected:selected animated:animated];
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = CNLimitedAccessSelectedContactsCell;
  [(CNLimitedAccessSelectedContactsCell *)&v2 awakeFromNib];
}

- (CNLimitedAccessSelectedContactsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = CNLimitedAccessSelectedContactsCell;
  v4 = [(CNLimitedAccessSelectedContactsCell *)&v14 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CNLimitedAccessSelectedContactsCell *)v4 setBackgroundColor:systemBackgroundColor];

    v6 = objc_alloc_init(MEMORY[0x1E695CD80]);
    [(CNLimitedAccessSelectedContactsCell *)v4 setFormatter:v6];

    formatter = [(CNLimitedAccessSelectedContactsCell *)v4 formatter];
    [formatter setEmphasizesPrimaryNameComponent:1];

    formatter2 = [(CNLimitedAccessSelectedContactsCell *)v4 formatter];
    [formatter2 setIgnoresNickname:1];

    formatter3 = [(CNLimitedAccessSelectedContactsCell *)v4 formatter];
    [formatter3 setIgnoresOrganization:1];

    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    textLabel = [(CNLimitedAccessSelectedContactsCell *)v4 textLabel];
    [textLabel setFont:v10];

    v12 = v4;
  }

  return v4;
}

@end