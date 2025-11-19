@interface MPRadioLibrary
+ (id)defaultRadioLibrary;
- (MPRadioLibrary)init;
- (NSArray)stations;
- (id)_radioModel;
- (id)stationWithIdentifier:(int64_t)a3;
- (unint64_t)stationCount;
- (void)_radioAvailabilityDidChangeNotification:(id)a3;
- (void)_radioModelDidChangeNotification:(id)a3;
- (void)_radioRecentStationsDidChangeNotification:(id)a3;
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
  v4 = [v2 sharedModel];

  return v4;
}

- (void)_radioModelDidChangeNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MPRadioLibraryStationsDidChangeNotification" object:self];
}

- (void)_radioRecentStationsDidChangeNotification:(id)a3
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

- (void)_radioAvailabilityDidChangeNotification:(id)a3
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

- (id)stationWithIdentifier:(int64_t)a3
{
  v4 = [(MPRadioLibrary *)self _radioModel];
  v5 = [v4 stationWithID:a3];

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
  v2 = [(MPRadioLibrary *)self _radioModel];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v2 stationSortOrdering];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [v2 stationWithID:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "longLongValue")}];
        if (v10)
        {
          v11 = [[MPRadioStation alloc] initWithStation:v10];
          if (v11)
          {
            [v4 addObject:v11];
            [v3 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v2 userStations];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if (([v3 containsObject:v17] & 1) == 0)
        {
          v18 = [[MPRadioStation alloc] initWithStation:v17];
          if (v18)
          {
            [v4 addObject:v18];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  if ([v4 count])
  {
    v19 = v4;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)stationCount
{
  v2 = [(MPRadioLibrary *)self _radioModel];
  v3 = [v2 userStations];
  v4 = [v3 count];

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"MPRadioControllerRadioAvailabilityDidChangeNotification" object:self->_radioController];
  [v3 removeObserver:self name:@"MPRadioControllerRecentStationsDidChangeNotification" object:self->_radioController];
  v4 = [(MPRadioLibrary *)self _radioModel];
  [v3 removeObserver:self name:@"RadioModelDidChangeNotification" object:v4];

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

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__radioAvailabilityDidChangeNotification_ name:@"MPRadioControllerRadioAvailabilityDidChangeNotification" object:v2->_radioController];
    [v5 addObserver:v2 selector:sel__radioRecentStationsDidChangeNotification_ name:@"MPRadioControllerRecentStationsDidChangeNotification" object:v2->_radioController];
    v6 = [(MPRadioLibrary *)v2 _radioModel];
    [v5 addObserver:v2 selector:sel__radioModelDidChangeNotification_ name:@"RadioModelDidChangeNotification" object:v6];
  }

  return v2;
}

+ (id)defaultRadioLibrary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MPRadioLibrary_defaultRadioLibrary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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