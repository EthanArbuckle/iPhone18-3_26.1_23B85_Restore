@interface PlaceholderHelper.PlacholderOfferButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithCoder:(id)a3;
- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PlaceholderHelper.PlacholderOfferButton

- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton_button;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = [objc_opt_self() secondarySystemBackgroundColor];
  [v9 setBackgroundColor:v10];

  *(&self->super.super.super.isa + v8) = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  v11 = [(PlaceholderHelper.PlacholderOfferButton *)&v13 initWithFrame:x, y, width, height];
  [(PlaceholderHelper.PlacholderOfferButton *)v11 addSubview:*(&v11->super.super.super.isa + OBJC_IVAR____TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton_button)];
  return v11;
}

- (_TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtCV8AppStore17PlaceholderHelperP33_607C52F02DF538DBADD6410BF6CDB63521PlacholderOfferButton_button;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  [v5 setBackgroundColor:v6];

  *(&self->super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
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
  v2 = self;
  sub_1002502DC();
}

@end