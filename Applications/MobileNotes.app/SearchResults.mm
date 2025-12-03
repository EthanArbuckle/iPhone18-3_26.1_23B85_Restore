@interface SearchResults
- (SearchResults)init;
- (void)addResult:(id)result;
@end

@implementation SearchResults

- (SearchResults)init
{
  v12.receiver = self;
  v12.super_class = SearchResults;
  v2 = [(SearchResults *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    topHitResults = v2->_topHitResults;
    v2->_topHitResults = v3;

    v5 = +[NSMutableArray array];
    suggestions = v2->_suggestions;
    v2->_suggestions = v5;

    v7 = +[NSMutableArray array];
    noteResults = v2->_noteResults;
    v2->_noteResults = v7;

    v9 = +[NSMutableArray array];
    attachmentResults = v2->_attachmentResults;
    v2->_attachmentResults = v9;
  }

  return v2;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  object = [resultCopy object];
  objectID = [object objectID];
  ic_isNoteType = [objectID ic_isNoteType];

  if (ic_isNoteType)
  {
    configuration = [resultCopy configuration];
    isTopHit = [configuration isTopHit];

    if (isTopHit)
    {
      [(SearchResults *)self topHitResults];
    }

    else
    {
      [(SearchResults *)self noteResults];
    }
    attachmentResults = ;
  }

  else
  {
    object2 = [resultCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    attachmentResults = [(SearchResults *)self attachmentResults];
  }

  v12 = attachmentResults;
  [attachmentResults addObject:resultCopy];

LABEL_9:
}

@end