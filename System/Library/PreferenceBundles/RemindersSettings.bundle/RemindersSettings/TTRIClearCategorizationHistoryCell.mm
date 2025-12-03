@interface TTRIClearCategorizationHistoryCell
- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithCoder:(id)coder;
- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TTRIClearCategorizationHistoryCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  specifierCopy = specifier;
  v5 = v6.receiver;
  [(TTRIClearCategorizationHistoryCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  [v5 setAlignment:{2, v6.receiver, v6.super_class}];
}

- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_23C90();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_23168(style, v7, v9, specifier);
}

- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_23C90();
    identifier = sub_23C80();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(TTRIClearCategorizationHistoryCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC17RemindersSettings34TTRIClearCategorizationHistoryCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIClearCategorizationHistoryCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end