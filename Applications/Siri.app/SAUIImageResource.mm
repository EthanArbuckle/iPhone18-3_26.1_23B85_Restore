@interface SAUIImageResource
- (id)_convertedImageOfSize:(CGSize)size;
@end

@implementation SAUIImageResource

- (id)_convertedImageOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  resourceUrl = [(SAUIImageResource *)self resourceUrl];
  if (resourceUrl)
  {
    v7 = objc_alloc_init(SFURLImage);
    [v7 setUrlValue:resourceUrl];
  }

  else
  {
    v7 = 0;
  }

  [v7 setSize:{width, height}];
  [v7 setCornerRoundingStyle:2];
  [(SAUIImageResource *)self scaleFactor];
  [v7 setScale:?];

  return v7;
}

@end