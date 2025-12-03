@interface WKDataListSuggestionsViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)reloadData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WKDataListSuggestionsViewController

- (void)reloadData
{
  [-[WKDataListSuggestionsViewController tableView](self "tableView")];
  suggestionsCount = [(WKDataListSuggestionsControl *)[(WKDataListSuggestionsViewController *)self control] suggestionsCount];
  v4 = 242.0;
  if (suggestionsCount <= 5)
  {
    v4 = suggestionsCount * 44.0;
  }

  [(WKDataListSuggestionsViewController *)self setPreferredContentSize:320.0, v4];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WKDataListSuggestionsViewController *)self control:view];

  return [(WKDataListSuggestionsControl *)v4 suggestionsCount];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [view dequeueReusableCellWithIdentifier:@"WKDataListSuggestionCell"];
  if (v6)
  {
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"WKDataListSuggestionCell"];
  }

  control = [(WKDataListSuggestionsViewController *)self control];
  v10 = [path row];
  if (!control)
  {
    v17 = 0;
    goto LABEL_9;
  }

  [(WKDataListSuggestionsControl *)control suggestionAtIndex:v10];
  if (!v17)
  {
LABEL_9:
    v19 = &stru_1F1147748;
    v12 = &stru_1F1147748;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v19);
  if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

LABEL_10:
  [objc_msgSend(v7 textLabel];
  v14 = v19;
  v19 = 0;
  if (v14)
  {
  }

  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v13);
  }

  [objc_msgSend(v7 textLabel];
  [objc_msgSend(v7 "textLabel")];
  if (v7)
  {
    v15 = v7;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  control = [(WKDataListSuggestionsViewController *)self control];
  v6 = [path row];

  [(WKDataListSuggestionsControl *)control didSelectOptionAtIndex:v6];
}

@end