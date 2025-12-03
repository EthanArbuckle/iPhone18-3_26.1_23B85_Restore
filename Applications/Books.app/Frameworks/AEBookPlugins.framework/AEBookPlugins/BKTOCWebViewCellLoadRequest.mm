@interface BKTOCWebViewCellLoadRequest
+ (BKTOCWebViewCellLoadRequest)loadRequestWithContents:(id)contents template:(id)template fontFamily:(id)family fontSize:(double)size maxSpan:(double)span textColor:(id)color selectedColor:(id)selectedColor backgroundColor:(id)self0 baseURL:(id)self1 forObject:(id)self2;
+ (BKTOCWebViewCellLoadRequest)loadRequestWithHTML:(id)l maxSpan:(double)span selectedColor:(id)color baseURL:(id)rL forObject:(id)object;
+ (id)_generateCacheKey:(id)key maxSpan:(double)span baseURL:(id)l;
- (BKTOCWebViewCellLoadDelegate)requester;
- (BKTOCWebViewCellLoadRequest)initWithHTML:(id)l maxSpan:(double)span selectedColor:(id)color baseURL:(id)rL forObject:(id)object;
- (NSString)cacheKey;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BKTOCWebViewCellLoadRequest

+ (BKTOCWebViewCellLoadRequest)loadRequestWithHTML:(id)l maxSpan:(double)span selectedColor:(id)color baseURL:(id)rL forObject:(id)object
{
  objectCopy = object;
  rLCopy = rL;
  colorCopy = color;
  lCopy = l;
  v15 = [[BKTOCWebViewCellLoadRequest alloc] initWithHTML:lCopy maxSpan:colorCopy selectedColor:rLCopy baseURL:objectCopy forObject:span];

  return v15;
}

+ (BKTOCWebViewCellLoadRequest)loadRequestWithContents:(id)contents template:(id)template fontFamily:(id)family fontSize:(double)size maxSpan:(double)span textColor:(id)color selectedColor:(id)selectedColor backgroundColor:(id)self0 baseURL:(id)self1 forObject:(id)self2
{
  contentsCopy = contents;
  familyCopy = family;
  selectedColorCopy = selectedColor;
  lCopy = l;
  objectCopy = object;
  backgroundColorCopy = backgroundColor;
  templateCopy = template;
  bc_rgbaString = [color bc_rgbaString];
  bc_rgbaString2 = [backgroundColorCopy bc_rgbaString];

  v38[0] = @"contents";
  v38[1] = @"fontFamily";
  v36 = contentsCopy;
  v39[0] = contentsCopy;
  v39[1] = familyCopy;
  v38[2] = @"fontSize";
  v28 = [NSNumber numberWithDouble:size];
  v39[2] = v28;
  v38[3] = @"maxSpan";
  v29 = [NSNumber numberWithDouble:span];
  v39[3] = v29;
  v39[4] = bc_rgbaString;
  v38[4] = @"textColor";
  v38[5] = @"backgroundColor";
  v39[5] = bc_rgbaString2;
  v30 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:6];

  v37 = 0;
  v31 = [templateCopy evaluateWithData:v30 error:&v37];

  v32 = v37;
  if (templateCopy)
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
  v33 = [self loadRequestWithHTML:v31 maxSpan:selectedColorCopy selectedColor:lCopy baseURL:objectCopy forObject:{span, self}];

  return v33;
}

- (NSString)cacheKey
{
  v3 = objc_opt_class();
  htmlContentString = [(BKTOCWebViewCellLoadRequest *)self htmlContentString];
  [(BKTOCWebViewCellLoadRequest *)self span];
  v6 = v5;
  baseURL = [(BKTOCWebViewCellLoadRequest *)self baseURL];
  v8 = [v3 _generateCacheKey:htmlContentString maxSpan:baseURL baseURL:v6];

  return v8;
}

+ (id)_generateCacheKey:(id)key maxSpan:(double)span baseURL:(id)l
{
  lCopy = l;
  keyCopy = key;
  v9 = [NSString alloc];
  v10 = [NSNumber numberWithDouble:span];
  absoluteString = [lCopy absoluteString];

  v12 = [v9 initWithFormat:@"%@-%@-%@", keyCopy, v10, absoluteString];

  return v12;
}

- (BKTOCWebViewCellLoadRequest)initWithHTML:(id)l maxSpan:(double)span selectedColor:(id)color baseURL:(id)rL forObject:(id)object
{
  lCopy = l;
  colorCopy = color;
  rLCopy = rL;
  objectCopy = object;
  v22.receiver = self;
  v22.super_class = BKTOCWebViewCellLoadRequest;
  v16 = [(BKTOCWebViewCellLoadRequest *)&v22 init];
  if (v16)
  {
    v17 = [lCopy copy];
    htmlContentString = v16->_htmlContentString;
    v16->_htmlContentString = v17;

    v16->_span = span;
    objc_storeStrong(&v16->_baseURL, rL);
    objc_storeWeak(&v16->_requester, objectCopy);
    if (colorCopy)
    {
      v19 = colorCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  htmlContentString = [(BKTOCWebViewCellLoadRequest *)self htmlContentString];
  [(BKTOCWebViewCellLoadRequest *)self span];
  v6 = v5;
  selectedColor = [(BKTOCWebViewCellLoadRequest *)self selectedColor];
  baseURL = [(BKTOCWebViewCellLoadRequest *)self baseURL];
  requester = [(BKTOCWebViewCellLoadRequest *)self requester];
  v10 = [BKTOCWebViewCellLoadRequest loadRequestWithHTML:htmlContentString maxSpan:selectedColor selectedColor:baseURL baseURL:requester forObject:v6];

  return v10;
}

- (BKTOCWebViewCellLoadDelegate)requester
{
  WeakRetained = objc_loadWeakRetained(&self->_requester);

  return WeakRetained;
}

@end