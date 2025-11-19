@interface PMSavePasswordsPromptPreferenceCellView
- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithCoder:(id)a3;
- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation PMSavePasswordsPromptPreferenceCellView

- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_12808();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_1085C(a3, v7, v9, a5);
}

- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(PMPopUpMenuCellView *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC17PasswordsSettings39PMSavePasswordsPromptPreferenceCellView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
  v4 = a3;
  v5 = [(PMPopUpMenuCellView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end