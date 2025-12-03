@interface PMServiceNamesCellView
- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation PMServiceNamesCellView

- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return sub_FFC8(style, v7, v9, specifier);
}

- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_12808();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems;
  sharedStore = [objc_opt_self() sharedStore];
  shouldShowServiceNamesForPasswordAndPasskeyItems = [sharedStore shouldShowServiceNamesForPasswordAndPasskeyItems];

  self->super.PSTableCell_opaque[v8] = shouldShowServiceNamesForPasswordAndPasskeyItems;
  if (v7)
  {
    v11 = sub_127F8();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for PMServiceNamesCellView();
  v12 = [(PMPopUpMenuCellView *)&v14 initWithStyle:style reuseIdentifier:v11];

  return v12;
}

@end