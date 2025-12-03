@interface MFCenteredTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
@end

@implementation MFCenteredTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  [(MFCenteredTextAttachment *)self height:container];
  v8 = v7;
  image = [(MFCenteredTextAttachment *)self image];
  [image size];
  v11 = v10;

  image2 = [(MFCenteredTextAttachment *)self image];
  [image2 size];
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