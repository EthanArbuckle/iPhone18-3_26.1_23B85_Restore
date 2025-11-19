@interface PDFUtilities
+ (id)imageForType:(unsigned int)a3;
+ (void)renderDocumentForType:(unsigned int)a3 inRect:(CGRect)a4;
@end

@implementation PDFUtilities

+ (void)renderDocumentForType:(unsigned int)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [a1 imageForType:*&a3];
  [v8 drawInRect:{x, y, width, height}];
}

+ (id)imageForType:(unsigned int)a3
{
  if (a3 > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v5 = [UIImage imageNamed:*(&off_10162AC68 + a3), v3];
  }

  return v5;
}

@end