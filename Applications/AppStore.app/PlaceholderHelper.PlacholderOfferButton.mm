@interface PlaceholderHelper.PlacholderOfferButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithCoder:(id)coder;
- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PlaceholderHelper.PlacholderOfferButton

- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton_button;
  v9 = [objc_allocWithZone(UIView) init];
  secondarySystemBackgroundColor = [objc_opt_self() secondarySystemBackgroundColor];
  [v9 setBackgroundColor:secondarySystemBackgroundColor];

  *(&self->super.super.super.isa + v8) = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  height = [(PlaceholderHelper.PlacholderOfferButton *)&v13 initWithFrame:x, y, width, height];
  [(PlaceholderHelper.PlacholderOfferButton *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton_button)];
  return height;
}

- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton_button;
  v5 = [objc_allocWithZone(UIView) init];
  secondarySystemBackgroundColor = [objc_opt_self() secondarySystemBackgroundColor];
  [v5 setBackgroundColor:secondarySystemBackgroundColor];

  *(&self->super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_100250BE4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002502DC();
}

@end