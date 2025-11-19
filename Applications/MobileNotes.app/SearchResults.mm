@interface SearchResults
- (SearchResults)init;
- (void)addResult:(id)a3;
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

- (void)addResult:(id)a3
{
  v13 = a3;
  v4 = [v13 object];
  v5 = [v4 objectID];
  v6 = [v5 ic_isNoteType];

  if (v6)
  {
    v7 = [v13 configuration];
    v8 = [v7 isTopHit];

    if (v8)
    {
      [(SearchResults *)self topHitResults];
    }

    else
    {
      [(SearchResults *)self noteResults];
    }
    v9 = ;
  }

  else
  {
    v10 = [v13 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    v9 = [(SearchResults *)self attachmentResults];
  }

  v12 = v9;
  [v9 addObject:v13];

LABEL_9:
}

@end