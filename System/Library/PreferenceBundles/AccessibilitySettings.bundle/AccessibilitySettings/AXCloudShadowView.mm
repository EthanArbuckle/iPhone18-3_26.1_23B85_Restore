@interface AXCloudShadowView
- (AXCloudShadowView)initWithFrame:(CGRect)frame;
- (id)resizableShadowImage;
- (void)layoutSubviews;
@end

@implementation AXCloudShadowView

- (AXCloudShadowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = AXCloudShadowView;
  v3 = [(AXCloudShadowView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  resizableShadowImage = [(AXCloudShadowView *)v3 resizableShadowImage];
  v5 = [[UIImageView alloc] initWithImage:resizableShadowImage];
  imageView = v3->_imageView;
  v3->_imageView = v5;

  [(AXCloudShadowView *)v3 addSubview:v3->_imageView];
  return v3;
}

- (void)layoutSubviews
{
  [(AXCloudShadowView *)self bounds];
  imageView = self->_imageView;

  [(UIImageView *)imageView setFrame:?];
}

- (id)resizableShadowImage
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;
  v31.width = 39.0;
  v31.height = 39.0;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v4);

  CurrentContext = UIGraphicsGetCurrentContext();
  Mutable = CGPathCreateMutable();
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 39.0;
  v33.size.height = 39.0;
  v34 = CGRectInset(v33, 0.0, 0.0);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  CGPathMoveToPoint(Mutable, 0, v34.origin.x, 0.0);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MaxX = CGRectGetMaxX(v35);
  CGPathAddLineToPoint(Mutable, 0, MaxX, 0.0);
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = 39.0;
  v36.size.height = 39.0;
  v12 = CGRectGetMaxX(v36);
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = 39.0;
  v37.size.height = 39.0;
  v13 = CGRectGetMaxX(v37);
  CGPathAddArcToPoint(Mutable, 0, v12, 0.0, v13, y, 0.0);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = 39.0;
  v38.size.height = 39.0;
  v14 = CGRectGetMaxX(v38);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = 39.0;
  v39.size.height = 39.0;
  MaxY = CGRectGetMaxY(v39);
  CGPathAddLineToPoint(Mutable, 0, v14, MaxY);
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = 39.0;
  v40.size.height = 39.0;
  v16 = CGRectGetMaxX(v40);
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = 39.0;
  v41.size.height = 39.0;
  v17 = CGRectGetMaxY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v18 = CGRectGetMaxX(v42);
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = 39.0;
  v43.size.height = 39.0;
  v19 = CGRectGetMaxY(v43);
  CGPathAddArcToPoint(Mutable, 0, v16, v17, v18, v19, 0.0);
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = 39.0;
  v44.size.height = 39.0;
  v20 = CGRectGetMaxY(v44);
  CGPathAddLineToPoint(Mutable, 0, x, v20);
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = 39.0;
  v45.size.height = 39.0;
  v21 = CGRectGetMaxY(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v22 = CGRectGetMaxY(v46);
  CGPathAddArcToPoint(Mutable, 0, 0.0, v21, 0.0, v22, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 0.0, y);
  CGPathAddArcToPoint(Mutable, 0, 0.0, 0.0, x, 0.0, 0.0);
  CGPathCloseSubpath(Mutable);
  v23 = +[UIColor clearColor];
  [v23 setFill];
  CGContextAddPath(CurrentContext, Mutable);
  CGContextFillPath(CurrentContext);
  v24 = CGPathCreateMutable();
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = 39.0;
  v47.size.height = 39.0;
  v48 = CGRectInset(v47, -40.0, -40.0);
  CGPathAddRect(v24, 0, v48);
  CGPathAddPath(v24, 0, Mutable);
  CGPathCloseSubpath(v24);
  CGContextAddPath(CurrentContext, Mutable);
  CGContextClip(CurrentContext);
  v25 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.600000024];

  CGContextSaveGState(CurrentContext);
  cGColor = [v25 CGColor];
  v32.width = 0.0;
  v32.height = 1.0;
  CGContextSetShadowWithColor(CurrentContext, v32, 18.0, cGColor);
  [v25 setFill];
  CGContextSaveGState(CurrentContext);
  CGContextAddPath(CurrentContext, v24);
  CGContextEOFillPath(CurrentContext);
  CGPathRelease(v24);
  CGPathRelease(Mutable);
  v27 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v28 = [v27 resizableImageWithCapInsets:{19.0, 19.0, 19.0, 19.0}];

  return v28;
}

@end