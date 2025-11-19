@interface MCDBrowseItemsContentManager
- (id)itemAtIndexPath:(id)a3;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4;
- (unint64_t)cellTypeAtIndexPath:(id)a3;
@end

@implementation MCDBrowseItemsContentManager

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MCDFuseContentManager *)self contentResults];

  if (v7)
  {
    v8 = [(MCDFuseContentManager *)self contentResults];
    v9 = [v8 numberOfItemsInSection:a4];
    if (v9 < [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay])
    {
      v10 = [(MCDFuseContentManager *)self contentResults];
      v11 = [v10 numberOfItemsInSection:a4];

      goto LABEL_12;
    }

    v18 = [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay];
LABEL_9:
    v11 = v18;
    goto LABEL_12;
  }

  v8 = [v6 request];
  v12 = [v8 loadAdditionalContentURL];

  if (!v12)
  {
    v20.receiver = self;
    v20.super_class = MCDBrowseItemsContentManager;
    v18 = [(MCDGroupingsContentManager *)&v20 allowedNumberOfItemsForDisplayWithResponse:v6 inSection:a4];
    goto LABEL_9;
  }

  v13 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v14 = [v13 results];
  v15 = [v14 numberOfItemsInSection:a4];
  if (v15 >= [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay])
  {
    v11 = [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay];
  }

  else
  {
    v16 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v17 = [v16 results];
    v11 = [v17 numberOfItemsInSection:a4];
  }

LABEL_12:
  return v11;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self contentResults];

  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self contentResults];
    v7 = [v6 itemsInSectionAtIndex:0];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 itemsInSectionAtIndex:0];
      v10 = [v9 objectAtIndexedSubscript:0];
LABEL_7:

      goto LABEL_11;
    }

    v19 = v8;
  }

  else
  {
    v11 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v8 = [v11 request];

    v12 = [v8 loadAdditionalContentURL];
    if (v12)
    {
      v13 = v12;
      v14 = [(MCDFuseContentManager *)self lastReceivedResponse];
      v15 = [v14 results];
      v16 = [v15 numberOfSections];

      if (v16 >= 1)
      {
        v9 = [(MCDFuseContentManager *)self lastReceivedResponse];
        v17 = [v9 results];
        v18 = [v17 itemsInSectionAtIndex:0];
        v10 = [v18 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

        goto LABEL_7;
      }
    }

    v21.receiver = self;
    v21.super_class = MCDBrowseItemsContentManager;
    v19 = [(MCDGroupingsContentManager *)&v21 itemAtIndexPath:v4];
  }

  v10 = v19;
LABEL_11:

  return v10;
}

- (unint64_t)cellTypeAtIndexPath:(id)a3
{
  v3 = [(MCDFuseContentManager *)self viewController];
  v4 = [objc_opt_class() wantsTallCells];

  return v4;
}

@end