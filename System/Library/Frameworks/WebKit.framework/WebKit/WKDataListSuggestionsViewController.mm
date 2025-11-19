@interface WKDataListSuggestionsViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)reloadData;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WKDataListSuggestionsViewController

- (void)reloadData
{
  [-[WKDataListSuggestionsViewController tableView](self "tableView")];
  v3 = [(WKDataListSuggestionsControl *)[(WKDataListSuggestionsViewController *)self control] suggestionsCount];
  v4 = 242.0;
  if (v3 <= 5)
  {
    v4 = v3 * 44.0;
  }

  [(WKDataListSuggestionsViewController *)self setPreferredContentSize:320.0, v4];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WKDataListSuggestionsViewController *)self control:a3];

  return [(WKDataListSuggestionsControl *)v4 suggestionsCount];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"WKDataListSuggestionCell"];
  if (v6)
  {
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"WKDataListSuggestionCell"];
  }

  v9 = [(WKDataListSuggestionsViewController *)self control];
  v10 = [a4 row];
  if (!v9)
  {
    v17 = 0;
    goto LABEL_9;
  }

  [(WKDataListSuggestionsControl *)v9 suggestionAtIndex:v10];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(WKDataListSuggestionsViewController *)self control];
  v6 = [a4 row];

  [(WKDataListSuggestionsControl *)v5 didSelectOptionAtIndex:v6];
}

@end