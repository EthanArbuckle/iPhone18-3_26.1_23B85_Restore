@interface AccessibilityNode
- (AXChartDescriptor)accessibilityChartDescriptor;
- (BOOL)_accessibilityCanPerformAction:(unsigned int)action;
- (BOOL)_accessibilityCanPerformEscapeAction;
- (BOOL)_accessibilityDataSeriesIncludesTrendlineInSonification;
- (BOOL)_accessibilityDataSeriesSupportsSonification;
- (BOOL)_accessibilityDataSeriesSupportsSummarization;
- (BOOL)_accessibilityExplicitlyNonInteractable;
- (BOOL)_accessibilityHasOrderedChildren;
- (BOOL)_accessibilityIsChartElement;
- (BOOL)_accessibilityIsFirstSiblingForType:(unint64_t)type;
- (BOOL)_accessibilityIsMacVisualAppearance;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)accessibilityViewIsModal;
- (BOOL)isAccessibilityElement;
- (BOOL)shouldGroupAccessibilityChildren;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)accessibilityFrame;
- (NSArray)accessibilityCustomRotors;
- (NSArray)accessibilityElements;
- (NSAttributedString)accessibilityAttributedHint;
- (NSAttributedString)accessibilityAttributedLabel;
- (NSAttributedString)accessibilityAttributedValue;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityTextualContext;
- (UIBezierPath)accessibilityPath;
- (UIResponder)nextResponder;
- (_NSRange)accessibilityColumnRange;
- (_NSRange)accessibilityRowRange;
- (_TtC7SwiftUI17AccessibilityNode)init;
- (_TtP7SwiftUI36PlatformAccessibilityElementProtocol_)_accessibilityNodeRepresentedElement;
- (double)_accessibilityDataSeriesSonificationDuration;
- (double)_accessibilityMaxValue;
- (double)_accessibilityMinValue;
- (double)_accessibilityNumberValue;
- (id)_accessibilityDataSeriesMaximumValueForAxis:(int64_t)axis;
- (id)_accessibilityDataSeriesMinimumValueForAxis:(int64_t)axis;
- (id)_accessibilityDataSeriesValueDescriptionForPosition:(double)position axis:(int64_t)axis;
- (id)_accessibilityHeadingLevel;
- (id)_accessibilityWindow;
- (id)accessibilityCustomAttribute:(id)attribute;
- (id)accessibilityCustomContent;
- (id)accessibilityDataTableCellElementForRow:(int64_t)row column:(int64_t)column;
- (id)accessibilityHeaderElementsForColumn:(int64_t)column;
- (id)accessibilityURL;
- (int64_t)_accessibilityDataSeriesType;
- (int64_t)_accessibilityExpandedStatus;
- (int64_t)_accessibilitySortPriority;
- (int64_t)accessibilityColumnCount;
- (int64_t)accessibilityContainerType;
- (int64_t)accessibilityElementCount;
- (int64_t)accessibilityNavigationStyle;
- (int64_t)accessibilityRowCount;
- (unint64_t)_accessibilityAutomationType;
- (unint64_t)accessibilityDirectTouchOptions;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AccessibilityNode

- (BOOL)isAccessibilityElement
{
  v5 = 4;
  selfCopy = self;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(0, &v5, &v6);

  return 1u >> (v6 & 0xF);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityTraits.getter();

  return v3;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  v3 = AccessibilityNode.resolvedLabels.getter();
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v4 = specialized AccessibilityNode.resolvedPlainTexts(_:separator:)(v3);
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x18D00C850](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSAttributedString)accessibilityAttributedLabel
{
  selfCopy = self;
  v3 = AccessibilityNode.resolvedLabels.getter();
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v4 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v3);

  return v4;
}

- (NSAttributedString)accessibilityAttributedValue
{
  selfCopy = self;
  v3 = AccessibilityNode.resolvedAttributedValue.getter();

  return v3;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v9);
  outlined init with copy of AccessibilityProperties(v9, v10);
  outlined destroy of AccessibilityAttachment(v9);
  v3 = AccessibilityProperties.hints.getter();
  outlined destroy of AccessibilityProperties(v10);
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v4 = specialized AccessibilityNode.resolvedPlainTexts(_:separator:)(v3);
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x18D00C850](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSAttributedString)accessibilityAttributedHint
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v6);
  outlined init with copy of AccessibilityProperties(v6, v7);
  outlined destroy of AccessibilityAttachment(v6);
  v3 = AccessibilityProperties.hints.getter();
  outlined destroy of AccessibilityProperties(v7);
  v6[0] = 2;
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v4 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v3);

  return v4;
}

- (NSString)accessibilityTextualContext
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityTextualContext.getter();

  return v3;
}

- (id)_accessibilityHeadingLevel
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v8);
  outlined destroy of AccessibilityAttachment(v7);
  v3 = AccessibilityProperties.textHeadingLevel.getter();
  outlined destroy of AccessibilityProperties(v8);
  if (v3 == 7)
  {

    v4 = 0;
  }

  else
  {
    isa = UInt._bridgeToObjectiveC()().super.super.isa;

    v4 = isa;
  }

  return v4;
}

- (id)_accessibilityWindow
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    selfCopy = self;
    if (!v4)
    {
      swift_unknownObjectRelease();
    }

    Strong = [v4 window];
  }

  return Strong;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  AccessibilityNode.accessibilityFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIBezierPath)accessibilityPath
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityPath.getter();

  return v3;
}

- (int64_t)_accessibilitySortPriority
{
  selfCopy = self;
  v3 = AccessibilityNode._accessibilitySortPriority()();

  return v3;
}

- (_TtP7SwiftUI36PlatformAccessibilityElementProtocol_)_accessibilityNodeRepresentedElement
{
  selfCopy = self;
  v3 = AccessibilityNode.representedElement.getter();

  return v3;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v6.location = location;
  v6.length = length;
  v15 = AccessibilityNode._accessibilityBounds(for:)(v6);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = specialized static AccessibilityCore.queryChildren(element:options:)(selfCopy, 2);
  v4 = Array<A>.representedElements(options:)(2, v3);

  specialized _arrayForceCast<A, B>(_:)(v4);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (int64_t)accessibilityElementCount
{
  selfCopy = self;
  v3 = specialized static AccessibilityCore.queryChildren(element:options:)(selfCopy, 0);
  v4 = Array<A>.representedElements(options:)(0, v3);

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5;
}

- (BOOL)_accessibilityHasOrderedChildren
{
  v4 = 4;
  selfCopy = self;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(0, &v4, &v5);

  return v5 != 0;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  *&v3 = COERCE_DOUBLE(AccessibilityNode.explicitActivationPoint.getter());
  if (v5 == -1 && (*&v3 = COERCE_DOUBLE(AccessibilityNode.implicitActivationPoint(options:)(2)), v6 == -1))
  {
    [(AccessibilityNode *)selfCopy accessibilityFrame];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v15 = v18.origin.x + CGRectGetWidth(v18) * 0.5;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v16 = CGRectGetHeight(v19);

    v9 = v15;
    v10 = y + v16 * 0.5;
  }

  else
  {
    v7 = *&v3;
    v8 = v4;

    v9 = v7;
    v10 = v8;
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)accessibilityViewIsModal
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityViewIsModal.getter();

  return v3 & 1;
}

- (BOOL)accessibilityElementsHidden
{
  v4 = 4;
  selfCopy = self;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(0, &v4, &v5);

  return v5 == 3;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v4 = 4;
  selfCopy = self;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v4, &v5);

  return v5 - 1 < 2;
}

- (int64_t)accessibilityNavigationStyle
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityNavigationStyle.getter();

  return v3;
}

- (int64_t)accessibilityContainerType
{
  selfCopy = self;
  accessibilityContainerType = AccessibilityNode.resolvedContainerType.getter();
  if (v4)
  {
    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for AccessibilityNode();
    accessibilityContainerType = [(AccessibilityNode *)&v7 accessibilityContainerType];
  }

  v5 = accessibilityContainerType;

  return v5;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  selfCopy = self;
  accessibilityRespondsToUserInteraction = AccessibilityNode.resolvedIsInteractive.getter();
  if (accessibilityRespondsToUserInteraction == 2)
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for AccessibilityNode();
    accessibilityRespondsToUserInteraction = [(AccessibilityNode *)&v6 accessibilityRespondsToUserInteraction];
  }

  v4 = accessibilityRespondsToUserInteraction;

  return v4 & 1;
}

- (BOOL)_accessibilityExplicitlyNonInteractable
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v5);
  outlined init with copy of AccessibilityProperties(v5, v6);
  outlined destroy of AccessibilityAttachment(v5);
  v5[0] = 21;
  v3 = AccessibilityProperties.subscript.getter();

  outlined destroy of AccessibilityProperties(v6);
  return ((v3 != 2) ^ v3) & 1;
}

- (void)accessibilityIncrement
{
  selfCopy = self;
  specialized AccessibilityNode.sendAction<A>(_:value:)(2, 0);
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  specialized AccessibilityNode.sendAction<A>(_:value:)(2, 1);
}

- (unint64_t)accessibilityDirectTouchOptions
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityDirectTouchOptions.getter();

  return v3;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = specialized AccessibilityNode.sendAction<A>(_:value:)(0, 0, 0, 0);

  return v3 & 1;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  selfCopy = self;
  v3 = specialized AccessibilityNode.hasAction<A>(_:)(0, 0, 0, 0);

  return v3 & 1;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = specialized AccessibilityNode.sendAction<A>(_:value:)(0, 0, 0, 1);

  return v3 & 1;
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  selfCopy = self;
  v3 = specialized AccessibilityNode.hasAction<A>(_:)(0, 0, 0, 1);

  return v3 & 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  v3 = specialized AccessibilityNode.sendAction<A>(_:value:)(0, 0, 0, 2);

  return v3 & 1;
}

- (id)accessibilityURL
{
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  selfCopy = self;
  AccessibilityNode.accessibilityURL()(v5);

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  selfCopy = self;
  LOBYTE(scroll) = AccessibilityNode.accessibilityScroll(_:)(scroll);

  return scroll & 1;
}

- (BOOL)_accessibilityCanPerformAction:(unsigned int)action
{
  selfCopy = self;
  LOBYTE(action) = AccessibilityNode._accessibilityCanPerformAction(_:)(action);

  return action & 1;
}

- (NSArray)accessibilityCustomRotors
{
  selfCopy = self;
  AccessibilityNode.resolvedCustomRotors.getter();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomRotor);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)_accessibilityIsMacVisualAppearance
{
  selfCopy = self;
  IsMacVisual = AccessibilityNode._accessibilityIsMacVisualAppearance()();

  return IsMacVisual;
}

- (unint64_t)_accessibilityAutomationType
{
  selfCopy = self;
  v3 = AccessibilityNode._accessibilityAutomationType()();

  return v3;
}

- (double)_accessibilityMinValue
{
  selfCopy = self;
  AccessibilityNode._accessibilityMinValue()(MEMORY[0x1E69804D8]);
  v4 = v3;

  return v4;
}

- (double)_accessibilityMaxValue
{
  selfCopy = self;
  AccessibilityNode._accessibilityMinValue()(MEMORY[0x1E69804D0]);
  v4 = v3;

  return v4;
}

- (double)_accessibilityNumberValue
{
  selfCopy = self;
  AccessibilityNode._accessibilityNumberValue()();
  v4 = v3;

  return v4;
}

- (int64_t)_accessibilityExpandedStatus
{
  selfCopy = self;
  v3 = AccessibilityNode._accessibilityExpandedStatus()();

  return v3;
}

- (id)accessibilityDataTableCellElementForRow:(int64_t)row column:(int64_t)column
{
  selfCopy = self;
  v7 = AccessibilityNode.accessibilityDataTableCellElement(forRow:column:)(row, column);

  return v7;
}

- (int64_t)accessibilityRowCount
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityRowCount()(AccessibilityCollectionViewTableDataSource.rowCount.getter);

  return v3;
}

- (int64_t)accessibilityColumnCount
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityRowCount()(AccessibilityCollectionViewTableDataSource.columnCount.getter);

  return v3;
}

- (id)accessibilityHeaderElementsForColumn:(int64_t)column
{
  selfCopy = self;
  v5 = AccessibilityNode.accessibilityHeaderElements(forColumn:)(column);

  if (v5)
  {
    type metadata accessor for UIAccessibilityContainerDataTableCell();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (_NSRange)accessibilityColumnRange
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityColumnRange()();

  location = v3.location;
  length = v3.length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)accessibilityRowRange
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityRowRange()();

  location = v3.location;
  length = v3.length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)_accessibilityIsFirstSiblingForType:(unint64_t)type
{
  selfCopy = self;
  LOBYTE(type) = AccessibilityNode._accessibilityIsFirstSibling(for:)(type);

  return type & 1;
}

- (int64_t)_accessibilityDataSeriesType
{
  selfCopy = self;
  v3 = AccessibilityNode._accessibilityDataSeriesType()();

  return v3;
}

- (BOOL)_accessibilityDataSeriesSupportsSummarization
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v5);
  outlined destroy of AccessibilityAttachment(v7);
  AccessibilityProperties.dataSeriesConfiguration.getter();

  outlined destroy of AccessibilityProperties(v5);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  if (getEnumTag for AccessibilityActionCategory.Category(v7) == 1)
  {
    return 0;
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return v7[50];
}

- (BOOL)_accessibilityDataSeriesSupportsSonification
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v5);
  outlined destroy of AccessibilityAttachment(v7);
  AccessibilityProperties.dataSeriesConfiguration.getter();

  outlined destroy of AccessibilityProperties(v5);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  if (getEnumTag for AccessibilityActionCategory.Category(v7) == 1)
  {
    return 0;
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return v7[33];
}

- (BOOL)_accessibilityDataSeriesIncludesTrendlineInSonification
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v5);
  outlined destroy of AccessibilityAttachment(v7);
  AccessibilityProperties.dataSeriesConfiguration.getter();

  outlined destroy of AccessibilityProperties(v5);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  if (getEnumTag for AccessibilityActionCategory.Category(v7) == 1)
  {
    return 0;
  }

  outlined destroy of AccessibilityTextLayoutProperties?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], MEMORY[0x1E69E6720], _sypSgMaTm_3);
  return v7[49];
}

- (double)_accessibilityDataSeriesSonificationDuration
{
  selfCopy = self;
  v3 = AccessibilityNode._accessibilityDataSeriesSonificationDuration()();

  return v3;
}

- (id)_accessibilityDataSeriesMinimumValueForAxis:(int64_t)axis
{
  selfCopy = self;
  v5 = AccessibilityNode._accessibilityDataSeriesMinimumValue(for:)(axis);

  return v5;
}

- (id)_accessibilityDataSeriesMaximumValueForAxis:(int64_t)axis
{
  selfCopy = self;
  v5 = AccessibilityNode._accessibilityDataSeriesMaximumValue(for:)(axis);

  return v5;
}

- (id)_accessibilityDataSeriesValueDescriptionForPosition:(double)position axis:(int64_t)axis
{
  selfCopy = self;
  v7 = AccessibilityNode._accessibilityDataSeriesValueDescription(forPosition:axis:)(axis, position);
  v9 = v8;

  if (v9)
  {
    v10 = MEMORY[0x18D00C850](v7, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIResponder)nextResponder
{
  selfCopy = self;
  v3 = AccessibilityNode.next.getter();

  return v3;
}

- (_TtC7SwiftUI17AccessibilityNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accessibilityCustomAttribute:(id)attribute
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  AccessibilityNode.accessibilityCustomAttribute(_:)(v4, v6, &v16);

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(&v16, v17);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (AXChartDescriptor)accessibilityChartDescriptor
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityChartDescriptor.getter();

  return v3;
}

- (BOOL)_accessibilityIsChartElement
{
  selfCopy = self;
  AccessibilityNode.attachment.getter(v5);
  outlined init with copy of AccessibilityProperties(v5, v6);
  outlined destroy of AccessibilityAttachment(v5);
  v3 = AccessibilityProperties.chartDescriptor.getter();

  outlined destroy of AccessibilityProperties(v6);
  if (v3)
  {
  }

  return v3 != 0;
}

- (id)accessibilityCustomContent
{
  selfCopy = self;
  v3 = AccessibilityNode.accessibilityCustomContent()();

  if (v3)
  {
    type metadata accessor for AXCustomContent();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end