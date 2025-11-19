@interface PMServiceNamesCellView
- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation PMServiceNamesCellView

- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
  return sub_FFC8(a3, v7, v9, a5);
}

- (_TtC17PasswordsSettings22PMServiceNamesCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_12808();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems;
  v9 = [objc_opt_self() sharedStore];
  v10 = [v9 shouldShowServiceNamesForPasswordAndPasskeyItems];

  self->super.PSTableCell_opaque[v8] = v10;
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
  v12 = [(PMPopUpMenuCellView *)&v14 initWithStyle:a3 reuseIdentifier:v11];

  return v12;
}

@end