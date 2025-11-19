@interface TTRIClearCategorizationHistoryCell
- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithCoder:(id)a3;
- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TTRIClearCategorizationHistoryCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(TTRIClearCategorizationHistoryCell *)&v6 refreshCellContentsWithSpecifier:v4];
  [v5 setAlignment:{2, v6.receiver, v6.super_class}];
}

- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_23C90();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_23168(a3, v7, v9, a5);
}

- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_23C90();
    a4 = sub_23C80();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(TTRIClearCategorizationHistoryCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRIClearCategorizationHistoryCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end