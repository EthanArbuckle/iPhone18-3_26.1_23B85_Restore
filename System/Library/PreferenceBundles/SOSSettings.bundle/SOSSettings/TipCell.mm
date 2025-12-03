@interface TipCell
- (_TtC11SOSSettings7TipCell)initWithCoder:(id)coder;
- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TipCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_C390();
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TipCell();
  v2 = v6.receiver;
  [(TipCell *)&v6 prepareForReuse];
  v3 = OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView;
  v4 = *&v2[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;
}

- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_146D4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_BF10(style, v7, v9, specifier);
}

- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_146D4();
    *&self->PSTableCell_opaque[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView] = 0;
    v6 = sub_146C4();
  }

  else
  {
    v6 = 0;
    *&self->PSTableCell_opaque[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView] = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for TipCell();
  v7 = [(TipCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC11SOSSettings7TipCell)initWithCoder:(id)coder
{
  *&self->PSTableCell_opaque[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TipCell();
  coderCopy = coder;
  v5 = [(TipCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end