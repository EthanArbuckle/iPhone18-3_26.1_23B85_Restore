@interface DirectionIntentItemProvider
- (void)_continueWithOrigin:(id)origin destination:(id)destination transportType:(int)type completion:(id)completion;
- (void)directionItemWithDirectionIntent:(id)intent localSearchCompletionOrigin:(id)origin localSearchCompletionDestination:(id)destination searchResultOrigin:(id)resultOrigin searchResultDestination:(id)resultDestination completion:(id)completion;
- (void)directionItemWithDirectionIntent:(id)intent searchResults:(id)results completion:(id)completion;
- (void)directionItemWithLocalSearchCompletion:(id)completion completion:(id)a4;
- (void)searchFieldItemWithResolveditem:(id)resolveditem localSearchCompletionFromServer:(id)server searchResultFromServer:(id)fromServer completion:(id)completion;
@end

@implementation DirectionIntentItemProvider

- (void)searchFieldItemWithResolveditem:(id)resolveditem localSearchCompletionFromServer:(id)server searchResultFromServer:(id)fromServer completion:(id)completion
{
  resolveditemCopy = resolveditem;
  serverCopy = server;
  fromServerCopy = fromServer;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = objc_alloc_init(ClientTypeResolver);
    v14 = objc_alloc_init(SearchFieldItem);
    itemType = [resolveditemCopy itemType];
    if (itemType <= 3)
    {
      if ((itemType - 1) >= 2)
      {
        if (!itemType)
        {
          completionCopy[2](completionCopy, 0);
          goto LABEL_19;
        }

        if (itemType == 3)
        {
          parkedCarSource = [(ClientTypeResolver *)v13 parkedCarSource];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100EFC97C;
          v21[3] = &unk_10165CA40;
          v22 = v14;
          v23 = completionCopy;
          [parkedCarSource objectWithCompletion:v21];

          v17 = v22;
LABEL_11:
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_10:
      personalizedItemSource = [(ClientTypeResolver *)v13 personalizedItemSource];
      itemType2 = [resolveditemCopy itemType];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100EFC8A8;
      v24[3] = &unk_10165CA18;
      v25 = v14;
      v26 = completionCopy;
      [personalizedItemSource addressOrLOIWithType:itemType2 completion:v24];

      v17 = v25;
      goto LABEL_11;
    }

    switch(itemType)
    {
      case 4:
        v20 = +[SearchResult currentLocationSearchResult];
        [(SearchFieldItem *)v14 setSearchResult:v20];

        break;
      case 5:
        if (serverCopy)
        {
          [(SearchFieldItem *)v14 setCompletion:serverCopy];
        }

        else if (fromServerCopy)
        {
          [(SearchFieldItem *)v14 setSearchResult:fromServerCopy];
        }

        break;
      case 6:
        goto LABEL_10;
      default:
        goto LABEL_19;
    }

    (completionCopy)[2](completionCopy, v14);
    goto LABEL_19;
  }

LABEL_20:
}

- (void)_continueWithOrigin:(id)origin destination:(id)destination transportType:(int)type completion:(id)completion
{
  originCopy = origin;
  destinationCopy = destination;
  completionCopy = completion;
  v11 = +[NSMutableArray array];
  v12 = v11;
  if (originCopy)
  {
    [v11 addObject:?];
    if (destinationCopy)
    {
LABEL_3:
      [v12 addObject:destinationCopy];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = +[SearchResult currentLocationSearchResult];
    v14 = [SearchFieldItem searchFieldItemWithObject:v13];
    [v12 addObject:v14];

    if (destinationCopy)
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
    if ((type - 1) > 5)
    {
      v17 = 1;
    }

    else
    {
      v17 = qword_101216278[type - 1];
    }

    v18 = [(DirectionItem *)v16 initWithItems:v12 transportType:v17];
    completionCopy[2](completionCopy, v18);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)directionItemWithDirectionIntent:(id)intent localSearchCompletionOrigin:(id)origin localSearchCompletionDestination:(id)destination searchResultOrigin:(id)resultOrigin searchResultDestination:(id)resultDestination completion:(id)completion
{
  intentCopy = intent;
  originCopy = origin;
  destinationCopy = destination;
  resultOriginCopy = resultOrigin;
  resultDestinationCopy = resultDestination;
  completionCopy = completion;
  if (completionCopy)
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
    origin = [intentCopy origin];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100EFCEC4;
    v33[3] = &unk_10165C9C8;
    v35 = v38;
    v22 = v20;
    v34 = v22;
    [(DirectionIntentItemProvider *)self searchFieldItemWithResolveditem:origin localSearchCompletionFromServer:originCopy searchResultFromServer:resultOriginCopy completion:v33];

    dispatch_group_enter(v22);
    destination = [intentCopy destination];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100EFCF24;
    v30[3] = &unk_10165C9C8;
    v32 = v36;
    v24 = v22;
    v31 = v24;
    [(DirectionIntentItemProvider *)self searchFieldItemWithResolveditem:destination localSearchCompletionFromServer:destinationCopy searchResultFromServer:resultDestinationCopy completion:v30];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EFCF84;
    block[3] = &unk_10165C9F0;
    block[4] = self;
    v28 = v38;
    v29 = v36;
    v26 = intentCopy;
    v27 = completionCopy;
    dispatch_group_notify(v24, &_dispatch_main_q, block);

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);
  }
}

- (void)directionItemWithDirectionIntent:(id)intent searchResults:(id)results completion:(id)completion
{
  intentCopy = intent;
  resultsCopy = results;
  completionCopy = completion;
  if (completionCopy)
  {
    origin = [intentCopy origin];
    if ([origin hasResultIndex])
    {
      origin2 = [intentCopy origin];
      resultIndex = [origin2 resultIndex];
      v13 = [resultsCopy count];

      if (resultIndex >= v13)
      {
        v14 = 0;
LABEL_8:
        destination = [intentCopy destination];
        if ([destination hasResultIndex])
        {
          destination2 = [intentCopy destination];
          resultIndex2 = [destination2 resultIndex];
          v18 = [resultsCopy count];

          if (resultIndex2 >= v18)
          {
            v19 = 0;
            goto LABEL_14;
          }

          destination = [intentCopy destination];
          v19 = [resultsCopy objectAtIndexedSubscript:{objc_msgSend(destination, "resultIndex")}];
        }

        else
        {
          v19 = 0;
        }

LABEL_14:
        [(DirectionIntentItemProvider *)self directionItemWithDirectionIntent:intentCopy localSearchCompletionOrigin:0 localSearchCompletionDestination:0 searchResultOrigin:v14 searchResultDestination:v19 completion:completionCopy];

        goto LABEL_15;
      }

      origin = [intentCopy origin];
      v14 = [resultsCopy objectAtIndexedSubscript:{objc_msgSend(origin, "resultIndex")}];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

LABEL_15:
}

- (void)directionItemWithLocalSearchCompletion:(id)completion completion:(id)a4
{
  if (a4)
  {
    v6 = a4;
    completionCopy = completion;
    directionIntent = [completionCopy directionIntent];
    directionIntentOrigin = [completionCopy directionIntentOrigin];
    directionIntentDestination = [completionCopy directionIntentDestination];

    [(DirectionIntentItemProvider *)self directionItemWithDirectionIntent:directionIntent localSearchCompletionOrigin:directionIntentOrigin localSearchCompletionDestination:directionIntentDestination searchResultOrigin:0 searchResultDestination:0 completion:v6];
  }
}

@end