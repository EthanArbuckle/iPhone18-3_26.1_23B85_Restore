@interface MKSearchFoundationResult
+ (id)styledStringFromStringArray:(id)a3;
- (BOOL)_isSmallerScreen;
- (MKSearchFoundationResult)initWithMapsData:(id)a3 iconSize:(unint64_t)a4 bundleID:(id)a5;
- (id)_appleRatingsDescription;
- (id)_brandURL;
- (id)_businessAddress;
- (id)_businessCategory;
- (id)_businessHoursAndDistance;
- (id)_businessReviewText;
- (id)_defaultRichTextItems;
- (id)_populateAppClipData:(id)a3;
- (id)_populateButtonItem:(id)a3 imageName:(id)a4 command:(id)a5;
- (id)_populateButtonItemsAndCommands;
- (void)_commonInit;
- (void)_locationApprovalDidChange;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
@end

@implementation MKSearchFoundationResult

- (void)locationManagerUpdatedLocation:(id)a3
{
  v11 = a3;
  v4 = [v11 lastLocation];

  if (v4)
  {
    v5 = [v11 lastLocation];
    v6 = objc_alloc(MEMORY[0x1E6985C40]);
    [(MKMapItem *)self->_mapItem _coordinate];
    v8 = v7;
    [(MKMapItem *)self->_mapItem _coordinate];
    v9 = [v6 initWithLatitude:v8 longitude:?];
    [v5 distanceFromLocation:v9];
    v10 = [MEMORY[0x1E696AEC0] _navigation_localizedStringForDistance:0 detail:self->_optionSmallerScreen unitFormat:0 locale:0 useMetric:0 useYards:?];
    [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self->_thirdLineDisplayedText resolveDistanceString:v10 lines:self->_thirdLineText];
    [v11 stopLocationUpdateWithObserver:self];
  }
}

- (void)_locationApprovalDidChange
{
  v3 = [(MKLocationManager *)self->_locationManager isLocationServicesAvailable];
  locationManager = self->_locationManager;
  if (v3)
  {

    [(MKLocationManager *)locationManager startLocationUpdateWithObserver:self];
  }

  else
  {

    [(MKLocationManager *)locationManager stopLocationUpdateWithObserver:self];
  }
}

- (BOOL)_isSmallerScreen
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3 <= 375.0;

  return v4;
}

- (id)_businessHoursAndDistance
{
  v3 = [(MKSearchFoundationRichText *)[MKSearchFoundationBusinessHoursAndDistanceRichText alloc] initWithString:&stru_1F15B23C0];
  v4 = [MEMORY[0x1E695DF70] array];
  thirdLineText = self->_thirdLineText;
  self->_thirdLineText = v4;

  [(MKSearchFoundationBusinessHoursAndDistanceRichText *)v3 resolveBusinessHoursByMapItem:self->_mapItem lines:self->_thirdLineText];

  return v3;
}

- (id)_brandURL
{
  v2 = [(MKMapItem *)self->_mapItem url];
  v3 = [v2 host];

  if ([v3 length])
  {
    v4 = [(MKSearchFoundationRichText *)[MKSearchFoundationBusinessHoursAndDistanceRichText alloc] initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_businessCategory
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [MKSearchFoundationRichText alloc];
    v6 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [MKSearchFoundationResult styledStringFromStringArray:v7];
    v9 = [(MKSearchFoundationRichText *)v5 initWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_businessAddress
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(MKMapItem *)self->_mapItem _shortAddress];
  v4 = [(MKMapItem *)self->_mapItem _geoAddress];
  v5 = [v4 singleLineAddress];

  v6 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v14 = v5;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "MapItem single line address: %{private}@", buf, 0xCu);
  }

  if ([v3 length] && (objc_msgSend(v3, "isEqualToString:", v5) & 1) == 0)
  {
    v12 = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  if ([v7 count])
  {
    v8 = [MKSearchFoundationRichText alloc];
    v9 = [MKSearchFoundationResult styledStringFromStringArray:v7];
    v10 = [(MKSearchFoundationRichText *)v8 initWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_businessReviewText
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = [(MKSearchFoundationRichText *)[MKSearchFoundationBusinessReviewRichText alloc] initWithString:&stru_1F15B23C0];
  if (-[MKMapItem _hasUserRatingScore](self->_mapItem, "_hasUserRatingScore") && (-[MKMapItem _geoMapItem](self->_mapItem, "_geoMapItem"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _hasAppleRatings], v4, v5))
  {
    v6 = [(MKSearchFoundationResult *)self _appleRatingsDescription];
    [(MKSearchFoundationRichText *)v3 setText:v6];

    v7 = objc_alloc_init(MEMORY[0x1E69CA4C8]);
    [v7 setSymbolName:@"hand.thumbsup.fill"];
    [v7 setIsTemplate:1];
    v34[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [(SFRichText *)v3 setIcons:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] array];
    if ([(MKMapItem *)self->_mapItem _hasUserRatingScore])
    {
      [(MKMapItem *)self->_mapItem _normalizedUserRatingScore];
      [(SFRichText *)v3 setStarRating:v9];
      v10 = [(MKMapItem *)self->_mapItem _reviewsAttribution];
      v11 = [v10 providerName];
      v12 = [v11 length];

      v13 = MEMORY[0x1E696AEC0];
      if (v12)
      {
        v14 = _MKLocalizedStringFromThisBundle(@"Place_Reviews_On_Provider");
        v15 = [(MKMapItem *)self->_mapItem _sampleSizeForUserRatingScore];
        v16 = [(MKMapItem *)self->_mapItem _reviewsDisplayName];
        v17 = [v13 localizedStringWithFormat:v14, v15, v16];

        if ([v7 count])
        {
          [v7 insertObject:v17 atIndex:0];
        }

        else
        {
          [v7 addObject:v17];
        }

        [(MKSearchFoundationBusinessReviewRichText *)v3 setReviewResolved:1];
      }

      else
      {
        v18 = _MKLocalizedStringFromThisBundle(@"Place_Reviews_Number_Parsec");
        v19 = [v13 localizedStringWithFormat:v18, -[MKMapItem _sampleSizeForUserRatingScore](self->_mapItem, "_sampleSizeForUserRatingScore")];

        [v7 addObject:v19];
        objc_initWeak(&location, self);
        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        mapItem = self->_mapItem;
        v22 = [MEMORY[0x1E696ADC8] mainQueue];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __47__MKSearchFoundationResult__businessReviewText__block_invoke;
        v28[3] = &unk_1E76CA2D0;
        objc_copyWeak(&v32, &location);
        v29 = v3;
        v30 = v7;
        v23 = v19;
        v31 = v23;
        v24 = [v20 addObserverForName:@"MKMapItemDidResolveAttribution" object:mapItem queue:v22 usingBlock:v28];
        attributionObserver = self->_attributionObserver;
        self->_attributionObserver = v24;

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }
    }

    if ([v7 count])
    {
      v8 = [MKSearchFoundationResult styledStringFromStringArray:v7];
      [(MKSearchFoundationRichText *)v3 setText:v8];
    }

    else
    {
      v8 = v3;
      v3 = 0;
    }
  }

  v26 = v3;
  return v3;
}

void __47__MKSearchFoundationResult__businessReviewText__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:WeakRetained[111]];

    v5 = WeakRetained[111];
    WeakRetained[111] = 0;

    v6 = [v11 object];
    v7 = [v6 _reviewsAttribution];
    v8 = [v7 providerName];
    v9 = [v8 length];

    v10 = *(a1 + 32);
    if (v9)
    {
      [v10 resolveReviewStringWithProviderNameByMapItem:v6 lines:*(a1 + 40) temporaryReviewString:*(a1 + 48)];
    }

    else
    {
      [v10 setStarRating:0.0];
      [*(a1 + 32) resolveReviewStringWithProviderNameNotFoundByMapItem:v6 lines:*(a1 + 40) temporaryReviewString:*(a1 + 48)];
    }
  }
}

- (id)_appleRatingsDescription
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = self->_mapItem;
  v3 = _MKLocalizedStringFromThisBundle(@"%lu Recommend [UGC]");
  v4 = _MKLocalizedStringFromThisBundle(@"(number of people)");
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(MKMapItem *)v2 _geoMapItem];
  v7 = [v6 _overallAppleRating];
  [v7 percentage];
  v9 = [v5 localizedStringWithFormat:v3, (v8 * 100.0)];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(MKMapItem *)v2 _geoMapItem];
  v12 = [v11 _overallAppleRating];
  v13 = +[MKFirstPartyRatingFormatter stringFromCount:](MKFirstPartyRatingFormatter, "stringFromCount:", [v12 numberOfRatingsUsedForScore]);
  v14 = [v10 localizedStringWithFormat:v4, v13];

  v18[0] = v9;
  v18[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = [v15 componentsJoinedByString:@" "];

  return v16;
}

- (id)_defaultRichTextItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MKMapItem *)self->_mapItem _isMapItemTypeBrand];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MKSearchFoundationResult *)self _businessAddress];
  }

  objc_storeStrong(&self->_secondLineDisplayedText, v5);
  if (!v4)
  {
  }

  if (self->_secondLineDisplayedText)
  {
    [v3 addObject:?];
  }

  if ([(MKMapItem *)self->_mapItem _isMapItemTypeBrand])
  {
    v6 = [(MKMapItem *)self->_mapItem url];

    if (v6)
    {
      v7 = [(MKSearchFoundationResult *)self _brandURL];
      thirdLineDisplayedText = self->_thirdLineDisplayedText;
      self->_thirdLineDisplayedText = v7;

      [v3 addObject:self->_thirdLineDisplayedText];
    }
  }

  else
  {
    v9 = [(MKSearchFoundationResult *)self _businessHoursAndDistance];
    v10 = self->_thirdLineDisplayedText;
    self->_thirdLineDisplayedText = v9;

    if (self->_thirdLineDisplayedText)
    {
      [v3 addObject:?];
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:self selector:sel__locationApprovalDidChange name:MKLocationManagerApprovalDidChangeNotification object:0];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MKSearchFoundationResult__defaultRichTextItems__block_invoke;
    block[3] = &unk_1E76CDB38;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v3;
}

uint64_t __49__MKSearchFoundationResult__defaultRichTextItems__block_invoke(uint64_t a1)
{
  v2 = +[MKLocationManager sharedLocationManager];
  v3 = *(a1 + 32);
  v4 = *(v3 + 864);
  *(v3 + 864) = v2;

  [*(*(a1 + 32) + 864) setDesiredAccuracy:*MEMORY[0x1E6985C78]];
  v5 = *(*(a1 + 32) + 864);
  v6 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/LocationBundles/CoreParsec.framework"];
  [v5 setEffectiveBundle:v6];

  v7 = *(*(a1 + 32) + 864);

  return [v7 startLocationUpdateWithObserver:?];
}

- (id)_populateButtonItem:(id)a3 imageName:(id)a4 command:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E69C9F90]);
  v11 = v10;
  if (v7)
  {
    [v10 setTitle:v7];
  }

  if (v8)
  {
    v12 = objc_opt_new();
    [v12 setSymbolName:v8];
    [v12 setIsTemplate:1];
    [v11 setImage:v12];
  }

  [v11 setCommand:v9];
  v13 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v20 = 138477827;
    v21 = v7;
    _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, "Title: %{private}@", &v20, 0xCu);
  }

  v14 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v20 = 138477827;
    v21 = v8;
    _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_INFO, "Image name: %{private}@", &v20, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = MKGetMKSearchFoundationResultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v9 url];
      v20 = 138477827;
      v21 = v16;
      _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "Url: %{private}@", &v20, 0xCu);
    }

    v17 = MKGetMKSearchFoundationResultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v9 applicationBundleIdentifier];
      v20 = 138477827;
      v21 = v18;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "Application bundle identifier: %{private}@", &v20, 0xCu);
    }
  }

  return v11;
}

- (id)_populateAppClipData:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134283521;
    v36 = [v4 count];
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Link count : %{private}ld", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v29 = self;
    v9 = *v31;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([v11 type] == 2)
        {
          v12 = [v11 bundleID];

          if (v12)
          {
            v18 = objc_alloc_init(MEMORY[0x1E69CA350]);
            v19 = MEMORY[0x1E695DFF8];
            v20 = [v11 URLString];
            v21 = [v19 URLWithString:v20];
            [v18 setUrl:v21];

            v22 = [v11 bundleID];
            [v18 setApplicationBundleIdentifier:v22];

            v23 = [v11 imageName];
            v24 = MKGetMKSearchFoundationResultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [v11 type];
              *buf = 134283521;
              v36 = v25;
              _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_INFO, "Returning Link type : %{private}ld", buf, 0xCu);
            }

            v26 = [v11 title];
            if (v23)
            {
              v27 = v23;
            }

            else
            {
              v27 = @"appclip";
            }

            v17 = [(MKSearchFoundationResult *)v29 _populateButtonItem:v26 imageName:v27 command:v18];

            goto LABEL_23;
          }
        }

        v13 = MKGetMKSearchFoundationResultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v11 type];
          *buf = 134283521;
          v36 = v14;
          _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, "Link type : %{private}ld", buf, 0xCu);
        }

        v15 = MKGetMKSearchFoundationResultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v11 URLString];
          *buf = 138477827;
          v36 = v16;
          _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "Link : %{private}@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_23:

  return v17;
}

- (id)_populateButtonItemsAndCommands
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MKMapItem *)self->_mapItem phoneNumber];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C9EF8]);
    v6 = [(MKMapItem *)self->_mapItem phoneNumber];
    [v5 setPhoneNumber:v6];

    v7 = [(MKSearchFoundationResult *)self _populateButtonItem:0 imageName:0 command:v5];
    [v3 addObject:v7];
  }

  if (self->_mapsData && [(MKMapItem *)self->_mapItem _canGetDirections])
  {
    v8 = _MKLocalizedStringFromThisBundle(@"Go");
    v9 = objc_alloc_init(MEMORY[0x1E69C9EB8]);
    [v9 setMapsData:self->_mapsData];
    v10 = [(MKSearchFoundationResult *)self _populateButtonItem:v8 imageName:@"arrow.triangle.turn.up.right.circle.fill" command:v9];
    [v3 addObject:v10];
  }

  v11 = [(MKMapItem *)self->_mapItem _messageURLString];

  if (v11)
  {
    v12 = _MKLocalizedStringFromThisBundle(@"Message");
    v13 = objc_alloc_init(MEMORY[0x1E69CA2A0]);
    v14 = MEMORY[0x1E69CA320];
    v15 = MEMORY[0x1E695DFF8];
    v16 = [(MKMapItem *)self->_mapItem _messageURLString];
    v17 = [v15 URLWithString:v16];
    v18 = [v14 punchoutWithURL:v17];
    [v13 setPunchout:v18];

    v19 = [(MKSearchFoundationResult *)self _populateButtonItem:v12 imageName:@"message.fill" command:v13];
    [v3 addObject:v19];
  }

  v20 = [(MKMapItem *)self->_mapItem _quickLinks];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [(MKMapItem *)self->_mapItem _quickLinks];
    v23 = [(MKSearchFoundationResult *)self _populateAppClipData:v22];

    if (v23)
    {
      [v3 addObject:v23];
    }
  }

  v24 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v26 = 134283521;
    v27 = [v3 count];
    _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_INFO, "Buttom items count: %{private}lu", &v26, 0xCu);
  }

  return v3;
}

- (void)_commonInit
{
  v15[1] = *MEMORY[0x1E69E9840];
  self->_optionSmallerScreen = [(MKSearchFoundationResult *)self _isSmallerScreen];
  v3 = [(MKMapItem *)self->_mapItem _hasMUID];
  v4 = 1;
  if (!v3)
  {
    v4 = 2;
  }

  self->_mksfResultType = v4;
  v5 = objc_opt_new();
  v6 = [[MKSearchFoundationRichText alloc] initRichTextTitleWithMapItem:self->_mapItem resultsType:self->_mksfResultType];
  [v5 setTitle:v6];

  v7 = [(MKSearchFoundationResult *)self _defaultRichTextItems];
  [v5 setDescriptions:v7];

  if ([(MKMapItem *)self->_mapItem _isMapItemTypeBrand])
  {
    [(MKSearchFoundationResult *)self _businessCategory];
  }

  else
  {
    [(MKSearchFoundationResult *)self _businessReviewText];
  }
  v8 = ;
  objc_storeStrong(&self->_fourthLineDisplayedText, v8);

  [v5 setFootnote:self->_fourthLineDisplayedText];
  v9 = [[MKSearchFoundationImage alloc] initIconWithSize:self->_iconSize mapItem:self->_mapItem];
  [v5 setThumbnail:v9];

  v10 = [MKSearchFoundationActionItem defaultActionItemDestinationMapItemData:self->_mapsData mapItem:self->_mapItem];
  [v5 setAction:v10];

  v11 = [(MKSearchFoundationResult *)self _populateButtonItemsAndCommands];
  [v5 setButtonItems:v11];

  v12 = objc_opt_new();
  [(MKSearchFoundationResult *)self setInlineCard:v12];

  v15[0] = v5;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = [(MKSearchFoundationResult *)self inlineCard];
  [v14 setCardSections:v13];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(MKLocationManager *)self->_locationManager stopLocationUpdateWithObserver:self];
  if (self->_attributionObserver)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self->_attributionObserver];
  }

  v5.receiver = self;
  v5.super_class = MKSearchFoundationResult;
  [(MKSearchFoundationResult *)&v5 dealloc];
}

- (MKSearchFoundationResult)initWithMapsData:(id)a3 iconSize:(unint64_t)a4 bundleID:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MKSearchFoundationResult;
  v11 = [(MKSearchFoundationResult *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mapsData, a3);
    v13 = [MKMapItem mapItemWithSerializedPlaceData:v9];
    mapItem = v12->_mapItem;
    v12->_mapItem = v13;

    v12->_iconSize = a4;
    objc_storeStrong(&v12->_bundleID, a5);
    [(MKSearchFoundationResult *)v12 _commonInit];
  }

  return v12;
}

+ (id)styledStringFromStringArray:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 objectEnumerator];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC668] sharedApplication];
      if ([v7 userInterfaceLayoutDirection] == 1)
      {
        [v3 reverseObjectEnumerator];
      }

      else
      {
        [v3 objectEnumerator];
      }
      v5 = ;
    }

    v8 = _MKLocalizedStringFromThisBundle(@"BULLET_STRING_COMPONENT_KEY");
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v9 = [v5 nextObject];
    [(__CFString *)v6 appendString:v9];
    v10 = [v5 nextObject];

    if (v10)
    {
      do
      {
        [(__CFString *)v6 appendString:v8];
        v11 = [(__CFString *)v6 rangeOfString:@"%@"];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(__CFString *)v6 replaceCharactersInRange:v11 withString:v12, v10];
        }

        v13 = [v5 nextObject];

        v10 = v13;
      }

      while (v13);
    }
  }

  else
  {
    v6 = &stru_1F15B23C0;
  }

  return v6;
}

@end