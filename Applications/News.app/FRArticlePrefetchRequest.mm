@interface FRArticlePrefetchRequest
- (void)addPrefetchOperationsToOrderedSet:(id)a3;
@end

@implementation FRArticlePrefetchRequest

- (void)addPrefetchOperationsToOrderedSet:(id)a3
{
  v22 = a3;
  v4 = [(FRArticlePrefetchRequest *)self headline];
  v5 = [v4 contentType];

  if (v5 == 1)
  {
    v8 = &off_1000C0A20;
    v18 = 4;
    goto LABEL_6;
  }

  v7 = v22;
  if (v5 == 2)
  {
    v8 = off_1000C0A18;
    v9 = [FRFlintArticlePrefetchOperation alloc];
    v10 = [(FRArticlePrefetchRequest *)self headline];
    v11 = [(FRArticlePrefetchOperation *)v9 initWithHeadline:v10 component:0 priority:[(FRArticlePrefetchRequest *)self priority]];
    [v22 addObject:v11];

    v12 = [FRFlintArticlePrefetchOperation alloc];
    v13 = [(FRArticlePrefetchRequest *)self headline];
    v14 = [(FRArticlePrefetchOperation *)v12 initWithHeadline:v13 component:1 priority:[(FRArticlePrefetchRequest *)self priority]];
    [v22 addObject:v14];

    v15 = [FRFlintArticlePrefetchOperation alloc];
    v16 = [(FRArticlePrefetchRequest *)self headline];
    v17 = [(FRArticlePrefetchOperation *)v15 initWithHeadline:v16 component:2 priority:[(FRArticlePrefetchRequest *)self priority]];
    [v22 addObject:v17];

    v6 = [(FRArticlePrefetchRequest *)self options];
    v7 = v22;
    if (v6)
    {
      v18 = 3;
LABEL_6:
      v19 = objc_alloc(*v8);
      v20 = [(FRArticlePrefetchRequest *)self headline];
      v21 = [v19 initWithHeadline:v20 component:v18 priority:{-[FRArticlePrefetchRequest priority](self, "priority")}];
      [v22 addObject:v21];

      v7 = v22;
    }
  }

  _objc_release_x1(v6, v7);
}

@end