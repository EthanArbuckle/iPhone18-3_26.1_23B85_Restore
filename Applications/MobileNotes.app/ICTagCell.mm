@interface ICTagCell
+ (UIFont)font;
+ (void)newTagImage;
- (BOOL)isNewTagCell;
- (ICItemIdentifier)identifier;
- (NSString)displayText;
- (UICellConfigurationState)_bridgedConfigurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setDisplayImage:(id)a3;
- (void)setDisplayText:(id)a3;
- (void)setDisplayText:(id)a3 includeSymbolPrefix:(BOOL)a4 hasGroupInset:(BOOL)a5;
- (void)setHasGroupInset:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setIsExcluded:(BOOL)a3;
- (void)setIsPreviewing:(BOOL)a3;
- (void)updateColors;
- (void)updateWidthConstraints;
@end

@implementation ICTagCell

- (NSString)displayText
{
  if (*(self + OBJC_IVAR___ICTagCell_displayText + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDisplayText:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___ICTagCell_displayText);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setDisplayImage:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10047E78C(a3);
}

- (void)setHasGroupInset:(BOOL)a3
{
  *(self + OBJC_IVAR___ICTagCell_hasGroupInset) = a3;
  v3 = self;
  sub_10047EB28();
}

+ (UIFont)font
{
  result = [objc_opt_self() ic_preferredFontForStyle:UIFontTextStyleSubheadline symbolicTraits:2];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = [(UIFont *)result ic_fontWithSingleLineA];

  if (!v4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return v4;
}

- (void)setIsPreviewing:(BOOL)a3
{
  *(self + OBJC_IVAR___ICTagCell_isPreviewing) = a3;
  v3 = self;
  sub_10047EED4();
}

- (ICItemIdentifier)identifier
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setIdentifier:(id)a3
{
  *(self + OBJC_IVAR___ICTagCell_identifier) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (BOOL)isNewTagCell
{
  if (*(self + OBJC_IVAR___ICTagCell_identifier))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 != 0;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  v3 = [(ICTagCell *)&v7 accessibilityTraits];
  v4 = UIAccessibilityTraitButton;

  if ((v4 & ~v3) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ICTagCell *)&v4 setAccessibilityTraits:a3];
}

- (void)setIsExcluded:(BOOL)a3
{
  *(self + OBJC_IVAR___ICTagCell_isExcluded) = a3;
  v3 = self;
  sub_10047EED4();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ICTagCell *)&v3 layoutSubviews];
  sub_10047EB28();
}

- (void)setDisplayText:(id)a3 includeSymbolPrefix:(BOOL)a4 hasGroupInset:(BOOL)a5
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = self;
  sub_10047E884(v8, v10, a4, a5);
}

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  TagCell.configurationState.getter();

  v8.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.super.isa;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  TagCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = self;
  sub_10047EB28();
  v10.receiver = v7;
  v10.super_class = ObjectType;
  v8 = [(ICTagCell *)&v10 preferredLayoutAttributesFittingAttributes:v6];

  return v8;
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100480A74();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)updateColors
{
  v2 = self;
  sub_10047EED4();
}

- (void)updateWidthConstraints
{
  v2 = self;
  sub_10047EB28();
}

+ (void)newTagImage
{
  v0 = [objc_opt_self() ic_preferredFontForStyle:UIFontTextStyleSubheadline symbolicTraits:2];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 ic_fontWithSingleLineA];

    if (v2)
    {
      v3 = [objc_opt_self() configurationWithFont:v2 scale:2];

      v4 = v3;
      v5 = String._bridgeToObjectiveC()();
      [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

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