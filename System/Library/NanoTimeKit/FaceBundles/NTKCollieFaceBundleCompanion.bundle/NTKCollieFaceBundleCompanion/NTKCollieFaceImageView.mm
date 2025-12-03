@interface NTKCollieFaceImageView
+ (UIImage)loadingImage;
- (id)image;
- (void)_recomputeContentsRect;
- (void)setImage:(id)image;
- (void)setLoadingTag:(id)tag;
@end

@implementation NTKCollieFaceImageView

+ (UIImage)loadingImage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_33280);
  if (!WeakRetained)
  {
    v4 = [UIColor colorWithRed:0.0784313725 green:0.0666666701 blue:0.0823529437 alpha:1.0];
    v5 = [NTKCollieFaceBundle imageWithName:@"loading-head"];
    v6 = [v5 imageWithRenderingMode:2];

    v7 = +[CLKDevice currentDevice];
    [v7 screenBounds];
    v9 = v8;
    v11 = v10;

    v12 = [[UIGraphicsImageRenderer alloc] initWithSize:{v9, v11}];
    v16[1] = 3221225472;
    v16[0] = _NSConcreteStackBlock;
    v16[2] = sub_126D8;
    v16[3] = &unk_2D078;
    v19 = v9;
    v20 = v11;
    v21 = (v9 - v9 * 0.765) * 0.5;
    v22 = (v11 - v9 * 0.765) * 0.5;
    v23 = v9 * 0.765;
    v24 = v9 * 0.765;
    v13 = v6;
    v17 = v13;
    v14 = v4;
    v18 = v14;
    WeakRetained = [v12 imageWithActions:v16];
    objc_storeWeak(&qword_33280, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (void)_recomputeContentsRect
{
  v3 = +[CLKDevice currentDevice];
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;

  v19.receiver = self;
  v19.super_class = NTKCollieFaceImageView;
  image = [(NTKCollieFaceImageView *)&v19 image];
  [image size];
  v10 = v9;
  v12 = v11;

  if (v12 <= 0.0)
  {
    v16 = 1.0;
    v15 = 0.0;
    v17 = 1.0;
  }

  else
  {
    vOffset = self->_vOffset;
    if (v5 == v10 && v7 == v12)
    {
      v16 = 1.0;
      v17 = 1.0;
      v15 = -vOffset / v12;
    }

    else
    {
      v15 = (v12 - v7 - vOffset) / v12;
      v16 = 1.0;
      v17 = 1.0 - v15;
    }
  }

  layer = [(NTKCollieFaceImageView *)self layer];
  [layer setContentsRect:{0.0, v15, v16, v17}];
}

- (void)setImage:(id)image
{
  v5.receiver = self;
  v5.super_class = NTKCollieFaceImageView;
  [(NTKCollieFaceImageView *)&v5 setImage:image];
  [(NTKCollieFaceImageView *)self _recomputeContentsRect];
  loadingTag = self->_loadingTag;
  self->_loadingTag = 0;
}

- (id)image
{
  v5.receiver = self;
  v5.super_class = NTKCollieFaceImageView;
  image = [(NTKCollieFaceImageView *)&v5 image];
  if (image)
  {
    loadingImage = [objc_opt_class() loadingImage];

    if (image == loadingImage)
    {

      image = 0;
    }
  }

  return image;
}

- (void)setLoadingTag:(id)tag
{
  tagCopy = tag;
  if (tagCopy && ![(NSString *)self->_loadingTag isEqualToString:tagCopy])
  {
    self->_taggedTime = CACurrentMediaTime();
  }

  loadingTag = self->_loadingTag;
  self->_loadingTag = tagCopy;
}

@end