@interface MapPageRenderer
- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect;
- (MapPageRenderer)init;
- (id)snapshotBlock;
- (void)dealloc;
- (void)drawOverview;
- (void)drawTopContentInRect:(CGRect)rect forPageAtIndex:(int64_t)index;
- (void)releaseSnapshotCreator;
@end

@implementation MapPageRenderer

- (void)dealloc
{
  [(MapPageRenderer *)self releaseSnapshotCreator];
  v3.receiver = self;
  v3.super_class = MapPageRenderer;
  [(MapPageRenderer *)&v3 dealloc];
}

- (void)releaseSnapshotCreator
{
  snapshotter = self->_snapshotter;
  self->_snapshotter = 0;
}

- (id)snapshotBlock
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007C7EB8;
  v5[3] = &unk_101661340;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = objc_retainBlock(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)drawOverview
{
  [(MapPageRenderer *)self overviewRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  snapshotImage = [(MapPageRenderer *)self snapshotImage];

  if (snapshotImage)
  {
    snapshotImage2 = [(MapPageRenderer *)self snapshotImage];
    [snapshotImage2 drawInRect:{v4, v6, v8, v10}];
  }

  v13 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v13 activeTileGroup];
  attributionsCount = [activeTileGroup attributionsCount];

  if (attributionsCount)
  {
    v16 = +[GEOResourceManifestManager modernManager];
    activeTileGroup2 = [v16 activeTileGroup];
    v18 = [activeTileGroup2 attributionAtIndex:0];
  }

  else
  {
    v18 = 0;
  }

  badge = [v18 badge];
  v20 = [badge length];

  if (v20)
  {
    v21 = +[GEOResourceManager sharedManager];
    badge2 = [v18 badge];
    v23 = [v21 dataForResourceWithName:badge2 fallbackBundle:0];

    v27 = [[UIImage alloc] _initWithData:v23 scale:2.0];
  }

  else
  {
    v27 = 0;
  }

  [v27 size];
  v25 = v24;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v26 = CGRectGetMinX(v29) + 4.0;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  [v27 drawAtPoint:{v26, -1.0 - v25 + CGRectGetMaxY(v30)}];
}

- (void)drawTopContentInRect:(CGRect)rect forPageAtIndex:(int64_t)index
{
  indexCopy = index;
  [(MapPageRenderer *)self paperRect:rect.origin.x];
  v7 = v6;
  rect = v8;
  v10 = v9;
  v12 = v11;
  [PDFUtilities renderDocumentForType:self->_topContentIconType inRect:63.0, 36.0, 27.0, 27.0];
  [(UIColor *)self->_blueTextColor set];
  v13 = [UIFont boldSystemFontOfSize:15.0];
  [v13 ascender];
  v15 = v14;
  [v13 capHeight];
  v17 = v16 - v15;
  v18 = v16 - v15 + 38.0;
  title = self->_title;
  v20 = [UIFont boldSystemFontOfSize:15.0];
  [(NSString *)title _maps_drawAtPoint:v20 withFont:99.0, v18];

  v46 = [UIFont systemFontOfSize:11.0];

  [v46 pointSize];
  v22 = v21;
  if (self->_subTitle)
  {
    v23 = [UIColor colorWithWhite:0.270000011 alpha:1.0];
    [v23 set];

    subTitle = self->_subTitle;
    v25 = [UIFont systemFontOfSize:11.0];
    [(NSString *)subTitle _maps_drawAtPoint:v25 withFont:99.0, 62.0 - v22];
  }

  v26 = [UIColor colorWithWhite:0.670000017 alpha:1.0];
  [v26 set];

  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"Page %1$d of %2$d" value:@"localized string not found" table:0];
  v29 = [NSString localizedStringWithFormat:v28, (indexCopy + 1), [(MapPageRenderer *)self numberOfPages]];

  v30 = [UIFont systemFontOfSize:11.0];
  [v29 _maps_sizeWithFont:v30];
  v32 = v31;

  v49.origin.x = v7;
  v49.origin.y = rect;
  v49.size.width = v10;
  v49.size.height = v12;
  v33 = -63.0 - v32 + CGRectGetMaxX(v49);
  v34 = [UIFont systemFontOfSize:11.0];
  [v29 _maps_drawAtPoint:v34 withFont:{v33, v17 + 42.0}];

  v35 = [UIColor colorWithWhite:0.75 alpha:1.0];
  [v35 set];

  v36 = +[UIDevice currentDevice];
  model = [v36 model];

  if ([model isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(model, "isEqualToString:", @"iPhone Simulator"))
  {
    v38 = @"Printed from my iPhone";
LABEL_6:
    v39 = +[NSBundle mainBundle];
    v40 = [v39 localizedStringForKey:v38 value:@"localized string not found" table:0];

    goto LABEL_7;
  }

  if ([model isEqualToString:@"iPad"] & 1) != 0 || (objc_msgSend(model, "isEqualToString:", @"iPad Simulator"))
  {
    v38 = @"Printed from my iPad";
    goto LABEL_6;
  }

  if ([model isEqualToString:@"iPod touch"])
  {
    v38 = @"Printed from my iPod touch";
    goto LABEL_6;
  }

  v40 = &stru_1016631F0;
LABEL_7:
  v41 = [UIFont systemFontOfSize:8.0];
  [(__CFString *)v40 _maps_sizeWithFont:v41];
  v43 = v42;

  v50.origin.x = v7;
  v50.origin.y = rect;
  v50.size.width = v10;
  v50.size.height = v12;
  v44 = -63.0 - v43 + CGRectGetMaxX(v50);
  v45 = [UIFont systemFontOfSize:8.0];
  [(__CFString *)v40 _maps_drawAtPoint:v45 withFont:v44, 65.0 - v22];
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect
{
  [(MKMapView *)self->_mapView visibleMapRect];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- (MapPageRenderer)init
{
  v6.receiver = self;
  v6.super_class = MapPageRenderer;
  v2 = [(MapPageRenderer *)&v6 init];
  if (v2)
  {
    v3 = [UIColor colorWithRed:0.329411765 green:0.517647059 blue:0.709803922 alpha:1.0];
    [(MapPageRenderer *)v2 setBlueTextColor:v3];

    v4 = [UIColor colorWithRed:0.396078431 green:0.62745098 blue:0.992156863 alpha:1.0];
    [(MapPageRenderer *)v2 setCalloutTextColor:v4];
  }

  return v2;
}

@end