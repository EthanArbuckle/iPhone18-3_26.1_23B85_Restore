@interface ICMovePreviewView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)objectIds;
- (void)reloadImages;
- (void)setHtmlContext:(id)a3;
- (void)setModernContext:(id)a3;
- (void)setObjectIds:(id)a3;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 44.0;
  v4 = 44.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setModernContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICMovePreviewView_modernContext);
  *(self + OBJC_IVAR___ICMovePreviewView_modernContext) = a3;
  v3 = a3;
}

- (void)setHtmlContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICMovePreviewView_htmlContext);
  *(self + OBJC_IVAR___ICMovePreviewView_htmlContext) = a3;
  v3 = a3;
}

- (NSArray)objectIds
{
  sub_1000054A4(0, &qword_1006BFEC0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setObjectIds:(id)a3
{
  sub_1000054A4(0, &qword_1006BFEC0);
  *(self + OBJC_IVAR___ICMovePreviewView_objectIds) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;

  sub_100226B1C();
}

- (void)reloadImages
{
  v2 = self;
  sub_100226B1C();
}

@end