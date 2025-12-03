@interface CardViewCell
- (_TtC11Diagnostics12CardViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation CardViewCell

- (void)dealloc
{
  selfCopy = self;
  sub_1000A3B88();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for CardViewCell();
  [(CardViewCell *)&v3 dealloc];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer);
  selfCopy = self;
  layer = [v2 layer];
  opaqueSeparatorColor = [objc_opt_self() opaqueSeparatorColor];
  cGColor = [opaqueSeparatorColor CGColor];

  [layer setBorderColor:cGColor];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000A4364();
}

- (_TtC11Diagnostics12CardViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1000A4578(style, identifier, v6);
}

@end