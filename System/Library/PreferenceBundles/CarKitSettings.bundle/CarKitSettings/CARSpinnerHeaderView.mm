@interface CARSpinnerHeaderView
- (BOOL)isSpinning;
- (NSString)title;
- (_TtC14CarKitSettings20CARSpinnerHeaderView)initWithCoder:(id)coder;
- (_TtC14CarKitSettings20CARSpinnerHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setIsSpinning:(BOOL)spinning;
- (void)setTitle:(id)title;
@end

@implementation CARSpinnerHeaderView

- (NSString)title
{
  v2 = (self + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_4B5EC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = sub_4B5FC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  CARSpinnerHeaderView.title.setter(v4, v6);
}

- (BOOL)isSpinning
{
  v3 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSpinning:(BOOL)spinning
{
  spinningCopy = spinning;
  v5 = OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = spinningCopy;
  if (v6 != spinningCopy)
  {
    [(CARSpinnerHeaderView *)self setNeedsUpdateConfiguration];
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_4A9BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4A9AC();
  selfCopy = self;
  CARSpinnerHeaderView.updateConfiguration(using:)();

  (*(v5 + 8))(v8, v4);
}

- (_TtC14CarKitSettings20CARSpinnerHeaderView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_4B5FC();
    v4 = (self + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title);
    *v4 = 0;
    v4[1] = 0;
    *(self + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning) = 0;
    v5 = sub_4B5EC();
  }

  else
  {
    v5 = 0;
    v6 = (self + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title);
    *v6 = 0;
    v6[1] = 0;
    *(self + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for CARSpinnerHeaderView();
  v7 = [(CARSpinnerHeaderView *)&v9 initWithReuseIdentifier:v5];

  return v7;
}

- (_TtC14CarKitSettings20CARSpinnerHeaderView)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_title);
  *v4 = 0;
  v4[1] = 0;
  *(self + OBJC_IVAR____TtC14CarKitSettings20CARSpinnerHeaderView_isSpinning) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CARSpinnerHeaderView();
  coderCopy = coder;
  v6 = [(CARSpinnerHeaderView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end