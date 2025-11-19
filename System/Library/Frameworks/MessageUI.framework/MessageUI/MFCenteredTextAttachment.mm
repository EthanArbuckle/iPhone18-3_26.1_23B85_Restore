@interface MFCenteredTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
@end

@implementation MFCenteredTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  [(MFCenteredTextAttachment *)self height:a3];
  v8 = v7;
  v9 = [(MFCenteredTextAttachment *)self image];
  [v9 size];
  v11 = v10;

  v12 = [(MFCenteredTextAttachment *)self image];
  [v12 size];
  v14 = v13;
  v16 = v15;

  v17 = 0.0;
  v18 = v11 * -0.5 + v8 * 0.5;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end