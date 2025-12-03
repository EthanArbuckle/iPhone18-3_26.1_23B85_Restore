@interface MPRadioLibrary
+ (id)defaultRadioLibrary;
- (MPRadioLibrary)init;
- (NSArray)stations;
- (id)_radioModel;
- (id)stationWithIdentifier:(int64_t)identifier;
- (unint64_t)stationCount;
- (void)_radioAvailabilityDidChangeNotification:(id)notification;
- (void)_radioModelDidChangeNotification:(id)notification;
- (void)_radioRecentStationsDidChangeNotification:(id)notification;
- (void)dealloc;
@end

@implementation MPRadioLibrary

- (id)_radioModel
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getRadioModelClass_softClass;
  v10 = getRadioModelClass_softClass;
  if (!getRadioModelClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getRadioModelClass_block_invoke;
    v6[3] = &unk_1E7680410;
    v6[4] = &v7;
    __getRadioModelClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedModel = [v2 sharedModel];

  return sharedModel;
}

- (void)_radioModelDidChangeNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPRadioLibraryStationsDidChangeNotification" object:self];
}

- (void)_radioRecentStationsDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPRadioLibrary__radioRecentStationsDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__MPRadioLibrary__radioRecentStationsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPRadioLibraryStationsDidChangeNotification" object:*(a1 + 32)];
}

- (void)_radioAvailabilityDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MPRadioLibrary__radioAvailabilityDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__MPRadioLibrary__radioAvailabilityDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPRadioLibraryStationsDidChangeNotification" object:*(a1 + 32)];
}

- (id)stationWithIdentifier:(int64_t)identifier
{
  _radioModel = [(MPRadioLibrary *)self _radioModel];
  v5 = [_radioModel stationWithID:identifier];

  if (v5)
  {
    v6 = [[MPRadioStation alloc] initWithStation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)stations
{
  v31 = *MEMORY[0x1E69E9840];
  _radioModel = [(MPRadioLibrary *)self _radioModel];
  v3 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  stationSortOrdering = [_radioModel stationSortOrdering];
  v6 = [stationSortOrdering countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(stationSortOrdering);
        }

        v10 = [_radioModel stationWithID:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "longLongValue")}];
        if (v10)
        {
          v11 = [[MPRadioStation alloc] initWithStation:v10];
          if (v11)
          {
            [array addObject:v11];
            [v3 addObject:v10];
          }
        }
      }

      v7 = [stationSortOrdering countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  userStations = [_radioModel userStations];
  v13 = [userStations countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(userStations);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if (([v3 containsObject:v17] & 1) == 0)
        {
          v18 = [[MPRadioStation alloc] initWithStation:v17];
          if (v18)
          {
            [array addObject:v18];
          }
        }
      }

      v14 = [userStations countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  if ([array count])
  {
    v19 = array;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)stationCount
{
  _radioModel = [(MPRadioLibrary *)self _radioModel];
  userStations = [_radioModel userStations];
  v4 = [userStations count];

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"MPRadioControllerRadioAvailabilityDidChangeNotification" object:self->_radioController];
  [defaultCenter removeObserver:self name:@"MPRadioControllerRecentStationsDidChangeNotification" object:self->_radioController];
  _radioModel = [(MPRadioLibrary *)self _radioModel];
  [defaultCenter removeObserver:self name:@"RadioModelDidChangeNotification" object:_radioModel];

  v5.receiver = self;
  v5.super_class = MPRadioLibrary;
  [(MPRadioLibrary *)&v5 dealloc];
}

- (MPRadioLibrary)init
{
  v8.receiver = self;
  v8.super_class = MPRadioLibrary;
  v2 = [(MPRadioLibrary *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPRadioController);
    radioController = v2->_radioController;
    v2->_radioController = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__radioAvailabilityDidChangeNotification_ name:@"MPRadioControllerRadioAvailabilityDidChangeNotification" object:v2->_radioController];
    [defaultCenter addObserver:v2 selector:sel__radioRecentStationsDidChangeNotification_ name:@"MPRadioControllerRecentStationsDidChangeNotification" object:v2->_radioController];
    _radioModel = [(MPRadioLibrary *)v2 _radioModel];
    [defaultCenter addObserver:v2 selector:sel__radioModelDidChangeNotification_ name:@"RadioModelDidChangeNotification" object:_radioModel];
  }

  return v2;
}

+ (id)defaultRadioLibrary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MPRadioLibrary_defaultRadioLibrary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultRadioLibrary_onceToken != -1)
  {
    dispatch_once(&defaultRadioLibrary_onceToken, block);
  }

  v2 = defaultRadioLibrary_defaultLibrary;

  return v2;
}

void __37__MPRadioLibrary_defaultRadioLibrary__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultRadioLibrary_defaultLibrary;
  defaultRadioLibrary_defaultLibrary = v1;
}

@end