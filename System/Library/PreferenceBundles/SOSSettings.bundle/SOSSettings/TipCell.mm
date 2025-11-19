@interface TipCell
- (_TtC11SOSSettings7TipCell)initWithCoder:(id)a3;
- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TipCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_146D4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_BF10(a3, v7, v9, a5);
}

- (_TtC11SOSSettings7TipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(TipCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC11SOSSettings7TipCell)initWithCoder:(id)a3
{
  *&self->PSTableCell_opaque[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TipCell();
  v4 = a3;
  v5 = [(TipCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end