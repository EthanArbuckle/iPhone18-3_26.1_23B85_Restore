@interface TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView
- (UIEdgeInsets)effectiveLayoutMargins;
- (_TtC9Reminders65TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView)initWithArrangedSubviews:(id)isa;
- (_TtC9Reminders65TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView)initWithCoder:(id)coder;
- (_TtC9Reminders65TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView)initWithFrame:(CGRect)frame;
@end

@implementation TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView

- (UIEdgeInsets)effectiveLayoutMargins
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  [(TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView *)&v8 effectiveLayoutMargins];
  v5 = v4 + -8.0;
  v7 = v6 + -8.0;
  result.right = v7;
  result.bottom = v3;
  result.left = v5;
  result.top = v2;
  return result;
}

- (_TtC9Reminders65TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9Reminders65TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView)initWithArrangedSubviews:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView *)&v8 initWithArrangedSubviews:isa];

  return v6;
}

- (_TtC9Reminders65TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRISmartListFilterEditorRelativeRangeTableCellContainerStackView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end