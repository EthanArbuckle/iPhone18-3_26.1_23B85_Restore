@interface BECustomViewMenuElement
+ (id)createHighlightMenuElementFor:(int64_t)a3 annotationUUID:(id)a4 delegate:(id)a5;
+ (id)createHighlightMenuElementFor:(int64_t)a3 annotationUUID:(id)a4 view:(id)a5 rect:(CGRect)a6 delegate:(id)a7;
- (_TtC8BookCore23BECustomViewMenuElement)initWithCoder:(id)a3;
@end

@implementation BECustomViewMenuElement

+ (id)createHighlightMenuElementFor:(int64_t)a3 annotationUUID:(id)a4 delegate:(id)a5
{
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = _s8BookCore23BECustomViewMenuElementC015createHighlighteF03for14annotationUUID8delegateSo06UIMenuF0CSo022AEAnnotationTheme_PageO0V_So8NSStringCSgAA0heF8Delegate_ptFZ_0(a3, a4, a5);

  swift_unknownObjectRelease();

  return v9;
}

+ (id)createHighlightMenuElementFor:(int64_t)a3 annotationUUID:(id)a4 view:(id)a5 rect:(CGRect)a6 delegate:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  swift_getObjCClassMetadata();
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();
  v17 = static BECustomViewMenuElement.createHighlightMenuElement(for:annotationUUID:view:rect:delegate:)(a3, a4, v16, a7, x, y, width, height);

  swift_unknownObjectRelease();

  return v17;
}

- (_TtC8BookCore23BECustomViewMenuElement)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BECustomViewMenuElement();
  v4 = a3;
  v5 = [(BECustomViewMenuElement *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end