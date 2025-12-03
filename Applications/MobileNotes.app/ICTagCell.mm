@interface ICTagCell
+ (UIFont)font;
+ (void)newTagImage;
- (BOOL)isNewTagCell;
- (ICItemIdentifier)identifier;
- (NSString)displayText;
- (UICellConfigurationState)_bridgedConfigurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (unint64_t)accessibilityTraits;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setDisplayImage:(id)image;
- (void)setDisplayText:(id)text;
- (void)setDisplayText:(id)text includeSymbolPrefix:(BOOL)prefix hasGroupInset:(BOOL)inset;
- (void)setHasGroupInset:(BOOL)inset;
- (void)setIdentifier:(id)identifier;
- (void)setIsExcluded:(BOOL)excluded;
- (void)setIsPreviewing:(BOOL)previewing;
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

- (void)setDisplayText:(id)text
{
  if (text)
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

- (void)setDisplayImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_10047E78C(image);
}

- (void)setHasGroupInset:(BOOL)inset
{
  *(self + OBJC_IVAR___ICTagCell_hasGroupInset) = inset;
  selfCopy = self;
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
  ic_fontWithSingleLineA = [(UIFont *)result ic_fontWithSingleLineA];

  if (!ic_fontWithSingleLineA)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return ic_fontWithSingleLineA;
}

- (void)setIsPreviewing:(BOOL)previewing
{
  *(self + OBJC_IVAR___ICTagCell_isPreviewing) = previewing;
  selfCopy = self;
  sub_10047EED4();
}

- (ICItemIdentifier)identifier
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  *(self + OBJC_IVAR___ICTagCell_identifier) = identifier;
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
  accessibilityTraits = [(ICTagCell *)&v7 accessibilityTraits];
  v4 = UIAccessibilityTraitButton;

  if ((v4 & ~accessibilityTraits) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ICTagCell *)&v4 setAccessibilityTraits:traits];
}

- (void)setIsExcluded:(BOOL)excluded
{
  *(self + OBJC_IVAR___ICTagCell_isExcluded) = excluded;
  selfCopy = self;
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

- (void)setDisplayText:(id)text includeSymbolPrefix:(BOOL)prefix hasGroupInset:(BOOL)inset
{
  if (text)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  selfCopy = self;
  sub_10047E884(v8, v10, prefix, inset);
}

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  TagCell.configurationState.getter();

  v8.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.super.isa;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  TagCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  ObjectType = swift_getObjectType();
  attributesCopy = attributes;
  selfCopy = self;
  sub_10047EB28();
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  v8 = [(ICTagCell *)&v10 preferredLayoutAttributesFittingAttributes:attributesCopy];

  return v8;
}

- (void)contentSizeCategoryDidChange:(id)change
{
  if (change)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100480A74();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)updateColors
{
  selfCopy = self;
  sub_10047EED4();
}

- (void)updateWidthConstraints
{
  selfCopy = self;
  sub_10047EB28();
}

+ (void)newTagImage
{
  v0 = [objc_opt_self() ic_preferredFontForStyle:UIFontTextStyleSubheadline symbolicTraits:2];
  if (v0)
  {
    v1 = v0;
    ic_fontWithSingleLineA = [v0 ic_fontWithSingleLineA];

    if (ic_fontWithSingleLineA)
    {
      v3 = [objc_opt_self() configurationWithFont:ic_fontWithSingleLineA scale:2];

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