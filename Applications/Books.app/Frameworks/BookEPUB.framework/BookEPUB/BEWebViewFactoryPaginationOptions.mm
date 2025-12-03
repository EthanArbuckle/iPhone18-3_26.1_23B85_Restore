@interface BEWebViewFactoryPaginationOptions
- (BEWebViewFactoryPaginationOptions)initWithMode:(unint64_t)mode usePaginationLineGrid:(BOOL)grid respectPageBreaks:(BOOL)breaks isHorizontalScroll:(BOOL)scroll contentLayoutSize:(CGSize)size gapBetweenPages:(double)pages viewportWidth:(double)width fixedLayoutSize:(CGSize)self0 pageLength:(double)self1 fontSize:(double)self2 developerExtrasEnabled:(BOOL)self3;
- (BOOL)isEqual:(id)equal;
- (CGSize)contentLayoutSize;
- (CGSize)fixedLayoutSize;
- (double)scrollPageLength;
- (id)dictionaryRepresentation;
- (id)jsonRepresentation;
- (int64_t)wkPaginationMode;
- (void)applyToWebView:(id)view;
@end

@implementation BEWebViewFactoryPaginationOptions

- (BEWebViewFactoryPaginationOptions)initWithMode:(unint64_t)mode usePaginationLineGrid:(BOOL)grid respectPageBreaks:(BOOL)breaks isHorizontalScroll:(BOOL)scroll contentLayoutSize:(CGSize)size gapBetweenPages:(double)pages viewportWidth:(double)width fixedLayoutSize:(CGSize)self0 pageLength:(double)self1 fontSize:(double)self2 developerExtrasEnabled:(BOOL)self3
{
  height = layoutSize.height;
  width = layoutSize.width;
  v23 = size.height;
  v24 = size.width;
  v27.receiver = self;
  v27.super_class = BEWebViewFactoryPaginationOptions;
  result = [(BEWebViewFactoryPaginationOptions *)&v27 init];
  if (result)
  {
    result->_mode = mode;
    result->_usePaginationLineGrid = grid;
    result->_respectPageBreaks = breaks;
    result->_isHorizontalScroll = scroll;
    result->_contentLayoutSize.width = v24;
    result->_contentLayoutSize.height = v23;
    result->_gapBetweenPages = pages;
    result->_viewportWidth = width;
    result->_fixedLayoutSize.width = width;
    result->_fixedLayoutSize.height = height;
    result->_pageLength = length;
    result->_fontSize = fontSize;
    result->_developerExtrasEnabled = enabled;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  mode = [(BEWebViewFactoryPaginationOptions *)v5 mode];
  if (mode != [(BEWebViewFactoryPaginationOptions *)self mode])
  {
    goto LABEL_7;
  }

  usePaginationLineGrid = [(BEWebViewFactoryPaginationOptions *)v5 usePaginationLineGrid];
  if (usePaginationLineGrid != [(BEWebViewFactoryPaginationOptions *)self usePaginationLineGrid])
  {
    goto LABEL_7;
  }

  respectPageBreaks = [(BEWebViewFactoryPaginationOptions *)v5 respectPageBreaks];
  if (respectPageBreaks != [(BEWebViewFactoryPaginationOptions *)self respectPageBreaks])
  {
    goto LABEL_7;
  }

  isHorizontalScroll = [(BEWebViewFactoryPaginationOptions *)v5 isHorizontalScroll];
  if (isHorizontalScroll != [(BEWebViewFactoryPaginationOptions *)self isHorizontalScroll])
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
  mode = [(BEWebViewFactoryPaginationOptions *)self mode];
  result = 0.0;
  if (!mode)
  {
    isHorizontalScroll = [(BEWebViewFactoryPaginationOptions *)self isHorizontalScroll];
    [(BEWebViewFactoryPaginationOptions *)self contentLayoutSize];
    if (!isHorizontalScroll)
    {
      return v6;
    }
  }

  return result;
}

- (void)applyToWebView:(id)view
{
  viewCopy = view;
  [viewCopy _setPaginationMode:{-[BEWebViewFactoryPaginationOptions wkPaginationMode](self, "wkPaginationMode")}];
  [viewCopy _setPageLength:self->_pageLength];
  [viewCopy _setGapBetweenPages:self->_gapBetweenPages];
  [viewCopy _setPaginationBehavesLikeColumns:!self->_respectPageBreaks];
  [viewCopy _setPaginationLineGridEnabled:self->_usePaginationLineGrid];
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
  dictionaryRepresentation = [(BEWebViewFactoryPaginationOptions *)self dictionaryRepresentation];
  v6 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:dictionaryRepresentation options:0 error:&v6];

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