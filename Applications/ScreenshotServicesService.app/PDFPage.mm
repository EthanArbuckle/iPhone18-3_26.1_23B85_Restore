@interface PDFPage
- (id)_imageWithBox:(int64_t)box resolution:(CGSize)resolution offset:(CGPoint)offset wantThumbnail:(BOOL)thumbnail;
@end

@implementation PDFPage

- (id)_imageWithBox:(int64_t)box resolution:(CGSize)resolution offset:(CGPoint)offset wantThumbnail:(BOOL)thumbnail
{
  thumbnailCopy = thumbnail;
  y = offset.y;
  x = offset.x;
  v11 = resolution.width / 72.0;
  v12 = resolution.height / 72.0;
  [(PDFPage *)self boundsForBox:0x3FF0000000000000, 0x3FF0000000000000, 0x3FF0000000000000, unk_10008F4D0];
  v16 = floor(v15 + v11 * v13) - ceil(v15);
  v18 = floor(v17 + v12 * v14) - ceil(v17);
  rotation = [(PDFPage *)self rotation];
  if (rotation == 180)
  {
    v20 = v18;
  }

  else
  {
    v20 = v16;
  }

  if (rotation == 180)
  {
    v21 = v16;
  }

  else
  {
    v21 = v18;
  }

  if (rotation)
  {
    v18 = v20;
    v16 = v21;
  }

  v22 = CGColorSpaceCreateWithName(kCGColorSpaceAdobeRGB1998);
  if (v22)
  {
    v23 = v22;
    CGColorSpaceGetNumberOfComponents(v22);
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v25 = CGBitmapContextCreate(0, v16, v18, 8uLL, AlignedBytesPerRow, v23, 0x2002u);
    if (v25)
    {
      v26 = v25;
      CGContextSetAllowsAntialiasing(v25, 1);
      CGContextSetAllowsFontSmoothing(v26, 1);
      CGContextSetAllowsFontSubpixelPositioning(v26, 1);
      CGContextSetAllowsFontSubpixelQuantization(v26, 1);
      CGContextSetFillColor(v26, &v30);
      v32.size.width = v16;
      v32.size.height = v18;
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      CGContextFillRect(v26, v32);
      CGContextTranslateCTM(v26, x, y);
      CGContextScaleCTM(v26, v11, v12);
      CGContextSetShouldAntialias(v26, 1);
      CGContextSetShouldSubpixelPositionFonts(v26, 1);
      CGContextSetShouldSubpixelQuantizeFonts(v26, 1);
      [(PDFPage *)self drawWithBox:box inContext:v26 isThumbnail:thumbnailCopy];
      Image = CGBitmapContextCreateImage(v26);
      CGContextRelease(v26);
    }

    else
    {
      Image = 0;
    }

    CGColorSpaceRelease(v23);
  }

  else
  {
    Image = 0;
  }

  v28 = [[UIImage alloc] initWithCGImage:Image];

  return v28;
}

@end