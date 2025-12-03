@interface ICTagOperatorCell
- (ICTagOperatorCell)initWithFrame:(CGRect)frame;
- (id)selectionChangeHandler;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setSelectionChangeHandler:(id)handler;
- (void)setTagSelection:(id)selection;
@end

@implementation ICTagOperatorCell

- (id)selectionChangeHandler
{
  if (*(self + OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler))
  {
    v2 = *(self + OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler + 8);
    v5[4] = *(self + OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1002DEFE0;
    v5[3] = &unk_100659EF0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelectionChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1002B5F34;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler);
  v8 = *(self + OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1002B5F48(v8);
}

- (void)setTagSelection:(id)selection
{
  v4 = *(self + OBJC_IVAR___ICTagOperatorCell_tagSelection);
  *(self + OBJC_IVAR___ICTagOperatorCell_tagSelection) = selection;
  selectionCopy = selection;
  selfCopy = self;

  sub_100397F48();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10039813C(v7);

  (*(v5 + 8))(v7, v4);
}

- (ICTagOperatorCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (self + OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR___ICTagOperatorCell_tagSelection) = 0;
  *(self + OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu) = 0;
  *(self + OBJC_IVAR___ICTagOperatorCell____lazy_storage___anyAction) = 0;
  *(self + OBJC_IVAR___ICTagOperatorCell____lazy_storage___allAction) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(ICTagOperatorCell *)&v11 initWithFrame:x, y, width, height];
}

@end