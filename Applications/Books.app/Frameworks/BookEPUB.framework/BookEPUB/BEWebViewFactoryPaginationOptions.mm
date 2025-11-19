@interface BEWebViewFactoryPaginationOptions
- (BEWebViewFactoryPaginationOptions)initWithMode:(unint64_t)a3 usePaginationLineGrid:(BOOL)a4 respectPageBreaks:(BOOL)a5 isHorizontalScroll:(BOOL)a6 contentLayoutSize:(CGSize)a7 gapBetweenPages:(double)a8 viewportWidth:(double)a9 fixedLayoutSize:(CGSize)a10 pageLength:(double)a11 fontSize:(double)a12 developerExtrasEnabled:(BOOL)a13;
- (BOOL)isEqual:(id)a3;
- (CGSize)contentLayoutSize;
- (CGSize)fixedLayoutSize;
- (double)scrollPageLength;
- (id)dictionaryRepresentation;
- (id)jsonRepresentation;
- (int64_t)wkPaginationMode;
- (void)applyToWebView:(id)a3;
@end

@implementation BEWebViewFactoryPaginationOptions

- (BEWebViewFactoryPaginationOptions)initWithMode:(unint64_t)a3 usePaginationLineGrid:(BOOL)a4 respectPageBreaks:(BOOL)a5 isHorizontalScroll:(BOOL)a6 contentLayoutSize:(CGSize)a7 gapBetweenPages:(double)a8 viewportWidth:(double)a9 fixedLayoutSize:(CGSize)a10 pageLength:(double)a11 fontSize:(double)a12 developerExtrasEnabled:(BOOL)a13
{
  height = a10.height;
  width = a10.width;
  v23 = a7.height;
  v24 = a7.width;
  v27.receiver = self;
  v27.super_class = BEWebViewFactoryPaginationOptions;
  result = [(BEWebViewFactoryPaginationOptions *)&v27 init];
  if (result)
  {
    result->_mode = a3;
    result->_usePaginationLineGrid = a4;
    result->_respectPageBreaks = a5;
    result->_isHorizontalScroll = a6;
    result->_contentLayoutSize.width = v24;
    result->_contentLayoutSize.height = v23;
    result->_gapBetweenPages = a8;
    result->_viewportWidth = a9;
    result->_fixedLayoutSize.width = width;
    result->_fixedLayoutSize.height = height;
    result->_pageLength = a11;
    result->_fontSize = a12;
    result->_developerExtrasEnabled = a13;
  }

  return result;
}

- (int64_t)wkPaginationMode
{
  mode = self->_mode;
  v3 = mode - 2;
  v4 = mode - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (!v5)
  {
    goto LABEL_7;
  }

  if (v5 == self)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v6 = [(BEWebViewFactoryPaginationOptions *)v5 mode];
  if (v6 != [(BEWebViewFactoryPaginationOptions *)self mode])
  {
    goto LABEL_7;
  }

  v7 = [(BEWebViewFactoryPaginationOptions *)v5 usePaginationLineGrid];
  if (v7 != [(BEWebViewFactoryPaginationOptions *)self usePaginationLineGrid])
  {
    goto LABEL_7;
  }

  v8 = [(BEWebViewFactoryPaginationOptions *)v5 respectPageBreaks];
  if (v8 != [(BEWebViewFactoryPaginationOptions *)self respectPageBreaks])
  {
    goto LABEL_7;
  }

  v9 = [(BEWebViewFactoryPaginationOptions *)v5 isHorizontalScroll];
  if (v9 != [(BEWebViewFactoryPaginationOptions *)self isHorizontalScroll])
  {
    goto LABEL_7;
  }

  [(BEWebViewFactoryPaginationOptions *)v5 contentLayoutSize];
  v13 = v12;
  v15 = v14;
  [(BEWebViewFactoryPaginationOptions *)self contentLayoutSize];
  v10 = 0;
  if (v13 == v17 && v15 == v16)
  {
    [(BEWebViewFactoryPaginationOptions *)v5 gapBetweenPages];
    v19 = v18;
    [(BEWebViewFactoryPaginationOptions *)self gapBetweenPages];
    if (v19 != v20 || ([(BEWebViewFactoryPaginationOptions *)v5 viewportWidth], v22 = v21, [(BEWebViewFactoryPaginationOptions *)self viewportWidth], v22 != v23))
    {
LABEL_7:
      v10 = 0;
      goto LABEL_9;
    }

    [(BEWebViewFactoryPaginationOptions *)v5 fixedLayoutSize];
    v25 = v24;
    v27 = v26;
    [(BEWebViewFactoryPaginationOptions *)self fixedLayoutSize];
    v10 = 0;
    if (v25 == v29 && v27 == v28)
    {
      [(BEWebViewFactoryPaginationOptions *)v5 pageLength];
      v31 = v30;
      [(BEWebViewFactoryPaginationOptions *)self pageLength];
      v10 = v31 == v32;
    }
  }

LABEL_9:

  return v10;
}

- (double)scrollPageLength
{
  v3 = [(BEWebViewFactoryPaginationOptions *)self mode];
  result = 0.0;
  if (!v3)
  {
    v5 = [(BEWebViewFactoryPaginationOptions *)self isHorizontalScroll];
    [(BEWebViewFactoryPaginationOptions *)self contentLayoutSize];
    if (!v5)
    {
      return v6;
    }
  }

  return result;
}

- (void)applyToWebView:(id)a3
{
  v4 = a3;
  [v4 _setPaginationMode:{-[BEWebViewFactoryPaginationOptions wkPaginationMode](self, "wkPaginationMode")}];
  [v4 _setPageLength:self->_pageLength];
  [v4 _setGapBetweenPages:self->_gapBetweenPages];
  [v4 _setPaginationBehavesLikeColumns:!self->_respectPageBreaks];
  [v4 _setPaginationLineGridEnabled:self->_usePaginationLineGrid];
}

- (CGSize)contentLayoutSize
{
  width = self->_contentLayoutSize.width;
  height = self->_contentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)fixedLayoutSize
{
  width = self->_fixedLayoutSize.width;
  height = self->_fixedLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"pageLength";
  [(BEWebViewFactoryPaginationOptions *)self pageLength];
  v3 = [NSNumber numberWithDouble:?];
  v9[0] = v3;
  v8[1] = @"gapBetweenPages";
  [(BEWebViewFactoryPaginationOptions *)self gapBetweenPages];
  v4 = [NSNumber numberWithDouble:?];
  v9[1] = v4;
  v8[2] = @"mode";
  v5 = [NSNumber numberWithUnsignedInteger:[(BEWebViewFactoryPaginationOptions *)self mode]];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(BEWebViewFactoryPaginationOptions *)self dictionaryRepresentation];
  v6 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:v2 options:0 error:&v6];

  if ([v3 length])
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end