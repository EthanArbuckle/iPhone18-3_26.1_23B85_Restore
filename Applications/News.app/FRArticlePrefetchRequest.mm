@interface FRArticlePrefetchRequest
- (void)addPrefetchOperationsToOrderedSet:(id)set;
@end

@implementation FRArticlePrefetchRequest

- (void)addPrefetchOperationsToOrderedSet:(id)set
{
  setCopy = set;
  headline = [(FRArticlePrefetchRequest *)self headline];
  contentType = [headline contentType];

  if (contentType == 1)
  {
    v8 = &off_1000C0A20;
    v18 = 4;
    goto LABEL_6;
  }

  v7 = setCopy;
  if (contentType == 2)
  {
    v8 = off_1000C0A18;
    v9 = [FRFlintArticlePrefetchOperation alloc];
    headline2 = [(FRArticlePrefetchRequest *)self headline];
    v11 = [(FRArticlePrefetchOperation *)v9 initWithHeadline:headline2 component:0 priority:[(FRArticlePrefetchRequest *)self priority]];
    [setCopy addObject:v11];

    v12 = [FRFlintArticlePrefetchOperation alloc];
    headline3 = [(FRArticlePrefetchRequest *)self headline];
    v14 = [(FRArticlePrefetchOperation *)v12 initWithHeadline:headline3 component:1 priority:[(FRArticlePrefetchRequest *)self priority]];
    [setCopy addObject:v14];

    v15 = [FRFlintArticlePrefetchOperation alloc];
    headline4 = [(FRArticlePrefetchRequest *)self headline];
    v17 = [(FRArticlePrefetchOperation *)v15 initWithHeadline:headline4 component:2 priority:[(FRArticlePrefetchRequest *)self priority]];
    [setCopy addObject:v17];

    options = [(FRArticlePrefetchRequest *)self options];
    v7 = setCopy;
    if (options)
    {
      v18 = 3;
LABEL_6:
      v19 = objc_alloc(*v8);
      headline5 = [(FRArticlePrefetchRequest *)self headline];
      v21 = [v19 initWithHeadline:headline5 component:v18 priority:{-[FRArticlePrefetchRequest priority](self, "priority")}];
      [setCopy addObject:v21];

      v7 = setCopy;
    }
  }

  _objc_release_x1(options, v7);
}

@end