@interface MCDBrowseItemsContentManager
- (id)itemAtIndexPath:(id)path;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section;
- (unint64_t)cellTypeAtIndexPath:(id)path;
@end

@implementation MCDBrowseItemsContentManager

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section
{
  responseCopy = response;
  contentResults = [(MCDFuseContentManager *)self contentResults];

  if (contentResults)
  {
    contentResults2 = [(MCDFuseContentManager *)self contentResults];
    v9 = [contentResults2 numberOfItemsInSection:section];
    if (v9 < [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay])
    {
      contentResults3 = [(MCDFuseContentManager *)self contentResults];
      maximumNumberOfItemsForDisplay2 = [contentResults3 numberOfItemsInSection:section];

      goto LABEL_12;
    }

    maximumNumberOfItemsForDisplay = [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay];
LABEL_9:
    maximumNumberOfItemsForDisplay2 = maximumNumberOfItemsForDisplay;
    goto LABEL_12;
  }

  contentResults2 = [responseCopy request];
  loadAdditionalContentURL = [contentResults2 loadAdditionalContentURL];

  if (!loadAdditionalContentURL)
  {
    v20.receiver = self;
    v20.super_class = MCDBrowseItemsContentManager;
    maximumNumberOfItemsForDisplay = [(MCDGroupingsContentManager *)&v20 allowedNumberOfItemsForDisplayWithResponse:responseCopy inSection:section];
    goto LABEL_9;
  }

  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v15 = [results numberOfItemsInSection:section];
  if (v15 >= [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay])
  {
    maximumNumberOfItemsForDisplay2 = [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay];
  }

  else
  {
    lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
    results2 = [lastReceivedResponse2 results];
    maximumNumberOfItemsForDisplay2 = [results2 numberOfItemsInSection:section];
  }

LABEL_12:
  return maximumNumberOfItemsForDisplay2;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  contentResults = [(MCDFuseContentManager *)self contentResults];

  if (contentResults)
  {
    contentResults2 = [(MCDFuseContentManager *)self contentResults];
    v7 = [contentResults2 itemsInSectionAtIndex:0];
    request = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lastReceivedResponse3 = [request itemsInSectionAtIndex:0];
      v10 = [lastReceivedResponse3 objectAtIndexedSubscript:0];
LABEL_7:

      goto LABEL_11;
    }

    v19 = request;
  }

  else
  {
    lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
    request = [lastReceivedResponse request];

    loadAdditionalContentURL = [request loadAdditionalContentURL];
    if (loadAdditionalContentURL)
    {
      v13 = loadAdditionalContentURL;
      lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
      results = [lastReceivedResponse2 results];
      numberOfSections = [results numberOfSections];

      if (numberOfSections >= 1)
      {
        lastReceivedResponse3 = [(MCDFuseContentManager *)self lastReceivedResponse];
        results2 = [lastReceivedResponse3 results];
        v18 = [results2 itemsInSectionAtIndex:0];
        v10 = [v18 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

        goto LABEL_7;
      }
    }

    v21.receiver = self;
    v21.super_class = MCDBrowseItemsContentManager;
    v19 = [(MCDGroupingsContentManager *)&v21 itemAtIndexPath:pathCopy];
  }

  v10 = v19;
LABEL_11:

  return v10;
}

- (unint64_t)cellTypeAtIndexPath:(id)path
{
  viewController = [(MCDFuseContentManager *)self viewController];
  wantsTallCells = [objc_opt_class() wantsTallCells];

  return wantsTallCells;
}

@end