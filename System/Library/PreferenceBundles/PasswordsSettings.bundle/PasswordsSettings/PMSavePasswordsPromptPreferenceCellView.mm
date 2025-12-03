@interface PMSavePasswordsPromptPreferenceCellView
- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithCoder:(id)coder;
- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation PMSavePasswordsPromptPreferenceCellView

- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return sub_1085C(style, v7, v9, specifier);
}

- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_12808();
    v6 = sub_127F8();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
  v7 = [(PMPopUpMenuCellView *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
  coderCopy = coder;
  v5 = [(PMPopUpMenuCellView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end