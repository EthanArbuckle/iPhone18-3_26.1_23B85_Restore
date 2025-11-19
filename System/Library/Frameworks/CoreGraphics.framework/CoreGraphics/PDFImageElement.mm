@interface PDFImageElement
- (PDFImageElement)initWithBoundingBox:(id)a3;
@end

@implementation PDFImageElement

- (PDFImageElement)initWithBoundingBox:(id)a3
{
  v4.receiver = self;
  v4.super_class = PDFImageElement;
  return [(PDFAtomicElement *)&v4 initWithType:3 boundingBox:a3 layoutDirection:1];
}

@end