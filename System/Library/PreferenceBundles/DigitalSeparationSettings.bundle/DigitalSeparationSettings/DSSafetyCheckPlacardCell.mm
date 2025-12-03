@interface DSSafetyCheckPlacardCell
- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithCoder:(id)coder;
- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation DSSafetyCheckPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  specifierCopy = specifier;
  selfCopy = self;
  sub_4E4C();
}

- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v8 = sub_89C8();
    identifier = v9;
  }

  else
  {
    v8 = 0;
  }

  specifierCopy = specifier;
  v11 = sub_48D4(style, v8, identifier, specifier);

  return v11;
}

- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    sub_89C8();
    identifier = sub_89B8();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(DSSafetyCheckPlacardCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(DSSafetyCheckPlacardCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end