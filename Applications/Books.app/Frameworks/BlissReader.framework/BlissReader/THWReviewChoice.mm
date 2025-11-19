@interface THWReviewChoice
- (TSUImage)contentImage;
- (TSWPStorage)contentStorage;
- (void)dealloc;
- (void)setContent:(id)a3;
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
  v3 = [(THWReviewChoice *)self contentType];
  if (![(NSString *)v3 isEqualToString:TSWReviewChoiceDescriptionContentTypeTextValue])
  {
    return 0;
  }

  objc_opt_class();
  [(THWReviewChoice *)self content];

  return TSUDynamicCast();
}

- (TSUImage)contentImage
{
  v3 = [(THWReviewChoice *)self contentType];
  if (![(NSString *)v3 isEqualToString:TSWReviewChoiceDescriptionContentTypeImageValue])
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

- (void)setContent:(id)a3
{
  content = self->_content;
  if (content != a3)
  {

    self->_content = a3;
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