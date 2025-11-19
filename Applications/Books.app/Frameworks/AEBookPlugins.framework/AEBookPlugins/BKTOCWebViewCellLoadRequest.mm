@interface BKTOCWebViewCellLoadRequest
+ (BKTOCWebViewCellLoadRequest)loadRequestWithContents:(id)a3 template:(id)a4 fontFamily:(id)a5 fontSize:(double)a6 maxSpan:(double)a7 textColor:(id)a8 selectedColor:(id)a9 backgroundColor:(id)a10 baseURL:(id)a11 forObject:(id)a12;
+ (BKTOCWebViewCellLoadRequest)loadRequestWithHTML:(id)a3 maxSpan:(double)a4 selectedColor:(id)a5 baseURL:(id)a6 forObject:(id)a7;
+ (id)_generateCacheKey:(id)a3 maxSpan:(double)a4 baseURL:(id)a5;
- (BKTOCWebViewCellLoadDelegate)requester;
- (BKTOCWebViewCellLoadRequest)initWithHTML:(id)a3 maxSpan:(double)a4 selectedColor:(id)a5 baseURL:(id)a6 forObject:(id)a7;
- (NSString)cacheKey;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BKTOCWebViewCellLoadRequest

+ (BKTOCWebViewCellLoadRequest)loadRequestWithHTML:(id)a3 maxSpan:(double)a4 selectedColor:(id)a5 baseURL:(id)a6 forObject:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [[BKTOCWebViewCellLoadRequest alloc] initWithHTML:v14 maxSpan:v13 selectedColor:v12 baseURL:v11 forObject:a4];

  return v15;
}

+ (BKTOCWebViewCellLoadRequest)loadRequestWithContents:(id)a3 template:(id)a4 fontFamily:(id)a5 fontSize:(double)a6 maxSpan:(double)a7 textColor:(id)a8 selectedColor:(id)a9 backgroundColor:(id)a10 baseURL:(id)a11 forObject:(id)a12
{
  v19 = a3;
  v20 = a5;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v24 = a10;
  v25 = a4;
  v26 = [a8 bc_rgbaString];
  v27 = [v24 bc_rgbaString];

  v38[0] = @"contents";
  v38[1] = @"fontFamily";
  v36 = v19;
  v39[0] = v19;
  v39[1] = v20;
  v38[2] = @"fontSize";
  v28 = [NSNumber numberWithDouble:a6];
  v39[2] = v28;
  v38[3] = @"maxSpan";
  v29 = [NSNumber numberWithDouble:a7];
  v39[3] = v29;
  v39[4] = v26;
  v38[4] = @"textColor";
  v38[5] = @"backgroundColor";
  v39[5] = v27;
  v30 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:6];

  v37 = 0;
  v31 = [v25 evaluateWithData:v30 error:&v37];

  v32 = v37;
  if (v25)
  {
    if (!v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_136D8C();
    if (!v32)
    {
      goto LABEL_3;
    }
  }

  sub_136DC4();
LABEL_3:
  v33 = [a1 loadRequestWithHTML:v31 maxSpan:v21 selectedColor:v22 baseURL:v23 forObject:{a7, a1}];

  return v33;
}

- (NSString)cacheKey
{
  v3 = objc_opt_class();
  v4 = [(BKTOCWebViewCellLoadRequest *)self htmlContentString];
  [(BKTOCWebViewCellLoadRequest *)self span];
  v6 = v5;
  v7 = [(BKTOCWebViewCellLoadRequest *)self baseURL];
  v8 = [v3 _generateCacheKey:v4 maxSpan:v7 baseURL:v6];

  return v8;
}

+ (id)_generateCacheKey:(id)a3 maxSpan:(double)a4 baseURL:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [NSString alloc];
  v10 = [NSNumber numberWithDouble:a4];
  v11 = [v7 absoluteString];

  v12 = [v9 initWithFormat:@"%@-%@-%@", v8, v10, v11];

  return v12;
}

- (BKTOCWebViewCellLoadRequest)initWithHTML:(id)a3 maxSpan:(double)a4 selectedColor:(id)a5 baseURL:(id)a6 forObject:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = BKTOCWebViewCellLoadRequest;
  v16 = [(BKTOCWebViewCellLoadRequest *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    htmlContentString = v16->_htmlContentString;
    v16->_htmlContentString = v17;

    v16->_span = a4;
    objc_storeStrong(&v16->_baseURL, a6);
    objc_storeWeak(&v16->_requester, v15);
    if (v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = +[UIColor lightGrayColor];
    }

    selectedColor = v16->_selectedColor;
    v16->_selectedColor = v19;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(BKTOCWebViewCellLoadRequest *)self htmlContentString];
  [(BKTOCWebViewCellLoadRequest *)self span];
  v6 = v5;
  v7 = [(BKTOCWebViewCellLoadRequest *)self selectedColor];
  v8 = [(BKTOCWebViewCellLoadRequest *)self baseURL];
  v9 = [(BKTOCWebViewCellLoadRequest *)self requester];
  v10 = [BKTOCWebViewCellLoadRequest loadRequestWithHTML:v4 maxSpan:v7 selectedColor:v8 baseURL:v9 forObject:v6];

  return v10;
}

- (BKTOCWebViewCellLoadDelegate)requester
{
  WeakRetained = objc_loadWeakRetained(&self->_requester);

  return WeakRetained;
}

@end