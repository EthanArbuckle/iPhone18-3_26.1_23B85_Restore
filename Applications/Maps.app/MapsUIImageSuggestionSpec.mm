@interface MapsUIImageSuggestionSpec
- (BOOL)isEqual:(id)equal;
- (MapsUIImageSuggestionSpec)initWithFavorite:(id)favorite;
- (MapsUIImageSuggestionSpec)initWithSuggestion:(id)suggestion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageForScale:(double)scale isCarPlay:(BOOL)play;
- (unint64_t)hash;
@end

@implementation MapsUIImageSuggestionSpec

- (unint64_t)hash
{
  v3 = [NSNumber numberWithInteger:[(MapsUIImageSuggestionSpec *)self suggestionType]];
  v4 = [v3 hash];
  if ([(MapsUIImageSuggestionSpec *)self inverted])
  {
    v5 = 2248;
  }

  else
  {
    v5 = 0;
  }

  if ([(MapsUIImageSuggestionSpec *)self isDashboardWidget])
  {
    v6 = 4496;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 ^ v6;
  if ([(MapsUIImageSpec *)self nightMode])
  {
    v8 = 4496;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 ^ v8;

  return v9 ^ v4;
}

- (id)description
{
  v18 = objc_opt_class();
  suggestionType = [(MapsUIImageSuggestionSpec *)self suggestionType];
  suggestionAttributes = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
  mapItemAttributes = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
  originBundleID = [(MapsUIImageSuggestionSpec *)self originBundleID];
  if ([(MapsUIImageSuggestionSpec *)self showEVChargingIcon])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if ([(MapsUIImageSuggestionSpec *)self showOnboardingMultipleVehiclesIcon])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  if ([(MapsUIImageSuggestionSpec *)self inverted])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  if ([(MapsUIImageSuggestionSpec *)self isDashboardWidget])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = v12;
  if ([(MapsUIImageSpec *)self nightMode])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [NSString stringWithFormat:@"<%@: %p suggestionType = %d, suggestionAttributes = %@, mapItemAttributes = %@; originBundleID = %@, showEVChargingIcon = %@, showOnboardingMultipleVehiclesIcon = %@, inverted = %@, isDashboardWidget = %@; nightMode = %@>", v18, self, suggestionType, suggestionAttributes, mapItemAttributes, originBundleID, v7, v9, v11, v13, v14];;

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v21 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    suggestionType = [(MapsUIImageSuggestionSpec *)self suggestionType];
    if (suggestionType == [(MapsUIImageSuggestionSpec *)v6 suggestionType])
    {
      uniqueIdentifier = [(MapsUIImageSuggestionSpec *)self uniqueIdentifier];
      uniqueIdentifier2 = [(MapsUIImageSuggestionSpec *)v6 uniqueIdentifier];
      if ([uniqueIdentifier isEqualToString:uniqueIdentifier2])
      {
        suggestionAttributes = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
        suggestionAttributes2 = [(MapsUIImageSuggestionSpec *)v6 suggestionAttributes];
        if (suggestionAttributes == suggestionAttributes2 || [suggestionAttributes isEqual:suggestionAttributes2])
        {
          mapItemAttributes = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
          mapItemAttributes2 = [(MapsUIImageSuggestionSpec *)v6 mapItemAttributes];
          if (mapItemAttributes == mapItemAttributes2 || [mapItemAttributes isEqual:mapItemAttributes2])
          {
            v26 = mapItemAttributes;
            originBundleID = [(MapsUIImageSuggestionSpec *)self originBundleID];
            originBundleID2 = [(MapsUIImageSuggestionSpec *)v6 originBundleID];
            if (originBundleID == originBundleID2 || [originBundleID isEqual:originBundleID2])
            {
              showEVChargingIcon = [(MapsUIImageSuggestionSpec *)self showEVChargingIcon];
              if (showEVChargingIcon == [(MapsUIImageSuggestionSpec *)v6 showEVChargingIcon]&& (v17 = [(MapsUIImageSuggestionSpec *)self showOnboardingMultipleVehiclesIcon], v17 == [(MapsUIImageSuggestionSpec *)v6 showOnboardingMultipleVehiclesIcon]) && (v18 = [(MapsUIImageSuggestionSpec *)self inverted], v18 == [(MapsUIImageSuggestionSpec *)v6 inverted]) && (v19 = [(MapsUIImageSuggestionSpec *)self isDashboardWidget], v19 == [(MapsUIImageSuggestionSpec *)v6 isDashboardWidget]) && (v20 = [(MapsUIImageSpec *)self nightMode], v20 == [(MapsUIImageSpec *)v6 nightMode]))
              {
                contact = [(MapsUIImageSuggestionSpec *)self contact];
                contact2 = [(MapsUIImageSuggestionSpec *)v6 contact];
                v21 = contact == contact2;
              }

              else
              {
                v21 = 0;
              }

              originBundleID = v25;
            }

            else
            {
              v21 = 0;
            }

            mapItemAttributes = v26;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setSuggestionType:{-[MapsUIImageSuggestionSpec suggestionType](self, "suggestionType")}];
  suggestionAttributes = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
  [v4 setSuggestionAttributes:suggestionAttributes];

  mapItemAttributes = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
  [v4 setMapItemAttributes:mapItemAttributes];

  originBundleID = [(MapsUIImageSuggestionSpec *)self originBundleID];
  [v4 setOriginBundleID:originBundleID];

  [v4 setShowEVChargingIcon:{-[MapsUIImageSuggestionSpec showEVChargingIcon](self, "showEVChargingIcon")}];
  [v4 setShowOnboardingMultipleVehiclesIcon:{-[MapsUIImageSuggestionSpec showOnboardingMultipleVehiclesIcon](self, "showOnboardingMultipleVehiclesIcon")}];
  [v4 setInverted:{-[MapsUIImageSuggestionSpec inverted](self, "inverted")}];
  [v4 setIsDashboardWidget:{-[MapsUIImageSuggestionSpec isDashboardWidget](self, "isDashboardWidget")}];
  [v4 setNightMode:{-[MapsUIImageSpec nightMode](self, "nightMode")}];
  uniqueIdentifier = [(MapsUIImageSuggestionSpec *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:uniqueIdentifier];

  contact = [(MapsUIImageSuggestionSpec *)self contact];
  [v4 setContact:contact];

  return v4;
}

- (id)imageForScale:(double)scale isCarPlay:(BOOL)play
{
  suggestionType = [(MapsUIImageSuggestionSpec *)self suggestionType];
  suggestionAttributes = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
  mapItemAttributes = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
  originBundleID = [(MapsUIImageSuggestionSpec *)self originBundleID];
  showEVChargingIcon = [(MapsUIImageSuggestionSpec *)self showEVChargingIcon];
  showOnboardingMultipleVehiclesIcon = [(MapsUIImageSuggestionSpec *)self showOnboardingMultipleVehiclesIcon];
  inverted = [(MapsUIImageSuggestionSpec *)self inverted];
  isDashboardWidget = [(MapsUIImageSuggestionSpec *)self isDashboardWidget];
  nightMode = [(MapsUIImageSpec *)self nightMode];
  isRTL = [(MapsUIImageSpec *)self isRTL];
  contact = [(MapsUIImageSuggestionSpec *)self contact];
  BYTE3(v18) = isRTL;
  BYTE2(v18) = nightMode;
  BYTE1(v18) = isDashboardWidget;
  LOBYTE(v18) = inverted;
  v16 = [MapsSuggestionsEntry iconForSuggestionType:"iconForSuggestionType:suggestionAttributes:mapItemAttributes:originBundleID:screenScale:showEVChargingIcon:showOnboardingMultipleVehiclesIcon:inverted:isDashboardWidget:nightMode:isRTL:contact:" suggestionAttributes:suggestionType mapItemAttributes:suggestionAttributes originBundleID:mapItemAttributes screenScale:originBundleID showEVChargingIcon:showEVChargingIcon showOnboardingMultipleVehiclesIcon:showOnboardingMultipleVehiclesIcon inverted:scale isDashboardWidget:v18 nightMode:contact isRTL:? contact:?];

  return v16;
}

- (MapsUIImageSuggestionSpec)initWithFavorite:(id)favorite
{
  favoriteCopy = favorite;
  v11.receiver = self;
  v11.super_class = MapsUIImageSuggestionSpec;
  v5 = [(MapsUIImageSuggestionSpec *)&v11 init];
  if (v5)
  {
    -[MapsUIImageSuggestionSpec setSuggestionType:](v5, "setSuggestionType:", [favoriteCopy entryType]);
    styleAttributes = [favoriteCopy styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setSuggestionAttributes:styleAttributes];

    geoMapItem = [favoriteCopy geoMapItem];
    _styleAttributes = [geoMapItem _styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setMapItemAttributes:_styleAttributes];

    [(MapsUIImageSuggestionSpec *)v5 setIsDashboardWidget:0];
    uniqueIdentifier = [favoriteCopy uniqueIdentifier];
    [(MapsUIImageSuggestionSpec *)v5 setUniqueIdentifier:uniqueIdentifier];
  }

  return v5;
}

- (MapsUIImageSuggestionSpec)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v27.receiver = self;
  v27.super_class = MapsUIImageSuggestionSpec;
  v5 = [(MapsUIImageSuggestionSpec *)&v27 init];
  if (v5)
  {
    -[MapsUIImageSuggestionSpec setSuggestionType:](v5, "setSuggestionType:", [suggestionCopy type]);
    styleAttributes = [suggestionCopy styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setSuggestionAttributes:styleAttributes];

    mKMapItem = [suggestionCopy MKMapItem];
    _styleAttributes = [mKMapItem _styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setMapItemAttributes:_styleAttributes];

    v9 = [suggestionCopy stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
    [(MapsUIImageSuggestionSpec *)v5 setOriginBundleID:v9];

    v10 = suggestionCopy;
    if ([v10 type] == 11 && (objc_msgSend(v10, "BOOLeanForKey:is:", @"MapsSuggestionsHasEnoughChargeKey", 1) & 1) == 0)
    {
      v11 = [v10 BOOLeanForKey:@"MapsSuggestionsIsResumingAnEVRoute" is:1];
    }

    else
    {
      v11 = 0;
    }

    [(MapsUIImageSuggestionSpec *)v5 setShowEVChargingIcon:v11];
    v12 = v10;
    v13 = [v12 type] == 20 ? objc_msgSend(v12, "BOOLeanForKey:is:", @"MapsSuggestionsVehicleSetupWithGenericIconKey", 1) : 0;

    [(MapsUIImageSuggestionSpec *)v5 setShowOnboardingMultipleVehiclesIcon:v13];
    [(MapsUIImageSuggestionSpec *)v5 setIsDashboardWidget:0];
    uniqueIdentifier = [v12 uniqueIdentifier];
    [(MapsUIImageSuggestionSpec *)v5 setUniqueIdentifier:uniqueIdentifier];

    if (*&v5->_inverted == 24)
    {
      if ([v12 containsKey:@"MapsSuggestionsContactAsDataKey"])
      {
        v15 = objc_opt_class();
        v16 = [v12 dataForKey:@"MapsSuggestionsContactAsDataKey"];
        v26 = 0;
        v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:v15 fromData:v16 error:&v26];
        v18 = v26;
        originBundleID = v5->_originBundleID;
        v5->_originBundleID = v17;

        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v18 localizedDescription];
          *buf = 138412290;
          v29 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error unarchiving contact from entry: %@", buf, 0xCu);
        }
      }

      else
      {
        v18 = 0;
      }

      if (!v5->_originBundleID)
      {
        v22 = [v12 stringForKey:@"MapsSuggestionsContactLikelyAppleIDKey"];
        v23 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:v22];
        v24 = v5->_originBundleID;
        v5->_originBundleID = v23;
      }
    }
  }

  return v5;
}

@end