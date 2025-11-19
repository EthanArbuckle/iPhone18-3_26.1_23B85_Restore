@interface TopBannerItem
- (TopBannerItem)initWithType:(unint64_t)a3 layout:(int64_t)a4 userInfo:(id)a5 attributedString:(id)a6 icon:(id)a7 buttonText:(id)a8 buttonAction:(id)a9;
- (TopBannerItem)initWithType:(unint64_t)a3 layout:(int64_t)a4 userInfo:(id)a5 attributedString:(id)a6 iconURL:(id)a7 buttonText:(id)a8 buttonAction:(id)a9 iconProcessingHandler:(id)a10;
- (void)downloadImage;
@end

@implementation TopBannerItem

- (void)downloadImage
{
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v4 = [NSURLSession sessionWithConfiguration:v3];

  objc_initWeak(&location, self);
  v5 = [(TopBannerItem *)self artworkURL];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100ACB4E0;
  v11 = &unk_101637420;
  objc_copyWeak(&v12, &location);
  v6 = [v4 dataTaskWithURL:v5 completionHandler:&v8];
  [(TopBannerItem *)self setUrlSessionTask:v6, v8, v9, v10, v11];

  v7 = [(TopBannerItem *)self urlSessionTask];
  [v7 resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (TopBannerItem)initWithType:(unint64_t)a3 layout:(int64_t)a4 userInfo:(id)a5 attributedString:(id)a6 iconURL:(id)a7 buttonText:(id)a8 buttonAction:(id)a9 iconProcessingHandler:(id)a10
{
  v16 = a7;
  v17 = a10;
  v18 = [(TopBannerItem *)self initWithType:a3 layout:a4 userInfo:a5 attributedString:a6 icon:0 buttonText:a8 buttonAction:a9];
  if (v18)
  {
    v19 = [v16 copy];
    artworkURL = v18->_artworkURL;
    v18->_artworkURL = v19;

    v21 = [v17 copy];
    iconProcessingHandler = v18->_iconProcessingHandler;
    v18->_iconProcessingHandler = v21;

    [(TopBannerItem *)v18 downloadImage];
  }

  return v18;
}

- (TopBannerItem)initWithType:(unint64_t)a3 layout:(int64_t)a4 userInfo:(id)a5 attributedString:(id)a6 icon:(id)a7 buttonText:(id)a8 buttonAction:(id)a9
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v30.receiver = self;
  v30.super_class = TopBannerItem;
  v21 = [(TopBannerItem *)&v30 init];
  v22 = v21;
  if (v21)
  {
    v21->_itemType = a3;
    v21->_layout = a4;
    objc_storeStrong(&v21->_userInfo, a5);
    v22->_maxNumberOfLines = 2;
    v23 = [v17 copy];
    attributedText = v22->_attributedText;
    v22->_attributedText = v23;

    objc_storeStrong(&v22->_artwork, a7);
    v25 = [v19 copy];
    buttonText = v22->_buttonText;
    v22->_buttonText = v25;

    v27 = [v20 copy];
    buttonAction = v22->_buttonAction;
    v22->_buttonAction = v27;
  }

  return v22;
}

@end