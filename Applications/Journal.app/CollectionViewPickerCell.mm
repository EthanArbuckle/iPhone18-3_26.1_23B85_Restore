@interface CollectionViewPickerCell
- (_TtC7Journal24CollectionViewPickerCell)initWithCoder:(id)coder;
- (_TtC7Journal24CollectionViewPickerCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation CollectionViewPickerCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001E4B68();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7Journal24CollectionViewPickerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollectionViewPickerCell();
  return [(CollectionViewPickerCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal24CollectionViewPickerCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollectionViewPickerCell();
  coderCopy = coder;
  v5 = [(CollectionViewPickerCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end