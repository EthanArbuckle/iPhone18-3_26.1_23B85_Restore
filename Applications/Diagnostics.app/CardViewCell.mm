@interface CardViewCell
- (_TtC11Diagnostics12CardViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation CardViewCell

- (void)dealloc
{
  v2 = self;
  sub_1000A3B88();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for CardViewCell();
  [(CardViewCell *)&v3 dealloc];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer);
  v6 = self;
  v3 = [v2 layer];
  v4 = [objc_opt_self() opaqueSeparatorColor];
  v5 = [v4 CGColor];

  [v3 setBorderColor:v5];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000A4364();
}

- (_TtC11Diagnostics12CardViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1000A4578(a3, a4, v6);
}

@end