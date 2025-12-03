@interface CNAvatarCardContactCell
- (void)_updateFonts;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)reloadData;
@end

@implementation CNAvatarCardContactCell

- (void)reloadData
{
  action = [(CNAvatarCardActionCell *)self action];
  objc_opt_class();
  v4 = action;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    mainAction = [v6 mainAction];

    v4 = mainAction;
  }

  objc_opt_class();
  v26 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v26;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    propertyAction = [v9 propertyAction];
    propertyItem = [propertyAction propertyItem];
    contact = [propertyItem contact];

    mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
    v14 = [mEMORY[0x1E695CD80] stringFromContact:contact];
    titleLabel = [(CNAvatarCardActionCell *)self titleLabel];
    [titleLabel setText:v14];

    contactImageView = [(CNAvatarCardContactCell *)self contactImageView];
    [contactImageView layoutIfNeeded];

    v17 = [CNMonogrammer alloc];
    contactImageView2 = [(CNAvatarCardContactCell *)self contactImageView];
    [contactImageView2 bounds];
    v19 = [(CNMonogrammer *)v17 initWithStyle:0 diameter:CGRectGetWidth(v28)];

    contactImageView3 = [(CNAvatarCardContactCell *)self contactImageView];
    v21 = [(CNMonogrammer *)v19 monogramForContact:contact];
    [contactImageView3 setImage:v21];

    v22 = +[CNUIColorRepository navigationListActionIconFillColorRegular];
    actionImageView = [(CNAvatarCardActionCell *)self actionImageView];
    [actionImageView setTintColor:v22];

    image = [v9 image];
    actionImageView2 = [(CNAvatarCardActionCell *)self actionImageView];
    [actionImageView2 setImage:image];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CNAvatarCardContactCell;
  [(CNAvatarCardActionCell *)&v3 prepareForReuse];
  [(CNAvatarCardContactCell *)self _updateFonts];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = CNAvatarCardContactCell;
  [(CNAvatarCardActionCell *)&v3 awakeFromNib];
  [(CNAvatarCardContactCell *)self _updateFonts];
}

- (void)_updateFonts
{
  v3 = MEMORY[0x1E69DB878];
  v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:2];
  v4 = [v3 fontWithDescriptor:v6 size:0.0];
  titleLabel = [(CNAvatarCardActionCell *)self titleLabel];
  [titleLabel setFont:v4];
}

@end