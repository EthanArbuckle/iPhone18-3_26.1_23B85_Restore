@interface MKPlaceCompactCollectionsLogicController
- (MKPlaceBatchConsumer)guideConsumer;
- (MKPlaceCompactCollectionsLogicController)initWithGuideLocations:(id)locations context:(int64_t)context;
- (MKPlaceCompactCollectionsLogicController)initWithGuideLocationsResult:(id)result context:(int64_t)context usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingBatchSize:(unint64_t)size selectedGuideLocation:(id)location;
- (id)buildBatchingStructureForResult:(id)result;
- (id)buildViewModelsFromGuideLocations:(id)locations;
- (id)compactCollectionAtIndex:(unint64_t)index sectionIndex:(unint64_t)sectionIndex;
- (id)compactCollectionsInSection:(unint64_t)section;
- (id)titleForSectionFromTitle:(id)title;
- (unint64_t)numberOfSections;
- (void)createBatchControllerIfNeededUsingIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer batchSize:(unint64_t)size;
- (void)dismissedCompactCollections;
- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch;
- (void)willDisplayCellAtIndexpath:(id)indexpath;
@end

@implementation MKPlaceCompactCollectionsLogicController

- (MKPlaceBatchConsumer)guideConsumer
{
  WeakRetained = objc_loadWeakRetained(&self->_guideConsumer);

  return WeakRetained;
}

- (void)shouldConsumeBatch:(BOOL)batch fetchedBatch:(id)fetchedBatch
{
  batchCopy = batch;
  fetchedBatchCopy = fetchedBatch;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  batchableLocations = [(MKPlaceCompactCollectionsLogicController *)self batchableLocations];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MKPlaceCompactCollectionsLogicController_shouldConsumeBatch_fetchedBatch___block_invoke;
  v10[3] = &unk_1E76C8330;
  v13 = v14;
  v8 = fetchedBatchCopy;
  v11 = v8;
  selfCopy = self;
  [batchableLocations enumerateObjectsUsingBlock:v10];

  guideConsumer = [(MKPlaceCompactCollectionsLogicController *)self guideConsumer];
  [guideConsumer shouldConsumeBatch:batchCopy fetchedBatch:v8];

  _Block_object_dispose(v14, 8);
}

void __76__MKPlaceCompactCollectionsLogicController_shouldConsumeBatch_fetchedBatch___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__MKPlaceCompactCollectionsLogicController_shouldConsumeBatch_fetchedBatch___block_invoke_2;
  v9[3] = &unk_1E76C8308;
  v12 = *(a1 + 48);
  v7 = *(a1 + 32);
  v13 = a4;
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [a2 enumerateObjectsUsingBlock:v9];
}

void __76__MKPlaceCompactCollectionsLogicController_shouldConsumeBatch_fetchedBatch___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 == [*(a1 + 32) count] - 1)
  {
    *a4 = 1;
    **(a1 + 56) = 1;
  }

  v7 = [v18 viewModel];

  if (!v7)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    v9 = [v18 guideLocationIdentifier];
    v10 = [v9 geoMapItemIdentifier];
    v11 = [v8 guideLocationIdentifier];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v13 = [MKPlaceCompactCollectionViewModel alloc];
      v14 = *(a1 + 40);
      v15 = v14[1];
      v16 = [v14 selectedGuideLocation];
      v17 = -[MKPlaceCompactCollectionViewModel initWithGuideLocation:context:useBorderHighlight:](v13, "initWithGuideLocation:context:useBorderHighlight:", v8, v15, [v8 isEqual:v16]);

      [v18 setViewModel:v17];
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }
}

- (void)createBatchControllerIfNeededUsingIdentifiers:(id)identifiers usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer batchSize:(unint64_t)size
{
  identifiersCopy = identifiers;
  fetcherCopy = fetcher;
  consumerCopy = consumer;
  [(MKPlaceCompactCollectionsLogicController *)self setBatchController:0];
  v12 = [identifiersCopy count];
  if (consumerCopy && fetcherCopy && v12)
  {
    v13 = [[MKPlaceBatchController alloc] initWithItemIdentifiers:identifiersCopy withBatchSize:size minimumNumberOfItemBeforeFetching:2 shouldLoadFirstBatchImmediately:0 usingBatchFetcher:fetcherCopy usingBatchConsumer:consumerCopy displayedItemCount:[(MKPlaceCompactCollectionsLogicController *)self initialDisplayCount]];
    [(MKPlaceCompactCollectionsLogicController *)self setBatchController:v13];
  }
}

- (id)buildViewModelsFromGuideLocations:(id)locations
{
  v4 = MEMORY[0x1E695DF70];
  locationsCopy = locations;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(locationsCopy, "count")}];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __78__MKPlaceCompactCollectionsLogicController_buildViewModelsFromGuideLocations___block_invoke;
  v16 = &unk_1E76C82E0;
  selfCopy = self;
  v18 = v6;
  v7 = v6;
  [locationsCopy enumerateObjectsUsingBlock:&v13];

  v8 = objc_alloc(MEMORY[0x1E695DFB8]);
  v9 = [v8 initWithArray:{v7, v13, v14, v15, v16, selfCopy}];
  array = [v9 array];
  v11 = [array copy];

  return v11;
}

void __78__MKPlaceCompactCollectionsLogicController_buildViewModelsFromGuideLocations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MKPlaceCompactCollectionViewModel alloc];
  v5 = *(a1 + 32);
  v6 = v5[1];
  v7 = [v5 selectedGuideLocation];
  v9 = -[MKPlaceCompactCollectionViewModel initWithGuideLocation:context:useBorderHighlight:](v4, "initWithGuideLocation:context:useBorderHighlight:", v3, v6, [v3 isEqual:v7]);

  v8 = v9;
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
    v8 = v9;
  }
}

- (id)buildBatchingStructureForResult:(id)result
{
  v4 = MEMORY[0x1E695DF70];
  resultCopy = result;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  sections = [resultCopy sections];
  v9 = [v7 initWithCapacity:{objc_msgSend(sections, "count")}];

  sections2 = [resultCopy sections];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__MKPlaceCompactCollectionsLogicController_buildBatchingStructureForResult___block_invoke;
  v17[3] = &unk_1E76C82B8;
  v17[4] = self;
  v18 = v6;
  v19 = v9;
  v11 = v9;
  v12 = v6;
  [sections2 enumerateObjectsUsingBlock:v17];

  v13 = [v11 copy];
  batchableLocations = self->_batchableLocations;
  self->_batchableLocations = v13;

  v15 = [v12 copy];

  return v15;
}

void __76__MKPlaceCompactCollectionsLogicController_buildBatchingStructureForResult___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 guideLocations];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v47 = v5;
  if ([v3 isWorldwideSection])
  {
    v6 = [v4 firstObject];
    v7 = [MKPlaceCompactCollectionViewModel alloc];
    v8 = *(a1 + 32);
    v9 = v8[1];
    v10 = [v8 selectedGuideLocation];
    v11 = -[MKPlaceCompactCollectionViewModel initWithGuideLocation:context:useBorderHighlight:](v7, "initWithGuideLocation:context:useBorderHighlight:", v6, v9, [v6 isEqual:v10]);

    v12 = [[MKPlaceBatchableCompactCollection alloc] initWithWorldwideViewModel:v11];
    [v5 addObject:v12];
    ++*(*(a1 + 32) + 72);

    v13 = a1;
    v14 = v4;
  }

  else
  {
    v15 = [v3 guideLocationIdentifiers];
    v16 = [v15 count];

    v13 = a1;
    v14 = v4;
    if (v16)
    {
      v18 = 0;
      v19 = 0;
      *&v17 = 138412290;
      v44 = v17;
      v45 = v3;
      v46 = v14;
      do
      {
        v20 = [MKMapItemIdentifier alloc];
        v21 = [v3 guideLocationIdentifiers];
        v22 = [v21 objectAtIndex:v19];
        v23 = [(MKMapItemIdentifier *)v20 initWithGEOMapItemIdentifier:v22];

        if (v23)
        {
          v24 = [[MKPlaceBatchableCompactCollection alloc] initWithIdentifier:v23];
          [v47 containsObject:v24];
          [v47 addObject:v24];
          if (v19 < [v14 count] && (objc_msgSend(v14, "objectAtIndex:", v19), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
          {
            v26 = v14;
            v27 = v13;
            [v26 objectAtIndex:v18];
            v29 = v28 = v3;
            v30 = [v29 guideLocationIdentifier];
            v31 = [v28 guideLocationIdentifiers];
            v32 = [v31 objectAtIndex:v19];
            v33 = v18;
            v34 = [v30 isEqualToGEOMapItemIdentifier:v32];

            if (v34)
            {
              v35 = [MKPlaceCompactCollectionViewModel alloc];
              v36 = *(v27 + 32);
              v37 = v36[1];
              v38 = [v36 selectedGuideLocation];
              v39 = -[MKPlaceCompactCollectionViewModel initWithGuideLocation:context:useBorderHighlight:](v35, "initWithGuideLocation:context:useBorderHighlight:", v29, v37, [v29 isEqual:v38]);

              v13 = v27;
              [(MKPlaceBatchableCompactCollection *)v24 setViewModel:v39];
              v18 = v33 + 1;
              ++*(*(v27 + 32) + 72);
              v14 = v46;
            }

            else
            {
              v39 = MKGetCuratedCollectionsLog();
              v13 = v27;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = v44;
                v49 = v23;
                _os_log_impl(&dword_1A2EA0000, v39, OS_LOG_TYPE_ERROR, "Identifier mismatch when building batching structure. This implies that we have a location:(%@) for which we cannot build a view model.", buf, 0xCu);
              }

              v14 = v46;
              v18 = v33;
            }

            v3 = v45;
          }

          else
          {
            [*(v13 + 40) addObject:{v23, v44}];
          }

          v40 = v18;
        }

        else
        {
          v40 = v18;
        }

        ++v19;
        v41 = [v3 guideLocationIdentifiers];
        v42 = [v41 count];

        v43 = v19 >= v42;
        v18 = v40;
      }

      while (!v43);
    }
  }

  [*(v13 + 48) addObject:{v47, v44}];
}

- (void)dismissedCompactCollections
{
  v3 = +[MKPlaceCollectionImageProvider sharedInstance];
  v6 = v3;
  context = self->_context;
  if (context == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = context == 0;
  }

  [v3 cancelAllOperationsForCompactImageSource:v5];
}

- (id)compactCollectionAtIndex:(unint64_t)index sectionIndex:(unint64_t)sectionIndex
{
  if ([(MKPlaceCompactCollectionsLogicController *)self context])
  {
    viewModels = [(MKPlaceCompactCollectionsLogicController *)self viewModels];
    v8 = [viewModels objectAtIndex:sectionIndex];
    viewModel = [v8 objectAtIndex:index];
  }

  else
  {
    viewModels = [(MKPlaceCompactCollectionsLogicController *)self batchableLocations];
    v8 = [viewModels objectAtIndex:sectionIndex];
    v10 = [v8 objectAtIndex:index];
    viewModel = [v10 viewModel];
  }

  return viewModel;
}

- (id)compactCollectionsInSection:(unint64_t)section
{
  if (self->_context == 1)
  {
    goto LABEL_5;
  }

  if ([(MKPlaceCompactCollectionsLogicController *)self numberOfSections]- 1 < section)
  {
    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_6;
  }

  if (self->_context)
  {
LABEL_5:
    viewModels = [(MKPlaceCompactCollectionsLogicController *)self viewModels];
    v5 = [viewModels objectAtIndex:section];
  }

  else
  {
    batchableLocations = [(MKPlaceCompactCollectionsLogicController *)self batchableLocations];
    v9 = [batchableLocations objectAtIndex:section];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__MKPlaceCompactCollectionsLogicController_compactCollectionsInSection___block_invoke;
    v12[3] = &unk_1E76C8290;
    v13 = v10;
    v11 = v10;
    [v9 enumerateObjectsUsingBlock:v12];
    v5 = [v11 copy];
  }

LABEL_6:

  return v5;
}

void __72__MKPlaceCompactCollectionsLogicController_compactCollectionsInSection___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 viewModel];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 viewModel];
    [v4 addObject:v5];
  }
}

- (id)titleForSectionFromTitle:(id)title
{
  v12[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (titleCopy && !self->_context)
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = *MEMORY[0x1E69DB648];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
    v8 = [v7 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v5 = [v6 initWithString:titleCopy attributes:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)numberOfSections
{
  if (self->_context)
  {
    return 0;
  }

  batchableLocations = [(MKPlaceCompactCollectionsLogicController *)self batchableLocations];
  v4 = [batchableLocations count];

  return v4;
}

- (void)willDisplayCellAtIndexpath:(id)indexpath
{
  indexpathCopy = indexpath;
  batchController = [(MKPlaceCompactCollectionsLogicController *)self batchController];
  item = [indexpathCopy item];

  [batchController didDisplayItemAtIndex:item];
}

- (MKPlaceCompactCollectionsLogicController)initWithGuideLocationsResult:(id)result context:(int64_t)context usingCollectionFetcher:(id)fetcher usingGuideConsumer:(id)consumer usingBatchSize:(unint64_t)size selectedGuideLocation:(id)location
{
  resultCopy = result;
  fetcherCopy = fetcher;
  consumerCopy = consumer;
  locationCopy = location;
  v23.receiver = self;
  v23.super_class = MKPlaceCompactCollectionsLogicController;
  v18 = [(MKPlaceCompactCollectionsLogicController *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_context = context;
    objc_storeStrong(&v18->_selectedGuideLocation, location);
    if (!context)
    {
      v20 = [(MKPlaceCompactCollectionsLogicController *)v19 buildBatchingStructureForResult:resultCopy];
      flattenedIdentifiersForBatching = v19->_flattenedIdentifiersForBatching;
      v19->_flattenedIdentifiersForBatching = v20;

      if ([(NSArray *)v19->_flattenedIdentifiersForBatching count])
      {
        objc_storeWeak(&v19->_guideConsumer, consumerCopy);
        [(MKPlaceCompactCollectionsLogicController *)v19 createBatchControllerIfNeededUsingIdentifiers:v19->_flattenedIdentifiersForBatching usingCollectionFetcher:fetcherCopy usingGuideConsumer:v19 batchSize:size];
      }
    }
  }

  return v19;
}

- (MKPlaceCompactCollectionsLogicController)initWithGuideLocations:(id)locations context:(int64_t)context
{
  locationsCopy = locations;
  v14.receiver = self;
  v14.super_class = MKPlaceCompactCollectionsLogicController;
  v7 = [(MKPlaceCompactCollectionsLogicController *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_context = context;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [(MKPlaceCompactCollectionsLogicController *)v8 buildViewModelsFromGuideLocations:locationsCopy];
    [v9 addObject:v10];

    v11 = [v9 copy];
    viewModels = v8->_viewModels;
    v8->_viewModels = v11;
  }

  return v8;
}

@end