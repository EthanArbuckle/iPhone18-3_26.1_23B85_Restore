@interface THWReviewChoice
- (TSUImage)contentImage;
- (TSWPStorage)contentStorage;
- (void)dealloc;
- (void)setContent:(id)content;
@end

@implementation THWReviewChoice

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewChoice;
  [(THWReviewChoice *)&v3 dealloc];
}

- (TSWPStorage)contentStorage
{
  contentType = [(THWReviewChoice *)self contentType];
  if (![(NSString *)contentType isEqualToString:TSWReviewChoiceDescriptionContentTypeTextValue])
  {
    return 0;
  }

  objc_opt_class();
  [(THWReviewChoice *)self content];

  return TSUDynamicCast();
}

- (TSUImage)contentImage
{
  contentType = [(THWReviewChoice *)self contentType];
  if (![(NSString *)contentType isEqualToString:TSWReviewChoiceDescriptionContentTypeImageValue])
  {
    return 0;
  }

  objc_opt_class();
  [(THWReviewChoice *)self content];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return 0;
  }

  return [TSDBitmapImageProvider TSUImageForImageData:v4];
}

- (void)setContent:(id)content
{
  content = self->_content;
  if (content != content)
  {

    self->_content = content;
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      v7 = v6;
      if (![v6 length])
      {

        [v7 insertString:@" " atCharIndex:0 undoTransaction:0];
      }
    }
  }
}

@end