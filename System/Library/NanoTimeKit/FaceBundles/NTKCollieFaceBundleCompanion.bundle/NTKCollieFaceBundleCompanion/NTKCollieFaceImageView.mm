@interface NTKCollieFaceImageView
+ (UIImage)loadingImage;
- (id)image;
- (void)_recomputeContentsRect;
- (void)setImage:(id)a3;
- (void)setLoadingTag:(id)a3;
@end

@implementation NTKCollieFaceImageView

+ (UIImage)loadingImage
{
  v2 = a1;
  objc_sync_enter(v2);
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

  objc_sync_exit(v2);

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
  v8 = [(NTKCollieFaceImageView *)&v19 image];
  [v8 size];
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

  v18 = [(NTKCollieFaceImageView *)self layer];
  [v18 setContentsRect:{0.0, v15, v16, v17}];
}

- (void)setImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKCollieFaceImageView;
  [(NTKCollieFaceImageView *)&v5 setImage:a3];
  [(NTKCollieFaceImageView *)self _recomputeContentsRect];
  loadingTag = self->_loadingTag;
  self->_loadingTag = 0;
}

- (id)image
{
  v5.receiver = self;
  v5.super_class = NTKCollieFaceImageView;
  v2 = [(NTKCollieFaceImageView *)&v5 image];
  if (v2)
  {
    v3 = [objc_opt_class() loadingImage];

    if (v2 == v3)
    {

      v2 = 0;
    }
  }

  return v2;
}

- (void)setLoadingTag:(id)a3
{
  v4 = a3;
  if (v4 && ![(NSString *)self->_loadingTag isEqualToString:v4])
  {
    self->_taggedTime = CACurrentMediaTime();
  }

  loadingTag = self->_loadingTag;
  self->_loadingTag = v4;
}

@end