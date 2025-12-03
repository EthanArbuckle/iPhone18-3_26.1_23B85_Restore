@interface InteractiveTimelineItemCell
- (NSString)description;
- (_TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell)initWithCoder:(id)coder;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
@end

@implementation InteractiveTimelineItemCell

- (NSString)description
{
  swift_getObjectType();
  selfCopy = self;
  v4 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v4);

  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  sub_29E2C4664();

  v5 = sub_29E2C33A4();

  return v5;
}

- (_TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InteractiveTimelineItemCell();
  coderCopy = coder;
  v6 = [(InteractiveTimelineItemCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for InteractiveTimelineItemCell();
  attributesCopy = attributes;
  v5 = v8.receiver;
  v6 = [(InteractiveTimelineItemCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];
  [v6 frame];
  [v6 frame];
  [v6 setFrame_];

  return v6;
}

@end