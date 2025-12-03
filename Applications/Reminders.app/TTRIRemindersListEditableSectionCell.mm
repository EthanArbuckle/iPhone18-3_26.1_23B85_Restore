@interface TTRIRemindersListEditableSectionCell
+ (Class)containerViewClass;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (_TtC9Reminders36TTRIRemindersListEditableSectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (unint64_t)accessibilityTraits;
- (void)containerViewDidLoad;
- (void)prepareForReuse;
- (void)setAccessibilityCustomActions:(id)isa;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHidden:(BOOL)hidden;
@end

@implementation TTRIRemindersListEditableSectionCell

+ (Class)containerViewClass
{
  sub_100003540(0, &qword_100785AB8);

  return swift_getObjCClassFromMetadata();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIRemindersListEditableSectionCell *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  isHidden = [(TTRIRemindersListEditableSectionCell *)&v10 isHidden];
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(TTRIRemindersListEditableSectionCell *)&v9 setHidden:hiddenCopy];
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  if (isHidden != [(TTRIRemindersListEditableSectionCell *)&v8 isHidden])
  {
    [(TTRIRemindersListEditableSectionCell *)selfCopy setNeedsLayout];
  }
}

- (void)containerViewDidLoad
{
  selfCopy = self;
  sub_100497BB4();
}

- (void)prepareForReuse
{
  ObjectType = swift_getObjectType();
  v4 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(TTRIRemindersListEditableSectionCell *)&v9 prepareForReuse];
  v8 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_100496818(v6);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  isEditing = [(TTRIRemindersListEditableSectionCell *)selfCopy isEditing];
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(TTRIRemindersListEditableSectionCell *)&v10 setEditing:editingCopy animated:animatedCopy];
  if (isEditing != editingCopy)
  {
    sub_100496AA0();
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  ObjectType = swift_getObjectType();
  v15.receiver = self;
  v15.super_class = ObjectType;
  selfCopy = self;
  [(TTRIRemindersListEditableSectionCell *)&v15 sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  v14.receiver = selfCopy;
  v14.super_class = ObjectType;
  LODWORD(ObjectType) = [(TTRIRemindersListEditableSectionCell *)&v14 isHidden];

  if (ObjectType)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (_TtC9Reminders36TTRIRemindersListEditableSectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100499F1C(style, identifier, v6);
}

- (BOOL)isAccessibilityElement
{
  v2 = *&self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
  if (v2)
  {
    LOBYTE(v2) = [v2 isEditing] ^ 1;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_10049ADAC();

  return v3 & 1;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_10049AF6C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  v3 = sub_10049B24C();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_10049B44C();

  if (v3)
  {
    sub_100003540(0, &qword_10076BCE0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityCustomActions:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076BCE0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIRemindersListEditableSectionCell *)&v8 setAccessibilityCustomActions:isa];
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  accessibilityTraits = [(TTRIRemindersListEditableSectionCell *)&v6 accessibilityTraits];
  v4 = UIAccessibilityTraitHeader;

  return v4 | accessibilityTraits;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIRemindersListEditableSectionCell *)&v4 setAccessibilityTraits:traits];
}

@end