@interface SearchResultCell
+ (id)cellWithSearchResult:(id)result order:(int64_t)order mapType:(unint64_t)type;
- (CGPoint)transformedPoint:(CGAffineTransform *)point;
- (CGRect)frame;
- (SearchResultCell)initWithSearchResult:(id)result order:(int64_t)order mapType:(unint64_t)type;
- (double)_textLayoutHeight;
- (id)snapshotBlock;
- (void)_drawPinInRect:(CGRect)rect zoomLevel:(double)level;
- (void)dealloc;
- (void)drawInRect:(CGRect)rect;
- (void)releaseSnapshotCreator;
@end

@implementation SearchResultCell

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)transformedPoint:(CGAffineTransform *)point
{
  searchResult = [(SearchResultCell *)self searchResult];
  [searchResult coordinate];
  v5 = MKMapPointForCoordinate(v8);

  v6 = vmlaq_n_f64(vmlaq_n_f64(*&point->tx, *&point->a, v5.x), *&point->c, v5.y);
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

- (void)dealloc
{
  [(SearchResultCell *)self releaseSnapshotCreator];
  v3.receiver = self;
  v3.super_class = SearchResultCell;
  [(SearchResultCell *)&v3 dealloc];
}

- (void)releaseSnapshotCreator
{
  snapshotter = self->_snapshotter;
  self->_snapshotter = 0;
}

- (id)snapshotBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10075C358;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)drawInRect:(CGRect)rect
{
  v4 = [(SearchResultCell *)self snapshotImage:rect.origin.x];

  if (v4)
  {
    v5 = CGRectGetMinX(self->_frame) + 35.0;
    snapshotImage = [(SearchResultCell *)self snapshotImage];
    [snapshotImage size];
    v8 = v7;
    v10 = v9;

    MinY = CGRectGetMinY(self->_frame);
    v12 = v8 * 0.5;
    v13 = v10 * 0.5;
    snapshotImage2 = [(SearchResultCell *)self snapshotImage];
    [snapshotImage2 drawInRect:{v5, MinY, v12, v13}];

    [(SearchResultCell *)self _drawPinInRect:v5 zoomLevel:MinY, v12, v13, 16.0];
    v15 = +[UIColor lightGrayColor];
    [v15 set];

    v16 = [UIBezierPath bezierPathWithRect:v5, MinY, v12, v13];
    [v16 stroke];
  }

  v17 = CGRectGetMinX(self->_frame) + 135.0;
  v18 = CGRectGetMaxX(self->_frame) - v17;
  Height = CGRectGetHeight(self->_frame);
  v48 = [UIFont systemFontOfSize:13.5];
  v20 = CGRectGetHeight(self->_frame) + 5.0;
  [(SearchResultCell *)self _textLayoutHeight];
  if (v21 > v20)
  {
    v22 = [UIFont systemFontOfSize:11.0];

    v48 = v22;
  }

  [(UIColor *)self->_blueTextColor set];
  v23 = CGRectGetMinY(self->_frame);
  [v48 ascender];
  v25 = v24;
  [v48 capHeight];
  v27 = v26 - v25 + v23;
  mapItem = [(SearchResult *)self->_searchResult mapItem];
  name = [mapItem name];
  [name _maps_sizeWithFont:v48 constrainedToSize:{v18, Height}];
  v31 = v30;
  v33 = v32;

  name2 = [mapItem name];
  [name2 _maps_drawInRect:v48 withFont:{v17, v27, v31, v33}];

  v35 = [UIColor colorWithWhite:0.289999992 alpha:1.0];
  [v35 set];

  v36 = v33 + v27;
  _addressFormattedAsMultilineAddress = [mapItem _addressFormattedAsMultilineAddress];
  [_addressFormattedAsMultilineAddress _maps_sizeWithFont:v48 constrainedToSize:{v18, Height}];
  v39 = v38;
  v41 = v40;

  _addressFormattedAsMultilineAddress2 = [mapItem _addressFormattedAsMultilineAddress];
  [_addressFormattedAsMultilineAddress2 _maps_drawInRect:v48 withFont:{v17, v36, v39, v41}];

  phoneNumber = [mapItem phoneNumber];
  if ([phoneNumber length])
  {
    v44 = [CNPhoneNumber phoneNumberWithStringValue:phoneNumber];
    stringValue = [v44 stringValue];

    if ([stringValue length])
    {
      [stringValue _maps_sizeWithFont:v48 constrainedToSize:{v18, Height}];
      [stringValue _maps_drawInRect:v48 withFont:{v17, v41 + v36, v46, v47}];
    }
  }

  else
  {
    stringValue = phoneNumber;
  }
}

- (double)_textLayoutHeight
{
  MinX = CGRectGetMinX(self->_frame);
  v4 = -135.0 - MinX + CGRectGetMaxX(self->_frame);
  Height = CGRectGetHeight(self->_frame);
  mapItem = [(SearchResult *)self->_searchResult mapItem];
  name = [mapItem name];
  v8 = [UIFont systemFontOfSize:13.5];
  [name _maps_sizeWithFont:v8 constrainedToSize:{v4, Height}];
  v10 = v9;

  _addressFormattedAsMultilineAddress = [mapItem _addressFormattedAsMultilineAddress];
  v12 = [UIFont systemFontOfSize:13.5];
  [_addressFormattedAsMultilineAddress _maps_sizeWithFont:v12 constrainedToSize:{v4, Height}];
  v14 = v13;

  v15 = v14 + v10;
  phoneNumber = [mapItem phoneNumber];
  if ([phoneNumber length])
  {
    v17 = [UIFont systemFontOfSize:13.5];
    [phoneNumber _maps_sizeWithFont:v17 constrainedToSize:{v4, Height}];
    v19 = v18;

    v15 = v19 + v15;
  }

  return v15;
}

- (void)_drawPinInRect:(CGRect)rect zoomLevel:(double)level
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  searchResult = self->_searchResult;
  MKZoomScaleForZoomLevelF();
  [(SearchResult *)searchResult _offsetCoordinate:?];
  MKTilePointForCoordinate();
  v33 = v10;
  v34 = v11;
  snapshotImage = [(SearchResultCell *)self snapshotImage];
  [snapshotImage size];
  v14 = v13;
  v32 = v15;

  [(SearchResult *)self->_searchResult coordinate];
  v16 = MKMapPointForCoordinate(v37);
  MKZoomScaleForZoomLevelF();
  v18 = v17;
  ty = CGAffineTransformIdentity.ty;
  tx = CGAffineTransformIdentity.tx;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v20 = CGRectGetMinX(v38) - (v33 - v14 * 0.25);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinY = CGRectGetMinY(v39);
  v22 = *&CGAffineTransformIdentity.c;
  *&v35.a = *&CGAffineTransformIdentity.a;
  *&v35.c = v22;
  v35.tx = tx;
  v35.ty = ty;
  CGAffineTransformTranslate(&v36, &v35, v20, MinY - (v34 - v32 * 0.25));
  v35 = v36;
  CGAffineTransformScale(&v36, &v35, v18, v18);
  v23 = v36.tx + v36.a * v16.x + v36.c * v16.y;
  v24 = v36.ty + v36.b * v16.x + v36.d * v16.y;
  [PDFUtilities renderDocumentForType:6 inRect:v23 + -21.2500006, v24 + -55.0, 42.5000012, 50.0];
  [(UIColor *)self->_calloutTextColor set];
  v25 = [NSNumber numberWithInteger:self->_order];
  v26 = [NSNumberFormatter localizedStringFromNumber:v25 numberStyle:0];

  v27 = [UIFont boldSystemFontOfSize:12.0];
  [v26 _maps_sizeWithFont:v27];
  v29 = v28;

  v30 = [UIFont boldSystemFontOfSize:12.0];
  [v26 _maps_drawAtPoint:v30 withFont:{v23 + v29 * -0.5, v24 + -44.0}];
}

- (SearchResultCell)initWithSearchResult:(id)result order:(int64_t)order mapType:(unint64_t)type
{
  resultCopy = result;
  v16.receiver = self;
  v16.super_class = SearchResultCell;
  v9 = [(SearchResultCell *)&v16 init];
  v10 = v9;
  if (v9)
  {
    [(SearchResultCell *)v9 setSearchResult:resultCopy];
    v10->_order = order;
    v11 = [[UIColor alloc] initWithRed:0.254901961 green:0.435294118 blue:0.658823529 alpha:1.0];
    blueTextColor = v10->_blueTextColor;
    v10->_blueTextColor = v11;

    v13 = [[UIColor alloc] initWithRed:0.396078431 green:0.62745098 blue:0.992156863 alpha:1.0];
    calloutTextColor = v10->_calloutTextColor;
    v10->_calloutTextColor = v13;

    v10->_mapType = type;
  }

  return v10;
}

+ (id)cellWithSearchResult:(id)result order:(int64_t)order mapType:(unint64_t)type
{
  resultCopy = result;
  v9 = [[self alloc] initWithSearchResult:resultCopy order:order mapType:type];

  return v9;
}

@end