@interface AddShortcutsRowCellModel
- (BOOL)isEqual:(id)equal;
- (id)image;
- (id)title;
- (unint64_t)hash;
@end

@implementation AddShortcutsRowCellModel

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  title = [(AddShortcutsRowCellModel *)self title];
  v3 = [title hash];

  return v3;
}

- (id)image
{
  v2 = [UIImage systemImageNamed:@"plus"];
  v3 = [UIFont systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  v4 = [UIImageSymbolConfiguration configurationWithFont:v3];
  v5 = [v2 imageWithSymbolConfiguration:v4];

  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (id)title
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"[Proactive Tray] Add Pin";
  }

  else
  {
    v5 = @"[Proactive Tray] Add Shortcut";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

@end