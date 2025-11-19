@interface MapsUIImageSuggestionSpec
- (BOOL)isEqual:(id)a3;
- (MapsUIImageSuggestionSpec)initWithFavorite:(id)a3;
- (MapsUIImageSuggestionSpec)initWithSuggestion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4;
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
  v17 = [(MapsUIImageSuggestionSpec *)self suggestionType];
  v3 = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
  v4 = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
  v5 = [(MapsUIImageSuggestionSpec *)self originBundleID];
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

  v15 = [NSString stringWithFormat:@"<%@: %p suggestionType = %d, suggestionAttributes = %@, mapItemAttributes = %@; originBundleID = %@, showEVChargingIcon = %@, showOnboardingMultipleVehiclesIcon = %@, inverted = %@, isDashboardWidget = %@; nightMode = %@>", v18, self, v17, v3, v4, v5, v7, v9, v11, v13, v14];;

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v21 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MapsUIImageSuggestionSpec *)self suggestionType];
    if (v7 == [(MapsUIImageSuggestionSpec *)v6 suggestionType])
    {
      v8 = [(MapsUIImageSuggestionSpec *)self uniqueIdentifier];
      v9 = [(MapsUIImageSuggestionSpec *)v6 uniqueIdentifier];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
        v11 = [(MapsUIImageSuggestionSpec *)v6 suggestionAttributes];
        if (v10 == v11 || [v10 isEqual:v11])
        {
          v12 = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
          v13 = [(MapsUIImageSuggestionSpec *)v6 mapItemAttributes];
          if (v12 == v13 || [v12 isEqual:v13])
          {
            v26 = v12;
            v14 = [(MapsUIImageSuggestionSpec *)self originBundleID];
            v15 = [(MapsUIImageSuggestionSpec *)v6 originBundleID];
            if (v14 == v15 || [v14 isEqual:v15])
            {
              v16 = [(MapsUIImageSuggestionSpec *)self showEVChargingIcon];
              if (v16 == [(MapsUIImageSuggestionSpec *)v6 showEVChargingIcon]&& (v17 = [(MapsUIImageSuggestionSpec *)self showOnboardingMultipleVehiclesIcon], v17 == [(MapsUIImageSuggestionSpec *)v6 showOnboardingMultipleVehiclesIcon]) && (v18 = [(MapsUIImageSuggestionSpec *)self inverted], v18 == [(MapsUIImageSuggestionSpec *)v6 inverted]) && (v19 = [(MapsUIImageSuggestionSpec *)self isDashboardWidget], v19 == [(MapsUIImageSuggestionSpec *)v6 isDashboardWidget]) && (v20 = [(MapsUIImageSpec *)self nightMode], v20 == [(MapsUIImageSpec *)v6 nightMode]))
              {
                v23 = [(MapsUIImageSuggestionSpec *)self contact];
                v24 = [(MapsUIImageSuggestionSpec *)v6 contact];
                v21 = v23 == v24;
              }

              else
              {
                v21 = 0;
              }

              v14 = v25;
            }

            else
            {
              v21 = 0;
            }

            v12 = v26;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setSuggestionType:{-[MapsUIImageSuggestionSpec suggestionType](self, "suggestionType")}];
  v5 = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
  [v4 setSuggestionAttributes:v5];

  v6 = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
  [v4 setMapItemAttributes:v6];

  v7 = [(MapsUIImageSuggestionSpec *)self originBundleID];
  [v4 setOriginBundleID:v7];

  [v4 setShowEVChargingIcon:{-[MapsUIImageSuggestionSpec showEVChargingIcon](self, "showEVChargingIcon")}];
  [v4 setShowOnboardingMultipleVehiclesIcon:{-[MapsUIImageSuggestionSpec showOnboardingMultipleVehiclesIcon](self, "showOnboardingMultipleVehiclesIcon")}];
  [v4 setInverted:{-[MapsUIImageSuggestionSpec inverted](self, "inverted")}];
  [v4 setIsDashboardWidget:{-[MapsUIImageSuggestionSpec isDashboardWidget](self, "isDashboardWidget")}];
  [v4 setNightMode:{-[MapsUIImageSpec nightMode](self, "nightMode")}];
  v8 = [(MapsUIImageSuggestionSpec *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:v8];

  v9 = [(MapsUIImageSuggestionSpec *)self contact];
  [v4 setContact:v9];

  return v4;
}

- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4
{
  v19 = [(MapsUIImageSuggestionSpec *)self suggestionType];
  v6 = [(MapsUIImageSuggestionSpec *)self suggestionAttributes];
  v7 = [(MapsUIImageSuggestionSpec *)self mapItemAttributes];
  v8 = [(MapsUIImageSuggestionSpec *)self originBundleID];
  v9 = [(MapsUIImageSuggestionSpec *)self showEVChargingIcon];
  v10 = [(MapsUIImageSuggestionSpec *)self showOnboardingMultipleVehiclesIcon];
  v11 = [(MapsUIImageSuggestionSpec *)self inverted];
  v12 = [(MapsUIImageSuggestionSpec *)self isDashboardWidget];
  v13 = [(MapsUIImageSpec *)self nightMode];
  v14 = [(MapsUIImageSpec *)self isRTL];
  v15 = [(MapsUIImageSuggestionSpec *)self contact];
  BYTE3(v18) = v14;
  BYTE2(v18) = v13;
  BYTE1(v18) = v12;
  LOBYTE(v18) = v11;
  v16 = [MapsSuggestionsEntry iconForSuggestionType:"iconForSuggestionType:suggestionAttributes:mapItemAttributes:originBundleID:screenScale:showEVChargingIcon:showOnboardingMultipleVehiclesIcon:inverted:isDashboardWidget:nightMode:isRTL:contact:" suggestionAttributes:v19 mapItemAttributes:v6 originBundleID:v7 screenScale:v8 showEVChargingIcon:v9 showOnboardingMultipleVehiclesIcon:v10 inverted:a3 isDashboardWidget:v18 nightMode:v15 isRTL:? contact:?];

  return v16;
}

- (MapsUIImageSuggestionSpec)initWithFavorite:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MapsUIImageSuggestionSpec;
  v5 = [(MapsUIImageSuggestionSpec *)&v11 init];
  if (v5)
  {
    -[MapsUIImageSuggestionSpec setSuggestionType:](v5, "setSuggestionType:", [v4 entryType]);
    v6 = [v4 styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setSuggestionAttributes:v6];

    v7 = [v4 geoMapItem];
    v8 = [v7 _styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setMapItemAttributes:v8];

    [(MapsUIImageSuggestionSpec *)v5 setIsDashboardWidget:0];
    v9 = [v4 uniqueIdentifier];
    [(MapsUIImageSuggestionSpec *)v5 setUniqueIdentifier:v9];
  }

  return v5;
}

- (MapsUIImageSuggestionSpec)initWithSuggestion:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = MapsUIImageSuggestionSpec;
  v5 = [(MapsUIImageSuggestionSpec *)&v27 init];
  if (v5)
  {
    -[MapsUIImageSuggestionSpec setSuggestionType:](v5, "setSuggestionType:", [v4 type]);
    v6 = [v4 styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setSuggestionAttributes:v6];

    v7 = [v4 MKMapItem];
    v8 = [v7 _styleAttributes];
    [(MapsUIImageSuggestionSpec *)v5 setMapItemAttributes:v8];

    v9 = [v4 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
    [(MapsUIImageSuggestionSpec *)v5 setOriginBundleID:v9];

    v10 = v4;
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
    v14 = [v12 uniqueIdentifier];
    [(MapsUIImageSuggestionSpec *)v5 setUniqueIdentifier:v14];

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
          v21 = [v18 localizedDescription];
          *buf = 138412290;
          v29 = v21;
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