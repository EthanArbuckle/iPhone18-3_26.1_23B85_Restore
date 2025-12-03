@interface BKLibrarymetadataEditorCoverBorderView
- (void)drawRect:(CGRect)rect;
@end

@implementation BKLibrarymetadataEditorCoverBorderView

- (void)drawRect:(CGRect)rect
{
  v4 = [UIColor tertiaryLabelColor:rect.origin.x];
  [v4 setStroke];

  [(BKLibrarymetadataEditorCoverBorderView *)self bounds];
  v8 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  mainScreenScaleFactor();
  v6 = v5;
  v7 = 1.0;
  if (v6 != 0.0)
  {
    v7 = 1.0 / v6 + 1.0 / v6;
  }

  [v8 setLineWidth:v7];
  [v8 stroke];
}

@end