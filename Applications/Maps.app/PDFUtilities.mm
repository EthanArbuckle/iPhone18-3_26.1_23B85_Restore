@interface PDFUtilities
+ (id)imageForType:(unsigned int)type;
+ (void)renderDocumentForType:(unsigned int)type inRect:(CGRect)rect;
@end

@implementation PDFUtilities

+ (void)renderDocumentForType:(unsigned int)type inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [self imageForType:*&type];
  [v8 drawInRect:{x, y, width, height}];
}

+ (id)imageForType:(unsigned int)type
{
  if (type > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v5 = [UIImage imageNamed:*(&off_10162AC68 + type), v3];
  }

  return v5;
}

@end