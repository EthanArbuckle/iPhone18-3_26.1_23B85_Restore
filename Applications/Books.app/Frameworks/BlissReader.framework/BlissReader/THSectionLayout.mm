@interface THSectionLayout
- (CGPoint)capturedInfoPositionForAttachment;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (unint64_t)fontSizeForTextSource:(id)a3;
- (void)dealloc;
- (void)setGeometry:(id)a3;
@end

@implementation THSectionLayout

- (void)dealloc
{
  [(THSectionLayout *)self setChildren:+[NSArray array]];
  v3.receiver = self;
  v3.super_class = THSectionLayout;
  [(THSectionLayout *)&v3 dealloc];
}

- (void)setGeometry:(id)a3
{
  if ([-[THSectionLayout info](self "info")])
  {
    v5 = [a3 mutableCopy];
    v6 = *&CGAffineTransformIdentity.c;
    v9[0] = *&CGAffineTransformIdentity.a;
    v9[1] = v6;
    v9[2] = *&CGAffineTransformIdentity.tx;
    [v5 setTransform:v9];
    v8.receiver = self;
    v8.super_class = THSectionLayout;
    [(THSectionLayout *)&v8 setGeometry:v5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = THSectionLayout;
    [(THSectionLayout *)&v7 setGeometry:a3];
  }
}

- (id)computeLayoutGeometry
{
  [objc_msgSend(-[THSectionLayout info](self "info")];
  x = v3;
  y = v5;
  v8 = v7;
  v10 = v9;
  if ([-[THSectionLayout info](self "info")])
  {
    y = CGPointZero.y;
    x = CGPointZero.x;
  }

  v11 = [[TSDLayoutGeometry alloc] initWithFrame:{x, y, v8, v10}];

  return v11;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)dependentLayouts
{
  v6.receiver = self;
  v6.super_class = THSectionLayout;
  v3 = [-[THSectionLayout parent](&v6 "parent")];
  v4 = [v3 indexOfObject:self] + 1;
  if (v4 >= [v3 count])
  {
    return 0;
  }

  else
  {
    return +[NSArray arrayWithObject:](NSArray, "arrayWithObject:", [v3 objectAtIndex:v4]);
  }
}

- (unint64_t)fontSizeForTextSource:(id)a3
{
  v3 = [objc_msgSend(-[THSectionLayout info](self info];

  return [v3 fontSize];
}

@end