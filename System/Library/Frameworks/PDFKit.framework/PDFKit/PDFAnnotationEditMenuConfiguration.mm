@interface PDFAnnotationEditMenuConfiguration
+ (id)configurationWithIdentifier:(id)identifier sourcePoint:(CGPoint)point;
@end

@implementation PDFAnnotationEditMenuConfiguration

+ (id)configurationWithIdentifier:(id)identifier sourcePoint:(CGPoint)point
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___PDFAnnotationEditMenuConfiguration;
  v4 = objc_msgSendSuper2(&v6, sel_configurationWithIdentifier_sourcePoint_, identifier, point.x, point.y);

  return v4;
}

@end