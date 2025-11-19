@interface MoreHistoryCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC17SequoiaTranslator29MoreHistoryCollectionViewCell)initWithCoder:(id)a3;
- (void)gestureUpdated:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)tapped:(id)a3;
@end

@implementation MoreHistoryCollectionViewCell

- (_TtC17SequoiaTranslator29MoreHistoryCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_paddingDefault) = 0x4028000000000000;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_moreHistoryView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for MoreHistoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&self->paddingDefault[OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MoreHistoryCollectionViewCell();
  return [(MoreHistoryCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MoreHistoryCollectionViewCell();
  v4 = v8.receiver;
  [(MoreHistoryCollectionViewCell *)&v8 setHighlighted:v3];
  v5 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_moreHistoryView];
  v6 = [v4 isHighlighted];
  v7 = 1.0;
  if (v6)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

- (void)tapped:(id)a3
{
  v3 = self;
  [(MoreHistoryCollectionViewCell *)v3 setHighlighted:1];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v8[4] = sub_10018A37C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100096948;
  v8[3] = &unk_100387348;
  v6 = _Block_copy(v8);
  v7 = v3;

  [v4 animateWithDuration:0x20000 delay:v6 options:0 animations:0.3 completion:0.0];
  _Block_release(v6);
}

- (void)gestureUpdated:(id)a3
{
  v5 = a3;
  v4 = self;
  -[MoreHistoryCollectionViewCell setHighlighted:](v4, "setHighlighted:", [v5 state] != 3);
}

@end