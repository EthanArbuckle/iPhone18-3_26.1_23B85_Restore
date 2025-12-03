@interface PMPopUpMenuCellView
- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PMPopUpMenuCellView

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_10C9C(specifier);
}

- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_12808();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_117CC(style, v7, v9, specifier);
}

- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_12808();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_11908(style, identifier, v6);
}

@end