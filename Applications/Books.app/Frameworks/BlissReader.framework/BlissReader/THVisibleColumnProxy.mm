@interface THVisibleColumnProxy
- (THVisibleColumnProxy)initWithPageIndex:(unint64_t)a3 pageController:(id)a4;
- (_NSRange)anchoredRange;
- (_NSRange)range;
- (const)p_targetFirstHint;
- (const)p_targetLastHint;
- (void)dealloc;
@end

@implementation THVisibleColumnProxy

- (THVisibleColumnProxy)initWithPageIndex:(unint64_t)a3 pageController:(id)a4
{
  v9.receiver = self;
  v9.super_class = THVisibleColumnProxy;
  v6 = [(THVisibleColumnProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mPageIndex = a3;
    v6->mPageController = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THVisibleColumnProxy;
  [(THVisibleColumnProxy *)&v3 dealloc];
}

- (_NSRange)range
{
  v3 = [(THVisibleColumnProxy *)self p_targetFirstHint];
  location = v3->var1.location;
  length = v3->var1.length;
  v6 = *([(THVisibleColumnProxy *)self p_targetLastHint]+ 2);
  v7.location = location;
  v7.length = length;

  v10 = NSUnionRange(v7, v6);
  v9 = v10.length;
  v8 = v10.location;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)anchoredRange
{
  if (![(THVisibleColumnProxy *)self p_targetFirstHint])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THVisibleColumnProxy *)self p_targetLastHint])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [(THVisibleColumnProxy *)self p_targetFirstHint];
  location = v3->var3.location;
  length = v3->var3.length;
  v6 = *([(THVisibleColumnProxy *)self p_targetLastHint]+ 56);
  v7.location = location;
  v7.length = length;

  v10 = NSUnionRange(v7, v6);
  v9 = v10.length;
  v8 = v10.location;
  result.length = v9;
  result.location = v8;
  return result;
}

- (const)p_targetFirstHint
{
  v2 = [(THPageController *)self->mPageController i_pageHintForPageIndex:self->mPageIndex];

  return [v2 firstHint];
}

- (const)p_targetLastHint
{
  v2 = [(THPageController *)self->mPageController i_pageHintForPageIndex:self->mPageIndex];

  return [v2 lastHint];
}

@end