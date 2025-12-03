@interface TopBannerItem
- (TopBannerItem)initWithType:(unint64_t)type layout:(int64_t)layout userInfo:(id)info attributedString:(id)string icon:(id)icon buttonText:(id)text buttonAction:(id)action;
- (TopBannerItem)initWithType:(unint64_t)type layout:(int64_t)layout userInfo:(id)info attributedString:(id)string iconURL:(id)l buttonText:(id)text buttonAction:(id)action iconProcessingHandler:(id)self0;
- (void)downloadImage;
@end

@implementation TopBannerItem

- (void)downloadImage
{
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v4 = [NSURLSession sessionWithConfiguration:v3];

  objc_initWeak(&location, self);
  artworkURL = [(TopBannerItem *)self artworkURL];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100ACB4E0;
  v11 = &unk_101637420;
  objc_copyWeak(&v12, &location);
  v6 = [v4 dataTaskWithURL:artworkURL completionHandler:&v8];
  [(TopBannerItem *)self setUrlSessionTask:v6, v8, v9, v10, v11];

  urlSessionTask = [(TopBannerItem *)self urlSessionTask];
  [urlSessionTask resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (TopBannerItem)initWithType:(unint64_t)type layout:(int64_t)layout userInfo:(id)info attributedString:(id)string iconURL:(id)l buttonText:(id)text buttonAction:(id)action iconProcessingHandler:(id)self0
{
  lCopy = l;
  handlerCopy = handler;
  v18 = [(TopBannerItem *)self initWithType:type layout:layout userInfo:info attributedString:string icon:0 buttonText:text buttonAction:action];
  if (v18)
  {
    v19 = [lCopy copy];
    artworkURL = v18->_artworkURL;
    v18->_artworkURL = v19;

    v21 = [handlerCopy copy];
    iconProcessingHandler = v18->_iconProcessingHandler;
    v18->_iconProcessingHandler = v21;

    [(TopBannerItem *)v18 downloadImage];
  }

  return v18;
}

- (TopBannerItem)initWithType:(unint64_t)type layout:(int64_t)layout userInfo:(id)info attributedString:(id)string icon:(id)icon buttonText:(id)text buttonAction:(id)action
{
  infoCopy = info;
  stringCopy = string;
  iconCopy = icon;
  textCopy = text;
  actionCopy = action;
  v30.receiver = self;
  v30.super_class = TopBannerItem;
  v21 = [(TopBannerItem *)&v30 init];
  v22 = v21;
  if (v21)
  {
    v21->_itemType = type;
    v21->_layout = layout;
    objc_storeStrong(&v21->_userInfo, info);
    v22->_maxNumberOfLines = 2;
    v23 = [stringCopy copy];
    attributedText = v22->_attributedText;
    v22->_attributedText = v23;

    objc_storeStrong(&v22->_artwork, icon);
    v25 = [textCopy copy];
    buttonText = v22->_buttonText;
    v22->_buttonText = v25;

    v27 = [actionCopy copy];
    buttonAction = v22->_buttonAction;
    v22->_buttonAction = v27;
  }

  return v22;
}

@end