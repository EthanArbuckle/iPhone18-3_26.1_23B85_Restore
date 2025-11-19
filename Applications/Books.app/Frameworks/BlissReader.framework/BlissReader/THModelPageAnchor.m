@interface THModelPageAnchor
- (THModelPageAnchor)initWithContentNode:(id)a3 relativePageIndex:(unint64_t)a4 presentationType:(id)a5;
- (unint64_t)absolutePageIndex;
- (void)dealloc;
@end

@implementation THModelPageAnchor

- (THModelPageAnchor)initWithContentNode:(id)a3 relativePageIndex:(unint64_t)a4 presentationType:(id)a5
{
  v10.receiver = self;
  v10.super_class = THModelPageAnchor;
  v7 = [(THModelBoundAnchor *)&v10 initWithContentNode:a3];
  v8 = v7;
  if (v7)
  {
    [(THModelPageAnchor *)v7 setRelativePageIndex:a4];
    [(THModelPageAnchor *)v8 setPresentationType:a5];
  }

  return v8;
}

- (void)dealloc
{
  [(THModelPageAnchor *)self setPresentationType:0];
  v3.receiver = self;
  v3.super_class = THModelPageAnchor;
  [(THModelBoundAnchor *)&v3 dealloc];
}

- (unint64_t)absolutePageIndex
{
  if (![(THPresentationType *)[(THModelPageAnchor *)self presentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [(THModelBoundAnchor *)self contentNode];
  v4 = [(THModelPageAnchor *)self relativePageIndex];
  v5 = [(THModelPageAnchor *)self presentationType];

  return [(THModelNode *)v3 absolutePageIndexForRelativePageIndex:v4 forPresentationType:v5];
}

@end