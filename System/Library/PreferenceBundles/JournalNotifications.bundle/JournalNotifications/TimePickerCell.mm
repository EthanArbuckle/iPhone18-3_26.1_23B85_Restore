@interface TimePickerCell
- (NSString)accessibilityLabel;
- (_TtC20JournalNotifications14TimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC20JournalNotifications14TimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)controlValue;
- (id)newControl;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
- (void)willResignActive:(id)active;
@end

@implementation TimePickerCell

- (_TtC20JournalNotifications14TimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_C5484();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  sub_7EC38(style, v7, v9, specifier);
  return result;
}

- (_TtC20JournalNotifications14TimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_C5484();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_7F204(style, identifier, v6);
}

- (id)newControl
{
  v2 = [objc_allocWithZone(UIDatePicker) init];
  [v2 setDatePickerMode:0];
  [v2 setPreferredDatePickerStyle:2];
  return v2;
}

- (id)controlValue
{
  v3 = sub_C3CB4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  selfCopy = self;
  result = [(TimePickerCell *)selfCopy control];
  if (result)
  {
    v12 = result;
    objc_opt_self();
    date = [swift_dynamicCastObjCClassUnconditional() date];

    sub_C3C64();
    (*(v4 + 16))(v7, v9, v3);
    v14 = sub_C6274();
    (*(v4 + 8))(v9, v3);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setValue:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_C5E44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_7F6D8(v6);

  sub_C060(v6, &qword_104818);
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TimePickerCell();
  specifierCopy = specifier;
  v5 = v6.receiver;
  [(TimePickerCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  [v5 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_C4DA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C4D94();
  selfCopy = self;
  sub_7F92C(v7);

  (*(v5 + 8))(v7, v4);
}

- (NSString)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TimePickerCell();
  v2 = v7.receiver;
  accessibilityLabel = [(TimePickerCell *)&v7 accessibilityLabel];
  if (accessibilityLabel || (accessibilityLabel = [*&v2[OBJC_IVAR____TtC20JournalNotifications14TimePickerCell_listContentView] accessibilityLabel]) != 0)
  {
    v4 = accessibilityLabel;
    sub_C5484();

    v5 = sub_C5444();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)willResignActive:(id)active
{
  v4 = sub_C35A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C3574();
  selfCopy = self;
  control = [(TimePickerCell *)selfCopy control];
  if (control)
  {
    v10 = control;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setDatePickerMode:1];

    control2 = [(TimePickerCell *)selfCopy control];
    if (control2)
    {
      v12 = control2;
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setDatePickerMode:0];

      (*(v5 + 8))(v7, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

@end