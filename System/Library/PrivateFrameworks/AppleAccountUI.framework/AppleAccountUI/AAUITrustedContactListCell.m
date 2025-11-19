@interface AAUITrustedContactListCell
+ (id)specifierForContact:(id)a3 loadAction:(SEL)a4 target:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AAUITrustedContactListCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AAUITrustedContactListCell;
  [(PSTableCell *)&v20 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"contactGrayed"];
  v6 = [v5 BOOLValue];

  v7 = [(AAUITrustedContactListCell *)self textLabel];
  if (v6)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v8 = ;
  [v7 setTextColor:v8];

  v9 = [(AAUITrustedContactListCell *)self textLabel];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v9 setFont:v10];

  v11 = [(AAUITrustedContactListCell *)self textLabel];
  v12 = [v4 propertyForKey:*MEMORY[0x1E69C59A8]];
  [v11 setText:v12];

  v13 = [(AAUITrustedContactListCell *)self detailTextLabel];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v13 setFont:v14];

  v15 = [(AAUITrustedContactListCell *)self detailTextLabel];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v15 setTextColor:v16];

  v17 = [(AAUITrustedContactListCell *)self detailTextLabel];
  v18 = [v4 propertyForKey:*MEMORY[0x1E69C59A0]];
  [v17 setText:v18];

  v19 = [(AAUITrustedContactListCell *)self imageView];
  [v19 setContentMode:1];

  [(AAUITrustedContactListCell *)self setNeedsLayout];
}

+ (id)specifierForContact:(id)a3 loadAction:(SEL)a4 target:(id)a5
{
  v7 = MEMORY[0x1E69C5748];
  v8 = a5;
  v9 = a3;
  v10 = [v9 displayName];
  v11 = [v7 preferenceSpecifierNamed:v10 target:v8 set:0 get:0 detail:0 cell:2 edit:0];

  v12 = [v9 displayName];
  [v11 setProperty:v12 forKey:*MEMORY[0x1E69C59A8]];

  v13 = [v9 detailsText];
  [v11 setProperty:v13 forKey:*MEMORY[0x1E69C59A0]];

  [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  v14 = [AAUITrustedContactsImageProvider imageForLocalContact:v9];
  [v11 setProperty:v14 forKey:*MEMORY[0x1E69C5920]];

  [v11 setControllerLoadAction:a4];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "shouldGrayOutContactRow")}];
  [v11 setProperty:v15 forKey:@"contactGrayed"];

  v16 = MEMORY[0x1E696AD98];
  v17 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v17);
  v19 = *MEMORY[0x1E69DE3D0];
  if (!IsAccessibilityCategory)
  {
    v19 = 60.0;
  }

  v20 = [v16 numberWithDouble:v19];
  [v11 setProperty:v20 forKey:*MEMORY[0x1E69C5988]];

  [v11 setUserInfo:v9];

  return v11;
}

@end