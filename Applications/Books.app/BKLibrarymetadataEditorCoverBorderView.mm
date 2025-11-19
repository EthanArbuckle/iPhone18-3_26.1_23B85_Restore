@interface BKLibrarymetadataEditorCoverBorderView
- (void)drawRect:(CGRect)a3;
@end

@implementation BKLibrarymetadataEditorCoverBorderView

- (void)drawRect:(CGRect)a3
{
  v4 = [UIColor tertiaryLabelColor:a3.origin.x];
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