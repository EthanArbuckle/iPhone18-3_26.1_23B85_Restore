@interface NBFamilyMemberTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation NBFamilyMemberTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = NBFamilyMemberTableViewCell;
  specifierCopy = specifier;
  [(NBFamilyMemberTableViewCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  objc_opt_class();
  v5 = [specifierCopy propertyForKey:@"NBUISpecifierAudiobookCountKey"];

  v6 = BUDynamicCast();

  v7 = NBBundle();
  v8 = [v7 localizedStringForKey:@"No Audiobooks" value:&stru_20DE8 table:0];

  if ([v6 unsignedIntegerValue] == &dword_0 + 1)
  {
    v9 = NBBundle();
    v10 = [v9 localizedStringForKey:@"1 Audiobook" value:&stru_20DE8 table:0];
LABEL_5:

    v8 = v10;
    goto LABEL_6;
  }

  if ([v6 unsignedIntegerValue] >= 2)
  {
    v9 = NBBundle();
    v11 = [v9 localizedStringForKey:@"%ld Audiobooks" value:&stru_20DE8 table:0];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v11, [v6 unsignedIntegerValue]);

    v8 = v11;
    goto LABEL_5;
  }

LABEL_6:
  detailTextLabel = [(NBFamilyMemberTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:v8];
}

@end