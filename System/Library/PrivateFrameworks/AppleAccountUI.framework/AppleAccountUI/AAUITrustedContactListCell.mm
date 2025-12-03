@interface AAUITrustedContactListCell
+ (id)specifierForContact:(id)contact loadAction:(SEL)action target:(id)target;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUITrustedContactListCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = AAUITrustedContactListCell;
  [(PSTableCell *)&v20 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"contactGrayed"];
  bOOLValue = [v5 BOOLValue];

  textLabel = [(AAUITrustedContactListCell *)self textLabel];
  if (bOOLValue)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v8 = ;
  [textLabel setTextColor:v8];

  textLabel2 = [(AAUITrustedContactListCell *)self textLabel];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [textLabel2 setFont:v10];

  textLabel3 = [(AAUITrustedContactListCell *)self textLabel];
  v12 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A8]];
  [textLabel3 setText:v12];

  detailTextLabel = [(AAUITrustedContactListCell *)self detailTextLabel];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [detailTextLabel setFont:v14];

  detailTextLabel2 = [(AAUITrustedContactListCell *)self detailTextLabel];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  detailTextLabel3 = [(AAUITrustedContactListCell *)self detailTextLabel];
  v18 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A0]];
  [detailTextLabel3 setText:v18];

  imageView = [(AAUITrustedContactListCell *)self imageView];
  [imageView setContentMode:1];

  [(AAUITrustedContactListCell *)self setNeedsLayout];
}

+ (id)specifierForContact:(id)contact loadAction:(SEL)action target:(id)target
{
  v7 = MEMORY[0x1E69C5748];
  targetCopy = target;
  contactCopy = contact;
  displayName = [contactCopy displayName];
  v11 = [v7 preferenceSpecifierNamed:displayName target:targetCopy set:0 get:0 detail:0 cell:2 edit:0];

  displayName2 = [contactCopy displayName];
  [v11 setProperty:displayName2 forKey:*MEMORY[0x1E69C59A8]];

  detailsText = [contactCopy detailsText];
  [v11 setProperty:detailsText forKey:*MEMORY[0x1E69C59A0]];

  [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  v14 = [AAUITrustedContactsImageProvider imageForLocalContact:contactCopy];
  [v11 setProperty:v14 forKey:*MEMORY[0x1E69C5920]];

  [v11 setControllerLoadAction:action];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contactCopy, "shouldGrayOutContactRow")}];
  [v11 setProperty:v15 forKey:@"contactGrayed"];

  v16 = MEMORY[0x1E696AD98];
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v19 = *MEMORY[0x1E69DE3D0];
  if (!IsAccessibilityCategory)
  {
    v19 = 60.0;
  }

  v20 = [v16 numberWithDouble:v19];
  [v11 setProperty:v20 forKey:*MEMORY[0x1E69C5988]];

  [v11 setUserInfo:contactCopy];

  return v11;
}

@end