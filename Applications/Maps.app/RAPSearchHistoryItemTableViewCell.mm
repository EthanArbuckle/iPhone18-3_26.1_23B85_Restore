@interface RAPSearchHistoryItemTableViewCell
- (void)setHistoryItem:(id)item;
@end

@implementation RAPSearchHistoryItemTableViewCell

- (void)setHistoryItem:(id)item
{
  itemCopy = item;
  historyItem = [itemCopy historyItem];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_101019D6C;
  v31 = sub_101019D7C;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_101019D6C;
  v25 = sub_101019D7C;
  v26 = 0;
  searchText = [itemCopy searchText];
  v7 = v28[5];
  v28[5] = searchText;

  historyEntry = [historyItem historyEntry];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_101019D84;
  v17[3] = &unk_101661C40;
  v19 = &v27;
  v20 = &v21;
  v9 = itemCopy;
  v18 = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_101019EB4;
  v16[3] = &unk_101661C68;
  v16[4] = &v27;
  [historyEntry ifSearch:v17 ifRoute:0 ifPlaceDisplay:v16 ifTransitLineItem:0];

  if (!v22[5])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"[RAP] Cell_subtitle_for_a_previous_search_with_results_and_no_location" value:@"localized string not found" table:0];

    v12 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v11, [v9 searchResultsCount]);
    v13 = v22[5];
    v22[5] = v12;
  }

  v14 = objc_alloc_init(RAPTwoLinesViewModelImpl);
  [(RAPTwoLinesViewModelImpl *)v14 setTitle:v28[5]];
  [(RAPTwoLinesViewModelImpl *)v14 setSubtitle:v22[5]];
  v15 = [UIImage imageNamed:@"search"];
  [(RAPTwoLinesViewModelImpl *)v14 setImage:v15];

  [(RAPTwoLinesMenuTableViewCell *)self setViewModel:v14];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

@end