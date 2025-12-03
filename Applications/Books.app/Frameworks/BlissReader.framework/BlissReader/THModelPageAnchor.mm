@interface THModelPageAnchor
- (THModelPageAnchor)initWithContentNode:(id)node relativePageIndex:(unint64_t)index presentationType:(id)type;
- (unint64_t)absolutePageIndex;
- (void)dealloc;
@end

@implementation THModelPageAnchor

- (THModelPageAnchor)initWithContentNode:(id)node relativePageIndex:(unint64_t)index presentationType:(id)type
{
  v10.receiver = self;
  v10.super_class = THModelPageAnchor;
  v7 = [(THModelBoundAnchor *)&v10 initWithContentNode:node];
  v8 = v7;
  if (v7)
  {
    [(THModelPageAnchor *)v7 setRelativePageIndex:index];
    [(THModelPageAnchor *)v8 setPresentationType:type];
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

  contentNode = [(THModelBoundAnchor *)self contentNode];
  relativePageIndex = [(THModelPageAnchor *)self relativePageIndex];
  presentationType = [(THModelPageAnchor *)self presentationType];

  return [(THModelNode *)contentNode absolutePageIndexForRelativePageIndex:relativePageIndex forPresentationType:presentationType];
}

@end