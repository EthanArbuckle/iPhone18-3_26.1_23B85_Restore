@interface ICMovePreviewView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)objectIds;
- (void)reloadImages;
- (void)setHtmlContext:(id)context;
- (void)setModernContext:(id)context;
- (void)setObjectIds:(id)ids;
@end

@implementation ICMovePreviewView

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 44.0;
  v4 = 44.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setModernContext:(id)context
{
  v4 = *(self + OBJC_IVAR___ICMovePreviewView_modernContext);
  *(self + OBJC_IVAR___ICMovePreviewView_modernContext) = context;
  contextCopy = context;
}

- (void)setHtmlContext:(id)context
{
  v4 = *(self + OBJC_IVAR___ICMovePreviewView_htmlContext);
  *(self + OBJC_IVAR___ICMovePreviewView_htmlContext) = context;
  contextCopy = context;
}

- (NSArray)objectIds
{
  sub_1000054A4(0, &qword_1006BFEC0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setObjectIds:(id)ids
{
  sub_1000054A4(0, &qword_1006BFEC0);
  *(self + OBJC_IVAR___ICMovePreviewView_objectIds) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  sub_100226B1C();
}

- (void)reloadImages
{
  selfCopy = self;
  sub_100226B1C();
}

@end