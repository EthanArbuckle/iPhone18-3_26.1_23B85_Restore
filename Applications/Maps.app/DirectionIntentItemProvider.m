@interface DirectionIntentItemProvider
- (void)_continueWithOrigin:(id)a3 destination:(id)a4 transportType:(int)a5 completion:(id)a6;
- (void)directionItemWithDirectionIntent:(id)a3 localSearchCompletionOrigin:(id)a4 localSearchCompletionDestination:(id)a5 searchResultOrigin:(id)a6 searchResultDestination:(id)a7 completion:(id)a8;
- (void)directionItemWithDirectionIntent:(id)a3 searchResults:(id)a4 completion:(id)a5;
- (void)directionItemWithLocalSearchCompletion:(id)a3 completion:(id)a4;
- (void)searchFieldItemWithResolveditem:(id)a3 localSearchCompletionFromServer:(id)a4 searchResultFromServer:(id)a5 completion:(id)a6;
@end

@implementation DirectionIntentItemProvider

- (void)searchFieldItemWithResolveditem:(id)a3 localSearchCompletionFromServer:(id)a4 searchResultFromServer:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = objc_alloc_init(ClientTypeResolver);
    v14 = objc_alloc_init(SearchFieldItem);
    v15 = [v9 itemType];
    if (v15 <= 3)
    {
      if ((v15 - 1) >= 2)
      {
        if (!v15)
        {
          v12[2](v12, 0);
          goto LABEL_19;
        }

        if (v15 == 3)
        {
          v16 = [(ClientTypeResolver *)v13 parkedCarSource];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100EFC97C;
          v21[3] = &unk_10165CA40;
          v22 = v14;
          v23 = v12;
          [v16 objectWithCompletion:v21];

          v17 = v22;
LABEL_11:
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_10:
      v18 = [(ClientTypeResolver *)v13 personalizedItemSource];
      v19 = [v9 itemType];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100EFC8A8;
      v24[3] = &unk_10165CA18;
      v25 = v14;
      v26 = v12;
      [v18 addressOrLOIWithType:v19 completion:v24];

      v17 = v25;
      goto LABEL_11;
    }

    switch(v15)
    {
      case 4:
        v20 = +[SearchResult currentLocationSearchResult];
        [(SearchFieldItem *)v14 setSearchResult:v20];

        break;
      case 5:
        if (v10)
        {
          [(SearchFieldItem *)v14 setCompletion:v10];
        }

        else if (v11)
        {
          [(SearchFieldItem *)v14 setSearchResult:v11];
        }

        break;
      case 6:
        goto LABEL_10;
      default:
        goto LABEL_19;
    }

    (v12)[2](v12, v14);
    goto LABEL_19;
  }

LABEL_20:
}

- (void)_continueWithOrigin:(id)a3 destination:(id)a4 transportType:(int)a5 completion:(id)a6
{
  v19 = a3;
  v9 = a4;
  v10 = a6;
  v11 = +[NSMutableArray array];
  v12 = v11;
  if (v19)
  {
    [v11 addObject:?];
    if (v9)
    {
LABEL_3:
      [v12 addObject:v9];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = +[SearchResult currentLocationSearchResult];
    v14 = [SearchFieldItem searchFieldItemWithObject:v13];
    [v12 addObject:v14];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = objc_opt_new();
  [v12 addObject:v15];

LABEL_6:
  if ([v12 count])
  {
    v16 = [DirectionItem alloc];
    if ((a5 - 1) > 5)
    {
      v17 = 1;
    }

    else
    {
      v17 = qword_101216278[a5 - 1];
    }

    v18 = [(DirectionItem *)v16 initWithItems:v12 transportType:v17];
    v10[2](v10, v18);
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)directionItemWithDirectionIntent:(id)a3 localSearchCompletionOrigin:(id)a4 localSearchCompletionDestination:(id)a5 searchResultOrigin:(id)a6 searchResultDestination:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = sub_100EFCEAC;
    v38[4] = sub_100EFCEBC;
    v39 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = sub_100EFCEAC;
    v36[4] = sub_100EFCEBC;
    v37 = 0;
    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    v21 = [v14 origin];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100EFCEC4;
    v33[3] = &unk_10165C9C8;
    v35 = v38;
    v22 = v20;
    v34 = v22;
    [(DirectionIntentItemProvider *)self searchFieldItemWithResolveditem:v21 localSearchCompletionFromServer:v15 searchResultFromServer:v17 completion:v33];

    dispatch_group_enter(v22);
    v23 = [v14 destination];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100EFCF24;
    v30[3] = &unk_10165C9C8;
    v32 = v36;
    v24 = v22;
    v31 = v24;
    [(DirectionIntentItemProvider *)self searchFieldItemWithResolveditem:v23 localSearchCompletionFromServer:v16 searchResultFromServer:v18 completion:v30];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EFCF84;
    block[3] = &unk_10165C9F0;
    block[4] = self;
    v28 = v38;
    v29 = v36;
    v26 = v14;
    v27 = v19;
    dispatch_group_notify(v24, &_dispatch_main_q, block);

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);
  }
}

- (void)directionItemWithDirectionIntent:(id)a3 searchResults:(id)a4 completion:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [v20 origin];
    if ([v10 hasResultIndex])
    {
      v11 = [v20 origin];
      v12 = [v11 resultIndex];
      v13 = [v8 count];

      if (v12 >= v13)
      {
        v14 = 0;
LABEL_8:
        v15 = [v20 destination];
        if ([v15 hasResultIndex])
        {
          v16 = [v20 destination];
          v17 = [v16 resultIndex];
          v18 = [v8 count];

          if (v17 >= v18)
          {
            v19 = 0;
            goto LABEL_14;
          }

          v15 = [v20 destination];
          v19 = [v8 objectAtIndexedSubscript:{objc_msgSend(v15, "resultIndex")}];
        }

        else
        {
          v19 = 0;
        }

LABEL_14:
        [(DirectionIntentItemProvider *)self directionItemWithDirectionIntent:v20 localSearchCompletionOrigin:0 localSearchCompletionDestination:0 searchResultOrigin:v14 searchResultDestination:v19 completion:v9];

        goto LABEL_15;
      }

      v10 = [v20 origin];
      v14 = [v8 objectAtIndexedSubscript:{objc_msgSend(v10, "resultIndex")}];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

LABEL_15:
}

- (void)directionItemWithLocalSearchCompletion:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v10 = [v7 directionIntent];
    v8 = [v7 directionIntentOrigin];
    v9 = [v7 directionIntentDestination];

    [(DirectionIntentItemProvider *)self directionItemWithDirectionIntent:v10 localSearchCompletionOrigin:v8 localSearchCompletionDestination:v9 searchResultOrigin:0 searchResultDestination:0 completion:v6];
  }
}

@end