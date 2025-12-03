@interface BECustomViewMenuElement
+ (id)createHighlightMenuElementFor:(int64_t)for annotationUUID:(id)d delegate:(id)delegate;
+ (id)createHighlightMenuElementFor:(int64_t)for annotationUUID:(id)d view:(id)view rect:(CGRect)rect delegate:(id)delegate;
- (_TtC8BookCore23BECustomViewMenuElement)initWithCoder:(id)coder;
@end

@implementation BECustomViewMenuElement

+ (id)createHighlightMenuElementFor:(int64_t)for annotationUUID:(id)d delegate:(id)delegate
{
  dCopy = d;
  swift_unknownObjectRetain();
  v9 = _s8BookCore23BECustomViewMenuElementC015createHighlighteF03for14annotationUUID8delegateSo06UIMenuF0CSo022AEAnnotationTheme_PageO0V_So8NSStringCSgAA0heF8Delegate_ptFZ_0(for, d, delegate);

  swift_unknownObjectRelease();

  return v9;
}

+ (id)createHighlightMenuElementFor:(int64_t)for annotationUUID:(id)d view:(id)view rect:(CGRect)rect delegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  swift_getObjCClassMetadata();
  dCopy = d;
  viewCopy = view;
  swift_unknownObjectRetain();
  v17 = static BECustomViewMenuElement.createHighlightMenuElement(for:annotationUUID:view:rect:delegate:)(for, d, viewCopy, delegate, x, y, width, height);

  swift_unknownObjectRelease();

  return v17;
}

- (_TtC8BookCore23BECustomViewMenuElement)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BECustomViewMenuElement();
  coderCopy = coder;
  v5 = [(BECustomViewMenuElement *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end