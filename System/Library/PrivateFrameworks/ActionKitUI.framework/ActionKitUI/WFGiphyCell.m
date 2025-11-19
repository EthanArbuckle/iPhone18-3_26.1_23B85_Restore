@interface WFGiphyCell
- (NSURLSessionDataTask)dataTask;
- (UIActivityIndicatorView)indicatorView;
- (UIImageView)imageView;
- (UIImageView)selectedImageView;
- (WFGiphyCell)initWithFrame:(CGRect)a3;
- (WFGiphyObject)object;
- (void)layoutSubviews;
- (void)setObject:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation WFGiphyCell

- (WFGiphyObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (NSURLSessionDataTask)dataTask
{
  WeakRetained = objc_loadWeakRetained(&self->_dataTask);

  return WeakRetained;
}

- (UIImageView)selectedImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedImageView);

  return WeakRetained;
}

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (UIActivityIndicatorView)indicatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorView);

  return WeakRetained;
}

- (void)setObject:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v6 = [WeakRetained isEqual:v4];

  objc_storeWeak(&self->_object, v4);
  if ((v6 & 1) == 0)
  {
    v7 = [(WFGiphyCell *)self dataTask];
    [v7 cancel];

    v8 = [v4 images];
    v9 = [v8 objectForKey:@"fixed_width_downsampled"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [v4 images];
      v13 = [v12 objectForKey:@"fixed_width_downsampled"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v4 originalImage];
      }

      v11 = v15;
    }

    v16 = [v11 cachedImage];
    v17 = [v16 UIImage];
    v18 = [(WFGiphyCell *)self imageView];
    [v18 setImage:v17];

    v19 = [v11 cachedImage];

    if (!v19)
    {
      v20 = [(WFGiphyCell *)self indicatorView];
      [v20 startAnimating];

      v21 = [MEMORY[0x277CCAD30] wf_sharedSession];
      v22 = [v11 url];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __25__WFGiphyCell_setObject___block_invoke;
      v24[3] = &unk_278C376B8;
      v24[4] = self;
      v25 = v11;
      v26 = v4;
      v11 = v11;
      v23 = [v21 dataTaskWithURL:v22 completionHandler:v24];

      [(WFGiphyCell *)self setDataTask:v23];
      [v23 resume];
    }
  }
}

void __25__WFGiphyCell_setObject___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D79FC8] imageWithData:a2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__WFGiphyCell_setObject___block_invoke_2;
  v6[3] = &unk_278C37690;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __25__WFGiphyCell_setObject___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) indicatorView];
  [v2 stopAnimating];

  [*(a1 + 40) setCachedImage:*(a1 + 48)];
  v3 = [*(a1 + 32) object];
  v4 = [v3 isEqual:*(a1 + 56)];

  if (v4)
  {
    v6 = [*(a1 + 48) UIImage];
    v5 = [*(a1 + 32) imageView];
    [v5 setImage:v6];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = WFGiphyCell;
  [(WFGiphyCell *)&v6 setSelected:?];
  v5 = [(WFGiphyCell *)self selectedImageView];
  [v5 setHidden:!v3];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = WFGiphyCell;
  [(WFGiphyCell *)&v25 layoutSubviews];
  v3 = [(WFGiphyCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(WFGiphyCell *)self imageView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(WFGiphyCell *)self selectedImageView];
  [v13 setFrame:{v5, v7, v9, v11}];

  v14 = *MEMORY[0x277CBF348];
  v15 = *(MEMORY[0x277CBF348] + 8);
  v16 = [(WFGiphyCell *)self indicatorView];
  [v16 intrinsicContentSize];
  v18 = v17;
  v20 = v19;
  v21 = [(WFGiphyCell *)self indicatorView];
  [v21 setBounds:{v14, v15, v18, v20}];

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  MidY = CGRectGetMidY(v27);
  v24 = [(WFGiphyCell *)self indicatorView];
  [v24 setCenter:{MidX, MidY}];
}

- (WFGiphyCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = WFGiphyCell;
  v7 = [(WFGiphyCell *)&v15 initWithFrame:?];
  if (v7)
  {
    if (initWithFrame__onceToken != -1)
    {
      dispatch_once(&initWithFrame__onceToken, &__block_literal_global_5776);
    }

    v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v9 = [(WFGiphyCell *)v7 contentView];
    [v9 addSubview:v8];

    [(WFGiphyCell *)v7 setIndicatorView:v8];
    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{x, y, width, height}];
    v11 = [(WFGiphyCell *)v7 contentView];
    [v11 addSubview:v10];

    [(WFGiphyCell *)v7 setImageView:v10];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{x, y, width, height}];
    [v12 setHidden:1];
    [v12 setImage:initWithFrame__selectedImage];
    v13 = [(WFGiphyCell *)v7 contentView];
    [v13 addSubview:v12];

    [(WFGiphyCell *)v7 setSelectedImageView:v12];
  }

  return v7;
}

void __29__WFGiphyCell_initWithFrame___block_invoke()
{
  v11.width = 38.0;
  v11.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v9 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, 38.0, 38.0}];
  v0 = MEMORY[0x277D75208];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 38.0;
  v12.size.height = 38.0;
  v13 = CGRectInset(v12, 7.0, 7.0);
  v1 = [v0 bezierPathWithOvalInRect:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
  v2 = [MEMORY[0x277D75208] bezierPath];
  [v2 moveToPoint:{13.0, 19.0}];
  [v2 addLineToPoint:{17.0, 23.0}];
  [v2 addLineToPoint:{25.0, 16.0}];
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.300000012];
  [v3 setFill];

  [v9 fill];
  v4 = [MEMORY[0x277D75348] colorWithRed:0.071 green:0.337 blue:0.843 alpha:1.0];
  [v4 setFill];

  [v1 fill];
  v5 = [MEMORY[0x277D75348] whiteColor];
  [v5 setStroke];

  [v1 stroke];
  [v2 stroke];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  v7 = [v6 resizableImageWithCapInsets:{0.0, 0.0, 34.0, 34.0}];
  v8 = initWithFrame__selectedImage;
  initWithFrame__selectedImage = v7;

  UIGraphicsEndImageContext();
}

@end