@interface TTRIRemindersListEditableSectionCell
+ (Class)containerViewClass;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (_TtC9Reminders36TTRIRemindersListEditableSectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)containerViewDidLoad;
- (void)prepareForReuse;
- (void)setAccessibilityCustomActions:(id)isa;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHidden:(BOOL)a3;
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

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v6 = self;
  v7 = [(TTRIRemindersListEditableSectionCell *)&v10 isHidden];
  v9.receiver = v6;
  v9.super_class = ObjectType;
  [(TTRIRemindersListEditableSectionCell *)&v9 setHidden:v3];
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (v7 != [(TTRIRemindersListEditableSectionCell *)&v8 isHidden])
  {
    [(TTRIRemindersListEditableSectionCell *)v6 setNeedsLayout];
  }
}

- (void)containerViewDidLoad
{
  v2 = self;
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
  v7 = self;
  [(TTRIRemindersListEditableSectionCell *)&v9 prepareForReuse];
  v8 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_100496818(v6);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  ObjectType = swift_getObjectType();
  v8 = self;
  v9 = [(TTRIRemindersListEditableSectionCell *)v8 isEditing];
  v10.receiver = v8;
  v10.super_class = ObjectType;
  [(TTRIRemindersListEditableSectionCell *)&v10 setEditing:v5 animated:v4];
  if (v9 != v5)
  {
    sub_100496AA0();
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  ObjectType = swift_getObjectType();
  v15.receiver = self;
  v15.super_class = ObjectType;
  v7 = self;
  [(TTRIRemindersListEditableSectionCell *)&v15 sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  v14.receiver = v7;
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

- (_TtC9Reminders36TTRIRemindersListEditableSectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100499F1C(a3, a4, v6);
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
  v2 = self;
  v3 = sub_10049ADAC();

  return v3 & 1;
}

- (NSString)accessibilityLabel
{
  v2 = self;
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
  v2 = self;
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
  v2 = self;
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
    v6 = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = self;
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
  v3 = [(TTRIRemindersListEditableSectionCell *)&v6 accessibilityTraits];
  v4 = UIAccessibilityTraitHeader;

  return v4 | v3;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIRemindersListEditableSectionCell *)&v4 setAccessibilityTraits:a3];
}

@end