@interface MKSearchFoundationResult
+ (id)styledStringFromStringArray:(id)array;
- (BOOL)_isSmallerScreen;
- (MKSearchFoundationResult)initWithMapsData:(id)data iconSize:(unint64_t)size bundleID:(id)d;
- (id)_appleRatingsDescription;
- (id)_brandURL;
- (id)_businessAddress;
- (id)_businessCategory;
- (id)_businessHoursAndDistance;
- (id)_businessReviewText;
- (id)_defaultRichTextItems;
- (id)_populateAppClipData:(id)data;
- (id)_populateButtonItem:(id)item imageName:(id)name command:(id)command;
- (id)_populateButtonItemsAndCommands;
- (void)_commonInit;
- (void)_locationApprovalDidChange;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
@end

@implementation MKSearchFoundationResult

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  lastLocation = [locationCopy lastLocation];

  if (lastLocation)
  {
    lastLocation2 = [locationCopy lastLocation];
    v6 = objc_alloc(MEMORY[0x1E6985C40]);
    [(MKMapItem *)self->_mapItem _coordinate];
    v8 = v7;
    [(MKMapItem *)self->_mapItem _coordinate];
    v9 = [v6 initWithLatitude:v8 longitude:?];
    [lastLocation2 distanceFromLocation:v9];
    v10 = [MEMORY[0x1E696AEC0] _navigation_localizedStringForDistance:0 detail:self->_optionSmallerScreen unitFormat:0 locale:0 useMetric:0 useYards:?];
    [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self->_thirdLineDisplayedText resolveDistanceString:v10 lines:self->_thirdLineText];
    [locationCopy stopLocationUpdateWithObserver:self];
  }
}

- (void)_locationApprovalDidChange
{
  isLocationServicesAvailable = [(MKLocationManager *)self->_locationManager isLocationServicesAvailable];
  locationManager = self->_locationManager;
  if (isLocationServicesAvailable)
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3 <= 375.0;

  return v4;
}

- (id)_businessHoursAndDistance
{
  v3 = [(MKSearchFoundationRichText *)[MKSearchFoundationBusinessHoursAndDistanceRichText alloc] initWithString:&stru_1F15B23C0];
  array = [MEMORY[0x1E695DF70] array];
  thirdLineText = self->_thirdLineText;
  self->_thirdLineText = array;

  [(MKSearchFoundationBusinessHoursAndDistanceRichText *)v3 resolveBusinessHoursByMapItem:self->_mapItem lines:self->_thirdLineText];

  return v3;
}

- (id)_brandURL
{
  v2 = [(MKMapItem *)self->_mapItem url];
  host = [v2 host];

  if ([host length])
  {
    v4 = [(MKSearchFoundationRichText *)[MKSearchFoundationBusinessHoursAndDistanceRichText alloc] initWithString:host];
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
  _firstLocalizedCategoryName = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
  v4 = [_firstLocalizedCategoryName length];

  if (v4)
  {
    v5 = [MKSearchFoundationRichText alloc];
    _firstLocalizedCategoryName2 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
    v11[0] = _firstLocalizedCategoryName2;
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
  _shortAddress = [(MKMapItem *)self->_mapItem _shortAddress];
  _geoAddress = [(MKMapItem *)self->_mapItem _geoAddress];
  singleLineAddress = [_geoAddress singleLineAddress];

  v6 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v14 = singleLineAddress;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "MapItem single line address: %{private}@", buf, 0xCu);
  }

  if ([_shortAddress length] && (objc_msgSend(_shortAddress, "isEqualToString:", singleLineAddress) & 1) == 0)
  {
    v12 = _shortAddress;
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
    _appleRatingsDescription = [(MKSearchFoundationResult *)self _appleRatingsDescription];
    [(MKSearchFoundationRichText *)v3 setText:_appleRatingsDescription];

    array = objc_alloc_init(MEMORY[0x1E69CA4C8]);
    [array setSymbolName:@"hand.thumbsup.fill"];
    [array setIsTemplate:1];
    v34[0] = array;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [(SFRichText *)v3 setIcons:v8];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([(MKMapItem *)self->_mapItem _hasUserRatingScore])
    {
      [(MKMapItem *)self->_mapItem _normalizedUserRatingScore];
      [(SFRichText *)v3 setStarRating:v9];
      _reviewsAttribution = [(MKMapItem *)self->_mapItem _reviewsAttribution];
      providerName = [_reviewsAttribution providerName];
      v12 = [providerName length];

      v13 = MEMORY[0x1E696AEC0];
      if (v12)
      {
        v14 = _MKLocalizedStringFromThisBundle(@"Place_Reviews_On_Provider");
        _sampleSizeForUserRatingScore = [(MKMapItem *)self->_mapItem _sampleSizeForUserRatingScore];
        _reviewsDisplayName = [(MKMapItem *)self->_mapItem _reviewsDisplayName];
        v17 = [v13 localizedStringWithFormat:v14, _sampleSizeForUserRatingScore, _reviewsDisplayName];

        if ([array count])
        {
          [array insertObject:v17 atIndex:0];
        }

        else
        {
          [array addObject:v17];
        }

        [(MKSearchFoundationBusinessReviewRichText *)v3 setReviewResolved:1];
      }

      else
      {
        v18 = _MKLocalizedStringFromThisBundle(@"Place_Reviews_Number_Parsec");
        v19 = [v13 localizedStringWithFormat:v18, -[MKMapItem _sampleSizeForUserRatingScore](self->_mapItem, "_sampleSizeForUserRatingScore")];

        [array addObject:v19];
        objc_initWeak(&location, self);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        mapItem = self->_mapItem;
        mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __47__MKSearchFoundationResult__businessReviewText__block_invoke;
        v28[3] = &unk_1E76CA2D0;
        objc_copyWeak(&v32, &location);
        v29 = v3;
        v30 = array;
        v23 = v19;
        v31 = v23;
        v24 = [defaultCenter addObserverForName:@"MKMapItemDidResolveAttribution" object:mapItem queue:mainQueue usingBlock:v28];
        attributionObserver = self->_attributionObserver;
        self->_attributionObserver = v24;

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }
    }

    if ([array count])
    {
      v8 = [MKSearchFoundationResult styledStringFromStringArray:array];
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
  _geoMapItem = [(MKMapItem *)v2 _geoMapItem];
  _overallAppleRating = [_geoMapItem _overallAppleRating];
  [_overallAppleRating percentage];
  v9 = [v5 localizedStringWithFormat:v3, (v8 * 100.0)];

  v10 = MEMORY[0x1E696AEC0];
  _geoMapItem2 = [(MKMapItem *)v2 _geoMapItem];
  _overallAppleRating2 = [_geoMapItem2 _overallAppleRating];
  v13 = +[MKFirstPartyRatingFormatter stringFromCount:](MKFirstPartyRatingFormatter, "stringFromCount:", [_overallAppleRating2 numberOfRatingsUsedForScore]);
  v14 = [v10 localizedStringWithFormat:v4, v13];

  v18[0] = v9;
  v18[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = [v15 componentsJoinedByString:@" "];

  return v16;
}

- (id)_defaultRichTextItems
{
  array = [MEMORY[0x1E695DF70] array];
  _isMapItemTypeBrand = [(MKMapItem *)self->_mapItem _isMapItemTypeBrand];
  if (_isMapItemTypeBrand)
  {
    _businessAddress = 0;
  }

  else
  {
    _businessAddress = [(MKSearchFoundationResult *)self _businessAddress];
  }

  objc_storeStrong(&self->_secondLineDisplayedText, _businessAddress);
  if (!_isMapItemTypeBrand)
  {
  }

  if (self->_secondLineDisplayedText)
  {
    [array addObject:?];
  }

  if ([(MKMapItem *)self->_mapItem _isMapItemTypeBrand])
  {
    v6 = [(MKMapItem *)self->_mapItem url];

    if (v6)
    {
      _brandURL = [(MKSearchFoundationResult *)self _brandURL];
      thirdLineDisplayedText = self->_thirdLineDisplayedText;
      self->_thirdLineDisplayedText = _brandURL;

      [array addObject:self->_thirdLineDisplayedText];
    }
  }

  else
  {
    _businessHoursAndDistance = [(MKSearchFoundationResult *)self _businessHoursAndDistance];
    v10 = self->_thirdLineDisplayedText;
    self->_thirdLineDisplayedText = _businessHoursAndDistance;

    if (self->_thirdLineDisplayedText)
    {
      [array addObject:?];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__locationApprovalDidChange name:MKLocationManagerApprovalDidChangeNotification object:0];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MKSearchFoundationResult__defaultRichTextItems__block_invoke;
    block[3] = &unk_1E76CDB38;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return array;
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

- (id)_populateButtonItem:(id)item imageName:(id)name command:(id)command
{
  v22 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  nameCopy = name;
  commandCopy = command;
  v10 = objc_alloc_init(MEMORY[0x1E69C9F90]);
  v11 = v10;
  if (itemCopy)
  {
    [v10 setTitle:itemCopy];
  }

  if (nameCopy)
  {
    v12 = objc_opt_new();
    [v12 setSymbolName:nameCopy];
    [v12 setIsTemplate:1];
    [v11 setImage:v12];
  }

  [v11 setCommand:commandCopy];
  v13 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v20 = 138477827;
    v21 = itemCopy;
    _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, "Title: %{private}@", &v20, 0xCu);
  }

  v14 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v20 = 138477827;
    v21 = nameCopy;
    _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_INFO, "Image name: %{private}@", &v20, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = MKGetMKSearchFoundationResultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [commandCopy url];
      v20 = 138477827;
      v21 = v16;
      _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "Url: %{private}@", &v20, 0xCu);
    }

    v17 = MKGetMKSearchFoundationResultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];
      v20 = 138477827;
      v21 = applicationBundleIdentifier;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "Application bundle identifier: %{private}@", &v20, 0xCu);
    }
  }

  return v11;
}

- (id)_populateAppClipData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134283521;
    v36 = [dataCopy count];
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Link count : %{private}ld", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = dataCopy;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
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
          bundleID = [v11 bundleID];

          if (bundleID)
          {
            v18 = objc_alloc_init(MEMORY[0x1E69CA350]);
            v19 = MEMORY[0x1E695DFF8];
            uRLString = [v11 URLString];
            v21 = [v19 URLWithString:uRLString];
            [v18 setUrl:v21];

            bundleID2 = [v11 bundleID];
            [v18 setApplicationBundleIdentifier:bundleID2];

            imageName = [v11 imageName];
            v24 = MKGetMKSearchFoundationResultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              type = [v11 type];
              *buf = 134283521;
              v36 = type;
              _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_INFO, "Returning Link type : %{private}ld", buf, 0xCu);
            }

            title = [v11 title];
            if (imageName)
            {
              v27 = imageName;
            }

            else
            {
              v27 = @"appclip";
            }

            v17 = [(MKSearchFoundationResult *)selfCopy _populateButtonItem:title imageName:v27 command:v18];

            goto LABEL_23;
          }
        }

        v13 = MKGetMKSearchFoundationResultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          type2 = [v11 type];
          *buf = 134283521;
          v36 = type2;
          _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, "Link type : %{private}ld", buf, 0xCu);
        }

        v15 = MKGetMKSearchFoundationResultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          uRLString2 = [v11 URLString];
          *buf = 138477827;
          v36 = uRLString2;
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
  phoneNumber = [(MKMapItem *)self->_mapItem phoneNumber];

  if (phoneNumber)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C9EF8]);
    phoneNumber2 = [(MKMapItem *)self->_mapItem phoneNumber];
    [v5 setPhoneNumber:phoneNumber2];

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

  _messageURLString = [(MKMapItem *)self->_mapItem _messageURLString];

  if (_messageURLString)
  {
    v12 = _MKLocalizedStringFromThisBundle(@"Message");
    v13 = objc_alloc_init(MEMORY[0x1E69CA2A0]);
    v14 = MEMORY[0x1E69CA320];
    v15 = MEMORY[0x1E695DFF8];
    _messageURLString2 = [(MKMapItem *)self->_mapItem _messageURLString];
    v17 = [v15 URLWithString:_messageURLString2];
    v18 = [v14 punchoutWithURL:v17];
    [v13 setPunchout:v18];

    v19 = [(MKSearchFoundationResult *)self _populateButtonItem:v12 imageName:@"message.fill" command:v13];
    [v3 addObject:v19];
  }

  _quickLinks = [(MKMapItem *)self->_mapItem _quickLinks];
  v21 = [_quickLinks count];

  if (v21)
  {
    _quickLinks2 = [(MKMapItem *)self->_mapItem _quickLinks];
    v23 = [(MKSearchFoundationResult *)self _populateAppClipData:_quickLinks2];

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
  _hasMUID = [(MKMapItem *)self->_mapItem _hasMUID];
  v4 = 1;
  if (!_hasMUID)
  {
    v4 = 2;
  }

  self->_mksfResultType = v4;
  v5 = objc_opt_new();
  v6 = [[MKSearchFoundationRichText alloc] initRichTextTitleWithMapItem:self->_mapItem resultsType:self->_mksfResultType];
  [v5 setTitle:v6];

  _defaultRichTextItems = [(MKSearchFoundationResult *)self _defaultRichTextItems];
  [v5 setDescriptions:_defaultRichTextItems];

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

  _populateButtonItemsAndCommands = [(MKSearchFoundationResult *)self _populateButtonItemsAndCommands];
  [v5 setButtonItems:_populateButtonItemsAndCommands];

  v12 = objc_opt_new();
  [(MKSearchFoundationResult *)self setInlineCard:v12];

  v15[0] = v5;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  inlineCard = [(MKSearchFoundationResult *)self inlineCard];
  [inlineCard setCardSections:v13];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];

  [(MKLocationManager *)self->_locationManager stopLocationUpdateWithObserver:self];
  if (self->_attributionObserver)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self->_attributionObserver];
  }

  v5.receiver = self;
  v5.super_class = MKSearchFoundationResult;
  [(MKSearchFoundationResult *)&v5 dealloc];
}

- (MKSearchFoundationResult)initWithMapsData:(id)data iconSize:(unint64_t)size bundleID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = MKSearchFoundationResult;
  v11 = [(MKSearchFoundationResult *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mapsData, data);
    v13 = [MKMapItem mapItemWithSerializedPlaceData:dataCopy];
    mapItem = v12->_mapItem;
    v12->_mapItem = v13;

    v12->_iconSize = size;
    objc_storeStrong(&v12->_bundleID, d);
    [(MKSearchFoundationResult *)v12 _commonInit];
  }

  return v12;
}

+ (id)styledStringFromStringArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  if (v4)
  {
    if (v4 == 1)
    {
      objectEnumerator = [arrayCopy objectEnumerator];
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      if ([mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1)
      {
        [arrayCopy reverseObjectEnumerator];
      }

      else
      {
        [arrayCopy objectEnumerator];
      }
      objectEnumerator = ;
    }

    v8 = _MKLocalizedStringFromThisBundle(@"BULLET_STRING_COMPONENT_KEY");
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    nextObject = [objectEnumerator nextObject];
    [(__CFString *)v6 appendString:nextObject];
    nextObject2 = [objectEnumerator nextObject];

    if (nextObject2)
    {
      do
      {
        [(__CFString *)v6 appendString:v8];
        v11 = [(__CFString *)v6 rangeOfString:@"%@"];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(__CFString *)v6 replaceCharactersInRange:v11 withString:v12, nextObject2];
        }

        nextObject3 = [objectEnumerator nextObject];

        nextObject2 = nextObject3;
      }

      while (nextObject3);
    }
  }

  else
  {
    v6 = &stru_1F15B23C0;
  }

  return v6;
}

@end