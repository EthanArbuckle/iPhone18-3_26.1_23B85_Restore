@interface PDFImageElement
- (PDFImageElement)initWithBoundingBox:(id)box;
@end

@implementation PDFImageElement

- (PDFImageElement)initWithBoundingBox:(id)box
{
  v4.receiver = self;
  v4.super_class = PDFImageElement;
  return [(PDFAtomicElement *)&v4 initWithType:3 boundingBox:box layoutDirection:1];
}

@end