@interface EmptyLinkView
- (_TtC8PaperKit13EmptyLinkView)init;
- (_TtC8PaperKit13EmptyLinkView)initWithCoder:(id)a3;
@end

@implementation EmptyLinkView

- (_TtC8PaperKit13EmptyLinkView)init
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyLinkView();
  v2 = [(LinkView *)&v8 init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemFillColor];
  [(EmptyLinkView *)v4 setBackgroundColor:v5];

  v6 = [(EmptyLinkView *)v4 layer];
  [v6 setCornerRadius_];

  return v4;
}

- (_TtC8PaperKit13EmptyLinkView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end