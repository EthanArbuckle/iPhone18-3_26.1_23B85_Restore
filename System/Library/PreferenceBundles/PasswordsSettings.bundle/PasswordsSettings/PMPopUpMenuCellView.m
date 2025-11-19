@interface PMPopUpMenuCellView
- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PMPopUpMenuCellView

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10C9C(a3);
}

- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
  return sub_117CC(a3, v7, v9, a5);
}

- (_TtC17PasswordsSettings19PMPopUpMenuCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_12808();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_11908(a3, a4, v6);
}

@end