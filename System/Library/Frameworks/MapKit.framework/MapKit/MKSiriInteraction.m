@interface MKSiriInteraction
+ (NSString)navigationHash;
+ (id)_siriIntentMurmurHash:(id)a3;
+ (void)generateHashForNavigationURL:(id)a3;
+ (void)removeRecentIntentWithPlacemark:(id)a3;
+ (void)removeRecentIntentWithSearchText:(id)a3;
- (BOOL)_isIntentDeletable;
- (BOOL)_isStartNavigationAction:(int)a3;
- (BOOL)_isValidTargetForNavUI:(int)a3;
- (MKSiriInteraction)initWithGEOUIAction:(int)a3 target:(int)a4 mapItem:(id)a5 resultIndex:(int)a6 searchCategory:(id)a7 searchQueryString:(id)a8;
- (id)_siriIntentHash:(id)a3;
- (id)_whiteListedBrowseCategoryActionAsString:(int)a3;
- (id)_whiteListedNavigationActionAsString:(int)a3;
- (id)_whiteListedPlaceCardActionAsString:(int)a3;
- (id)_whiteListedSearchActionAsString:(int)a3;
- (id)_whiteListedSiriListActionAsString:(int)a3;
- (id)intentIfWanted;
- (void)_navTimerFired:(id)a3;
- (void)donateIfWanted;
@end

@implementation MKSiriInteraction

- (BOOL)_isIntentDeletable
{
  target = self->_target;
  if (target == 501 || target == 201)
  {
    if (self->_action != 21)
    {
      return 0;
    }
  }

  else if (target != 101 || self->_action != 2014)
  {
    return 0;
  }

  return 1;
}

- (id)intentIfWanted
{
  v55[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = [(MKSiriInteraction *)self _isValidTargetForNavUI:self->_target];
  target = self->_target;
  if ((target - 803) < 2)
  {
    v8 = [(MKSiriInteraction *)self _whiteListedSiriListActionAsString:self->_action];
    v9 = 0;
    v10 = 0;
    v7 = @"ResultListTap";
  }

  else if (target == 501 || target == 201)
  {
    if (self->_action == 21)
    {
      v7 = @"Show";
    }

    else
    {
      v7 = @"PlaceCardTap";
    }

    v8 = [(MKSiriInteraction *)self _whiteListedPlaceCardActionAsString:?];
    v9 = 0;
    v10 = 0;
  }

  else if (v5)
  {
    v8 = [(MKSiriInteraction *)self _whiteListedNavigationActionAsString:self->_action];
    v9 = +[MKSiriInteraction navigationHash];
    if ([(MKSiriInteraction *)self _isStartNavigationAction:self->_action])
    {
      if (self->_target == 104)
      {
        v7 = @"Navigation";
        v10 = @"Search Along the Route";
      }

      else
      {
        if (!s_navStartedTimer)
        {
          v42 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__navTimerFired_ selector:0 userInfo:0 repeats:30.0];
          v43 = s_navStartedTimer;
          s_navStartedTimer = v42;
        }

        v7 = @"Navigation";
        v10 = @"New Request";
      }
    }

    else
    {
      if (self->_action == 3002)
      {
        [MKSiriInteraction setNavigationHash:0];
        [s_navStartedTimer invalidate];
        v41 = s_navStartedTimer;
        s_navStartedTimer = 0;
      }

      v10 = 0;
      v7 = @"Navigation";
    }
  }

  else if (target == 101)
  {
    v8 = [(MKSiriInteraction *)self _whiteListedSearchActionAsString:self->_action];
    v9 = 0;
    v10 = 0;
    v7 = @"Search";
  }

  else if (target == 9)
  {
    v8 = [(MKSiriInteraction *)self _whiteListedBrowseCategoryActionAsString:self->_action];
    v9 = 0;
    v10 = 0;
    v7 = @"SelectCategory";
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v7 = 0;
  }

  if ([(MKMapItem *)self->_mapItem _muid]|| ([(MKMapItem *)self->_mapItem _shortAddress], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    if ([(MKMapItem *)self->_mapItem _muid])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", -[MKMapItem _muid](self->_mapItem, "_muid")];
    }

    else
    {
      [(MKMapItem *)self->_mapItem _shortAddress];
    }
    v12 = ;
  }

  else
  {
    v12 = &stru_1F15B23C0;
  }

  v13 = 0;
  if (v7 && v8 && v12)
  {
    v47 = v12;
    v48 = v10;
    v54[0] = @"element";
    v54[1] = @"poi_identifier";
    v55[0] = v8;
    v55[1] = v12;
    v54[2] = @"compatibilityVersion";
    v55[2] = &unk_1F1610D50;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v15 = [v14 mutableCopy];

    if (v9)
    {
      [v15 setObject:v9 forKeyedSubscript:@"nav_identifier"];
    }

    v16 = [(MKMapItem *)self->_mapItem name];
    v17 = [v16 length];

    if (v17)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = _MKLocalizedStringFromThisBundle(@"[Siri Biomestream Donations] Directions to %@");
      v20 = [(MKMapItem *)self->_mapItem name];
      v21 = [v18 stringWithFormat:v19, v20];
      [v15 setObject:v21 forKeyedSubscript:@"title"];

      v22 = [MEMORY[0x1E695DF58] currentLocale];
      v23 = [v22 languageIdentifier];
      [v15 setObject:v23 forKeyedSubscript:@"locale"];
    }

    v24 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
    v25 = [v24 length];

    if (v25)
    {
      v26 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
      [v15 setObject:v26 forKeyedSubscript:@"category_type"];
    }

    v27 = [(GEOSearchCategory *)self->_searchCategory popularTokenString];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [(GEOSearchCategory *)self->_searchCategory popularTokenString];
      [v15 setObject:v29 forKeyedSubscript:@"category_type"];
    }

    if ([(NSString *)self->_searchQueryString length])
    {
      [v15 setObject:self->_searchQueryString forKeyedSubscript:@"input"];
    }

    v30 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v31 = [v30 addressDictionary];

    if (v31)
    {
      v44 = v7;
      v45 = v9;
      v46 = v8;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v50;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v50 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v49 + 1) + 8 * i);
            v38 = [v32 objectForKeyedSubscript:v37];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 setObject:v38 forKeyedSubscript:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v34);
      }

      v8 = v46;
      v7 = v44;
      v9 = v45;
    }

    if (self->_resultIndex != -1)
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v15 setObject:v39 forKeyedSubscript:@"resultIndex"];
    }

    if ([v4 length])
    {
      [v15 setObject:v4 forKeyedSubscript:@"source"];
    }

    if ([(__CFString *)v48 length])
    {
      [v15 setObject:v48 forKeyedSubscript:@"navigationType"];
    }

    v13 = [objc_alloc(MEMORY[0x1E696E880]) initWithDomain:@"Maps" verb:v7 parametersByName:v15];

    v12 = v47;
  }

  return v13;
}

+ (NSString)navigationHash
{
  v2 = s_navigationHash;
  if (!s_navigationHash)
  {
    [a1 generateHashForNavigationURL:0];
    v2 = s_navigationHash;
  }

  return v2;
}

- (void)donateIfWanted
{
  v3 = [(MKSiriInteraction *)self intentIfWanted];
  if (v3)
  {
    v6 = v3;
    v4 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v3 response:0];
    if ([(MKSiriInteraction *)self _isIntentDeletable])
    {
      v5 = [(MKSiriInteraction *)self _siriIntentHash:v6];
      [v4 setGroupIdentifier:v5];
    }

    [v4 donateInteractionWithCompletion:0];

    v3 = v6;
  }
}

- (void)_navTimerFired:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3 && s_navStartedTimer)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];

    v5 = +[MKSiriInteraction navigationHash];
    v11 = @"nav_identifier";
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v6 mutableCopy];

    [v7 setObject:@"Continue" forKeyedSubscript:@"navigationType"];
    if ([v4 length])
    {
      [v7 setObject:v4 forKeyedSubscript:@"source"];
    }

    v8 = [objc_alloc(MEMORY[0x1E696E880]) initWithDomain:@"Maps" verb:@"Navigation" parametersByName:v7];
    v9 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v8 response:0];
    [v9 donateInteractionWithCompletion:0];
    [s_navStartedTimer invalidate];
    v10 = s_navStartedTimer;
    s_navStartedTimer = 0;
  }
}

- (BOOL)_isStartNavigationAction:(int)a3
{
  result = 1;
  if (a3 > 9020)
  {
    if (a3 == 9021)
    {
      return result;
    }

    v4 = 11017;
  }

  else
  {
    if (a3 == 3001)
    {
      return result;
    }

    v4 = 9016;
  }

  if (a3 != v4)
  {
    return 0;
  }

  return result;
}

- (id)_whiteListedNavigationActionAsString:(int)a3
{
  v5 = 0;
  if (a3 > 9015)
  {
    if (a3 == 9016 || a3 == 11017)
    {
      goto LABEL_8;
    }

    v6 = 9021;
  }

  else
  {
    if ((a3 - 3001) < 2)
    {
      goto LABEL_8;
    }

    v6 = 8006;
  }

  if (a3 != v6)
  {
    goto LABEL_199;
  }

LABEL_8:
  action = self->_action;
  if (action <= 3000)
  {
    if (action > 1500)
    {
      if (action <= 1503)
      {
        if (action == 1501)
        {
          v5 = @"TAP_DIRECTIONS";
        }

        else if (action == 1502)
        {
          v5 = @"TAP_PROXIMITY_FIND";
        }

        else
        {
          v5 = @"TAP_PRECISION_FIND";
        }
      }

      else
      {
        switch(action)
        {
          case 2001:
            v5 = @"TAP_SEARCH_FIELD";

            return v5;
          case 2002:
            v5 = @"CLEAR_SEARCH";

            return v5;
          case 2003:
            v5 = @"CANCEL_SEARCH";

            return v5;
          case 2004:
            v5 = @"TAP_BROWSE_TOP_CATEGORY";

            return v5;
          case 2005:
            v5 = @"TAP_BROWSE_SUB_CATEGORY";

            return v5;
          case 2006:
            v5 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

            return v5;
          case 2007:
            v5 = @"TAP_LIST_ITEM";

            return v5;
          case 2008:
            v5 = @"SHARE_LIST_ITEM";

            return v5;
          case 2009:
            v5 = @"DELETE_LIST_ITEM";

            return v5;
          case 2010:
            v5 = @"EDIT_LIST_ITEM";

            return v5;
          case 2011:
            v5 = @"REFRESH_SEARCH";

            return v5;
          case 2012:
            v5 = @"REVEAL_LIST_ITEM_ACTIONS";

            return v5;
          case 2013:
            v5 = @"HIDE_LIST_ITEM_ACTIONS";

            return v5;
          case 2014:
            v5 = @"TAP_SEARCH_BUTTON";

            return v5;
          case 2015:
            v5 = @"SHOW_SEARCH_RESULTS";

            return v5;
          case 2016:
            v5 = @"SHOW_REFRESH_SEARCH";

            return v5;
          case 2017:
            v5 = @"PASTE_TEXT";

            return v5;
          case 2018:
            v5 = @"TAP_LIST_SUB_ITEM";

            return v5;
          case 2019:
            v5 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

            return v5;
          case 2020:
            v5 = @"TAP_DID_YOU_MEAN_MESSAGE";

            return v5;
          case 2021:
            v5 = @"CLOSE_DID_YOU_MEAN_MESSAGE";

            return v5;
          case 2022:
            v5 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

            return v5;
          case 2023:
            v5 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

            return v5;
          case 2024:
            v5 = @"RETAINED_QUERY";

            return v5;
          case 2025:
            v5 = @"TAP_RECENT_AC_SUGGESTION";

            return v5;
          case 2026:
            v5 = @"CLEAR_RECENT_AC_SUGGESTION";

            return v5;
          case 2027:
            v5 = @"DELETE_RECENT_AC_SUGGESTION";

            return v5;
          case 2028:
          case 2029:
            goto LABEL_198;
          case 2030:
            v5 = @"TAP_BROWSE_NEARBY_CATEGORY";

            return v5;
          case 2031:
            v5 = @"TAP_SUBACTION";

            return v5;
          case 2032:
            v5 = @"TAP_QUERY_BUILDING_ARROW";

            return v5;
          case 2033:
            v5 = @"CLICK_ON_EDIT_SEARCH";

            return v5;
          case 2034:
            v5 = @"REMOVE_CLIENT_AC_SUGGESTION";

            return v5;
          case 2035:
            v5 = @"SHARE_CLIENT_AC_SUGGESTION";

            return v5;
          case 2036:
            v5 = @"TAP_ON_MORE_RESULTS";

            return v5;
          case 2037:
            v5 = @"SHARE_ITEM";

            return v5;
          case 2038:
            v5 = @"HIDE_ITEM";

            return v5;
          case 2039:
            v5 = @"TAP_SUGGESTED_ITEM";

            return v5;
          case 2040:
            v5 = @"SHARE_SUGGESTED_ITEM";

            return v5;
          case 2041:
            v5 = @"HIDE_SUGGESTED_ITEM";

            return v5;
          case 2042:
            v5 = @"ADD_HOME_FAVORITE";

            return v5;
          case 2043:
            v5 = @"ADD_WORK_FAVORITE";

            return v5;
          case 2044:
            v5 = @"ADD_FAVORITE";

            return v5;
          case 2045:
            v5 = @"VIEW_FAVORITES_LIST";

            return v5;
          case 2046:
            v5 = @"TAP_HOME_FAVORITE";

            return v5;
          case 2047:
            v5 = @"TAP_WORK_FAVORITE";

            return v5;
          case 2048:
            v5 = @"TAP_CAR_FAVORITE";

            return v5;
          case 2049:
            v5 = @"TAP_FAVORITE_ITEM";

            return v5;
          case 2050:
            v5 = @"CREATE_HOME_FAVORITE";

            return v5;
          case 2051:
            v5 = @"CREATE_WORK_FAVORITE";

            return v5;
          case 2052:
            v5 = @"CREATE_FAVORITE";

            return v5;
          case 2053:
            v5 = @"SUBMIT_FAVORITE_EDIT";

            return v5;
          case 2054:
            v5 = @"ADD_RECOMMENDED_FAVORITE";

            return v5;
          case 2055:
            v5 = @"EDIT_FAVORITE";

            return v5;
          case 2056:
            v5 = @"REMOVE_FAVORITE";

            return v5;
          case 2057:
            v5 = @"SHARE_FAVORITE";

            return v5;
          case 2058:
            v5 = @"EDIT_FAVORITES";

            return v5;
          case 2059:
            v5 = @"ADD_FAVORITE_PLACE";

            return v5;
          case 2060:
            v5 = @"REMOVE_FAVORITE_PLACE";

            return v5;
          case 2061:
            v5 = @"CHANGE_HOME_ADDRESS";

            return v5;
          case 2062:
            v5 = @"CHANGE_WORK_ADDRESS";

            return v5;
          case 2063:
            v5 = @"REFINE_LOCATION";

            return v5;
          case 2064:
            v5 = @"TAP_RECENTLY_VIEWED_ITEM";

            return v5;
          case 2065:
            v5 = @"SHOW_COLLECTION_LIST";

            return v5;
          case 2066:
            v5 = @"SHOW_FAVORITES_COLLECTION";

            return v5;
          case 2067:
            v5 = @"SHOW_COLLECTION";

            return v5;
          case 2068:
            v5 = @"TAP_COLLECTION_ITEM";

            return v5;
          case 2069:
            v5 = @"SHARE_COLLECTION_ITEM";

            return v5;
          case 2070:
            v5 = @"REMOVE_COLLECTION_ITEM";

            return v5;
          case 2071:
            v5 = @"SAVE_SHARED_COLLECTION";

            return v5;
          case 2072:
            v5 = @"CREATE_NEW_COLLECTION";

            return v5;
          case 2073:
            v5 = @"SAVE_TO_COLLECTION";

            return v5;
          case 2074:
            v5 = @"EDIT_PHOTO";

            return v5;
          case 2075:
            v5 = @"SORT_BY_NAME";

            return v5;
          case 2076:
            v5 = @"SORT_BY_DISTANCE";

            return v5;
          case 2077:
            v5 = @"SORT_BY_RECENT";

            return v5;
          case 2078:
            v5 = @"AUTO_SHARE_ETA";

            return v5;
          case 2079:
            v5 = @"CANCEL_AUTO_SHARE_ETA";

            return v5;
          case 2080:
            v5 = @"MAP_SEARCH";

            return v5;
          case 2081:
            v5 = @"DELETE_COLLECTION";

            return v5;
          case 2082:
            v5 = @"SHARE_COLLECTION";

            return v5;
          case 2083:
            v5 = @"SHOW_TRANSIT_LINES_COLLECTION";

            return v5;
          case 2084:
            v5 = @"SHOW_MY_PLACES";

            return v5;
          case 2085:
            v5 = @"SHOW_ALL_PLACES";

            return v5;
          case 2086:
            v5 = @"TAP_RECENT_QUERY";

            return v5;
          case 2087:
            v5 = @"TAP_QUERY_SUGGESTION";

            return v5;
          case 2088:
            v5 = @"DELETE_CURATED_COLLECTION";

            return v5;
          case 2089:
            v5 = @"FOLLOW";

            return v5;
          case 2090:
            v5 = @"PUNCH_IN";

            return v5;
          case 2091:
            v5 = @"SAVE_CURATED_COLLECTION";

            return v5;
          case 2092:
            v5 = @"SCROLL_LEFT_COLLECTIONS";

            return v5;
          case 2093:
            v5 = @"SCROLL_RIGHT_COLLECTIONS";

            return v5;
          case 2094:
            v5 = @"SEE_ALL_CURATED_COLLECTION";

            return v5;
          case 2095:
            v5 = @"SEE_ALL_PUBLISHERS";

            return v5;
          case 2096:
            v5 = @"SHARE_CURATED_COLLECTION";

            return v5;
          case 2097:
            v5 = @"SHARE_PUBLISHER";

            return v5;
          case 2098:
            v5 = @"SHOW_MORE_COLLECTION";

            return v5;
          case 2099:
            v5 = @"TAP_CURATED_COLLECTION";

            return v5;
          case 2100:
            v5 = @"TAP_FEATURED_COLLECTIONS";

            return v5;
          case 2101:
            v5 = @"TAP_LOCATION";

            return v5;
          case 2102:
            v5 = @"TAP_PUBLISHER";

            return v5;
          case 2103:
            v5 = @"TAP_PUBLISHER_APP";

            return v5;
          case 2104:
            v5 = @"TAP_PUBLISHER_COLLECTIONS";

            return v5;
          case 2105:
            v5 = @"UNFOLLOW";

            return v5;
          case 2106:
            v5 = @"CHANGE_SCHOOL_ADDRESS";

            return v5;
          case 2107:
            v5 = @"ADD_VEHICLE";

            return v5;
          case 2108:
            v5 = @"DISPLAY_VIRTUAL_GARAGE";

            return v5;
          case 2109:
            v5 = @"ENTER_VIRTUAL_GARAGE";

            return v5;
          case 2110:
            v5 = @"PUNCH_OUT_MANUFACTURER_APP";

            return v5;
          case 2111:
            v5 = @"REMOVE_LICENSE_PLATE";

            return v5;
          case 2112:
            v5 = @"REMOVE_VEHICLE";

            return v5;
          case 2113:
            v5 = @"SELECT_VEHICLE";

            return v5;
          case 2114:
            v5 = @"SUBMIT_LICENSE_PLATE";

            return v5;
          case 2115:
            v5 = @"TAP_ADD_LICENSE_PLATE";

            return v5;
          case 2116:
            v5 = @"TAP_ADD_NEW_CAR";

            return v5;
          case 2117:
            v5 = @"TAP_BANNER";

            return v5;
          case 2118:
            v5 = @"TAP_CONNECT";

            return v5;
          case 2119:
            v5 = @"TAP_CONTINUE";

            return v5;
          case 2120:
            v5 = @"TAP_EDIT";

            return v5;
          case 2121:
            v5 = @"TAP_NAME";

            return v5;
          case 2122:
            v5 = @"TAP_NOT_NOW";

            return v5;
          case 2123:
            v5 = @"TAP_OTHER_VEHICLE";

            return v5;
          case 2124:
            v5 = @"TAP_REMOVE_LICENSE_PLATE";

            return v5;
          case 2125:
            v5 = @"TAP_UPDATE_PLATE_NUMBER";

            return v5;
          case 2126:
            v5 = @"TAP_VEHICLE";

            return v5;
          case 2127:
            v5 = @"TAP_VEHICLE_NAME";

            return v5;
          case 2128:
            v5 = @"UPDATE_NAME";

            return v5;
          case 2129:
            v5 = @"DONE_TAKING_PHOTO";

            return v5;
          case 2130:
            v5 = @"ENABLE_SHOW_PHOTO_NAME";

            return v5;
          case 2131:
            v5 = @"SUBMIT_PHOTO";

            return v5;
          case 2132:
            v5 = @"USE_PHOTO";

            return v5;
          case 2133:
            v5 = @"ADD_RECOMMENDATION_TO_MAPS";

            return v5;
          case 2134:
            v5 = @"CANCEL_PHOTO_SUBMISSION";

            return v5;
          case 2135:
            v5 = @"CLOSE_RECOMMENDATION_CARD";

            return v5;
          case 2136:
            v5 = @"EDIT_RATING";

            return v5;
          case 2137:
            v5 = @"PROMPTED_TO_ADD_PHOTO";

            return v5;
          case 2138:
            v5 = @"PROMPTED_TO_ADD_RATING";

            return v5;
          case 2139:
            v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

            return v5;
          case 2140:
            v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

            return v5;
          case 2141:
            v5 = @"RETAKE_PHOTO";

            return v5;
          case 2142:
            v5 = @"REVEAL_RECOMMENDATION_CARD";

            return v5;
          case 2143:
            v5 = @"SUBMIT_NEGATIVE_RATING";

            return v5;
          case 2144:
            v5 = @"SUBMIT_POSITIVE_RATING";

            return v5;
          case 2145:
            v5 = @"TAP_CHOOSING_PHOTO";

            return v5;
          case 2146:
            v5 = @"TAP_TAKE_NEW_PHOTO";

            return v5;
          case 2147:
            v5 = @"TAP_TO_ADD_PHOTO";

            return v5;
          case 2148:
            v5 = @"CANCEL_INCIDENT_REPORT";

            return v5;
          case 2149:
            v5 = @"INCIDENT_REPORT_SUBMITTED";

            return v5;
          case 2150:
            v5 = @"REPORTED_INCIDENT_NOT_RECEIVED";

            return v5;
          case 2151:
            v5 = @"REPORTED_INCIDENT_RECEIVED";

            return v5;
          case 2152:
            v5 = @"REPORT_INCIDENT";

            return v5;
          case 2153:
            v5 = @"SELECT_INCIDENT_TYPE";

            return v5;
          case 2154:
            v5 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

            return v5;
          case 2155:
            v5 = @"TAP_TO_START_REPORT_INCIDENT";

            return v5;
          case 2156:
            v5 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

            return v5;
          case 2157:
            v5 = @"ATTEMPT_VLF_CORRECTION";

            return v5;
          case 2158:
            v5 = @"DISMISS_VLF_PROMPT";

            return v5;
          case 2159:
            v5 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

            return v5;
          case 2160:
            v5 = @"VLF_CORRECTION_FAILED";

            return v5;
          case 2161:
            v5 = @"VLF_CORRECTION_SUCCESSFUL";

            return v5;
          case 2162:
            v5 = @"ENABLE_WIDGET_SUGGESTIONS";

            return v5;
          case 2163:
            v5 = @"DISPLAY_CZ_ADVISORY";

            return v5;
          case 2164:
            v5 = @"PUNCH_OUT_URL_PAY";

            return v5;
          case 2165:
            v5 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

            return v5;
          case 2166:
            v5 = @"DELETE_ITEM";

            return v5;
          case 2167:
            v5 = @"CANCEL_REMOVE";

            return v5;
          case 2168:
            v5 = @"DELETE_SUGGESTION";

            return v5;
          case 2169:
            v5 = @"ADD_SCHOOL_FAVORITE";

            return v5;
          case 2170:
            v5 = @"GO_TO_WEBSITE";

            return v5;
          case 2171:
            v5 = @"TRY_AGAIN";

            return v5;
          case 2172:
            v5 = @"CHECK_AUTO_RECORD_WORKOUT";

            return v5;
          case 2173:
            v5 = @"CHECK_EBIKE";

            return v5;
          case 2174:
            v5 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

            return v5;
          case 2175:
            v5 = @"DISPLAY_CYCLING_DEFAULT_OPTION";

            return v5;
          case 2176:
            v5 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

            return v5;
          case 2177:
            v5 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

            return v5;
          case 2178:
            v5 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

            return v5;
          case 2179:
            v5 = @"TAP_AUTOMATIC_WORKOUT_OPTION";

            return v5;
          case 2180:
            v5 = @"TAP_CYCLING_DEFAULT_OPTION";

            return v5;
          case 2181:
            v5 = @"TAP_CYCLING_NO_BIKE_ADVISORY";

            return v5;
          case 2182:
            v5 = @"TAP_CYCLING_STAIRS_ADVISORY";

            return v5;
          case 2183:
            v5 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

            return v5;
          case 2184:
            v5 = @"UNCHECK_AUTO_RECORD_WORKOUT";

            return v5;
          case 2185:
            v5 = @"UNCHECK_EBIKE";

            return v5;
          case 2186:
            v5 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

            return v5;
          case 2187:
            v5 = @"DISPLAY_LPR_ADVISORY";

            return v5;
          case 2188:
            v5 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

            return v5;
          case 2189:
            v5 = @"CREATE_WIDGET";

            return v5;
          case 2190:
            v5 = @"REVEAL_WIDGET_TRAY";

            return v5;
          case 2191:
            v5 = @"LPR_ERROR_CODE";

            return v5;
          case 2192:
            v5 = @"TAP_SEE_ALL_RECENTLY_VIEWED";

            return v5;
          case 2193:
            v5 = @"TAP_CLEAR_RECENTLY_VIEWED";

            return v5;
          case 2194:
            v5 = @"LPR_HARD_STOP";

            return v5;
          case 2195:
            v5 = @"TAP_PUBLISHER_SUBACTION";

            return v5;
          case 2196:
            v5 = @"CARPLAY_DISPLAY_ACTIVATED";

            return v5;
          case 2197:
            v5 = @"CARPLAY_DISPLAY_DEACTIVATED";

            return v5;
          case 2198:
            v5 = @"TAP_FEATURED_COLLECTION";

            return v5;
          case 2199:
            v5 = @"SCROLL_FEATURED_COLLECTION_FORWARD";

            return v5;
          case 2200:
            v5 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

            return v5;
          default:
            if (action == 1504)
            {
              v5 = @"TAP_ENABLE_LOST_MODE";
            }

            else
            {
              if (action != 1505)
              {
                goto LABEL_198;
              }

              v5 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
            }

            break;
        }
      }
    }

    else
    {
      v5 = @"UI_ACTION_UNKNOWN";
      switch(action)
      {
        case 0:
          goto LABEL_199;
        case 1:
          v5 = @"PULL_UP";

          break;
        case 2:
          v5 = @"PULL_DOWN";

          break;
        case 3:
          v5 = @"TAP";

          break;
        case 4:
          v5 = @"CLOSE";

          break;
        case 5:
          v5 = @"SWIPE_PREV";

          break;
        case 6:
          v5 = @"SWIPE_NEXT";

          break;
        case 7:
          v5 = @"SCROLL_UP";

          break;
        case 8:
          v5 = @"SCROLL_DOWN";

          break;
        case 9:
        case 23:
        case 24:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 530:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 546:
        case 547:
        case 548:
        case 549:
        case 550:
        case 551:
        case 552:
        case 553:
        case 554:
        case 555:
        case 556:
        case 557:
        case 558:
        case 559:
        case 560:
        case 561:
        case 562:
        case 563:
        case 564:
        case 565:
        case 566:
        case 567:
        case 568:
        case 569:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 578:
        case 579:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 586:
        case 587:
        case 588:
        case 589:
        case 590:
        case 591:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 600:
        case 601:
        case 602:
        case 603:
        case 604:
        case 605:
        case 606:
        case 607:
        case 608:
        case 609:
        case 610:
        case 611:
        case 612:
        case 613:
        case 614:
        case 615:
        case 616:
        case 617:
        case 618:
        case 619:
        case 620:
        case 621:
        case 622:
        case 623:
        case 624:
        case 625:
        case 626:
        case 627:
        case 628:
        case 629:
        case 630:
        case 631:
        case 632:
        case 633:
        case 634:
        case 635:
        case 636:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
        case 642:
        case 643:
        case 644:
        case 645:
        case 646:
        case 647:
        case 648:
        case 649:
        case 650:
        case 651:
        case 652:
        case 653:
        case 654:
        case 655:
        case 656:
        case 657:
        case 658:
        case 659:
        case 660:
        case 661:
        case 662:
        case 663:
        case 664:
        case 665:
        case 666:
        case 667:
        case 668:
        case 669:
        case 670:
        case 671:
        case 672:
        case 673:
        case 674:
        case 675:
        case 676:
        case 677:
        case 678:
        case 679:
        case 680:
        case 681:
        case 682:
        case 683:
        case 684:
        case 685:
        case 686:
        case 687:
        case 688:
        case 689:
        case 690:
        case 691:
        case 692:
        case 693:
        case 694:
        case 695:
        case 696:
        case 697:
        case 698:
        case 699:
        case 700:
        case 701:
        case 702:
        case 703:
        case 704:
        case 705:
        case 706:
        case 707:
        case 708:
        case 709:
        case 710:
        case 711:
        case 712:
        case 713:
        case 714:
        case 715:
        case 716:
        case 717:
        case 718:
        case 719:
        case 720:
        case 721:
        case 722:
        case 723:
        case 724:
        case 725:
        case 726:
        case 727:
        case 728:
        case 729:
        case 730:
        case 731:
        case 732:
        case 733:
        case 734:
        case 735:
        case 736:
        case 737:
        case 738:
        case 739:
        case 740:
        case 741:
        case 742:
        case 743:
        case 744:
        case 745:
        case 746:
        case 747:
        case 748:
        case 749:
        case 750:
        case 751:
        case 752:
        case 753:
        case 754:
        case 755:
        case 756:
        case 757:
        case 758:
        case 759:
        case 760:
        case 761:
        case 762:
        case 763:
        case 764:
        case 765:
        case 766:
        case 767:
        case 768:
        case 769:
        case 770:
        case 771:
        case 772:
        case 773:
        case 774:
        case 775:
        case 776:
        case 777:
        case 778:
        case 779:
        case 780:
        case 781:
        case 782:
        case 783:
        case 784:
        case 785:
        case 786:
        case 787:
        case 788:
        case 789:
        case 790:
        case 791:
        case 792:
        case 793:
        case 794:
        case 795:
        case 796:
        case 797:
        case 798:
        case 799:
        case 800:
        case 801:
        case 802:
        case 803:
        case 804:
        case 805:
        case 806:
        case 807:
        case 808:
        case 809:
        case 810:
        case 811:
        case 812:
        case 813:
        case 814:
        case 815:
        case 816:
        case 817:
        case 818:
        case 819:
        case 820:
        case 821:
        case 822:
        case 823:
        case 824:
        case 825:
        case 826:
        case 827:
        case 828:
        case 829:
        case 830:
        case 831:
        case 832:
        case 833:
        case 834:
        case 835:
        case 836:
        case 837:
        case 838:
        case 839:
        case 840:
        case 841:
        case 842:
        case 843:
        case 844:
        case 845:
        case 846:
        case 847:
        case 848:
        case 849:
        case 850:
        case 851:
        case 852:
        case 853:
        case 854:
        case 855:
        case 856:
        case 857:
        case 858:
        case 859:
        case 860:
        case 861:
        case 862:
        case 863:
        case 864:
        case 865:
        case 866:
        case 867:
        case 868:
        case 869:
        case 870:
        case 871:
        case 872:
        case 873:
        case 874:
        case 875:
        case 876:
        case 877:
        case 878:
        case 879:
        case 880:
        case 881:
        case 882:
        case 883:
        case 884:
        case 885:
        case 886:
        case 887:
        case 888:
        case 889:
        case 890:
        case 891:
        case 892:
        case 893:
        case 894:
        case 895:
        case 896:
        case 897:
        case 898:
        case 899:
        case 900:
        case 901:
        case 902:
        case 903:
        case 904:
        case 905:
        case 906:
        case 907:
        case 908:
        case 909:
        case 910:
        case 911:
        case 912:
        case 913:
        case 914:
        case 915:
        case 916:
        case 917:
        case 918:
        case 919:
        case 920:
        case 921:
        case 922:
        case 923:
        case 924:
        case 925:
        case 926:
        case 927:
        case 928:
        case 929:
        case 930:
        case 931:
        case 932:
        case 933:
        case 934:
        case 935:
        case 936:
        case 937:
        case 938:
        case 939:
        case 940:
        case 941:
        case 942:
        case 943:
        case 944:
        case 945:
        case 946:
        case 947:
        case 948:
        case 949:
        case 950:
        case 951:
        case 952:
        case 953:
        case 954:
        case 955:
        case 956:
        case 957:
        case 958:
        case 959:
        case 960:
        case 961:
        case 962:
        case 963:
        case 964:
        case 965:
        case 966:
        case 967:
        case 968:
        case 969:
        case 970:
        case 971:
        case 972:
        case 973:
        case 974:
        case 975:
        case 976:
        case 977:
        case 978:
        case 979:
        case 980:
        case 981:
        case 982:
        case 983:
        case 984:
        case 985:
        case 986:
        case 987:
        case 988:
        case 989:
        case 990:
        case 991:
        case 992:
        case 993:
        case 994:
        case 995:
        case 996:
        case 997:
        case 998:
        case 999:
        case 1000:
        case 1005:
        case 1006:
        case 1007:
        case 1008:
        case 1009:
        case 1012:
        case 1013:
        case 1014:
        case 1015:
        case 1016:
        case 1019:
        case 1021:
        case 1022:
        case 1023:
        case 1024:
        case 1025:
        case 1026:
        case 1027:
        case 1028:
        case 1029:
          goto LABEL_198;
        case 10:
          v5 = @"SHOW_MORE";

          break;
        case 11:
          v5 = @"SHOW_LESS";

          break;
        case 12:
          v5 = @"SWIPE_LEFT";

          break;
        case 13:
          v5 = @"SWIPE_RIGHT";

          break;
        case 14:
          v5 = @"MINIMIZE";

          break;
        case 15:
          v5 = @"TAP_PREV";

          break;
        case 16:
          v5 = @"TAP_NEXT";

          break;
        case 17:
          v5 = @"SUBMIT";

          break;
        case 18:
          v5 = @"CANCEL";

          break;
        case 19:
          v5 = @"ENTER_MAPS";

          break;
        case 20:
          v5 = @"EXIT_MAPS";

          break;
        case 21:
          v5 = @"REVEAL";

          break;
        case 22:
          v5 = @"OPEN_NEW_TAB";

          break;
        case 25:
          v5 = @"BACK";

          break;
        case 26:
          v5 = @"ACTIVATE";

          break;
        case 27:
          v5 = @"DEACTIVATE";

          break;
        case 28:
          v5 = @"AGREE";

          break;
        case 29:
          v5 = @"DISAGREE";

          break;
        case 30:
          v5 = @"SKIP_ANSWER";

          break;
        case 31:
          v5 = @"EXPAND";

          break;
        case 32:
          v5 = @"COLLAPSE";

          break;
        case 33:
          v5 = @"ENTER";

          break;
        case 34:
          v5 = @"EXIT";

          break;
        case 35:
          v5 = @"SCROLL_UP_INDEX_BAR";

          break;
        case 36:
          v5 = @"SCROLL_DOWN_INDEX_BAR";

          break;
        case 37:
          v5 = @"TOGGLE_ON";

          break;
        case 38:
          v5 = @"TOGGLE_OFF";

          break;
        case 39:
          v5 = @"LONG_PRESS";

          break;
        case 40:
          v5 = @"CLICK";

          break;
        case 41:
          v5 = @"TAP_DONE";

          break;
        case 42:
          v5 = @"TAP_CLOSE";

          break;
        case 43:
          v5 = @"SCROLL_LEFT";

          break;
        case 44:
          v5 = @"SCROLL_RIGHT";

          break;
        case 45:
          v5 = @"DISPLAY";

          break;
        case 46:
          v5 = @"OPEN_IN_APP";

          break;
        case 47:
          v5 = @"CONCEAL";

          break;
        case 48:
          v5 = @"TAP_DELETE";

          break;
        case 49:
          v5 = @"TAP_FILTER";

          break;
        case 50:
          v5 = @"TAP_SECONDARY_BUTTON";

          break;
        case 51:
          v5 = @"TAP_WIDGET_FOOD";

          break;
        case 52:
          v5 = @"TAP_WIDGET_GAS";

          break;
        case 53:
          v5 = @"TAP_WIDGET_LOADING";

          break;
        case 54:
          v5 = @"TAP_WIDGET_SEARCH";

          break;
        case 55:
          v5 = @"TAP_WIDGET_STORES";

          break;
        case 56:
          v5 = @"DISPLAY_ALLOW_ONCE_PROMPT";

          break;
        case 57:
          v5 = @"SHARE_CURRENT_LOCATION";

          break;
        case 58:
          v5 = @"SHARE_PHOTO";

          break;
        case 59:
          v5 = @"TAP_KEEP_OFF";

          break;
        case 60:
          v5 = @"TAP_PHOTO_CATEGORY";

          break;
        case 61:
          v5 = @"TAP_PRECISE_LOCATION_OFF_BANNER";

          break;
        case 62:
          v5 = @"TAP_TURN_ON";

          break;
        case 63:
          v5 = @"DISPLAY_CYCLING_ANNOTATION";

          break;
        case 64:
          v5 = @"DISPLAY_DRIVING_DEFAULT_OPTION";

          break;
        case 65:
          v5 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

          break;
        case 66:
          v5 = @"DISPLAY_WALKING_DEFAULT_OPTION";

          break;
        case 67:
          v5 = @"TAP_CYCLING_ANNOTATION";

          break;
        case 68:
          v5 = @"TAP_DRIVING_DEFAULT_OPTION";

          break;
        case 69:
          v5 = @"TAP_TRANSIT_DEFAULT_OPTION";

          break;
        case 70:
          v5 = @"TAP_WALKING_DEFAULT_OPTION";

          break;
        case 71:
          v5 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

          break;
        case 72:
          v5 = @"TAP_RIDESHARE_DEFAULT_OPTION";

          break;
        case 73:
          v5 = @"TAP_PERSONAL_COLLECTION";

          break;
        case 74:
          v5 = @"RESUME_ROUTE";

          break;
        case 75:
          v5 = @"DISPLAY_OUT_OF_RANGE_ALERT";

          break;
        case 76:
          v5 = @"TAP_ALLOW_ONCE";

          break;
        case 77:
          v5 = @"TAP_DO_NOT_ALLOW";

          break;
        case 78:
          v5 = @"ADD_RECCOMENDED_FAVORITE";

          break;
        case 79:
          v5 = @"ADD_RECOMMENDED_HOME_FAVORITE";

          break;
        case 80:
          v5 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 81:
          v5 = @"ADD_RECOMMENDED_WORK_FAVORITE";

          break;
        case 82:
          v5 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

          break;
        case 83:
          v5 = @"CREATE_SCHOOL_FAVORITE";

          break;
        case 84:
          v5 = @"TAP_SCHOOL_FAVORITE";

          break;
        case 85:
          v5 = @"SELECT_ROUTING_TYPE_CYCLING";

          break;
        case 86:
          v5 = @"REPORT_PHOTO";

          break;
        case 87:
          v5 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

          break;
        case 88:
          v5 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

          break;
        case 89:
          v5 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

          break;
        case 90:
          v5 = @"CREATE_RECOMMENDED_FAVORITE";

          break;
        case 91:
          v5 = @"CREATE_RECOMMENDED_HOME_FAVORITE";

          break;
        case 92:
          v5 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 93:
          v5 = @"CREATE_RECOMMENDED_WORK_FAVORITE";

          break;
        case 94:
          v5 = @"TAP_SMALL_WIDGET_ITEM";

          break;
        case 95:
          v5 = @"TAP_MEDIUM_WIDGET_ITEM";

          break;
        case 96:
          v5 = @"TAP_LARGE_WIDGET_ITEM";

          break;
        case 97:
          v5 = @"DISPLAY_ARP_TIPKIT";

          break;
        case 98:
          v5 = @"NEXT";

          break;
        case 99:
          v5 = @"TAP_RATE_AND_ADD_PHOTOS";

          break;
        case 100:
          v5 = @"TAP_TO_ADD_POSITIVE_RATING";

          break;
        case 101:
          v5 = @"TAP_TO_ADD_NEGATIVE_RATING";

          break;
        case 102:
          v5 = @"TAP_ACTIVE_SHARING_NOTIFICATION";

          break;
        case 103:
          v5 = @"INVOKE_SIRI_PROMPT";

          break;
        case 104:
          v5 = @"ETA_SHARED_SUCCESSFULLY";

          break;
        case 105:
          v5 = @"ENDED_ETA_SHARE_SUCCESSFULLY";

          break;
        case 106:
          v5 = @"CLEAR_INCIDENT";

          break;
        case 107:
          v5 = @"CONFIRM_INCIDENT";

          break;
        case 108:
          v5 = @"DISMISS_INCIDENT";

          break;
        case 109:
          v5 = @"INCIDENT_ALERT_TIMEOUT";

          break;
        case 110:
          v5 = @"INCIDENT_ALERT_TRAY_SHOWN";

          break;
        case 111:
          v5 = @"INCIDENT_CARD_SHOWN";

          break;
        case 112:
          v5 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

          break;
        case 113:
          v5 = @"INCIDENT_REPORT_TRAY_SHOWN";

          break;
        case 114:
          v5 = @"NAV_TRAY_DISCOVERY_SHOWN";

          break;
        case 115:
          v5 = @"TAP_TO_REPORT_INCIDENT";

          break;
        case 116:
          v5 = @"TAP_SHORTCUT";

          break;
        case 117:
          v5 = @"BLOCK_CONTACT";

          break;
        case 118:
          v5 = @"TAP_TO_ADD_RATING";

          break;
        case 119:
          v5 = @"AR_WALKING_LOCALIZATION_FAILED";

          break;
        case 120:
          v5 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

          break;
        case 121:
          v5 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

          break;
        case 122:
          v5 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

          break;
        case 123:
          v5 = @"ATTEMPT_AR_WALKING_LOCALIZATION";

          break;
        case 124:
          v5 = @"RAISE_TO_ENTER_AR_WALKING";

          break;
        case 125:
          v5 = @"TAP_DISMISS";

          break;
        case 126:
          v5 = @"TAP_ENTER_AR_WALKING";

          break;
        case 127:
          v5 = @"TAP_OK";

          break;
        case 128:
          v5 = @"TAP_TRY_AGAIN";

          break;
        case 129:
          v5 = @"TAP_TURN_ON_IN_SETTINGS";

          break;
        case 130:
          v5 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

          break;
        case 131:
          v5 = @"VLF_CORRECTION_USER_ABANDON";

          break;
        case 132:
          v5 = @"AREA_EVENTS_ALERT";

          break;
        case 133:
          v5 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

          break;
        case 134:
          v5 = @"ACCEPT_EVENT_REROUTE";

          break;
        case 135:
          v5 = @"DISPLAY_AREA_EVENTS_ADVISORY";

          break;
        case 136:
          v5 = @"DISMISS_EVENT_REROUTE";

          break;
        case 137:
          v5 = @"PUNCH_OUT_EVENTS_LINK";

          break;
        case 138:
          v5 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

          break;
        case 139:
          v5 = @"ADJUST_GUIDANCE_SETTINGS";

          break;
        case 140:
          v5 = @"HIDE_DETAILS";

          break;
        case 141:
          v5 = @"SELECT_VOICE_GUIDANCE_ON";

          break;
        case 142:
          v5 = @"SELECT_VOICE_GUIDANCE_OFF";

          break;
        case 143:
          v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

          break;
        case 144:
          v5 = @"TAP_TEXT_LABEL";

          break;
        case 145:
          v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

          break;
        case 146:
          v5 = @"TAP_EXIT";

          break;
        case 147:
          v5 = @"TAP_CITY_MENU";

          break;
        case 148:
          v5 = @"CHECK_AVOID_TOLLS";

          break;
        case 149:
          v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

          break;
        case 150:
          v5 = @"TAP_ICLOUD";

          break;
        case 151:
          v5 = @"CHECK_AVOID_HIGHWAYS";

          break;
        case 152:
          v5 = @"TAP_FAVORITES";

          break;
        case 153:
          v5 = @"SELECT_DISTANCE_IN_KM";

          break;
        case 154:
          v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

          break;
        case 155:
          v5 = @"OPEN_FULL_CARD_FILTER";

          break;
        case 156:
          v5 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

          break;
        case 157:
          v5 = @"OPEN_SINGLE_CARD_FILTER";

          break;
        case 158:
          v5 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 159:
          v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

          break;
        case 160:
          v5 = @"SESSIONLESS_REVEAL";

          break;
        case 161:
          v5 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

          break;
        case 162:
          v5 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

          break;
        case 163:
          v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

          break;
        case 164:
          v5 = @"ENTER_RAP_REPORT_MENU";

          break;
        case 165:
          v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

          break;
        case 166:
          v5 = @"TAP_MY_VEHICLES";

          break;
        case 167:
          v5 = @"SUBMIT_SINGLE_CARD_FILTER";

          break;
        case 168:
          v5 = @"SUBMIT_FULL_CARD_FILTER";

          break;
        case 169:
          v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

          break;
        case 170:
          v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

          break;
        case 171:
          v5 = @"TAP_EXPLORE_CURATED_COLELCTIONS";

          break;
        case 172:
          v5 = @"TAP_ACCOUNT";

          break;
        case 173:
          v5 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

          break;
        case 174:
          v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

          break;
        case 175:
          v5 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

          break;
        case 176:
          v5 = @"RESULT_REFINEMENT_TOGGLE_OFF";

          break;
        case 177:
          v5 = @"TAP_CITY_CURATED_COLLECTIONS";

          break;
        case 178:
          v5 = @"TAP_REPORTS";

          break;
        case 179:
          v5 = @"TAP_RATINGS";

          break;
        case 180:
          v5 = @"TAP_EXPLORE_CURATED_COLLECTIONS";

          break;
        case 181:
          v5 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

          break;
        case 182:
          v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

          break;
        case 183:
          v5 = @"SELECT_DISTANCE_IN_MILES";

          break;
        case 184:
          v5 = @"TAP_PRIVACY_STATEMENT";

          break;
        case 185:
          v5 = @"TAP_MAPS_SETTINGS";

          break;
        case 186:
          v5 = @"CANCEL_FULL_CARD_FILTER";

          break;
        case 187:
          v5 = @"TAP_LATEST_CURATED_COLLECTION";

          break;
        case 188:
          v5 = @"TAP_TEMPORAL_CURATED_COLLECTION";

          break;
        case 189:
          v5 = @"UNCHECK_AVOID_TOLLS";

          break;
        case 190:
          v5 = @"UNSELECT_SEARCH_REFINEMENT";

          break;
        case 191:
          v5 = @"TAP_RATING";

          break;
        case 192:
          v5 = @"TAP_ICLOUD_SIGN_IN";

          break;
        case 193:
          v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

          break;
        case 194:
          v5 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

          break;
        case 195:
          v5 = @"UNCHECK_AVOID_HIGHWAYS";

          break;
        case 196:
          v5 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

          break;
        case 197:
          v5 = @"RESULT_REFINEMENT_TOGGLE_ON";

          break;
        case 198:
          v5 = @"TAP_CONTEXT_LINE_HYPERLINK";

          break;
        case 199:
          v5 = @"TAP_MY_GUIDES";

          break;
        case 200:
          v5 = @"SELECT_SEARCH_REFINEMENT";

          break;
        case 201:
          v5 = @"SESSIONLESS_TAP_ACCOUNT";

          break;
        case 202:
          v5 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 203:
          v5 = @"TAP_TRAVEL_PREFERENCES";

          break;
        case 204:
          v5 = @"SHOW_CURATED_COLLECTION_LIST";

          break;
        case 205:
          v5 = @"CANCEL_SINGLE_CARD_FILTER";

          break;
        case 206:
          v5 = @"DISPLAY_HFP_OPTION";

          break;
        case 207:
          v5 = @"SWITCH_OFF_HFP";

          break;
        case 208:
          v5 = @"SWITCH_ON_HFP";

          break;
        case 209:
          v5 = @"TAP_QUICK_ACTION_TRAY";

          break;
        case 210:
          v5 = @"SHOW_ALL_CITIES";

          break;
        case 211:
          v5 = @"TAP_ADD_NEARBY_TRANSIT";

          break;
        case 212:
          v5 = @"RESUME";

          break;
        case 213:
          v5 = @"DISPLAY_TIPKIT_PROMPT";

          break;
        case 214:
          v5 = @"TAP_NEARBY_TRANSIT_FAVORITE";

          break;
        case 215:
          v5 = @"TAP_DRIVING_MODE";

          break;
        case 216:
          v5 = @"SWITCH_ON_VOICE_GUIDANCE";

          break;
        case 217:
          v5 = @"DISMISS_TIPKIT_PROMPT";

          break;
        case 218:
          v5 = @"TAP_EXPAND_EXIT_DETAILS";

          break;
        case 219:
          v5 = @"TAP_NEARBY_TRANSIT_FILTER";

          break;
        case 220:
          v5 = @"TAP_MORE_DEPARTURES";

          break;
        case 221:
          v5 = @"RAP_INDIVIDUAL_PLACE";

          break;
        case 222:
          v5 = @"RAP_ADD_MAP";

          break;
        case 223:
          v5 = @"TAP_SUGGESTED_RAP";

          break;
        case 224:
          v5 = @"RAP_STREET_ISSUE";

          break;
        case 225:
          v5 = @"SWIPE_PIN_REVEAL";

          break;
        case 226:
          v5 = @"TAP_ADD_TIPKIT_FAVORITE";

          break;
        case 227:
          v5 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

          break;
        case 228:
          v5 = @"RAP_BAD_TRIP";

          break;
        case 229:
          v5 = @"RAP_PLACE_ISSUE";

          break;
        case 230:
          v5 = @"TAP_OPEN_MAPS";

          break;
        case 231:
          v5 = @"TAP_NEARBY_TRANSIT_RESULT";

          break;
        case 232:
          v5 = @"RAP_GUIDE";

          break;
        case 233:
          v5 = @"SWITCH_OFF_VOICE_GUIDANCE";

          break;
        case 234:
          v5 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

          break;
        case 235:
          v5 = @"SELECT_TRANSIT_STEP";

          break;
        case 236:
          v5 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

          break;
        case 237:
          v5 = @"TAP_SEE_MORE";

          break;
        case 238:
          v5 = @"RAP_IN_REVIEW";

          break;
        case 239:
          v5 = @"TAP_OPEN_MENU";

          break;
        case 240:
          v5 = @"TAP_NEARBY_TRANSIT";

          break;
        case 241:
          v5 = @"TAP_PIN_LINE";

          break;
        case 242:
          v5 = @"SWITCH_OFF_TRIP_FEEDBACK";

          break;
        case 243:
          v5 = @"RAP_GOOD_TRIP";

          break;
        case 244:
          v5 = @"TAP_FILTERED_CURATED_COLLECTION";

          break;
        case 245:
          v5 = @"SHARE_MY_LOCATION";

          break;
        case 246:
          v5 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

          break;
        case 247:
          v5 = @"DISPLAY_GENERIC_ADVISORY";

          break;
        case 248:
          v5 = @"ADVISORY_ALERT";

          break;
        case 249:
          v5 = @"PUNCH_OUT_LINK";

          break;
        case 250:
          v5 = @"TAP_GENERIC_ADVISORY";

          break;
        case 251:
          v5 = @"TAP_EXPLORE_MODE";

          break;
        case 252:
          v5 = @"TAP_UNPIN_LINE";

          break;
        case 253:
          v5 = @"MENU_UNPIN";

          break;
        case 254:
          v5 = @"MENU_PIN";

          break;
        case 255:
          v5 = @"SWIPE_PIN";

          break;
        case 256:
          v5 = @"SWIPE_UNPIN";

          break;
        case 257:
          v5 = @"TAP_MEDIA_APP";

          break;
        case 258:
          v5 = @"TAP_GUIDES_SUBACTION";

          break;
        case 259:
          v5 = @"TAP_MEDIA";

          break;
        case 260:
          v5 = @"PUNCH_OUT_MEDIA";

          break;
        case 261:
          v5 = @"SHOW_MEDIA_APP_MENU";

          break;
        case 262:
          v5 = @"SCROLL_RIGHT_RIBBON";

          break;
        case 263:
          v5 = @"SCROLL_LEFT_RIBBON";

          break;
        case 264:
          v5 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

          break;
        case 265:
          v5 = @"TAP_SHOW_MORE_TEXT";

          break;
        case 266:
          v5 = @"SCROLL_LEFT_RATINGS";

          break;
        case 267:
          v5 = @"SCROLL_LEFT_TEMPLATE_PLACE";

          break;
        case 268:
          v5 = @"SCROLL_RIGHT_TEMPLATE_PLACE";

          break;
        case 269:
          v5 = @"SCROLL_RIGHT_RATINGS";

          break;
        case 270:
          v5 = @"TAP_ALLOW";

          break;
        case 271:
          v5 = @"TAP_GO_TO_SETTING";

          break;
        case 272:
          v5 = @"START_SUBMIT_REPORT";

          break;
        case 273:
          v5 = @"AUTHENTICATION_INFO_FAILURE";

          break;
        case 274:
          v5 = @"SUCCESSFULLY_SUBMIT_REPORT";

          break;
        case 275:
          v5 = @"FAILED_SUBMIT_REPORT";

          break;
        case 276:
          v5 = @"AUTHENTICATION_INFO_SUCCESS";

          break;
        case 277:
          v5 = @"EDIT_WAYPOINT";

          break;
        case 278:
          v5 = @"CLEAR_TEXT";

          break;
        case 279:
          v5 = @"REORDER_WAYPOINT";

          break;
        case 280:
          v5 = @"REMOVE_WAYPOINT";

          break;
        case 281:
          v5 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

          break;
        case 282:
          v5 = @"TAP_SHOWCASE_MENU";

          break;
        case 283:
          v5 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

          break;
        case 284:
          v5 = @"TAP_PHOTO_ALBUM";

          break;
        case 285:
          v5 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 286:
          v5 = @"RAP_INLINE_ADD";

          break;
        case 287:
          v5 = @"RAP_TAP_EDIT";

          break;
        case 288:
          v5 = @"CLAIM_BUSINESS";

          break;
        case 289:
          v5 = @"RAP_EDIT_OPTIONS";

          break;
        case 290:
          v5 = @"TAP_IN_REVIEW_RAP";

          break;
        case 291:
          v5 = @"ORB_MENU_ADD_STOP";

          break;
        case 292:
          v5 = @"NEXT_STOP";

          break;
        case 293:
          v5 = @"ARRIVE_AT_WAYPOINT";

          break;
        case 294:
          v5 = @"REMOVE_STOP";

          break;
        case 295:
          v5 = @"DISPLAY_PAUSE_BUTTON";

          break;
        case 296:
          v5 = @"DISPLAY_PAUSE_NEXT_BUTTONS";

          break;
        case 297:
          v5 = @"AUTO_ADVANCE_NEXT_STOP";

          break;
        case 298:
          v5 = @"ADD_INLINE_NEGATIVE_RATING";

          break;
        case 299:
          v5 = @"ADD_INLINE_POSITIVE_RATING";

          break;
        case 300:
          v5 = @"TAP_TO_ADD_RATING_AND_PHOTO";

          break;
        case 301:
          v5 = @"SUBMIT_RATINGS_AND_PHOTOS";

          break;
        case 302:
          v5 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

          break;
        case 303:
          v5 = @"TAP_RECENTLY_VIEWED_ROUTE";

          break;
        case 304:
          v5 = @"SHOW_ALL_RECENTS";

          break;
        case 305:
          v5 = @"RESUME_MULTIPOINT_ROUTE";

          break;
        case 306:
          v5 = @"DISMISS_TRANSIT_TIPKIT";

          break;
        case 307:
          v5 = @"DISPLAY_TRANSIT_TIPKIT";

          break;
        case 308:
          v5 = @"TAP_TRANSIT_TIPKIT";

          break;
        case 309:
          v5 = @"FILTER_EV";

          break;
        case 310:
          v5 = @"FILTER_SURCHARGE";

          break;
        case 311:
          v5 = @"FILTER_PREFER";

          break;
        case 312:
          v5 = @"TAP_WALKING_ANNOTATION";

          break;
        case 313:
          v5 = @"FILTER_AVOID";

          break;
        case 314:
          v5 = @"FILTER_TRANSPORTATION_MODE";

          break;
        case 315:
          v5 = @"FILTER_RECOMMENDED_ROUTES";

          break;
        case 316:
          v5 = @"FILTER_IC_FARES";

          break;
        case 317:
          v5 = @"FILTER_TRANSIT_CARD_FARES";

          break;
        case 318:
          v5 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 319:
          v5 = @"TAP_NOTIFICATION_SETTINGS";

          break;
        case 320:
          v5 = @"TAP_ENABLE_NOTIFICATION";

          break;
        case 321:
          v5 = @"ARP_SUGGESTIONS_TURN_OFF";

          break;
        case 322:
          v5 = @"ARP_SUGGESTIONS_TURN_ON";

          break;
        case 323:
          v5 = @"DISMISS_ARP_SUGGESTION";

          break;
        case 324:
          v5 = @"RATINGS_AND_PHOTOS_TURN_ON";

          break;
        case 325:
          v5 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

          break;
        case 326:
          v5 = @"UNSELECT_SUGGESTED_PHOTOS";

          break;
        case 327:
          v5 = @"SUGGESTED_PHOTOS_SHOWN";

          break;
        case 328:
          v5 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 329:
          v5 = @"TAP_YOUR_PHOTOS_ALBUM";

          break;
        case 330:
          v5 = @"RATINGS_AND_PHOTOS_TURN_OFF";

          break;
        case 331:
          v5 = @"DELETE_PHOTO";

          break;
        case 332:
          v5 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 333:
          v5 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

          break;
        case 334:
          v5 = @"TAP_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 335:
          v5 = @"DISPLAY_YOUR_PHOTOS_ALBUM";

          break;
        case 336:
          v5 = @"SELECT_SUGGESTED_PHOTOS";

          break;
        case 337:
          v5 = @"ADD_STOP";

          break;
        case 338:
          v5 = @"SHOW_CREDIT_TURN_ON";

          break;
        case 339:
          v5 = @"DISPLAY_ARP_SUGGESTION";

          break;
        case 340:
          v5 = @"TAP_TO_ADD_PHOTO_CREDIT";

          break;
        case 341:
          v5 = @"SHOW_CREDIT_TURN_OFF";

          break;
        case 342:
          v5 = @"TAP_TO_EDIT_NICKNAME";

          break;
        case 343:
          v5 = @"SUBMIT_RATINGS";

          break;
        case 344:
          v5 = @"END_NAV_ON_WATCH";

          break;
        case 345:
          v5 = @"FILTER_EBIKE";

          break;
        case 356:
          v5 = @"ADD_STOP_SIRI";

          break;
        case 357:
          v5 = @"TAP_REVIEWED_RAP";

          break;
        case 358:
          v5 = @"TAP_OUTREACH_RAP";

          break;
        case 359:
          v5 = @"DISPLAY_SUGGESTED_ITEM";

          break;
        case 360:
          v5 = @"DISPLAY_HIKING_TIPKIT";

          break;
        case 361:
          v5 = @"DISMISS_HIKING_TIPKIT";

          break;
        case 362:
          v5 = @"TAP_HIKING_TIPKIT";

          break;
        case 363:
          v5 = @"SCROLL_LEFT_TRAILS";

          break;
        case 364:
          v5 = @"TAP_MORE_TRAILS";

          break;
        case 365:
          v5 = @"TAP_RELATED_TRAIL";

          break;
        case 366:
          v5 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

          break;
        case 367:
          v5 = @"SCROLL_RIGHT_TRAILS";

          break;
        case 368:
          v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 369:
          v5 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

          break;
        case 370:
          v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 371:
          v5 = @"TAP_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 372:
          v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 373:
          v5 = @"EXPIRED_MAPS_REMOVED";

          break;
        case 374:
          v5 = @"UPDATE_ALL_DOWNLOAD_MAPS";

          break;
        case 375:
          v5 = @"TAP_EXPIRED_MAPS";

          break;
        case 376:
          v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 377:
          v5 = @"MOVE_DOWNLOAD_MAPS";

          break;
        case 378:
          v5 = @"SAVE_RENAME_DOWNLOAD_MAPS";

          break;
        case 379:
          v5 = @"TAP_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 380:
          v5 = @"TAP_ENTER_OFFLINE_MAPS";

          break;
        case 381:
          v5 = @"TAP_DOWNLOAD_MAPS";

          break;
        case 382:
          v5 = @"TAP_DOWNLOAD_MAPS_CONTINUE";

          break;
        case 383:
          v5 = @"DELETE_DOWNLOAD_MAPS";

          break;
        case 384:
          v5 = @"SLIDE_CLEAR_EXPIRED_MAPS";

          break;
        case 385:
          v5 = @"RENAME_DOWNLOAD_MAPS";

          break;
        case 386:
          v5 = @"RESIZE_DOWNLOAD_MAPS";

          break;
        case 387:
          v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

          break;
        case 388:
          v5 = @"RESTORE_EXPIRED_MAPS";

          break;
        case 389:
          v5 = @"CLEAR_EXPIRED_MAPS";

          break;
        case 390:
          v5 = @"TAP_USING_OFFLINE_BAR";

          break;
        case 391:
          v5 = @"UPDATE_DOWNLOAD_MAPS";

          break;
        case 392:
          v5 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 393:
          v5 = @"DISPLAY_DOWNLOAD_MAPS";

          break;
        case 394:
          v5 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

          break;
        case 395:
          v5 = @"DISPLAY_EXPIRED_MAPS";

          break;
        case 396:
          v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 397:
          v5 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

          break;
        case 398:
          v5 = @"SLIDE_RESTORE_EXPIRED_MAPS";

          break;
        case 399:
          v5 = @"ETA_SHARE_TRAY_TIMEOUT";

          break;
        case 400:
          v5 = @"START_ETA_SHARING";

          break;
        case 401:
          v5 = @"PERSON_LOCATION_UPDATE";

          break;
        case 402:
          v5 = @"STOP_ETA_SHARING";

          break;
        case 403:
          v5 = @"PUNCH_OUT_TO_FINDMY";

          break;
        case 404:
          v5 = @"TAP_PEOPLE_LOCATION";

          break;
        case 405:
          v5 = @"TAP_TO_REQUEST_LOCATION";

          break;
        case 406:
          v5 = @"ZOOM_OUT_CROWN";

          break;
        case 407:
          v5 = @"TAP_RESIZE_DOWNLOAD_MAPS";

          break;
        case 408:
          v5 = @"TAP_DELETE_DOWNLOAD_MAPS";

          break;
        case 409:
          v5 = @"SELECT_LIST_VIEW";

          break;
        case 410:
          v5 = @"SCROLL_RIGHT_TRAILHEADS";

          break;
        case 411:
          v5 = @"SWITCH_TO_ONLINE_MODE";

          break;
        case 412:
          v5 = @"TAP_RELATED_TRAILHEAD";

          break;
        case 413:
          v5 = @"SELECT_ELEVATION_VIEW";

          break;
        case 414:
          v5 = @"TOGGLE_PROXIMITY_RADIUS_ON";

          break;
        case 415:
          v5 = @"SEE_MORE_RECENTS";

          break;
        case 416:
          v5 = @"SEE_MORE_GUIDES";

          break;
        case 417:
          v5 = @"SELECT_CONTROLS";

          break;
        case 418:
          v5 = @"NO_SEARCH_RESULTS";

          break;
        case 419:
          v5 = @"TAP_VIEW_RESULTS_CAROUSEL";

          break;
        case 420:
          v5 = @"TAP_VIEW_RESULTS_LIST";

          break;
        case 421:
          v5 = @"SELECT_MAP_VIEW";

          break;
        case 422:
          v5 = @"SCROLL_LEFT_TRAILHEADS";

          break;
        case 423:
          v5 = @"SWITCH_TO_OFFLINE_MODE";

          break;
        case 424:
          v5 = @"ZOOM_IN_CROWN";

          break;
        case 425:
          v5 = @"TOGGLE_PROXIMITY_RADIUS_OFF";

          break;
        case 426:
          v5 = @"TAP_MAP";

          break;
        case 427:
          v5 = @"SWIPE_DOWN";

          break;
        case 428:
          v5 = @"TAP_MORE_TRAILHEADS";

          break;
        case 429:
          v5 = @"TAP_ROUTE_OPTIONS";

          break;
        case 430:
          v5 = @"TAP_ROUTE_NAV_MAP";

          break;
        case 431:
          v5 = @"TAP_ROUTE_OVERVIEW_MAP";

          break;
        case 432:
          v5 = @"TAP_AUDIO";

          break;
        case 433:
          v5 = @"TAP_OPEN_PLACECARD";

          break;
        case 434:
          v5 = @"TAP_VIEW_STOPS";

          break;
        case 435:
          v5 = @"TAP_ROUTE_DETAILS";

          break;
        case 436:
          v5 = @"ADD_LPR_VEHICLE";

          break;
        case 437:
          v5 = @"TAP_ADD_VEHICLE";

          break;
        case 438:
          v5 = @"TAP_PLUG_TYPE";

          break;
        case 439:
          v5 = @"UNSELECT_SUGGESTED_NETWORK";

          break;
        case 440:
          v5 = @"TAP_SET_UP_LATER";

          break;
        case 441:
          v5 = @"ADD_EV_VEHICLE";

          break;
        case 442:
          v5 = @"UPDATE_COLOR";

          break;
        case 443:
          v5 = @"SELECT_OTHER_NETWORK";

          break;
        case 444:
          v5 = @"UNSELECT_NETWORK";

          break;
        case 445:
          v5 = @"TAP_BACK";

          break;
        case 446:
          v5 = @"TAP_CANCEL";

          break;
        case 447:
          v5 = @"UNSELECT_VEHICLE";

          break;
        case 448:
          v5 = @"UNSELECT_OTHER_NETWORK";

          break;
        case 449:
          v5 = @"DISPLAY_EV_TIPKIT";

          break;
        case 450:
          v5 = @"SELECT_NETWORK";

          break;
        case 451:
          v5 = @"TAP_EV_TIPKIT";

          break;
        case 452:
          v5 = @"TAP_CHOOSE_NETWORKS";

          break;
        case 453:
          v5 = @"TAP_ADD_NETWORK";

          break;
        case 454:
          v5 = @"FILTER_NETWORK";

          break;
        case 455:
          v5 = @"SELECT_SUGGESTED_NETWORK";

          break;
        case 456:
          v5 = @"TRANSIT_TO_WALKING";

          break;
        case 457:
          v5 = @"TRANSIT_TO_FINDMY";

          break;
        case 458:
          v5 = @"TAP_AC_KEYBOARD";

          break;
        case 459:
          v5 = @"REACH_PHOTO_STRIP_END";

          break;
        case 460:
          v5 = @"SEARCH_HERE_REVEAL";

          break;
        case 461:
          v5 = @"TAP_SEARCH_HERE";

          break;
        case 462:
          v5 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

          break;
        case 463:
          v5 = @"SAVE";

          break;
        case 464:
          v5 = @"TAP_MORE_CURATED_HIKES";

          break;
        case 465:
          v5 = @"CREATE_CUSTOM_ROUTE";

          break;
        case 466:
          v5 = @"TAP_TRY_NOW";

          break;
        case 467:
          v5 = @"TAP_CURATED_HIKE";

          break;
        case 468:
          v5 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

          break;
        case 469:
          v5 = @"ADD_TO_LIBRARY";

          break;
        case 470:
          v5 = @"START_HIKING";

          break;
        case 471:
          v5 = @"EDIT_NOTE";

          break;
        case 472:
          v5 = @"CREATE_NOTE";

          break;
        case 473:
          v5 = @"DELETE_PIN";

          break;
        case 474:
          v5 = @"ADD_ROUTE";

          break;
        case 475:
          v5 = @"ADD_PIN";

          break;
        case 476:
          v5 = @"REMOVE_FROM_COLLECTION";

          break;
        case 477:
          v5 = @"REMOVE_FROM_LIBRARY";

          break;
        case 478:
          v5 = @"TAP_ITEM";

          break;
        case 479:
          v5 = @"DELETE_ROUTE";

          break;
        case 480:
          v5 = @"TAP_ROUTE";

          break;
        case 481:
          v5 = @"TAP_DOWNLOAD_WATCH_MAPS";

          break;
        case 482:
          v5 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 483:
          v5 = @"STOP_DOWNLOAD_ONTO_WATCH";

          break;
        case 484:
          v5 = @"TAP_DOWNLOAD_ONTO_WATCH";

          break;
        case 485:
          v5 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 486:
          v5 = @"TAP_DOWNLOAD_NOW_WATCH";

          break;
        case 487:
          v5 = @"REVEAL_DETECTION_LIST";

          break;
        case 488:
          v5 = @"TAP_RECOMMENDATION";

          break;
        case 489:
          v5 = @"TAP_EXPAND";

          break;
        case 490:
          v5 = @"EXPAND_DETECTION_LIST";

          break;
        case 491:
          v5 = @"FIRST_PARTY_MAP_VIEW";

          break;
        case 492:
          v5 = @"SECOND_PARTY_MAP_VIEW";

          break;
        case 493:
          v5 = @"THIRD_PARTY_MAP_VIEW";

          break;
        case 494:
          v5 = @"DAEMON_PARTY_MAP_VIEW";

          break;
        case 495:
          v5 = @"MAPS_APP_DWELL_TIME_3_SEC";

          break;
        case 496:
          v5 = @"MAPS_APP_DWELL_TIME_30_SEC";

          break;
        case 497:
          v5 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

          break;
        case 498:
          v5 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

          break;
        case 499:
          v5 = @"DISPLAY_DOOM";

          break;
        case 500:
          v5 = @"TAP_DOOM";

          break;
        case 501:
          v5 = @"TAP_ROUTE_GENIUS";

          break;
        case 502:
          v5 = @"DISPLAY_ROUTE_GENIUS";

          break;
        case 503:
          v5 = @"TAP_WIDGET";

          break;
        case 504:
          v5 = @"ARRIVE_AT_DESTINATION";

          break;
        case 505:
          v5 = @"DISPLAY_WIDGET";

          break;
        case 506:
          v5 = @"CLEAR_HISTORY";

          break;
        case 507:
          v5 = @"TAP_SECTION";

          break;
        case 508:
          v5 = @"APPROVE_LOCATION";

          break;
        case 509:
          v5 = @"DISMISS_VISITED_PLACES_TIPKIT";

          break;
        case 510:
          v5 = @"DISPLAY_VISITED_PLACES_TIPKIT";

          break;
        case 511:
          v5 = @"MORE_OPTIONS";

          break;
        case 512:
          v5 = @"TAP_VISITED_PLACES_AVAILABLE";

          break;
        case 513:
          v5 = @"AUTO_REFRESH_SEARCH";

          break;
        case 514:
          v5 = @"REMOVE_VISIT";

          break;
        case 515:
          v5 = @"WRONG_LOCATION";

          break;
        case 516:
          v5 = @"CONFIRM";

          break;
        case 517:
          v5 = @"KEEP_HISTORY";

          break;
        case 518:
          v5 = @"DISPLAY_VISITED_PLACES_AVAILABLE";

          break;
        case 519:
          v5 = @"REMOVE";

          break;
        case 520:
          v5 = @"ALLOW";

          break;
        case 521:
          v5 = @"DONT_ALLOW";

          break;
        case 522:
          v5 = @"REMOVE_EVERY_VISIT";

          break;
        case 523:
          v5 = @"CONTINUE_VISITED_PLACES_TIPKIT";

          break;
        case 524:
          v5 = @"REMOVE_FROM_FAVORITE_GUIDE";

          break;
        case 525:
          v5 = @"ADD_TO_FAVORITE_GUIDE";

          break;
        case 526:
          v5 = @"FAMILIAR_ROUTE_DISPLAYED";

          break;
        case 527:
          v5 = @"FAMILIAR_ROUTE_NAV_STARTED";

          break;
        case 528:
          v5 = @"SELECT_AUDIO_VOLUME_LOUDER";

          break;
        case 529:
          v5 = @"SELECT_AUDIO_VOLUME_SOFTER";

          break;
        case 1001:
          v5 = @"PAN";

          break;
        case 1002:
          v5 = @"ZOOM_IN";

          break;
        case 1003:
          v5 = @"ZOOM_OUT";

          break;
        case 1004:
          v5 = @"ROTATE";

          break;
        case 1010:
          v5 = @"TAP_POI";

          break;
        case 1011:
          v5 = @"TAP_POI_TRANSIT";

          break;
        case 1017:
          v5 = @"TAP_POI_HIGHLIGHTED";

          break;
        case 1018:
          v5 = @"TAP_POI_CLUSTERED";

          break;
        case 1020:
          v5 = @"TAP_POI_DROPPED_PIN";

          break;
        case 1030:
          v5 = @"DROP_PIN";

          break;
        case 1031:
          v5 = @"TAP_INCIDENT";

          break;
        case 1032:
          v5 = @"TAP_TRANSIT_LINE";

          break;
        case 1033:
          v5 = @"TAP_POI_CALENDAR";

          break;
        case 1034:
          v5 = @"TAP_POI_CURRENT_LOCATION";

          break;
        case 1035:
          v5 = @"TAP_POI_TRANSIT_LINE";

          break;
        case 1036:
          v5 = @"TAP_POI_LANDMARK";

          break;
        case 1037:
          v5 = @"TAP_POI_FLYOVER";

          break;
        case 1038:
          v5 = @"TAP_TO_HIDE_TRAY";

          break;
        case 1039:
          v5 = @"TAP_TO_REVEAL_TRAY";

          break;
        case 1040:
          v5 = @"TAP_COMPASS";

          break;
        case 1041:
          v5 = @"PITCH_AWAY_FROM_GROUND";

          break;
        case 1042:
          v5 = @"PITCH_CLOSER_TO_GROUND";

          break;
        case 1043:
          v5 = @"ZOOM_IN_PINCH";

          break;
        case 1044:
          v5 = @"ZOOM_OUT_PINCH";

          break;
        case 1045:
          v5 = @"ZOOM_IN_DOUBLE_TAP";

          break;
        case 1046:
          v5 = @"ZOOM_OUT_TWO_FINGER_TAP";

          break;
        case 1047:
          v5 = @"ZOOM_IN_ONE_FINGER";

          break;
        case 1048:
          v5 = @"ZOOM_OUT_ONE_FINGER";

          break;
        case 1049:
          v5 = @"ZOOM_IN_BUTTON";

          break;
        case 1050:
          v5 = @"ZOOM_OUT_BUTTON";

          break;
        case 1051:
          v5 = @"TAP_TRAFFIC_CAMERA";

          break;
        case 1052:
          v5 = @"DISPLAY_INDOOR_MAP_BUTTON";

          break;
        case 1053:
          v5 = @"OPEN_INDOOR_MAP";

          break;
        case 1054:
          v5 = @"DISPLAY_VENUE_BROWSE_BUTTON";

          break;
        case 1055:
          v5 = @"TAP_VENUE_BROWSE_BUTTON";

          break;
        case 1056:
          v5 = @"ENTER_VENUE_EXPERIENCE";

          break;
        case 1057:
          v5 = @"EXIT_VENUE_EXPERIENCE";

          break;
        case 1058:
          v5 = @"ZOOM_IN_SCENE_PINCH";

          break;
        case 1059:
          v5 = @"ZOOM_OUT_SCENE_PINCH";

          break;
        case 1060:
          v5 = @"ZOOM_RESET";

          break;
        case 1061:
          v5 = @"TAP_SCENE_UNAVAILABLE_AREA";

          break;
        case 1062:
          v5 = @"TAP_TRANSIT_ACCESS_POINT";

          break;
        case 1063:
          v5 = @"TAP_SPEED_CAMERA";

          break;
        case 1064:
          v5 = @"TAP_RED_LIGHT_CAMERA";

          break;
        case 1065:
          v5 = @"TAP_GEO";

          break;
        default:
          if (action != 1500)
          {
            goto LABEL_198;
          }

          v5 = @"TAP_PLAY_SOUND";

          break;
      }
    }

    return v5;
  }

  if (action <= 9000)
  {
    if (action <= 6002)
    {
      if (action > 4001)
      {
        if (action <= 4004)
        {
          if (action == 4002)
          {
            v5 = @"TAP_HEADING_ON";
          }

          else if (action == 4003)
          {
            v5 = @"TAP_HEADING_OFF";
          }

          else
          {
            v5 = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(action)
          {
            case 5001:
              v5 = @"SHOW_MAPS_SETTINGS";

              return v5;
            case 5002:
              v5 = @"TAP_STANDARD_MODE";

              return v5;
            case 5003:
              v5 = @"TAP_TRANSIT_MODE";

              return v5;
            case 5004:
              v5 = @"TAP_SATELLITE_MODE";

              return v5;
            case 5005:
              v5 = @"SWITCH_ON_TRAFFIC";

              return v5;
            case 5006:
              v5 = @"SWITCH_OFF_TRAFFIC";

              return v5;
            case 5007:
              v5 = @"SWITCH_ON_LABELS";

              return v5;
            case 5008:
              v5 = @"SWITCH_OFF_LABELS";

              return v5;
            case 5009:
              v5 = @"SWITCH_ON_3D_MAP";

              return v5;
            case 5010:
              v5 = @"SWITCH_OFF_3D_MAP";

              return v5;
            case 5011:
              v5 = @"SWITCH_ON_WEATHER";

              return v5;
            case 5012:
              v5 = @"SWITCH_OFF_WEATHER";

              return v5;
            case 5013:
              v5 = @"REPORT_A_PROBLEM";

              return v5;
            case 5014:
              v5 = @"ADD_PLACE";

              return v5;
            case 5015:
              goto LABEL_198;
            case 5016:
              v5 = @"TAP_PREFERENCES";

              return v5;
            case 5017:
              v5 = @"SWITCH_ON_TOLLS";

              return v5;
            case 5018:
              v5 = @"SWITCH_OFF_TOLLS";

              return v5;
            case 5019:
              v5 = @"SWITCH_ON_HIGHWAYS";

              return v5;
            case 5020:
              v5 = @"SWITCH_OFF_HIGHWAYS";

              return v5;
            case 5021:
              v5 = @"SWITCH_ON_HEADING";

              return v5;
            case 5022:
              v5 = @"SWITCH_OFF_HEADING";

              return v5;
            case 5023:
              v5 = @"SWITCH_ON_SPEED_LIMIT";

              return v5;
            case 5024:
              v5 = @"SWITCH_OFF_SPEED_LIMIT";

              return v5;
            case 5025:
              v5 = @"ELECT_DRIVING_MODE";

              return v5;
            case 5026:
              v5 = @"ELECT_WALKING_MODE";

              return v5;
            case 5027:
              v5 = @"ELECT_TRANSIT_MODE";

              return v5;
            case 5028:
              v5 = @"ELECT_RIDESHARE_MODE";

              return v5;
            case 5029:
              v5 = @"SWITCH_ON_FIND_MY_CAR";

              return v5;
            case 5030:
              v5 = @"SWITCH_OFF_FIND_MY_CAR";

              return v5;
            case 5031:
              v5 = @"MARK_MY_LOCATION";

              return v5;
            case 5032:
              v5 = @"TAP_HYBRID_MODE";

              return v5;
            case 5033:
              v5 = @"CHECK_AVOID_BUSY_ROADS";

              return v5;
            case 5034:
              v5 = @"UNCHECK_AVOID_BUSY_ROADS";

              return v5;
            case 5035:
              v5 = @"CHECK_AVOID_HILLS";

              return v5;
            case 5036:
              v5 = @"UNCHECK_AVOID_HILLS";

              return v5;
            case 5037:
              v5 = @"CHECK_AVOID_STAIRS";

              return v5;
            case 5038:
              v5 = @"UNCHECK_AVOID_STAIRS";

              return v5;
            case 5039:
              v5 = @"ELECT_CYCLING_MODE";

              return v5;
            default:
              if (action == 4005)
              {
                v5 = @"PUCK_SNAP";
              }

              else
              {
                if (action != 4006)
                {
                  goto LABEL_198;
                }

                v5 = @"SELECT_FLOOR";
              }

              break;
          }
        }
      }

      else
      {
        switch(action)
        {
          case 3001:
            v5 = @"START_NAV";

            break;
          case 3002:
            v5 = @"END_NAV";

            break;
          case 3003:
            v5 = @"OPEN_NAV_AUDIO_SETTINGS";

            break;
          case 3004:
            v5 = @"VIEW_DETAILS";

            break;
          case 3005:
            v5 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

            break;
          case 3006:
            v5 = @"OPEN_ROUTING_EDITOR";

            break;
          case 3007:
            v5 = @"EDIT_ORIGIN";

            break;
          case 3008:
            v5 = @"EDIT_DESTINATION";

            break;
          case 3009:
            v5 = @"SWAP_ORIGIN_DESTINATION";

            break;
          case 3010:
            v5 = @"OPEN_MORE_ROUTES";

            break;
          case 3011:
            v5 = @"SELECT_ROUTING_TYPE_DRIVING";

            break;
          case 3012:
            v5 = @"SELECT_ROUTING_TYPE_WALKING";

            break;
          case 3013:
            v5 = @"SELECT_ROUTING_TYPE_TRANSIT";

            break;
          case 3014:
            v5 = @"SELECT_ROUTING_TYPE_RIDESHARE";

            break;
          case 3015:
            v5 = @"SELECT_ROUTE";

            break;
          case 3016:
            v5 = @"COLLAPSE_STEP_DETAILS_WALK";

            break;
          case 3017:
            v5 = @"EXPAND_STEP_DETAILS_WALK";

            break;
          case 3018:
            v5 = @"COLLAPSE_STEP_DETAILS_TRANSIT";

            break;
          case 3019:
            v5 = @"EXPAND_STEP_DETAILS_TRANSIT";

            break;
          case 3020:
            v5 = @"UNCHECK_BUS";

            break;
          case 3021:
            v5 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3022:
            v5 = @"UNCHECK_COMMUTER_RAIL";

            break;
          case 3023:
            v5 = @"UNCHECK_FERRY";

            break;
          case 3024:
            v5 = @"CHECK_BUS";

            break;
          case 3025:
            v5 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3026:
            v5 = @"CHECK_COMMUTER_RAIL";

            break;
          case 3027:
            v5 = @"CHECK_FERRY";

            break;
          case 3028:
            v5 = @"SELECT_LEAVE_AT";

            break;
          case 3029:
            v5 = @"SELECT_ARRIVE_BY";

            break;
          case 3030:
            v5 = @"SELECT_LEAVE_NOW";

            break;
          case 3031:
            v5 = @"SELECT_DATE_TIME";

            break;
          case 3032:
            v5 = @"SWITCH_ON_IC_FARES";

            break;
          case 3033:
            v5 = @"SWITCH_OFF_IC_FARES";

            break;
          case 3034:
            v5 = @"OPEN_ROUTE_OPTIONS_DATETIME";

            break;
          case 3035:
            v5 = @"OPEN_ROUTE_OPTIONS_TRANSIT";

            break;
          case 3036:
            v5 = @"OPEN_ROUTE_OPTIONS_DRIVING";

            break;
          case 3037:
            v5 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

            break;
          case 3038:
            v5 = @"REVEAL_FROM_ROUTING";

            break;
          case 3039:
            v5 = @"DISPLAY_ROUTES";

            break;
          case 3040:
            v5 = @"CHECK_RECOMMENDED_ROUTES";

            break;
          case 3041:
            v5 = @"UNCHECK_RECOMMENDED_ROUTES";

            break;
          case 3042:
            v5 = @"CHECK_FASTER_TRIPS";

            break;
          case 3043:
            v5 = @"UNCHECK_FASTER_TRIPS";

            break;
          case 3044:
            v5 = @"CHECK_FEWER_TRANSFERS";

            break;
          case 3045:
            v5 = @"UNCHECK_FEWER_TRANSFERS";

            break;
          case 3046:
            v5 = @"CHECK_LESS_WALKING";

            break;
          case 3047:
            v5 = @"UNCHECK_LESS_WALKING";

            break;
          case 3048:
            v5 = @"OPEN_ROUTE_OPTIONS_CYCLING";

            break;
          case 3049:
            v5 = @"TAP_MORE_ROUTES";

            break;
          case 3050:
            v5 = @"OPEN_NAV_OVERVIEW";

            break;
          case 3051:
            v5 = @"RESUME_NAV_MANEUVER_VIEW";

            break;
          case 3052:
            v5 = @"SELECT_AUDIO_VOLUME_SILENT";

            break;
          case 3053:
            v5 = @"SELECT_AUDIO_VOLUME_LOW";

            break;
          case 3054:
            v5 = @"SELECT_AUDIO_VOLUME_NORMAL";

            break;
          case 3055:
            v5 = @"SELECT_AUDIO_VOLUME_LOUD";

            break;
          case 3056:
            v5 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

            break;
          case 3057:
            v5 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

            break;
          case 3058:
            v5 = @"RESUME_PREV_NAV";

            break;
          case 3059:
            v5 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

            break;
          case 3060:
            v5 = @"ACCEPT_REROUTE";

            break;
          case 3061:
            v5 = @"DISMISS_REROUTE";

            break;
          case 3062:
            v5 = @"ATTEMPT_END_NAV";

            break;
          case 3063:
            v5 = @"DISPLAY_BANNER";

            break;
          case 3064:
            v5 = @"VIEW_BANNER_DETAILS";

            break;
          case 3065:
            v5 = @"ENTER_GUIDANCE";

            break;
          case 3066:
            v5 = @"AUTO_ADVANCE_GUIDANCE";

            break;
          case 3067:
            v5 = @"TAP_OPEN_WALLET";

            break;
          case 3068:
            v5 = @"SELECT_VOICE_GUIDANCE_ALL";

            break;
          case 3069:
            v5 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

            break;
          case 3070:
            v5 = @"SELECT_VOICE_GUIDANCE_NONE";

            break;
          case 3071:
            v5 = @"DISPLAY_CARD";

            break;
          case 3072:
            v5 = @"RENDER_ROUTE";

            break;
          case 3073:
            v5 = @"DISPLAY_JUNCTION_VIEW";

            break;
          case 3074:
            v5 = @"SELECT_DEPARTURE";

            break;
          case 3075:
            v5 = @"DISPLAY_AR_VIEW_RAISE_BANNER";

            break;
          case 3076:
            v5 = @"DEVICE_RAISE";

            break;
          case 3077:
            v5 = @"ENTER_AR_NAV_VIEW";

            break;
          case 3078:
            v5 = @"EXIT_AR_NAV_VIEW";

            break;
          case 3079:
            v5 = @"AR_CALIBRATION_START";

            break;
          case 3080:
            v5 = @"AR_CALIBRATION_FAILURE";

            break;
          case 3081:
            v5 = @"AR_CALIBRATION_SUCCESS";

            break;
          case 3082:
            v5 = @"DISPLAY_AR_NAV_ARROW";

            break;
          case 3083:
            v5 = @"DISPLAY_AR_NAV_TURN_AROUND";

            break;
          case 3084:
            v5 = @"DISPLAY_GO_OUTSIDE_BANNER";

            break;
          case 3085:
            v5 = @"DISPLAY_AR_DARKNESS_MESSAGE";

            break;
          case 3086:
            v5 = @"DISPLAY_AR_NAV_ENDPOINT";

            break;
          case 3087:
            v5 = @"DISPLAY_ADVISORY_BANNER";

            break;
          case 3088:
            v5 = @"TAP_SHOW_ADVISORY_DETAILS";

            break;
          default:
            if (action != 4001)
            {
              goto LABEL_198;
            }

            v5 = @"RECENTER_CURRENT_LOCATION";

            break;
        }
      }

      return v5;
    }

    if (action <= 7000)
    {
      switch(action)
      {
        case 6003:
          v5 = @"GET_DIRECTIONS";

          break;
        case 6004:
          v5 = @"TAP_FLYOVER_TOUR";

          break;
        case 6005:
          v5 = @"REMOVE_PIN";

          break;
        case 6006:
          v5 = @"TAP_PHOTO";

          break;
        case 6007:
          v5 = @"TAP_MAPS_VIEW";

          break;
        case 6008:
          v5 = @"TAP_ADDRESS";

          break;
        case 6009:
          v5 = @"CALL";

          break;
        case 6010:
          v5 = @"TAP_URL";

          break;
        case 6011:
          v5 = @"SHOW_TODAY_HOURS";

          break;
        case 6012:
          v5 = @"SHOW_ALL_HOURS";

          break;
        case 6013:
          v5 = @"SHARE";

          break;
        case 6015:
          v5 = @"ADD_TO_FAVORITES";

          break;
        case 6016:
          v5 = @"ADD_CONTACT";

          break;
        case 6018:
          v5 = @"PUNCH_OUT_PHOTO";

          break;
        case 6019:
          v5 = @"PUNCH_OUT_USEFUL_TO_KNOW";

          break;
        case 6020:
          v5 = @"PUNCH_OUT_OPEN_APP";

          break;
        case 6021:
          v5 = @"PUNCH_OUT_SINGLE_REVIEW";

          break;
        case 6022:
          v5 = @"PUNCH_OUT_CHECK_IN";

          break;
        case 6023:
          v5 = @"PUNCH_OUT_MORE_INFO";

          break;
        case 6024:
          v5 = @"PUNCH_OUT_WRITE_REVIEW";

          break;
        case 6025:
          v5 = @"PUNCH_OUT_ADD_PHOTO";

          break;
        case 6026:
          v5 = @"TAP_GRID_VIEW";

          break;
        case 6027:
          v5 = @"EDIT_LOCATION";

          break;
        case 6029:
          v5 = @"ADD_PHOTO";

          break;
        case 6031:
          v5 = @"RETAKE";

          break;
        case 6032:
          v5 = @"ADD_NOTE";

          break;
        case 6033:
          v5 = @"REMOVE_CAR";

          break;
        case 6034:
          v5 = @"EDIT_NAME";

          break;
        case 6036:
          v5 = @"RESERVE_TABLE";

          break;
        case 6037:
          v5 = @"ADD_TO_QUEUE";

          break;
        case 6038:
          v5 = @"VIEW_BOOKED_TABLE";

          break;
        case 6039:
          v5 = @"VIEW_QUEUED_TABLE";

          break;
        case 6040:
          v5 = @"PUNCH_OUT_THIRD_PARTY_APP";

          break;
        case 6041:
          v5 = @"PUNCH_OUT_LEGAL_LINK";

          break;
        case 6042:
          v5 = @"TAP_PLACECARD_HEADER";

          break;
        case 6043:
          v5 = @"REMOVE_FROM_FAVORITES";

          break;
        case 6044:
          v5 = @"VIEW_CONTACT";

          break;
        case 6045:
          v5 = @"CHAT";

          break;
        case 6046:
          v5 = @"FIND_STORES";

          break;
        case 6047:
          v5 = @"TAP_PARENT";

          break;
        case 6048:
          v5 = @"SCROLL_LEFT_PHOTOS";

          break;
        case 6049:
          v5 = @"SCROLL_RIGHT_PHOTOS";

          break;
        case 6050:
          v5 = @"PUNCH_OUT";

          break;
        case 6051:
          v5 = @"TAP_ENTER_MUNIN";

          break;
        case 6052:
          v5 = @"TAP_RECOMMENDED_DISHES_PHOTO";

          break;
        case 6053:
          v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

          break;
        case 6054:
          v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

          break;
        case 6055:
          v5 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6056:
          v5 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6057:
          v5 = @"SHOW_LINKED_SERVICE_HOURS";

          break;
        case 6058:
          v5 = @"ENTER_LOOK_AROUND";

          break;
        case 6059:
          v5 = @"EXIT_LOOK_AROUND";

          break;
        case 6060:
          v5 = @"TAP_ENTER_LOOK_AROUND_VIEW";

          break;
        case 6061:
          v5 = @"TAP_ENTER_LOOK_AROUND_PIP";

          break;
        case 6062:
          v5 = @"EXPAND_LOOK_AROUND_VIEW";

          break;
        case 6063:
          v5 = @"CLOSE_LOOK_AROUND";

          break;
        case 6064:
          v5 = @"COLLAPSE_LOOK_AROUND_VIEW";

          break;
        case 6065:
          v5 = @"TAP_SHOW_ACTIONS";

          break;
        case 6066:
          v5 = @"TAP_HIDE_LABELS";

          break;
        case 6067:
          v5 = @"TAP_SHOW_LABELS";

          break;
        case 6068:
          v5 = @"TAP_SHOW_DETAILS";

          break;
        case 6069:
          v5 = @"PAN_LOOK_AROUND";

          break;
        case 6070:
          v5 = @"TAP_LOOK_AROUND_THUMBNAIL";

          break;
        case 6071:
          v5 = @"TAP_LANDMARK";

          break;
        case 6072:
          v5 = @"TAP_SCENE";

          break;
        case 6073:
          v5 = @"SHOW_LINKED_BUSINESS_HOURS";

          break;
        case 6074:
          v5 = @"TAP_PLACECARD_SHORTCUT";

          break;
        case 6075:
          v5 = @"SHOW_ALL_LOCATIONS_INSIDE";

          break;
        case 6076:
          v5 = @"SHOW_ALL_SIMILAR_LOCATIONS";

          break;
        case 6077:
          v5 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

          break;
        case 6078:
          v5 = @"TAP_PARENT_LOCATION";

          break;
        case 6079:
          v5 = @"TAP_SIMILAR_LOCATION";

          break;
        case 6080:
          v5 = @"TAP_LOCATION_INSIDE";

          break;
        case 6081:
          v5 = @"TAP_LOCATION_AT_ADDRESS";

          break;
        case 6082:
          v5 = @"CLOSE_ROUTE_GENIUS";

          break;
        case 6083:
          v5 = @"LOAD_WEB_CONTENT";

          break;
        case 6084:
          v5 = @"SCROLL_FORWARD_WEB_CONTENT";

          break;
        case 6085:
          v5 = @"SCROLL_BACKWARD_WEB_CONTENT";

          break;
        case 6086:
          v5 = @"TAP_WEB_CONTENT";

          break;
        case 6087:
          v5 = @"SHOW_PHOTO_VIEWER";

          break;
        case 6088:
          v5 = @"SHOW_LAST_PAGE";

          break;
        case 6089:
          v5 = @"TAP_VIEW_APP";

          break;
        case 6090:
          v5 = @"TAP_APP_CLIP";

          break;
        case 6091:
          v5 = @"DEAD_BATTERY";

          break;
        case 6092:
          v5 = @"DISMISS_LOW_BATTERY_ALERT";

          break;
        case 6093:
          v5 = @"DISMISS_OUT_OF_RANGE_ALERT";

          break;
        case 6094:
          v5 = @"FAILED_TO_LOAD_EV_STATUS";

          break;
        case 6095:
          v5 = @"LOW_BATTERY_ALERT";

          break;
        case 6096:
          v5 = @"PAUSE_ROUTE";

          break;
        case 6097:
          v5 = @"TAP_ADD_STOP";

          break;
        case 6098:
          v5 = @"TAP_CHARGE_POINT";

          break;
        case 6099:
          v5 = @"TAP_OUT_OF_RANGE_ALERT";

          break;
        case 6100:
          v5 = @"SCROLL_DOWN_PHOTOS";

          break;
        case 6101:
          v5 = @"SCROLL_UP_PHOTOS";

          break;
        case 6102:
          v5 = @"TAP_MORE_PHOTOS";

          break;
        case 6103:
          v5 = @"TAP_TO_CONFIRM_INCIDENT";

          break;
        case 6104:
          v5 = @"SHOW_INCIDENT";

          break;
        case 6105:
          v5 = @"REVEAL_APP_CLIP";

          break;
        case 6106:
          v5 = @"ORDER_DELIVERY";

          break;
        case 6107:
          v5 = @"VIEW_MENU";

          break;
        case 6108:
          v5 = @"TAP_EDIT_STOPS";

          break;
        case 6109:
          v5 = @"LEARN_MORE_WEB_CONTENT";

          break;
        case 6110:
          v5 = @"MAKE_APPOINTMENT_WEB_CONTENT";

          break;
        case 6111:
          v5 = @"REVEAL_SHOWCASE";

          break;
        case 6112:
          v5 = @"TAP_ACTION_BAR";

          break;
        default:
          goto LABEL_198;
      }

      return v5;
    }

    if (action <= 8000)
    {
      switch(action)
      {
        case 7001:
          v5 = @"EXPAND_TRANSIT_SYSTEM";

          break;
        case 7002:
          v5 = @"COLLAPSE_TRANSIT_SYSTEM";

          break;
        case 7003:
          v5 = @"SHOW_MORE_DEPARTURES";

          break;
        case 7004:
          v5 = @"VIEW_TRANSIT_LINE";

          break;
        case 7005:
          v5 = @"CANCEL_VIEW_TRANSIT_LINE";

          break;
        case 7006:
          v5 = @"TAP_TRANSIT_ATTRIBUTION";

          break;
        case 7007:
          v5 = @"TAP_TRANSIT_ADVISORY";

          break;
        case 7008:
          v5 = @"MORE_DETAILS_TRANSIT_ADVISORY";

          break;
        case 7009:
          v5 = @"SUBSCRIBE_LINE_INCIDENT";

          break;
        case 7010:
          v5 = @"UNSUBSCRIBE_LINE_INCIDENT";

          break;
        case 7011:
          v5 = @"TAP_NEAREST_STATION";

          break;
        case 7012:
          v5 = @"TAP_NEAREST_STOP";

          break;
        case 7013:
          v5 = @"TAP_CONNECTION";

          break;
        case 7014:
          v5 = @"GET_TICKETS";

          break;
        case 7015:
          v5 = @"OPEN_SCHEDULECARD_DATETIME";

          break;
        case 7016:
          v5 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

          break;
        case 7017:
          v5 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

          break;
        case 7018:
          v5 = @"VIEW_ON_MAP";

          break;
        case 7019:
          v5 = @"FORCE_UPDATE_DEPARTURE_INFO";

          break;
        case 7020:
          v5 = @"TAP_TRANSIT_LINE_INFO";

          break;
        case 7021:
          v5 = @"TAP_ATTRIBUTION_CELL";

          break;
        case 7022:
          v5 = @"TAP_NEXT_DEPARTURES";

          break;
        case 7023:
          v5 = @"VIEW_BANNER";

          break;
        case 7024:
          v5 = @"GET_SHOWTIMES";

          break;
        case 7025:
          v5 = @"MAKE_APPOINTMENT";

          break;
        case 7026:
          v5 = @"RESERVE_PARKING";

          break;
        case 7027:
          v5 = @"RESERVE_ROOM";

          break;
        case 7028:
          v5 = @"WAITLIST";

          break;
        case 7029:
          v5 = @"ORDER_TAKEOUT";

          break;
        case 7030:
          v5 = @"RESERVE";

          break;
        default:
          goto LABEL_198;
      }

      return v5;
    }

    if (action <= 8005)
    {
      if (action <= 8002)
      {
        if (action == 8001)
        {
          v5 = @"INVOKE_SIRI_SNIPPET";
        }

        else
        {
          v5 = @"INVOKE_SIRI_DISAMBIGUATION";
        }
      }

      else if (action == 8003)
      {
        v5 = @"SHOW_PLACE_DETAILS";
      }

      else if (action == 8004)
      {
        v5 = @"ANSWER_REROUTE_SUGGESTION";
      }

      else
      {
        v5 = @"SUGGEST_NAV_REROUTE";
      }

      return v5;
    }

    if (action <= 8008)
    {
      if (action == 8006)
      {
        v5 = @"GET_NAV_STATUS";
      }

      else if (action == 8007)
      {
        v5 = @"REPEAT_NAV_STATUS";
      }

      else
      {
        v5 = @"SELECT_AUDIO_VOLUME_UNMUTE";
      }

      return v5;
    }

    switch(action)
    {
      case 0x1F49:
        v5 = @"INVOKE_SIRI";

        return v5;
      case 0x1F4A:
        v5 = @"DISPLAY_SIRI_ERROR_MESSAGE";

        return v5;
      case 0x1F4B:
        v5 = @"DISPLAY_NO_RESULTS_MESSAGE";

        return v5;
    }

LABEL_198:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_199:

    return v5;
  }

  if (action <= 12000)
  {
    switch(action)
    {
      case 10101:
        v5 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

        break;
      case 10102:
        v5 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

        break;
      case 10103:
        v5 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

        break;
      case 10104:
        v5 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

        break;
      case 10105:
        v5 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

        break;
      case 10106:
        v5 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

        break;
      case 10107:
        v5 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

        break;
      case 10108:
        v5 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

        break;
      case 10109:
        v5 = @"RAP_CANCEL";

        break;
      case 10110:
        v5 = @"RAP_NEXT";

        break;
      case 10111:
        v5 = @"RAP_BACK";

        break;
      case 10112:
        v5 = @"RAP_SEND";

        break;
      case 10113:
        v5 = @"RAP_SKIP";

        break;
      case 10114:
        v5 = @"RAP_SHOW_MORE";

        break;
      case 10115:
        v5 = @"RAP_ADD_PHOTO";

        break;
      case 10116:
        v5 = @"RAP_MAP_INCORRECT";

        break;
      case 10117:
        v5 = @"RAP_BAD_DIRECTIONS";

        break;
      case 10118:
        v5 = @"RAP_TRANSIT_INFO_INCORRECT";

        break;
      case 10119:
        v5 = @"RAP_SATELLITE_IMAGE_PROBLEM";

        break;
      case 10120:
        v5 = @"RAP_SEARCH_RESULTS_INCORRECT";

        break;
      case 10121:
        v5 = @"RAP_ADD_A_PLACE";

        break;
      case 10122:
        v5 = @"RAP_HOME";

        break;
      case 10123:
        v5 = @"RAP_WORK";

        break;
      case 10124:
        v5 = @"RAP_OTHER";

        break;
      case 10125:
        v5 = @"RAP_LOCATION";

        break;
      case 10126:
        v5 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

        break;
      case 10127:
        v5 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

        break;
      case 10128:
        v5 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

        break;
      case 10129:
        v5 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

        break;
      case 10130:
        v5 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

        break;
      case 10131:
        v5 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

        break;
      case 10132:
        v5 = @"RAP_TRANSIT_DELAY";

        break;
      case 10133:
        v5 = @"RAP_LOCATION_CLOSED";

        break;
      case 10134:
        v5 = @"RAP_CLOSED_PERMANENTLY";

        break;
      case 10135:
        v5 = @"RAP_CLOSED_TEMPORARILY";

        break;
      case 10136:
        v5 = @"RAP_HOURS_HAVE_CHANGED";

        break;
      case 10137:
        v5 = @"RAP_SELECT_STATION";

        break;
      case 10138:
        v5 = @"RAP_SELECT_LINE";

        break;
      case 10139:
        v5 = @"RAP_SELECT_ACCESS_POINT";

        break;
      case 10140:
        v5 = @"RAP_SELECT_SEARCH";

        break;
      case 10141:
        v5 = @"RAP_PAN_MAP";

        break;
      case 10142:
        v5 = @"RAP_CENTER_MAP_ON_USER";

        break;
      case 10143:
        v5 = @"RAP_SEARCH_UNEXPECTED";

        break;
      case 10144:
        v5 = @"RAP_ADD_POI";

        break;
      case 10145:
        v5 = @"RAP_ADD_STREET_ADDRESS";

        break;
      case 10146:
        v5 = @"RAP_ADD_OTHER";

        break;
      case 10147:
        v5 = @"RAP_SELECT_CATEGORY";

        break;
      case 10148:
        v5 = @"RAP_TAKE_PHOTO";

        break;
      case 10149:
        v5 = @"RAP_RETAKE_PHOTO";

        break;
      case 10150:
        v5 = @"RAP_PLACE_DETAILS";

        break;
      case 10151:
        v5 = @"RAP_SATELLITE_IMAGE_OUTDATED";

        break;
      case 10152:
        v5 = @"RAP_SATELLITE_IMAGE_QUALITY";

        break;
      case 10153:
        v5 = @"RAP_SELECT_LABEL";

        break;
      case 10154:
        v5 = @"RAP_SELECT_ROUTE";

        break;
      case 10155:
        v5 = @"RAP_CLAIM_BUSINESS";

        break;
      case 10156:
        v5 = @"RAP_BRAND_DETAILS";

        break;
      case 10157:
        v5 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

        break;
      case 10158:
        v5 = @"RAP_LOOK_AROUND_LABELS_STREET";

        break;
      case 10159:
        v5 = @"RAP_LOOK_AROUND_BLURRING";

        break;
      case 10160:
        v5 = @"RAP_LOOK_AROUND_REMOVE_HOME";

        break;
      case 10161:
        v5 = @"RAP_LOOK_AROUND_LABELS_STORE";

        break;
      case 10162:
        v5 = @"RAP_LOOK_AROUND_PRIVACY";

        break;
      case 10163:
        v5 = @"RAP_INCORRECT_HOURS";

        break;
      case 10164:
        v5 = @"RAP_INCORRECT_ADDRESS";

        break;
      case 10165:
        v5 = @"RAP_EDIT_PLACE_DETAILS";

        break;
      case 10166:
        v5 = @"RAP_EDIT_PLACE_NAME";

        break;
      case 10167:
        v5 = @"RAP_EDIT_ADDRESS";

        break;
      case 10168:
        v5 = @"RAP_ADD_CATEGORY";

        break;
      case 10169:
        v5 = @"RAP_REMOVE_CATEGORY";

        break;
      case 10170:
        v5 = @"RAP_DESELECT_CATEGORY";

        break;
      case 10171:
        v5 = @"RAP_ADD_HOURS";

        break;
      case 10172:
        v5 = @"RAP_REMOVE_HOURS";

        break;
      case 10173:
        v5 = @"RAP_TAP_DAY_OF_WEEK";

        break;
      case 10174:
        v5 = @"RAP_TAP_24_HOURS_BUTTON";

        break;
      case 10175:
        v5 = @"RAP_TAP_OPEN_TIME";

        break;
      case 10176:
        v5 = @"RAP_TAP_CLOSED_TIME";

        break;
      case 10177:
        v5 = @"RAP_TAP_TEMPORARY_CLOSURE";

        break;
      case 10178:
        v5 = @"RAP_TAP_PERMANENTLY_CLOSED";

        break;
      case 10179:
        v5 = @"RAP_EDIT_WEBSITE";

        break;
      case 10180:
        v5 = @"RAP_EDIT_PHONE_NUMBER";

        break;
      case 10181:
        v5 = @"RAP_TAP_ACCEPTS_APPLE_PAY";

        break;
      case 10182:
        v5 = @"RAP_ADD_COMMENTS";

        break;
      case 10183:
        v5 = @"RAP_EDIT_LOCATION";

        break;
      case 10184:
        v5 = @"RAP_VIEW_LOCATION";

        break;
      case 10185:
        v5 = @"RAP_ZOOM_IN";

        break;
      case 10186:
        v5 = @"RAP_ZOOM_OUT";

        break;
      case 10187:
        v5 = @"RAP_VIEW_ENTRY_POINTS";

        break;
      case 10188:
        v5 = @"RAP_EDIT_EXISTING_ENTRY_POINT";

        break;
      case 10189:
        v5 = @"RAP_ADD_NEW_ENTRY_POINT";

        break;
      case 10190:
        v5 = @"RAP_REMOVE_ENTRY_POINT";

        break;
      case 10191:
        v5 = @"RAP_SELECT_ENTRY_POINT_TYPE";

        break;
      default:
        switch(action)
        {
          case 9001:
            v5 = @"TAP_WIDGET_ITEM";

            break;
          case 9002:
            v5 = @"DISPLAY_NOTIFICATION";

            break;
          case 9003:
            v5 = @"TAP_NOTIFICATION";

            break;
          case 9004:
            v5 = @"EXPAND_NOTIFICATION";

            break;
          case 9005:
            v5 = @"DISMISS_NOTIFICATION";

            break;
          case 9006:
            v5 = @"OPEN_SEARCH";

            break;
          case 9007:
            v5 = @"OPEN_PAN_VIEW";

            break;
          case 9008:
            v5 = @"PAN_LEFT";

            break;
          case 9009:
            v5 = @"PAN_UP";

            break;
          case 9010:
          case 9041:
          case 9042:
          case 9043:
          case 9044:
          case 9045:
          case 9046:
          case 9047:
          case 9048:
          case 9049:
          case 9050:
          case 9051:
          case 9052:
          case 9053:
          case 9054:
          case 9055:
          case 9056:
          case 9057:
          case 9058:
          case 9059:
          case 9060:
          case 9061:
          case 9062:
          case 9063:
          case 9064:
          case 9065:
          case 9066:
          case 9067:
          case 9068:
          case 9069:
          case 9070:
          case 9071:
          case 9072:
          case 9073:
          case 9074:
          case 9075:
          case 9076:
          case 9077:
          case 9078:
          case 9079:
          case 9080:
          case 9081:
          case 9082:
          case 9083:
          case 9084:
          case 9085:
          case 9086:
          case 9087:
          case 9088:
          case 9089:
          case 9090:
          case 9091:
          case 9092:
          case 9093:
          case 9094:
          case 9095:
          case 9096:
          case 9097:
          case 9098:
          case 9099:
          case 9100:
            goto LABEL_198;
          case 9011:
            v5 = @"PAN_DOWN";

            break;
          case 9012:
            v5 = @"TAP_RECENT_DESTINATIONS";

            break;
          case 9013:
            v5 = @"OPEN_DESTINATIONS";

            break;
          case 9014:
            v5 = @"OPEN_FAVORITES";

            break;
          case 9015:
            v5 = @"VIEW_NAV_OPTIONS";

            break;
          case 9016:
            v5 = @"START_NAV_NO_GUIDANCE";

            break;
          case 9017:
            v5 = @"TURN_OFF_GUIDANCE";

            break;
          case 9018:
            v5 = @"TURN_ON_GUIDANCE";

            break;
          case 9019:
            v5 = @"OPEN_KEYBOARD";

            break;
          case 9020:
            v5 = @"SHARE_DESTINATION";

            break;
          case 9021:
            v5 = @"START_NAV_AUTOMATED";

            break;
          case 9022:
            v5 = @"SHARE_ETA";

            break;
          case 9023:
            v5 = @"SELECT_GROUP";

            break;
          case 9024:
            v5 = @"DESELECT_GROUP";

            break;
          case 9025:
            v5 = @"SELECT_CONTACT";

            break;
          case 9026:
            v5 = @"DESELECT_CONTACT";

            break;
          case 9027:
            v5 = @"TAP_VIEW_CONTACTS";

            break;
          case 9028:
            v5 = @"STOP_RECEIVING_ETA";

            break;
          case 9029:
            v5 = @"DISPLAY_ANNOUNCEMENT";

            break;
          case 9030:
            v5 = @"TAP_ANNOUNCEMENT";

            break;
          case 9031:
            v5 = @"DISPLAY_CYCLING_NOTIFICATION";

            break;
          case 9032:
            v5 = @"TAP_CYCLING_NOTIFICATION";

            break;
          case 9033:
            v5 = @"SHARE_CYCLING_ETA";

            break;
          case 9034:
            v5 = @"MANAGE_NOTIFICATIONS";

            break;
          case 9035:
            v5 = @"PUNCH_OUT_PUBLISHER_REVIEW";

            break;
          case 9036:
            v5 = @"SCROLL_FORWARD";

            break;
          case 9037:
            v5 = @"SCROLL_BACKWARD";

            break;
          case 9038:
            v5 = @"SHOW_ALL_CURATED_COLLECTIONS";

            break;
          case 9039:
            v5 = @"TAP_LESS";

            break;
          case 9040:
            v5 = @"TAP_MORE";

            break;
          case 9101:
            v5 = @"DISPLAY_ADD_HOME_AND_WORK";

            break;
          case 9102:
            v5 = @"TAP_ADD_HOME_AND_WORK";

            break;
          case 9103:
            v5 = @"DISPLAY_ALLOW_FREQUENTS";

            break;
          case 9104:
            v5 = @"TAP_ALLOW_FREQUENTS";

            break;
          case 9105:
            v5 = @"DISPLAY_ALLOW_LOCATION";

            break;
          case 9106:
            v5 = @"TAP_ALLOW_LOCATION";

            break;
          default:
            switch(action)
            {
              case 11001:
                v5 = @"EXIT_MAPS_LOWER_WRIST";

                break;
              case 11002:
                v5 = @"TASK_READY";

                break;
              case 11003:
                v5 = @"TAP_SEARCH";

                break;
              case 11004:
                v5 = @"TAP_MY_LOCATION";

                break;
              case 11005:
                v5 = @"SHOW_NEARBY";

                break;
              case 11006:
                v5 = @"TAP_NEARBY";

                break;
              case 11007:
                v5 = @"TAP_PROACTIVE";

                break;
              case 11008:
                v5 = @"FORCE_PRESS";

                break;
              case 11009:
                v5 = @"TAP_CONTACTS";

                break;
              case 11010:
                v5 = @"TAP_TRANSIT";

                break;
              case 11011:
                v5 = @"TAP_DICTATION";

                break;
              case 11012:
                v5 = @"GET_DIRECTIONS_DRIVING";

                break;
              case 11013:
                v5 = @"GET_DIRECTIONS_WALKING";

                break;
              case 11014:
                v5 = @"GET_DIRECTIONS_TRANSIT";

                break;
              case 11015:
                v5 = @"OPEN_STANDARD_MAP";

                break;
              case 11016:
                v5 = @"OPEN_TRANSIT_MAP";

                break;
              case 11017:
                v5 = @"START_NAV_AUTO";

                break;
              case 11018:
                v5 = @"TAP_RECENT";

                break;
              case 11019:
                v5 = @"TAP_FAVORITE";

                break;
              case 11020:
                v5 = @"TAP_SCRIBBLE";

                break;
              case 11021:
                v5 = @"TAP_VIEW_MAP";

                break;
              case 11022:
                v5 = @"TAP_VIEW_TBT";

                break;
              case 11023:
                v5 = @"VIEW_ROUTE_INFO";

                break;
              case 11024:
                v5 = @"NAV_UNMUTE";

                break;
              case 11025:
                v5 = @"NAV_MUTE";

                break;
              case 11026:
                v5 = @"GET_DIRECTIONS_CYCLING";

                break;
              case 11027:
                v5 = @"TAP_SEARCH_HOME";

                break;
              case 11028:
                v5 = @"ROUTE_PAUSED_ON_WATCH";

                break;
              case 11029:
                v5 = @"NEXT_STOP_TAPPED_ON_WATCH";

                break;
              default:
                goto LABEL_198;
            }

            break;
        }

        break;
    }

    return v5;
  }

  if (action > 16000)
  {
    switch(action)
    {
      case 17001:
        v5 = @"START_DRAG";

        break;
      case 17002:
        v5 = @"CANCEL_DRAG";

        break;
      case 17003:
        v5 = @"COMPLETE_DRAG";

        break;
      case 17004:
        v5 = @"START_DROP";

        break;
      case 17005:
        v5 = @"CANCEL_DROP";

        break;
      case 17006:
        v5 = @"COMPLETE_DROP";

        break;
      case 17007:
        v5 = @"ANNOTATION_SELECT";

        break;
      case 17008:
        v5 = @"ANNOTATION_SELECT_AUTO";

        break;
      case 17009:
        v5 = @"ANNOTATION_SELECT_LIST";

        break;
      case 17010:
        v5 = @"BROWSE_TOP_CATEGORY_DISPLAYED";

        break;
      case 17011:
        v5 = @"CALLOUT_FLYOVER_TOUR";

        break;
      case 17012:
        v5 = @"CALLOUT_INFO";

        break;
      case 17013:
        v5 = @"CALLOUT_NAV_TRANSIT";

        break;
      case 17014:
        v5 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

        break;
      case 17015:
        v5 = @"CALLOUT_VIEW_TRANSIT_LINE";

        break;
      case 17016:
        v5 = @"DIRECTIONS_SELECT";

        break;
      case 17017:
        v5 = @"DIRECTIONS_TRANSIT_CUSTOM";

        break;
      case 17018:
        v5 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

        break;
      case 17019:
        v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

        break;
      case 17020:
        v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

        break;
      case 17021:
        v5 = @"DIRECTIONS_TRANSIT_LATER";

        break;
      case 17022:
        v5 = @"DIRECTIONS_TRANSIT_NOW";

        break;
      case 17023:
        v5 = @"FLYOVER_NOTIFICATION_DISMISS";

        break;
      case 17024:
        v5 = @"FLYOVER_NOTIFICATION_START";

        break;
      case 17025:
        v5 = @"FLYOVER_TOUR_COMPLETED";

        break;
      case 17026:
        v5 = @"FLYOVER_TOUR_END";

        break;
      case 17027:
        v5 = @"FLYOVER_TOUR_NOTIFICATION";

        break;
      case 17028:
        v5 = @"FLYOVER_TOUR_START";

        break;
      case 17029:
        v5 = @"INFO_BOOKMARKS";

        break;
      case 17030:
        v5 = @"INFO_CARD_DETACHED";

        break;
      case 17031:
        v5 = @"INFO_CONTACTS";

        break;
      case 17032:
        v5 = @"INFO_DIRECTIONS";

        break;
      case 17033:
        v5 = @"INFO_DIRECTIONS_FROM";

        break;
      case 17034:
        v5 = @"INFO_DIRECTIONS_TO";

        break;
      case 17035:
        v5 = @"INFO_DISMISS";

        break;
      case 17036:
        v5 = @"INFO_INFO";

        break;
      case 17037:
        v5 = @"INFO_PHOTOS";

        break;
      case 17038:
        v5 = @"INFO_REVIEWS";

        break;
      case 17039:
        v5 = @"INFO_SHARE";

        break;
      case 17040:
        v5 = @"INFO_SHARE_AIRDROP";

        break;
      case 17041:
        v5 = @"INFO_SHARE_FACEBOOK";

        break;
      case 17042:
        v5 = @"INFO_SHARE_MAIL";

        break;
      case 17043:
        v5 = @"INFO_SHARE_MESSAGE";

        break;
      case 17044:
        v5 = @"INFO_SHARE_TENCENTWEIBO";

        break;
      case 17045:
        v5 = @"INFO_SHARE_WEIBO";

        break;
      case 17046:
        v5 = @"INFO_YELP";

        break;
      case 17047:
        v5 = @"MAPS_APP_LAUNCH";

        break;
      case 17048:
        v5 = @"MAP_3D_OFF";

        break;
      case 17049:
        v5 = @"MAP_3D_ON";

        break;
      case 17050:
        v5 = @"MAP_OPTIONS_DROP_PIN";

        break;
      case 17051:
        v5 = @"MAP_OPTIONS_HYBRID";

        break;
      case 17052:
        v5 = @"MAP_OPTIONS_PRINT";

        break;
      case 17053:
        v5 = @"MAP_OPTIONS_REMOVE_PIN";

        break;
      case 17054:
        v5 = @"MAP_OPTIONS_SATELLITE";

        break;
      case 17055:
        v5 = @"MAP_OPTIONS_STANDARD";

        break;
      case 17056:
        v5 = @"MAP_OPTIONS_TRAFFIC_HIDE";

        break;
      case 17057:
        v5 = @"MAP_OPTIONS_TRAFFIC_SHOW";

        break;
      case 17058:
        v5 = @"MAP_OPTIONS_TRANSIT";

        break;
      case 17059:
        v5 = @"MAP_TAP_FLYOVER_CITY";

        break;
      case 17060:
        v5 = @"MAP_TAP_LINE";

        break;
      case 17061:
        v5 = @"MAP_TAP_POI_TRANSIT";

        break;
      case 17062:
        v5 = @"MAP_TAP_TRAFFIC_INCIDENT";

        break;
      case 17063:
        v5 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

        break;
      case 17064:
        v5 = @"MAP_USER_TRACKING_OFF";

        break;
      case 17065:
        v5 = @"MAP_USER_TRACKING_ON";

        break;
      case 17066:
        v5 = @"MAP_USER_TRACKING_WITH_HEADING_ON";

        break;
      case 17067:
        v5 = @"NAV_CLEAR";

        break;
      case 17068:
        v5 = @"NAV_LIST";

        break;
      case 17069:
        v5 = @"NAV_ROUTE_STEP_NEXT";

        break;
      case 17070:
        v5 = @"NAV_ROUTE_STEP_PREV";

        break;
      case 17071:
        v5 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

        break;
      case 17072:
        v5 = @"ORB_DISPLAY_MENU";

        break;
      case 17073:
        v5 = @"ORB_MENU_CALL";

        break;
      case 17074:
        v5 = @"ORB_MENU_DIRECTIONS";

        break;
      case 17075:
        v5 = @"ORB_MENU_DISMISS";

        break;
      case 17076:
        v5 = @"ORB_MENU_SHARE";

        break;
      case 17077:
        v5 = @"ORB_MENU_SHOW_PLACECARD";

        break;
      case 17078:
        v5 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

        break;
      case 17079:
        v5 = @"ORB_MENU_URL";

        break;
      case 17080:
        v5 = @"ORB_PRESS";

        break;
      case 17081:
        v5 = @"ORB_SPRINGBOARD_MARK_LOCATION";

        break;
      case 17082:
        v5 = @"ORB_SPRINGBOARD_SEARCH";

        break;
      case 17083:
        v5 = @"ORB_SPRINGBOARD_SHARE_LOCATION";

        break;
      case 17084:
        v5 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

        break;
      case 17085:
        v5 = @"RAP_PERMISSION_CANCEL";

        break;
      case 17086:
        v5 = @"RAP_PERMISSION_EMAIL_NA";

        break;
      case 17087:
        v5 = @"RAP_PERMISSION_EMAIL_OK";

        break;
      case 17088:
        v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

        break;
      case 17089:
        v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

        break;
      case 17090:
        v5 = @"RAP_PERMISSION_OK";

        break;
      case 17091:
        v5 = @"SEARCH_BEGIN";

        break;
      case 17092:
        v5 = @"SEARCH_CANCEL";

        break;
      case 17093:
        v5 = @"SEARCH_SELECT";

        break;
      case 17094:
        v5 = @"TRANSIT_LINE_SELECTION_DISMISS";

        break;
      case 17095:
        v5 = @"TRANSIT_LINE_SELECTION_VIEW";

        break;
      case 17096:
        v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

        break;
      case 17097:
        v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

        break;
      case 17098:
        v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

        break;
      case 17099:
        v5 = @"UNKNOWN_ACTION";

        break;
      case 17100:
        v5 = @"INFO_SHARE_TWITTER";

        break;
      case 17101:
        v5 = @"INFO_TAP_POPULAR_APP_NEARBY";

        break;
      case 17102:
        v5 = @"INFO_DIRECTIONS_WALK";

        break;
      case 17103:
        v5 = @"INFO_DIRECTIONS_TRANSIT";

        break;
      case 17104:
        v5 = @"INFO_DIRECTIONS_DRIVE";

        break;
      case 17105:
        v5 = @"INFO_REPORT_A_PROBLEM";

        break;
      case 17106:
        v5 = @"CALLOUT_NAV";

        break;
      case 17107:
        v5 = @"RAP_PERMISSION_EMAIL_CANCEL";

        break;
      case 17108:
        v5 = @"MAP_TAP_POI";

        break;
      default:
        if (action == 16001)
        {
          v5 = @"SEARCH_IN_MAPS";
        }

        else
        {
          if (action != 90010)
          {
            goto LABEL_198;
          }

          v5 = @"PAN_RIGHT";
        }

        break;
    }

    return v5;
  }

  if (action <= 13004)
  {
    if (action <= 12007)
    {
      if (action <= 12003)
      {
        if (action == 12001)
        {
          v5 = @"VIEW_MORE_OPTIONS";
        }

        else if (action == 12002)
        {
          v5 = @"SELECT_TIME";
        }

        else
        {
          v5 = @"SHOW_NEXT_AVAILABLE";
        }
      }

      else if (action > 12005)
      {
        if (action == 12006)
        {
          v5 = @"EDIT_BOOKING";
        }

        else
        {
          v5 = @"EDIT_PHONE";
        }
      }

      else if (action == 12004)
      {
        v5 = @"DECREASE_TABLE_SIZE";
      }

      else
      {
        v5 = @"INCREASE_TABLE_SIZE";
      }

      return v5;
    }

    if (action > 13000)
    {
      if (action > 13002)
      {
        if (action == 13003)
        {
          v5 = @"SELECT_LABEL";
        }

        else
        {
          v5 = @"DELETE_ADDRESS";
        }
      }

      else if (action == 13001)
      {
        v5 = @"SELECT_ADDRESS";
      }

      else
      {
        v5 = @"ADD_ADDRESS";
      }

      return v5;
    }

    switch(action)
    {
      case 0x2EE8:
        v5 = @"ADD_SPECIAL_REQUEST";

        return v5;
      case 0x2EE9:
        v5 = @"CHANGE_RESERVATION";

        return v5;
      case 0x2EEA:
        v5 = @"LEARN_MORE";

        return v5;
    }

    goto LABEL_198;
  }

  if (action <= 14004)
  {
    if (action > 14000)
    {
      if (action > 14002)
      {
        if (action == 14003)
        {
          v5 = @"BOOK_RIDE";
        }

        else
        {
          v5 = @"REQUEST_RIDE";
        }
      }

      else if (action == 14001)
      {
        v5 = @"VIEW_APP";
      }

      else
      {
        v5 = @"ENABLE";
      }

      return v5;
    }

    switch(action)
    {
      case 0x32CD:
        v5 = @"EDIT_ITEMS";

        return v5;
      case 0x32CE:
        v5 = @"RAP_FAVORITES";

        return v5;
      case 0x32CF:
        v5 = @"SORT_LIST_ITEM";

        return v5;
    }

    goto LABEL_198;
  }

  if (action <= 14008)
  {
    if (action > 14006)
    {
      if (action == 14007)
      {
        v5 = @"ENABLE_ALL_RIDESHARE_APPS";
      }

      else
      {
        v5 = @"TAP_FOR_MORE_RIDES";
      }
    }

    else if (action == 14005)
    {
      v5 = @"CONTACT_DRIVER";
    }

    else
    {
      v5 = @"CHANGE_PAYMENT";
    }

    return v5;
  }

  if (action > 15001)
  {
    if (action == 15002)
    {
      v5 = @"ORB_POP";

      return v5;
    }

    if (action == 15003)
    {
      v5 = @"ORB_DISMISS";

      return v5;
    }

    goto LABEL_198;
  }

  if (action != 14009)
  {
    if (action == 15001)
    {
      v5 = @"ORB_PEEK";

      return v5;
    }

    goto LABEL_198;
  }

  v5 = @"SUBMIT_TRIP_FEEDBACK";

  return v5;
}

- (id)_whiteListedSearchActionAsString:(int)a3
{
  if (a3 == 2014)
  {
    action = self->_action;
    if (action <= 3000)
    {
      if (action > 1500)
      {
        if (action <= 1503)
        {
          if (action == 1501)
          {
            v5 = @"TAP_DIRECTIONS";
          }

          else if (action == 1502)
          {
            v5 = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            v5 = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(action)
          {
            case 2001:
              v5 = @"TAP_SEARCH_FIELD";

              return v5;
            case 2002:
              v5 = @"CLEAR_SEARCH";

              return v5;
            case 2003:
              v5 = @"CANCEL_SEARCH";

              return v5;
            case 2004:
              v5 = @"TAP_BROWSE_TOP_CATEGORY";

              return v5;
            case 2005:
              v5 = @"TAP_BROWSE_SUB_CATEGORY";

              return v5;
            case 2006:
              v5 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

              return v5;
            case 2007:
              v5 = @"TAP_LIST_ITEM";

              return v5;
            case 2008:
              v5 = @"SHARE_LIST_ITEM";

              return v5;
            case 2009:
              v5 = @"DELETE_LIST_ITEM";

              return v5;
            case 2010:
              v5 = @"EDIT_LIST_ITEM";

              return v5;
            case 2011:
              v5 = @"REFRESH_SEARCH";

              return v5;
            case 2012:
              v5 = @"REVEAL_LIST_ITEM_ACTIONS";

              return v5;
            case 2013:
              v5 = @"HIDE_LIST_ITEM_ACTIONS";

              return v5;
            case 2014:
              v5 = @"TAP_SEARCH_BUTTON";

              return v5;
            case 2015:
              v5 = @"SHOW_SEARCH_RESULTS";

              return v5;
            case 2016:
              v5 = @"SHOW_REFRESH_SEARCH";

              return v5;
            case 2017:
              v5 = @"PASTE_TEXT";

              return v5;
            case 2018:
              v5 = @"TAP_LIST_SUB_ITEM";

              return v5;
            case 2019:
              v5 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2020:
              v5 = @"TAP_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2021:
              v5 = @"CLOSE_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2022:
              v5 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2023:
              v5 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2024:
              v5 = @"RETAINED_QUERY";

              return v5;
            case 2025:
              v5 = @"TAP_RECENT_AC_SUGGESTION";

              return v5;
            case 2026:
              v5 = @"CLEAR_RECENT_AC_SUGGESTION";

              return v5;
            case 2027:
              v5 = @"DELETE_RECENT_AC_SUGGESTION";

              return v5;
            case 2028:
            case 2029:
              goto LABEL_195;
            case 2030:
              v5 = @"TAP_BROWSE_NEARBY_CATEGORY";

              return v5;
            case 2031:
              v5 = @"TAP_SUBACTION";

              return v5;
            case 2032:
              v5 = @"TAP_QUERY_BUILDING_ARROW";

              return v5;
            case 2033:
              v5 = @"CLICK_ON_EDIT_SEARCH";

              return v5;
            case 2034:
              v5 = @"REMOVE_CLIENT_AC_SUGGESTION";

              return v5;
            case 2035:
              v5 = @"SHARE_CLIENT_AC_SUGGESTION";

              return v5;
            case 2036:
              v5 = @"TAP_ON_MORE_RESULTS";

              return v5;
            case 2037:
              v5 = @"SHARE_ITEM";

              return v5;
            case 2038:
              v5 = @"HIDE_ITEM";

              return v5;
            case 2039:
              v5 = @"TAP_SUGGESTED_ITEM";

              return v5;
            case 2040:
              v5 = @"SHARE_SUGGESTED_ITEM";

              return v5;
            case 2041:
              v5 = @"HIDE_SUGGESTED_ITEM";

              return v5;
            case 2042:
              v5 = @"ADD_HOME_FAVORITE";

              return v5;
            case 2043:
              v5 = @"ADD_WORK_FAVORITE";

              return v5;
            case 2044:
              v5 = @"ADD_FAVORITE";

              return v5;
            case 2045:
              v5 = @"VIEW_FAVORITES_LIST";

              return v5;
            case 2046:
              v5 = @"TAP_HOME_FAVORITE";

              return v5;
            case 2047:
              v5 = @"TAP_WORK_FAVORITE";

              return v5;
            case 2048:
              v5 = @"TAP_CAR_FAVORITE";

              return v5;
            case 2049:
              v5 = @"TAP_FAVORITE_ITEM";

              return v5;
            case 2050:
              v5 = @"CREATE_HOME_FAVORITE";

              return v5;
            case 2051:
              v5 = @"CREATE_WORK_FAVORITE";

              return v5;
            case 2052:
              v5 = @"CREATE_FAVORITE";

              return v5;
            case 2053:
              v5 = @"SUBMIT_FAVORITE_EDIT";

              return v5;
            case 2054:
              v5 = @"ADD_RECOMMENDED_FAVORITE";

              return v5;
            case 2055:
              v5 = @"EDIT_FAVORITE";

              return v5;
            case 2056:
              v5 = @"REMOVE_FAVORITE";

              return v5;
            case 2057:
              v5 = @"SHARE_FAVORITE";

              return v5;
            case 2058:
              v5 = @"EDIT_FAVORITES";

              return v5;
            case 2059:
              v5 = @"ADD_FAVORITE_PLACE";

              return v5;
            case 2060:
              v5 = @"REMOVE_FAVORITE_PLACE";

              return v5;
            case 2061:
              v5 = @"CHANGE_HOME_ADDRESS";

              return v5;
            case 2062:
              v5 = @"CHANGE_WORK_ADDRESS";

              return v5;
            case 2063:
              v5 = @"REFINE_LOCATION";

              return v5;
            case 2064:
              v5 = @"TAP_RECENTLY_VIEWED_ITEM";

              return v5;
            case 2065:
              v5 = @"SHOW_COLLECTION_LIST";

              return v5;
            case 2066:
              v5 = @"SHOW_FAVORITES_COLLECTION";

              return v5;
            case 2067:
              v5 = @"SHOW_COLLECTION";

              return v5;
            case 2068:
              v5 = @"TAP_COLLECTION_ITEM";

              return v5;
            case 2069:
              v5 = @"SHARE_COLLECTION_ITEM";

              return v5;
            case 2070:
              v5 = @"REMOVE_COLLECTION_ITEM";

              return v5;
            case 2071:
              v5 = @"SAVE_SHARED_COLLECTION";

              return v5;
            case 2072:
              v5 = @"CREATE_NEW_COLLECTION";

              return v5;
            case 2073:
              v5 = @"SAVE_TO_COLLECTION";

              return v5;
            case 2074:
              v5 = @"EDIT_PHOTO";

              return v5;
            case 2075:
              v5 = @"SORT_BY_NAME";

              return v5;
            case 2076:
              v5 = @"SORT_BY_DISTANCE";

              return v5;
            case 2077:
              v5 = @"SORT_BY_RECENT";

              return v5;
            case 2078:
              v5 = @"AUTO_SHARE_ETA";

              return v5;
            case 2079:
              v5 = @"CANCEL_AUTO_SHARE_ETA";

              return v5;
            case 2080:
              v5 = @"MAP_SEARCH";

              return v5;
            case 2081:
              v5 = @"DELETE_COLLECTION";

              return v5;
            case 2082:
              v5 = @"SHARE_COLLECTION";

              return v5;
            case 2083:
              v5 = @"SHOW_TRANSIT_LINES_COLLECTION";

              return v5;
            case 2084:
              v5 = @"SHOW_MY_PLACES";

              return v5;
            case 2085:
              v5 = @"SHOW_ALL_PLACES";

              return v5;
            case 2086:
              v5 = @"TAP_RECENT_QUERY";

              return v5;
            case 2087:
              v5 = @"TAP_QUERY_SUGGESTION";

              return v5;
            case 2088:
              v5 = @"DELETE_CURATED_COLLECTION";

              return v5;
            case 2089:
              v5 = @"FOLLOW";

              return v5;
            case 2090:
              v5 = @"PUNCH_IN";

              return v5;
            case 2091:
              v5 = @"SAVE_CURATED_COLLECTION";

              return v5;
            case 2092:
              v5 = @"SCROLL_LEFT_COLLECTIONS";

              return v5;
            case 2093:
              v5 = @"SCROLL_RIGHT_COLLECTIONS";

              return v5;
            case 2094:
              v5 = @"SEE_ALL_CURATED_COLLECTION";

              return v5;
            case 2095:
              v5 = @"SEE_ALL_PUBLISHERS";

              return v5;
            case 2096:
              v5 = @"SHARE_CURATED_COLLECTION";

              return v5;
            case 2097:
              v5 = @"SHARE_PUBLISHER";

              return v5;
            case 2098:
              v5 = @"SHOW_MORE_COLLECTION";

              return v5;
            case 2099:
              v5 = @"TAP_CURATED_COLLECTION";

              return v5;
            case 2100:
              v5 = @"TAP_FEATURED_COLLECTIONS";

              return v5;
            case 2101:
              v5 = @"TAP_LOCATION";

              return v5;
            case 2102:
              v5 = @"TAP_PUBLISHER";

              return v5;
            case 2103:
              v5 = @"TAP_PUBLISHER_APP";

              return v5;
            case 2104:
              v5 = @"TAP_PUBLISHER_COLLECTIONS";

              return v5;
            case 2105:
              v5 = @"UNFOLLOW";

              return v5;
            case 2106:
              v5 = @"CHANGE_SCHOOL_ADDRESS";

              return v5;
            case 2107:
              v5 = @"ADD_VEHICLE";

              return v5;
            case 2108:
              v5 = @"DISPLAY_VIRTUAL_GARAGE";

              return v5;
            case 2109:
              v5 = @"ENTER_VIRTUAL_GARAGE";

              return v5;
            case 2110:
              v5 = @"PUNCH_OUT_MANUFACTURER_APP";

              return v5;
            case 2111:
              v5 = @"REMOVE_LICENSE_PLATE";

              return v5;
            case 2112:
              v5 = @"REMOVE_VEHICLE";

              return v5;
            case 2113:
              v5 = @"SELECT_VEHICLE";

              return v5;
            case 2114:
              v5 = @"SUBMIT_LICENSE_PLATE";

              return v5;
            case 2115:
              v5 = @"TAP_ADD_LICENSE_PLATE";

              return v5;
            case 2116:
              v5 = @"TAP_ADD_NEW_CAR";

              return v5;
            case 2117:
              v5 = @"TAP_BANNER";

              return v5;
            case 2118:
              v5 = @"TAP_CONNECT";

              return v5;
            case 2119:
              v5 = @"TAP_CONTINUE";

              return v5;
            case 2120:
              v5 = @"TAP_EDIT";

              return v5;
            case 2121:
              v5 = @"TAP_NAME";

              return v5;
            case 2122:
              v5 = @"TAP_NOT_NOW";

              return v5;
            case 2123:
              v5 = @"TAP_OTHER_VEHICLE";

              return v5;
            case 2124:
              v5 = @"TAP_REMOVE_LICENSE_PLATE";

              return v5;
            case 2125:
              v5 = @"TAP_UPDATE_PLATE_NUMBER";

              return v5;
            case 2126:
              v5 = @"TAP_VEHICLE";

              return v5;
            case 2127:
              v5 = @"TAP_VEHICLE_NAME";

              return v5;
            case 2128:
              v5 = @"UPDATE_NAME";

              return v5;
            case 2129:
              v5 = @"DONE_TAKING_PHOTO";

              return v5;
            case 2130:
              v5 = @"ENABLE_SHOW_PHOTO_NAME";

              return v5;
            case 2131:
              v5 = @"SUBMIT_PHOTO";

              return v5;
            case 2132:
              v5 = @"USE_PHOTO";

              return v5;
            case 2133:
              v5 = @"ADD_RECOMMENDATION_TO_MAPS";

              return v5;
            case 2134:
              v5 = @"CANCEL_PHOTO_SUBMISSION";

              return v5;
            case 2135:
              v5 = @"CLOSE_RECOMMENDATION_CARD";

              return v5;
            case 2136:
              v5 = @"EDIT_RATING";

              return v5;
            case 2137:
              v5 = @"PROMPTED_TO_ADD_PHOTO";

              return v5;
            case 2138:
              v5 = @"PROMPTED_TO_ADD_RATING";

              return v5;
            case 2139:
              v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

              return v5;
            case 2140:
              v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

              return v5;
            case 2141:
              v5 = @"RETAKE_PHOTO";

              return v5;
            case 2142:
              v5 = @"REVEAL_RECOMMENDATION_CARD";

              return v5;
            case 2143:
              v5 = @"SUBMIT_NEGATIVE_RATING";

              return v5;
            case 2144:
              v5 = @"SUBMIT_POSITIVE_RATING";

              return v5;
            case 2145:
              v5 = @"TAP_CHOOSING_PHOTO";

              return v5;
            case 2146:
              v5 = @"TAP_TAKE_NEW_PHOTO";

              return v5;
            case 2147:
              v5 = @"TAP_TO_ADD_PHOTO";

              return v5;
            case 2148:
              v5 = @"CANCEL_INCIDENT_REPORT";

              return v5;
            case 2149:
              v5 = @"INCIDENT_REPORT_SUBMITTED";

              return v5;
            case 2150:
              v5 = @"REPORTED_INCIDENT_NOT_RECEIVED";

              return v5;
            case 2151:
              v5 = @"REPORTED_INCIDENT_RECEIVED";

              return v5;
            case 2152:
              v5 = @"REPORT_INCIDENT";

              return v5;
            case 2153:
              v5 = @"SELECT_INCIDENT_TYPE";

              return v5;
            case 2154:
              v5 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

              return v5;
            case 2155:
              v5 = @"TAP_TO_START_REPORT_INCIDENT";

              return v5;
            case 2156:
              v5 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

              return v5;
            case 2157:
              v5 = @"ATTEMPT_VLF_CORRECTION";

              return v5;
            case 2158:
              v5 = @"DISMISS_VLF_PROMPT";

              return v5;
            case 2159:
              v5 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

              return v5;
            case 2160:
              v5 = @"VLF_CORRECTION_FAILED";

              return v5;
            case 2161:
              v5 = @"VLF_CORRECTION_SUCCESSFUL";

              return v5;
            case 2162:
              v5 = @"ENABLE_WIDGET_SUGGESTIONS";

              return v5;
            case 2163:
              v5 = @"DISPLAY_CZ_ADVISORY";

              return v5;
            case 2164:
              v5 = @"PUNCH_OUT_URL_PAY";

              return v5;
            case 2165:
              v5 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

              return v5;
            case 2166:
              v5 = @"DELETE_ITEM";

              return v5;
            case 2167:
              v5 = @"CANCEL_REMOVE";

              return v5;
            case 2168:
              v5 = @"DELETE_SUGGESTION";

              return v5;
            case 2169:
              v5 = @"ADD_SCHOOL_FAVORITE";

              return v5;
            case 2170:
              v5 = @"GO_TO_WEBSITE";

              return v5;
            case 2171:
              v5 = @"TRY_AGAIN";

              return v5;
            case 2172:
              v5 = @"CHECK_AUTO_RECORD_WORKOUT";

              return v5;
            case 2173:
              v5 = @"CHECK_EBIKE";

              return v5;
            case 2174:
              v5 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

              return v5;
            case 2175:
              v5 = @"DISPLAY_CYCLING_DEFAULT_OPTION";

              return v5;
            case 2176:
              v5 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

              return v5;
            case 2177:
              v5 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

              return v5;
            case 2178:
              v5 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

              return v5;
            case 2179:
              v5 = @"TAP_AUTOMATIC_WORKOUT_OPTION";

              return v5;
            case 2180:
              v5 = @"TAP_CYCLING_DEFAULT_OPTION";

              return v5;
            case 2181:
              v5 = @"TAP_CYCLING_NO_BIKE_ADVISORY";

              return v5;
            case 2182:
              v5 = @"TAP_CYCLING_STAIRS_ADVISORY";

              return v5;
            case 2183:
              v5 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

              return v5;
            case 2184:
              v5 = @"UNCHECK_AUTO_RECORD_WORKOUT";

              return v5;
            case 2185:
              v5 = @"UNCHECK_EBIKE";

              return v5;
            case 2186:
              v5 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

              return v5;
            case 2187:
              v5 = @"DISPLAY_LPR_ADVISORY";

              return v5;
            case 2188:
              v5 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

              return v5;
            case 2189:
              v5 = @"CREATE_WIDGET";

              return v5;
            case 2190:
              v5 = @"REVEAL_WIDGET_TRAY";

              return v5;
            case 2191:
              v5 = @"LPR_ERROR_CODE";

              return v5;
            case 2192:
              v5 = @"TAP_SEE_ALL_RECENTLY_VIEWED";

              return v5;
            case 2193:
              v5 = @"TAP_CLEAR_RECENTLY_VIEWED";

              return v5;
            case 2194:
              v5 = @"LPR_HARD_STOP";

              return v5;
            case 2195:
              v5 = @"TAP_PUBLISHER_SUBACTION";

              return v5;
            case 2196:
              v5 = @"CARPLAY_DISPLAY_ACTIVATED";

              return v5;
            case 2197:
              v5 = @"CARPLAY_DISPLAY_DEACTIVATED";

              return v5;
            case 2198:
              v5 = @"TAP_FEATURED_COLLECTION";

              return v5;
            case 2199:
              v5 = @"SCROLL_FEATURED_COLLECTION_FORWARD";

              return v5;
            case 2200:
              v5 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

              return v5;
            default:
              if (action == 1504)
              {
                v5 = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (action != 1505)
                {
                  goto LABEL_195;
                }

                v5 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        v5 = @"UI_ACTION_UNKNOWN";
        switch(action)
        {
          case 0:
            goto LABEL_196;
          case 1:
            v5 = @"PULL_UP";

            break;
          case 2:
            v5 = @"PULL_DOWN";

            break;
          case 3:
            v5 = @"TAP";

            break;
          case 4:
            v5 = @"CLOSE";

            break;
          case 5:
            v5 = @"SWIPE_PREV";

            break;
          case 6:
            v5 = @"SWIPE_NEXT";

            break;
          case 7:
            v5 = @"SCROLL_UP";

            break;
          case 8:
            v5 = @"SCROLL_DOWN";

            break;
          case 9:
          case 23:
          case 24:
          case 346:
          case 347:
          case 348:
          case 349:
          case 350:
          case 351:
          case 352:
          case 353:
          case 354:
          case 355:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 536:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 545:
          case 546:
          case 547:
          case 548:
          case 549:
          case 550:
          case 551:
          case 552:
          case 553:
          case 554:
          case 555:
          case 556:
          case 557:
          case 558:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 571:
          case 572:
          case 573:
          case 574:
          case 575:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 590:
          case 591:
          case 592:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
          case 601:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 607:
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
          case 621:
          case 622:
          case 623:
          case 624:
          case 625:
          case 626:
          case 627:
          case 628:
          case 629:
          case 630:
          case 631:
          case 632:
          case 633:
          case 634:
          case 635:
          case 636:
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
          case 642:
          case 643:
          case 644:
          case 645:
          case 646:
          case 647:
          case 648:
          case 649:
          case 650:
          case 651:
          case 652:
          case 653:
          case 654:
          case 655:
          case 656:
          case 657:
          case 658:
          case 659:
          case 660:
          case 661:
          case 662:
          case 663:
          case 664:
          case 665:
          case 666:
          case 667:
          case 668:
          case 669:
          case 670:
          case 671:
          case 672:
          case 673:
          case 674:
          case 675:
          case 676:
          case 677:
          case 678:
          case 679:
          case 680:
          case 681:
          case 682:
          case 683:
          case 684:
          case 685:
          case 686:
          case 687:
          case 688:
          case 689:
          case 690:
          case 691:
          case 692:
          case 693:
          case 694:
          case 695:
          case 696:
          case 697:
          case 698:
          case 699:
          case 700:
          case 701:
          case 702:
          case 703:
          case 704:
          case 705:
          case 706:
          case 707:
          case 708:
          case 709:
          case 710:
          case 711:
          case 712:
          case 713:
          case 714:
          case 715:
          case 716:
          case 717:
          case 718:
          case 719:
          case 720:
          case 721:
          case 722:
          case 723:
          case 724:
          case 725:
          case 726:
          case 727:
          case 728:
          case 729:
          case 730:
          case 731:
          case 732:
          case 733:
          case 734:
          case 735:
          case 736:
          case 737:
          case 738:
          case 739:
          case 740:
          case 741:
          case 742:
          case 743:
          case 744:
          case 745:
          case 746:
          case 747:
          case 748:
          case 749:
          case 750:
          case 751:
          case 752:
          case 753:
          case 754:
          case 755:
          case 756:
          case 757:
          case 758:
          case 759:
          case 760:
          case 761:
          case 762:
          case 763:
          case 764:
          case 765:
          case 766:
          case 767:
          case 768:
          case 769:
          case 770:
          case 771:
          case 772:
          case 773:
          case 774:
          case 775:
          case 776:
          case 777:
          case 778:
          case 779:
          case 780:
          case 781:
          case 782:
          case 783:
          case 784:
          case 785:
          case 786:
          case 787:
          case 788:
          case 789:
          case 790:
          case 791:
          case 792:
          case 793:
          case 794:
          case 795:
          case 796:
          case 797:
          case 798:
          case 799:
          case 800:
          case 801:
          case 802:
          case 803:
          case 804:
          case 805:
          case 806:
          case 807:
          case 808:
          case 809:
          case 810:
          case 811:
          case 812:
          case 813:
          case 814:
          case 815:
          case 816:
          case 817:
          case 818:
          case 819:
          case 820:
          case 821:
          case 822:
          case 823:
          case 824:
          case 825:
          case 826:
          case 827:
          case 828:
          case 829:
          case 830:
          case 831:
          case 832:
          case 833:
          case 834:
          case 835:
          case 836:
          case 837:
          case 838:
          case 839:
          case 840:
          case 841:
          case 842:
          case 843:
          case 844:
          case 845:
          case 846:
          case 847:
          case 848:
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 856:
          case 857:
          case 858:
          case 859:
          case 860:
          case 861:
          case 862:
          case 863:
          case 864:
          case 865:
          case 866:
          case 867:
          case 868:
          case 869:
          case 870:
          case 871:
          case 872:
          case 873:
          case 874:
          case 875:
          case 876:
          case 877:
          case 878:
          case 879:
          case 880:
          case 881:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 888:
          case 889:
          case 890:
          case 891:
          case 892:
          case 893:
          case 894:
          case 895:
          case 896:
          case 897:
          case 898:
          case 899:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 905:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 915:
          case 916:
          case 917:
          case 918:
          case 919:
          case 920:
          case 921:
          case 922:
          case 923:
          case 924:
          case 925:
          case 926:
          case 927:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 934:
          case 935:
          case 936:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 947:
          case 948:
          case 949:
          case 950:
          case 951:
          case 952:
          case 953:
          case 954:
          case 955:
          case 956:
          case 957:
          case 958:
          case 959:
          case 960:
          case 961:
          case 962:
          case 963:
          case 964:
          case 965:
          case 966:
          case 967:
          case 968:
          case 969:
          case 970:
          case 971:
          case 972:
          case 973:
          case 974:
          case 975:
          case 976:
          case 977:
          case 978:
          case 979:
          case 980:
          case 981:
          case 982:
          case 983:
          case 984:
          case 985:
          case 986:
          case 987:
          case 988:
          case 989:
          case 990:
          case 991:
          case 992:
          case 993:
          case 994:
          case 995:
          case 996:
          case 997:
          case 998:
          case 999:
          case 1000:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1019:
          case 1021:
          case 1022:
          case 1023:
          case 1024:
          case 1025:
          case 1026:
          case 1027:
          case 1028:
          case 1029:
            goto LABEL_195;
          case 10:
            v5 = @"SHOW_MORE";

            break;
          case 11:
            v5 = @"SHOW_LESS";

            break;
          case 12:
            v5 = @"SWIPE_LEFT";

            break;
          case 13:
            v5 = @"SWIPE_RIGHT";

            break;
          case 14:
            v5 = @"MINIMIZE";

            break;
          case 15:
            v5 = @"TAP_PREV";

            break;
          case 16:
            v5 = @"TAP_NEXT";

            break;
          case 17:
            v5 = @"SUBMIT";

            break;
          case 18:
            v5 = @"CANCEL";

            break;
          case 19:
            v5 = @"ENTER_MAPS";

            break;
          case 20:
            v5 = @"EXIT_MAPS";

            break;
          case 21:
            v5 = @"REVEAL";

            break;
          case 22:
            v5 = @"OPEN_NEW_TAB";

            break;
          case 25:
            v5 = @"BACK";

            break;
          case 26:
            v5 = @"ACTIVATE";

            break;
          case 27:
            v5 = @"DEACTIVATE";

            break;
          case 28:
            v5 = @"AGREE";

            break;
          case 29:
            v5 = @"DISAGREE";

            break;
          case 30:
            v5 = @"SKIP_ANSWER";

            break;
          case 31:
            v5 = @"EXPAND";

            break;
          case 32:
            v5 = @"COLLAPSE";

            break;
          case 33:
            v5 = @"ENTER";

            break;
          case 34:
            v5 = @"EXIT";

            break;
          case 35:
            v5 = @"SCROLL_UP_INDEX_BAR";

            break;
          case 36:
            v5 = @"SCROLL_DOWN_INDEX_BAR";

            break;
          case 37:
            v5 = @"TOGGLE_ON";

            break;
          case 38:
            v5 = @"TOGGLE_OFF";

            break;
          case 39:
            v5 = @"LONG_PRESS";

            break;
          case 40:
            v5 = @"CLICK";

            break;
          case 41:
            v5 = @"TAP_DONE";

            break;
          case 42:
            v5 = @"TAP_CLOSE";

            break;
          case 43:
            v5 = @"SCROLL_LEFT";

            break;
          case 44:
            v5 = @"SCROLL_RIGHT";

            break;
          case 45:
            v5 = @"DISPLAY";

            break;
          case 46:
            v5 = @"OPEN_IN_APP";

            break;
          case 47:
            v5 = @"CONCEAL";

            break;
          case 48:
            v5 = @"TAP_DELETE";

            break;
          case 49:
            v5 = @"TAP_FILTER";

            break;
          case 50:
            v5 = @"TAP_SECONDARY_BUTTON";

            break;
          case 51:
            v5 = @"TAP_WIDGET_FOOD";

            break;
          case 52:
            v5 = @"TAP_WIDGET_GAS";

            break;
          case 53:
            v5 = @"TAP_WIDGET_LOADING";

            break;
          case 54:
            v5 = @"TAP_WIDGET_SEARCH";

            break;
          case 55:
            v5 = @"TAP_WIDGET_STORES";

            break;
          case 56:
            v5 = @"DISPLAY_ALLOW_ONCE_PROMPT";

            break;
          case 57:
            v5 = @"SHARE_CURRENT_LOCATION";

            break;
          case 58:
            v5 = @"SHARE_PHOTO";

            break;
          case 59:
            v5 = @"TAP_KEEP_OFF";

            break;
          case 60:
            v5 = @"TAP_PHOTO_CATEGORY";

            break;
          case 61:
            v5 = @"TAP_PRECISE_LOCATION_OFF_BANNER";

            break;
          case 62:
            v5 = @"TAP_TURN_ON";

            break;
          case 63:
            v5 = @"DISPLAY_CYCLING_ANNOTATION";

            break;
          case 64:
            v5 = @"DISPLAY_DRIVING_DEFAULT_OPTION";

            break;
          case 65:
            v5 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

            break;
          case 66:
            v5 = @"DISPLAY_WALKING_DEFAULT_OPTION";

            break;
          case 67:
            v5 = @"TAP_CYCLING_ANNOTATION";

            break;
          case 68:
            v5 = @"TAP_DRIVING_DEFAULT_OPTION";

            break;
          case 69:
            v5 = @"TAP_TRANSIT_DEFAULT_OPTION";

            break;
          case 70:
            v5 = @"TAP_WALKING_DEFAULT_OPTION";

            break;
          case 71:
            v5 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

            break;
          case 72:
            v5 = @"TAP_RIDESHARE_DEFAULT_OPTION";

            break;
          case 73:
            v5 = @"TAP_PERSONAL_COLLECTION";

            break;
          case 74:
            v5 = @"RESUME_ROUTE";

            break;
          case 75:
            v5 = @"DISPLAY_OUT_OF_RANGE_ALERT";

            break;
          case 76:
            v5 = @"TAP_ALLOW_ONCE";

            break;
          case 77:
            v5 = @"TAP_DO_NOT_ALLOW";

            break;
          case 78:
            v5 = @"ADD_RECCOMENDED_FAVORITE";

            break;
          case 79:
            v5 = @"ADD_RECOMMENDED_HOME_FAVORITE";

            break;
          case 80:
            v5 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 81:
            v5 = @"ADD_RECOMMENDED_WORK_FAVORITE";

            break;
          case 82:
            v5 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

            break;
          case 83:
            v5 = @"CREATE_SCHOOL_FAVORITE";

            break;
          case 84:
            v5 = @"TAP_SCHOOL_FAVORITE";

            break;
          case 85:
            v5 = @"SELECT_ROUTING_TYPE_CYCLING";

            break;
          case 86:
            v5 = @"REPORT_PHOTO";

            break;
          case 87:
            v5 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

            break;
          case 88:
            v5 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

            break;
          case 89:
            v5 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

            break;
          case 90:
            v5 = @"CREATE_RECOMMENDED_FAVORITE";

            break;
          case 91:
            v5 = @"CREATE_RECOMMENDED_HOME_FAVORITE";

            break;
          case 92:
            v5 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 93:
            v5 = @"CREATE_RECOMMENDED_WORK_FAVORITE";

            break;
          case 94:
            v5 = @"TAP_SMALL_WIDGET_ITEM";

            break;
          case 95:
            v5 = @"TAP_MEDIUM_WIDGET_ITEM";

            break;
          case 96:
            v5 = @"TAP_LARGE_WIDGET_ITEM";

            break;
          case 97:
            v5 = @"DISPLAY_ARP_TIPKIT";

            break;
          case 98:
            v5 = @"NEXT";

            break;
          case 99:
            v5 = @"TAP_RATE_AND_ADD_PHOTOS";

            break;
          case 100:
            v5 = @"TAP_TO_ADD_POSITIVE_RATING";

            break;
          case 101:
            v5 = @"TAP_TO_ADD_NEGATIVE_RATING";

            break;
          case 102:
            v5 = @"TAP_ACTIVE_SHARING_NOTIFICATION";

            break;
          case 103:
            v5 = @"INVOKE_SIRI_PROMPT";

            break;
          case 104:
            v5 = @"ETA_SHARED_SUCCESSFULLY";

            break;
          case 105:
            v5 = @"ENDED_ETA_SHARE_SUCCESSFULLY";

            break;
          case 106:
            v5 = @"CLEAR_INCIDENT";

            break;
          case 107:
            v5 = @"CONFIRM_INCIDENT";

            break;
          case 108:
            v5 = @"DISMISS_INCIDENT";

            break;
          case 109:
            v5 = @"INCIDENT_ALERT_TIMEOUT";

            break;
          case 110:
            v5 = @"INCIDENT_ALERT_TRAY_SHOWN";

            break;
          case 111:
            v5 = @"INCIDENT_CARD_SHOWN";

            break;
          case 112:
            v5 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

            break;
          case 113:
            v5 = @"INCIDENT_REPORT_TRAY_SHOWN";

            break;
          case 114:
            v5 = @"NAV_TRAY_DISCOVERY_SHOWN";

            break;
          case 115:
            v5 = @"TAP_TO_REPORT_INCIDENT";

            break;
          case 116:
            v5 = @"TAP_SHORTCUT";

            break;
          case 117:
            v5 = @"BLOCK_CONTACT";

            break;
          case 118:
            v5 = @"TAP_TO_ADD_RATING";

            break;
          case 119:
            v5 = @"AR_WALKING_LOCALIZATION_FAILED";

            break;
          case 120:
            v5 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

            break;
          case 121:
            v5 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

            break;
          case 122:
            v5 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

            break;
          case 123:
            v5 = @"ATTEMPT_AR_WALKING_LOCALIZATION";

            break;
          case 124:
            v5 = @"RAISE_TO_ENTER_AR_WALKING";

            break;
          case 125:
            v5 = @"TAP_DISMISS";

            break;
          case 126:
            v5 = @"TAP_ENTER_AR_WALKING";

            break;
          case 127:
            v5 = @"TAP_OK";

            break;
          case 128:
            v5 = @"TAP_TRY_AGAIN";

            break;
          case 129:
            v5 = @"TAP_TURN_ON_IN_SETTINGS";

            break;
          case 130:
            v5 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

            break;
          case 131:
            v5 = @"VLF_CORRECTION_USER_ABANDON";

            break;
          case 132:
            v5 = @"AREA_EVENTS_ALERT";

            break;
          case 133:
            v5 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

            break;
          case 134:
            v5 = @"ACCEPT_EVENT_REROUTE";

            break;
          case 135:
            v5 = @"DISPLAY_AREA_EVENTS_ADVISORY";

            break;
          case 136:
            v5 = @"DISMISS_EVENT_REROUTE";

            break;
          case 137:
            v5 = @"PUNCH_OUT_EVENTS_LINK";

            break;
          case 138:
            v5 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

            break;
          case 139:
            v5 = @"ADJUST_GUIDANCE_SETTINGS";

            break;
          case 140:
            v5 = @"HIDE_DETAILS";

            break;
          case 141:
            v5 = @"SELECT_VOICE_GUIDANCE_ON";

            break;
          case 142:
            v5 = @"SELECT_VOICE_GUIDANCE_OFF";

            break;
          case 143:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

            break;
          case 144:
            v5 = @"TAP_TEXT_LABEL";

            break;
          case 145:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

            break;
          case 146:
            v5 = @"TAP_EXIT";

            break;
          case 147:
            v5 = @"TAP_CITY_MENU";

            break;
          case 148:
            v5 = @"CHECK_AVOID_TOLLS";

            break;
          case 149:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

            break;
          case 150:
            v5 = @"TAP_ICLOUD";

            break;
          case 151:
            v5 = @"CHECK_AVOID_HIGHWAYS";

            break;
          case 152:
            v5 = @"TAP_FAVORITES";

            break;
          case 153:
            v5 = @"SELECT_DISTANCE_IN_KM";

            break;
          case 154:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

            break;
          case 155:
            v5 = @"OPEN_FULL_CARD_FILTER";

            break;
          case 156:
            v5 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

            break;
          case 157:
            v5 = @"OPEN_SINGLE_CARD_FILTER";

            break;
          case 158:
            v5 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 159:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

            break;
          case 160:
            v5 = @"SESSIONLESS_REVEAL";

            break;
          case 161:
            v5 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

            break;
          case 162:
            v5 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

            break;
          case 163:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

            break;
          case 164:
            v5 = @"ENTER_RAP_REPORT_MENU";

            break;
          case 165:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

            break;
          case 166:
            v5 = @"TAP_MY_VEHICLES";

            break;
          case 167:
            v5 = @"SUBMIT_SINGLE_CARD_FILTER";

            break;
          case 168:
            v5 = @"SUBMIT_FULL_CARD_FILTER";

            break;
          case 169:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

            break;
          case 170:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

            break;
          case 171:
            v5 = @"TAP_EXPLORE_CURATED_COLELCTIONS";

            break;
          case 172:
            v5 = @"TAP_ACCOUNT";

            break;
          case 173:
            v5 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

            break;
          case 174:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

            break;
          case 175:
            v5 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

            break;
          case 176:
            v5 = @"RESULT_REFINEMENT_TOGGLE_OFF";

            break;
          case 177:
            v5 = @"TAP_CITY_CURATED_COLLECTIONS";

            break;
          case 178:
            v5 = @"TAP_REPORTS";

            break;
          case 179:
            v5 = @"TAP_RATINGS";

            break;
          case 180:
            v5 = @"TAP_EXPLORE_CURATED_COLLECTIONS";

            break;
          case 181:
            v5 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

            break;
          case 182:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

            break;
          case 183:
            v5 = @"SELECT_DISTANCE_IN_MILES";

            break;
          case 184:
            v5 = @"TAP_PRIVACY_STATEMENT";

            break;
          case 185:
            v5 = @"TAP_MAPS_SETTINGS";

            break;
          case 186:
            v5 = @"CANCEL_FULL_CARD_FILTER";

            break;
          case 187:
            v5 = @"TAP_LATEST_CURATED_COLLECTION";

            break;
          case 188:
            v5 = @"TAP_TEMPORAL_CURATED_COLLECTION";

            break;
          case 189:
            v5 = @"UNCHECK_AVOID_TOLLS";

            break;
          case 190:
            v5 = @"UNSELECT_SEARCH_REFINEMENT";

            break;
          case 191:
            v5 = @"TAP_RATING";

            break;
          case 192:
            v5 = @"TAP_ICLOUD_SIGN_IN";

            break;
          case 193:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

            break;
          case 194:
            v5 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

            break;
          case 195:
            v5 = @"UNCHECK_AVOID_HIGHWAYS";

            break;
          case 196:
            v5 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

            break;
          case 197:
            v5 = @"RESULT_REFINEMENT_TOGGLE_ON";

            break;
          case 198:
            v5 = @"TAP_CONTEXT_LINE_HYPERLINK";

            break;
          case 199:
            v5 = @"TAP_MY_GUIDES";

            break;
          case 200:
            v5 = @"SELECT_SEARCH_REFINEMENT";

            break;
          case 201:
            v5 = @"SESSIONLESS_TAP_ACCOUNT";

            break;
          case 202:
            v5 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 203:
            v5 = @"TAP_TRAVEL_PREFERENCES";

            break;
          case 204:
            v5 = @"SHOW_CURATED_COLLECTION_LIST";

            break;
          case 205:
            v5 = @"CANCEL_SINGLE_CARD_FILTER";

            break;
          case 206:
            v5 = @"DISPLAY_HFP_OPTION";

            break;
          case 207:
            v5 = @"SWITCH_OFF_HFP";

            break;
          case 208:
            v5 = @"SWITCH_ON_HFP";

            break;
          case 209:
            v5 = @"TAP_QUICK_ACTION_TRAY";

            break;
          case 210:
            v5 = @"SHOW_ALL_CITIES";

            break;
          case 211:
            v5 = @"TAP_ADD_NEARBY_TRANSIT";

            break;
          case 212:
            v5 = @"RESUME";

            break;
          case 213:
            v5 = @"DISPLAY_TIPKIT_PROMPT";

            break;
          case 214:
            v5 = @"TAP_NEARBY_TRANSIT_FAVORITE";

            break;
          case 215:
            v5 = @"TAP_DRIVING_MODE";

            break;
          case 216:
            v5 = @"SWITCH_ON_VOICE_GUIDANCE";

            break;
          case 217:
            v5 = @"DISMISS_TIPKIT_PROMPT";

            break;
          case 218:
            v5 = @"TAP_EXPAND_EXIT_DETAILS";

            break;
          case 219:
            v5 = @"TAP_NEARBY_TRANSIT_FILTER";

            break;
          case 220:
            v5 = @"TAP_MORE_DEPARTURES";

            break;
          case 221:
            v5 = @"RAP_INDIVIDUAL_PLACE";

            break;
          case 222:
            v5 = @"RAP_ADD_MAP";

            break;
          case 223:
            v5 = @"TAP_SUGGESTED_RAP";

            break;
          case 224:
            v5 = @"RAP_STREET_ISSUE";

            break;
          case 225:
            v5 = @"SWIPE_PIN_REVEAL";

            break;
          case 226:
            v5 = @"TAP_ADD_TIPKIT_FAVORITE";

            break;
          case 227:
            v5 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

            break;
          case 228:
            v5 = @"RAP_BAD_TRIP";

            break;
          case 229:
            v5 = @"RAP_PLACE_ISSUE";

            break;
          case 230:
            v5 = @"TAP_OPEN_MAPS";

            break;
          case 231:
            v5 = @"TAP_NEARBY_TRANSIT_RESULT";

            break;
          case 232:
            v5 = @"RAP_GUIDE";

            break;
          case 233:
            v5 = @"SWITCH_OFF_VOICE_GUIDANCE";

            break;
          case 234:
            v5 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

            break;
          case 235:
            v5 = @"SELECT_TRANSIT_STEP";

            break;
          case 236:
            v5 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

            break;
          case 237:
            v5 = @"TAP_SEE_MORE";

            break;
          case 238:
            v5 = @"RAP_IN_REVIEW";

            break;
          case 239:
            v5 = @"TAP_OPEN_MENU";

            break;
          case 240:
            v5 = @"TAP_NEARBY_TRANSIT";

            break;
          case 241:
            v5 = @"TAP_PIN_LINE";

            break;
          case 242:
            v5 = @"SWITCH_OFF_TRIP_FEEDBACK";

            break;
          case 243:
            v5 = @"RAP_GOOD_TRIP";

            break;
          case 244:
            v5 = @"TAP_FILTERED_CURATED_COLLECTION";

            break;
          case 245:
            v5 = @"SHARE_MY_LOCATION";

            break;
          case 246:
            v5 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

            break;
          case 247:
            v5 = @"DISPLAY_GENERIC_ADVISORY";

            break;
          case 248:
            v5 = @"ADVISORY_ALERT";

            break;
          case 249:
            v5 = @"PUNCH_OUT_LINK";

            break;
          case 250:
            v5 = @"TAP_GENERIC_ADVISORY";

            break;
          case 251:
            v5 = @"TAP_EXPLORE_MODE";

            break;
          case 252:
            v5 = @"TAP_UNPIN_LINE";

            break;
          case 253:
            v5 = @"MENU_UNPIN";

            break;
          case 254:
            v5 = @"MENU_PIN";

            break;
          case 255:
            v5 = @"SWIPE_PIN";

            break;
          case 256:
            v5 = @"SWIPE_UNPIN";

            break;
          case 257:
            v5 = @"TAP_MEDIA_APP";

            break;
          case 258:
            v5 = @"TAP_GUIDES_SUBACTION";

            break;
          case 259:
            v5 = @"TAP_MEDIA";

            break;
          case 260:
            v5 = @"PUNCH_OUT_MEDIA";

            break;
          case 261:
            v5 = @"SHOW_MEDIA_APP_MENU";

            break;
          case 262:
            v5 = @"SCROLL_RIGHT_RIBBON";

            break;
          case 263:
            v5 = @"SCROLL_LEFT_RIBBON";

            break;
          case 264:
            v5 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

            break;
          case 265:
            v5 = @"TAP_SHOW_MORE_TEXT";

            break;
          case 266:
            v5 = @"SCROLL_LEFT_RATINGS";

            break;
          case 267:
            v5 = @"SCROLL_LEFT_TEMPLATE_PLACE";

            break;
          case 268:
            v5 = @"SCROLL_RIGHT_TEMPLATE_PLACE";

            break;
          case 269:
            v5 = @"SCROLL_RIGHT_RATINGS";

            break;
          case 270:
            v5 = @"TAP_ALLOW";

            break;
          case 271:
            v5 = @"TAP_GO_TO_SETTING";

            break;
          case 272:
            v5 = @"START_SUBMIT_REPORT";

            break;
          case 273:
            v5 = @"AUTHENTICATION_INFO_FAILURE";

            break;
          case 274:
            v5 = @"SUCCESSFULLY_SUBMIT_REPORT";

            break;
          case 275:
            v5 = @"FAILED_SUBMIT_REPORT";

            break;
          case 276:
            v5 = @"AUTHENTICATION_INFO_SUCCESS";

            break;
          case 277:
            v5 = @"EDIT_WAYPOINT";

            break;
          case 278:
            v5 = @"CLEAR_TEXT";

            break;
          case 279:
            v5 = @"REORDER_WAYPOINT";

            break;
          case 280:
            v5 = @"REMOVE_WAYPOINT";

            break;
          case 281:
            v5 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

            break;
          case 282:
            v5 = @"TAP_SHOWCASE_MENU";

            break;
          case 283:
            v5 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

            break;
          case 284:
            v5 = @"TAP_PHOTO_ALBUM";

            break;
          case 285:
            v5 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 286:
            v5 = @"RAP_INLINE_ADD";

            break;
          case 287:
            v5 = @"RAP_TAP_EDIT";

            break;
          case 288:
            v5 = @"CLAIM_BUSINESS";

            break;
          case 289:
            v5 = @"RAP_EDIT_OPTIONS";

            break;
          case 290:
            v5 = @"TAP_IN_REVIEW_RAP";

            break;
          case 291:
            v5 = @"ORB_MENU_ADD_STOP";

            break;
          case 292:
            v5 = @"NEXT_STOP";

            break;
          case 293:
            v5 = @"ARRIVE_AT_WAYPOINT";

            break;
          case 294:
            v5 = @"REMOVE_STOP";

            break;
          case 295:
            v5 = @"DISPLAY_PAUSE_BUTTON";

            break;
          case 296:
            v5 = @"DISPLAY_PAUSE_NEXT_BUTTONS";

            break;
          case 297:
            v5 = @"AUTO_ADVANCE_NEXT_STOP";

            break;
          case 298:
            v5 = @"ADD_INLINE_NEGATIVE_RATING";

            break;
          case 299:
            v5 = @"ADD_INLINE_POSITIVE_RATING";

            break;
          case 300:
            v5 = @"TAP_TO_ADD_RATING_AND_PHOTO";

            break;
          case 301:
            v5 = @"SUBMIT_RATINGS_AND_PHOTOS";

            break;
          case 302:
            v5 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

            break;
          case 303:
            v5 = @"TAP_RECENTLY_VIEWED_ROUTE";

            break;
          case 304:
            v5 = @"SHOW_ALL_RECENTS";

            break;
          case 305:
            v5 = @"RESUME_MULTIPOINT_ROUTE";

            break;
          case 306:
            v5 = @"DISMISS_TRANSIT_TIPKIT";

            break;
          case 307:
            v5 = @"DISPLAY_TRANSIT_TIPKIT";

            break;
          case 308:
            v5 = @"TAP_TRANSIT_TIPKIT";

            break;
          case 309:
            v5 = @"FILTER_EV";

            break;
          case 310:
            v5 = @"FILTER_SURCHARGE";

            break;
          case 311:
            v5 = @"FILTER_PREFER";

            break;
          case 312:
            v5 = @"TAP_WALKING_ANNOTATION";

            break;
          case 313:
            v5 = @"FILTER_AVOID";

            break;
          case 314:
            v5 = @"FILTER_TRANSPORTATION_MODE";

            break;
          case 315:
            v5 = @"FILTER_RECOMMENDED_ROUTES";

            break;
          case 316:
            v5 = @"FILTER_IC_FARES";

            break;
          case 317:
            v5 = @"FILTER_TRANSIT_CARD_FARES";

            break;
          case 318:
            v5 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 319:
            v5 = @"TAP_NOTIFICATION_SETTINGS";

            break;
          case 320:
            v5 = @"TAP_ENABLE_NOTIFICATION";

            break;
          case 321:
            v5 = @"ARP_SUGGESTIONS_TURN_OFF";

            break;
          case 322:
            v5 = @"ARP_SUGGESTIONS_TURN_ON";

            break;
          case 323:
            v5 = @"DISMISS_ARP_SUGGESTION";

            break;
          case 324:
            v5 = @"RATINGS_AND_PHOTOS_TURN_ON";

            break;
          case 325:
            v5 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

            break;
          case 326:
            v5 = @"UNSELECT_SUGGESTED_PHOTOS";

            break;
          case 327:
            v5 = @"SUGGESTED_PHOTOS_SHOWN";

            break;
          case 328:
            v5 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 329:
            v5 = @"TAP_YOUR_PHOTOS_ALBUM";

            break;
          case 330:
            v5 = @"RATINGS_AND_PHOTOS_TURN_OFF";

            break;
          case 331:
            v5 = @"DELETE_PHOTO";

            break;
          case 332:
            v5 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 333:
            v5 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

            break;
          case 334:
            v5 = @"TAP_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 335:
            v5 = @"DISPLAY_YOUR_PHOTOS_ALBUM";

            break;
          case 336:
            v5 = @"SELECT_SUGGESTED_PHOTOS";

            break;
          case 337:
            v5 = @"ADD_STOP";

            break;
          case 338:
            v5 = @"SHOW_CREDIT_TURN_ON";

            break;
          case 339:
            v5 = @"DISPLAY_ARP_SUGGESTION";

            break;
          case 340:
            v5 = @"TAP_TO_ADD_PHOTO_CREDIT";

            break;
          case 341:
            v5 = @"SHOW_CREDIT_TURN_OFF";

            break;
          case 342:
            v5 = @"TAP_TO_EDIT_NICKNAME";

            break;
          case 343:
            v5 = @"SUBMIT_RATINGS";

            break;
          case 344:
            v5 = @"END_NAV_ON_WATCH";

            break;
          case 345:
            v5 = @"FILTER_EBIKE";

            break;
          case 356:
            v5 = @"ADD_STOP_SIRI";

            break;
          case 357:
            v5 = @"TAP_REVIEWED_RAP";

            break;
          case 358:
            v5 = @"TAP_OUTREACH_RAP";

            break;
          case 359:
            v5 = @"DISPLAY_SUGGESTED_ITEM";

            break;
          case 360:
            v5 = @"DISPLAY_HIKING_TIPKIT";

            break;
          case 361:
            v5 = @"DISMISS_HIKING_TIPKIT";

            break;
          case 362:
            v5 = @"TAP_HIKING_TIPKIT";

            break;
          case 363:
            v5 = @"SCROLL_LEFT_TRAILS";

            break;
          case 364:
            v5 = @"TAP_MORE_TRAILS";

            break;
          case 365:
            v5 = @"TAP_RELATED_TRAIL";

            break;
          case 366:
            v5 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

            break;
          case 367:
            v5 = @"SCROLL_RIGHT_TRAILS";

            break;
          case 368:
            v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 369:
            v5 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

            break;
          case 370:
            v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 371:
            v5 = @"TAP_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 372:
            v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 373:
            v5 = @"EXPIRED_MAPS_REMOVED";

            break;
          case 374:
            v5 = @"UPDATE_ALL_DOWNLOAD_MAPS";

            break;
          case 375:
            v5 = @"TAP_EXPIRED_MAPS";

            break;
          case 376:
            v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 377:
            v5 = @"MOVE_DOWNLOAD_MAPS";

            break;
          case 378:
            v5 = @"SAVE_RENAME_DOWNLOAD_MAPS";

            break;
          case 379:
            v5 = @"TAP_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 380:
            v5 = @"TAP_ENTER_OFFLINE_MAPS";

            break;
          case 381:
            v5 = @"TAP_DOWNLOAD_MAPS";

            break;
          case 382:
            v5 = @"TAP_DOWNLOAD_MAPS_CONTINUE";

            break;
          case 383:
            v5 = @"DELETE_DOWNLOAD_MAPS";

            break;
          case 384:
            v5 = @"SLIDE_CLEAR_EXPIRED_MAPS";

            break;
          case 385:
            v5 = @"RENAME_DOWNLOAD_MAPS";

            break;
          case 386:
            v5 = @"RESIZE_DOWNLOAD_MAPS";

            break;
          case 387:
            v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

            break;
          case 388:
            v5 = @"RESTORE_EXPIRED_MAPS";

            break;
          case 389:
            v5 = @"CLEAR_EXPIRED_MAPS";

            break;
          case 390:
            v5 = @"TAP_USING_OFFLINE_BAR";

            break;
          case 391:
            v5 = @"UPDATE_DOWNLOAD_MAPS";

            break;
          case 392:
            v5 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 393:
            v5 = @"DISPLAY_DOWNLOAD_MAPS";

            break;
          case 394:
            v5 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

            break;
          case 395:
            v5 = @"DISPLAY_EXPIRED_MAPS";

            break;
          case 396:
            v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 397:
            v5 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

            break;
          case 398:
            v5 = @"SLIDE_RESTORE_EXPIRED_MAPS";

            break;
          case 399:
            v5 = @"ETA_SHARE_TRAY_TIMEOUT";

            break;
          case 400:
            v5 = @"START_ETA_SHARING";

            break;
          case 401:
            v5 = @"PERSON_LOCATION_UPDATE";

            break;
          case 402:
            v5 = @"STOP_ETA_SHARING";

            break;
          case 403:
            v5 = @"PUNCH_OUT_TO_FINDMY";

            break;
          case 404:
            v5 = @"TAP_PEOPLE_LOCATION";

            break;
          case 405:
            v5 = @"TAP_TO_REQUEST_LOCATION";

            break;
          case 406:
            v5 = @"ZOOM_OUT_CROWN";

            break;
          case 407:
            v5 = @"TAP_RESIZE_DOWNLOAD_MAPS";

            break;
          case 408:
            v5 = @"TAP_DELETE_DOWNLOAD_MAPS";

            break;
          case 409:
            v5 = @"SELECT_LIST_VIEW";

            break;
          case 410:
            v5 = @"SCROLL_RIGHT_TRAILHEADS";

            break;
          case 411:
            v5 = @"SWITCH_TO_ONLINE_MODE";

            break;
          case 412:
            v5 = @"TAP_RELATED_TRAILHEAD";

            break;
          case 413:
            v5 = @"SELECT_ELEVATION_VIEW";

            break;
          case 414:
            v5 = @"TOGGLE_PROXIMITY_RADIUS_ON";

            break;
          case 415:
            v5 = @"SEE_MORE_RECENTS";

            break;
          case 416:
            v5 = @"SEE_MORE_GUIDES";

            break;
          case 417:
            v5 = @"SELECT_CONTROLS";

            break;
          case 418:
            v5 = @"NO_SEARCH_RESULTS";

            break;
          case 419:
            v5 = @"TAP_VIEW_RESULTS_CAROUSEL";

            break;
          case 420:
            v5 = @"TAP_VIEW_RESULTS_LIST";

            break;
          case 421:
            v5 = @"SELECT_MAP_VIEW";

            break;
          case 422:
            v5 = @"SCROLL_LEFT_TRAILHEADS";

            break;
          case 423:
            v5 = @"SWITCH_TO_OFFLINE_MODE";

            break;
          case 424:
            v5 = @"ZOOM_IN_CROWN";

            break;
          case 425:
            v5 = @"TOGGLE_PROXIMITY_RADIUS_OFF";

            break;
          case 426:
            v5 = @"TAP_MAP";

            break;
          case 427:
            v5 = @"SWIPE_DOWN";

            break;
          case 428:
            v5 = @"TAP_MORE_TRAILHEADS";

            break;
          case 429:
            v5 = @"TAP_ROUTE_OPTIONS";

            break;
          case 430:
            v5 = @"TAP_ROUTE_NAV_MAP";

            break;
          case 431:
            v5 = @"TAP_ROUTE_OVERVIEW_MAP";

            break;
          case 432:
            v5 = @"TAP_AUDIO";

            break;
          case 433:
            v5 = @"TAP_OPEN_PLACECARD";

            break;
          case 434:
            v5 = @"TAP_VIEW_STOPS";

            break;
          case 435:
            v5 = @"TAP_ROUTE_DETAILS";

            break;
          case 436:
            v5 = @"ADD_LPR_VEHICLE";

            break;
          case 437:
            v5 = @"TAP_ADD_VEHICLE";

            break;
          case 438:
            v5 = @"TAP_PLUG_TYPE";

            break;
          case 439:
            v5 = @"UNSELECT_SUGGESTED_NETWORK";

            break;
          case 440:
            v5 = @"TAP_SET_UP_LATER";

            break;
          case 441:
            v5 = @"ADD_EV_VEHICLE";

            break;
          case 442:
            v5 = @"UPDATE_COLOR";

            break;
          case 443:
            v5 = @"SELECT_OTHER_NETWORK";

            break;
          case 444:
            v5 = @"UNSELECT_NETWORK";

            break;
          case 445:
            v5 = @"TAP_BACK";

            break;
          case 446:
            v5 = @"TAP_CANCEL";

            break;
          case 447:
            v5 = @"UNSELECT_VEHICLE";

            break;
          case 448:
            v5 = @"UNSELECT_OTHER_NETWORK";

            break;
          case 449:
            v5 = @"DISPLAY_EV_TIPKIT";

            break;
          case 450:
            v5 = @"SELECT_NETWORK";

            break;
          case 451:
            v5 = @"TAP_EV_TIPKIT";

            break;
          case 452:
            v5 = @"TAP_CHOOSE_NETWORKS";

            break;
          case 453:
            v5 = @"TAP_ADD_NETWORK";

            break;
          case 454:
            v5 = @"FILTER_NETWORK";

            break;
          case 455:
            v5 = @"SELECT_SUGGESTED_NETWORK";

            break;
          case 456:
            v5 = @"TRANSIT_TO_WALKING";

            break;
          case 457:
            v5 = @"TRANSIT_TO_FINDMY";

            break;
          case 458:
            v5 = @"TAP_AC_KEYBOARD";

            break;
          case 459:
            v5 = @"REACH_PHOTO_STRIP_END";

            break;
          case 460:
            v5 = @"SEARCH_HERE_REVEAL";

            break;
          case 461:
            v5 = @"TAP_SEARCH_HERE";

            break;
          case 462:
            v5 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

            break;
          case 463:
            v5 = @"SAVE";

            break;
          case 464:
            v5 = @"TAP_MORE_CURATED_HIKES";

            break;
          case 465:
            v5 = @"CREATE_CUSTOM_ROUTE";

            break;
          case 466:
            v5 = @"TAP_TRY_NOW";

            break;
          case 467:
            v5 = @"TAP_CURATED_HIKE";

            break;
          case 468:
            v5 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

            break;
          case 469:
            v5 = @"ADD_TO_LIBRARY";

            break;
          case 470:
            v5 = @"START_HIKING";

            break;
          case 471:
            v5 = @"EDIT_NOTE";

            break;
          case 472:
            v5 = @"CREATE_NOTE";

            break;
          case 473:
            v5 = @"DELETE_PIN";

            break;
          case 474:
            v5 = @"ADD_ROUTE";

            break;
          case 475:
            v5 = @"ADD_PIN";

            break;
          case 476:
            v5 = @"REMOVE_FROM_COLLECTION";

            break;
          case 477:
            v5 = @"REMOVE_FROM_LIBRARY";

            break;
          case 478:
            v5 = @"TAP_ITEM";

            break;
          case 479:
            v5 = @"DELETE_ROUTE";

            break;
          case 480:
            v5 = @"TAP_ROUTE";

            break;
          case 481:
            v5 = @"TAP_DOWNLOAD_WATCH_MAPS";

            break;
          case 482:
            v5 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 483:
            v5 = @"STOP_DOWNLOAD_ONTO_WATCH";

            break;
          case 484:
            v5 = @"TAP_DOWNLOAD_ONTO_WATCH";

            break;
          case 485:
            v5 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 486:
            v5 = @"TAP_DOWNLOAD_NOW_WATCH";

            break;
          case 487:
            v5 = @"REVEAL_DETECTION_LIST";

            break;
          case 488:
            v5 = @"TAP_RECOMMENDATION";

            break;
          case 489:
            v5 = @"TAP_EXPAND";

            break;
          case 490:
            v5 = @"EXPAND_DETECTION_LIST";

            break;
          case 491:
            v5 = @"FIRST_PARTY_MAP_VIEW";

            break;
          case 492:
            v5 = @"SECOND_PARTY_MAP_VIEW";

            break;
          case 493:
            v5 = @"THIRD_PARTY_MAP_VIEW";

            break;
          case 494:
            v5 = @"DAEMON_PARTY_MAP_VIEW";

            break;
          case 495:
            v5 = @"MAPS_APP_DWELL_TIME_3_SEC";

            break;
          case 496:
            v5 = @"MAPS_APP_DWELL_TIME_30_SEC";

            break;
          case 497:
            v5 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

            break;
          case 498:
            v5 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

            break;
          case 499:
            v5 = @"DISPLAY_DOOM";

            break;
          case 500:
            v5 = @"TAP_DOOM";

            break;
          case 501:
            v5 = @"TAP_ROUTE_GENIUS";

            break;
          case 502:
            v5 = @"DISPLAY_ROUTE_GENIUS";

            break;
          case 503:
            v5 = @"TAP_WIDGET";

            break;
          case 504:
            v5 = @"ARRIVE_AT_DESTINATION";

            break;
          case 505:
            v5 = @"DISPLAY_WIDGET";

            break;
          case 506:
            v5 = @"CLEAR_HISTORY";

            break;
          case 507:
            v5 = @"TAP_SECTION";

            break;
          case 508:
            v5 = @"APPROVE_LOCATION";

            break;
          case 509:
            v5 = @"DISMISS_VISITED_PLACES_TIPKIT";

            break;
          case 510:
            v5 = @"DISPLAY_VISITED_PLACES_TIPKIT";

            break;
          case 511:
            v5 = @"MORE_OPTIONS";

            break;
          case 512:
            v5 = @"TAP_VISITED_PLACES_AVAILABLE";

            break;
          case 513:
            v5 = @"AUTO_REFRESH_SEARCH";

            break;
          case 514:
            v5 = @"REMOVE_VISIT";

            break;
          case 515:
            v5 = @"WRONG_LOCATION";

            break;
          case 516:
            v5 = @"CONFIRM";

            break;
          case 517:
            v5 = @"KEEP_HISTORY";

            break;
          case 518:
            v5 = @"DISPLAY_VISITED_PLACES_AVAILABLE";

            break;
          case 519:
            v5 = @"REMOVE";

            break;
          case 520:
            v5 = @"ALLOW";

            break;
          case 521:
            v5 = @"DONT_ALLOW";

            break;
          case 522:
            v5 = @"REMOVE_EVERY_VISIT";

            break;
          case 523:
            v5 = @"CONTINUE_VISITED_PLACES_TIPKIT";

            break;
          case 524:
            v5 = @"REMOVE_FROM_FAVORITE_GUIDE";

            break;
          case 525:
            v5 = @"ADD_TO_FAVORITE_GUIDE";

            break;
          case 526:
            v5 = @"FAMILIAR_ROUTE_DISPLAYED";

            break;
          case 527:
            v5 = @"FAMILIAR_ROUTE_NAV_STARTED";

            break;
          case 528:
            v5 = @"SELECT_AUDIO_VOLUME_LOUDER";

            break;
          case 529:
            v5 = @"SELECT_AUDIO_VOLUME_SOFTER";

            break;
          case 1001:
            v5 = @"PAN";

            break;
          case 1002:
            v5 = @"ZOOM_IN";

            break;
          case 1003:
            v5 = @"ZOOM_OUT";

            break;
          case 1004:
            v5 = @"ROTATE";

            break;
          case 1010:
            v5 = @"TAP_POI";

            break;
          case 1011:
            v5 = @"TAP_POI_TRANSIT";

            break;
          case 1017:
            v5 = @"TAP_POI_HIGHLIGHTED";

            break;
          case 1018:
            v5 = @"TAP_POI_CLUSTERED";

            break;
          case 1020:
            v5 = @"TAP_POI_DROPPED_PIN";

            break;
          case 1030:
            v5 = @"DROP_PIN";

            break;
          case 1031:
            v5 = @"TAP_INCIDENT";

            break;
          case 1032:
            v5 = @"TAP_TRANSIT_LINE";

            break;
          case 1033:
            v5 = @"TAP_POI_CALENDAR";

            break;
          case 1034:
            v5 = @"TAP_POI_CURRENT_LOCATION";

            break;
          case 1035:
            v5 = @"TAP_POI_TRANSIT_LINE";

            break;
          case 1036:
            v5 = @"TAP_POI_LANDMARK";

            break;
          case 1037:
            v5 = @"TAP_POI_FLYOVER";

            break;
          case 1038:
            v5 = @"TAP_TO_HIDE_TRAY";

            break;
          case 1039:
            v5 = @"TAP_TO_REVEAL_TRAY";

            break;
          case 1040:
            v5 = @"TAP_COMPASS";

            break;
          case 1041:
            v5 = @"PITCH_AWAY_FROM_GROUND";

            break;
          case 1042:
            v5 = @"PITCH_CLOSER_TO_GROUND";

            break;
          case 1043:
            v5 = @"ZOOM_IN_PINCH";

            break;
          case 1044:
            v5 = @"ZOOM_OUT_PINCH";

            break;
          case 1045:
            v5 = @"ZOOM_IN_DOUBLE_TAP";

            break;
          case 1046:
            v5 = @"ZOOM_OUT_TWO_FINGER_TAP";

            break;
          case 1047:
            v5 = @"ZOOM_IN_ONE_FINGER";

            break;
          case 1048:
            v5 = @"ZOOM_OUT_ONE_FINGER";

            break;
          case 1049:
            v5 = @"ZOOM_IN_BUTTON";

            break;
          case 1050:
            v5 = @"ZOOM_OUT_BUTTON";

            break;
          case 1051:
            v5 = @"TAP_TRAFFIC_CAMERA";

            break;
          case 1052:
            v5 = @"DISPLAY_INDOOR_MAP_BUTTON";

            break;
          case 1053:
            v5 = @"OPEN_INDOOR_MAP";

            break;
          case 1054:
            v5 = @"DISPLAY_VENUE_BROWSE_BUTTON";

            break;
          case 1055:
            v5 = @"TAP_VENUE_BROWSE_BUTTON";

            break;
          case 1056:
            v5 = @"ENTER_VENUE_EXPERIENCE";

            break;
          case 1057:
            v5 = @"EXIT_VENUE_EXPERIENCE";

            break;
          case 1058:
            v5 = @"ZOOM_IN_SCENE_PINCH";

            break;
          case 1059:
            v5 = @"ZOOM_OUT_SCENE_PINCH";

            break;
          case 1060:
            v5 = @"ZOOM_RESET";

            break;
          case 1061:
            v5 = @"TAP_SCENE_UNAVAILABLE_AREA";

            break;
          case 1062:
            v5 = @"TAP_TRANSIT_ACCESS_POINT";

            break;
          case 1063:
            v5 = @"TAP_SPEED_CAMERA";

            break;
          case 1064:
            v5 = @"TAP_RED_LIGHT_CAMERA";

            break;
          case 1065:
            v5 = @"TAP_GEO";

            break;
          default:
            if (action != 1500)
            {
              goto LABEL_195;
            }

            v5 = @"TAP_PLAY_SOUND";

            break;
        }
      }

      return v5;
    }

    if (action <= 9000)
    {
      if (action <= 6002)
      {
        if (action > 4001)
        {
          if (action <= 4004)
          {
            if (action == 4002)
            {
              v5 = @"TAP_HEADING_ON";
            }

            else if (action == 4003)
            {
              v5 = @"TAP_HEADING_OFF";
            }

            else
            {
              v5 = @"PUCK_DRIFT";
            }
          }

          else
          {
            switch(action)
            {
              case 5001:
                v5 = @"SHOW_MAPS_SETTINGS";

                return v5;
              case 5002:
                v5 = @"TAP_STANDARD_MODE";

                return v5;
              case 5003:
                v5 = @"TAP_TRANSIT_MODE";

                return v5;
              case 5004:
                v5 = @"TAP_SATELLITE_MODE";

                return v5;
              case 5005:
                v5 = @"SWITCH_ON_TRAFFIC";

                return v5;
              case 5006:
                v5 = @"SWITCH_OFF_TRAFFIC";

                return v5;
              case 5007:
                v5 = @"SWITCH_ON_LABELS";

                return v5;
              case 5008:
                v5 = @"SWITCH_OFF_LABELS";

                return v5;
              case 5009:
                v5 = @"SWITCH_ON_3D_MAP";

                return v5;
              case 5010:
                v5 = @"SWITCH_OFF_3D_MAP";

                return v5;
              case 5011:
                v5 = @"SWITCH_ON_WEATHER";

                return v5;
              case 5012:
                v5 = @"SWITCH_OFF_WEATHER";

                return v5;
              case 5013:
                v5 = @"REPORT_A_PROBLEM";

                return v5;
              case 5014:
                v5 = @"ADD_PLACE";

                return v5;
              case 5015:
                goto LABEL_195;
              case 5016:
                v5 = @"TAP_PREFERENCES";

                return v5;
              case 5017:
                v5 = @"SWITCH_ON_TOLLS";

                return v5;
              case 5018:
                v5 = @"SWITCH_OFF_TOLLS";

                return v5;
              case 5019:
                v5 = @"SWITCH_ON_HIGHWAYS";

                return v5;
              case 5020:
                v5 = @"SWITCH_OFF_HIGHWAYS";

                return v5;
              case 5021:
                v5 = @"SWITCH_ON_HEADING";

                return v5;
              case 5022:
                v5 = @"SWITCH_OFF_HEADING";

                return v5;
              case 5023:
                v5 = @"SWITCH_ON_SPEED_LIMIT";

                return v5;
              case 5024:
                v5 = @"SWITCH_OFF_SPEED_LIMIT";

                return v5;
              case 5025:
                v5 = @"ELECT_DRIVING_MODE";

                return v5;
              case 5026:
                v5 = @"ELECT_WALKING_MODE";

                return v5;
              case 5027:
                v5 = @"ELECT_TRANSIT_MODE";

                return v5;
              case 5028:
                v5 = @"ELECT_RIDESHARE_MODE";

                return v5;
              case 5029:
                v5 = @"SWITCH_ON_FIND_MY_CAR";

                return v5;
              case 5030:
                v5 = @"SWITCH_OFF_FIND_MY_CAR";

                return v5;
              case 5031:
                v5 = @"MARK_MY_LOCATION";

                return v5;
              case 5032:
                v5 = @"TAP_HYBRID_MODE";

                return v5;
              case 5033:
                v5 = @"CHECK_AVOID_BUSY_ROADS";

                return v5;
              case 5034:
                v5 = @"UNCHECK_AVOID_BUSY_ROADS";

                return v5;
              case 5035:
                v5 = @"CHECK_AVOID_HILLS";

                return v5;
              case 5036:
                v5 = @"UNCHECK_AVOID_HILLS";

                return v5;
              case 5037:
                v5 = @"CHECK_AVOID_STAIRS";

                return v5;
              case 5038:
                v5 = @"UNCHECK_AVOID_STAIRS";

                return v5;
              case 5039:
                v5 = @"ELECT_CYCLING_MODE";

                return v5;
              default:
                if (action == 4005)
                {
                  v5 = @"PUCK_SNAP";
                }

                else
                {
                  if (action != 4006)
                  {
                    goto LABEL_195;
                  }

                  v5 = @"SELECT_FLOOR";
                }

                break;
            }
          }
        }

        else
        {
          switch(action)
          {
            case 3001:
              v5 = @"START_NAV";

              break;
            case 3002:
              v5 = @"END_NAV";

              break;
            case 3003:
              v5 = @"OPEN_NAV_AUDIO_SETTINGS";

              break;
            case 3004:
              v5 = @"VIEW_DETAILS";

              break;
            case 3005:
              v5 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

              break;
            case 3006:
              v5 = @"OPEN_ROUTING_EDITOR";

              break;
            case 3007:
              v5 = @"EDIT_ORIGIN";

              break;
            case 3008:
              v5 = @"EDIT_DESTINATION";

              break;
            case 3009:
              v5 = @"SWAP_ORIGIN_DESTINATION";

              break;
            case 3010:
              v5 = @"OPEN_MORE_ROUTES";

              break;
            case 3011:
              v5 = @"SELECT_ROUTING_TYPE_DRIVING";

              break;
            case 3012:
              v5 = @"SELECT_ROUTING_TYPE_WALKING";

              break;
            case 3013:
              v5 = @"SELECT_ROUTING_TYPE_TRANSIT";

              break;
            case 3014:
              v5 = @"SELECT_ROUTING_TYPE_RIDESHARE";

              break;
            case 3015:
              v5 = @"SELECT_ROUTE";

              break;
            case 3016:
              v5 = @"COLLAPSE_STEP_DETAILS_WALK";

              break;
            case 3017:
              v5 = @"EXPAND_STEP_DETAILS_WALK";

              break;
            case 3018:
              v5 = @"COLLAPSE_STEP_DETAILS_TRANSIT";

              break;
            case 3019:
              v5 = @"EXPAND_STEP_DETAILS_TRANSIT";

              break;
            case 3020:
              v5 = @"UNCHECK_BUS";

              break;
            case 3021:
              v5 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3022:
              v5 = @"UNCHECK_COMMUTER_RAIL";

              break;
            case 3023:
              v5 = @"UNCHECK_FERRY";

              break;
            case 3024:
              v5 = @"CHECK_BUS";

              break;
            case 3025:
              v5 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3026:
              v5 = @"CHECK_COMMUTER_RAIL";

              break;
            case 3027:
              v5 = @"CHECK_FERRY";

              break;
            case 3028:
              v5 = @"SELECT_LEAVE_AT";

              break;
            case 3029:
              v5 = @"SELECT_ARRIVE_BY";

              break;
            case 3030:
              v5 = @"SELECT_LEAVE_NOW";

              break;
            case 3031:
              v5 = @"SELECT_DATE_TIME";

              break;
            case 3032:
              v5 = @"SWITCH_ON_IC_FARES";

              break;
            case 3033:
              v5 = @"SWITCH_OFF_IC_FARES";

              break;
            case 3034:
              v5 = @"OPEN_ROUTE_OPTIONS_DATETIME";

              break;
            case 3035:
              v5 = @"OPEN_ROUTE_OPTIONS_TRANSIT";

              break;
            case 3036:
              v5 = @"OPEN_ROUTE_OPTIONS_DRIVING";

              break;
            case 3037:
              v5 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

              break;
            case 3038:
              v5 = @"REVEAL_FROM_ROUTING";

              break;
            case 3039:
              v5 = @"DISPLAY_ROUTES";

              break;
            case 3040:
              v5 = @"CHECK_RECOMMENDED_ROUTES";

              break;
            case 3041:
              v5 = @"UNCHECK_RECOMMENDED_ROUTES";

              break;
            case 3042:
              v5 = @"CHECK_FASTER_TRIPS";

              break;
            case 3043:
              v5 = @"UNCHECK_FASTER_TRIPS";

              break;
            case 3044:
              v5 = @"CHECK_FEWER_TRANSFERS";

              break;
            case 3045:
              v5 = @"UNCHECK_FEWER_TRANSFERS";

              break;
            case 3046:
              v5 = @"CHECK_LESS_WALKING";

              break;
            case 3047:
              v5 = @"UNCHECK_LESS_WALKING";

              break;
            case 3048:
              v5 = @"OPEN_ROUTE_OPTIONS_CYCLING";

              break;
            case 3049:
              v5 = @"TAP_MORE_ROUTES";

              break;
            case 3050:
              v5 = @"OPEN_NAV_OVERVIEW";

              break;
            case 3051:
              v5 = @"RESUME_NAV_MANEUVER_VIEW";

              break;
            case 3052:
              v5 = @"SELECT_AUDIO_VOLUME_SILENT";

              break;
            case 3053:
              v5 = @"SELECT_AUDIO_VOLUME_LOW";

              break;
            case 3054:
              v5 = @"SELECT_AUDIO_VOLUME_NORMAL";

              break;
            case 3055:
              v5 = @"SELECT_AUDIO_VOLUME_LOUD";

              break;
            case 3056:
              v5 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

              break;
            case 3057:
              v5 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

              break;
            case 3058:
              v5 = @"RESUME_PREV_NAV";

              break;
            case 3059:
              v5 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

              break;
            case 3060:
              v5 = @"ACCEPT_REROUTE";

              break;
            case 3061:
              v5 = @"DISMISS_REROUTE";

              break;
            case 3062:
              v5 = @"ATTEMPT_END_NAV";

              break;
            case 3063:
              v5 = @"DISPLAY_BANNER";

              break;
            case 3064:
              v5 = @"VIEW_BANNER_DETAILS";

              break;
            case 3065:
              v5 = @"ENTER_GUIDANCE";

              break;
            case 3066:
              v5 = @"AUTO_ADVANCE_GUIDANCE";

              break;
            case 3067:
              v5 = @"TAP_OPEN_WALLET";

              break;
            case 3068:
              v5 = @"SELECT_VOICE_GUIDANCE_ALL";

              break;
            case 3069:
              v5 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

              break;
            case 3070:
              v5 = @"SELECT_VOICE_GUIDANCE_NONE";

              break;
            case 3071:
              v5 = @"DISPLAY_CARD";

              break;
            case 3072:
              v5 = @"RENDER_ROUTE";

              break;
            case 3073:
              v5 = @"DISPLAY_JUNCTION_VIEW";

              break;
            case 3074:
              v5 = @"SELECT_DEPARTURE";

              break;
            case 3075:
              v5 = @"DISPLAY_AR_VIEW_RAISE_BANNER";

              break;
            case 3076:
              v5 = @"DEVICE_RAISE";

              break;
            case 3077:
              v5 = @"ENTER_AR_NAV_VIEW";

              break;
            case 3078:
              v5 = @"EXIT_AR_NAV_VIEW";

              break;
            case 3079:
              v5 = @"AR_CALIBRATION_START";

              break;
            case 3080:
              v5 = @"AR_CALIBRATION_FAILURE";

              break;
            case 3081:
              v5 = @"AR_CALIBRATION_SUCCESS";

              break;
            case 3082:
              v5 = @"DISPLAY_AR_NAV_ARROW";

              break;
            case 3083:
              v5 = @"DISPLAY_AR_NAV_TURN_AROUND";

              break;
            case 3084:
              v5 = @"DISPLAY_GO_OUTSIDE_BANNER";

              break;
            case 3085:
              v5 = @"DISPLAY_AR_DARKNESS_MESSAGE";

              break;
            case 3086:
              v5 = @"DISPLAY_AR_NAV_ENDPOINT";

              break;
            case 3087:
              v5 = @"DISPLAY_ADVISORY_BANNER";

              break;
            case 3088:
              v5 = @"TAP_SHOW_ADVISORY_DETAILS";

              break;
            default:
              if (action != 4001)
              {
                goto LABEL_195;
              }

              v5 = @"RECENTER_CURRENT_LOCATION";

              break;
          }
        }
      }

      else if (action > 7000)
      {
        if (action > 8000)
        {
          if (action <= 8005)
          {
            if (action <= 8002)
            {
              if (action == 8001)
              {
                v5 = @"INVOKE_SIRI_SNIPPET";
              }

              else
              {
                v5 = @"INVOKE_SIRI_DISAMBIGUATION";
              }
            }

            else if (action == 8003)
            {
              v5 = @"SHOW_PLACE_DETAILS";
            }

            else if (action == 8004)
            {
              v5 = @"ANSWER_REROUTE_SUGGESTION";
            }

            else
            {
              v5 = @"SUGGEST_NAV_REROUTE";
            }
          }

          else if (action > 8008)
          {
            switch(action)
            {
              case 0x1F49:
                v5 = @"INVOKE_SIRI";

                break;
              case 0x1F4A:
                v5 = @"DISPLAY_SIRI_ERROR_MESSAGE";

                break;
              case 0x1F4B:
                v5 = @"DISPLAY_NO_RESULTS_MESSAGE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action == 8006)
          {
            v5 = @"GET_NAV_STATUS";
          }

          else if (action == 8007)
          {
            v5 = @"REPEAT_NAV_STATUS";
          }

          else
          {
            v5 = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }
        }

        else
        {
          switch(action)
          {
            case 7001:
              v5 = @"EXPAND_TRANSIT_SYSTEM";

              break;
            case 7002:
              v5 = @"COLLAPSE_TRANSIT_SYSTEM";

              break;
            case 7003:
              v5 = @"SHOW_MORE_DEPARTURES";

              break;
            case 7004:
              v5 = @"VIEW_TRANSIT_LINE";

              break;
            case 7005:
              v5 = @"CANCEL_VIEW_TRANSIT_LINE";

              break;
            case 7006:
              v5 = @"TAP_TRANSIT_ATTRIBUTION";

              break;
            case 7007:
              v5 = @"TAP_TRANSIT_ADVISORY";

              break;
            case 7008:
              v5 = @"MORE_DETAILS_TRANSIT_ADVISORY";

              break;
            case 7009:
              v5 = @"SUBSCRIBE_LINE_INCIDENT";

              break;
            case 7010:
              v5 = @"UNSUBSCRIBE_LINE_INCIDENT";

              break;
            case 7011:
              v5 = @"TAP_NEAREST_STATION";

              break;
            case 7012:
              v5 = @"TAP_NEAREST_STOP";

              break;
            case 7013:
              v5 = @"TAP_CONNECTION";

              break;
            case 7014:
              v5 = @"GET_TICKETS";

              break;
            case 7015:
              v5 = @"OPEN_SCHEDULECARD_DATETIME";

              break;
            case 7016:
              v5 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

              break;
            case 7017:
              v5 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

              break;
            case 7018:
              v5 = @"VIEW_ON_MAP";

              break;
            case 7019:
              v5 = @"FORCE_UPDATE_DEPARTURE_INFO";

              break;
            case 7020:
              v5 = @"TAP_TRANSIT_LINE_INFO";

              break;
            case 7021:
              v5 = @"TAP_ATTRIBUTION_CELL";

              break;
            case 7022:
              v5 = @"TAP_NEXT_DEPARTURES";

              break;
            case 7023:
              v5 = @"VIEW_BANNER";

              break;
            case 7024:
              v5 = @"GET_SHOWTIMES";

              break;
            case 7025:
              v5 = @"MAKE_APPOINTMENT";

              break;
            case 7026:
              v5 = @"RESERVE_PARKING";

              break;
            case 7027:
              v5 = @"RESERVE_ROOM";

              break;
            case 7028:
              v5 = @"WAITLIST";

              break;
            case 7029:
              v5 = @"ORDER_TAKEOUT";

              break;
            case 7030:
              v5 = @"RESERVE";

              break;
            default:
              goto LABEL_195;
          }
        }
      }

      else
      {
        switch(action)
        {
          case 6003:
            v5 = @"GET_DIRECTIONS";

            break;
          case 6004:
            v5 = @"TAP_FLYOVER_TOUR";

            break;
          case 6005:
            v5 = @"REMOVE_PIN";

            break;
          case 6006:
            v5 = @"TAP_PHOTO";

            break;
          case 6007:
            v5 = @"TAP_MAPS_VIEW";

            break;
          case 6008:
            v5 = @"TAP_ADDRESS";

            break;
          case 6009:
            v5 = @"CALL";

            break;
          case 6010:
            v5 = @"TAP_URL";

            break;
          case 6011:
            v5 = @"SHOW_TODAY_HOURS";

            break;
          case 6012:
            v5 = @"SHOW_ALL_HOURS";

            break;
          case 6013:
            v5 = @"SHARE";

            break;
          case 6015:
            v5 = @"ADD_TO_FAVORITES";

            break;
          case 6016:
            v5 = @"ADD_CONTACT";

            break;
          case 6018:
            v5 = @"PUNCH_OUT_PHOTO";

            break;
          case 6019:
            v5 = @"PUNCH_OUT_USEFUL_TO_KNOW";

            break;
          case 6020:
            v5 = @"PUNCH_OUT_OPEN_APP";

            break;
          case 6021:
            v5 = @"PUNCH_OUT_SINGLE_REVIEW";

            break;
          case 6022:
            v5 = @"PUNCH_OUT_CHECK_IN";

            break;
          case 6023:
            v5 = @"PUNCH_OUT_MORE_INFO";

            break;
          case 6024:
            v5 = @"PUNCH_OUT_WRITE_REVIEW";

            break;
          case 6025:
            v5 = @"PUNCH_OUT_ADD_PHOTO";

            break;
          case 6026:
            v5 = @"TAP_GRID_VIEW";

            break;
          case 6027:
            v5 = @"EDIT_LOCATION";

            break;
          case 6029:
            v5 = @"ADD_PHOTO";

            break;
          case 6031:
            v5 = @"RETAKE";

            break;
          case 6032:
            v5 = @"ADD_NOTE";

            break;
          case 6033:
            v5 = @"REMOVE_CAR";

            break;
          case 6034:
            v5 = @"EDIT_NAME";

            break;
          case 6036:
            v5 = @"RESERVE_TABLE";

            break;
          case 6037:
            v5 = @"ADD_TO_QUEUE";

            break;
          case 6038:
            v5 = @"VIEW_BOOKED_TABLE";

            break;
          case 6039:
            v5 = @"VIEW_QUEUED_TABLE";

            break;
          case 6040:
            v5 = @"PUNCH_OUT_THIRD_PARTY_APP";

            break;
          case 6041:
            v5 = @"PUNCH_OUT_LEGAL_LINK";

            break;
          case 6042:
            v5 = @"TAP_PLACECARD_HEADER";

            break;
          case 6043:
            v5 = @"REMOVE_FROM_FAVORITES";

            break;
          case 6044:
            v5 = @"VIEW_CONTACT";

            break;
          case 6045:
            v5 = @"CHAT";

            break;
          case 6046:
            v5 = @"FIND_STORES";

            break;
          case 6047:
            v5 = @"TAP_PARENT";

            break;
          case 6048:
            v5 = @"SCROLL_LEFT_PHOTOS";

            break;
          case 6049:
            v5 = @"SCROLL_RIGHT_PHOTOS";

            break;
          case 6050:
            v5 = @"PUNCH_OUT";

            break;
          case 6051:
            v5 = @"TAP_ENTER_MUNIN";

            break;
          case 6052:
            v5 = @"TAP_RECOMMENDED_DISHES_PHOTO";

            break;
          case 6053:
            v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

            break;
          case 6054:
            v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

            break;
          case 6055:
            v5 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6056:
            v5 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6057:
            v5 = @"SHOW_LINKED_SERVICE_HOURS";

            break;
          case 6058:
            v5 = @"ENTER_LOOK_AROUND";

            break;
          case 6059:
            v5 = @"EXIT_LOOK_AROUND";

            break;
          case 6060:
            v5 = @"TAP_ENTER_LOOK_AROUND_VIEW";

            break;
          case 6061:
            v5 = @"TAP_ENTER_LOOK_AROUND_PIP";

            break;
          case 6062:
            v5 = @"EXPAND_LOOK_AROUND_VIEW";

            break;
          case 6063:
            v5 = @"CLOSE_LOOK_AROUND";

            break;
          case 6064:
            v5 = @"COLLAPSE_LOOK_AROUND_VIEW";

            break;
          case 6065:
            v5 = @"TAP_SHOW_ACTIONS";

            break;
          case 6066:
            v5 = @"TAP_HIDE_LABELS";

            break;
          case 6067:
            v5 = @"TAP_SHOW_LABELS";

            break;
          case 6068:
            v5 = @"TAP_SHOW_DETAILS";

            break;
          case 6069:
            v5 = @"PAN_LOOK_AROUND";

            break;
          case 6070:
            v5 = @"TAP_LOOK_AROUND_THUMBNAIL";

            break;
          case 6071:
            v5 = @"TAP_LANDMARK";

            break;
          case 6072:
            v5 = @"TAP_SCENE";

            break;
          case 6073:
            v5 = @"SHOW_LINKED_BUSINESS_HOURS";

            break;
          case 6074:
            v5 = @"TAP_PLACECARD_SHORTCUT";

            break;
          case 6075:
            v5 = @"SHOW_ALL_LOCATIONS_INSIDE";

            break;
          case 6076:
            v5 = @"SHOW_ALL_SIMILAR_LOCATIONS";

            break;
          case 6077:
            v5 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

            break;
          case 6078:
            v5 = @"TAP_PARENT_LOCATION";

            break;
          case 6079:
            v5 = @"TAP_SIMILAR_LOCATION";

            break;
          case 6080:
            v5 = @"TAP_LOCATION_INSIDE";

            break;
          case 6081:
            v5 = @"TAP_LOCATION_AT_ADDRESS";

            break;
          case 6082:
            v5 = @"CLOSE_ROUTE_GENIUS";

            break;
          case 6083:
            v5 = @"LOAD_WEB_CONTENT";

            break;
          case 6084:
            v5 = @"SCROLL_FORWARD_WEB_CONTENT";

            break;
          case 6085:
            v5 = @"SCROLL_BACKWARD_WEB_CONTENT";

            break;
          case 6086:
            v5 = @"TAP_WEB_CONTENT";

            break;
          case 6087:
            v5 = @"SHOW_PHOTO_VIEWER";

            break;
          case 6088:
            v5 = @"SHOW_LAST_PAGE";

            break;
          case 6089:
            v5 = @"TAP_VIEW_APP";

            break;
          case 6090:
            v5 = @"TAP_APP_CLIP";

            break;
          case 6091:
            v5 = @"DEAD_BATTERY";

            break;
          case 6092:
            v5 = @"DISMISS_LOW_BATTERY_ALERT";

            break;
          case 6093:
            v5 = @"DISMISS_OUT_OF_RANGE_ALERT";

            break;
          case 6094:
            v5 = @"FAILED_TO_LOAD_EV_STATUS";

            break;
          case 6095:
            v5 = @"LOW_BATTERY_ALERT";

            break;
          case 6096:
            v5 = @"PAUSE_ROUTE";

            break;
          case 6097:
            v5 = @"TAP_ADD_STOP";

            break;
          case 6098:
            v5 = @"TAP_CHARGE_POINT";

            break;
          case 6099:
            v5 = @"TAP_OUT_OF_RANGE_ALERT";

            break;
          case 6100:
            v5 = @"SCROLL_DOWN_PHOTOS";

            break;
          case 6101:
            v5 = @"SCROLL_UP_PHOTOS";

            break;
          case 6102:
            v5 = @"TAP_MORE_PHOTOS";

            break;
          case 6103:
            v5 = @"TAP_TO_CONFIRM_INCIDENT";

            break;
          case 6104:
            v5 = @"SHOW_INCIDENT";

            break;
          case 6105:
            v5 = @"REVEAL_APP_CLIP";

            break;
          case 6106:
            v5 = @"ORDER_DELIVERY";

            break;
          case 6107:
            v5 = @"VIEW_MENU";

            break;
          case 6108:
            v5 = @"TAP_EDIT_STOPS";

            break;
          case 6109:
            v5 = @"LEARN_MORE_WEB_CONTENT";

            break;
          case 6110:
            v5 = @"MAKE_APPOINTMENT_WEB_CONTENT";

            break;
          case 6111:
            v5 = @"REVEAL_SHOWCASE";

            break;
          case 6112:
            v5 = @"TAP_ACTION_BAR";

            break;
          default:
            goto LABEL_195;
        }
      }
    }

    else
    {
      if (action <= 12000)
      {
        switch(action)
        {
          case 10101:
            v5 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

            break;
          case 10102:
            v5 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

            break;
          case 10103:
            v5 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

            break;
          case 10104:
            v5 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

            break;
          case 10105:
            v5 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

            break;
          case 10106:
            v5 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

            break;
          case 10107:
            v5 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

            break;
          case 10108:
            v5 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

            break;
          case 10109:
            v5 = @"RAP_CANCEL";

            break;
          case 10110:
            v5 = @"RAP_NEXT";

            break;
          case 10111:
            v5 = @"RAP_BACK";

            break;
          case 10112:
            v5 = @"RAP_SEND";

            break;
          case 10113:
            v5 = @"RAP_SKIP";

            break;
          case 10114:
            v5 = @"RAP_SHOW_MORE";

            break;
          case 10115:
            v5 = @"RAP_ADD_PHOTO";

            break;
          case 10116:
            v5 = @"RAP_MAP_INCORRECT";

            break;
          case 10117:
            v5 = @"RAP_BAD_DIRECTIONS";

            break;
          case 10118:
            v5 = @"RAP_TRANSIT_INFO_INCORRECT";

            break;
          case 10119:
            v5 = @"RAP_SATELLITE_IMAGE_PROBLEM";

            break;
          case 10120:
            v5 = @"RAP_SEARCH_RESULTS_INCORRECT";

            break;
          case 10121:
            v5 = @"RAP_ADD_A_PLACE";

            break;
          case 10122:
            v5 = @"RAP_HOME";

            break;
          case 10123:
            v5 = @"RAP_WORK";

            break;
          case 10124:
            v5 = @"RAP_OTHER";

            break;
          case 10125:
            v5 = @"RAP_LOCATION";

            break;
          case 10126:
            v5 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

            break;
          case 10127:
            v5 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

            break;
          case 10128:
            v5 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

            break;
          case 10129:
            v5 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

            break;
          case 10130:
            v5 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

            break;
          case 10131:
            v5 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

            break;
          case 10132:
            v5 = @"RAP_TRANSIT_DELAY";

            break;
          case 10133:
            v5 = @"RAP_LOCATION_CLOSED";

            break;
          case 10134:
            v5 = @"RAP_CLOSED_PERMANENTLY";

            break;
          case 10135:
            v5 = @"RAP_CLOSED_TEMPORARILY";

            break;
          case 10136:
            v5 = @"RAP_HOURS_HAVE_CHANGED";

            break;
          case 10137:
            v5 = @"RAP_SELECT_STATION";

            break;
          case 10138:
            v5 = @"RAP_SELECT_LINE";

            break;
          case 10139:
            v5 = @"RAP_SELECT_ACCESS_POINT";

            break;
          case 10140:
            v5 = @"RAP_SELECT_SEARCH";

            break;
          case 10141:
            v5 = @"RAP_PAN_MAP";

            break;
          case 10142:
            v5 = @"RAP_CENTER_MAP_ON_USER";

            break;
          case 10143:
            v5 = @"RAP_SEARCH_UNEXPECTED";

            break;
          case 10144:
            v5 = @"RAP_ADD_POI";

            break;
          case 10145:
            v5 = @"RAP_ADD_STREET_ADDRESS";

            break;
          case 10146:
            v5 = @"RAP_ADD_OTHER";

            break;
          case 10147:
            v5 = @"RAP_SELECT_CATEGORY";

            break;
          case 10148:
            v5 = @"RAP_TAKE_PHOTO";

            break;
          case 10149:
            v5 = @"RAP_RETAKE_PHOTO";

            break;
          case 10150:
            v5 = @"RAP_PLACE_DETAILS";

            break;
          case 10151:
            v5 = @"RAP_SATELLITE_IMAGE_OUTDATED";

            break;
          case 10152:
            v5 = @"RAP_SATELLITE_IMAGE_QUALITY";

            break;
          case 10153:
            v5 = @"RAP_SELECT_LABEL";

            break;
          case 10154:
            v5 = @"RAP_SELECT_ROUTE";

            break;
          case 10155:
            v5 = @"RAP_CLAIM_BUSINESS";

            break;
          case 10156:
            v5 = @"RAP_BRAND_DETAILS";

            break;
          case 10157:
            v5 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

            break;
          case 10158:
            v5 = @"RAP_LOOK_AROUND_LABELS_STREET";

            break;
          case 10159:
            v5 = @"RAP_LOOK_AROUND_BLURRING";

            break;
          case 10160:
            v5 = @"RAP_LOOK_AROUND_REMOVE_HOME";

            break;
          case 10161:
            v5 = @"RAP_LOOK_AROUND_LABELS_STORE";

            break;
          case 10162:
            v5 = @"RAP_LOOK_AROUND_PRIVACY";

            break;
          case 10163:
            v5 = @"RAP_INCORRECT_HOURS";

            break;
          case 10164:
            v5 = @"RAP_INCORRECT_ADDRESS";

            break;
          case 10165:
            v5 = @"RAP_EDIT_PLACE_DETAILS";

            break;
          case 10166:
            v5 = @"RAP_EDIT_PLACE_NAME";

            break;
          case 10167:
            v5 = @"RAP_EDIT_ADDRESS";

            break;
          case 10168:
            v5 = @"RAP_ADD_CATEGORY";

            break;
          case 10169:
            v5 = @"RAP_REMOVE_CATEGORY";

            break;
          case 10170:
            v5 = @"RAP_DESELECT_CATEGORY";

            break;
          case 10171:
            v5 = @"RAP_ADD_HOURS";

            break;
          case 10172:
            v5 = @"RAP_REMOVE_HOURS";

            break;
          case 10173:
            v5 = @"RAP_TAP_DAY_OF_WEEK";

            break;
          case 10174:
            v5 = @"RAP_TAP_24_HOURS_BUTTON";

            break;
          case 10175:
            v5 = @"RAP_TAP_OPEN_TIME";

            break;
          case 10176:
            v5 = @"RAP_TAP_CLOSED_TIME";

            break;
          case 10177:
            v5 = @"RAP_TAP_TEMPORARY_CLOSURE";

            break;
          case 10178:
            v5 = @"RAP_TAP_PERMANENTLY_CLOSED";

            break;
          case 10179:
            v5 = @"RAP_EDIT_WEBSITE";

            break;
          case 10180:
            v5 = @"RAP_EDIT_PHONE_NUMBER";

            break;
          case 10181:
            v5 = @"RAP_TAP_ACCEPTS_APPLE_PAY";

            break;
          case 10182:
            v5 = @"RAP_ADD_COMMENTS";

            break;
          case 10183:
            v5 = @"RAP_EDIT_LOCATION";

            break;
          case 10184:
            v5 = @"RAP_VIEW_LOCATION";

            break;
          case 10185:
            v5 = @"RAP_ZOOM_IN";

            break;
          case 10186:
            v5 = @"RAP_ZOOM_OUT";

            break;
          case 10187:
            v5 = @"RAP_VIEW_ENTRY_POINTS";

            break;
          case 10188:
            v5 = @"RAP_EDIT_EXISTING_ENTRY_POINT";

            break;
          case 10189:
            v5 = @"RAP_ADD_NEW_ENTRY_POINT";

            break;
          case 10190:
            v5 = @"RAP_REMOVE_ENTRY_POINT";

            break;
          case 10191:
            v5 = @"RAP_SELECT_ENTRY_POINT_TYPE";

            break;
          default:
            switch(action)
            {
              case 9001:
                v5 = @"TAP_WIDGET_ITEM";

                break;
              case 9002:
                v5 = @"DISPLAY_NOTIFICATION";

                break;
              case 9003:
                v5 = @"TAP_NOTIFICATION";

                break;
              case 9004:
                v5 = @"EXPAND_NOTIFICATION";

                break;
              case 9005:
                v5 = @"DISMISS_NOTIFICATION";

                break;
              case 9006:
                v5 = @"OPEN_SEARCH";

                break;
              case 9007:
                v5 = @"OPEN_PAN_VIEW";

                break;
              case 9008:
                v5 = @"PAN_LEFT";

                break;
              case 9009:
                v5 = @"PAN_UP";

                break;
              case 9010:
              case 9041:
              case 9042:
              case 9043:
              case 9044:
              case 9045:
              case 9046:
              case 9047:
              case 9048:
              case 9049:
              case 9050:
              case 9051:
              case 9052:
              case 9053:
              case 9054:
              case 9055:
              case 9056:
              case 9057:
              case 9058:
              case 9059:
              case 9060:
              case 9061:
              case 9062:
              case 9063:
              case 9064:
              case 9065:
              case 9066:
              case 9067:
              case 9068:
              case 9069:
              case 9070:
              case 9071:
              case 9072:
              case 9073:
              case 9074:
              case 9075:
              case 9076:
              case 9077:
              case 9078:
              case 9079:
              case 9080:
              case 9081:
              case 9082:
              case 9083:
              case 9084:
              case 9085:
              case 9086:
              case 9087:
              case 9088:
              case 9089:
              case 9090:
              case 9091:
              case 9092:
              case 9093:
              case 9094:
              case 9095:
              case 9096:
              case 9097:
              case 9098:
              case 9099:
              case 9100:
                goto LABEL_195;
              case 9011:
                v5 = @"PAN_DOWN";

                break;
              case 9012:
                v5 = @"TAP_RECENT_DESTINATIONS";

                break;
              case 9013:
                v5 = @"OPEN_DESTINATIONS";

                break;
              case 9014:
                v5 = @"OPEN_FAVORITES";

                break;
              case 9015:
                v5 = @"VIEW_NAV_OPTIONS";

                break;
              case 9016:
                v5 = @"START_NAV_NO_GUIDANCE";

                break;
              case 9017:
                v5 = @"TURN_OFF_GUIDANCE";

                break;
              case 9018:
                v5 = @"TURN_ON_GUIDANCE";

                break;
              case 9019:
                v5 = @"OPEN_KEYBOARD";

                break;
              case 9020:
                v5 = @"SHARE_DESTINATION";

                break;
              case 9021:
                v5 = @"START_NAV_AUTOMATED";

                break;
              case 9022:
                v5 = @"SHARE_ETA";

                break;
              case 9023:
                v5 = @"SELECT_GROUP";

                break;
              case 9024:
                v5 = @"DESELECT_GROUP";

                break;
              case 9025:
                v5 = @"SELECT_CONTACT";

                break;
              case 9026:
                v5 = @"DESELECT_CONTACT";

                break;
              case 9027:
                v5 = @"TAP_VIEW_CONTACTS";

                break;
              case 9028:
                v5 = @"STOP_RECEIVING_ETA";

                break;
              case 9029:
                v5 = @"DISPLAY_ANNOUNCEMENT";

                break;
              case 9030:
                v5 = @"TAP_ANNOUNCEMENT";

                break;
              case 9031:
                v5 = @"DISPLAY_CYCLING_NOTIFICATION";

                break;
              case 9032:
                v5 = @"TAP_CYCLING_NOTIFICATION";

                break;
              case 9033:
                v5 = @"SHARE_CYCLING_ETA";

                break;
              case 9034:
                v5 = @"MANAGE_NOTIFICATIONS";

                break;
              case 9035:
                v5 = @"PUNCH_OUT_PUBLISHER_REVIEW";

                break;
              case 9036:
                v5 = @"SCROLL_FORWARD";

                break;
              case 9037:
                v5 = @"SCROLL_BACKWARD";

                break;
              case 9038:
                v5 = @"SHOW_ALL_CURATED_COLLECTIONS";

                break;
              case 9039:
                v5 = @"TAP_LESS";

                break;
              case 9040:
                v5 = @"TAP_MORE";

                break;
              case 9101:
                v5 = @"DISPLAY_ADD_HOME_AND_WORK";

                break;
              case 9102:
                v5 = @"TAP_ADD_HOME_AND_WORK";

                break;
              case 9103:
                v5 = @"DISPLAY_ALLOW_FREQUENTS";

                break;
              case 9104:
                v5 = @"TAP_ALLOW_FREQUENTS";

                break;
              case 9105:
                v5 = @"DISPLAY_ALLOW_LOCATION";

                break;
              case 9106:
                v5 = @"TAP_ALLOW_LOCATION";

                break;
              default:
                switch(action)
                {
                  case 11001:
                    v5 = @"EXIT_MAPS_LOWER_WRIST";

                    break;
                  case 11002:
                    v5 = @"TASK_READY";

                    break;
                  case 11003:
                    v5 = @"TAP_SEARCH";

                    break;
                  case 11004:
                    v5 = @"TAP_MY_LOCATION";

                    break;
                  case 11005:
                    v5 = @"SHOW_NEARBY";

                    break;
                  case 11006:
                    v5 = @"TAP_NEARBY";

                    break;
                  case 11007:
                    v5 = @"TAP_PROACTIVE";

                    break;
                  case 11008:
                    v5 = @"FORCE_PRESS";

                    break;
                  case 11009:
                    v5 = @"TAP_CONTACTS";

                    break;
                  case 11010:
                    v5 = @"TAP_TRANSIT";

                    break;
                  case 11011:
                    v5 = @"TAP_DICTATION";

                    break;
                  case 11012:
                    v5 = @"GET_DIRECTIONS_DRIVING";

                    break;
                  case 11013:
                    v5 = @"GET_DIRECTIONS_WALKING";

                    break;
                  case 11014:
                    v5 = @"GET_DIRECTIONS_TRANSIT";

                    break;
                  case 11015:
                    v5 = @"OPEN_STANDARD_MAP";

                    break;
                  case 11016:
                    v5 = @"OPEN_TRANSIT_MAP";

                    break;
                  case 11017:
                    v5 = @"START_NAV_AUTO";

                    break;
                  case 11018:
                    v5 = @"TAP_RECENT";

                    break;
                  case 11019:
                    v5 = @"TAP_FAVORITE";

                    break;
                  case 11020:
                    v5 = @"TAP_SCRIBBLE";

                    break;
                  case 11021:
                    v5 = @"TAP_VIEW_MAP";

                    break;
                  case 11022:
                    v5 = @"TAP_VIEW_TBT";

                    break;
                  case 11023:
                    v5 = @"VIEW_ROUTE_INFO";

                    break;
                  case 11024:
                    v5 = @"NAV_UNMUTE";

                    break;
                  case 11025:
                    v5 = @"NAV_MUTE";

                    break;
                  case 11026:
                    v5 = @"GET_DIRECTIONS_CYCLING";

                    break;
                  case 11027:
                    v5 = @"TAP_SEARCH_HOME";

                    break;
                  case 11028:
                    v5 = @"ROUTE_PAUSED_ON_WATCH";

                    break;
                  case 11029:
                    v5 = @"NEXT_STOP_TAPPED_ON_WATCH";

                    break;
                  default:
                    goto LABEL_195;
                }

                break;
            }

            break;
        }

        return v5;
      }

      if (action > 16000)
      {
        switch(action)
        {
          case 17001:
            v5 = @"START_DRAG";

            break;
          case 17002:
            v5 = @"CANCEL_DRAG";

            break;
          case 17003:
            v5 = @"COMPLETE_DRAG";

            break;
          case 17004:
            v5 = @"START_DROP";

            break;
          case 17005:
            v5 = @"CANCEL_DROP";

            break;
          case 17006:
            v5 = @"COMPLETE_DROP";

            break;
          case 17007:
            v5 = @"ANNOTATION_SELECT";

            break;
          case 17008:
            v5 = @"ANNOTATION_SELECT_AUTO";

            break;
          case 17009:
            v5 = @"ANNOTATION_SELECT_LIST";

            break;
          case 17010:
            v5 = @"BROWSE_TOP_CATEGORY_DISPLAYED";

            break;
          case 17011:
            v5 = @"CALLOUT_FLYOVER_TOUR";

            break;
          case 17012:
            v5 = @"CALLOUT_INFO";

            break;
          case 17013:
            v5 = @"CALLOUT_NAV_TRANSIT";

            break;
          case 17014:
            v5 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

            break;
          case 17015:
            v5 = @"CALLOUT_VIEW_TRANSIT_LINE";

            break;
          case 17016:
            v5 = @"DIRECTIONS_SELECT";

            break;
          case 17017:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM";

            break;
          case 17018:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

            break;
          case 17019:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

            break;
          case 17020:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

            break;
          case 17021:
            v5 = @"DIRECTIONS_TRANSIT_LATER";

            break;
          case 17022:
            v5 = @"DIRECTIONS_TRANSIT_NOW";

            break;
          case 17023:
            v5 = @"FLYOVER_NOTIFICATION_DISMISS";

            break;
          case 17024:
            v5 = @"FLYOVER_NOTIFICATION_START";

            break;
          case 17025:
            v5 = @"FLYOVER_TOUR_COMPLETED";

            break;
          case 17026:
            v5 = @"FLYOVER_TOUR_END";

            break;
          case 17027:
            v5 = @"FLYOVER_TOUR_NOTIFICATION";

            break;
          case 17028:
            v5 = @"FLYOVER_TOUR_START";

            break;
          case 17029:
            v5 = @"INFO_BOOKMARKS";

            break;
          case 17030:
            v5 = @"INFO_CARD_DETACHED";

            break;
          case 17031:
            v5 = @"INFO_CONTACTS";

            break;
          case 17032:
            v5 = @"INFO_DIRECTIONS";

            break;
          case 17033:
            v5 = @"INFO_DIRECTIONS_FROM";

            break;
          case 17034:
            v5 = @"INFO_DIRECTIONS_TO";

            break;
          case 17035:
            v5 = @"INFO_DISMISS";

            break;
          case 17036:
            v5 = @"INFO_INFO";

            break;
          case 17037:
            v5 = @"INFO_PHOTOS";

            break;
          case 17038:
            v5 = @"INFO_REVIEWS";

            break;
          case 17039:
            v5 = @"INFO_SHARE";

            break;
          case 17040:
            v5 = @"INFO_SHARE_AIRDROP";

            break;
          case 17041:
            v5 = @"INFO_SHARE_FACEBOOK";

            break;
          case 17042:
            v5 = @"INFO_SHARE_MAIL";

            break;
          case 17043:
            v5 = @"INFO_SHARE_MESSAGE";

            break;
          case 17044:
            v5 = @"INFO_SHARE_TENCENTWEIBO";

            break;
          case 17045:
            v5 = @"INFO_SHARE_WEIBO";

            break;
          case 17046:
            v5 = @"INFO_YELP";

            break;
          case 17047:
            v5 = @"MAPS_APP_LAUNCH";

            break;
          case 17048:
            v5 = @"MAP_3D_OFF";

            break;
          case 17049:
            v5 = @"MAP_3D_ON";

            break;
          case 17050:
            v5 = @"MAP_OPTIONS_DROP_PIN";

            break;
          case 17051:
            v5 = @"MAP_OPTIONS_HYBRID";

            break;
          case 17052:
            v5 = @"MAP_OPTIONS_PRINT";

            break;
          case 17053:
            v5 = @"MAP_OPTIONS_REMOVE_PIN";

            break;
          case 17054:
            v5 = @"MAP_OPTIONS_SATELLITE";

            break;
          case 17055:
            v5 = @"MAP_OPTIONS_STANDARD";

            break;
          case 17056:
            v5 = @"MAP_OPTIONS_TRAFFIC_HIDE";

            break;
          case 17057:
            v5 = @"MAP_OPTIONS_TRAFFIC_SHOW";

            break;
          case 17058:
            v5 = @"MAP_OPTIONS_TRANSIT";

            break;
          case 17059:
            v5 = @"MAP_TAP_FLYOVER_CITY";

            break;
          case 17060:
            v5 = @"MAP_TAP_LINE";

            break;
          case 17061:
            v5 = @"MAP_TAP_POI_TRANSIT";

            break;
          case 17062:
            v5 = @"MAP_TAP_TRAFFIC_INCIDENT";

            break;
          case 17063:
            v5 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

            break;
          case 17064:
            v5 = @"MAP_USER_TRACKING_OFF";

            break;
          case 17065:
            v5 = @"MAP_USER_TRACKING_ON";

            break;
          case 17066:
            v5 = @"MAP_USER_TRACKING_WITH_HEADING_ON";

            break;
          case 17067:
            v5 = @"NAV_CLEAR";

            break;
          case 17068:
            v5 = @"NAV_LIST";

            break;
          case 17069:
            v5 = @"NAV_ROUTE_STEP_NEXT";

            break;
          case 17070:
            v5 = @"NAV_ROUTE_STEP_PREV";

            break;
          case 17071:
            v5 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

            break;
          case 17072:
            v5 = @"ORB_DISPLAY_MENU";

            break;
          case 17073:
            v5 = @"ORB_MENU_CALL";

            break;
          case 17074:
            v5 = @"ORB_MENU_DIRECTIONS";

            break;
          case 17075:
            v5 = @"ORB_MENU_DISMISS";

            break;
          case 17076:
            v5 = @"ORB_MENU_SHARE";

            break;
          case 17077:
            v5 = @"ORB_MENU_SHOW_PLACECARD";

            break;
          case 17078:
            v5 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

            break;
          case 17079:
            v5 = @"ORB_MENU_URL";

            break;
          case 17080:
            v5 = @"ORB_PRESS";

            break;
          case 17081:
            v5 = @"ORB_SPRINGBOARD_MARK_LOCATION";

            break;
          case 17082:
            v5 = @"ORB_SPRINGBOARD_SEARCH";

            break;
          case 17083:
            v5 = @"ORB_SPRINGBOARD_SHARE_LOCATION";

            break;
          case 17084:
            v5 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

            break;
          case 17085:
            v5 = @"RAP_PERMISSION_CANCEL";

            break;
          case 17086:
            v5 = @"RAP_PERMISSION_EMAIL_NA";

            break;
          case 17087:
            v5 = @"RAP_PERMISSION_EMAIL_OK";

            break;
          case 17088:
            v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

            break;
          case 17089:
            v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

            break;
          case 17090:
            v5 = @"RAP_PERMISSION_OK";

            break;
          case 17091:
            v5 = @"SEARCH_BEGIN";

            break;
          case 17092:
            v5 = @"SEARCH_CANCEL";

            break;
          case 17093:
            v5 = @"SEARCH_SELECT";

            break;
          case 17094:
            v5 = @"TRANSIT_LINE_SELECTION_DISMISS";

            break;
          case 17095:
            v5 = @"TRANSIT_LINE_SELECTION_VIEW";

            break;
          case 17096:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

            break;
          case 17097:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

            break;
          case 17098:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

            break;
          case 17099:
            v5 = @"UNKNOWN_ACTION";

            break;
          case 17100:
            v5 = @"INFO_SHARE_TWITTER";

            break;
          case 17101:
            v5 = @"INFO_TAP_POPULAR_APP_NEARBY";

            break;
          case 17102:
            v5 = @"INFO_DIRECTIONS_WALK";

            break;
          case 17103:
            v5 = @"INFO_DIRECTIONS_TRANSIT";

            break;
          case 17104:
            v5 = @"INFO_DIRECTIONS_DRIVE";

            break;
          case 17105:
            v5 = @"INFO_REPORT_A_PROBLEM";

            break;
          case 17106:
            v5 = @"CALLOUT_NAV";

            break;
          case 17107:
            v5 = @"RAP_PERMISSION_EMAIL_CANCEL";

            break;
          case 17108:
            v5 = @"MAP_TAP_POI";

            break;
          default:
            if (action == 16001)
            {
              v5 = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (action != 90010)
              {
                goto LABEL_195;
              }

              v5 = @"PAN_RIGHT";
            }

            break;
        }

        return v5;
      }

      if (action <= 13004)
      {
        if (action > 12007)
        {
          if (action <= 13000)
          {
            switch(action)
            {
              case 0x2EE8:
                v5 = @"ADD_SPECIAL_REQUEST";

                break;
              case 0x2EE9:
                v5 = @"CHANGE_RESERVATION";

                break;
              case 0x2EEA:
                v5 = @"LEARN_MORE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action > 13002)
          {
            if (action == 13003)
            {
              v5 = @"SELECT_LABEL";
            }

            else
            {
              v5 = @"DELETE_ADDRESS";
            }
          }

          else if (action == 13001)
          {
            v5 = @"SELECT_ADDRESS";
          }

          else
          {
            v5 = @"ADD_ADDRESS";
          }
        }

        else if (action <= 12003)
        {
          if (action == 12001)
          {
            v5 = @"VIEW_MORE_OPTIONS";
          }

          else if (action == 12002)
          {
            v5 = @"SELECT_TIME";
          }

          else
          {
            v5 = @"SHOW_NEXT_AVAILABLE";
          }
        }

        else if (action > 12005)
        {
          if (action == 12006)
          {
            v5 = @"EDIT_BOOKING";
          }

          else
          {
            v5 = @"EDIT_PHONE";
          }
        }

        else if (action == 12004)
        {
          v5 = @"DECREASE_TABLE_SIZE";
        }

        else
        {
          v5 = @"INCREASE_TABLE_SIZE";
        }
      }

      else if (action <= 14004)
      {
        if (action <= 14000)
        {
          switch(action)
          {
            case 0x32CD:
              v5 = @"EDIT_ITEMS";

              break;
            case 0x32CE:
              v5 = @"RAP_FAVORITES";

              break;
            case 0x32CF:
              v5 = @"SORT_LIST_ITEM";

              break;
            default:
              goto LABEL_195;
          }
        }

        else if (action > 14002)
        {
          if (action == 14003)
          {
            v5 = @"BOOK_RIDE";
          }

          else
          {
            v5 = @"REQUEST_RIDE";
          }
        }

        else if (action == 14001)
        {
          v5 = @"VIEW_APP";
        }

        else
        {
          v5 = @"ENABLE";
        }
      }

      else
      {
        if (action <= 14008)
        {
          if (action > 14006)
          {
            if (action == 14007)
            {
              v5 = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              v5 = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (action == 14005)
          {
            v5 = @"CONTACT_DRIVER";
          }

          else
          {
            v5 = @"CHANGE_PAYMENT";
          }

          return v5;
        }

        if (action > 15001)
        {
          if (action == 15002)
          {
            v5 = @"ORB_POP";
          }

          else
          {
            if (action != 15003)
            {
              goto LABEL_195;
            }

            v5 = @"ORB_DISMISS";
          }
        }

        else
        {
          if (action != 14009)
          {
            if (action == 15001)
            {
              v5 = @"ORB_PEEK";

              return v5;
            }

LABEL_195:
            v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_196:

            return v5;
          }

          v5 = @"SUBMIT_TRIP_FEEDBACK";
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_whiteListedBrowseCategoryActionAsString:(int)a3
{
  if (a3 == 2004)
  {
    action = self->_action;
    if (action <= 3000)
    {
      if (action > 1500)
      {
        if (action <= 1503)
        {
          if (action == 1501)
          {
            v5 = @"TAP_DIRECTIONS";
          }

          else if (action == 1502)
          {
            v5 = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            v5 = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(action)
          {
            case 2001:
              v5 = @"TAP_SEARCH_FIELD";

              return v5;
            case 2002:
              v5 = @"CLEAR_SEARCH";

              return v5;
            case 2003:
              v5 = @"CANCEL_SEARCH";

              return v5;
            case 2004:
              v5 = @"TAP_BROWSE_TOP_CATEGORY";

              return v5;
            case 2005:
              v5 = @"TAP_BROWSE_SUB_CATEGORY";

              return v5;
            case 2006:
              v5 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

              return v5;
            case 2007:
              v5 = @"TAP_LIST_ITEM";

              return v5;
            case 2008:
              v5 = @"SHARE_LIST_ITEM";

              return v5;
            case 2009:
              v5 = @"DELETE_LIST_ITEM";

              return v5;
            case 2010:
              v5 = @"EDIT_LIST_ITEM";

              return v5;
            case 2011:
              v5 = @"REFRESH_SEARCH";

              return v5;
            case 2012:
              v5 = @"REVEAL_LIST_ITEM_ACTIONS";

              return v5;
            case 2013:
              v5 = @"HIDE_LIST_ITEM_ACTIONS";

              return v5;
            case 2014:
              v5 = @"TAP_SEARCH_BUTTON";

              return v5;
            case 2015:
              v5 = @"SHOW_SEARCH_RESULTS";

              return v5;
            case 2016:
              v5 = @"SHOW_REFRESH_SEARCH";

              return v5;
            case 2017:
              v5 = @"PASTE_TEXT";

              return v5;
            case 2018:
              v5 = @"TAP_LIST_SUB_ITEM";

              return v5;
            case 2019:
              v5 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2020:
              v5 = @"TAP_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2021:
              v5 = @"CLOSE_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2022:
              v5 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2023:
              v5 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2024:
              v5 = @"RETAINED_QUERY";

              return v5;
            case 2025:
              v5 = @"TAP_RECENT_AC_SUGGESTION";

              return v5;
            case 2026:
              v5 = @"CLEAR_RECENT_AC_SUGGESTION";

              return v5;
            case 2027:
              v5 = @"DELETE_RECENT_AC_SUGGESTION";

              return v5;
            case 2028:
            case 2029:
              goto LABEL_195;
            case 2030:
              v5 = @"TAP_BROWSE_NEARBY_CATEGORY";

              return v5;
            case 2031:
              v5 = @"TAP_SUBACTION";

              return v5;
            case 2032:
              v5 = @"TAP_QUERY_BUILDING_ARROW";

              return v5;
            case 2033:
              v5 = @"CLICK_ON_EDIT_SEARCH";

              return v5;
            case 2034:
              v5 = @"REMOVE_CLIENT_AC_SUGGESTION";

              return v5;
            case 2035:
              v5 = @"SHARE_CLIENT_AC_SUGGESTION";

              return v5;
            case 2036:
              v5 = @"TAP_ON_MORE_RESULTS";

              return v5;
            case 2037:
              v5 = @"SHARE_ITEM";

              return v5;
            case 2038:
              v5 = @"HIDE_ITEM";

              return v5;
            case 2039:
              v5 = @"TAP_SUGGESTED_ITEM";

              return v5;
            case 2040:
              v5 = @"SHARE_SUGGESTED_ITEM";

              return v5;
            case 2041:
              v5 = @"HIDE_SUGGESTED_ITEM";

              return v5;
            case 2042:
              v5 = @"ADD_HOME_FAVORITE";

              return v5;
            case 2043:
              v5 = @"ADD_WORK_FAVORITE";

              return v5;
            case 2044:
              v5 = @"ADD_FAVORITE";

              return v5;
            case 2045:
              v5 = @"VIEW_FAVORITES_LIST";

              return v5;
            case 2046:
              v5 = @"TAP_HOME_FAVORITE";

              return v5;
            case 2047:
              v5 = @"TAP_WORK_FAVORITE";

              return v5;
            case 2048:
              v5 = @"TAP_CAR_FAVORITE";

              return v5;
            case 2049:
              v5 = @"TAP_FAVORITE_ITEM";

              return v5;
            case 2050:
              v5 = @"CREATE_HOME_FAVORITE";

              return v5;
            case 2051:
              v5 = @"CREATE_WORK_FAVORITE";

              return v5;
            case 2052:
              v5 = @"CREATE_FAVORITE";

              return v5;
            case 2053:
              v5 = @"SUBMIT_FAVORITE_EDIT";

              return v5;
            case 2054:
              v5 = @"ADD_RECOMMENDED_FAVORITE";

              return v5;
            case 2055:
              v5 = @"EDIT_FAVORITE";

              return v5;
            case 2056:
              v5 = @"REMOVE_FAVORITE";

              return v5;
            case 2057:
              v5 = @"SHARE_FAVORITE";

              return v5;
            case 2058:
              v5 = @"EDIT_FAVORITES";

              return v5;
            case 2059:
              v5 = @"ADD_FAVORITE_PLACE";

              return v5;
            case 2060:
              v5 = @"REMOVE_FAVORITE_PLACE";

              return v5;
            case 2061:
              v5 = @"CHANGE_HOME_ADDRESS";

              return v5;
            case 2062:
              v5 = @"CHANGE_WORK_ADDRESS";

              return v5;
            case 2063:
              v5 = @"REFINE_LOCATION";

              return v5;
            case 2064:
              v5 = @"TAP_RECENTLY_VIEWED_ITEM";

              return v5;
            case 2065:
              v5 = @"SHOW_COLLECTION_LIST";

              return v5;
            case 2066:
              v5 = @"SHOW_FAVORITES_COLLECTION";

              return v5;
            case 2067:
              v5 = @"SHOW_COLLECTION";

              return v5;
            case 2068:
              v5 = @"TAP_COLLECTION_ITEM";

              return v5;
            case 2069:
              v5 = @"SHARE_COLLECTION_ITEM";

              return v5;
            case 2070:
              v5 = @"REMOVE_COLLECTION_ITEM";

              return v5;
            case 2071:
              v5 = @"SAVE_SHARED_COLLECTION";

              return v5;
            case 2072:
              v5 = @"CREATE_NEW_COLLECTION";

              return v5;
            case 2073:
              v5 = @"SAVE_TO_COLLECTION";

              return v5;
            case 2074:
              v5 = @"EDIT_PHOTO";

              return v5;
            case 2075:
              v5 = @"SORT_BY_NAME";

              return v5;
            case 2076:
              v5 = @"SORT_BY_DISTANCE";

              return v5;
            case 2077:
              v5 = @"SORT_BY_RECENT";

              return v5;
            case 2078:
              v5 = @"AUTO_SHARE_ETA";

              return v5;
            case 2079:
              v5 = @"CANCEL_AUTO_SHARE_ETA";

              return v5;
            case 2080:
              v5 = @"MAP_SEARCH";

              return v5;
            case 2081:
              v5 = @"DELETE_COLLECTION";

              return v5;
            case 2082:
              v5 = @"SHARE_COLLECTION";

              return v5;
            case 2083:
              v5 = @"SHOW_TRANSIT_LINES_COLLECTION";

              return v5;
            case 2084:
              v5 = @"SHOW_MY_PLACES";

              return v5;
            case 2085:
              v5 = @"SHOW_ALL_PLACES";

              return v5;
            case 2086:
              v5 = @"TAP_RECENT_QUERY";

              return v5;
            case 2087:
              v5 = @"TAP_QUERY_SUGGESTION";

              return v5;
            case 2088:
              v5 = @"DELETE_CURATED_COLLECTION";

              return v5;
            case 2089:
              v5 = @"FOLLOW";

              return v5;
            case 2090:
              v5 = @"PUNCH_IN";

              return v5;
            case 2091:
              v5 = @"SAVE_CURATED_COLLECTION";

              return v5;
            case 2092:
              v5 = @"SCROLL_LEFT_COLLECTIONS";

              return v5;
            case 2093:
              v5 = @"SCROLL_RIGHT_COLLECTIONS";

              return v5;
            case 2094:
              v5 = @"SEE_ALL_CURATED_COLLECTION";

              return v5;
            case 2095:
              v5 = @"SEE_ALL_PUBLISHERS";

              return v5;
            case 2096:
              v5 = @"SHARE_CURATED_COLLECTION";

              return v5;
            case 2097:
              v5 = @"SHARE_PUBLISHER";

              return v5;
            case 2098:
              v5 = @"SHOW_MORE_COLLECTION";

              return v5;
            case 2099:
              v5 = @"TAP_CURATED_COLLECTION";

              return v5;
            case 2100:
              v5 = @"TAP_FEATURED_COLLECTIONS";

              return v5;
            case 2101:
              v5 = @"TAP_LOCATION";

              return v5;
            case 2102:
              v5 = @"TAP_PUBLISHER";

              return v5;
            case 2103:
              v5 = @"TAP_PUBLISHER_APP";

              return v5;
            case 2104:
              v5 = @"TAP_PUBLISHER_COLLECTIONS";

              return v5;
            case 2105:
              v5 = @"UNFOLLOW";

              return v5;
            case 2106:
              v5 = @"CHANGE_SCHOOL_ADDRESS";

              return v5;
            case 2107:
              v5 = @"ADD_VEHICLE";

              return v5;
            case 2108:
              v5 = @"DISPLAY_VIRTUAL_GARAGE";

              return v5;
            case 2109:
              v5 = @"ENTER_VIRTUAL_GARAGE";

              return v5;
            case 2110:
              v5 = @"PUNCH_OUT_MANUFACTURER_APP";

              return v5;
            case 2111:
              v5 = @"REMOVE_LICENSE_PLATE";

              return v5;
            case 2112:
              v5 = @"REMOVE_VEHICLE";

              return v5;
            case 2113:
              v5 = @"SELECT_VEHICLE";

              return v5;
            case 2114:
              v5 = @"SUBMIT_LICENSE_PLATE";

              return v5;
            case 2115:
              v5 = @"TAP_ADD_LICENSE_PLATE";

              return v5;
            case 2116:
              v5 = @"TAP_ADD_NEW_CAR";

              return v5;
            case 2117:
              v5 = @"TAP_BANNER";

              return v5;
            case 2118:
              v5 = @"TAP_CONNECT";

              return v5;
            case 2119:
              v5 = @"TAP_CONTINUE";

              return v5;
            case 2120:
              v5 = @"TAP_EDIT";

              return v5;
            case 2121:
              v5 = @"TAP_NAME";

              return v5;
            case 2122:
              v5 = @"TAP_NOT_NOW";

              return v5;
            case 2123:
              v5 = @"TAP_OTHER_VEHICLE";

              return v5;
            case 2124:
              v5 = @"TAP_REMOVE_LICENSE_PLATE";

              return v5;
            case 2125:
              v5 = @"TAP_UPDATE_PLATE_NUMBER";

              return v5;
            case 2126:
              v5 = @"TAP_VEHICLE";

              return v5;
            case 2127:
              v5 = @"TAP_VEHICLE_NAME";

              return v5;
            case 2128:
              v5 = @"UPDATE_NAME";

              return v5;
            case 2129:
              v5 = @"DONE_TAKING_PHOTO";

              return v5;
            case 2130:
              v5 = @"ENABLE_SHOW_PHOTO_NAME";

              return v5;
            case 2131:
              v5 = @"SUBMIT_PHOTO";

              return v5;
            case 2132:
              v5 = @"USE_PHOTO";

              return v5;
            case 2133:
              v5 = @"ADD_RECOMMENDATION_TO_MAPS";

              return v5;
            case 2134:
              v5 = @"CANCEL_PHOTO_SUBMISSION";

              return v5;
            case 2135:
              v5 = @"CLOSE_RECOMMENDATION_CARD";

              return v5;
            case 2136:
              v5 = @"EDIT_RATING";

              return v5;
            case 2137:
              v5 = @"PROMPTED_TO_ADD_PHOTO";

              return v5;
            case 2138:
              v5 = @"PROMPTED_TO_ADD_RATING";

              return v5;
            case 2139:
              v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

              return v5;
            case 2140:
              v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

              return v5;
            case 2141:
              v5 = @"RETAKE_PHOTO";

              return v5;
            case 2142:
              v5 = @"REVEAL_RECOMMENDATION_CARD";

              return v5;
            case 2143:
              v5 = @"SUBMIT_NEGATIVE_RATING";

              return v5;
            case 2144:
              v5 = @"SUBMIT_POSITIVE_RATING";

              return v5;
            case 2145:
              v5 = @"TAP_CHOOSING_PHOTO";

              return v5;
            case 2146:
              v5 = @"TAP_TAKE_NEW_PHOTO";

              return v5;
            case 2147:
              v5 = @"TAP_TO_ADD_PHOTO";

              return v5;
            case 2148:
              v5 = @"CANCEL_INCIDENT_REPORT";

              return v5;
            case 2149:
              v5 = @"INCIDENT_REPORT_SUBMITTED";

              return v5;
            case 2150:
              v5 = @"REPORTED_INCIDENT_NOT_RECEIVED";

              return v5;
            case 2151:
              v5 = @"REPORTED_INCIDENT_RECEIVED";

              return v5;
            case 2152:
              v5 = @"REPORT_INCIDENT";

              return v5;
            case 2153:
              v5 = @"SELECT_INCIDENT_TYPE";

              return v5;
            case 2154:
              v5 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

              return v5;
            case 2155:
              v5 = @"TAP_TO_START_REPORT_INCIDENT";

              return v5;
            case 2156:
              v5 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

              return v5;
            case 2157:
              v5 = @"ATTEMPT_VLF_CORRECTION";

              return v5;
            case 2158:
              v5 = @"DISMISS_VLF_PROMPT";

              return v5;
            case 2159:
              v5 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

              return v5;
            case 2160:
              v5 = @"VLF_CORRECTION_FAILED";

              return v5;
            case 2161:
              v5 = @"VLF_CORRECTION_SUCCESSFUL";

              return v5;
            case 2162:
              v5 = @"ENABLE_WIDGET_SUGGESTIONS";

              return v5;
            case 2163:
              v5 = @"DISPLAY_CZ_ADVISORY";

              return v5;
            case 2164:
              v5 = @"PUNCH_OUT_URL_PAY";

              return v5;
            case 2165:
              v5 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

              return v5;
            case 2166:
              v5 = @"DELETE_ITEM";

              return v5;
            case 2167:
              v5 = @"CANCEL_REMOVE";

              return v5;
            case 2168:
              v5 = @"DELETE_SUGGESTION";

              return v5;
            case 2169:
              v5 = @"ADD_SCHOOL_FAVORITE";

              return v5;
            case 2170:
              v5 = @"GO_TO_WEBSITE";

              return v5;
            case 2171:
              v5 = @"TRY_AGAIN";

              return v5;
            case 2172:
              v5 = @"CHECK_AUTO_RECORD_WORKOUT";

              return v5;
            case 2173:
              v5 = @"CHECK_EBIKE";

              return v5;
            case 2174:
              v5 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

              return v5;
            case 2175:
              v5 = @"DISPLAY_CYCLING_DEFAULT_OPTION";

              return v5;
            case 2176:
              v5 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

              return v5;
            case 2177:
              v5 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

              return v5;
            case 2178:
              v5 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

              return v5;
            case 2179:
              v5 = @"TAP_AUTOMATIC_WORKOUT_OPTION";

              return v5;
            case 2180:
              v5 = @"TAP_CYCLING_DEFAULT_OPTION";

              return v5;
            case 2181:
              v5 = @"TAP_CYCLING_NO_BIKE_ADVISORY";

              return v5;
            case 2182:
              v5 = @"TAP_CYCLING_STAIRS_ADVISORY";

              return v5;
            case 2183:
              v5 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

              return v5;
            case 2184:
              v5 = @"UNCHECK_AUTO_RECORD_WORKOUT";

              return v5;
            case 2185:
              v5 = @"UNCHECK_EBIKE";

              return v5;
            case 2186:
              v5 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

              return v5;
            case 2187:
              v5 = @"DISPLAY_LPR_ADVISORY";

              return v5;
            case 2188:
              v5 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

              return v5;
            case 2189:
              v5 = @"CREATE_WIDGET";

              return v5;
            case 2190:
              v5 = @"REVEAL_WIDGET_TRAY";

              return v5;
            case 2191:
              v5 = @"LPR_ERROR_CODE";

              return v5;
            case 2192:
              v5 = @"TAP_SEE_ALL_RECENTLY_VIEWED";

              return v5;
            case 2193:
              v5 = @"TAP_CLEAR_RECENTLY_VIEWED";

              return v5;
            case 2194:
              v5 = @"LPR_HARD_STOP";

              return v5;
            case 2195:
              v5 = @"TAP_PUBLISHER_SUBACTION";

              return v5;
            case 2196:
              v5 = @"CARPLAY_DISPLAY_ACTIVATED";

              return v5;
            case 2197:
              v5 = @"CARPLAY_DISPLAY_DEACTIVATED";

              return v5;
            case 2198:
              v5 = @"TAP_FEATURED_COLLECTION";

              return v5;
            case 2199:
              v5 = @"SCROLL_FEATURED_COLLECTION_FORWARD";

              return v5;
            case 2200:
              v5 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

              return v5;
            default:
              if (action == 1504)
              {
                v5 = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (action != 1505)
                {
                  goto LABEL_195;
                }

                v5 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        v5 = @"UI_ACTION_UNKNOWN";
        switch(action)
        {
          case 0:
            goto LABEL_196;
          case 1:
            v5 = @"PULL_UP";

            break;
          case 2:
            v5 = @"PULL_DOWN";

            break;
          case 3:
            v5 = @"TAP";

            break;
          case 4:
            v5 = @"CLOSE";

            break;
          case 5:
            v5 = @"SWIPE_PREV";

            break;
          case 6:
            v5 = @"SWIPE_NEXT";

            break;
          case 7:
            v5 = @"SCROLL_UP";

            break;
          case 8:
            v5 = @"SCROLL_DOWN";

            break;
          case 9:
          case 23:
          case 24:
          case 346:
          case 347:
          case 348:
          case 349:
          case 350:
          case 351:
          case 352:
          case 353:
          case 354:
          case 355:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 536:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 545:
          case 546:
          case 547:
          case 548:
          case 549:
          case 550:
          case 551:
          case 552:
          case 553:
          case 554:
          case 555:
          case 556:
          case 557:
          case 558:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 571:
          case 572:
          case 573:
          case 574:
          case 575:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 590:
          case 591:
          case 592:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
          case 601:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 607:
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
          case 621:
          case 622:
          case 623:
          case 624:
          case 625:
          case 626:
          case 627:
          case 628:
          case 629:
          case 630:
          case 631:
          case 632:
          case 633:
          case 634:
          case 635:
          case 636:
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
          case 642:
          case 643:
          case 644:
          case 645:
          case 646:
          case 647:
          case 648:
          case 649:
          case 650:
          case 651:
          case 652:
          case 653:
          case 654:
          case 655:
          case 656:
          case 657:
          case 658:
          case 659:
          case 660:
          case 661:
          case 662:
          case 663:
          case 664:
          case 665:
          case 666:
          case 667:
          case 668:
          case 669:
          case 670:
          case 671:
          case 672:
          case 673:
          case 674:
          case 675:
          case 676:
          case 677:
          case 678:
          case 679:
          case 680:
          case 681:
          case 682:
          case 683:
          case 684:
          case 685:
          case 686:
          case 687:
          case 688:
          case 689:
          case 690:
          case 691:
          case 692:
          case 693:
          case 694:
          case 695:
          case 696:
          case 697:
          case 698:
          case 699:
          case 700:
          case 701:
          case 702:
          case 703:
          case 704:
          case 705:
          case 706:
          case 707:
          case 708:
          case 709:
          case 710:
          case 711:
          case 712:
          case 713:
          case 714:
          case 715:
          case 716:
          case 717:
          case 718:
          case 719:
          case 720:
          case 721:
          case 722:
          case 723:
          case 724:
          case 725:
          case 726:
          case 727:
          case 728:
          case 729:
          case 730:
          case 731:
          case 732:
          case 733:
          case 734:
          case 735:
          case 736:
          case 737:
          case 738:
          case 739:
          case 740:
          case 741:
          case 742:
          case 743:
          case 744:
          case 745:
          case 746:
          case 747:
          case 748:
          case 749:
          case 750:
          case 751:
          case 752:
          case 753:
          case 754:
          case 755:
          case 756:
          case 757:
          case 758:
          case 759:
          case 760:
          case 761:
          case 762:
          case 763:
          case 764:
          case 765:
          case 766:
          case 767:
          case 768:
          case 769:
          case 770:
          case 771:
          case 772:
          case 773:
          case 774:
          case 775:
          case 776:
          case 777:
          case 778:
          case 779:
          case 780:
          case 781:
          case 782:
          case 783:
          case 784:
          case 785:
          case 786:
          case 787:
          case 788:
          case 789:
          case 790:
          case 791:
          case 792:
          case 793:
          case 794:
          case 795:
          case 796:
          case 797:
          case 798:
          case 799:
          case 800:
          case 801:
          case 802:
          case 803:
          case 804:
          case 805:
          case 806:
          case 807:
          case 808:
          case 809:
          case 810:
          case 811:
          case 812:
          case 813:
          case 814:
          case 815:
          case 816:
          case 817:
          case 818:
          case 819:
          case 820:
          case 821:
          case 822:
          case 823:
          case 824:
          case 825:
          case 826:
          case 827:
          case 828:
          case 829:
          case 830:
          case 831:
          case 832:
          case 833:
          case 834:
          case 835:
          case 836:
          case 837:
          case 838:
          case 839:
          case 840:
          case 841:
          case 842:
          case 843:
          case 844:
          case 845:
          case 846:
          case 847:
          case 848:
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 856:
          case 857:
          case 858:
          case 859:
          case 860:
          case 861:
          case 862:
          case 863:
          case 864:
          case 865:
          case 866:
          case 867:
          case 868:
          case 869:
          case 870:
          case 871:
          case 872:
          case 873:
          case 874:
          case 875:
          case 876:
          case 877:
          case 878:
          case 879:
          case 880:
          case 881:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 888:
          case 889:
          case 890:
          case 891:
          case 892:
          case 893:
          case 894:
          case 895:
          case 896:
          case 897:
          case 898:
          case 899:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 905:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 915:
          case 916:
          case 917:
          case 918:
          case 919:
          case 920:
          case 921:
          case 922:
          case 923:
          case 924:
          case 925:
          case 926:
          case 927:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 934:
          case 935:
          case 936:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 947:
          case 948:
          case 949:
          case 950:
          case 951:
          case 952:
          case 953:
          case 954:
          case 955:
          case 956:
          case 957:
          case 958:
          case 959:
          case 960:
          case 961:
          case 962:
          case 963:
          case 964:
          case 965:
          case 966:
          case 967:
          case 968:
          case 969:
          case 970:
          case 971:
          case 972:
          case 973:
          case 974:
          case 975:
          case 976:
          case 977:
          case 978:
          case 979:
          case 980:
          case 981:
          case 982:
          case 983:
          case 984:
          case 985:
          case 986:
          case 987:
          case 988:
          case 989:
          case 990:
          case 991:
          case 992:
          case 993:
          case 994:
          case 995:
          case 996:
          case 997:
          case 998:
          case 999:
          case 1000:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1019:
          case 1021:
          case 1022:
          case 1023:
          case 1024:
          case 1025:
          case 1026:
          case 1027:
          case 1028:
          case 1029:
            goto LABEL_195;
          case 10:
            v5 = @"SHOW_MORE";

            break;
          case 11:
            v5 = @"SHOW_LESS";

            break;
          case 12:
            v5 = @"SWIPE_LEFT";

            break;
          case 13:
            v5 = @"SWIPE_RIGHT";

            break;
          case 14:
            v5 = @"MINIMIZE";

            break;
          case 15:
            v5 = @"TAP_PREV";

            break;
          case 16:
            v5 = @"TAP_NEXT";

            break;
          case 17:
            v5 = @"SUBMIT";

            break;
          case 18:
            v5 = @"CANCEL";

            break;
          case 19:
            v5 = @"ENTER_MAPS";

            break;
          case 20:
            v5 = @"EXIT_MAPS";

            break;
          case 21:
            v5 = @"REVEAL";

            break;
          case 22:
            v5 = @"OPEN_NEW_TAB";

            break;
          case 25:
            v5 = @"BACK";

            break;
          case 26:
            v5 = @"ACTIVATE";

            break;
          case 27:
            v5 = @"DEACTIVATE";

            break;
          case 28:
            v5 = @"AGREE";

            break;
          case 29:
            v5 = @"DISAGREE";

            break;
          case 30:
            v5 = @"SKIP_ANSWER";

            break;
          case 31:
            v5 = @"EXPAND";

            break;
          case 32:
            v5 = @"COLLAPSE";

            break;
          case 33:
            v5 = @"ENTER";

            break;
          case 34:
            v5 = @"EXIT";

            break;
          case 35:
            v5 = @"SCROLL_UP_INDEX_BAR";

            break;
          case 36:
            v5 = @"SCROLL_DOWN_INDEX_BAR";

            break;
          case 37:
            v5 = @"TOGGLE_ON";

            break;
          case 38:
            v5 = @"TOGGLE_OFF";

            break;
          case 39:
            v5 = @"LONG_PRESS";

            break;
          case 40:
            v5 = @"CLICK";

            break;
          case 41:
            v5 = @"TAP_DONE";

            break;
          case 42:
            v5 = @"TAP_CLOSE";

            break;
          case 43:
            v5 = @"SCROLL_LEFT";

            break;
          case 44:
            v5 = @"SCROLL_RIGHT";

            break;
          case 45:
            v5 = @"DISPLAY";

            break;
          case 46:
            v5 = @"OPEN_IN_APP";

            break;
          case 47:
            v5 = @"CONCEAL";

            break;
          case 48:
            v5 = @"TAP_DELETE";

            break;
          case 49:
            v5 = @"TAP_FILTER";

            break;
          case 50:
            v5 = @"TAP_SECONDARY_BUTTON";

            break;
          case 51:
            v5 = @"TAP_WIDGET_FOOD";

            break;
          case 52:
            v5 = @"TAP_WIDGET_GAS";

            break;
          case 53:
            v5 = @"TAP_WIDGET_LOADING";

            break;
          case 54:
            v5 = @"TAP_WIDGET_SEARCH";

            break;
          case 55:
            v5 = @"TAP_WIDGET_STORES";

            break;
          case 56:
            v5 = @"DISPLAY_ALLOW_ONCE_PROMPT";

            break;
          case 57:
            v5 = @"SHARE_CURRENT_LOCATION";

            break;
          case 58:
            v5 = @"SHARE_PHOTO";

            break;
          case 59:
            v5 = @"TAP_KEEP_OFF";

            break;
          case 60:
            v5 = @"TAP_PHOTO_CATEGORY";

            break;
          case 61:
            v5 = @"TAP_PRECISE_LOCATION_OFF_BANNER";

            break;
          case 62:
            v5 = @"TAP_TURN_ON";

            break;
          case 63:
            v5 = @"DISPLAY_CYCLING_ANNOTATION";

            break;
          case 64:
            v5 = @"DISPLAY_DRIVING_DEFAULT_OPTION";

            break;
          case 65:
            v5 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

            break;
          case 66:
            v5 = @"DISPLAY_WALKING_DEFAULT_OPTION";

            break;
          case 67:
            v5 = @"TAP_CYCLING_ANNOTATION";

            break;
          case 68:
            v5 = @"TAP_DRIVING_DEFAULT_OPTION";

            break;
          case 69:
            v5 = @"TAP_TRANSIT_DEFAULT_OPTION";

            break;
          case 70:
            v5 = @"TAP_WALKING_DEFAULT_OPTION";

            break;
          case 71:
            v5 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

            break;
          case 72:
            v5 = @"TAP_RIDESHARE_DEFAULT_OPTION";

            break;
          case 73:
            v5 = @"TAP_PERSONAL_COLLECTION";

            break;
          case 74:
            v5 = @"RESUME_ROUTE";

            break;
          case 75:
            v5 = @"DISPLAY_OUT_OF_RANGE_ALERT";

            break;
          case 76:
            v5 = @"TAP_ALLOW_ONCE";

            break;
          case 77:
            v5 = @"TAP_DO_NOT_ALLOW";

            break;
          case 78:
            v5 = @"ADD_RECCOMENDED_FAVORITE";

            break;
          case 79:
            v5 = @"ADD_RECOMMENDED_HOME_FAVORITE";

            break;
          case 80:
            v5 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 81:
            v5 = @"ADD_RECOMMENDED_WORK_FAVORITE";

            break;
          case 82:
            v5 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

            break;
          case 83:
            v5 = @"CREATE_SCHOOL_FAVORITE";

            break;
          case 84:
            v5 = @"TAP_SCHOOL_FAVORITE";

            break;
          case 85:
            v5 = @"SELECT_ROUTING_TYPE_CYCLING";

            break;
          case 86:
            v5 = @"REPORT_PHOTO";

            break;
          case 87:
            v5 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

            break;
          case 88:
            v5 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

            break;
          case 89:
            v5 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

            break;
          case 90:
            v5 = @"CREATE_RECOMMENDED_FAVORITE";

            break;
          case 91:
            v5 = @"CREATE_RECOMMENDED_HOME_FAVORITE";

            break;
          case 92:
            v5 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 93:
            v5 = @"CREATE_RECOMMENDED_WORK_FAVORITE";

            break;
          case 94:
            v5 = @"TAP_SMALL_WIDGET_ITEM";

            break;
          case 95:
            v5 = @"TAP_MEDIUM_WIDGET_ITEM";

            break;
          case 96:
            v5 = @"TAP_LARGE_WIDGET_ITEM";

            break;
          case 97:
            v5 = @"DISPLAY_ARP_TIPKIT";

            break;
          case 98:
            v5 = @"NEXT";

            break;
          case 99:
            v5 = @"TAP_RATE_AND_ADD_PHOTOS";

            break;
          case 100:
            v5 = @"TAP_TO_ADD_POSITIVE_RATING";

            break;
          case 101:
            v5 = @"TAP_TO_ADD_NEGATIVE_RATING";

            break;
          case 102:
            v5 = @"TAP_ACTIVE_SHARING_NOTIFICATION";

            break;
          case 103:
            v5 = @"INVOKE_SIRI_PROMPT";

            break;
          case 104:
            v5 = @"ETA_SHARED_SUCCESSFULLY";

            break;
          case 105:
            v5 = @"ENDED_ETA_SHARE_SUCCESSFULLY";

            break;
          case 106:
            v5 = @"CLEAR_INCIDENT";

            break;
          case 107:
            v5 = @"CONFIRM_INCIDENT";

            break;
          case 108:
            v5 = @"DISMISS_INCIDENT";

            break;
          case 109:
            v5 = @"INCIDENT_ALERT_TIMEOUT";

            break;
          case 110:
            v5 = @"INCIDENT_ALERT_TRAY_SHOWN";

            break;
          case 111:
            v5 = @"INCIDENT_CARD_SHOWN";

            break;
          case 112:
            v5 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

            break;
          case 113:
            v5 = @"INCIDENT_REPORT_TRAY_SHOWN";

            break;
          case 114:
            v5 = @"NAV_TRAY_DISCOVERY_SHOWN";

            break;
          case 115:
            v5 = @"TAP_TO_REPORT_INCIDENT";

            break;
          case 116:
            v5 = @"TAP_SHORTCUT";

            break;
          case 117:
            v5 = @"BLOCK_CONTACT";

            break;
          case 118:
            v5 = @"TAP_TO_ADD_RATING";

            break;
          case 119:
            v5 = @"AR_WALKING_LOCALIZATION_FAILED";

            break;
          case 120:
            v5 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

            break;
          case 121:
            v5 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

            break;
          case 122:
            v5 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

            break;
          case 123:
            v5 = @"ATTEMPT_AR_WALKING_LOCALIZATION";

            break;
          case 124:
            v5 = @"RAISE_TO_ENTER_AR_WALKING";

            break;
          case 125:
            v5 = @"TAP_DISMISS";

            break;
          case 126:
            v5 = @"TAP_ENTER_AR_WALKING";

            break;
          case 127:
            v5 = @"TAP_OK";

            break;
          case 128:
            v5 = @"TAP_TRY_AGAIN";

            break;
          case 129:
            v5 = @"TAP_TURN_ON_IN_SETTINGS";

            break;
          case 130:
            v5 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

            break;
          case 131:
            v5 = @"VLF_CORRECTION_USER_ABANDON";

            break;
          case 132:
            v5 = @"AREA_EVENTS_ALERT";

            break;
          case 133:
            v5 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

            break;
          case 134:
            v5 = @"ACCEPT_EVENT_REROUTE";

            break;
          case 135:
            v5 = @"DISPLAY_AREA_EVENTS_ADVISORY";

            break;
          case 136:
            v5 = @"DISMISS_EVENT_REROUTE";

            break;
          case 137:
            v5 = @"PUNCH_OUT_EVENTS_LINK";

            break;
          case 138:
            v5 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

            break;
          case 139:
            v5 = @"ADJUST_GUIDANCE_SETTINGS";

            break;
          case 140:
            v5 = @"HIDE_DETAILS";

            break;
          case 141:
            v5 = @"SELECT_VOICE_GUIDANCE_ON";

            break;
          case 142:
            v5 = @"SELECT_VOICE_GUIDANCE_OFF";

            break;
          case 143:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

            break;
          case 144:
            v5 = @"TAP_TEXT_LABEL";

            break;
          case 145:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

            break;
          case 146:
            v5 = @"TAP_EXIT";

            break;
          case 147:
            v5 = @"TAP_CITY_MENU";

            break;
          case 148:
            v5 = @"CHECK_AVOID_TOLLS";

            break;
          case 149:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

            break;
          case 150:
            v5 = @"TAP_ICLOUD";

            break;
          case 151:
            v5 = @"CHECK_AVOID_HIGHWAYS";

            break;
          case 152:
            v5 = @"TAP_FAVORITES";

            break;
          case 153:
            v5 = @"SELECT_DISTANCE_IN_KM";

            break;
          case 154:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

            break;
          case 155:
            v5 = @"OPEN_FULL_CARD_FILTER";

            break;
          case 156:
            v5 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

            break;
          case 157:
            v5 = @"OPEN_SINGLE_CARD_FILTER";

            break;
          case 158:
            v5 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 159:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

            break;
          case 160:
            v5 = @"SESSIONLESS_REVEAL";

            break;
          case 161:
            v5 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

            break;
          case 162:
            v5 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

            break;
          case 163:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

            break;
          case 164:
            v5 = @"ENTER_RAP_REPORT_MENU";

            break;
          case 165:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

            break;
          case 166:
            v5 = @"TAP_MY_VEHICLES";

            break;
          case 167:
            v5 = @"SUBMIT_SINGLE_CARD_FILTER";

            break;
          case 168:
            v5 = @"SUBMIT_FULL_CARD_FILTER";

            break;
          case 169:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

            break;
          case 170:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

            break;
          case 171:
            v5 = @"TAP_EXPLORE_CURATED_COLELCTIONS";

            break;
          case 172:
            v5 = @"TAP_ACCOUNT";

            break;
          case 173:
            v5 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

            break;
          case 174:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

            break;
          case 175:
            v5 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

            break;
          case 176:
            v5 = @"RESULT_REFINEMENT_TOGGLE_OFF";

            break;
          case 177:
            v5 = @"TAP_CITY_CURATED_COLLECTIONS";

            break;
          case 178:
            v5 = @"TAP_REPORTS";

            break;
          case 179:
            v5 = @"TAP_RATINGS";

            break;
          case 180:
            v5 = @"TAP_EXPLORE_CURATED_COLLECTIONS";

            break;
          case 181:
            v5 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

            break;
          case 182:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

            break;
          case 183:
            v5 = @"SELECT_DISTANCE_IN_MILES";

            break;
          case 184:
            v5 = @"TAP_PRIVACY_STATEMENT";

            break;
          case 185:
            v5 = @"TAP_MAPS_SETTINGS";

            break;
          case 186:
            v5 = @"CANCEL_FULL_CARD_FILTER";

            break;
          case 187:
            v5 = @"TAP_LATEST_CURATED_COLLECTION";

            break;
          case 188:
            v5 = @"TAP_TEMPORAL_CURATED_COLLECTION";

            break;
          case 189:
            v5 = @"UNCHECK_AVOID_TOLLS";

            break;
          case 190:
            v5 = @"UNSELECT_SEARCH_REFINEMENT";

            break;
          case 191:
            v5 = @"TAP_RATING";

            break;
          case 192:
            v5 = @"TAP_ICLOUD_SIGN_IN";

            break;
          case 193:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

            break;
          case 194:
            v5 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

            break;
          case 195:
            v5 = @"UNCHECK_AVOID_HIGHWAYS";

            break;
          case 196:
            v5 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

            break;
          case 197:
            v5 = @"RESULT_REFINEMENT_TOGGLE_ON";

            break;
          case 198:
            v5 = @"TAP_CONTEXT_LINE_HYPERLINK";

            break;
          case 199:
            v5 = @"TAP_MY_GUIDES";

            break;
          case 200:
            v5 = @"SELECT_SEARCH_REFINEMENT";

            break;
          case 201:
            v5 = @"SESSIONLESS_TAP_ACCOUNT";

            break;
          case 202:
            v5 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 203:
            v5 = @"TAP_TRAVEL_PREFERENCES";

            break;
          case 204:
            v5 = @"SHOW_CURATED_COLLECTION_LIST";

            break;
          case 205:
            v5 = @"CANCEL_SINGLE_CARD_FILTER";

            break;
          case 206:
            v5 = @"DISPLAY_HFP_OPTION";

            break;
          case 207:
            v5 = @"SWITCH_OFF_HFP";

            break;
          case 208:
            v5 = @"SWITCH_ON_HFP";

            break;
          case 209:
            v5 = @"TAP_QUICK_ACTION_TRAY";

            break;
          case 210:
            v5 = @"SHOW_ALL_CITIES";

            break;
          case 211:
            v5 = @"TAP_ADD_NEARBY_TRANSIT";

            break;
          case 212:
            v5 = @"RESUME";

            break;
          case 213:
            v5 = @"DISPLAY_TIPKIT_PROMPT";

            break;
          case 214:
            v5 = @"TAP_NEARBY_TRANSIT_FAVORITE";

            break;
          case 215:
            v5 = @"TAP_DRIVING_MODE";

            break;
          case 216:
            v5 = @"SWITCH_ON_VOICE_GUIDANCE";

            break;
          case 217:
            v5 = @"DISMISS_TIPKIT_PROMPT";

            break;
          case 218:
            v5 = @"TAP_EXPAND_EXIT_DETAILS";

            break;
          case 219:
            v5 = @"TAP_NEARBY_TRANSIT_FILTER";

            break;
          case 220:
            v5 = @"TAP_MORE_DEPARTURES";

            break;
          case 221:
            v5 = @"RAP_INDIVIDUAL_PLACE";

            break;
          case 222:
            v5 = @"RAP_ADD_MAP";

            break;
          case 223:
            v5 = @"TAP_SUGGESTED_RAP";

            break;
          case 224:
            v5 = @"RAP_STREET_ISSUE";

            break;
          case 225:
            v5 = @"SWIPE_PIN_REVEAL";

            break;
          case 226:
            v5 = @"TAP_ADD_TIPKIT_FAVORITE";

            break;
          case 227:
            v5 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

            break;
          case 228:
            v5 = @"RAP_BAD_TRIP";

            break;
          case 229:
            v5 = @"RAP_PLACE_ISSUE";

            break;
          case 230:
            v5 = @"TAP_OPEN_MAPS";

            break;
          case 231:
            v5 = @"TAP_NEARBY_TRANSIT_RESULT";

            break;
          case 232:
            v5 = @"RAP_GUIDE";

            break;
          case 233:
            v5 = @"SWITCH_OFF_VOICE_GUIDANCE";

            break;
          case 234:
            v5 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

            break;
          case 235:
            v5 = @"SELECT_TRANSIT_STEP";

            break;
          case 236:
            v5 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

            break;
          case 237:
            v5 = @"TAP_SEE_MORE";

            break;
          case 238:
            v5 = @"RAP_IN_REVIEW";

            break;
          case 239:
            v5 = @"TAP_OPEN_MENU";

            break;
          case 240:
            v5 = @"TAP_NEARBY_TRANSIT";

            break;
          case 241:
            v5 = @"TAP_PIN_LINE";

            break;
          case 242:
            v5 = @"SWITCH_OFF_TRIP_FEEDBACK";

            break;
          case 243:
            v5 = @"RAP_GOOD_TRIP";

            break;
          case 244:
            v5 = @"TAP_FILTERED_CURATED_COLLECTION";

            break;
          case 245:
            v5 = @"SHARE_MY_LOCATION";

            break;
          case 246:
            v5 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

            break;
          case 247:
            v5 = @"DISPLAY_GENERIC_ADVISORY";

            break;
          case 248:
            v5 = @"ADVISORY_ALERT";

            break;
          case 249:
            v5 = @"PUNCH_OUT_LINK";

            break;
          case 250:
            v5 = @"TAP_GENERIC_ADVISORY";

            break;
          case 251:
            v5 = @"TAP_EXPLORE_MODE";

            break;
          case 252:
            v5 = @"TAP_UNPIN_LINE";

            break;
          case 253:
            v5 = @"MENU_UNPIN";

            break;
          case 254:
            v5 = @"MENU_PIN";

            break;
          case 255:
            v5 = @"SWIPE_PIN";

            break;
          case 256:
            v5 = @"SWIPE_UNPIN";

            break;
          case 257:
            v5 = @"TAP_MEDIA_APP";

            break;
          case 258:
            v5 = @"TAP_GUIDES_SUBACTION";

            break;
          case 259:
            v5 = @"TAP_MEDIA";

            break;
          case 260:
            v5 = @"PUNCH_OUT_MEDIA";

            break;
          case 261:
            v5 = @"SHOW_MEDIA_APP_MENU";

            break;
          case 262:
            v5 = @"SCROLL_RIGHT_RIBBON";

            break;
          case 263:
            v5 = @"SCROLL_LEFT_RIBBON";

            break;
          case 264:
            v5 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

            break;
          case 265:
            v5 = @"TAP_SHOW_MORE_TEXT";

            break;
          case 266:
            v5 = @"SCROLL_LEFT_RATINGS";

            break;
          case 267:
            v5 = @"SCROLL_LEFT_TEMPLATE_PLACE";

            break;
          case 268:
            v5 = @"SCROLL_RIGHT_TEMPLATE_PLACE";

            break;
          case 269:
            v5 = @"SCROLL_RIGHT_RATINGS";

            break;
          case 270:
            v5 = @"TAP_ALLOW";

            break;
          case 271:
            v5 = @"TAP_GO_TO_SETTING";

            break;
          case 272:
            v5 = @"START_SUBMIT_REPORT";

            break;
          case 273:
            v5 = @"AUTHENTICATION_INFO_FAILURE";

            break;
          case 274:
            v5 = @"SUCCESSFULLY_SUBMIT_REPORT";

            break;
          case 275:
            v5 = @"FAILED_SUBMIT_REPORT";

            break;
          case 276:
            v5 = @"AUTHENTICATION_INFO_SUCCESS";

            break;
          case 277:
            v5 = @"EDIT_WAYPOINT";

            break;
          case 278:
            v5 = @"CLEAR_TEXT";

            break;
          case 279:
            v5 = @"REORDER_WAYPOINT";

            break;
          case 280:
            v5 = @"REMOVE_WAYPOINT";

            break;
          case 281:
            v5 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

            break;
          case 282:
            v5 = @"TAP_SHOWCASE_MENU";

            break;
          case 283:
            v5 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

            break;
          case 284:
            v5 = @"TAP_PHOTO_ALBUM";

            break;
          case 285:
            v5 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 286:
            v5 = @"RAP_INLINE_ADD";

            break;
          case 287:
            v5 = @"RAP_TAP_EDIT";

            break;
          case 288:
            v5 = @"CLAIM_BUSINESS";

            break;
          case 289:
            v5 = @"RAP_EDIT_OPTIONS";

            break;
          case 290:
            v5 = @"TAP_IN_REVIEW_RAP";

            break;
          case 291:
            v5 = @"ORB_MENU_ADD_STOP";

            break;
          case 292:
            v5 = @"NEXT_STOP";

            break;
          case 293:
            v5 = @"ARRIVE_AT_WAYPOINT";

            break;
          case 294:
            v5 = @"REMOVE_STOP";

            break;
          case 295:
            v5 = @"DISPLAY_PAUSE_BUTTON";

            break;
          case 296:
            v5 = @"DISPLAY_PAUSE_NEXT_BUTTONS";

            break;
          case 297:
            v5 = @"AUTO_ADVANCE_NEXT_STOP";

            break;
          case 298:
            v5 = @"ADD_INLINE_NEGATIVE_RATING";

            break;
          case 299:
            v5 = @"ADD_INLINE_POSITIVE_RATING";

            break;
          case 300:
            v5 = @"TAP_TO_ADD_RATING_AND_PHOTO";

            break;
          case 301:
            v5 = @"SUBMIT_RATINGS_AND_PHOTOS";

            break;
          case 302:
            v5 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

            break;
          case 303:
            v5 = @"TAP_RECENTLY_VIEWED_ROUTE";

            break;
          case 304:
            v5 = @"SHOW_ALL_RECENTS";

            break;
          case 305:
            v5 = @"RESUME_MULTIPOINT_ROUTE";

            break;
          case 306:
            v5 = @"DISMISS_TRANSIT_TIPKIT";

            break;
          case 307:
            v5 = @"DISPLAY_TRANSIT_TIPKIT";

            break;
          case 308:
            v5 = @"TAP_TRANSIT_TIPKIT";

            break;
          case 309:
            v5 = @"FILTER_EV";

            break;
          case 310:
            v5 = @"FILTER_SURCHARGE";

            break;
          case 311:
            v5 = @"FILTER_PREFER";

            break;
          case 312:
            v5 = @"TAP_WALKING_ANNOTATION";

            break;
          case 313:
            v5 = @"FILTER_AVOID";

            break;
          case 314:
            v5 = @"FILTER_TRANSPORTATION_MODE";

            break;
          case 315:
            v5 = @"FILTER_RECOMMENDED_ROUTES";

            break;
          case 316:
            v5 = @"FILTER_IC_FARES";

            break;
          case 317:
            v5 = @"FILTER_TRANSIT_CARD_FARES";

            break;
          case 318:
            v5 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 319:
            v5 = @"TAP_NOTIFICATION_SETTINGS";

            break;
          case 320:
            v5 = @"TAP_ENABLE_NOTIFICATION";

            break;
          case 321:
            v5 = @"ARP_SUGGESTIONS_TURN_OFF";

            break;
          case 322:
            v5 = @"ARP_SUGGESTIONS_TURN_ON";

            break;
          case 323:
            v5 = @"DISMISS_ARP_SUGGESTION";

            break;
          case 324:
            v5 = @"RATINGS_AND_PHOTOS_TURN_ON";

            break;
          case 325:
            v5 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

            break;
          case 326:
            v5 = @"UNSELECT_SUGGESTED_PHOTOS";

            break;
          case 327:
            v5 = @"SUGGESTED_PHOTOS_SHOWN";

            break;
          case 328:
            v5 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 329:
            v5 = @"TAP_YOUR_PHOTOS_ALBUM";

            break;
          case 330:
            v5 = @"RATINGS_AND_PHOTOS_TURN_OFF";

            break;
          case 331:
            v5 = @"DELETE_PHOTO";

            break;
          case 332:
            v5 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 333:
            v5 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

            break;
          case 334:
            v5 = @"TAP_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 335:
            v5 = @"DISPLAY_YOUR_PHOTOS_ALBUM";

            break;
          case 336:
            v5 = @"SELECT_SUGGESTED_PHOTOS";

            break;
          case 337:
            v5 = @"ADD_STOP";

            break;
          case 338:
            v5 = @"SHOW_CREDIT_TURN_ON";

            break;
          case 339:
            v5 = @"DISPLAY_ARP_SUGGESTION";

            break;
          case 340:
            v5 = @"TAP_TO_ADD_PHOTO_CREDIT";

            break;
          case 341:
            v5 = @"SHOW_CREDIT_TURN_OFF";

            break;
          case 342:
            v5 = @"TAP_TO_EDIT_NICKNAME";

            break;
          case 343:
            v5 = @"SUBMIT_RATINGS";

            break;
          case 344:
            v5 = @"END_NAV_ON_WATCH";

            break;
          case 345:
            v5 = @"FILTER_EBIKE";

            break;
          case 356:
            v5 = @"ADD_STOP_SIRI";

            break;
          case 357:
            v5 = @"TAP_REVIEWED_RAP";

            break;
          case 358:
            v5 = @"TAP_OUTREACH_RAP";

            break;
          case 359:
            v5 = @"DISPLAY_SUGGESTED_ITEM";

            break;
          case 360:
            v5 = @"DISPLAY_HIKING_TIPKIT";

            break;
          case 361:
            v5 = @"DISMISS_HIKING_TIPKIT";

            break;
          case 362:
            v5 = @"TAP_HIKING_TIPKIT";

            break;
          case 363:
            v5 = @"SCROLL_LEFT_TRAILS";

            break;
          case 364:
            v5 = @"TAP_MORE_TRAILS";

            break;
          case 365:
            v5 = @"TAP_RELATED_TRAIL";

            break;
          case 366:
            v5 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

            break;
          case 367:
            v5 = @"SCROLL_RIGHT_TRAILS";

            break;
          case 368:
            v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 369:
            v5 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

            break;
          case 370:
            v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 371:
            v5 = @"TAP_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 372:
            v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 373:
            v5 = @"EXPIRED_MAPS_REMOVED";

            break;
          case 374:
            v5 = @"UPDATE_ALL_DOWNLOAD_MAPS";

            break;
          case 375:
            v5 = @"TAP_EXPIRED_MAPS";

            break;
          case 376:
            v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 377:
            v5 = @"MOVE_DOWNLOAD_MAPS";

            break;
          case 378:
            v5 = @"SAVE_RENAME_DOWNLOAD_MAPS";

            break;
          case 379:
            v5 = @"TAP_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 380:
            v5 = @"TAP_ENTER_OFFLINE_MAPS";

            break;
          case 381:
            v5 = @"TAP_DOWNLOAD_MAPS";

            break;
          case 382:
            v5 = @"TAP_DOWNLOAD_MAPS_CONTINUE";

            break;
          case 383:
            v5 = @"DELETE_DOWNLOAD_MAPS";

            break;
          case 384:
            v5 = @"SLIDE_CLEAR_EXPIRED_MAPS";

            break;
          case 385:
            v5 = @"RENAME_DOWNLOAD_MAPS";

            break;
          case 386:
            v5 = @"RESIZE_DOWNLOAD_MAPS";

            break;
          case 387:
            v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

            break;
          case 388:
            v5 = @"RESTORE_EXPIRED_MAPS";

            break;
          case 389:
            v5 = @"CLEAR_EXPIRED_MAPS";

            break;
          case 390:
            v5 = @"TAP_USING_OFFLINE_BAR";

            break;
          case 391:
            v5 = @"UPDATE_DOWNLOAD_MAPS";

            break;
          case 392:
            v5 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 393:
            v5 = @"DISPLAY_DOWNLOAD_MAPS";

            break;
          case 394:
            v5 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

            break;
          case 395:
            v5 = @"DISPLAY_EXPIRED_MAPS";

            break;
          case 396:
            v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 397:
            v5 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

            break;
          case 398:
            v5 = @"SLIDE_RESTORE_EXPIRED_MAPS";

            break;
          case 399:
            v5 = @"ETA_SHARE_TRAY_TIMEOUT";

            break;
          case 400:
            v5 = @"START_ETA_SHARING";

            break;
          case 401:
            v5 = @"PERSON_LOCATION_UPDATE";

            break;
          case 402:
            v5 = @"STOP_ETA_SHARING";

            break;
          case 403:
            v5 = @"PUNCH_OUT_TO_FINDMY";

            break;
          case 404:
            v5 = @"TAP_PEOPLE_LOCATION";

            break;
          case 405:
            v5 = @"TAP_TO_REQUEST_LOCATION";

            break;
          case 406:
            v5 = @"ZOOM_OUT_CROWN";

            break;
          case 407:
            v5 = @"TAP_RESIZE_DOWNLOAD_MAPS";

            break;
          case 408:
            v5 = @"TAP_DELETE_DOWNLOAD_MAPS";

            break;
          case 409:
            v5 = @"SELECT_LIST_VIEW";

            break;
          case 410:
            v5 = @"SCROLL_RIGHT_TRAILHEADS";

            break;
          case 411:
            v5 = @"SWITCH_TO_ONLINE_MODE";

            break;
          case 412:
            v5 = @"TAP_RELATED_TRAILHEAD";

            break;
          case 413:
            v5 = @"SELECT_ELEVATION_VIEW";

            break;
          case 414:
            v5 = @"TOGGLE_PROXIMITY_RADIUS_ON";

            break;
          case 415:
            v5 = @"SEE_MORE_RECENTS";

            break;
          case 416:
            v5 = @"SEE_MORE_GUIDES";

            break;
          case 417:
            v5 = @"SELECT_CONTROLS";

            break;
          case 418:
            v5 = @"NO_SEARCH_RESULTS";

            break;
          case 419:
            v5 = @"TAP_VIEW_RESULTS_CAROUSEL";

            break;
          case 420:
            v5 = @"TAP_VIEW_RESULTS_LIST";

            break;
          case 421:
            v5 = @"SELECT_MAP_VIEW";

            break;
          case 422:
            v5 = @"SCROLL_LEFT_TRAILHEADS";

            break;
          case 423:
            v5 = @"SWITCH_TO_OFFLINE_MODE";

            break;
          case 424:
            v5 = @"ZOOM_IN_CROWN";

            break;
          case 425:
            v5 = @"TOGGLE_PROXIMITY_RADIUS_OFF";

            break;
          case 426:
            v5 = @"TAP_MAP";

            break;
          case 427:
            v5 = @"SWIPE_DOWN";

            break;
          case 428:
            v5 = @"TAP_MORE_TRAILHEADS";

            break;
          case 429:
            v5 = @"TAP_ROUTE_OPTIONS";

            break;
          case 430:
            v5 = @"TAP_ROUTE_NAV_MAP";

            break;
          case 431:
            v5 = @"TAP_ROUTE_OVERVIEW_MAP";

            break;
          case 432:
            v5 = @"TAP_AUDIO";

            break;
          case 433:
            v5 = @"TAP_OPEN_PLACECARD";

            break;
          case 434:
            v5 = @"TAP_VIEW_STOPS";

            break;
          case 435:
            v5 = @"TAP_ROUTE_DETAILS";

            break;
          case 436:
            v5 = @"ADD_LPR_VEHICLE";

            break;
          case 437:
            v5 = @"TAP_ADD_VEHICLE";

            break;
          case 438:
            v5 = @"TAP_PLUG_TYPE";

            break;
          case 439:
            v5 = @"UNSELECT_SUGGESTED_NETWORK";

            break;
          case 440:
            v5 = @"TAP_SET_UP_LATER";

            break;
          case 441:
            v5 = @"ADD_EV_VEHICLE";

            break;
          case 442:
            v5 = @"UPDATE_COLOR";

            break;
          case 443:
            v5 = @"SELECT_OTHER_NETWORK";

            break;
          case 444:
            v5 = @"UNSELECT_NETWORK";

            break;
          case 445:
            v5 = @"TAP_BACK";

            break;
          case 446:
            v5 = @"TAP_CANCEL";

            break;
          case 447:
            v5 = @"UNSELECT_VEHICLE";

            break;
          case 448:
            v5 = @"UNSELECT_OTHER_NETWORK";

            break;
          case 449:
            v5 = @"DISPLAY_EV_TIPKIT";

            break;
          case 450:
            v5 = @"SELECT_NETWORK";

            break;
          case 451:
            v5 = @"TAP_EV_TIPKIT";

            break;
          case 452:
            v5 = @"TAP_CHOOSE_NETWORKS";

            break;
          case 453:
            v5 = @"TAP_ADD_NETWORK";

            break;
          case 454:
            v5 = @"FILTER_NETWORK";

            break;
          case 455:
            v5 = @"SELECT_SUGGESTED_NETWORK";

            break;
          case 456:
            v5 = @"TRANSIT_TO_WALKING";

            break;
          case 457:
            v5 = @"TRANSIT_TO_FINDMY";

            break;
          case 458:
            v5 = @"TAP_AC_KEYBOARD";

            break;
          case 459:
            v5 = @"REACH_PHOTO_STRIP_END";

            break;
          case 460:
            v5 = @"SEARCH_HERE_REVEAL";

            break;
          case 461:
            v5 = @"TAP_SEARCH_HERE";

            break;
          case 462:
            v5 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

            break;
          case 463:
            v5 = @"SAVE";

            break;
          case 464:
            v5 = @"TAP_MORE_CURATED_HIKES";

            break;
          case 465:
            v5 = @"CREATE_CUSTOM_ROUTE";

            break;
          case 466:
            v5 = @"TAP_TRY_NOW";

            break;
          case 467:
            v5 = @"TAP_CURATED_HIKE";

            break;
          case 468:
            v5 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

            break;
          case 469:
            v5 = @"ADD_TO_LIBRARY";

            break;
          case 470:
            v5 = @"START_HIKING";

            break;
          case 471:
            v5 = @"EDIT_NOTE";

            break;
          case 472:
            v5 = @"CREATE_NOTE";

            break;
          case 473:
            v5 = @"DELETE_PIN";

            break;
          case 474:
            v5 = @"ADD_ROUTE";

            break;
          case 475:
            v5 = @"ADD_PIN";

            break;
          case 476:
            v5 = @"REMOVE_FROM_COLLECTION";

            break;
          case 477:
            v5 = @"REMOVE_FROM_LIBRARY";

            break;
          case 478:
            v5 = @"TAP_ITEM";

            break;
          case 479:
            v5 = @"DELETE_ROUTE";

            break;
          case 480:
            v5 = @"TAP_ROUTE";

            break;
          case 481:
            v5 = @"TAP_DOWNLOAD_WATCH_MAPS";

            break;
          case 482:
            v5 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 483:
            v5 = @"STOP_DOWNLOAD_ONTO_WATCH";

            break;
          case 484:
            v5 = @"TAP_DOWNLOAD_ONTO_WATCH";

            break;
          case 485:
            v5 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 486:
            v5 = @"TAP_DOWNLOAD_NOW_WATCH";

            break;
          case 487:
            v5 = @"REVEAL_DETECTION_LIST";

            break;
          case 488:
            v5 = @"TAP_RECOMMENDATION";

            break;
          case 489:
            v5 = @"TAP_EXPAND";

            break;
          case 490:
            v5 = @"EXPAND_DETECTION_LIST";

            break;
          case 491:
            v5 = @"FIRST_PARTY_MAP_VIEW";

            break;
          case 492:
            v5 = @"SECOND_PARTY_MAP_VIEW";

            break;
          case 493:
            v5 = @"THIRD_PARTY_MAP_VIEW";

            break;
          case 494:
            v5 = @"DAEMON_PARTY_MAP_VIEW";

            break;
          case 495:
            v5 = @"MAPS_APP_DWELL_TIME_3_SEC";

            break;
          case 496:
            v5 = @"MAPS_APP_DWELL_TIME_30_SEC";

            break;
          case 497:
            v5 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

            break;
          case 498:
            v5 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

            break;
          case 499:
            v5 = @"DISPLAY_DOOM";

            break;
          case 500:
            v5 = @"TAP_DOOM";

            break;
          case 501:
            v5 = @"TAP_ROUTE_GENIUS";

            break;
          case 502:
            v5 = @"DISPLAY_ROUTE_GENIUS";

            break;
          case 503:
            v5 = @"TAP_WIDGET";

            break;
          case 504:
            v5 = @"ARRIVE_AT_DESTINATION";

            break;
          case 505:
            v5 = @"DISPLAY_WIDGET";

            break;
          case 506:
            v5 = @"CLEAR_HISTORY";

            break;
          case 507:
            v5 = @"TAP_SECTION";

            break;
          case 508:
            v5 = @"APPROVE_LOCATION";

            break;
          case 509:
            v5 = @"DISMISS_VISITED_PLACES_TIPKIT";

            break;
          case 510:
            v5 = @"DISPLAY_VISITED_PLACES_TIPKIT";

            break;
          case 511:
            v5 = @"MORE_OPTIONS";

            break;
          case 512:
            v5 = @"TAP_VISITED_PLACES_AVAILABLE";

            break;
          case 513:
            v5 = @"AUTO_REFRESH_SEARCH";

            break;
          case 514:
            v5 = @"REMOVE_VISIT";

            break;
          case 515:
            v5 = @"WRONG_LOCATION";

            break;
          case 516:
            v5 = @"CONFIRM";

            break;
          case 517:
            v5 = @"KEEP_HISTORY";

            break;
          case 518:
            v5 = @"DISPLAY_VISITED_PLACES_AVAILABLE";

            break;
          case 519:
            v5 = @"REMOVE";

            break;
          case 520:
            v5 = @"ALLOW";

            break;
          case 521:
            v5 = @"DONT_ALLOW";

            break;
          case 522:
            v5 = @"REMOVE_EVERY_VISIT";

            break;
          case 523:
            v5 = @"CONTINUE_VISITED_PLACES_TIPKIT";

            break;
          case 524:
            v5 = @"REMOVE_FROM_FAVORITE_GUIDE";

            break;
          case 525:
            v5 = @"ADD_TO_FAVORITE_GUIDE";

            break;
          case 526:
            v5 = @"FAMILIAR_ROUTE_DISPLAYED";

            break;
          case 527:
            v5 = @"FAMILIAR_ROUTE_NAV_STARTED";

            break;
          case 528:
            v5 = @"SELECT_AUDIO_VOLUME_LOUDER";

            break;
          case 529:
            v5 = @"SELECT_AUDIO_VOLUME_SOFTER";

            break;
          case 1001:
            v5 = @"PAN";

            break;
          case 1002:
            v5 = @"ZOOM_IN";

            break;
          case 1003:
            v5 = @"ZOOM_OUT";

            break;
          case 1004:
            v5 = @"ROTATE";

            break;
          case 1010:
            v5 = @"TAP_POI";

            break;
          case 1011:
            v5 = @"TAP_POI_TRANSIT";

            break;
          case 1017:
            v5 = @"TAP_POI_HIGHLIGHTED";

            break;
          case 1018:
            v5 = @"TAP_POI_CLUSTERED";

            break;
          case 1020:
            v5 = @"TAP_POI_DROPPED_PIN";

            break;
          case 1030:
            v5 = @"DROP_PIN";

            break;
          case 1031:
            v5 = @"TAP_INCIDENT";

            break;
          case 1032:
            v5 = @"TAP_TRANSIT_LINE";

            break;
          case 1033:
            v5 = @"TAP_POI_CALENDAR";

            break;
          case 1034:
            v5 = @"TAP_POI_CURRENT_LOCATION";

            break;
          case 1035:
            v5 = @"TAP_POI_TRANSIT_LINE";

            break;
          case 1036:
            v5 = @"TAP_POI_LANDMARK";

            break;
          case 1037:
            v5 = @"TAP_POI_FLYOVER";

            break;
          case 1038:
            v5 = @"TAP_TO_HIDE_TRAY";

            break;
          case 1039:
            v5 = @"TAP_TO_REVEAL_TRAY";

            break;
          case 1040:
            v5 = @"TAP_COMPASS";

            break;
          case 1041:
            v5 = @"PITCH_AWAY_FROM_GROUND";

            break;
          case 1042:
            v5 = @"PITCH_CLOSER_TO_GROUND";

            break;
          case 1043:
            v5 = @"ZOOM_IN_PINCH";

            break;
          case 1044:
            v5 = @"ZOOM_OUT_PINCH";

            break;
          case 1045:
            v5 = @"ZOOM_IN_DOUBLE_TAP";

            break;
          case 1046:
            v5 = @"ZOOM_OUT_TWO_FINGER_TAP";

            break;
          case 1047:
            v5 = @"ZOOM_IN_ONE_FINGER";

            break;
          case 1048:
            v5 = @"ZOOM_OUT_ONE_FINGER";

            break;
          case 1049:
            v5 = @"ZOOM_IN_BUTTON";

            break;
          case 1050:
            v5 = @"ZOOM_OUT_BUTTON";

            break;
          case 1051:
            v5 = @"TAP_TRAFFIC_CAMERA";

            break;
          case 1052:
            v5 = @"DISPLAY_INDOOR_MAP_BUTTON";

            break;
          case 1053:
            v5 = @"OPEN_INDOOR_MAP";

            break;
          case 1054:
            v5 = @"DISPLAY_VENUE_BROWSE_BUTTON";

            break;
          case 1055:
            v5 = @"TAP_VENUE_BROWSE_BUTTON";

            break;
          case 1056:
            v5 = @"ENTER_VENUE_EXPERIENCE";

            break;
          case 1057:
            v5 = @"EXIT_VENUE_EXPERIENCE";

            break;
          case 1058:
            v5 = @"ZOOM_IN_SCENE_PINCH";

            break;
          case 1059:
            v5 = @"ZOOM_OUT_SCENE_PINCH";

            break;
          case 1060:
            v5 = @"ZOOM_RESET";

            break;
          case 1061:
            v5 = @"TAP_SCENE_UNAVAILABLE_AREA";

            break;
          case 1062:
            v5 = @"TAP_TRANSIT_ACCESS_POINT";

            break;
          case 1063:
            v5 = @"TAP_SPEED_CAMERA";

            break;
          case 1064:
            v5 = @"TAP_RED_LIGHT_CAMERA";

            break;
          case 1065:
            v5 = @"TAP_GEO";

            break;
          default:
            if (action != 1500)
            {
              goto LABEL_195;
            }

            v5 = @"TAP_PLAY_SOUND";

            break;
        }
      }

      return v5;
    }

    if (action <= 9000)
    {
      if (action <= 6002)
      {
        if (action > 4001)
        {
          if (action <= 4004)
          {
            if (action == 4002)
            {
              v5 = @"TAP_HEADING_ON";
            }

            else if (action == 4003)
            {
              v5 = @"TAP_HEADING_OFF";
            }

            else
            {
              v5 = @"PUCK_DRIFT";
            }
          }

          else
          {
            switch(action)
            {
              case 5001:
                v5 = @"SHOW_MAPS_SETTINGS";

                return v5;
              case 5002:
                v5 = @"TAP_STANDARD_MODE";

                return v5;
              case 5003:
                v5 = @"TAP_TRANSIT_MODE";

                return v5;
              case 5004:
                v5 = @"TAP_SATELLITE_MODE";

                return v5;
              case 5005:
                v5 = @"SWITCH_ON_TRAFFIC";

                return v5;
              case 5006:
                v5 = @"SWITCH_OFF_TRAFFIC";

                return v5;
              case 5007:
                v5 = @"SWITCH_ON_LABELS";

                return v5;
              case 5008:
                v5 = @"SWITCH_OFF_LABELS";

                return v5;
              case 5009:
                v5 = @"SWITCH_ON_3D_MAP";

                return v5;
              case 5010:
                v5 = @"SWITCH_OFF_3D_MAP";

                return v5;
              case 5011:
                v5 = @"SWITCH_ON_WEATHER";

                return v5;
              case 5012:
                v5 = @"SWITCH_OFF_WEATHER";

                return v5;
              case 5013:
                v5 = @"REPORT_A_PROBLEM";

                return v5;
              case 5014:
                v5 = @"ADD_PLACE";

                return v5;
              case 5015:
                goto LABEL_195;
              case 5016:
                v5 = @"TAP_PREFERENCES";

                return v5;
              case 5017:
                v5 = @"SWITCH_ON_TOLLS";

                return v5;
              case 5018:
                v5 = @"SWITCH_OFF_TOLLS";

                return v5;
              case 5019:
                v5 = @"SWITCH_ON_HIGHWAYS";

                return v5;
              case 5020:
                v5 = @"SWITCH_OFF_HIGHWAYS";

                return v5;
              case 5021:
                v5 = @"SWITCH_ON_HEADING";

                return v5;
              case 5022:
                v5 = @"SWITCH_OFF_HEADING";

                return v5;
              case 5023:
                v5 = @"SWITCH_ON_SPEED_LIMIT";

                return v5;
              case 5024:
                v5 = @"SWITCH_OFF_SPEED_LIMIT";

                return v5;
              case 5025:
                v5 = @"ELECT_DRIVING_MODE";

                return v5;
              case 5026:
                v5 = @"ELECT_WALKING_MODE";

                return v5;
              case 5027:
                v5 = @"ELECT_TRANSIT_MODE";

                return v5;
              case 5028:
                v5 = @"ELECT_RIDESHARE_MODE";

                return v5;
              case 5029:
                v5 = @"SWITCH_ON_FIND_MY_CAR";

                return v5;
              case 5030:
                v5 = @"SWITCH_OFF_FIND_MY_CAR";

                return v5;
              case 5031:
                v5 = @"MARK_MY_LOCATION";

                return v5;
              case 5032:
                v5 = @"TAP_HYBRID_MODE";

                return v5;
              case 5033:
                v5 = @"CHECK_AVOID_BUSY_ROADS";

                return v5;
              case 5034:
                v5 = @"UNCHECK_AVOID_BUSY_ROADS";

                return v5;
              case 5035:
                v5 = @"CHECK_AVOID_HILLS";

                return v5;
              case 5036:
                v5 = @"UNCHECK_AVOID_HILLS";

                return v5;
              case 5037:
                v5 = @"CHECK_AVOID_STAIRS";

                return v5;
              case 5038:
                v5 = @"UNCHECK_AVOID_STAIRS";

                return v5;
              case 5039:
                v5 = @"ELECT_CYCLING_MODE";

                return v5;
              default:
                if (action == 4005)
                {
                  v5 = @"PUCK_SNAP";
                }

                else
                {
                  if (action != 4006)
                  {
                    goto LABEL_195;
                  }

                  v5 = @"SELECT_FLOOR";
                }

                break;
            }
          }
        }

        else
        {
          switch(action)
          {
            case 3001:
              v5 = @"START_NAV";

              break;
            case 3002:
              v5 = @"END_NAV";

              break;
            case 3003:
              v5 = @"OPEN_NAV_AUDIO_SETTINGS";

              break;
            case 3004:
              v5 = @"VIEW_DETAILS";

              break;
            case 3005:
              v5 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

              break;
            case 3006:
              v5 = @"OPEN_ROUTING_EDITOR";

              break;
            case 3007:
              v5 = @"EDIT_ORIGIN";

              break;
            case 3008:
              v5 = @"EDIT_DESTINATION";

              break;
            case 3009:
              v5 = @"SWAP_ORIGIN_DESTINATION";

              break;
            case 3010:
              v5 = @"OPEN_MORE_ROUTES";

              break;
            case 3011:
              v5 = @"SELECT_ROUTING_TYPE_DRIVING";

              break;
            case 3012:
              v5 = @"SELECT_ROUTING_TYPE_WALKING";

              break;
            case 3013:
              v5 = @"SELECT_ROUTING_TYPE_TRANSIT";

              break;
            case 3014:
              v5 = @"SELECT_ROUTING_TYPE_RIDESHARE";

              break;
            case 3015:
              v5 = @"SELECT_ROUTE";

              break;
            case 3016:
              v5 = @"COLLAPSE_STEP_DETAILS_WALK";

              break;
            case 3017:
              v5 = @"EXPAND_STEP_DETAILS_WALK";

              break;
            case 3018:
              v5 = @"COLLAPSE_STEP_DETAILS_TRANSIT";

              break;
            case 3019:
              v5 = @"EXPAND_STEP_DETAILS_TRANSIT";

              break;
            case 3020:
              v5 = @"UNCHECK_BUS";

              break;
            case 3021:
              v5 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3022:
              v5 = @"UNCHECK_COMMUTER_RAIL";

              break;
            case 3023:
              v5 = @"UNCHECK_FERRY";

              break;
            case 3024:
              v5 = @"CHECK_BUS";

              break;
            case 3025:
              v5 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3026:
              v5 = @"CHECK_COMMUTER_RAIL";

              break;
            case 3027:
              v5 = @"CHECK_FERRY";

              break;
            case 3028:
              v5 = @"SELECT_LEAVE_AT";

              break;
            case 3029:
              v5 = @"SELECT_ARRIVE_BY";

              break;
            case 3030:
              v5 = @"SELECT_LEAVE_NOW";

              break;
            case 3031:
              v5 = @"SELECT_DATE_TIME";

              break;
            case 3032:
              v5 = @"SWITCH_ON_IC_FARES";

              break;
            case 3033:
              v5 = @"SWITCH_OFF_IC_FARES";

              break;
            case 3034:
              v5 = @"OPEN_ROUTE_OPTIONS_DATETIME";

              break;
            case 3035:
              v5 = @"OPEN_ROUTE_OPTIONS_TRANSIT";

              break;
            case 3036:
              v5 = @"OPEN_ROUTE_OPTIONS_DRIVING";

              break;
            case 3037:
              v5 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

              break;
            case 3038:
              v5 = @"REVEAL_FROM_ROUTING";

              break;
            case 3039:
              v5 = @"DISPLAY_ROUTES";

              break;
            case 3040:
              v5 = @"CHECK_RECOMMENDED_ROUTES";

              break;
            case 3041:
              v5 = @"UNCHECK_RECOMMENDED_ROUTES";

              break;
            case 3042:
              v5 = @"CHECK_FASTER_TRIPS";

              break;
            case 3043:
              v5 = @"UNCHECK_FASTER_TRIPS";

              break;
            case 3044:
              v5 = @"CHECK_FEWER_TRANSFERS";

              break;
            case 3045:
              v5 = @"UNCHECK_FEWER_TRANSFERS";

              break;
            case 3046:
              v5 = @"CHECK_LESS_WALKING";

              break;
            case 3047:
              v5 = @"UNCHECK_LESS_WALKING";

              break;
            case 3048:
              v5 = @"OPEN_ROUTE_OPTIONS_CYCLING";

              break;
            case 3049:
              v5 = @"TAP_MORE_ROUTES";

              break;
            case 3050:
              v5 = @"OPEN_NAV_OVERVIEW";

              break;
            case 3051:
              v5 = @"RESUME_NAV_MANEUVER_VIEW";

              break;
            case 3052:
              v5 = @"SELECT_AUDIO_VOLUME_SILENT";

              break;
            case 3053:
              v5 = @"SELECT_AUDIO_VOLUME_LOW";

              break;
            case 3054:
              v5 = @"SELECT_AUDIO_VOLUME_NORMAL";

              break;
            case 3055:
              v5 = @"SELECT_AUDIO_VOLUME_LOUD";

              break;
            case 3056:
              v5 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

              break;
            case 3057:
              v5 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

              break;
            case 3058:
              v5 = @"RESUME_PREV_NAV";

              break;
            case 3059:
              v5 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

              break;
            case 3060:
              v5 = @"ACCEPT_REROUTE";

              break;
            case 3061:
              v5 = @"DISMISS_REROUTE";

              break;
            case 3062:
              v5 = @"ATTEMPT_END_NAV";

              break;
            case 3063:
              v5 = @"DISPLAY_BANNER";

              break;
            case 3064:
              v5 = @"VIEW_BANNER_DETAILS";

              break;
            case 3065:
              v5 = @"ENTER_GUIDANCE";

              break;
            case 3066:
              v5 = @"AUTO_ADVANCE_GUIDANCE";

              break;
            case 3067:
              v5 = @"TAP_OPEN_WALLET";

              break;
            case 3068:
              v5 = @"SELECT_VOICE_GUIDANCE_ALL";

              break;
            case 3069:
              v5 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

              break;
            case 3070:
              v5 = @"SELECT_VOICE_GUIDANCE_NONE";

              break;
            case 3071:
              v5 = @"DISPLAY_CARD";

              break;
            case 3072:
              v5 = @"RENDER_ROUTE";

              break;
            case 3073:
              v5 = @"DISPLAY_JUNCTION_VIEW";

              break;
            case 3074:
              v5 = @"SELECT_DEPARTURE";

              break;
            case 3075:
              v5 = @"DISPLAY_AR_VIEW_RAISE_BANNER";

              break;
            case 3076:
              v5 = @"DEVICE_RAISE";

              break;
            case 3077:
              v5 = @"ENTER_AR_NAV_VIEW";

              break;
            case 3078:
              v5 = @"EXIT_AR_NAV_VIEW";

              break;
            case 3079:
              v5 = @"AR_CALIBRATION_START";

              break;
            case 3080:
              v5 = @"AR_CALIBRATION_FAILURE";

              break;
            case 3081:
              v5 = @"AR_CALIBRATION_SUCCESS";

              break;
            case 3082:
              v5 = @"DISPLAY_AR_NAV_ARROW";

              break;
            case 3083:
              v5 = @"DISPLAY_AR_NAV_TURN_AROUND";

              break;
            case 3084:
              v5 = @"DISPLAY_GO_OUTSIDE_BANNER";

              break;
            case 3085:
              v5 = @"DISPLAY_AR_DARKNESS_MESSAGE";

              break;
            case 3086:
              v5 = @"DISPLAY_AR_NAV_ENDPOINT";

              break;
            case 3087:
              v5 = @"DISPLAY_ADVISORY_BANNER";

              break;
            case 3088:
              v5 = @"TAP_SHOW_ADVISORY_DETAILS";

              break;
            default:
              if (action != 4001)
              {
                goto LABEL_195;
              }

              v5 = @"RECENTER_CURRENT_LOCATION";

              break;
          }
        }
      }

      else if (action > 7000)
      {
        if (action > 8000)
        {
          if (action <= 8005)
          {
            if (action <= 8002)
            {
              if (action == 8001)
              {
                v5 = @"INVOKE_SIRI_SNIPPET";
              }

              else
              {
                v5 = @"INVOKE_SIRI_DISAMBIGUATION";
              }
            }

            else if (action == 8003)
            {
              v5 = @"SHOW_PLACE_DETAILS";
            }

            else if (action == 8004)
            {
              v5 = @"ANSWER_REROUTE_SUGGESTION";
            }

            else
            {
              v5 = @"SUGGEST_NAV_REROUTE";
            }
          }

          else if (action > 8008)
          {
            switch(action)
            {
              case 0x1F49:
                v5 = @"INVOKE_SIRI";

                break;
              case 0x1F4A:
                v5 = @"DISPLAY_SIRI_ERROR_MESSAGE";

                break;
              case 0x1F4B:
                v5 = @"DISPLAY_NO_RESULTS_MESSAGE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action == 8006)
          {
            v5 = @"GET_NAV_STATUS";
          }

          else if (action == 8007)
          {
            v5 = @"REPEAT_NAV_STATUS";
          }

          else
          {
            v5 = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }
        }

        else
        {
          switch(action)
          {
            case 7001:
              v5 = @"EXPAND_TRANSIT_SYSTEM";

              break;
            case 7002:
              v5 = @"COLLAPSE_TRANSIT_SYSTEM";

              break;
            case 7003:
              v5 = @"SHOW_MORE_DEPARTURES";

              break;
            case 7004:
              v5 = @"VIEW_TRANSIT_LINE";

              break;
            case 7005:
              v5 = @"CANCEL_VIEW_TRANSIT_LINE";

              break;
            case 7006:
              v5 = @"TAP_TRANSIT_ATTRIBUTION";

              break;
            case 7007:
              v5 = @"TAP_TRANSIT_ADVISORY";

              break;
            case 7008:
              v5 = @"MORE_DETAILS_TRANSIT_ADVISORY";

              break;
            case 7009:
              v5 = @"SUBSCRIBE_LINE_INCIDENT";

              break;
            case 7010:
              v5 = @"UNSUBSCRIBE_LINE_INCIDENT";

              break;
            case 7011:
              v5 = @"TAP_NEAREST_STATION";

              break;
            case 7012:
              v5 = @"TAP_NEAREST_STOP";

              break;
            case 7013:
              v5 = @"TAP_CONNECTION";

              break;
            case 7014:
              v5 = @"GET_TICKETS";

              break;
            case 7015:
              v5 = @"OPEN_SCHEDULECARD_DATETIME";

              break;
            case 7016:
              v5 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

              break;
            case 7017:
              v5 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

              break;
            case 7018:
              v5 = @"VIEW_ON_MAP";

              break;
            case 7019:
              v5 = @"FORCE_UPDATE_DEPARTURE_INFO";

              break;
            case 7020:
              v5 = @"TAP_TRANSIT_LINE_INFO";

              break;
            case 7021:
              v5 = @"TAP_ATTRIBUTION_CELL";

              break;
            case 7022:
              v5 = @"TAP_NEXT_DEPARTURES";

              break;
            case 7023:
              v5 = @"VIEW_BANNER";

              break;
            case 7024:
              v5 = @"GET_SHOWTIMES";

              break;
            case 7025:
              v5 = @"MAKE_APPOINTMENT";

              break;
            case 7026:
              v5 = @"RESERVE_PARKING";

              break;
            case 7027:
              v5 = @"RESERVE_ROOM";

              break;
            case 7028:
              v5 = @"WAITLIST";

              break;
            case 7029:
              v5 = @"ORDER_TAKEOUT";

              break;
            case 7030:
              v5 = @"RESERVE";

              break;
            default:
              goto LABEL_195;
          }
        }
      }

      else
      {
        switch(action)
        {
          case 6003:
            v5 = @"GET_DIRECTIONS";

            break;
          case 6004:
            v5 = @"TAP_FLYOVER_TOUR";

            break;
          case 6005:
            v5 = @"REMOVE_PIN";

            break;
          case 6006:
            v5 = @"TAP_PHOTO";

            break;
          case 6007:
            v5 = @"TAP_MAPS_VIEW";

            break;
          case 6008:
            v5 = @"TAP_ADDRESS";

            break;
          case 6009:
            v5 = @"CALL";

            break;
          case 6010:
            v5 = @"TAP_URL";

            break;
          case 6011:
            v5 = @"SHOW_TODAY_HOURS";

            break;
          case 6012:
            v5 = @"SHOW_ALL_HOURS";

            break;
          case 6013:
            v5 = @"SHARE";

            break;
          case 6015:
            v5 = @"ADD_TO_FAVORITES";

            break;
          case 6016:
            v5 = @"ADD_CONTACT";

            break;
          case 6018:
            v5 = @"PUNCH_OUT_PHOTO";

            break;
          case 6019:
            v5 = @"PUNCH_OUT_USEFUL_TO_KNOW";

            break;
          case 6020:
            v5 = @"PUNCH_OUT_OPEN_APP";

            break;
          case 6021:
            v5 = @"PUNCH_OUT_SINGLE_REVIEW";

            break;
          case 6022:
            v5 = @"PUNCH_OUT_CHECK_IN";

            break;
          case 6023:
            v5 = @"PUNCH_OUT_MORE_INFO";

            break;
          case 6024:
            v5 = @"PUNCH_OUT_WRITE_REVIEW";

            break;
          case 6025:
            v5 = @"PUNCH_OUT_ADD_PHOTO";

            break;
          case 6026:
            v5 = @"TAP_GRID_VIEW";

            break;
          case 6027:
            v5 = @"EDIT_LOCATION";

            break;
          case 6029:
            v5 = @"ADD_PHOTO";

            break;
          case 6031:
            v5 = @"RETAKE";

            break;
          case 6032:
            v5 = @"ADD_NOTE";

            break;
          case 6033:
            v5 = @"REMOVE_CAR";

            break;
          case 6034:
            v5 = @"EDIT_NAME";

            break;
          case 6036:
            v5 = @"RESERVE_TABLE";

            break;
          case 6037:
            v5 = @"ADD_TO_QUEUE";

            break;
          case 6038:
            v5 = @"VIEW_BOOKED_TABLE";

            break;
          case 6039:
            v5 = @"VIEW_QUEUED_TABLE";

            break;
          case 6040:
            v5 = @"PUNCH_OUT_THIRD_PARTY_APP";

            break;
          case 6041:
            v5 = @"PUNCH_OUT_LEGAL_LINK";

            break;
          case 6042:
            v5 = @"TAP_PLACECARD_HEADER";

            break;
          case 6043:
            v5 = @"REMOVE_FROM_FAVORITES";

            break;
          case 6044:
            v5 = @"VIEW_CONTACT";

            break;
          case 6045:
            v5 = @"CHAT";

            break;
          case 6046:
            v5 = @"FIND_STORES";

            break;
          case 6047:
            v5 = @"TAP_PARENT";

            break;
          case 6048:
            v5 = @"SCROLL_LEFT_PHOTOS";

            break;
          case 6049:
            v5 = @"SCROLL_RIGHT_PHOTOS";

            break;
          case 6050:
            v5 = @"PUNCH_OUT";

            break;
          case 6051:
            v5 = @"TAP_ENTER_MUNIN";

            break;
          case 6052:
            v5 = @"TAP_RECOMMENDED_DISHES_PHOTO";

            break;
          case 6053:
            v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

            break;
          case 6054:
            v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

            break;
          case 6055:
            v5 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6056:
            v5 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6057:
            v5 = @"SHOW_LINKED_SERVICE_HOURS";

            break;
          case 6058:
            v5 = @"ENTER_LOOK_AROUND";

            break;
          case 6059:
            v5 = @"EXIT_LOOK_AROUND";

            break;
          case 6060:
            v5 = @"TAP_ENTER_LOOK_AROUND_VIEW";

            break;
          case 6061:
            v5 = @"TAP_ENTER_LOOK_AROUND_PIP";

            break;
          case 6062:
            v5 = @"EXPAND_LOOK_AROUND_VIEW";

            break;
          case 6063:
            v5 = @"CLOSE_LOOK_AROUND";

            break;
          case 6064:
            v5 = @"COLLAPSE_LOOK_AROUND_VIEW";

            break;
          case 6065:
            v5 = @"TAP_SHOW_ACTIONS";

            break;
          case 6066:
            v5 = @"TAP_HIDE_LABELS";

            break;
          case 6067:
            v5 = @"TAP_SHOW_LABELS";

            break;
          case 6068:
            v5 = @"TAP_SHOW_DETAILS";

            break;
          case 6069:
            v5 = @"PAN_LOOK_AROUND";

            break;
          case 6070:
            v5 = @"TAP_LOOK_AROUND_THUMBNAIL";

            break;
          case 6071:
            v5 = @"TAP_LANDMARK";

            break;
          case 6072:
            v5 = @"TAP_SCENE";

            break;
          case 6073:
            v5 = @"SHOW_LINKED_BUSINESS_HOURS";

            break;
          case 6074:
            v5 = @"TAP_PLACECARD_SHORTCUT";

            break;
          case 6075:
            v5 = @"SHOW_ALL_LOCATIONS_INSIDE";

            break;
          case 6076:
            v5 = @"SHOW_ALL_SIMILAR_LOCATIONS";

            break;
          case 6077:
            v5 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

            break;
          case 6078:
            v5 = @"TAP_PARENT_LOCATION";

            break;
          case 6079:
            v5 = @"TAP_SIMILAR_LOCATION";

            break;
          case 6080:
            v5 = @"TAP_LOCATION_INSIDE";

            break;
          case 6081:
            v5 = @"TAP_LOCATION_AT_ADDRESS";

            break;
          case 6082:
            v5 = @"CLOSE_ROUTE_GENIUS";

            break;
          case 6083:
            v5 = @"LOAD_WEB_CONTENT";

            break;
          case 6084:
            v5 = @"SCROLL_FORWARD_WEB_CONTENT";

            break;
          case 6085:
            v5 = @"SCROLL_BACKWARD_WEB_CONTENT";

            break;
          case 6086:
            v5 = @"TAP_WEB_CONTENT";

            break;
          case 6087:
            v5 = @"SHOW_PHOTO_VIEWER";

            break;
          case 6088:
            v5 = @"SHOW_LAST_PAGE";

            break;
          case 6089:
            v5 = @"TAP_VIEW_APP";

            break;
          case 6090:
            v5 = @"TAP_APP_CLIP";

            break;
          case 6091:
            v5 = @"DEAD_BATTERY";

            break;
          case 6092:
            v5 = @"DISMISS_LOW_BATTERY_ALERT";

            break;
          case 6093:
            v5 = @"DISMISS_OUT_OF_RANGE_ALERT";

            break;
          case 6094:
            v5 = @"FAILED_TO_LOAD_EV_STATUS";

            break;
          case 6095:
            v5 = @"LOW_BATTERY_ALERT";

            break;
          case 6096:
            v5 = @"PAUSE_ROUTE";

            break;
          case 6097:
            v5 = @"TAP_ADD_STOP";

            break;
          case 6098:
            v5 = @"TAP_CHARGE_POINT";

            break;
          case 6099:
            v5 = @"TAP_OUT_OF_RANGE_ALERT";

            break;
          case 6100:
            v5 = @"SCROLL_DOWN_PHOTOS";

            break;
          case 6101:
            v5 = @"SCROLL_UP_PHOTOS";

            break;
          case 6102:
            v5 = @"TAP_MORE_PHOTOS";

            break;
          case 6103:
            v5 = @"TAP_TO_CONFIRM_INCIDENT";

            break;
          case 6104:
            v5 = @"SHOW_INCIDENT";

            break;
          case 6105:
            v5 = @"REVEAL_APP_CLIP";

            break;
          case 6106:
            v5 = @"ORDER_DELIVERY";

            break;
          case 6107:
            v5 = @"VIEW_MENU";

            break;
          case 6108:
            v5 = @"TAP_EDIT_STOPS";

            break;
          case 6109:
            v5 = @"LEARN_MORE_WEB_CONTENT";

            break;
          case 6110:
            v5 = @"MAKE_APPOINTMENT_WEB_CONTENT";

            break;
          case 6111:
            v5 = @"REVEAL_SHOWCASE";

            break;
          case 6112:
            v5 = @"TAP_ACTION_BAR";

            break;
          default:
            goto LABEL_195;
        }
      }
    }

    else
    {
      if (action <= 12000)
      {
        switch(action)
        {
          case 10101:
            v5 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

            break;
          case 10102:
            v5 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

            break;
          case 10103:
            v5 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

            break;
          case 10104:
            v5 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

            break;
          case 10105:
            v5 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

            break;
          case 10106:
            v5 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

            break;
          case 10107:
            v5 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

            break;
          case 10108:
            v5 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

            break;
          case 10109:
            v5 = @"RAP_CANCEL";

            break;
          case 10110:
            v5 = @"RAP_NEXT";

            break;
          case 10111:
            v5 = @"RAP_BACK";

            break;
          case 10112:
            v5 = @"RAP_SEND";

            break;
          case 10113:
            v5 = @"RAP_SKIP";

            break;
          case 10114:
            v5 = @"RAP_SHOW_MORE";

            break;
          case 10115:
            v5 = @"RAP_ADD_PHOTO";

            break;
          case 10116:
            v5 = @"RAP_MAP_INCORRECT";

            break;
          case 10117:
            v5 = @"RAP_BAD_DIRECTIONS";

            break;
          case 10118:
            v5 = @"RAP_TRANSIT_INFO_INCORRECT";

            break;
          case 10119:
            v5 = @"RAP_SATELLITE_IMAGE_PROBLEM";

            break;
          case 10120:
            v5 = @"RAP_SEARCH_RESULTS_INCORRECT";

            break;
          case 10121:
            v5 = @"RAP_ADD_A_PLACE";

            break;
          case 10122:
            v5 = @"RAP_HOME";

            break;
          case 10123:
            v5 = @"RAP_WORK";

            break;
          case 10124:
            v5 = @"RAP_OTHER";

            break;
          case 10125:
            v5 = @"RAP_LOCATION";

            break;
          case 10126:
            v5 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

            break;
          case 10127:
            v5 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

            break;
          case 10128:
            v5 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

            break;
          case 10129:
            v5 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

            break;
          case 10130:
            v5 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

            break;
          case 10131:
            v5 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

            break;
          case 10132:
            v5 = @"RAP_TRANSIT_DELAY";

            break;
          case 10133:
            v5 = @"RAP_LOCATION_CLOSED";

            break;
          case 10134:
            v5 = @"RAP_CLOSED_PERMANENTLY";

            break;
          case 10135:
            v5 = @"RAP_CLOSED_TEMPORARILY";

            break;
          case 10136:
            v5 = @"RAP_HOURS_HAVE_CHANGED";

            break;
          case 10137:
            v5 = @"RAP_SELECT_STATION";

            break;
          case 10138:
            v5 = @"RAP_SELECT_LINE";

            break;
          case 10139:
            v5 = @"RAP_SELECT_ACCESS_POINT";

            break;
          case 10140:
            v5 = @"RAP_SELECT_SEARCH";

            break;
          case 10141:
            v5 = @"RAP_PAN_MAP";

            break;
          case 10142:
            v5 = @"RAP_CENTER_MAP_ON_USER";

            break;
          case 10143:
            v5 = @"RAP_SEARCH_UNEXPECTED";

            break;
          case 10144:
            v5 = @"RAP_ADD_POI";

            break;
          case 10145:
            v5 = @"RAP_ADD_STREET_ADDRESS";

            break;
          case 10146:
            v5 = @"RAP_ADD_OTHER";

            break;
          case 10147:
            v5 = @"RAP_SELECT_CATEGORY";

            break;
          case 10148:
            v5 = @"RAP_TAKE_PHOTO";

            break;
          case 10149:
            v5 = @"RAP_RETAKE_PHOTO";

            break;
          case 10150:
            v5 = @"RAP_PLACE_DETAILS";

            break;
          case 10151:
            v5 = @"RAP_SATELLITE_IMAGE_OUTDATED";

            break;
          case 10152:
            v5 = @"RAP_SATELLITE_IMAGE_QUALITY";

            break;
          case 10153:
            v5 = @"RAP_SELECT_LABEL";

            break;
          case 10154:
            v5 = @"RAP_SELECT_ROUTE";

            break;
          case 10155:
            v5 = @"RAP_CLAIM_BUSINESS";

            break;
          case 10156:
            v5 = @"RAP_BRAND_DETAILS";

            break;
          case 10157:
            v5 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

            break;
          case 10158:
            v5 = @"RAP_LOOK_AROUND_LABELS_STREET";

            break;
          case 10159:
            v5 = @"RAP_LOOK_AROUND_BLURRING";

            break;
          case 10160:
            v5 = @"RAP_LOOK_AROUND_REMOVE_HOME";

            break;
          case 10161:
            v5 = @"RAP_LOOK_AROUND_LABELS_STORE";

            break;
          case 10162:
            v5 = @"RAP_LOOK_AROUND_PRIVACY";

            break;
          case 10163:
            v5 = @"RAP_INCORRECT_HOURS";

            break;
          case 10164:
            v5 = @"RAP_INCORRECT_ADDRESS";

            break;
          case 10165:
            v5 = @"RAP_EDIT_PLACE_DETAILS";

            break;
          case 10166:
            v5 = @"RAP_EDIT_PLACE_NAME";

            break;
          case 10167:
            v5 = @"RAP_EDIT_ADDRESS";

            break;
          case 10168:
            v5 = @"RAP_ADD_CATEGORY";

            break;
          case 10169:
            v5 = @"RAP_REMOVE_CATEGORY";

            break;
          case 10170:
            v5 = @"RAP_DESELECT_CATEGORY";

            break;
          case 10171:
            v5 = @"RAP_ADD_HOURS";

            break;
          case 10172:
            v5 = @"RAP_REMOVE_HOURS";

            break;
          case 10173:
            v5 = @"RAP_TAP_DAY_OF_WEEK";

            break;
          case 10174:
            v5 = @"RAP_TAP_24_HOURS_BUTTON";

            break;
          case 10175:
            v5 = @"RAP_TAP_OPEN_TIME";

            break;
          case 10176:
            v5 = @"RAP_TAP_CLOSED_TIME";

            break;
          case 10177:
            v5 = @"RAP_TAP_TEMPORARY_CLOSURE";

            break;
          case 10178:
            v5 = @"RAP_TAP_PERMANENTLY_CLOSED";

            break;
          case 10179:
            v5 = @"RAP_EDIT_WEBSITE";

            break;
          case 10180:
            v5 = @"RAP_EDIT_PHONE_NUMBER";

            break;
          case 10181:
            v5 = @"RAP_TAP_ACCEPTS_APPLE_PAY";

            break;
          case 10182:
            v5 = @"RAP_ADD_COMMENTS";

            break;
          case 10183:
            v5 = @"RAP_EDIT_LOCATION";

            break;
          case 10184:
            v5 = @"RAP_VIEW_LOCATION";

            break;
          case 10185:
            v5 = @"RAP_ZOOM_IN";

            break;
          case 10186:
            v5 = @"RAP_ZOOM_OUT";

            break;
          case 10187:
            v5 = @"RAP_VIEW_ENTRY_POINTS";

            break;
          case 10188:
            v5 = @"RAP_EDIT_EXISTING_ENTRY_POINT";

            break;
          case 10189:
            v5 = @"RAP_ADD_NEW_ENTRY_POINT";

            break;
          case 10190:
            v5 = @"RAP_REMOVE_ENTRY_POINT";

            break;
          case 10191:
            v5 = @"RAP_SELECT_ENTRY_POINT_TYPE";

            break;
          default:
            switch(action)
            {
              case 9001:
                v5 = @"TAP_WIDGET_ITEM";

                break;
              case 9002:
                v5 = @"DISPLAY_NOTIFICATION";

                break;
              case 9003:
                v5 = @"TAP_NOTIFICATION";

                break;
              case 9004:
                v5 = @"EXPAND_NOTIFICATION";

                break;
              case 9005:
                v5 = @"DISMISS_NOTIFICATION";

                break;
              case 9006:
                v5 = @"OPEN_SEARCH";

                break;
              case 9007:
                v5 = @"OPEN_PAN_VIEW";

                break;
              case 9008:
                v5 = @"PAN_LEFT";

                break;
              case 9009:
                v5 = @"PAN_UP";

                break;
              case 9010:
              case 9041:
              case 9042:
              case 9043:
              case 9044:
              case 9045:
              case 9046:
              case 9047:
              case 9048:
              case 9049:
              case 9050:
              case 9051:
              case 9052:
              case 9053:
              case 9054:
              case 9055:
              case 9056:
              case 9057:
              case 9058:
              case 9059:
              case 9060:
              case 9061:
              case 9062:
              case 9063:
              case 9064:
              case 9065:
              case 9066:
              case 9067:
              case 9068:
              case 9069:
              case 9070:
              case 9071:
              case 9072:
              case 9073:
              case 9074:
              case 9075:
              case 9076:
              case 9077:
              case 9078:
              case 9079:
              case 9080:
              case 9081:
              case 9082:
              case 9083:
              case 9084:
              case 9085:
              case 9086:
              case 9087:
              case 9088:
              case 9089:
              case 9090:
              case 9091:
              case 9092:
              case 9093:
              case 9094:
              case 9095:
              case 9096:
              case 9097:
              case 9098:
              case 9099:
              case 9100:
                goto LABEL_195;
              case 9011:
                v5 = @"PAN_DOWN";

                break;
              case 9012:
                v5 = @"TAP_RECENT_DESTINATIONS";

                break;
              case 9013:
                v5 = @"OPEN_DESTINATIONS";

                break;
              case 9014:
                v5 = @"OPEN_FAVORITES";

                break;
              case 9015:
                v5 = @"VIEW_NAV_OPTIONS";

                break;
              case 9016:
                v5 = @"START_NAV_NO_GUIDANCE";

                break;
              case 9017:
                v5 = @"TURN_OFF_GUIDANCE";

                break;
              case 9018:
                v5 = @"TURN_ON_GUIDANCE";

                break;
              case 9019:
                v5 = @"OPEN_KEYBOARD";

                break;
              case 9020:
                v5 = @"SHARE_DESTINATION";

                break;
              case 9021:
                v5 = @"START_NAV_AUTOMATED";

                break;
              case 9022:
                v5 = @"SHARE_ETA";

                break;
              case 9023:
                v5 = @"SELECT_GROUP";

                break;
              case 9024:
                v5 = @"DESELECT_GROUP";

                break;
              case 9025:
                v5 = @"SELECT_CONTACT";

                break;
              case 9026:
                v5 = @"DESELECT_CONTACT";

                break;
              case 9027:
                v5 = @"TAP_VIEW_CONTACTS";

                break;
              case 9028:
                v5 = @"STOP_RECEIVING_ETA";

                break;
              case 9029:
                v5 = @"DISPLAY_ANNOUNCEMENT";

                break;
              case 9030:
                v5 = @"TAP_ANNOUNCEMENT";

                break;
              case 9031:
                v5 = @"DISPLAY_CYCLING_NOTIFICATION";

                break;
              case 9032:
                v5 = @"TAP_CYCLING_NOTIFICATION";

                break;
              case 9033:
                v5 = @"SHARE_CYCLING_ETA";

                break;
              case 9034:
                v5 = @"MANAGE_NOTIFICATIONS";

                break;
              case 9035:
                v5 = @"PUNCH_OUT_PUBLISHER_REVIEW";

                break;
              case 9036:
                v5 = @"SCROLL_FORWARD";

                break;
              case 9037:
                v5 = @"SCROLL_BACKWARD";

                break;
              case 9038:
                v5 = @"SHOW_ALL_CURATED_COLLECTIONS";

                break;
              case 9039:
                v5 = @"TAP_LESS";

                break;
              case 9040:
                v5 = @"TAP_MORE";

                break;
              case 9101:
                v5 = @"DISPLAY_ADD_HOME_AND_WORK";

                break;
              case 9102:
                v5 = @"TAP_ADD_HOME_AND_WORK";

                break;
              case 9103:
                v5 = @"DISPLAY_ALLOW_FREQUENTS";

                break;
              case 9104:
                v5 = @"TAP_ALLOW_FREQUENTS";

                break;
              case 9105:
                v5 = @"DISPLAY_ALLOW_LOCATION";

                break;
              case 9106:
                v5 = @"TAP_ALLOW_LOCATION";

                break;
              default:
                switch(action)
                {
                  case 11001:
                    v5 = @"EXIT_MAPS_LOWER_WRIST";

                    break;
                  case 11002:
                    v5 = @"TASK_READY";

                    break;
                  case 11003:
                    v5 = @"TAP_SEARCH";

                    break;
                  case 11004:
                    v5 = @"TAP_MY_LOCATION";

                    break;
                  case 11005:
                    v5 = @"SHOW_NEARBY";

                    break;
                  case 11006:
                    v5 = @"TAP_NEARBY";

                    break;
                  case 11007:
                    v5 = @"TAP_PROACTIVE";

                    break;
                  case 11008:
                    v5 = @"FORCE_PRESS";

                    break;
                  case 11009:
                    v5 = @"TAP_CONTACTS";

                    break;
                  case 11010:
                    v5 = @"TAP_TRANSIT";

                    break;
                  case 11011:
                    v5 = @"TAP_DICTATION";

                    break;
                  case 11012:
                    v5 = @"GET_DIRECTIONS_DRIVING";

                    break;
                  case 11013:
                    v5 = @"GET_DIRECTIONS_WALKING";

                    break;
                  case 11014:
                    v5 = @"GET_DIRECTIONS_TRANSIT";

                    break;
                  case 11015:
                    v5 = @"OPEN_STANDARD_MAP";

                    break;
                  case 11016:
                    v5 = @"OPEN_TRANSIT_MAP";

                    break;
                  case 11017:
                    v5 = @"START_NAV_AUTO";

                    break;
                  case 11018:
                    v5 = @"TAP_RECENT";

                    break;
                  case 11019:
                    v5 = @"TAP_FAVORITE";

                    break;
                  case 11020:
                    v5 = @"TAP_SCRIBBLE";

                    break;
                  case 11021:
                    v5 = @"TAP_VIEW_MAP";

                    break;
                  case 11022:
                    v5 = @"TAP_VIEW_TBT";

                    break;
                  case 11023:
                    v5 = @"VIEW_ROUTE_INFO";

                    break;
                  case 11024:
                    v5 = @"NAV_UNMUTE";

                    break;
                  case 11025:
                    v5 = @"NAV_MUTE";

                    break;
                  case 11026:
                    v5 = @"GET_DIRECTIONS_CYCLING";

                    break;
                  case 11027:
                    v5 = @"TAP_SEARCH_HOME";

                    break;
                  case 11028:
                    v5 = @"ROUTE_PAUSED_ON_WATCH";

                    break;
                  case 11029:
                    v5 = @"NEXT_STOP_TAPPED_ON_WATCH";

                    break;
                  default:
                    goto LABEL_195;
                }

                break;
            }

            break;
        }

        return v5;
      }

      if (action > 16000)
      {
        switch(action)
        {
          case 17001:
            v5 = @"START_DRAG";

            break;
          case 17002:
            v5 = @"CANCEL_DRAG";

            break;
          case 17003:
            v5 = @"COMPLETE_DRAG";

            break;
          case 17004:
            v5 = @"START_DROP";

            break;
          case 17005:
            v5 = @"CANCEL_DROP";

            break;
          case 17006:
            v5 = @"COMPLETE_DROP";

            break;
          case 17007:
            v5 = @"ANNOTATION_SELECT";

            break;
          case 17008:
            v5 = @"ANNOTATION_SELECT_AUTO";

            break;
          case 17009:
            v5 = @"ANNOTATION_SELECT_LIST";

            break;
          case 17010:
            v5 = @"BROWSE_TOP_CATEGORY_DISPLAYED";

            break;
          case 17011:
            v5 = @"CALLOUT_FLYOVER_TOUR";

            break;
          case 17012:
            v5 = @"CALLOUT_INFO";

            break;
          case 17013:
            v5 = @"CALLOUT_NAV_TRANSIT";

            break;
          case 17014:
            v5 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

            break;
          case 17015:
            v5 = @"CALLOUT_VIEW_TRANSIT_LINE";

            break;
          case 17016:
            v5 = @"DIRECTIONS_SELECT";

            break;
          case 17017:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM";

            break;
          case 17018:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

            break;
          case 17019:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

            break;
          case 17020:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

            break;
          case 17021:
            v5 = @"DIRECTIONS_TRANSIT_LATER";

            break;
          case 17022:
            v5 = @"DIRECTIONS_TRANSIT_NOW";

            break;
          case 17023:
            v5 = @"FLYOVER_NOTIFICATION_DISMISS";

            break;
          case 17024:
            v5 = @"FLYOVER_NOTIFICATION_START";

            break;
          case 17025:
            v5 = @"FLYOVER_TOUR_COMPLETED";

            break;
          case 17026:
            v5 = @"FLYOVER_TOUR_END";

            break;
          case 17027:
            v5 = @"FLYOVER_TOUR_NOTIFICATION";

            break;
          case 17028:
            v5 = @"FLYOVER_TOUR_START";

            break;
          case 17029:
            v5 = @"INFO_BOOKMARKS";

            break;
          case 17030:
            v5 = @"INFO_CARD_DETACHED";

            break;
          case 17031:
            v5 = @"INFO_CONTACTS";

            break;
          case 17032:
            v5 = @"INFO_DIRECTIONS";

            break;
          case 17033:
            v5 = @"INFO_DIRECTIONS_FROM";

            break;
          case 17034:
            v5 = @"INFO_DIRECTIONS_TO";

            break;
          case 17035:
            v5 = @"INFO_DISMISS";

            break;
          case 17036:
            v5 = @"INFO_INFO";

            break;
          case 17037:
            v5 = @"INFO_PHOTOS";

            break;
          case 17038:
            v5 = @"INFO_REVIEWS";

            break;
          case 17039:
            v5 = @"INFO_SHARE";

            break;
          case 17040:
            v5 = @"INFO_SHARE_AIRDROP";

            break;
          case 17041:
            v5 = @"INFO_SHARE_FACEBOOK";

            break;
          case 17042:
            v5 = @"INFO_SHARE_MAIL";

            break;
          case 17043:
            v5 = @"INFO_SHARE_MESSAGE";

            break;
          case 17044:
            v5 = @"INFO_SHARE_TENCENTWEIBO";

            break;
          case 17045:
            v5 = @"INFO_SHARE_WEIBO";

            break;
          case 17046:
            v5 = @"INFO_YELP";

            break;
          case 17047:
            v5 = @"MAPS_APP_LAUNCH";

            break;
          case 17048:
            v5 = @"MAP_3D_OFF";

            break;
          case 17049:
            v5 = @"MAP_3D_ON";

            break;
          case 17050:
            v5 = @"MAP_OPTIONS_DROP_PIN";

            break;
          case 17051:
            v5 = @"MAP_OPTIONS_HYBRID";

            break;
          case 17052:
            v5 = @"MAP_OPTIONS_PRINT";

            break;
          case 17053:
            v5 = @"MAP_OPTIONS_REMOVE_PIN";

            break;
          case 17054:
            v5 = @"MAP_OPTIONS_SATELLITE";

            break;
          case 17055:
            v5 = @"MAP_OPTIONS_STANDARD";

            break;
          case 17056:
            v5 = @"MAP_OPTIONS_TRAFFIC_HIDE";

            break;
          case 17057:
            v5 = @"MAP_OPTIONS_TRAFFIC_SHOW";

            break;
          case 17058:
            v5 = @"MAP_OPTIONS_TRANSIT";

            break;
          case 17059:
            v5 = @"MAP_TAP_FLYOVER_CITY";

            break;
          case 17060:
            v5 = @"MAP_TAP_LINE";

            break;
          case 17061:
            v5 = @"MAP_TAP_POI_TRANSIT";

            break;
          case 17062:
            v5 = @"MAP_TAP_TRAFFIC_INCIDENT";

            break;
          case 17063:
            v5 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

            break;
          case 17064:
            v5 = @"MAP_USER_TRACKING_OFF";

            break;
          case 17065:
            v5 = @"MAP_USER_TRACKING_ON";

            break;
          case 17066:
            v5 = @"MAP_USER_TRACKING_WITH_HEADING_ON";

            break;
          case 17067:
            v5 = @"NAV_CLEAR";

            break;
          case 17068:
            v5 = @"NAV_LIST";

            break;
          case 17069:
            v5 = @"NAV_ROUTE_STEP_NEXT";

            break;
          case 17070:
            v5 = @"NAV_ROUTE_STEP_PREV";

            break;
          case 17071:
            v5 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

            break;
          case 17072:
            v5 = @"ORB_DISPLAY_MENU";

            break;
          case 17073:
            v5 = @"ORB_MENU_CALL";

            break;
          case 17074:
            v5 = @"ORB_MENU_DIRECTIONS";

            break;
          case 17075:
            v5 = @"ORB_MENU_DISMISS";

            break;
          case 17076:
            v5 = @"ORB_MENU_SHARE";

            break;
          case 17077:
            v5 = @"ORB_MENU_SHOW_PLACECARD";

            break;
          case 17078:
            v5 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

            break;
          case 17079:
            v5 = @"ORB_MENU_URL";

            break;
          case 17080:
            v5 = @"ORB_PRESS";

            break;
          case 17081:
            v5 = @"ORB_SPRINGBOARD_MARK_LOCATION";

            break;
          case 17082:
            v5 = @"ORB_SPRINGBOARD_SEARCH";

            break;
          case 17083:
            v5 = @"ORB_SPRINGBOARD_SHARE_LOCATION";

            break;
          case 17084:
            v5 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

            break;
          case 17085:
            v5 = @"RAP_PERMISSION_CANCEL";

            break;
          case 17086:
            v5 = @"RAP_PERMISSION_EMAIL_NA";

            break;
          case 17087:
            v5 = @"RAP_PERMISSION_EMAIL_OK";

            break;
          case 17088:
            v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

            break;
          case 17089:
            v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

            break;
          case 17090:
            v5 = @"RAP_PERMISSION_OK";

            break;
          case 17091:
            v5 = @"SEARCH_BEGIN";

            break;
          case 17092:
            v5 = @"SEARCH_CANCEL";

            break;
          case 17093:
            v5 = @"SEARCH_SELECT";

            break;
          case 17094:
            v5 = @"TRANSIT_LINE_SELECTION_DISMISS";

            break;
          case 17095:
            v5 = @"TRANSIT_LINE_SELECTION_VIEW";

            break;
          case 17096:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

            break;
          case 17097:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

            break;
          case 17098:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

            break;
          case 17099:
            v5 = @"UNKNOWN_ACTION";

            break;
          case 17100:
            v5 = @"INFO_SHARE_TWITTER";

            break;
          case 17101:
            v5 = @"INFO_TAP_POPULAR_APP_NEARBY";

            break;
          case 17102:
            v5 = @"INFO_DIRECTIONS_WALK";

            break;
          case 17103:
            v5 = @"INFO_DIRECTIONS_TRANSIT";

            break;
          case 17104:
            v5 = @"INFO_DIRECTIONS_DRIVE";

            break;
          case 17105:
            v5 = @"INFO_REPORT_A_PROBLEM";

            break;
          case 17106:
            v5 = @"CALLOUT_NAV";

            break;
          case 17107:
            v5 = @"RAP_PERMISSION_EMAIL_CANCEL";

            break;
          case 17108:
            v5 = @"MAP_TAP_POI";

            break;
          default:
            if (action == 16001)
            {
              v5 = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (action != 90010)
              {
                goto LABEL_195;
              }

              v5 = @"PAN_RIGHT";
            }

            break;
        }

        return v5;
      }

      if (action <= 13004)
      {
        if (action > 12007)
        {
          if (action <= 13000)
          {
            switch(action)
            {
              case 0x2EE8:
                v5 = @"ADD_SPECIAL_REQUEST";

                break;
              case 0x2EE9:
                v5 = @"CHANGE_RESERVATION";

                break;
              case 0x2EEA:
                v5 = @"LEARN_MORE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action > 13002)
          {
            if (action == 13003)
            {
              v5 = @"SELECT_LABEL";
            }

            else
            {
              v5 = @"DELETE_ADDRESS";
            }
          }

          else if (action == 13001)
          {
            v5 = @"SELECT_ADDRESS";
          }

          else
          {
            v5 = @"ADD_ADDRESS";
          }
        }

        else if (action <= 12003)
        {
          if (action == 12001)
          {
            v5 = @"VIEW_MORE_OPTIONS";
          }

          else if (action == 12002)
          {
            v5 = @"SELECT_TIME";
          }

          else
          {
            v5 = @"SHOW_NEXT_AVAILABLE";
          }
        }

        else if (action > 12005)
        {
          if (action == 12006)
          {
            v5 = @"EDIT_BOOKING";
          }

          else
          {
            v5 = @"EDIT_PHONE";
          }
        }

        else if (action == 12004)
        {
          v5 = @"DECREASE_TABLE_SIZE";
        }

        else
        {
          v5 = @"INCREASE_TABLE_SIZE";
        }
      }

      else if (action <= 14004)
      {
        if (action <= 14000)
        {
          switch(action)
          {
            case 0x32CD:
              v5 = @"EDIT_ITEMS";

              break;
            case 0x32CE:
              v5 = @"RAP_FAVORITES";

              break;
            case 0x32CF:
              v5 = @"SORT_LIST_ITEM";

              break;
            default:
              goto LABEL_195;
          }
        }

        else if (action > 14002)
        {
          if (action == 14003)
          {
            v5 = @"BOOK_RIDE";
          }

          else
          {
            v5 = @"REQUEST_RIDE";
          }
        }

        else if (action == 14001)
        {
          v5 = @"VIEW_APP";
        }

        else
        {
          v5 = @"ENABLE";
        }
      }

      else
      {
        if (action <= 14008)
        {
          if (action > 14006)
          {
            if (action == 14007)
            {
              v5 = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              v5 = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (action == 14005)
          {
            v5 = @"CONTACT_DRIVER";
          }

          else
          {
            v5 = @"CHANGE_PAYMENT";
          }

          return v5;
        }

        if (action > 15001)
        {
          if (action == 15002)
          {
            v5 = @"ORB_POP";
          }

          else
          {
            if (action != 15003)
            {
              goto LABEL_195;
            }

            v5 = @"ORB_DISMISS";
          }
        }

        else
        {
          if (action != 14009)
          {
            if (action == 15001)
            {
              v5 = @"ORB_PEEK";

              return v5;
            }

LABEL_195:
            v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_196:

            return v5;
          }

          v5 = @"SUBMIT_TRIP_FEEDBACK";
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_whiteListedSiriListActionAsString:(int)a3
{
  if (a3 == 2007)
  {
    action = self->_action;
    if (action <= 3000)
    {
      if (action > 1500)
      {
        if (action <= 1503)
        {
          if (action == 1501)
          {
            v5 = @"TAP_DIRECTIONS";
          }

          else if (action == 1502)
          {
            v5 = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            v5 = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(action)
          {
            case 2001:
              v5 = @"TAP_SEARCH_FIELD";

              return v5;
            case 2002:
              v5 = @"CLEAR_SEARCH";

              return v5;
            case 2003:
              v5 = @"CANCEL_SEARCH";

              return v5;
            case 2004:
              v5 = @"TAP_BROWSE_TOP_CATEGORY";

              return v5;
            case 2005:
              v5 = @"TAP_BROWSE_SUB_CATEGORY";

              return v5;
            case 2006:
              v5 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

              return v5;
            case 2007:
              v5 = @"TAP_LIST_ITEM";

              return v5;
            case 2008:
              v5 = @"SHARE_LIST_ITEM";

              return v5;
            case 2009:
              v5 = @"DELETE_LIST_ITEM";

              return v5;
            case 2010:
              v5 = @"EDIT_LIST_ITEM";

              return v5;
            case 2011:
              v5 = @"REFRESH_SEARCH";

              return v5;
            case 2012:
              v5 = @"REVEAL_LIST_ITEM_ACTIONS";

              return v5;
            case 2013:
              v5 = @"HIDE_LIST_ITEM_ACTIONS";

              return v5;
            case 2014:
              v5 = @"TAP_SEARCH_BUTTON";

              return v5;
            case 2015:
              v5 = @"SHOW_SEARCH_RESULTS";

              return v5;
            case 2016:
              v5 = @"SHOW_REFRESH_SEARCH";

              return v5;
            case 2017:
              v5 = @"PASTE_TEXT";

              return v5;
            case 2018:
              v5 = @"TAP_LIST_SUB_ITEM";

              return v5;
            case 2019:
              v5 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2020:
              v5 = @"TAP_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2021:
              v5 = @"CLOSE_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2022:
              v5 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2023:
              v5 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

              return v5;
            case 2024:
              v5 = @"RETAINED_QUERY";

              return v5;
            case 2025:
              v5 = @"TAP_RECENT_AC_SUGGESTION";

              return v5;
            case 2026:
              v5 = @"CLEAR_RECENT_AC_SUGGESTION";

              return v5;
            case 2027:
              v5 = @"DELETE_RECENT_AC_SUGGESTION";

              return v5;
            case 2028:
            case 2029:
              goto LABEL_195;
            case 2030:
              v5 = @"TAP_BROWSE_NEARBY_CATEGORY";

              return v5;
            case 2031:
              v5 = @"TAP_SUBACTION";

              return v5;
            case 2032:
              v5 = @"TAP_QUERY_BUILDING_ARROW";

              return v5;
            case 2033:
              v5 = @"CLICK_ON_EDIT_SEARCH";

              return v5;
            case 2034:
              v5 = @"REMOVE_CLIENT_AC_SUGGESTION";

              return v5;
            case 2035:
              v5 = @"SHARE_CLIENT_AC_SUGGESTION";

              return v5;
            case 2036:
              v5 = @"TAP_ON_MORE_RESULTS";

              return v5;
            case 2037:
              v5 = @"SHARE_ITEM";

              return v5;
            case 2038:
              v5 = @"HIDE_ITEM";

              return v5;
            case 2039:
              v5 = @"TAP_SUGGESTED_ITEM";

              return v5;
            case 2040:
              v5 = @"SHARE_SUGGESTED_ITEM";

              return v5;
            case 2041:
              v5 = @"HIDE_SUGGESTED_ITEM";

              return v5;
            case 2042:
              v5 = @"ADD_HOME_FAVORITE";

              return v5;
            case 2043:
              v5 = @"ADD_WORK_FAVORITE";

              return v5;
            case 2044:
              v5 = @"ADD_FAVORITE";

              return v5;
            case 2045:
              v5 = @"VIEW_FAVORITES_LIST";

              return v5;
            case 2046:
              v5 = @"TAP_HOME_FAVORITE";

              return v5;
            case 2047:
              v5 = @"TAP_WORK_FAVORITE";

              return v5;
            case 2048:
              v5 = @"TAP_CAR_FAVORITE";

              return v5;
            case 2049:
              v5 = @"TAP_FAVORITE_ITEM";

              return v5;
            case 2050:
              v5 = @"CREATE_HOME_FAVORITE";

              return v5;
            case 2051:
              v5 = @"CREATE_WORK_FAVORITE";

              return v5;
            case 2052:
              v5 = @"CREATE_FAVORITE";

              return v5;
            case 2053:
              v5 = @"SUBMIT_FAVORITE_EDIT";

              return v5;
            case 2054:
              v5 = @"ADD_RECOMMENDED_FAVORITE";

              return v5;
            case 2055:
              v5 = @"EDIT_FAVORITE";

              return v5;
            case 2056:
              v5 = @"REMOVE_FAVORITE";

              return v5;
            case 2057:
              v5 = @"SHARE_FAVORITE";

              return v5;
            case 2058:
              v5 = @"EDIT_FAVORITES";

              return v5;
            case 2059:
              v5 = @"ADD_FAVORITE_PLACE";

              return v5;
            case 2060:
              v5 = @"REMOVE_FAVORITE_PLACE";

              return v5;
            case 2061:
              v5 = @"CHANGE_HOME_ADDRESS";

              return v5;
            case 2062:
              v5 = @"CHANGE_WORK_ADDRESS";

              return v5;
            case 2063:
              v5 = @"REFINE_LOCATION";

              return v5;
            case 2064:
              v5 = @"TAP_RECENTLY_VIEWED_ITEM";

              return v5;
            case 2065:
              v5 = @"SHOW_COLLECTION_LIST";

              return v5;
            case 2066:
              v5 = @"SHOW_FAVORITES_COLLECTION";

              return v5;
            case 2067:
              v5 = @"SHOW_COLLECTION";

              return v5;
            case 2068:
              v5 = @"TAP_COLLECTION_ITEM";

              return v5;
            case 2069:
              v5 = @"SHARE_COLLECTION_ITEM";

              return v5;
            case 2070:
              v5 = @"REMOVE_COLLECTION_ITEM";

              return v5;
            case 2071:
              v5 = @"SAVE_SHARED_COLLECTION";

              return v5;
            case 2072:
              v5 = @"CREATE_NEW_COLLECTION";

              return v5;
            case 2073:
              v5 = @"SAVE_TO_COLLECTION";

              return v5;
            case 2074:
              v5 = @"EDIT_PHOTO";

              return v5;
            case 2075:
              v5 = @"SORT_BY_NAME";

              return v5;
            case 2076:
              v5 = @"SORT_BY_DISTANCE";

              return v5;
            case 2077:
              v5 = @"SORT_BY_RECENT";

              return v5;
            case 2078:
              v5 = @"AUTO_SHARE_ETA";

              return v5;
            case 2079:
              v5 = @"CANCEL_AUTO_SHARE_ETA";

              return v5;
            case 2080:
              v5 = @"MAP_SEARCH";

              return v5;
            case 2081:
              v5 = @"DELETE_COLLECTION";

              return v5;
            case 2082:
              v5 = @"SHARE_COLLECTION";

              return v5;
            case 2083:
              v5 = @"SHOW_TRANSIT_LINES_COLLECTION";

              return v5;
            case 2084:
              v5 = @"SHOW_MY_PLACES";

              return v5;
            case 2085:
              v5 = @"SHOW_ALL_PLACES";

              return v5;
            case 2086:
              v5 = @"TAP_RECENT_QUERY";

              return v5;
            case 2087:
              v5 = @"TAP_QUERY_SUGGESTION";

              return v5;
            case 2088:
              v5 = @"DELETE_CURATED_COLLECTION";

              return v5;
            case 2089:
              v5 = @"FOLLOW";

              return v5;
            case 2090:
              v5 = @"PUNCH_IN";

              return v5;
            case 2091:
              v5 = @"SAVE_CURATED_COLLECTION";

              return v5;
            case 2092:
              v5 = @"SCROLL_LEFT_COLLECTIONS";

              return v5;
            case 2093:
              v5 = @"SCROLL_RIGHT_COLLECTIONS";

              return v5;
            case 2094:
              v5 = @"SEE_ALL_CURATED_COLLECTION";

              return v5;
            case 2095:
              v5 = @"SEE_ALL_PUBLISHERS";

              return v5;
            case 2096:
              v5 = @"SHARE_CURATED_COLLECTION";

              return v5;
            case 2097:
              v5 = @"SHARE_PUBLISHER";

              return v5;
            case 2098:
              v5 = @"SHOW_MORE_COLLECTION";

              return v5;
            case 2099:
              v5 = @"TAP_CURATED_COLLECTION";

              return v5;
            case 2100:
              v5 = @"TAP_FEATURED_COLLECTIONS";

              return v5;
            case 2101:
              v5 = @"TAP_LOCATION";

              return v5;
            case 2102:
              v5 = @"TAP_PUBLISHER";

              return v5;
            case 2103:
              v5 = @"TAP_PUBLISHER_APP";

              return v5;
            case 2104:
              v5 = @"TAP_PUBLISHER_COLLECTIONS";

              return v5;
            case 2105:
              v5 = @"UNFOLLOW";

              return v5;
            case 2106:
              v5 = @"CHANGE_SCHOOL_ADDRESS";

              return v5;
            case 2107:
              v5 = @"ADD_VEHICLE";

              return v5;
            case 2108:
              v5 = @"DISPLAY_VIRTUAL_GARAGE";

              return v5;
            case 2109:
              v5 = @"ENTER_VIRTUAL_GARAGE";

              return v5;
            case 2110:
              v5 = @"PUNCH_OUT_MANUFACTURER_APP";

              return v5;
            case 2111:
              v5 = @"REMOVE_LICENSE_PLATE";

              return v5;
            case 2112:
              v5 = @"REMOVE_VEHICLE";

              return v5;
            case 2113:
              v5 = @"SELECT_VEHICLE";

              return v5;
            case 2114:
              v5 = @"SUBMIT_LICENSE_PLATE";

              return v5;
            case 2115:
              v5 = @"TAP_ADD_LICENSE_PLATE";

              return v5;
            case 2116:
              v5 = @"TAP_ADD_NEW_CAR";

              return v5;
            case 2117:
              v5 = @"TAP_BANNER";

              return v5;
            case 2118:
              v5 = @"TAP_CONNECT";

              return v5;
            case 2119:
              v5 = @"TAP_CONTINUE";

              return v5;
            case 2120:
              v5 = @"TAP_EDIT";

              return v5;
            case 2121:
              v5 = @"TAP_NAME";

              return v5;
            case 2122:
              v5 = @"TAP_NOT_NOW";

              return v5;
            case 2123:
              v5 = @"TAP_OTHER_VEHICLE";

              return v5;
            case 2124:
              v5 = @"TAP_REMOVE_LICENSE_PLATE";

              return v5;
            case 2125:
              v5 = @"TAP_UPDATE_PLATE_NUMBER";

              return v5;
            case 2126:
              v5 = @"TAP_VEHICLE";

              return v5;
            case 2127:
              v5 = @"TAP_VEHICLE_NAME";

              return v5;
            case 2128:
              v5 = @"UPDATE_NAME";

              return v5;
            case 2129:
              v5 = @"DONE_TAKING_PHOTO";

              return v5;
            case 2130:
              v5 = @"ENABLE_SHOW_PHOTO_NAME";

              return v5;
            case 2131:
              v5 = @"SUBMIT_PHOTO";

              return v5;
            case 2132:
              v5 = @"USE_PHOTO";

              return v5;
            case 2133:
              v5 = @"ADD_RECOMMENDATION_TO_MAPS";

              return v5;
            case 2134:
              v5 = @"CANCEL_PHOTO_SUBMISSION";

              return v5;
            case 2135:
              v5 = @"CLOSE_RECOMMENDATION_CARD";

              return v5;
            case 2136:
              v5 = @"EDIT_RATING";

              return v5;
            case 2137:
              v5 = @"PROMPTED_TO_ADD_PHOTO";

              return v5;
            case 2138:
              v5 = @"PROMPTED_TO_ADD_RATING";

              return v5;
            case 2139:
              v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

              return v5;
            case 2140:
              v5 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

              return v5;
            case 2141:
              v5 = @"RETAKE_PHOTO";

              return v5;
            case 2142:
              v5 = @"REVEAL_RECOMMENDATION_CARD";

              return v5;
            case 2143:
              v5 = @"SUBMIT_NEGATIVE_RATING";

              return v5;
            case 2144:
              v5 = @"SUBMIT_POSITIVE_RATING";

              return v5;
            case 2145:
              v5 = @"TAP_CHOOSING_PHOTO";

              return v5;
            case 2146:
              v5 = @"TAP_TAKE_NEW_PHOTO";

              return v5;
            case 2147:
              v5 = @"TAP_TO_ADD_PHOTO";

              return v5;
            case 2148:
              v5 = @"CANCEL_INCIDENT_REPORT";

              return v5;
            case 2149:
              v5 = @"INCIDENT_REPORT_SUBMITTED";

              return v5;
            case 2150:
              v5 = @"REPORTED_INCIDENT_NOT_RECEIVED";

              return v5;
            case 2151:
              v5 = @"REPORTED_INCIDENT_RECEIVED";

              return v5;
            case 2152:
              v5 = @"REPORT_INCIDENT";

              return v5;
            case 2153:
              v5 = @"SELECT_INCIDENT_TYPE";

              return v5;
            case 2154:
              v5 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

              return v5;
            case 2155:
              v5 = @"TAP_TO_START_REPORT_INCIDENT";

              return v5;
            case 2156:
              v5 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

              return v5;
            case 2157:
              v5 = @"ATTEMPT_VLF_CORRECTION";

              return v5;
            case 2158:
              v5 = @"DISMISS_VLF_PROMPT";

              return v5;
            case 2159:
              v5 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

              return v5;
            case 2160:
              v5 = @"VLF_CORRECTION_FAILED";

              return v5;
            case 2161:
              v5 = @"VLF_CORRECTION_SUCCESSFUL";

              return v5;
            case 2162:
              v5 = @"ENABLE_WIDGET_SUGGESTIONS";

              return v5;
            case 2163:
              v5 = @"DISPLAY_CZ_ADVISORY";

              return v5;
            case 2164:
              v5 = @"PUNCH_OUT_URL_PAY";

              return v5;
            case 2165:
              v5 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

              return v5;
            case 2166:
              v5 = @"DELETE_ITEM";

              return v5;
            case 2167:
              v5 = @"CANCEL_REMOVE";

              return v5;
            case 2168:
              v5 = @"DELETE_SUGGESTION";

              return v5;
            case 2169:
              v5 = @"ADD_SCHOOL_FAVORITE";

              return v5;
            case 2170:
              v5 = @"GO_TO_WEBSITE";

              return v5;
            case 2171:
              v5 = @"TRY_AGAIN";

              return v5;
            case 2172:
              v5 = @"CHECK_AUTO_RECORD_WORKOUT";

              return v5;
            case 2173:
              v5 = @"CHECK_EBIKE";

              return v5;
            case 2174:
              v5 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

              return v5;
            case 2175:
              v5 = @"DISPLAY_CYCLING_DEFAULT_OPTION";

              return v5;
            case 2176:
              v5 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

              return v5;
            case 2177:
              v5 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

              return v5;
            case 2178:
              v5 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

              return v5;
            case 2179:
              v5 = @"TAP_AUTOMATIC_WORKOUT_OPTION";

              return v5;
            case 2180:
              v5 = @"TAP_CYCLING_DEFAULT_OPTION";

              return v5;
            case 2181:
              v5 = @"TAP_CYCLING_NO_BIKE_ADVISORY";

              return v5;
            case 2182:
              v5 = @"TAP_CYCLING_STAIRS_ADVISORY";

              return v5;
            case 2183:
              v5 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

              return v5;
            case 2184:
              v5 = @"UNCHECK_AUTO_RECORD_WORKOUT";

              return v5;
            case 2185:
              v5 = @"UNCHECK_EBIKE";

              return v5;
            case 2186:
              v5 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

              return v5;
            case 2187:
              v5 = @"DISPLAY_LPR_ADVISORY";

              return v5;
            case 2188:
              v5 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

              return v5;
            case 2189:
              v5 = @"CREATE_WIDGET";

              return v5;
            case 2190:
              v5 = @"REVEAL_WIDGET_TRAY";

              return v5;
            case 2191:
              v5 = @"LPR_ERROR_CODE";

              return v5;
            case 2192:
              v5 = @"TAP_SEE_ALL_RECENTLY_VIEWED";

              return v5;
            case 2193:
              v5 = @"TAP_CLEAR_RECENTLY_VIEWED";

              return v5;
            case 2194:
              v5 = @"LPR_HARD_STOP";

              return v5;
            case 2195:
              v5 = @"TAP_PUBLISHER_SUBACTION";

              return v5;
            case 2196:
              v5 = @"CARPLAY_DISPLAY_ACTIVATED";

              return v5;
            case 2197:
              v5 = @"CARPLAY_DISPLAY_DEACTIVATED";

              return v5;
            case 2198:
              v5 = @"TAP_FEATURED_COLLECTION";

              return v5;
            case 2199:
              v5 = @"SCROLL_FEATURED_COLLECTION_FORWARD";

              return v5;
            case 2200:
              v5 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

              return v5;
            default:
              if (action == 1504)
              {
                v5 = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (action != 1505)
                {
                  goto LABEL_195;
                }

                v5 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        v5 = @"UI_ACTION_UNKNOWN";
        switch(action)
        {
          case 0:
            goto LABEL_196;
          case 1:
            v5 = @"PULL_UP";

            break;
          case 2:
            v5 = @"PULL_DOWN";

            break;
          case 3:
            v5 = @"TAP";

            break;
          case 4:
            v5 = @"CLOSE";

            break;
          case 5:
            v5 = @"SWIPE_PREV";

            break;
          case 6:
            v5 = @"SWIPE_NEXT";

            break;
          case 7:
            v5 = @"SCROLL_UP";

            break;
          case 8:
            v5 = @"SCROLL_DOWN";

            break;
          case 9:
          case 23:
          case 24:
          case 346:
          case 347:
          case 348:
          case 349:
          case 350:
          case 351:
          case 352:
          case 353:
          case 354:
          case 355:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 536:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 545:
          case 546:
          case 547:
          case 548:
          case 549:
          case 550:
          case 551:
          case 552:
          case 553:
          case 554:
          case 555:
          case 556:
          case 557:
          case 558:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 571:
          case 572:
          case 573:
          case 574:
          case 575:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 590:
          case 591:
          case 592:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
          case 601:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 607:
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
          case 621:
          case 622:
          case 623:
          case 624:
          case 625:
          case 626:
          case 627:
          case 628:
          case 629:
          case 630:
          case 631:
          case 632:
          case 633:
          case 634:
          case 635:
          case 636:
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
          case 642:
          case 643:
          case 644:
          case 645:
          case 646:
          case 647:
          case 648:
          case 649:
          case 650:
          case 651:
          case 652:
          case 653:
          case 654:
          case 655:
          case 656:
          case 657:
          case 658:
          case 659:
          case 660:
          case 661:
          case 662:
          case 663:
          case 664:
          case 665:
          case 666:
          case 667:
          case 668:
          case 669:
          case 670:
          case 671:
          case 672:
          case 673:
          case 674:
          case 675:
          case 676:
          case 677:
          case 678:
          case 679:
          case 680:
          case 681:
          case 682:
          case 683:
          case 684:
          case 685:
          case 686:
          case 687:
          case 688:
          case 689:
          case 690:
          case 691:
          case 692:
          case 693:
          case 694:
          case 695:
          case 696:
          case 697:
          case 698:
          case 699:
          case 700:
          case 701:
          case 702:
          case 703:
          case 704:
          case 705:
          case 706:
          case 707:
          case 708:
          case 709:
          case 710:
          case 711:
          case 712:
          case 713:
          case 714:
          case 715:
          case 716:
          case 717:
          case 718:
          case 719:
          case 720:
          case 721:
          case 722:
          case 723:
          case 724:
          case 725:
          case 726:
          case 727:
          case 728:
          case 729:
          case 730:
          case 731:
          case 732:
          case 733:
          case 734:
          case 735:
          case 736:
          case 737:
          case 738:
          case 739:
          case 740:
          case 741:
          case 742:
          case 743:
          case 744:
          case 745:
          case 746:
          case 747:
          case 748:
          case 749:
          case 750:
          case 751:
          case 752:
          case 753:
          case 754:
          case 755:
          case 756:
          case 757:
          case 758:
          case 759:
          case 760:
          case 761:
          case 762:
          case 763:
          case 764:
          case 765:
          case 766:
          case 767:
          case 768:
          case 769:
          case 770:
          case 771:
          case 772:
          case 773:
          case 774:
          case 775:
          case 776:
          case 777:
          case 778:
          case 779:
          case 780:
          case 781:
          case 782:
          case 783:
          case 784:
          case 785:
          case 786:
          case 787:
          case 788:
          case 789:
          case 790:
          case 791:
          case 792:
          case 793:
          case 794:
          case 795:
          case 796:
          case 797:
          case 798:
          case 799:
          case 800:
          case 801:
          case 802:
          case 803:
          case 804:
          case 805:
          case 806:
          case 807:
          case 808:
          case 809:
          case 810:
          case 811:
          case 812:
          case 813:
          case 814:
          case 815:
          case 816:
          case 817:
          case 818:
          case 819:
          case 820:
          case 821:
          case 822:
          case 823:
          case 824:
          case 825:
          case 826:
          case 827:
          case 828:
          case 829:
          case 830:
          case 831:
          case 832:
          case 833:
          case 834:
          case 835:
          case 836:
          case 837:
          case 838:
          case 839:
          case 840:
          case 841:
          case 842:
          case 843:
          case 844:
          case 845:
          case 846:
          case 847:
          case 848:
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 856:
          case 857:
          case 858:
          case 859:
          case 860:
          case 861:
          case 862:
          case 863:
          case 864:
          case 865:
          case 866:
          case 867:
          case 868:
          case 869:
          case 870:
          case 871:
          case 872:
          case 873:
          case 874:
          case 875:
          case 876:
          case 877:
          case 878:
          case 879:
          case 880:
          case 881:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 888:
          case 889:
          case 890:
          case 891:
          case 892:
          case 893:
          case 894:
          case 895:
          case 896:
          case 897:
          case 898:
          case 899:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 905:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 915:
          case 916:
          case 917:
          case 918:
          case 919:
          case 920:
          case 921:
          case 922:
          case 923:
          case 924:
          case 925:
          case 926:
          case 927:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 934:
          case 935:
          case 936:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 947:
          case 948:
          case 949:
          case 950:
          case 951:
          case 952:
          case 953:
          case 954:
          case 955:
          case 956:
          case 957:
          case 958:
          case 959:
          case 960:
          case 961:
          case 962:
          case 963:
          case 964:
          case 965:
          case 966:
          case 967:
          case 968:
          case 969:
          case 970:
          case 971:
          case 972:
          case 973:
          case 974:
          case 975:
          case 976:
          case 977:
          case 978:
          case 979:
          case 980:
          case 981:
          case 982:
          case 983:
          case 984:
          case 985:
          case 986:
          case 987:
          case 988:
          case 989:
          case 990:
          case 991:
          case 992:
          case 993:
          case 994:
          case 995:
          case 996:
          case 997:
          case 998:
          case 999:
          case 1000:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1019:
          case 1021:
          case 1022:
          case 1023:
          case 1024:
          case 1025:
          case 1026:
          case 1027:
          case 1028:
          case 1029:
            goto LABEL_195;
          case 10:
            v5 = @"SHOW_MORE";

            break;
          case 11:
            v5 = @"SHOW_LESS";

            break;
          case 12:
            v5 = @"SWIPE_LEFT";

            break;
          case 13:
            v5 = @"SWIPE_RIGHT";

            break;
          case 14:
            v5 = @"MINIMIZE";

            break;
          case 15:
            v5 = @"TAP_PREV";

            break;
          case 16:
            v5 = @"TAP_NEXT";

            break;
          case 17:
            v5 = @"SUBMIT";

            break;
          case 18:
            v5 = @"CANCEL";

            break;
          case 19:
            v5 = @"ENTER_MAPS";

            break;
          case 20:
            v5 = @"EXIT_MAPS";

            break;
          case 21:
            v5 = @"REVEAL";

            break;
          case 22:
            v5 = @"OPEN_NEW_TAB";

            break;
          case 25:
            v5 = @"BACK";

            break;
          case 26:
            v5 = @"ACTIVATE";

            break;
          case 27:
            v5 = @"DEACTIVATE";

            break;
          case 28:
            v5 = @"AGREE";

            break;
          case 29:
            v5 = @"DISAGREE";

            break;
          case 30:
            v5 = @"SKIP_ANSWER";

            break;
          case 31:
            v5 = @"EXPAND";

            break;
          case 32:
            v5 = @"COLLAPSE";

            break;
          case 33:
            v5 = @"ENTER";

            break;
          case 34:
            v5 = @"EXIT";

            break;
          case 35:
            v5 = @"SCROLL_UP_INDEX_BAR";

            break;
          case 36:
            v5 = @"SCROLL_DOWN_INDEX_BAR";

            break;
          case 37:
            v5 = @"TOGGLE_ON";

            break;
          case 38:
            v5 = @"TOGGLE_OFF";

            break;
          case 39:
            v5 = @"LONG_PRESS";

            break;
          case 40:
            v5 = @"CLICK";

            break;
          case 41:
            v5 = @"TAP_DONE";

            break;
          case 42:
            v5 = @"TAP_CLOSE";

            break;
          case 43:
            v5 = @"SCROLL_LEFT";

            break;
          case 44:
            v5 = @"SCROLL_RIGHT";

            break;
          case 45:
            v5 = @"DISPLAY";

            break;
          case 46:
            v5 = @"OPEN_IN_APP";

            break;
          case 47:
            v5 = @"CONCEAL";

            break;
          case 48:
            v5 = @"TAP_DELETE";

            break;
          case 49:
            v5 = @"TAP_FILTER";

            break;
          case 50:
            v5 = @"TAP_SECONDARY_BUTTON";

            break;
          case 51:
            v5 = @"TAP_WIDGET_FOOD";

            break;
          case 52:
            v5 = @"TAP_WIDGET_GAS";

            break;
          case 53:
            v5 = @"TAP_WIDGET_LOADING";

            break;
          case 54:
            v5 = @"TAP_WIDGET_SEARCH";

            break;
          case 55:
            v5 = @"TAP_WIDGET_STORES";

            break;
          case 56:
            v5 = @"DISPLAY_ALLOW_ONCE_PROMPT";

            break;
          case 57:
            v5 = @"SHARE_CURRENT_LOCATION";

            break;
          case 58:
            v5 = @"SHARE_PHOTO";

            break;
          case 59:
            v5 = @"TAP_KEEP_OFF";

            break;
          case 60:
            v5 = @"TAP_PHOTO_CATEGORY";

            break;
          case 61:
            v5 = @"TAP_PRECISE_LOCATION_OFF_BANNER";

            break;
          case 62:
            v5 = @"TAP_TURN_ON";

            break;
          case 63:
            v5 = @"DISPLAY_CYCLING_ANNOTATION";

            break;
          case 64:
            v5 = @"DISPLAY_DRIVING_DEFAULT_OPTION";

            break;
          case 65:
            v5 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

            break;
          case 66:
            v5 = @"DISPLAY_WALKING_DEFAULT_OPTION";

            break;
          case 67:
            v5 = @"TAP_CYCLING_ANNOTATION";

            break;
          case 68:
            v5 = @"TAP_DRIVING_DEFAULT_OPTION";

            break;
          case 69:
            v5 = @"TAP_TRANSIT_DEFAULT_OPTION";

            break;
          case 70:
            v5 = @"TAP_WALKING_DEFAULT_OPTION";

            break;
          case 71:
            v5 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

            break;
          case 72:
            v5 = @"TAP_RIDESHARE_DEFAULT_OPTION";

            break;
          case 73:
            v5 = @"TAP_PERSONAL_COLLECTION";

            break;
          case 74:
            v5 = @"RESUME_ROUTE";

            break;
          case 75:
            v5 = @"DISPLAY_OUT_OF_RANGE_ALERT";

            break;
          case 76:
            v5 = @"TAP_ALLOW_ONCE";

            break;
          case 77:
            v5 = @"TAP_DO_NOT_ALLOW";

            break;
          case 78:
            v5 = @"ADD_RECCOMENDED_FAVORITE";

            break;
          case 79:
            v5 = @"ADD_RECOMMENDED_HOME_FAVORITE";

            break;
          case 80:
            v5 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 81:
            v5 = @"ADD_RECOMMENDED_WORK_FAVORITE";

            break;
          case 82:
            v5 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

            break;
          case 83:
            v5 = @"CREATE_SCHOOL_FAVORITE";

            break;
          case 84:
            v5 = @"TAP_SCHOOL_FAVORITE";

            break;
          case 85:
            v5 = @"SELECT_ROUTING_TYPE_CYCLING";

            break;
          case 86:
            v5 = @"REPORT_PHOTO";

            break;
          case 87:
            v5 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

            break;
          case 88:
            v5 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

            break;
          case 89:
            v5 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

            break;
          case 90:
            v5 = @"CREATE_RECOMMENDED_FAVORITE";

            break;
          case 91:
            v5 = @"CREATE_RECOMMENDED_HOME_FAVORITE";

            break;
          case 92:
            v5 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 93:
            v5 = @"CREATE_RECOMMENDED_WORK_FAVORITE";

            break;
          case 94:
            v5 = @"TAP_SMALL_WIDGET_ITEM";

            break;
          case 95:
            v5 = @"TAP_MEDIUM_WIDGET_ITEM";

            break;
          case 96:
            v5 = @"TAP_LARGE_WIDGET_ITEM";

            break;
          case 97:
            v5 = @"DISPLAY_ARP_TIPKIT";

            break;
          case 98:
            v5 = @"NEXT";

            break;
          case 99:
            v5 = @"TAP_RATE_AND_ADD_PHOTOS";

            break;
          case 100:
            v5 = @"TAP_TO_ADD_POSITIVE_RATING";

            break;
          case 101:
            v5 = @"TAP_TO_ADD_NEGATIVE_RATING";

            break;
          case 102:
            v5 = @"TAP_ACTIVE_SHARING_NOTIFICATION";

            break;
          case 103:
            v5 = @"INVOKE_SIRI_PROMPT";

            break;
          case 104:
            v5 = @"ETA_SHARED_SUCCESSFULLY";

            break;
          case 105:
            v5 = @"ENDED_ETA_SHARE_SUCCESSFULLY";

            break;
          case 106:
            v5 = @"CLEAR_INCIDENT";

            break;
          case 107:
            v5 = @"CONFIRM_INCIDENT";

            break;
          case 108:
            v5 = @"DISMISS_INCIDENT";

            break;
          case 109:
            v5 = @"INCIDENT_ALERT_TIMEOUT";

            break;
          case 110:
            v5 = @"INCIDENT_ALERT_TRAY_SHOWN";

            break;
          case 111:
            v5 = @"INCIDENT_CARD_SHOWN";

            break;
          case 112:
            v5 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

            break;
          case 113:
            v5 = @"INCIDENT_REPORT_TRAY_SHOWN";

            break;
          case 114:
            v5 = @"NAV_TRAY_DISCOVERY_SHOWN";

            break;
          case 115:
            v5 = @"TAP_TO_REPORT_INCIDENT";

            break;
          case 116:
            v5 = @"TAP_SHORTCUT";

            break;
          case 117:
            v5 = @"BLOCK_CONTACT";

            break;
          case 118:
            v5 = @"TAP_TO_ADD_RATING";

            break;
          case 119:
            v5 = @"AR_WALKING_LOCALIZATION_FAILED";

            break;
          case 120:
            v5 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

            break;
          case 121:
            v5 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

            break;
          case 122:
            v5 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

            break;
          case 123:
            v5 = @"ATTEMPT_AR_WALKING_LOCALIZATION";

            break;
          case 124:
            v5 = @"RAISE_TO_ENTER_AR_WALKING";

            break;
          case 125:
            v5 = @"TAP_DISMISS";

            break;
          case 126:
            v5 = @"TAP_ENTER_AR_WALKING";

            break;
          case 127:
            v5 = @"TAP_OK";

            break;
          case 128:
            v5 = @"TAP_TRY_AGAIN";

            break;
          case 129:
            v5 = @"TAP_TURN_ON_IN_SETTINGS";

            break;
          case 130:
            v5 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

            break;
          case 131:
            v5 = @"VLF_CORRECTION_USER_ABANDON";

            break;
          case 132:
            v5 = @"AREA_EVENTS_ALERT";

            break;
          case 133:
            v5 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

            break;
          case 134:
            v5 = @"ACCEPT_EVENT_REROUTE";

            break;
          case 135:
            v5 = @"DISPLAY_AREA_EVENTS_ADVISORY";

            break;
          case 136:
            v5 = @"DISMISS_EVENT_REROUTE";

            break;
          case 137:
            v5 = @"PUNCH_OUT_EVENTS_LINK";

            break;
          case 138:
            v5 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

            break;
          case 139:
            v5 = @"ADJUST_GUIDANCE_SETTINGS";

            break;
          case 140:
            v5 = @"HIDE_DETAILS";

            break;
          case 141:
            v5 = @"SELECT_VOICE_GUIDANCE_ON";

            break;
          case 142:
            v5 = @"SELECT_VOICE_GUIDANCE_OFF";

            break;
          case 143:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

            break;
          case 144:
            v5 = @"TAP_TEXT_LABEL";

            break;
          case 145:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

            break;
          case 146:
            v5 = @"TAP_EXIT";

            break;
          case 147:
            v5 = @"TAP_CITY_MENU";

            break;
          case 148:
            v5 = @"CHECK_AVOID_TOLLS";

            break;
          case 149:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

            break;
          case 150:
            v5 = @"TAP_ICLOUD";

            break;
          case 151:
            v5 = @"CHECK_AVOID_HIGHWAYS";

            break;
          case 152:
            v5 = @"TAP_FAVORITES";

            break;
          case 153:
            v5 = @"SELECT_DISTANCE_IN_KM";

            break;
          case 154:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

            break;
          case 155:
            v5 = @"OPEN_FULL_CARD_FILTER";

            break;
          case 156:
            v5 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

            break;
          case 157:
            v5 = @"OPEN_SINGLE_CARD_FILTER";

            break;
          case 158:
            v5 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 159:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

            break;
          case 160:
            v5 = @"SESSIONLESS_REVEAL";

            break;
          case 161:
            v5 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

            break;
          case 162:
            v5 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

            break;
          case 163:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

            break;
          case 164:
            v5 = @"ENTER_RAP_REPORT_MENU";

            break;
          case 165:
            v5 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

            break;
          case 166:
            v5 = @"TAP_MY_VEHICLES";

            break;
          case 167:
            v5 = @"SUBMIT_SINGLE_CARD_FILTER";

            break;
          case 168:
            v5 = @"SUBMIT_FULL_CARD_FILTER";

            break;
          case 169:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

            break;
          case 170:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

            break;
          case 171:
            v5 = @"TAP_EXPLORE_CURATED_COLELCTIONS";

            break;
          case 172:
            v5 = @"TAP_ACCOUNT";

            break;
          case 173:
            v5 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

            break;
          case 174:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

            break;
          case 175:
            v5 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

            break;
          case 176:
            v5 = @"RESULT_REFINEMENT_TOGGLE_OFF";

            break;
          case 177:
            v5 = @"TAP_CITY_CURATED_COLLECTIONS";

            break;
          case 178:
            v5 = @"TAP_REPORTS";

            break;
          case 179:
            v5 = @"TAP_RATINGS";

            break;
          case 180:
            v5 = @"TAP_EXPLORE_CURATED_COLLECTIONS";

            break;
          case 181:
            v5 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

            break;
          case 182:
            v5 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

            break;
          case 183:
            v5 = @"SELECT_DISTANCE_IN_MILES";

            break;
          case 184:
            v5 = @"TAP_PRIVACY_STATEMENT";

            break;
          case 185:
            v5 = @"TAP_MAPS_SETTINGS";

            break;
          case 186:
            v5 = @"CANCEL_FULL_CARD_FILTER";

            break;
          case 187:
            v5 = @"TAP_LATEST_CURATED_COLLECTION";

            break;
          case 188:
            v5 = @"TAP_TEMPORAL_CURATED_COLLECTION";

            break;
          case 189:
            v5 = @"UNCHECK_AVOID_TOLLS";

            break;
          case 190:
            v5 = @"UNSELECT_SEARCH_REFINEMENT";

            break;
          case 191:
            v5 = @"TAP_RATING";

            break;
          case 192:
            v5 = @"TAP_ICLOUD_SIGN_IN";

            break;
          case 193:
            v5 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

            break;
          case 194:
            v5 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

            break;
          case 195:
            v5 = @"UNCHECK_AVOID_HIGHWAYS";

            break;
          case 196:
            v5 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

            break;
          case 197:
            v5 = @"RESULT_REFINEMENT_TOGGLE_ON";

            break;
          case 198:
            v5 = @"TAP_CONTEXT_LINE_HYPERLINK";

            break;
          case 199:
            v5 = @"TAP_MY_GUIDES";

            break;
          case 200:
            v5 = @"SELECT_SEARCH_REFINEMENT";

            break;
          case 201:
            v5 = @"SESSIONLESS_TAP_ACCOUNT";

            break;
          case 202:
            v5 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 203:
            v5 = @"TAP_TRAVEL_PREFERENCES";

            break;
          case 204:
            v5 = @"SHOW_CURATED_COLLECTION_LIST";

            break;
          case 205:
            v5 = @"CANCEL_SINGLE_CARD_FILTER";

            break;
          case 206:
            v5 = @"DISPLAY_HFP_OPTION";

            break;
          case 207:
            v5 = @"SWITCH_OFF_HFP";

            break;
          case 208:
            v5 = @"SWITCH_ON_HFP";

            break;
          case 209:
            v5 = @"TAP_QUICK_ACTION_TRAY";

            break;
          case 210:
            v5 = @"SHOW_ALL_CITIES";

            break;
          case 211:
            v5 = @"TAP_ADD_NEARBY_TRANSIT";

            break;
          case 212:
            v5 = @"RESUME";

            break;
          case 213:
            v5 = @"DISPLAY_TIPKIT_PROMPT";

            break;
          case 214:
            v5 = @"TAP_NEARBY_TRANSIT_FAVORITE";

            break;
          case 215:
            v5 = @"TAP_DRIVING_MODE";

            break;
          case 216:
            v5 = @"SWITCH_ON_VOICE_GUIDANCE";

            break;
          case 217:
            v5 = @"DISMISS_TIPKIT_PROMPT";

            break;
          case 218:
            v5 = @"TAP_EXPAND_EXIT_DETAILS";

            break;
          case 219:
            v5 = @"TAP_NEARBY_TRANSIT_FILTER";

            break;
          case 220:
            v5 = @"TAP_MORE_DEPARTURES";

            break;
          case 221:
            v5 = @"RAP_INDIVIDUAL_PLACE";

            break;
          case 222:
            v5 = @"RAP_ADD_MAP";

            break;
          case 223:
            v5 = @"TAP_SUGGESTED_RAP";

            break;
          case 224:
            v5 = @"RAP_STREET_ISSUE";

            break;
          case 225:
            v5 = @"SWIPE_PIN_REVEAL";

            break;
          case 226:
            v5 = @"TAP_ADD_TIPKIT_FAVORITE";

            break;
          case 227:
            v5 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

            break;
          case 228:
            v5 = @"RAP_BAD_TRIP";

            break;
          case 229:
            v5 = @"RAP_PLACE_ISSUE";

            break;
          case 230:
            v5 = @"TAP_OPEN_MAPS";

            break;
          case 231:
            v5 = @"TAP_NEARBY_TRANSIT_RESULT";

            break;
          case 232:
            v5 = @"RAP_GUIDE";

            break;
          case 233:
            v5 = @"SWITCH_OFF_VOICE_GUIDANCE";

            break;
          case 234:
            v5 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

            break;
          case 235:
            v5 = @"SELECT_TRANSIT_STEP";

            break;
          case 236:
            v5 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

            break;
          case 237:
            v5 = @"TAP_SEE_MORE";

            break;
          case 238:
            v5 = @"RAP_IN_REVIEW";

            break;
          case 239:
            v5 = @"TAP_OPEN_MENU";

            break;
          case 240:
            v5 = @"TAP_NEARBY_TRANSIT";

            break;
          case 241:
            v5 = @"TAP_PIN_LINE";

            break;
          case 242:
            v5 = @"SWITCH_OFF_TRIP_FEEDBACK";

            break;
          case 243:
            v5 = @"RAP_GOOD_TRIP";

            break;
          case 244:
            v5 = @"TAP_FILTERED_CURATED_COLLECTION";

            break;
          case 245:
            v5 = @"SHARE_MY_LOCATION";

            break;
          case 246:
            v5 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

            break;
          case 247:
            v5 = @"DISPLAY_GENERIC_ADVISORY";

            break;
          case 248:
            v5 = @"ADVISORY_ALERT";

            break;
          case 249:
            v5 = @"PUNCH_OUT_LINK";

            break;
          case 250:
            v5 = @"TAP_GENERIC_ADVISORY";

            break;
          case 251:
            v5 = @"TAP_EXPLORE_MODE";

            break;
          case 252:
            v5 = @"TAP_UNPIN_LINE";

            break;
          case 253:
            v5 = @"MENU_UNPIN";

            break;
          case 254:
            v5 = @"MENU_PIN";

            break;
          case 255:
            v5 = @"SWIPE_PIN";

            break;
          case 256:
            v5 = @"SWIPE_UNPIN";

            break;
          case 257:
            v5 = @"TAP_MEDIA_APP";

            break;
          case 258:
            v5 = @"TAP_GUIDES_SUBACTION";

            break;
          case 259:
            v5 = @"TAP_MEDIA";

            break;
          case 260:
            v5 = @"PUNCH_OUT_MEDIA";

            break;
          case 261:
            v5 = @"SHOW_MEDIA_APP_MENU";

            break;
          case 262:
            v5 = @"SCROLL_RIGHT_RIBBON";

            break;
          case 263:
            v5 = @"SCROLL_LEFT_RIBBON";

            break;
          case 264:
            v5 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

            break;
          case 265:
            v5 = @"TAP_SHOW_MORE_TEXT";

            break;
          case 266:
            v5 = @"SCROLL_LEFT_RATINGS";

            break;
          case 267:
            v5 = @"SCROLL_LEFT_TEMPLATE_PLACE";

            break;
          case 268:
            v5 = @"SCROLL_RIGHT_TEMPLATE_PLACE";

            break;
          case 269:
            v5 = @"SCROLL_RIGHT_RATINGS";

            break;
          case 270:
            v5 = @"TAP_ALLOW";

            break;
          case 271:
            v5 = @"TAP_GO_TO_SETTING";

            break;
          case 272:
            v5 = @"START_SUBMIT_REPORT";

            break;
          case 273:
            v5 = @"AUTHENTICATION_INFO_FAILURE";

            break;
          case 274:
            v5 = @"SUCCESSFULLY_SUBMIT_REPORT";

            break;
          case 275:
            v5 = @"FAILED_SUBMIT_REPORT";

            break;
          case 276:
            v5 = @"AUTHENTICATION_INFO_SUCCESS";

            break;
          case 277:
            v5 = @"EDIT_WAYPOINT";

            break;
          case 278:
            v5 = @"CLEAR_TEXT";

            break;
          case 279:
            v5 = @"REORDER_WAYPOINT";

            break;
          case 280:
            v5 = @"REMOVE_WAYPOINT";

            break;
          case 281:
            v5 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

            break;
          case 282:
            v5 = @"TAP_SHOWCASE_MENU";

            break;
          case 283:
            v5 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

            break;
          case 284:
            v5 = @"TAP_PHOTO_ALBUM";

            break;
          case 285:
            v5 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 286:
            v5 = @"RAP_INLINE_ADD";

            break;
          case 287:
            v5 = @"RAP_TAP_EDIT";

            break;
          case 288:
            v5 = @"CLAIM_BUSINESS";

            break;
          case 289:
            v5 = @"RAP_EDIT_OPTIONS";

            break;
          case 290:
            v5 = @"TAP_IN_REVIEW_RAP";

            break;
          case 291:
            v5 = @"ORB_MENU_ADD_STOP";

            break;
          case 292:
            v5 = @"NEXT_STOP";

            break;
          case 293:
            v5 = @"ARRIVE_AT_WAYPOINT";

            break;
          case 294:
            v5 = @"REMOVE_STOP";

            break;
          case 295:
            v5 = @"DISPLAY_PAUSE_BUTTON";

            break;
          case 296:
            v5 = @"DISPLAY_PAUSE_NEXT_BUTTONS";

            break;
          case 297:
            v5 = @"AUTO_ADVANCE_NEXT_STOP";

            break;
          case 298:
            v5 = @"ADD_INLINE_NEGATIVE_RATING";

            break;
          case 299:
            v5 = @"ADD_INLINE_POSITIVE_RATING";

            break;
          case 300:
            v5 = @"TAP_TO_ADD_RATING_AND_PHOTO";

            break;
          case 301:
            v5 = @"SUBMIT_RATINGS_AND_PHOTOS";

            break;
          case 302:
            v5 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

            break;
          case 303:
            v5 = @"TAP_RECENTLY_VIEWED_ROUTE";

            break;
          case 304:
            v5 = @"SHOW_ALL_RECENTS";

            break;
          case 305:
            v5 = @"RESUME_MULTIPOINT_ROUTE";

            break;
          case 306:
            v5 = @"DISMISS_TRANSIT_TIPKIT";

            break;
          case 307:
            v5 = @"DISPLAY_TRANSIT_TIPKIT";

            break;
          case 308:
            v5 = @"TAP_TRANSIT_TIPKIT";

            break;
          case 309:
            v5 = @"FILTER_EV";

            break;
          case 310:
            v5 = @"FILTER_SURCHARGE";

            break;
          case 311:
            v5 = @"FILTER_PREFER";

            break;
          case 312:
            v5 = @"TAP_WALKING_ANNOTATION";

            break;
          case 313:
            v5 = @"FILTER_AVOID";

            break;
          case 314:
            v5 = @"FILTER_TRANSPORTATION_MODE";

            break;
          case 315:
            v5 = @"FILTER_RECOMMENDED_ROUTES";

            break;
          case 316:
            v5 = @"FILTER_IC_FARES";

            break;
          case 317:
            v5 = @"FILTER_TRANSIT_CARD_FARES";

            break;
          case 318:
            v5 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 319:
            v5 = @"TAP_NOTIFICATION_SETTINGS";

            break;
          case 320:
            v5 = @"TAP_ENABLE_NOTIFICATION";

            break;
          case 321:
            v5 = @"ARP_SUGGESTIONS_TURN_OFF";

            break;
          case 322:
            v5 = @"ARP_SUGGESTIONS_TURN_ON";

            break;
          case 323:
            v5 = @"DISMISS_ARP_SUGGESTION";

            break;
          case 324:
            v5 = @"RATINGS_AND_PHOTOS_TURN_ON";

            break;
          case 325:
            v5 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

            break;
          case 326:
            v5 = @"UNSELECT_SUGGESTED_PHOTOS";

            break;
          case 327:
            v5 = @"SUGGESTED_PHOTOS_SHOWN";

            break;
          case 328:
            v5 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 329:
            v5 = @"TAP_YOUR_PHOTOS_ALBUM";

            break;
          case 330:
            v5 = @"RATINGS_AND_PHOTOS_TURN_OFF";

            break;
          case 331:
            v5 = @"DELETE_PHOTO";

            break;
          case 332:
            v5 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 333:
            v5 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

            break;
          case 334:
            v5 = @"TAP_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 335:
            v5 = @"DISPLAY_YOUR_PHOTOS_ALBUM";

            break;
          case 336:
            v5 = @"SELECT_SUGGESTED_PHOTOS";

            break;
          case 337:
            v5 = @"ADD_STOP";

            break;
          case 338:
            v5 = @"SHOW_CREDIT_TURN_ON";

            break;
          case 339:
            v5 = @"DISPLAY_ARP_SUGGESTION";

            break;
          case 340:
            v5 = @"TAP_TO_ADD_PHOTO_CREDIT";

            break;
          case 341:
            v5 = @"SHOW_CREDIT_TURN_OFF";

            break;
          case 342:
            v5 = @"TAP_TO_EDIT_NICKNAME";

            break;
          case 343:
            v5 = @"SUBMIT_RATINGS";

            break;
          case 344:
            v5 = @"END_NAV_ON_WATCH";

            break;
          case 345:
            v5 = @"FILTER_EBIKE";

            break;
          case 356:
            v5 = @"ADD_STOP_SIRI";

            break;
          case 357:
            v5 = @"TAP_REVIEWED_RAP";

            break;
          case 358:
            v5 = @"TAP_OUTREACH_RAP";

            break;
          case 359:
            v5 = @"DISPLAY_SUGGESTED_ITEM";

            break;
          case 360:
            v5 = @"DISPLAY_HIKING_TIPKIT";

            break;
          case 361:
            v5 = @"DISMISS_HIKING_TIPKIT";

            break;
          case 362:
            v5 = @"TAP_HIKING_TIPKIT";

            break;
          case 363:
            v5 = @"SCROLL_LEFT_TRAILS";

            break;
          case 364:
            v5 = @"TAP_MORE_TRAILS";

            break;
          case 365:
            v5 = @"TAP_RELATED_TRAIL";

            break;
          case 366:
            v5 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

            break;
          case 367:
            v5 = @"SCROLL_RIGHT_TRAILS";

            break;
          case 368:
            v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 369:
            v5 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

            break;
          case 370:
            v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 371:
            v5 = @"TAP_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 372:
            v5 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 373:
            v5 = @"EXPIRED_MAPS_REMOVED";

            break;
          case 374:
            v5 = @"UPDATE_ALL_DOWNLOAD_MAPS";

            break;
          case 375:
            v5 = @"TAP_EXPIRED_MAPS";

            break;
          case 376:
            v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 377:
            v5 = @"MOVE_DOWNLOAD_MAPS";

            break;
          case 378:
            v5 = @"SAVE_RENAME_DOWNLOAD_MAPS";

            break;
          case 379:
            v5 = @"TAP_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 380:
            v5 = @"TAP_ENTER_OFFLINE_MAPS";

            break;
          case 381:
            v5 = @"TAP_DOWNLOAD_MAPS";

            break;
          case 382:
            v5 = @"TAP_DOWNLOAD_MAPS_CONTINUE";

            break;
          case 383:
            v5 = @"DELETE_DOWNLOAD_MAPS";

            break;
          case 384:
            v5 = @"SLIDE_CLEAR_EXPIRED_MAPS";

            break;
          case 385:
            v5 = @"RENAME_DOWNLOAD_MAPS";

            break;
          case 386:
            v5 = @"RESIZE_DOWNLOAD_MAPS";

            break;
          case 387:
            v5 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

            break;
          case 388:
            v5 = @"RESTORE_EXPIRED_MAPS";

            break;
          case 389:
            v5 = @"CLEAR_EXPIRED_MAPS";

            break;
          case 390:
            v5 = @"TAP_USING_OFFLINE_BAR";

            break;
          case 391:
            v5 = @"UPDATE_DOWNLOAD_MAPS";

            break;
          case 392:
            v5 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 393:
            v5 = @"DISPLAY_DOWNLOAD_MAPS";

            break;
          case 394:
            v5 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

            break;
          case 395:
            v5 = @"DISPLAY_EXPIRED_MAPS";

            break;
          case 396:
            v5 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 397:
            v5 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

            break;
          case 398:
            v5 = @"SLIDE_RESTORE_EXPIRED_MAPS";

            break;
          case 399:
            v5 = @"ETA_SHARE_TRAY_TIMEOUT";

            break;
          case 400:
            v5 = @"START_ETA_SHARING";

            break;
          case 401:
            v5 = @"PERSON_LOCATION_UPDATE";

            break;
          case 402:
            v5 = @"STOP_ETA_SHARING";

            break;
          case 403:
            v5 = @"PUNCH_OUT_TO_FINDMY";

            break;
          case 404:
            v5 = @"TAP_PEOPLE_LOCATION";

            break;
          case 405:
            v5 = @"TAP_TO_REQUEST_LOCATION";

            break;
          case 406:
            v5 = @"ZOOM_OUT_CROWN";

            break;
          case 407:
            v5 = @"TAP_RESIZE_DOWNLOAD_MAPS";

            break;
          case 408:
            v5 = @"TAP_DELETE_DOWNLOAD_MAPS";

            break;
          case 409:
            v5 = @"SELECT_LIST_VIEW";

            break;
          case 410:
            v5 = @"SCROLL_RIGHT_TRAILHEADS";

            break;
          case 411:
            v5 = @"SWITCH_TO_ONLINE_MODE";

            break;
          case 412:
            v5 = @"TAP_RELATED_TRAILHEAD";

            break;
          case 413:
            v5 = @"SELECT_ELEVATION_VIEW";

            break;
          case 414:
            v5 = @"TOGGLE_PROXIMITY_RADIUS_ON";

            break;
          case 415:
            v5 = @"SEE_MORE_RECENTS";

            break;
          case 416:
            v5 = @"SEE_MORE_GUIDES";

            break;
          case 417:
            v5 = @"SELECT_CONTROLS";

            break;
          case 418:
            v5 = @"NO_SEARCH_RESULTS";

            break;
          case 419:
            v5 = @"TAP_VIEW_RESULTS_CAROUSEL";

            break;
          case 420:
            v5 = @"TAP_VIEW_RESULTS_LIST";

            break;
          case 421:
            v5 = @"SELECT_MAP_VIEW";

            break;
          case 422:
            v5 = @"SCROLL_LEFT_TRAILHEADS";

            break;
          case 423:
            v5 = @"SWITCH_TO_OFFLINE_MODE";

            break;
          case 424:
            v5 = @"ZOOM_IN_CROWN";

            break;
          case 425:
            v5 = @"TOGGLE_PROXIMITY_RADIUS_OFF";

            break;
          case 426:
            v5 = @"TAP_MAP";

            break;
          case 427:
            v5 = @"SWIPE_DOWN";

            break;
          case 428:
            v5 = @"TAP_MORE_TRAILHEADS";

            break;
          case 429:
            v5 = @"TAP_ROUTE_OPTIONS";

            break;
          case 430:
            v5 = @"TAP_ROUTE_NAV_MAP";

            break;
          case 431:
            v5 = @"TAP_ROUTE_OVERVIEW_MAP";

            break;
          case 432:
            v5 = @"TAP_AUDIO";

            break;
          case 433:
            v5 = @"TAP_OPEN_PLACECARD";

            break;
          case 434:
            v5 = @"TAP_VIEW_STOPS";

            break;
          case 435:
            v5 = @"TAP_ROUTE_DETAILS";

            break;
          case 436:
            v5 = @"ADD_LPR_VEHICLE";

            break;
          case 437:
            v5 = @"TAP_ADD_VEHICLE";

            break;
          case 438:
            v5 = @"TAP_PLUG_TYPE";

            break;
          case 439:
            v5 = @"UNSELECT_SUGGESTED_NETWORK";

            break;
          case 440:
            v5 = @"TAP_SET_UP_LATER";

            break;
          case 441:
            v5 = @"ADD_EV_VEHICLE";

            break;
          case 442:
            v5 = @"UPDATE_COLOR";

            break;
          case 443:
            v5 = @"SELECT_OTHER_NETWORK";

            break;
          case 444:
            v5 = @"UNSELECT_NETWORK";

            break;
          case 445:
            v5 = @"TAP_BACK";

            break;
          case 446:
            v5 = @"TAP_CANCEL";

            break;
          case 447:
            v5 = @"UNSELECT_VEHICLE";

            break;
          case 448:
            v5 = @"UNSELECT_OTHER_NETWORK";

            break;
          case 449:
            v5 = @"DISPLAY_EV_TIPKIT";

            break;
          case 450:
            v5 = @"SELECT_NETWORK";

            break;
          case 451:
            v5 = @"TAP_EV_TIPKIT";

            break;
          case 452:
            v5 = @"TAP_CHOOSE_NETWORKS";

            break;
          case 453:
            v5 = @"TAP_ADD_NETWORK";

            break;
          case 454:
            v5 = @"FILTER_NETWORK";

            break;
          case 455:
            v5 = @"SELECT_SUGGESTED_NETWORK";

            break;
          case 456:
            v5 = @"TRANSIT_TO_WALKING";

            break;
          case 457:
            v5 = @"TRANSIT_TO_FINDMY";

            break;
          case 458:
            v5 = @"TAP_AC_KEYBOARD";

            break;
          case 459:
            v5 = @"REACH_PHOTO_STRIP_END";

            break;
          case 460:
            v5 = @"SEARCH_HERE_REVEAL";

            break;
          case 461:
            v5 = @"TAP_SEARCH_HERE";

            break;
          case 462:
            v5 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

            break;
          case 463:
            v5 = @"SAVE";

            break;
          case 464:
            v5 = @"TAP_MORE_CURATED_HIKES";

            break;
          case 465:
            v5 = @"CREATE_CUSTOM_ROUTE";

            break;
          case 466:
            v5 = @"TAP_TRY_NOW";

            break;
          case 467:
            v5 = @"TAP_CURATED_HIKE";

            break;
          case 468:
            v5 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

            break;
          case 469:
            v5 = @"ADD_TO_LIBRARY";

            break;
          case 470:
            v5 = @"START_HIKING";

            break;
          case 471:
            v5 = @"EDIT_NOTE";

            break;
          case 472:
            v5 = @"CREATE_NOTE";

            break;
          case 473:
            v5 = @"DELETE_PIN";

            break;
          case 474:
            v5 = @"ADD_ROUTE";

            break;
          case 475:
            v5 = @"ADD_PIN";

            break;
          case 476:
            v5 = @"REMOVE_FROM_COLLECTION";

            break;
          case 477:
            v5 = @"REMOVE_FROM_LIBRARY";

            break;
          case 478:
            v5 = @"TAP_ITEM";

            break;
          case 479:
            v5 = @"DELETE_ROUTE";

            break;
          case 480:
            v5 = @"TAP_ROUTE";

            break;
          case 481:
            v5 = @"TAP_DOWNLOAD_WATCH_MAPS";

            break;
          case 482:
            v5 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 483:
            v5 = @"STOP_DOWNLOAD_ONTO_WATCH";

            break;
          case 484:
            v5 = @"TAP_DOWNLOAD_ONTO_WATCH";

            break;
          case 485:
            v5 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 486:
            v5 = @"TAP_DOWNLOAD_NOW_WATCH";

            break;
          case 487:
            v5 = @"REVEAL_DETECTION_LIST";

            break;
          case 488:
            v5 = @"TAP_RECOMMENDATION";

            break;
          case 489:
            v5 = @"TAP_EXPAND";

            break;
          case 490:
            v5 = @"EXPAND_DETECTION_LIST";

            break;
          case 491:
            v5 = @"FIRST_PARTY_MAP_VIEW";

            break;
          case 492:
            v5 = @"SECOND_PARTY_MAP_VIEW";

            break;
          case 493:
            v5 = @"THIRD_PARTY_MAP_VIEW";

            break;
          case 494:
            v5 = @"DAEMON_PARTY_MAP_VIEW";

            break;
          case 495:
            v5 = @"MAPS_APP_DWELL_TIME_3_SEC";

            break;
          case 496:
            v5 = @"MAPS_APP_DWELL_TIME_30_SEC";

            break;
          case 497:
            v5 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

            break;
          case 498:
            v5 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

            break;
          case 499:
            v5 = @"DISPLAY_DOOM";

            break;
          case 500:
            v5 = @"TAP_DOOM";

            break;
          case 501:
            v5 = @"TAP_ROUTE_GENIUS";

            break;
          case 502:
            v5 = @"DISPLAY_ROUTE_GENIUS";

            break;
          case 503:
            v5 = @"TAP_WIDGET";

            break;
          case 504:
            v5 = @"ARRIVE_AT_DESTINATION";

            break;
          case 505:
            v5 = @"DISPLAY_WIDGET";

            break;
          case 506:
            v5 = @"CLEAR_HISTORY";

            break;
          case 507:
            v5 = @"TAP_SECTION";

            break;
          case 508:
            v5 = @"APPROVE_LOCATION";

            break;
          case 509:
            v5 = @"DISMISS_VISITED_PLACES_TIPKIT";

            break;
          case 510:
            v5 = @"DISPLAY_VISITED_PLACES_TIPKIT";

            break;
          case 511:
            v5 = @"MORE_OPTIONS";

            break;
          case 512:
            v5 = @"TAP_VISITED_PLACES_AVAILABLE";

            break;
          case 513:
            v5 = @"AUTO_REFRESH_SEARCH";

            break;
          case 514:
            v5 = @"REMOVE_VISIT";

            break;
          case 515:
            v5 = @"WRONG_LOCATION";

            break;
          case 516:
            v5 = @"CONFIRM";

            break;
          case 517:
            v5 = @"KEEP_HISTORY";

            break;
          case 518:
            v5 = @"DISPLAY_VISITED_PLACES_AVAILABLE";

            break;
          case 519:
            v5 = @"REMOVE";

            break;
          case 520:
            v5 = @"ALLOW";

            break;
          case 521:
            v5 = @"DONT_ALLOW";

            break;
          case 522:
            v5 = @"REMOVE_EVERY_VISIT";

            break;
          case 523:
            v5 = @"CONTINUE_VISITED_PLACES_TIPKIT";

            break;
          case 524:
            v5 = @"REMOVE_FROM_FAVORITE_GUIDE";

            break;
          case 525:
            v5 = @"ADD_TO_FAVORITE_GUIDE";

            break;
          case 526:
            v5 = @"FAMILIAR_ROUTE_DISPLAYED";

            break;
          case 527:
            v5 = @"FAMILIAR_ROUTE_NAV_STARTED";

            break;
          case 528:
            v5 = @"SELECT_AUDIO_VOLUME_LOUDER";

            break;
          case 529:
            v5 = @"SELECT_AUDIO_VOLUME_SOFTER";

            break;
          case 1001:
            v5 = @"PAN";

            break;
          case 1002:
            v5 = @"ZOOM_IN";

            break;
          case 1003:
            v5 = @"ZOOM_OUT";

            break;
          case 1004:
            v5 = @"ROTATE";

            break;
          case 1010:
            v5 = @"TAP_POI";

            break;
          case 1011:
            v5 = @"TAP_POI_TRANSIT";

            break;
          case 1017:
            v5 = @"TAP_POI_HIGHLIGHTED";

            break;
          case 1018:
            v5 = @"TAP_POI_CLUSTERED";

            break;
          case 1020:
            v5 = @"TAP_POI_DROPPED_PIN";

            break;
          case 1030:
            v5 = @"DROP_PIN";

            break;
          case 1031:
            v5 = @"TAP_INCIDENT";

            break;
          case 1032:
            v5 = @"TAP_TRANSIT_LINE";

            break;
          case 1033:
            v5 = @"TAP_POI_CALENDAR";

            break;
          case 1034:
            v5 = @"TAP_POI_CURRENT_LOCATION";

            break;
          case 1035:
            v5 = @"TAP_POI_TRANSIT_LINE";

            break;
          case 1036:
            v5 = @"TAP_POI_LANDMARK";

            break;
          case 1037:
            v5 = @"TAP_POI_FLYOVER";

            break;
          case 1038:
            v5 = @"TAP_TO_HIDE_TRAY";

            break;
          case 1039:
            v5 = @"TAP_TO_REVEAL_TRAY";

            break;
          case 1040:
            v5 = @"TAP_COMPASS";

            break;
          case 1041:
            v5 = @"PITCH_AWAY_FROM_GROUND";

            break;
          case 1042:
            v5 = @"PITCH_CLOSER_TO_GROUND";

            break;
          case 1043:
            v5 = @"ZOOM_IN_PINCH";

            break;
          case 1044:
            v5 = @"ZOOM_OUT_PINCH";

            break;
          case 1045:
            v5 = @"ZOOM_IN_DOUBLE_TAP";

            break;
          case 1046:
            v5 = @"ZOOM_OUT_TWO_FINGER_TAP";

            break;
          case 1047:
            v5 = @"ZOOM_IN_ONE_FINGER";

            break;
          case 1048:
            v5 = @"ZOOM_OUT_ONE_FINGER";

            break;
          case 1049:
            v5 = @"ZOOM_IN_BUTTON";

            break;
          case 1050:
            v5 = @"ZOOM_OUT_BUTTON";

            break;
          case 1051:
            v5 = @"TAP_TRAFFIC_CAMERA";

            break;
          case 1052:
            v5 = @"DISPLAY_INDOOR_MAP_BUTTON";

            break;
          case 1053:
            v5 = @"OPEN_INDOOR_MAP";

            break;
          case 1054:
            v5 = @"DISPLAY_VENUE_BROWSE_BUTTON";

            break;
          case 1055:
            v5 = @"TAP_VENUE_BROWSE_BUTTON";

            break;
          case 1056:
            v5 = @"ENTER_VENUE_EXPERIENCE";

            break;
          case 1057:
            v5 = @"EXIT_VENUE_EXPERIENCE";

            break;
          case 1058:
            v5 = @"ZOOM_IN_SCENE_PINCH";

            break;
          case 1059:
            v5 = @"ZOOM_OUT_SCENE_PINCH";

            break;
          case 1060:
            v5 = @"ZOOM_RESET";

            break;
          case 1061:
            v5 = @"TAP_SCENE_UNAVAILABLE_AREA";

            break;
          case 1062:
            v5 = @"TAP_TRANSIT_ACCESS_POINT";

            break;
          case 1063:
            v5 = @"TAP_SPEED_CAMERA";

            break;
          case 1064:
            v5 = @"TAP_RED_LIGHT_CAMERA";

            break;
          case 1065:
            v5 = @"TAP_GEO";

            break;
          default:
            if (action != 1500)
            {
              goto LABEL_195;
            }

            v5 = @"TAP_PLAY_SOUND";

            break;
        }
      }

      return v5;
    }

    if (action <= 9000)
    {
      if (action <= 6002)
      {
        if (action > 4001)
        {
          if (action <= 4004)
          {
            if (action == 4002)
            {
              v5 = @"TAP_HEADING_ON";
            }

            else if (action == 4003)
            {
              v5 = @"TAP_HEADING_OFF";
            }

            else
            {
              v5 = @"PUCK_DRIFT";
            }
          }

          else
          {
            switch(action)
            {
              case 5001:
                v5 = @"SHOW_MAPS_SETTINGS";

                return v5;
              case 5002:
                v5 = @"TAP_STANDARD_MODE";

                return v5;
              case 5003:
                v5 = @"TAP_TRANSIT_MODE";

                return v5;
              case 5004:
                v5 = @"TAP_SATELLITE_MODE";

                return v5;
              case 5005:
                v5 = @"SWITCH_ON_TRAFFIC";

                return v5;
              case 5006:
                v5 = @"SWITCH_OFF_TRAFFIC";

                return v5;
              case 5007:
                v5 = @"SWITCH_ON_LABELS";

                return v5;
              case 5008:
                v5 = @"SWITCH_OFF_LABELS";

                return v5;
              case 5009:
                v5 = @"SWITCH_ON_3D_MAP";

                return v5;
              case 5010:
                v5 = @"SWITCH_OFF_3D_MAP";

                return v5;
              case 5011:
                v5 = @"SWITCH_ON_WEATHER";

                return v5;
              case 5012:
                v5 = @"SWITCH_OFF_WEATHER";

                return v5;
              case 5013:
                v5 = @"REPORT_A_PROBLEM";

                return v5;
              case 5014:
                v5 = @"ADD_PLACE";

                return v5;
              case 5015:
                goto LABEL_195;
              case 5016:
                v5 = @"TAP_PREFERENCES";

                return v5;
              case 5017:
                v5 = @"SWITCH_ON_TOLLS";

                return v5;
              case 5018:
                v5 = @"SWITCH_OFF_TOLLS";

                return v5;
              case 5019:
                v5 = @"SWITCH_ON_HIGHWAYS";

                return v5;
              case 5020:
                v5 = @"SWITCH_OFF_HIGHWAYS";

                return v5;
              case 5021:
                v5 = @"SWITCH_ON_HEADING";

                return v5;
              case 5022:
                v5 = @"SWITCH_OFF_HEADING";

                return v5;
              case 5023:
                v5 = @"SWITCH_ON_SPEED_LIMIT";

                return v5;
              case 5024:
                v5 = @"SWITCH_OFF_SPEED_LIMIT";

                return v5;
              case 5025:
                v5 = @"ELECT_DRIVING_MODE";

                return v5;
              case 5026:
                v5 = @"ELECT_WALKING_MODE";

                return v5;
              case 5027:
                v5 = @"ELECT_TRANSIT_MODE";

                return v5;
              case 5028:
                v5 = @"ELECT_RIDESHARE_MODE";

                return v5;
              case 5029:
                v5 = @"SWITCH_ON_FIND_MY_CAR";

                return v5;
              case 5030:
                v5 = @"SWITCH_OFF_FIND_MY_CAR";

                return v5;
              case 5031:
                v5 = @"MARK_MY_LOCATION";

                return v5;
              case 5032:
                v5 = @"TAP_HYBRID_MODE";

                return v5;
              case 5033:
                v5 = @"CHECK_AVOID_BUSY_ROADS";

                return v5;
              case 5034:
                v5 = @"UNCHECK_AVOID_BUSY_ROADS";

                return v5;
              case 5035:
                v5 = @"CHECK_AVOID_HILLS";

                return v5;
              case 5036:
                v5 = @"UNCHECK_AVOID_HILLS";

                return v5;
              case 5037:
                v5 = @"CHECK_AVOID_STAIRS";

                return v5;
              case 5038:
                v5 = @"UNCHECK_AVOID_STAIRS";

                return v5;
              case 5039:
                v5 = @"ELECT_CYCLING_MODE";

                return v5;
              default:
                if (action == 4005)
                {
                  v5 = @"PUCK_SNAP";
                }

                else
                {
                  if (action != 4006)
                  {
                    goto LABEL_195;
                  }

                  v5 = @"SELECT_FLOOR";
                }

                break;
            }
          }
        }

        else
        {
          switch(action)
          {
            case 3001:
              v5 = @"START_NAV";

              break;
            case 3002:
              v5 = @"END_NAV";

              break;
            case 3003:
              v5 = @"OPEN_NAV_AUDIO_SETTINGS";

              break;
            case 3004:
              v5 = @"VIEW_DETAILS";

              break;
            case 3005:
              v5 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

              break;
            case 3006:
              v5 = @"OPEN_ROUTING_EDITOR";

              break;
            case 3007:
              v5 = @"EDIT_ORIGIN";

              break;
            case 3008:
              v5 = @"EDIT_DESTINATION";

              break;
            case 3009:
              v5 = @"SWAP_ORIGIN_DESTINATION";

              break;
            case 3010:
              v5 = @"OPEN_MORE_ROUTES";

              break;
            case 3011:
              v5 = @"SELECT_ROUTING_TYPE_DRIVING";

              break;
            case 3012:
              v5 = @"SELECT_ROUTING_TYPE_WALKING";

              break;
            case 3013:
              v5 = @"SELECT_ROUTING_TYPE_TRANSIT";

              break;
            case 3014:
              v5 = @"SELECT_ROUTING_TYPE_RIDESHARE";

              break;
            case 3015:
              v5 = @"SELECT_ROUTE";

              break;
            case 3016:
              v5 = @"COLLAPSE_STEP_DETAILS_WALK";

              break;
            case 3017:
              v5 = @"EXPAND_STEP_DETAILS_WALK";

              break;
            case 3018:
              v5 = @"COLLAPSE_STEP_DETAILS_TRANSIT";

              break;
            case 3019:
              v5 = @"EXPAND_STEP_DETAILS_TRANSIT";

              break;
            case 3020:
              v5 = @"UNCHECK_BUS";

              break;
            case 3021:
              v5 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3022:
              v5 = @"UNCHECK_COMMUTER_RAIL";

              break;
            case 3023:
              v5 = @"UNCHECK_FERRY";

              break;
            case 3024:
              v5 = @"CHECK_BUS";

              break;
            case 3025:
              v5 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3026:
              v5 = @"CHECK_COMMUTER_RAIL";

              break;
            case 3027:
              v5 = @"CHECK_FERRY";

              break;
            case 3028:
              v5 = @"SELECT_LEAVE_AT";

              break;
            case 3029:
              v5 = @"SELECT_ARRIVE_BY";

              break;
            case 3030:
              v5 = @"SELECT_LEAVE_NOW";

              break;
            case 3031:
              v5 = @"SELECT_DATE_TIME";

              break;
            case 3032:
              v5 = @"SWITCH_ON_IC_FARES";

              break;
            case 3033:
              v5 = @"SWITCH_OFF_IC_FARES";

              break;
            case 3034:
              v5 = @"OPEN_ROUTE_OPTIONS_DATETIME";

              break;
            case 3035:
              v5 = @"OPEN_ROUTE_OPTIONS_TRANSIT";

              break;
            case 3036:
              v5 = @"OPEN_ROUTE_OPTIONS_DRIVING";

              break;
            case 3037:
              v5 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

              break;
            case 3038:
              v5 = @"REVEAL_FROM_ROUTING";

              break;
            case 3039:
              v5 = @"DISPLAY_ROUTES";

              break;
            case 3040:
              v5 = @"CHECK_RECOMMENDED_ROUTES";

              break;
            case 3041:
              v5 = @"UNCHECK_RECOMMENDED_ROUTES";

              break;
            case 3042:
              v5 = @"CHECK_FASTER_TRIPS";

              break;
            case 3043:
              v5 = @"UNCHECK_FASTER_TRIPS";

              break;
            case 3044:
              v5 = @"CHECK_FEWER_TRANSFERS";

              break;
            case 3045:
              v5 = @"UNCHECK_FEWER_TRANSFERS";

              break;
            case 3046:
              v5 = @"CHECK_LESS_WALKING";

              break;
            case 3047:
              v5 = @"UNCHECK_LESS_WALKING";

              break;
            case 3048:
              v5 = @"OPEN_ROUTE_OPTIONS_CYCLING";

              break;
            case 3049:
              v5 = @"TAP_MORE_ROUTES";

              break;
            case 3050:
              v5 = @"OPEN_NAV_OVERVIEW";

              break;
            case 3051:
              v5 = @"RESUME_NAV_MANEUVER_VIEW";

              break;
            case 3052:
              v5 = @"SELECT_AUDIO_VOLUME_SILENT";

              break;
            case 3053:
              v5 = @"SELECT_AUDIO_VOLUME_LOW";

              break;
            case 3054:
              v5 = @"SELECT_AUDIO_VOLUME_NORMAL";

              break;
            case 3055:
              v5 = @"SELECT_AUDIO_VOLUME_LOUD";

              break;
            case 3056:
              v5 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

              break;
            case 3057:
              v5 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

              break;
            case 3058:
              v5 = @"RESUME_PREV_NAV";

              break;
            case 3059:
              v5 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

              break;
            case 3060:
              v5 = @"ACCEPT_REROUTE";

              break;
            case 3061:
              v5 = @"DISMISS_REROUTE";

              break;
            case 3062:
              v5 = @"ATTEMPT_END_NAV";

              break;
            case 3063:
              v5 = @"DISPLAY_BANNER";

              break;
            case 3064:
              v5 = @"VIEW_BANNER_DETAILS";

              break;
            case 3065:
              v5 = @"ENTER_GUIDANCE";

              break;
            case 3066:
              v5 = @"AUTO_ADVANCE_GUIDANCE";

              break;
            case 3067:
              v5 = @"TAP_OPEN_WALLET";

              break;
            case 3068:
              v5 = @"SELECT_VOICE_GUIDANCE_ALL";

              break;
            case 3069:
              v5 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

              break;
            case 3070:
              v5 = @"SELECT_VOICE_GUIDANCE_NONE";

              break;
            case 3071:
              v5 = @"DISPLAY_CARD";

              break;
            case 3072:
              v5 = @"RENDER_ROUTE";

              break;
            case 3073:
              v5 = @"DISPLAY_JUNCTION_VIEW";

              break;
            case 3074:
              v5 = @"SELECT_DEPARTURE";

              break;
            case 3075:
              v5 = @"DISPLAY_AR_VIEW_RAISE_BANNER";

              break;
            case 3076:
              v5 = @"DEVICE_RAISE";

              break;
            case 3077:
              v5 = @"ENTER_AR_NAV_VIEW";

              break;
            case 3078:
              v5 = @"EXIT_AR_NAV_VIEW";

              break;
            case 3079:
              v5 = @"AR_CALIBRATION_START";

              break;
            case 3080:
              v5 = @"AR_CALIBRATION_FAILURE";

              break;
            case 3081:
              v5 = @"AR_CALIBRATION_SUCCESS";

              break;
            case 3082:
              v5 = @"DISPLAY_AR_NAV_ARROW";

              break;
            case 3083:
              v5 = @"DISPLAY_AR_NAV_TURN_AROUND";

              break;
            case 3084:
              v5 = @"DISPLAY_GO_OUTSIDE_BANNER";

              break;
            case 3085:
              v5 = @"DISPLAY_AR_DARKNESS_MESSAGE";

              break;
            case 3086:
              v5 = @"DISPLAY_AR_NAV_ENDPOINT";

              break;
            case 3087:
              v5 = @"DISPLAY_ADVISORY_BANNER";

              break;
            case 3088:
              v5 = @"TAP_SHOW_ADVISORY_DETAILS";

              break;
            default:
              if (action != 4001)
              {
                goto LABEL_195;
              }

              v5 = @"RECENTER_CURRENT_LOCATION";

              break;
          }
        }
      }

      else if (action > 7000)
      {
        if (action > 8000)
        {
          if (action <= 8005)
          {
            if (action <= 8002)
            {
              if (action == 8001)
              {
                v5 = @"INVOKE_SIRI_SNIPPET";
              }

              else
              {
                v5 = @"INVOKE_SIRI_DISAMBIGUATION";
              }
            }

            else if (action == 8003)
            {
              v5 = @"SHOW_PLACE_DETAILS";
            }

            else if (action == 8004)
            {
              v5 = @"ANSWER_REROUTE_SUGGESTION";
            }

            else
            {
              v5 = @"SUGGEST_NAV_REROUTE";
            }
          }

          else if (action > 8008)
          {
            switch(action)
            {
              case 0x1F49:
                v5 = @"INVOKE_SIRI";

                break;
              case 0x1F4A:
                v5 = @"DISPLAY_SIRI_ERROR_MESSAGE";

                break;
              case 0x1F4B:
                v5 = @"DISPLAY_NO_RESULTS_MESSAGE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action == 8006)
          {
            v5 = @"GET_NAV_STATUS";
          }

          else if (action == 8007)
          {
            v5 = @"REPEAT_NAV_STATUS";
          }

          else
          {
            v5 = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }
        }

        else
        {
          switch(action)
          {
            case 7001:
              v5 = @"EXPAND_TRANSIT_SYSTEM";

              break;
            case 7002:
              v5 = @"COLLAPSE_TRANSIT_SYSTEM";

              break;
            case 7003:
              v5 = @"SHOW_MORE_DEPARTURES";

              break;
            case 7004:
              v5 = @"VIEW_TRANSIT_LINE";

              break;
            case 7005:
              v5 = @"CANCEL_VIEW_TRANSIT_LINE";

              break;
            case 7006:
              v5 = @"TAP_TRANSIT_ATTRIBUTION";

              break;
            case 7007:
              v5 = @"TAP_TRANSIT_ADVISORY";

              break;
            case 7008:
              v5 = @"MORE_DETAILS_TRANSIT_ADVISORY";

              break;
            case 7009:
              v5 = @"SUBSCRIBE_LINE_INCIDENT";

              break;
            case 7010:
              v5 = @"UNSUBSCRIBE_LINE_INCIDENT";

              break;
            case 7011:
              v5 = @"TAP_NEAREST_STATION";

              break;
            case 7012:
              v5 = @"TAP_NEAREST_STOP";

              break;
            case 7013:
              v5 = @"TAP_CONNECTION";

              break;
            case 7014:
              v5 = @"GET_TICKETS";

              break;
            case 7015:
              v5 = @"OPEN_SCHEDULECARD_DATETIME";

              break;
            case 7016:
              v5 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

              break;
            case 7017:
              v5 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

              break;
            case 7018:
              v5 = @"VIEW_ON_MAP";

              break;
            case 7019:
              v5 = @"FORCE_UPDATE_DEPARTURE_INFO";

              break;
            case 7020:
              v5 = @"TAP_TRANSIT_LINE_INFO";

              break;
            case 7021:
              v5 = @"TAP_ATTRIBUTION_CELL";

              break;
            case 7022:
              v5 = @"TAP_NEXT_DEPARTURES";

              break;
            case 7023:
              v5 = @"VIEW_BANNER";

              break;
            case 7024:
              v5 = @"GET_SHOWTIMES";

              break;
            case 7025:
              v5 = @"MAKE_APPOINTMENT";

              break;
            case 7026:
              v5 = @"RESERVE_PARKING";

              break;
            case 7027:
              v5 = @"RESERVE_ROOM";

              break;
            case 7028:
              v5 = @"WAITLIST";

              break;
            case 7029:
              v5 = @"ORDER_TAKEOUT";

              break;
            case 7030:
              v5 = @"RESERVE";

              break;
            default:
              goto LABEL_195;
          }
        }
      }

      else
      {
        switch(action)
        {
          case 6003:
            v5 = @"GET_DIRECTIONS";

            break;
          case 6004:
            v5 = @"TAP_FLYOVER_TOUR";

            break;
          case 6005:
            v5 = @"REMOVE_PIN";

            break;
          case 6006:
            v5 = @"TAP_PHOTO";

            break;
          case 6007:
            v5 = @"TAP_MAPS_VIEW";

            break;
          case 6008:
            v5 = @"TAP_ADDRESS";

            break;
          case 6009:
            v5 = @"CALL";

            break;
          case 6010:
            v5 = @"TAP_URL";

            break;
          case 6011:
            v5 = @"SHOW_TODAY_HOURS";

            break;
          case 6012:
            v5 = @"SHOW_ALL_HOURS";

            break;
          case 6013:
            v5 = @"SHARE";

            break;
          case 6015:
            v5 = @"ADD_TO_FAVORITES";

            break;
          case 6016:
            v5 = @"ADD_CONTACT";

            break;
          case 6018:
            v5 = @"PUNCH_OUT_PHOTO";

            break;
          case 6019:
            v5 = @"PUNCH_OUT_USEFUL_TO_KNOW";

            break;
          case 6020:
            v5 = @"PUNCH_OUT_OPEN_APP";

            break;
          case 6021:
            v5 = @"PUNCH_OUT_SINGLE_REVIEW";

            break;
          case 6022:
            v5 = @"PUNCH_OUT_CHECK_IN";

            break;
          case 6023:
            v5 = @"PUNCH_OUT_MORE_INFO";

            break;
          case 6024:
            v5 = @"PUNCH_OUT_WRITE_REVIEW";

            break;
          case 6025:
            v5 = @"PUNCH_OUT_ADD_PHOTO";

            break;
          case 6026:
            v5 = @"TAP_GRID_VIEW";

            break;
          case 6027:
            v5 = @"EDIT_LOCATION";

            break;
          case 6029:
            v5 = @"ADD_PHOTO";

            break;
          case 6031:
            v5 = @"RETAKE";

            break;
          case 6032:
            v5 = @"ADD_NOTE";

            break;
          case 6033:
            v5 = @"REMOVE_CAR";

            break;
          case 6034:
            v5 = @"EDIT_NAME";

            break;
          case 6036:
            v5 = @"RESERVE_TABLE";

            break;
          case 6037:
            v5 = @"ADD_TO_QUEUE";

            break;
          case 6038:
            v5 = @"VIEW_BOOKED_TABLE";

            break;
          case 6039:
            v5 = @"VIEW_QUEUED_TABLE";

            break;
          case 6040:
            v5 = @"PUNCH_OUT_THIRD_PARTY_APP";

            break;
          case 6041:
            v5 = @"PUNCH_OUT_LEGAL_LINK";

            break;
          case 6042:
            v5 = @"TAP_PLACECARD_HEADER";

            break;
          case 6043:
            v5 = @"REMOVE_FROM_FAVORITES";

            break;
          case 6044:
            v5 = @"VIEW_CONTACT";

            break;
          case 6045:
            v5 = @"CHAT";

            break;
          case 6046:
            v5 = @"FIND_STORES";

            break;
          case 6047:
            v5 = @"TAP_PARENT";

            break;
          case 6048:
            v5 = @"SCROLL_LEFT_PHOTOS";

            break;
          case 6049:
            v5 = @"SCROLL_RIGHT_PHOTOS";

            break;
          case 6050:
            v5 = @"PUNCH_OUT";

            break;
          case 6051:
            v5 = @"TAP_ENTER_MUNIN";

            break;
          case 6052:
            v5 = @"TAP_RECOMMENDED_DISHES_PHOTO";

            break;
          case 6053:
            v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

            break;
          case 6054:
            v5 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

            break;
          case 6055:
            v5 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6056:
            v5 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6057:
            v5 = @"SHOW_LINKED_SERVICE_HOURS";

            break;
          case 6058:
            v5 = @"ENTER_LOOK_AROUND";

            break;
          case 6059:
            v5 = @"EXIT_LOOK_AROUND";

            break;
          case 6060:
            v5 = @"TAP_ENTER_LOOK_AROUND_VIEW";

            break;
          case 6061:
            v5 = @"TAP_ENTER_LOOK_AROUND_PIP";

            break;
          case 6062:
            v5 = @"EXPAND_LOOK_AROUND_VIEW";

            break;
          case 6063:
            v5 = @"CLOSE_LOOK_AROUND";

            break;
          case 6064:
            v5 = @"COLLAPSE_LOOK_AROUND_VIEW";

            break;
          case 6065:
            v5 = @"TAP_SHOW_ACTIONS";

            break;
          case 6066:
            v5 = @"TAP_HIDE_LABELS";

            break;
          case 6067:
            v5 = @"TAP_SHOW_LABELS";

            break;
          case 6068:
            v5 = @"TAP_SHOW_DETAILS";

            break;
          case 6069:
            v5 = @"PAN_LOOK_AROUND";

            break;
          case 6070:
            v5 = @"TAP_LOOK_AROUND_THUMBNAIL";

            break;
          case 6071:
            v5 = @"TAP_LANDMARK";

            break;
          case 6072:
            v5 = @"TAP_SCENE";

            break;
          case 6073:
            v5 = @"SHOW_LINKED_BUSINESS_HOURS";

            break;
          case 6074:
            v5 = @"TAP_PLACECARD_SHORTCUT";

            break;
          case 6075:
            v5 = @"SHOW_ALL_LOCATIONS_INSIDE";

            break;
          case 6076:
            v5 = @"SHOW_ALL_SIMILAR_LOCATIONS";

            break;
          case 6077:
            v5 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

            break;
          case 6078:
            v5 = @"TAP_PARENT_LOCATION";

            break;
          case 6079:
            v5 = @"TAP_SIMILAR_LOCATION";

            break;
          case 6080:
            v5 = @"TAP_LOCATION_INSIDE";

            break;
          case 6081:
            v5 = @"TAP_LOCATION_AT_ADDRESS";

            break;
          case 6082:
            v5 = @"CLOSE_ROUTE_GENIUS";

            break;
          case 6083:
            v5 = @"LOAD_WEB_CONTENT";

            break;
          case 6084:
            v5 = @"SCROLL_FORWARD_WEB_CONTENT";

            break;
          case 6085:
            v5 = @"SCROLL_BACKWARD_WEB_CONTENT";

            break;
          case 6086:
            v5 = @"TAP_WEB_CONTENT";

            break;
          case 6087:
            v5 = @"SHOW_PHOTO_VIEWER";

            break;
          case 6088:
            v5 = @"SHOW_LAST_PAGE";

            break;
          case 6089:
            v5 = @"TAP_VIEW_APP";

            break;
          case 6090:
            v5 = @"TAP_APP_CLIP";

            break;
          case 6091:
            v5 = @"DEAD_BATTERY";

            break;
          case 6092:
            v5 = @"DISMISS_LOW_BATTERY_ALERT";

            break;
          case 6093:
            v5 = @"DISMISS_OUT_OF_RANGE_ALERT";

            break;
          case 6094:
            v5 = @"FAILED_TO_LOAD_EV_STATUS";

            break;
          case 6095:
            v5 = @"LOW_BATTERY_ALERT";

            break;
          case 6096:
            v5 = @"PAUSE_ROUTE";

            break;
          case 6097:
            v5 = @"TAP_ADD_STOP";

            break;
          case 6098:
            v5 = @"TAP_CHARGE_POINT";

            break;
          case 6099:
            v5 = @"TAP_OUT_OF_RANGE_ALERT";

            break;
          case 6100:
            v5 = @"SCROLL_DOWN_PHOTOS";

            break;
          case 6101:
            v5 = @"SCROLL_UP_PHOTOS";

            break;
          case 6102:
            v5 = @"TAP_MORE_PHOTOS";

            break;
          case 6103:
            v5 = @"TAP_TO_CONFIRM_INCIDENT";

            break;
          case 6104:
            v5 = @"SHOW_INCIDENT";

            break;
          case 6105:
            v5 = @"REVEAL_APP_CLIP";

            break;
          case 6106:
            v5 = @"ORDER_DELIVERY";

            break;
          case 6107:
            v5 = @"VIEW_MENU";

            break;
          case 6108:
            v5 = @"TAP_EDIT_STOPS";

            break;
          case 6109:
            v5 = @"LEARN_MORE_WEB_CONTENT";

            break;
          case 6110:
            v5 = @"MAKE_APPOINTMENT_WEB_CONTENT";

            break;
          case 6111:
            v5 = @"REVEAL_SHOWCASE";

            break;
          case 6112:
            v5 = @"TAP_ACTION_BAR";

            break;
          default:
            goto LABEL_195;
        }
      }
    }

    else
    {
      if (action <= 12000)
      {
        switch(action)
        {
          case 10101:
            v5 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

            break;
          case 10102:
            v5 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

            break;
          case 10103:
            v5 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

            break;
          case 10104:
            v5 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

            break;
          case 10105:
            v5 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

            break;
          case 10106:
            v5 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

            break;
          case 10107:
            v5 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

            break;
          case 10108:
            v5 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

            break;
          case 10109:
            v5 = @"RAP_CANCEL";

            break;
          case 10110:
            v5 = @"RAP_NEXT";

            break;
          case 10111:
            v5 = @"RAP_BACK";

            break;
          case 10112:
            v5 = @"RAP_SEND";

            break;
          case 10113:
            v5 = @"RAP_SKIP";

            break;
          case 10114:
            v5 = @"RAP_SHOW_MORE";

            break;
          case 10115:
            v5 = @"RAP_ADD_PHOTO";

            break;
          case 10116:
            v5 = @"RAP_MAP_INCORRECT";

            break;
          case 10117:
            v5 = @"RAP_BAD_DIRECTIONS";

            break;
          case 10118:
            v5 = @"RAP_TRANSIT_INFO_INCORRECT";

            break;
          case 10119:
            v5 = @"RAP_SATELLITE_IMAGE_PROBLEM";

            break;
          case 10120:
            v5 = @"RAP_SEARCH_RESULTS_INCORRECT";

            break;
          case 10121:
            v5 = @"RAP_ADD_A_PLACE";

            break;
          case 10122:
            v5 = @"RAP_HOME";

            break;
          case 10123:
            v5 = @"RAP_WORK";

            break;
          case 10124:
            v5 = @"RAP_OTHER";

            break;
          case 10125:
            v5 = @"RAP_LOCATION";

            break;
          case 10126:
            v5 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

            break;
          case 10127:
            v5 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

            break;
          case 10128:
            v5 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

            break;
          case 10129:
            v5 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

            break;
          case 10130:
            v5 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

            break;
          case 10131:
            v5 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

            break;
          case 10132:
            v5 = @"RAP_TRANSIT_DELAY";

            break;
          case 10133:
            v5 = @"RAP_LOCATION_CLOSED";

            break;
          case 10134:
            v5 = @"RAP_CLOSED_PERMANENTLY";

            break;
          case 10135:
            v5 = @"RAP_CLOSED_TEMPORARILY";

            break;
          case 10136:
            v5 = @"RAP_HOURS_HAVE_CHANGED";

            break;
          case 10137:
            v5 = @"RAP_SELECT_STATION";

            break;
          case 10138:
            v5 = @"RAP_SELECT_LINE";

            break;
          case 10139:
            v5 = @"RAP_SELECT_ACCESS_POINT";

            break;
          case 10140:
            v5 = @"RAP_SELECT_SEARCH";

            break;
          case 10141:
            v5 = @"RAP_PAN_MAP";

            break;
          case 10142:
            v5 = @"RAP_CENTER_MAP_ON_USER";

            break;
          case 10143:
            v5 = @"RAP_SEARCH_UNEXPECTED";

            break;
          case 10144:
            v5 = @"RAP_ADD_POI";

            break;
          case 10145:
            v5 = @"RAP_ADD_STREET_ADDRESS";

            break;
          case 10146:
            v5 = @"RAP_ADD_OTHER";

            break;
          case 10147:
            v5 = @"RAP_SELECT_CATEGORY";

            break;
          case 10148:
            v5 = @"RAP_TAKE_PHOTO";

            break;
          case 10149:
            v5 = @"RAP_RETAKE_PHOTO";

            break;
          case 10150:
            v5 = @"RAP_PLACE_DETAILS";

            break;
          case 10151:
            v5 = @"RAP_SATELLITE_IMAGE_OUTDATED";

            break;
          case 10152:
            v5 = @"RAP_SATELLITE_IMAGE_QUALITY";

            break;
          case 10153:
            v5 = @"RAP_SELECT_LABEL";

            break;
          case 10154:
            v5 = @"RAP_SELECT_ROUTE";

            break;
          case 10155:
            v5 = @"RAP_CLAIM_BUSINESS";

            break;
          case 10156:
            v5 = @"RAP_BRAND_DETAILS";

            break;
          case 10157:
            v5 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

            break;
          case 10158:
            v5 = @"RAP_LOOK_AROUND_LABELS_STREET";

            break;
          case 10159:
            v5 = @"RAP_LOOK_AROUND_BLURRING";

            break;
          case 10160:
            v5 = @"RAP_LOOK_AROUND_REMOVE_HOME";

            break;
          case 10161:
            v5 = @"RAP_LOOK_AROUND_LABELS_STORE";

            break;
          case 10162:
            v5 = @"RAP_LOOK_AROUND_PRIVACY";

            break;
          case 10163:
            v5 = @"RAP_INCORRECT_HOURS";

            break;
          case 10164:
            v5 = @"RAP_INCORRECT_ADDRESS";

            break;
          case 10165:
            v5 = @"RAP_EDIT_PLACE_DETAILS";

            break;
          case 10166:
            v5 = @"RAP_EDIT_PLACE_NAME";

            break;
          case 10167:
            v5 = @"RAP_EDIT_ADDRESS";

            break;
          case 10168:
            v5 = @"RAP_ADD_CATEGORY";

            break;
          case 10169:
            v5 = @"RAP_REMOVE_CATEGORY";

            break;
          case 10170:
            v5 = @"RAP_DESELECT_CATEGORY";

            break;
          case 10171:
            v5 = @"RAP_ADD_HOURS";

            break;
          case 10172:
            v5 = @"RAP_REMOVE_HOURS";

            break;
          case 10173:
            v5 = @"RAP_TAP_DAY_OF_WEEK";

            break;
          case 10174:
            v5 = @"RAP_TAP_24_HOURS_BUTTON";

            break;
          case 10175:
            v5 = @"RAP_TAP_OPEN_TIME";

            break;
          case 10176:
            v5 = @"RAP_TAP_CLOSED_TIME";

            break;
          case 10177:
            v5 = @"RAP_TAP_TEMPORARY_CLOSURE";

            break;
          case 10178:
            v5 = @"RAP_TAP_PERMANENTLY_CLOSED";

            break;
          case 10179:
            v5 = @"RAP_EDIT_WEBSITE";

            break;
          case 10180:
            v5 = @"RAP_EDIT_PHONE_NUMBER";

            break;
          case 10181:
            v5 = @"RAP_TAP_ACCEPTS_APPLE_PAY";

            break;
          case 10182:
            v5 = @"RAP_ADD_COMMENTS";

            break;
          case 10183:
            v5 = @"RAP_EDIT_LOCATION";

            break;
          case 10184:
            v5 = @"RAP_VIEW_LOCATION";

            break;
          case 10185:
            v5 = @"RAP_ZOOM_IN";

            break;
          case 10186:
            v5 = @"RAP_ZOOM_OUT";

            break;
          case 10187:
            v5 = @"RAP_VIEW_ENTRY_POINTS";

            break;
          case 10188:
            v5 = @"RAP_EDIT_EXISTING_ENTRY_POINT";

            break;
          case 10189:
            v5 = @"RAP_ADD_NEW_ENTRY_POINT";

            break;
          case 10190:
            v5 = @"RAP_REMOVE_ENTRY_POINT";

            break;
          case 10191:
            v5 = @"RAP_SELECT_ENTRY_POINT_TYPE";

            break;
          default:
            switch(action)
            {
              case 9001:
                v5 = @"TAP_WIDGET_ITEM";

                break;
              case 9002:
                v5 = @"DISPLAY_NOTIFICATION";

                break;
              case 9003:
                v5 = @"TAP_NOTIFICATION";

                break;
              case 9004:
                v5 = @"EXPAND_NOTIFICATION";

                break;
              case 9005:
                v5 = @"DISMISS_NOTIFICATION";

                break;
              case 9006:
                v5 = @"OPEN_SEARCH";

                break;
              case 9007:
                v5 = @"OPEN_PAN_VIEW";

                break;
              case 9008:
                v5 = @"PAN_LEFT";

                break;
              case 9009:
                v5 = @"PAN_UP";

                break;
              case 9010:
              case 9041:
              case 9042:
              case 9043:
              case 9044:
              case 9045:
              case 9046:
              case 9047:
              case 9048:
              case 9049:
              case 9050:
              case 9051:
              case 9052:
              case 9053:
              case 9054:
              case 9055:
              case 9056:
              case 9057:
              case 9058:
              case 9059:
              case 9060:
              case 9061:
              case 9062:
              case 9063:
              case 9064:
              case 9065:
              case 9066:
              case 9067:
              case 9068:
              case 9069:
              case 9070:
              case 9071:
              case 9072:
              case 9073:
              case 9074:
              case 9075:
              case 9076:
              case 9077:
              case 9078:
              case 9079:
              case 9080:
              case 9081:
              case 9082:
              case 9083:
              case 9084:
              case 9085:
              case 9086:
              case 9087:
              case 9088:
              case 9089:
              case 9090:
              case 9091:
              case 9092:
              case 9093:
              case 9094:
              case 9095:
              case 9096:
              case 9097:
              case 9098:
              case 9099:
              case 9100:
                goto LABEL_195;
              case 9011:
                v5 = @"PAN_DOWN";

                break;
              case 9012:
                v5 = @"TAP_RECENT_DESTINATIONS";

                break;
              case 9013:
                v5 = @"OPEN_DESTINATIONS";

                break;
              case 9014:
                v5 = @"OPEN_FAVORITES";

                break;
              case 9015:
                v5 = @"VIEW_NAV_OPTIONS";

                break;
              case 9016:
                v5 = @"START_NAV_NO_GUIDANCE";

                break;
              case 9017:
                v5 = @"TURN_OFF_GUIDANCE";

                break;
              case 9018:
                v5 = @"TURN_ON_GUIDANCE";

                break;
              case 9019:
                v5 = @"OPEN_KEYBOARD";

                break;
              case 9020:
                v5 = @"SHARE_DESTINATION";

                break;
              case 9021:
                v5 = @"START_NAV_AUTOMATED";

                break;
              case 9022:
                v5 = @"SHARE_ETA";

                break;
              case 9023:
                v5 = @"SELECT_GROUP";

                break;
              case 9024:
                v5 = @"DESELECT_GROUP";

                break;
              case 9025:
                v5 = @"SELECT_CONTACT";

                break;
              case 9026:
                v5 = @"DESELECT_CONTACT";

                break;
              case 9027:
                v5 = @"TAP_VIEW_CONTACTS";

                break;
              case 9028:
                v5 = @"STOP_RECEIVING_ETA";

                break;
              case 9029:
                v5 = @"DISPLAY_ANNOUNCEMENT";

                break;
              case 9030:
                v5 = @"TAP_ANNOUNCEMENT";

                break;
              case 9031:
                v5 = @"DISPLAY_CYCLING_NOTIFICATION";

                break;
              case 9032:
                v5 = @"TAP_CYCLING_NOTIFICATION";

                break;
              case 9033:
                v5 = @"SHARE_CYCLING_ETA";

                break;
              case 9034:
                v5 = @"MANAGE_NOTIFICATIONS";

                break;
              case 9035:
                v5 = @"PUNCH_OUT_PUBLISHER_REVIEW";

                break;
              case 9036:
                v5 = @"SCROLL_FORWARD";

                break;
              case 9037:
                v5 = @"SCROLL_BACKWARD";

                break;
              case 9038:
                v5 = @"SHOW_ALL_CURATED_COLLECTIONS";

                break;
              case 9039:
                v5 = @"TAP_LESS";

                break;
              case 9040:
                v5 = @"TAP_MORE";

                break;
              case 9101:
                v5 = @"DISPLAY_ADD_HOME_AND_WORK";

                break;
              case 9102:
                v5 = @"TAP_ADD_HOME_AND_WORK";

                break;
              case 9103:
                v5 = @"DISPLAY_ALLOW_FREQUENTS";

                break;
              case 9104:
                v5 = @"TAP_ALLOW_FREQUENTS";

                break;
              case 9105:
                v5 = @"DISPLAY_ALLOW_LOCATION";

                break;
              case 9106:
                v5 = @"TAP_ALLOW_LOCATION";

                break;
              default:
                switch(action)
                {
                  case 11001:
                    v5 = @"EXIT_MAPS_LOWER_WRIST";

                    break;
                  case 11002:
                    v5 = @"TASK_READY";

                    break;
                  case 11003:
                    v5 = @"TAP_SEARCH";

                    break;
                  case 11004:
                    v5 = @"TAP_MY_LOCATION";

                    break;
                  case 11005:
                    v5 = @"SHOW_NEARBY";

                    break;
                  case 11006:
                    v5 = @"TAP_NEARBY";

                    break;
                  case 11007:
                    v5 = @"TAP_PROACTIVE";

                    break;
                  case 11008:
                    v5 = @"FORCE_PRESS";

                    break;
                  case 11009:
                    v5 = @"TAP_CONTACTS";

                    break;
                  case 11010:
                    v5 = @"TAP_TRANSIT";

                    break;
                  case 11011:
                    v5 = @"TAP_DICTATION";

                    break;
                  case 11012:
                    v5 = @"GET_DIRECTIONS_DRIVING";

                    break;
                  case 11013:
                    v5 = @"GET_DIRECTIONS_WALKING";

                    break;
                  case 11014:
                    v5 = @"GET_DIRECTIONS_TRANSIT";

                    break;
                  case 11015:
                    v5 = @"OPEN_STANDARD_MAP";

                    break;
                  case 11016:
                    v5 = @"OPEN_TRANSIT_MAP";

                    break;
                  case 11017:
                    v5 = @"START_NAV_AUTO";

                    break;
                  case 11018:
                    v5 = @"TAP_RECENT";

                    break;
                  case 11019:
                    v5 = @"TAP_FAVORITE";

                    break;
                  case 11020:
                    v5 = @"TAP_SCRIBBLE";

                    break;
                  case 11021:
                    v5 = @"TAP_VIEW_MAP";

                    break;
                  case 11022:
                    v5 = @"TAP_VIEW_TBT";

                    break;
                  case 11023:
                    v5 = @"VIEW_ROUTE_INFO";

                    break;
                  case 11024:
                    v5 = @"NAV_UNMUTE";

                    break;
                  case 11025:
                    v5 = @"NAV_MUTE";

                    break;
                  case 11026:
                    v5 = @"GET_DIRECTIONS_CYCLING";

                    break;
                  case 11027:
                    v5 = @"TAP_SEARCH_HOME";

                    break;
                  case 11028:
                    v5 = @"ROUTE_PAUSED_ON_WATCH";

                    break;
                  case 11029:
                    v5 = @"NEXT_STOP_TAPPED_ON_WATCH";

                    break;
                  default:
                    goto LABEL_195;
                }

                break;
            }

            break;
        }

        return v5;
      }

      if (action > 16000)
      {
        switch(action)
        {
          case 17001:
            v5 = @"START_DRAG";

            break;
          case 17002:
            v5 = @"CANCEL_DRAG";

            break;
          case 17003:
            v5 = @"COMPLETE_DRAG";

            break;
          case 17004:
            v5 = @"START_DROP";

            break;
          case 17005:
            v5 = @"CANCEL_DROP";

            break;
          case 17006:
            v5 = @"COMPLETE_DROP";

            break;
          case 17007:
            v5 = @"ANNOTATION_SELECT";

            break;
          case 17008:
            v5 = @"ANNOTATION_SELECT_AUTO";

            break;
          case 17009:
            v5 = @"ANNOTATION_SELECT_LIST";

            break;
          case 17010:
            v5 = @"BROWSE_TOP_CATEGORY_DISPLAYED";

            break;
          case 17011:
            v5 = @"CALLOUT_FLYOVER_TOUR";

            break;
          case 17012:
            v5 = @"CALLOUT_INFO";

            break;
          case 17013:
            v5 = @"CALLOUT_NAV_TRANSIT";

            break;
          case 17014:
            v5 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

            break;
          case 17015:
            v5 = @"CALLOUT_VIEW_TRANSIT_LINE";

            break;
          case 17016:
            v5 = @"DIRECTIONS_SELECT";

            break;
          case 17017:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM";

            break;
          case 17018:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

            break;
          case 17019:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

            break;
          case 17020:
            v5 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

            break;
          case 17021:
            v5 = @"DIRECTIONS_TRANSIT_LATER";

            break;
          case 17022:
            v5 = @"DIRECTIONS_TRANSIT_NOW";

            break;
          case 17023:
            v5 = @"FLYOVER_NOTIFICATION_DISMISS";

            break;
          case 17024:
            v5 = @"FLYOVER_NOTIFICATION_START";

            break;
          case 17025:
            v5 = @"FLYOVER_TOUR_COMPLETED";

            break;
          case 17026:
            v5 = @"FLYOVER_TOUR_END";

            break;
          case 17027:
            v5 = @"FLYOVER_TOUR_NOTIFICATION";

            break;
          case 17028:
            v5 = @"FLYOVER_TOUR_START";

            break;
          case 17029:
            v5 = @"INFO_BOOKMARKS";

            break;
          case 17030:
            v5 = @"INFO_CARD_DETACHED";

            break;
          case 17031:
            v5 = @"INFO_CONTACTS";

            break;
          case 17032:
            v5 = @"INFO_DIRECTIONS";

            break;
          case 17033:
            v5 = @"INFO_DIRECTIONS_FROM";

            break;
          case 17034:
            v5 = @"INFO_DIRECTIONS_TO";

            break;
          case 17035:
            v5 = @"INFO_DISMISS";

            break;
          case 17036:
            v5 = @"INFO_INFO";

            break;
          case 17037:
            v5 = @"INFO_PHOTOS";

            break;
          case 17038:
            v5 = @"INFO_REVIEWS";

            break;
          case 17039:
            v5 = @"INFO_SHARE";

            break;
          case 17040:
            v5 = @"INFO_SHARE_AIRDROP";

            break;
          case 17041:
            v5 = @"INFO_SHARE_FACEBOOK";

            break;
          case 17042:
            v5 = @"INFO_SHARE_MAIL";

            break;
          case 17043:
            v5 = @"INFO_SHARE_MESSAGE";

            break;
          case 17044:
            v5 = @"INFO_SHARE_TENCENTWEIBO";

            break;
          case 17045:
            v5 = @"INFO_SHARE_WEIBO";

            break;
          case 17046:
            v5 = @"INFO_YELP";

            break;
          case 17047:
            v5 = @"MAPS_APP_LAUNCH";

            break;
          case 17048:
            v5 = @"MAP_3D_OFF";

            break;
          case 17049:
            v5 = @"MAP_3D_ON";

            break;
          case 17050:
            v5 = @"MAP_OPTIONS_DROP_PIN";

            break;
          case 17051:
            v5 = @"MAP_OPTIONS_HYBRID";

            break;
          case 17052:
            v5 = @"MAP_OPTIONS_PRINT";

            break;
          case 17053:
            v5 = @"MAP_OPTIONS_REMOVE_PIN";

            break;
          case 17054:
            v5 = @"MAP_OPTIONS_SATELLITE";

            break;
          case 17055:
            v5 = @"MAP_OPTIONS_STANDARD";

            break;
          case 17056:
            v5 = @"MAP_OPTIONS_TRAFFIC_HIDE";

            break;
          case 17057:
            v5 = @"MAP_OPTIONS_TRAFFIC_SHOW";

            break;
          case 17058:
            v5 = @"MAP_OPTIONS_TRANSIT";

            break;
          case 17059:
            v5 = @"MAP_TAP_FLYOVER_CITY";

            break;
          case 17060:
            v5 = @"MAP_TAP_LINE";

            break;
          case 17061:
            v5 = @"MAP_TAP_POI_TRANSIT";

            break;
          case 17062:
            v5 = @"MAP_TAP_TRAFFIC_INCIDENT";

            break;
          case 17063:
            v5 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

            break;
          case 17064:
            v5 = @"MAP_USER_TRACKING_OFF";

            break;
          case 17065:
            v5 = @"MAP_USER_TRACKING_ON";

            break;
          case 17066:
            v5 = @"MAP_USER_TRACKING_WITH_HEADING_ON";

            break;
          case 17067:
            v5 = @"NAV_CLEAR";

            break;
          case 17068:
            v5 = @"NAV_LIST";

            break;
          case 17069:
            v5 = @"NAV_ROUTE_STEP_NEXT";

            break;
          case 17070:
            v5 = @"NAV_ROUTE_STEP_PREV";

            break;
          case 17071:
            v5 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

            break;
          case 17072:
            v5 = @"ORB_DISPLAY_MENU";

            break;
          case 17073:
            v5 = @"ORB_MENU_CALL";

            break;
          case 17074:
            v5 = @"ORB_MENU_DIRECTIONS";

            break;
          case 17075:
            v5 = @"ORB_MENU_DISMISS";

            break;
          case 17076:
            v5 = @"ORB_MENU_SHARE";

            break;
          case 17077:
            v5 = @"ORB_MENU_SHOW_PLACECARD";

            break;
          case 17078:
            v5 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

            break;
          case 17079:
            v5 = @"ORB_MENU_URL";

            break;
          case 17080:
            v5 = @"ORB_PRESS";

            break;
          case 17081:
            v5 = @"ORB_SPRINGBOARD_MARK_LOCATION";

            break;
          case 17082:
            v5 = @"ORB_SPRINGBOARD_SEARCH";

            break;
          case 17083:
            v5 = @"ORB_SPRINGBOARD_SHARE_LOCATION";

            break;
          case 17084:
            v5 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

            break;
          case 17085:
            v5 = @"RAP_PERMISSION_CANCEL";

            break;
          case 17086:
            v5 = @"RAP_PERMISSION_EMAIL_NA";

            break;
          case 17087:
            v5 = @"RAP_PERMISSION_EMAIL_OK";

            break;
          case 17088:
            v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

            break;
          case 17089:
            v5 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

            break;
          case 17090:
            v5 = @"RAP_PERMISSION_OK";

            break;
          case 17091:
            v5 = @"SEARCH_BEGIN";

            break;
          case 17092:
            v5 = @"SEARCH_CANCEL";

            break;
          case 17093:
            v5 = @"SEARCH_SELECT";

            break;
          case 17094:
            v5 = @"TRANSIT_LINE_SELECTION_DISMISS";

            break;
          case 17095:
            v5 = @"TRANSIT_LINE_SELECTION_VIEW";

            break;
          case 17096:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

            break;
          case 17097:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

            break;
          case 17098:
            v5 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

            break;
          case 17099:
            v5 = @"UNKNOWN_ACTION";

            break;
          case 17100:
            v5 = @"INFO_SHARE_TWITTER";

            break;
          case 17101:
            v5 = @"INFO_TAP_POPULAR_APP_NEARBY";

            break;
          case 17102:
            v5 = @"INFO_DIRECTIONS_WALK";

            break;
          case 17103:
            v5 = @"INFO_DIRECTIONS_TRANSIT";

            break;
          case 17104:
            v5 = @"INFO_DIRECTIONS_DRIVE";

            break;
          case 17105:
            v5 = @"INFO_REPORT_A_PROBLEM";

            break;
          case 17106:
            v5 = @"CALLOUT_NAV";

            break;
          case 17107:
            v5 = @"RAP_PERMISSION_EMAIL_CANCEL";

            break;
          case 17108:
            v5 = @"MAP_TAP_POI";

            break;
          default:
            if (action == 16001)
            {
              v5 = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (action != 90010)
              {
                goto LABEL_195;
              }

              v5 = @"PAN_RIGHT";
            }

            break;
        }

        return v5;
      }

      if (action <= 13004)
      {
        if (action > 12007)
        {
          if (action <= 13000)
          {
            switch(action)
            {
              case 0x2EE8:
                v5 = @"ADD_SPECIAL_REQUEST";

                break;
              case 0x2EE9:
                v5 = @"CHANGE_RESERVATION";

                break;
              case 0x2EEA:
                v5 = @"LEARN_MORE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action > 13002)
          {
            if (action == 13003)
            {
              v5 = @"SELECT_LABEL";
            }

            else
            {
              v5 = @"DELETE_ADDRESS";
            }
          }

          else if (action == 13001)
          {
            v5 = @"SELECT_ADDRESS";
          }

          else
          {
            v5 = @"ADD_ADDRESS";
          }
        }

        else if (action <= 12003)
        {
          if (action == 12001)
          {
            v5 = @"VIEW_MORE_OPTIONS";
          }

          else if (action == 12002)
          {
            v5 = @"SELECT_TIME";
          }

          else
          {
            v5 = @"SHOW_NEXT_AVAILABLE";
          }
        }

        else if (action > 12005)
        {
          if (action == 12006)
          {
            v5 = @"EDIT_BOOKING";
          }

          else
          {
            v5 = @"EDIT_PHONE";
          }
        }

        else if (action == 12004)
        {
          v5 = @"DECREASE_TABLE_SIZE";
        }

        else
        {
          v5 = @"INCREASE_TABLE_SIZE";
        }
      }

      else if (action <= 14004)
      {
        if (action <= 14000)
        {
          switch(action)
          {
            case 0x32CD:
              v5 = @"EDIT_ITEMS";

              break;
            case 0x32CE:
              v5 = @"RAP_FAVORITES";

              break;
            case 0x32CF:
              v5 = @"SORT_LIST_ITEM";

              break;
            default:
              goto LABEL_195;
          }
        }

        else if (action > 14002)
        {
          if (action == 14003)
          {
            v5 = @"BOOK_RIDE";
          }

          else
          {
            v5 = @"REQUEST_RIDE";
          }
        }

        else if (action == 14001)
        {
          v5 = @"VIEW_APP";
        }

        else
        {
          v5 = @"ENABLE";
        }
      }

      else
      {
        if (action <= 14008)
        {
          if (action > 14006)
          {
            if (action == 14007)
            {
              v5 = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              v5 = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (action == 14005)
          {
            v5 = @"CONTACT_DRIVER";
          }

          else
          {
            v5 = @"CHANGE_PAYMENT";
          }

          return v5;
        }

        if (action > 15001)
        {
          if (action == 15002)
          {
            v5 = @"ORB_POP";
          }

          else
          {
            if (action != 15003)
            {
              goto LABEL_195;
            }

            v5 = @"ORB_DISMISS";
          }
        }

        else
        {
          if (action != 14009)
          {
            if (action == 15001)
            {
              v5 = @"ORB_PEEK";

              return v5;
            }

LABEL_195:
            v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_196:

            return v5;
          }

          v5 = @"SUBMIT_TRIP_FEEDBACK";
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_whiteListedPlaceCardActionAsString:(int)a3
{
  v4 = (a3 - 6003) > 0x12 || ((1 << (a3 - 115)) & 0x607F1) == 0;
  if (v4 && a3 != 3001 && a3 != 21)
  {
    v6 = 0;

    return v6;
  }

  action = self->_action;
  if (action <= 3000)
  {
    if (action > 1500)
    {
      if (action <= 1503)
      {
        if (action == 1501)
        {
          v6 = @"TAP_DIRECTIONS";
        }

        else if (action == 1502)
        {
          v6 = @"TAP_PROXIMITY_FIND";
        }

        else
        {
          v6 = @"TAP_PRECISION_FIND";
        }
      }

      else
      {
        switch(action)
        {
          case 2001:
            v6 = @"TAP_SEARCH_FIELD";

            return v6;
          case 2002:
            v6 = @"CLEAR_SEARCH";

            return v6;
          case 2003:
            v6 = @"CANCEL_SEARCH";

            return v6;
          case 2004:
            v6 = @"TAP_BROWSE_TOP_CATEGORY";

            return v6;
          case 2005:
            v6 = @"TAP_BROWSE_SUB_CATEGORY";

            return v6;
          case 2006:
            v6 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

            return v6;
          case 2007:
            v6 = @"TAP_LIST_ITEM";

            return v6;
          case 2008:
            v6 = @"SHARE_LIST_ITEM";

            return v6;
          case 2009:
            v6 = @"DELETE_LIST_ITEM";

            return v6;
          case 2010:
            v6 = @"EDIT_LIST_ITEM";

            return v6;
          case 2011:
            v6 = @"REFRESH_SEARCH";

            return v6;
          case 2012:
            v6 = @"REVEAL_LIST_ITEM_ACTIONS";

            return v6;
          case 2013:
            v6 = @"HIDE_LIST_ITEM_ACTIONS";

            return v6;
          case 2014:
            v6 = @"TAP_SEARCH_BUTTON";

            return v6;
          case 2015:
            v6 = @"SHOW_SEARCH_RESULTS";

            return v6;
          case 2016:
            v6 = @"SHOW_REFRESH_SEARCH";

            return v6;
          case 2017:
            v6 = @"PASTE_TEXT";

            return v6;
          case 2018:
            v6 = @"TAP_LIST_SUB_ITEM";

            return v6;
          case 2019:
            v6 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

            return v6;
          case 2020:
            v6 = @"TAP_DID_YOU_MEAN_MESSAGE";

            return v6;
          case 2021:
            v6 = @"CLOSE_DID_YOU_MEAN_MESSAGE";

            return v6;
          case 2022:
            v6 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

            return v6;
          case 2023:
            v6 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

            return v6;
          case 2024:
            v6 = @"RETAINED_QUERY";

            return v6;
          case 2025:
            v6 = @"TAP_RECENT_AC_SUGGESTION";

            return v6;
          case 2026:
            v6 = @"CLEAR_RECENT_AC_SUGGESTION";

            return v6;
          case 2027:
            v6 = @"DELETE_RECENT_AC_SUGGESTION";

            return v6;
          case 2028:
          case 2029:
            goto LABEL_200;
          case 2030:
            v6 = @"TAP_BROWSE_NEARBY_CATEGORY";

            return v6;
          case 2031:
            v6 = @"TAP_SUBACTION";

            return v6;
          case 2032:
            v6 = @"TAP_QUERY_BUILDING_ARROW";

            return v6;
          case 2033:
            v6 = @"CLICK_ON_EDIT_SEARCH";

            return v6;
          case 2034:
            v6 = @"REMOVE_CLIENT_AC_SUGGESTION";

            return v6;
          case 2035:
            v6 = @"SHARE_CLIENT_AC_SUGGESTION";

            return v6;
          case 2036:
            v6 = @"TAP_ON_MORE_RESULTS";

            return v6;
          case 2037:
            v6 = @"SHARE_ITEM";

            return v6;
          case 2038:
            v6 = @"HIDE_ITEM";

            return v6;
          case 2039:
            v6 = @"TAP_SUGGESTED_ITEM";

            return v6;
          case 2040:
            v6 = @"SHARE_SUGGESTED_ITEM";

            return v6;
          case 2041:
            v6 = @"HIDE_SUGGESTED_ITEM";

            return v6;
          case 2042:
            v6 = @"ADD_HOME_FAVORITE";

            return v6;
          case 2043:
            v6 = @"ADD_WORK_FAVORITE";

            return v6;
          case 2044:
            v6 = @"ADD_FAVORITE";

            return v6;
          case 2045:
            v6 = @"VIEW_FAVORITES_LIST";

            return v6;
          case 2046:
            v6 = @"TAP_HOME_FAVORITE";

            return v6;
          case 2047:
            v6 = @"TAP_WORK_FAVORITE";

            return v6;
          case 2048:
            v6 = @"TAP_CAR_FAVORITE";

            return v6;
          case 2049:
            v6 = @"TAP_FAVORITE_ITEM";

            return v6;
          case 2050:
            v6 = @"CREATE_HOME_FAVORITE";

            return v6;
          case 2051:
            v6 = @"CREATE_WORK_FAVORITE";

            return v6;
          case 2052:
            v6 = @"CREATE_FAVORITE";

            return v6;
          case 2053:
            v6 = @"SUBMIT_FAVORITE_EDIT";

            return v6;
          case 2054:
            v6 = @"ADD_RECOMMENDED_FAVORITE";

            return v6;
          case 2055:
            v6 = @"EDIT_FAVORITE";

            return v6;
          case 2056:
            v6 = @"REMOVE_FAVORITE";

            return v6;
          case 2057:
            v6 = @"SHARE_FAVORITE";

            return v6;
          case 2058:
            v6 = @"EDIT_FAVORITES";

            return v6;
          case 2059:
            v6 = @"ADD_FAVORITE_PLACE";

            return v6;
          case 2060:
            v6 = @"REMOVE_FAVORITE_PLACE";

            return v6;
          case 2061:
            v6 = @"CHANGE_HOME_ADDRESS";

            return v6;
          case 2062:
            v6 = @"CHANGE_WORK_ADDRESS";

            return v6;
          case 2063:
            v6 = @"REFINE_LOCATION";

            return v6;
          case 2064:
            v6 = @"TAP_RECENTLY_VIEWED_ITEM";

            return v6;
          case 2065:
            v6 = @"SHOW_COLLECTION_LIST";

            return v6;
          case 2066:
            v6 = @"SHOW_FAVORITES_COLLECTION";

            return v6;
          case 2067:
            v6 = @"SHOW_COLLECTION";

            return v6;
          case 2068:
            v6 = @"TAP_COLLECTION_ITEM";

            return v6;
          case 2069:
            v6 = @"SHARE_COLLECTION_ITEM";

            return v6;
          case 2070:
            v6 = @"REMOVE_COLLECTION_ITEM";

            return v6;
          case 2071:
            v6 = @"SAVE_SHARED_COLLECTION";

            return v6;
          case 2072:
            v6 = @"CREATE_NEW_COLLECTION";

            return v6;
          case 2073:
            v6 = @"SAVE_TO_COLLECTION";

            return v6;
          case 2074:
            v6 = @"EDIT_PHOTO";

            return v6;
          case 2075:
            v6 = @"SORT_BY_NAME";

            return v6;
          case 2076:
            v6 = @"SORT_BY_DISTANCE";

            return v6;
          case 2077:
            v6 = @"SORT_BY_RECENT";

            return v6;
          case 2078:
            v6 = @"AUTO_SHARE_ETA";

            return v6;
          case 2079:
            v6 = @"CANCEL_AUTO_SHARE_ETA";

            return v6;
          case 2080:
            v6 = @"MAP_SEARCH";

            return v6;
          case 2081:
            v6 = @"DELETE_COLLECTION";

            return v6;
          case 2082:
            v6 = @"SHARE_COLLECTION";

            return v6;
          case 2083:
            v6 = @"SHOW_TRANSIT_LINES_COLLECTION";

            return v6;
          case 2084:
            v6 = @"SHOW_MY_PLACES";

            return v6;
          case 2085:
            v6 = @"SHOW_ALL_PLACES";

            return v6;
          case 2086:
            v6 = @"TAP_RECENT_QUERY";

            return v6;
          case 2087:
            v6 = @"TAP_QUERY_SUGGESTION";

            return v6;
          case 2088:
            v6 = @"DELETE_CURATED_COLLECTION";

            return v6;
          case 2089:
            v6 = @"FOLLOW";

            return v6;
          case 2090:
            v6 = @"PUNCH_IN";

            return v6;
          case 2091:
            v6 = @"SAVE_CURATED_COLLECTION";

            return v6;
          case 2092:
            v6 = @"SCROLL_LEFT_COLLECTIONS";

            return v6;
          case 2093:
            v6 = @"SCROLL_RIGHT_COLLECTIONS";

            return v6;
          case 2094:
            v6 = @"SEE_ALL_CURATED_COLLECTION";

            return v6;
          case 2095:
            v6 = @"SEE_ALL_PUBLISHERS";

            return v6;
          case 2096:
            v6 = @"SHARE_CURATED_COLLECTION";

            return v6;
          case 2097:
            v6 = @"SHARE_PUBLISHER";

            return v6;
          case 2098:
            v6 = @"SHOW_MORE_COLLECTION";

            return v6;
          case 2099:
            v6 = @"TAP_CURATED_COLLECTION";

            return v6;
          case 2100:
            v6 = @"TAP_FEATURED_COLLECTIONS";

            return v6;
          case 2101:
            v6 = @"TAP_LOCATION";

            return v6;
          case 2102:
            v6 = @"TAP_PUBLISHER";

            return v6;
          case 2103:
            v6 = @"TAP_PUBLISHER_APP";

            return v6;
          case 2104:
            v6 = @"TAP_PUBLISHER_COLLECTIONS";

            return v6;
          case 2105:
            v6 = @"UNFOLLOW";

            return v6;
          case 2106:
            v6 = @"CHANGE_SCHOOL_ADDRESS";

            return v6;
          case 2107:
            v6 = @"ADD_VEHICLE";

            return v6;
          case 2108:
            v6 = @"DISPLAY_VIRTUAL_GARAGE";

            return v6;
          case 2109:
            v6 = @"ENTER_VIRTUAL_GARAGE";

            return v6;
          case 2110:
            v6 = @"PUNCH_OUT_MANUFACTURER_APP";

            return v6;
          case 2111:
            v6 = @"REMOVE_LICENSE_PLATE";

            return v6;
          case 2112:
            v6 = @"REMOVE_VEHICLE";

            return v6;
          case 2113:
            v6 = @"SELECT_VEHICLE";

            return v6;
          case 2114:
            v6 = @"SUBMIT_LICENSE_PLATE";

            return v6;
          case 2115:
            v6 = @"TAP_ADD_LICENSE_PLATE";

            return v6;
          case 2116:
            v6 = @"TAP_ADD_NEW_CAR";

            return v6;
          case 2117:
            v6 = @"TAP_BANNER";

            return v6;
          case 2118:
            v6 = @"TAP_CONNECT";

            return v6;
          case 2119:
            v6 = @"TAP_CONTINUE";

            return v6;
          case 2120:
            v6 = @"TAP_EDIT";

            return v6;
          case 2121:
            v6 = @"TAP_NAME";

            return v6;
          case 2122:
            v6 = @"TAP_NOT_NOW";

            return v6;
          case 2123:
            v6 = @"TAP_OTHER_VEHICLE";

            return v6;
          case 2124:
            v6 = @"TAP_REMOVE_LICENSE_PLATE";

            return v6;
          case 2125:
            v6 = @"TAP_UPDATE_PLATE_NUMBER";

            return v6;
          case 2126:
            v6 = @"TAP_VEHICLE";

            return v6;
          case 2127:
            v6 = @"TAP_VEHICLE_NAME";

            return v6;
          case 2128:
            v6 = @"UPDATE_NAME";

            return v6;
          case 2129:
            v6 = @"DONE_TAKING_PHOTO";

            return v6;
          case 2130:
            v6 = @"ENABLE_SHOW_PHOTO_NAME";

            return v6;
          case 2131:
            v6 = @"SUBMIT_PHOTO";

            return v6;
          case 2132:
            v6 = @"USE_PHOTO";

            return v6;
          case 2133:
            v6 = @"ADD_RECOMMENDATION_TO_MAPS";

            return v6;
          case 2134:
            v6 = @"CANCEL_PHOTO_SUBMISSION";

            return v6;
          case 2135:
            v6 = @"CLOSE_RECOMMENDATION_CARD";

            return v6;
          case 2136:
            v6 = @"EDIT_RATING";

            return v6;
          case 2137:
            v6 = @"PROMPTED_TO_ADD_PHOTO";

            return v6;
          case 2138:
            v6 = @"PROMPTED_TO_ADD_RATING";

            return v6;
          case 2139:
            v6 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

            return v6;
          case 2140:
            v6 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

            return v6;
          case 2141:
            v6 = @"RETAKE_PHOTO";

            return v6;
          case 2142:
            v6 = @"REVEAL_RECOMMENDATION_CARD";

            return v6;
          case 2143:
            v6 = @"SUBMIT_NEGATIVE_RATING";

            return v6;
          case 2144:
            v6 = @"SUBMIT_POSITIVE_RATING";

            return v6;
          case 2145:
            v6 = @"TAP_CHOOSING_PHOTO";

            return v6;
          case 2146:
            v6 = @"TAP_TAKE_NEW_PHOTO";

            return v6;
          case 2147:
            v6 = @"TAP_TO_ADD_PHOTO";

            return v6;
          case 2148:
            v6 = @"CANCEL_INCIDENT_REPORT";

            return v6;
          case 2149:
            v6 = @"INCIDENT_REPORT_SUBMITTED";

            return v6;
          case 2150:
            v6 = @"REPORTED_INCIDENT_NOT_RECEIVED";

            return v6;
          case 2151:
            v6 = @"REPORTED_INCIDENT_RECEIVED";

            return v6;
          case 2152:
            v6 = @"REPORT_INCIDENT";

            return v6;
          case 2153:
            v6 = @"SELECT_INCIDENT_TYPE";

            return v6;
          case 2154:
            v6 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

            return v6;
          case 2155:
            v6 = @"TAP_TO_START_REPORT_INCIDENT";

            return v6;
          case 2156:
            v6 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

            return v6;
          case 2157:
            v6 = @"ATTEMPT_VLF_CORRECTION";

            return v6;
          case 2158:
            v6 = @"DISMISS_VLF_PROMPT";

            return v6;
          case 2159:
            v6 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

            return v6;
          case 2160:
            v6 = @"VLF_CORRECTION_FAILED";

            return v6;
          case 2161:
            v6 = @"VLF_CORRECTION_SUCCESSFUL";

            return v6;
          case 2162:
            v6 = @"ENABLE_WIDGET_SUGGESTIONS";

            return v6;
          case 2163:
            v6 = @"DISPLAY_CZ_ADVISORY";

            return v6;
          case 2164:
            v6 = @"PUNCH_OUT_URL_PAY";

            return v6;
          case 2165:
            v6 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

            return v6;
          case 2166:
            v6 = @"DELETE_ITEM";

            return v6;
          case 2167:
            v6 = @"CANCEL_REMOVE";

            return v6;
          case 2168:
            v6 = @"DELETE_SUGGESTION";

            return v6;
          case 2169:
            v6 = @"ADD_SCHOOL_FAVORITE";

            return v6;
          case 2170:
            v6 = @"GO_TO_WEBSITE";

            return v6;
          case 2171:
            v6 = @"TRY_AGAIN";

            return v6;
          case 2172:
            v6 = @"CHECK_AUTO_RECORD_WORKOUT";

            return v6;
          case 2173:
            v6 = @"CHECK_EBIKE";

            return v6;
          case 2174:
            v6 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

            return v6;
          case 2175:
            v6 = @"DISPLAY_CYCLING_DEFAULT_OPTION";

            return v6;
          case 2176:
            v6 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

            return v6;
          case 2177:
            v6 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

            return v6;
          case 2178:
            v6 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

            return v6;
          case 2179:
            v6 = @"TAP_AUTOMATIC_WORKOUT_OPTION";

            return v6;
          case 2180:
            v6 = @"TAP_CYCLING_DEFAULT_OPTION";

            return v6;
          case 2181:
            v6 = @"TAP_CYCLING_NO_BIKE_ADVISORY";

            return v6;
          case 2182:
            v6 = @"TAP_CYCLING_STAIRS_ADVISORY";

            return v6;
          case 2183:
            v6 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

            return v6;
          case 2184:
            v6 = @"UNCHECK_AUTO_RECORD_WORKOUT";

            return v6;
          case 2185:
            v6 = @"UNCHECK_EBIKE";

            return v6;
          case 2186:
            v6 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

            return v6;
          case 2187:
            v6 = @"DISPLAY_LPR_ADVISORY";

            return v6;
          case 2188:
            v6 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

            return v6;
          case 2189:
            v6 = @"CREATE_WIDGET";

            return v6;
          case 2190:
            v6 = @"REVEAL_WIDGET_TRAY";

            return v6;
          case 2191:
            v6 = @"LPR_ERROR_CODE";

            return v6;
          case 2192:
            v6 = @"TAP_SEE_ALL_RECENTLY_VIEWED";

            return v6;
          case 2193:
            v6 = @"TAP_CLEAR_RECENTLY_VIEWED";

            return v6;
          case 2194:
            v6 = @"LPR_HARD_STOP";

            return v6;
          case 2195:
            v6 = @"TAP_PUBLISHER_SUBACTION";

            return v6;
          case 2196:
            v6 = @"CARPLAY_DISPLAY_ACTIVATED";

            return v6;
          case 2197:
            v6 = @"CARPLAY_DISPLAY_DEACTIVATED";

            return v6;
          case 2198:
            v6 = @"TAP_FEATURED_COLLECTION";

            return v6;
          case 2199:
            v6 = @"SCROLL_FEATURED_COLLECTION_FORWARD";

            return v6;
          case 2200:
            v6 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

            return v6;
          default:
            if (action == 1504)
            {
              v6 = @"TAP_ENABLE_LOST_MODE";
            }

            else
            {
              if (action != 1505)
              {
                goto LABEL_200;
              }

              v6 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
            }

            break;
        }
      }
    }

    else
    {
      v6 = @"UI_ACTION_UNKNOWN";
      switch(action)
      {
        case 0:
          goto LABEL_201;
        case 1:
          v6 = @"PULL_UP";

          break;
        case 2:
          v6 = @"PULL_DOWN";

          break;
        case 3:
          v6 = @"TAP";

          break;
        case 4:
          v6 = @"CLOSE";

          break;
        case 5:
          v6 = @"SWIPE_PREV";

          break;
        case 6:
          v6 = @"SWIPE_NEXT";

          break;
        case 7:
          v6 = @"SCROLL_UP";

          break;
        case 8:
          v6 = @"SCROLL_DOWN";

          break;
        case 9:
        case 23:
        case 24:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 530:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 546:
        case 547:
        case 548:
        case 549:
        case 550:
        case 551:
        case 552:
        case 553:
        case 554:
        case 555:
        case 556:
        case 557:
        case 558:
        case 559:
        case 560:
        case 561:
        case 562:
        case 563:
        case 564:
        case 565:
        case 566:
        case 567:
        case 568:
        case 569:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 578:
        case 579:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 586:
        case 587:
        case 588:
        case 589:
        case 590:
        case 591:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 600:
        case 601:
        case 602:
        case 603:
        case 604:
        case 605:
        case 606:
        case 607:
        case 608:
        case 609:
        case 610:
        case 611:
        case 612:
        case 613:
        case 614:
        case 615:
        case 616:
        case 617:
        case 618:
        case 619:
        case 620:
        case 621:
        case 622:
        case 623:
        case 624:
        case 625:
        case 626:
        case 627:
        case 628:
        case 629:
        case 630:
        case 631:
        case 632:
        case 633:
        case 634:
        case 635:
        case 636:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
        case 642:
        case 643:
        case 644:
        case 645:
        case 646:
        case 647:
        case 648:
        case 649:
        case 650:
        case 651:
        case 652:
        case 653:
        case 654:
        case 655:
        case 656:
        case 657:
        case 658:
        case 659:
        case 660:
        case 661:
        case 662:
        case 663:
        case 664:
        case 665:
        case 666:
        case 667:
        case 668:
        case 669:
        case 670:
        case 671:
        case 672:
        case 673:
        case 674:
        case 675:
        case 676:
        case 677:
        case 678:
        case 679:
        case 680:
        case 681:
        case 682:
        case 683:
        case 684:
        case 685:
        case 686:
        case 687:
        case 688:
        case 689:
        case 690:
        case 691:
        case 692:
        case 693:
        case 694:
        case 695:
        case 696:
        case 697:
        case 698:
        case 699:
        case 700:
        case 701:
        case 702:
        case 703:
        case 704:
        case 705:
        case 706:
        case 707:
        case 708:
        case 709:
        case 710:
        case 711:
        case 712:
        case 713:
        case 714:
        case 715:
        case 716:
        case 717:
        case 718:
        case 719:
        case 720:
        case 721:
        case 722:
        case 723:
        case 724:
        case 725:
        case 726:
        case 727:
        case 728:
        case 729:
        case 730:
        case 731:
        case 732:
        case 733:
        case 734:
        case 735:
        case 736:
        case 737:
        case 738:
        case 739:
        case 740:
        case 741:
        case 742:
        case 743:
        case 744:
        case 745:
        case 746:
        case 747:
        case 748:
        case 749:
        case 750:
        case 751:
        case 752:
        case 753:
        case 754:
        case 755:
        case 756:
        case 757:
        case 758:
        case 759:
        case 760:
        case 761:
        case 762:
        case 763:
        case 764:
        case 765:
        case 766:
        case 767:
        case 768:
        case 769:
        case 770:
        case 771:
        case 772:
        case 773:
        case 774:
        case 775:
        case 776:
        case 777:
        case 778:
        case 779:
        case 780:
        case 781:
        case 782:
        case 783:
        case 784:
        case 785:
        case 786:
        case 787:
        case 788:
        case 789:
        case 790:
        case 791:
        case 792:
        case 793:
        case 794:
        case 795:
        case 796:
        case 797:
        case 798:
        case 799:
        case 800:
        case 801:
        case 802:
        case 803:
        case 804:
        case 805:
        case 806:
        case 807:
        case 808:
        case 809:
        case 810:
        case 811:
        case 812:
        case 813:
        case 814:
        case 815:
        case 816:
        case 817:
        case 818:
        case 819:
        case 820:
        case 821:
        case 822:
        case 823:
        case 824:
        case 825:
        case 826:
        case 827:
        case 828:
        case 829:
        case 830:
        case 831:
        case 832:
        case 833:
        case 834:
        case 835:
        case 836:
        case 837:
        case 838:
        case 839:
        case 840:
        case 841:
        case 842:
        case 843:
        case 844:
        case 845:
        case 846:
        case 847:
        case 848:
        case 849:
        case 850:
        case 851:
        case 852:
        case 853:
        case 854:
        case 855:
        case 856:
        case 857:
        case 858:
        case 859:
        case 860:
        case 861:
        case 862:
        case 863:
        case 864:
        case 865:
        case 866:
        case 867:
        case 868:
        case 869:
        case 870:
        case 871:
        case 872:
        case 873:
        case 874:
        case 875:
        case 876:
        case 877:
        case 878:
        case 879:
        case 880:
        case 881:
        case 882:
        case 883:
        case 884:
        case 885:
        case 886:
        case 887:
        case 888:
        case 889:
        case 890:
        case 891:
        case 892:
        case 893:
        case 894:
        case 895:
        case 896:
        case 897:
        case 898:
        case 899:
        case 900:
        case 901:
        case 902:
        case 903:
        case 904:
        case 905:
        case 906:
        case 907:
        case 908:
        case 909:
        case 910:
        case 911:
        case 912:
        case 913:
        case 914:
        case 915:
        case 916:
        case 917:
        case 918:
        case 919:
        case 920:
        case 921:
        case 922:
        case 923:
        case 924:
        case 925:
        case 926:
        case 927:
        case 928:
        case 929:
        case 930:
        case 931:
        case 932:
        case 933:
        case 934:
        case 935:
        case 936:
        case 937:
        case 938:
        case 939:
        case 940:
        case 941:
        case 942:
        case 943:
        case 944:
        case 945:
        case 946:
        case 947:
        case 948:
        case 949:
        case 950:
        case 951:
        case 952:
        case 953:
        case 954:
        case 955:
        case 956:
        case 957:
        case 958:
        case 959:
        case 960:
        case 961:
        case 962:
        case 963:
        case 964:
        case 965:
        case 966:
        case 967:
        case 968:
        case 969:
        case 970:
        case 971:
        case 972:
        case 973:
        case 974:
        case 975:
        case 976:
        case 977:
        case 978:
        case 979:
        case 980:
        case 981:
        case 982:
        case 983:
        case 984:
        case 985:
        case 986:
        case 987:
        case 988:
        case 989:
        case 990:
        case 991:
        case 992:
        case 993:
        case 994:
        case 995:
        case 996:
        case 997:
        case 998:
        case 999:
        case 1000:
        case 1005:
        case 1006:
        case 1007:
        case 1008:
        case 1009:
        case 1012:
        case 1013:
        case 1014:
        case 1015:
        case 1016:
        case 1019:
        case 1021:
        case 1022:
        case 1023:
        case 1024:
        case 1025:
        case 1026:
        case 1027:
        case 1028:
        case 1029:
          goto LABEL_200;
        case 10:
          v6 = @"SHOW_MORE";

          break;
        case 11:
          v6 = @"SHOW_LESS";

          break;
        case 12:
          v6 = @"SWIPE_LEFT";

          break;
        case 13:
          v6 = @"SWIPE_RIGHT";

          break;
        case 14:
          v6 = @"MINIMIZE";

          break;
        case 15:
          v6 = @"TAP_PREV";

          break;
        case 16:
          v6 = @"TAP_NEXT";

          break;
        case 17:
          v6 = @"SUBMIT";

          break;
        case 18:
          v6 = @"CANCEL";

          break;
        case 19:
          v6 = @"ENTER_MAPS";

          break;
        case 20:
          v6 = @"EXIT_MAPS";

          break;
        case 21:
          v6 = @"REVEAL";

          break;
        case 22:
          v6 = @"OPEN_NEW_TAB";

          break;
        case 25:
          v6 = @"BACK";

          break;
        case 26:
          v6 = @"ACTIVATE";

          break;
        case 27:
          v6 = @"DEACTIVATE";

          break;
        case 28:
          v6 = @"AGREE";

          break;
        case 29:
          v6 = @"DISAGREE";

          break;
        case 30:
          v6 = @"SKIP_ANSWER";

          break;
        case 31:
          v6 = @"EXPAND";

          break;
        case 32:
          v6 = @"COLLAPSE";

          break;
        case 33:
          v6 = @"ENTER";

          break;
        case 34:
          v6 = @"EXIT";

          break;
        case 35:
          v6 = @"SCROLL_UP_INDEX_BAR";

          break;
        case 36:
          v6 = @"SCROLL_DOWN_INDEX_BAR";

          break;
        case 37:
          v6 = @"TOGGLE_ON";

          break;
        case 38:
          v6 = @"TOGGLE_OFF";

          break;
        case 39:
          v6 = @"LONG_PRESS";

          break;
        case 40:
          v6 = @"CLICK";

          break;
        case 41:
          v6 = @"TAP_DONE";

          break;
        case 42:
          v6 = @"TAP_CLOSE";

          break;
        case 43:
          v6 = @"SCROLL_LEFT";

          break;
        case 44:
          v6 = @"SCROLL_RIGHT";

          break;
        case 45:
          v6 = @"DISPLAY";

          break;
        case 46:
          v6 = @"OPEN_IN_APP";

          break;
        case 47:
          v6 = @"CONCEAL";

          break;
        case 48:
          v6 = @"TAP_DELETE";

          break;
        case 49:
          v6 = @"TAP_FILTER";

          break;
        case 50:
          v6 = @"TAP_SECONDARY_BUTTON";

          break;
        case 51:
          v6 = @"TAP_WIDGET_FOOD";

          break;
        case 52:
          v6 = @"TAP_WIDGET_GAS";

          break;
        case 53:
          v6 = @"TAP_WIDGET_LOADING";

          break;
        case 54:
          v6 = @"TAP_WIDGET_SEARCH";

          break;
        case 55:
          v6 = @"TAP_WIDGET_STORES";

          break;
        case 56:
          v6 = @"DISPLAY_ALLOW_ONCE_PROMPT";

          break;
        case 57:
          v6 = @"SHARE_CURRENT_LOCATION";

          break;
        case 58:
          v6 = @"SHARE_PHOTO";

          break;
        case 59:
          v6 = @"TAP_KEEP_OFF";

          break;
        case 60:
          v6 = @"TAP_PHOTO_CATEGORY";

          break;
        case 61:
          v6 = @"TAP_PRECISE_LOCATION_OFF_BANNER";

          break;
        case 62:
          v6 = @"TAP_TURN_ON";

          break;
        case 63:
          v6 = @"DISPLAY_CYCLING_ANNOTATION";

          break;
        case 64:
          v6 = @"DISPLAY_DRIVING_DEFAULT_OPTION";

          break;
        case 65:
          v6 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

          break;
        case 66:
          v6 = @"DISPLAY_WALKING_DEFAULT_OPTION";

          break;
        case 67:
          v6 = @"TAP_CYCLING_ANNOTATION";

          break;
        case 68:
          v6 = @"TAP_DRIVING_DEFAULT_OPTION";

          break;
        case 69:
          v6 = @"TAP_TRANSIT_DEFAULT_OPTION";

          break;
        case 70:
          v6 = @"TAP_WALKING_DEFAULT_OPTION";

          break;
        case 71:
          v6 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

          break;
        case 72:
          v6 = @"TAP_RIDESHARE_DEFAULT_OPTION";

          break;
        case 73:
          v6 = @"TAP_PERSONAL_COLLECTION";

          break;
        case 74:
          v6 = @"RESUME_ROUTE";

          break;
        case 75:
          v6 = @"DISPLAY_OUT_OF_RANGE_ALERT";

          break;
        case 76:
          v6 = @"TAP_ALLOW_ONCE";

          break;
        case 77:
          v6 = @"TAP_DO_NOT_ALLOW";

          break;
        case 78:
          v6 = @"ADD_RECCOMENDED_FAVORITE";

          break;
        case 79:
          v6 = @"ADD_RECOMMENDED_HOME_FAVORITE";

          break;
        case 80:
          v6 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 81:
          v6 = @"ADD_RECOMMENDED_WORK_FAVORITE";

          break;
        case 82:
          v6 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

          break;
        case 83:
          v6 = @"CREATE_SCHOOL_FAVORITE";

          break;
        case 84:
          v6 = @"TAP_SCHOOL_FAVORITE";

          break;
        case 85:
          v6 = @"SELECT_ROUTING_TYPE_CYCLING";

          break;
        case 86:
          v6 = @"REPORT_PHOTO";

          break;
        case 87:
          v6 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

          break;
        case 88:
          v6 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

          break;
        case 89:
          v6 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

          break;
        case 90:
          v6 = @"CREATE_RECOMMENDED_FAVORITE";

          break;
        case 91:
          v6 = @"CREATE_RECOMMENDED_HOME_FAVORITE";

          break;
        case 92:
          v6 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 93:
          v6 = @"CREATE_RECOMMENDED_WORK_FAVORITE";

          break;
        case 94:
          v6 = @"TAP_SMALL_WIDGET_ITEM";

          break;
        case 95:
          v6 = @"TAP_MEDIUM_WIDGET_ITEM";

          break;
        case 96:
          v6 = @"TAP_LARGE_WIDGET_ITEM";

          break;
        case 97:
          v6 = @"DISPLAY_ARP_TIPKIT";

          break;
        case 98:
          v6 = @"NEXT";

          break;
        case 99:
          v6 = @"TAP_RATE_AND_ADD_PHOTOS";

          break;
        case 100:
          v6 = @"TAP_TO_ADD_POSITIVE_RATING";

          break;
        case 101:
          v6 = @"TAP_TO_ADD_NEGATIVE_RATING";

          break;
        case 102:
          v6 = @"TAP_ACTIVE_SHARING_NOTIFICATION";

          break;
        case 103:
          v6 = @"INVOKE_SIRI_PROMPT";

          break;
        case 104:
          v6 = @"ETA_SHARED_SUCCESSFULLY";

          break;
        case 105:
          v6 = @"ENDED_ETA_SHARE_SUCCESSFULLY";

          break;
        case 106:
          v6 = @"CLEAR_INCIDENT";

          break;
        case 107:
          v6 = @"CONFIRM_INCIDENT";

          break;
        case 108:
          v6 = @"DISMISS_INCIDENT";

          break;
        case 109:
          v6 = @"INCIDENT_ALERT_TIMEOUT";

          break;
        case 110:
          v6 = @"INCIDENT_ALERT_TRAY_SHOWN";

          break;
        case 111:
          v6 = @"INCIDENT_CARD_SHOWN";

          break;
        case 112:
          v6 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

          break;
        case 113:
          v6 = @"INCIDENT_REPORT_TRAY_SHOWN";

          break;
        case 114:
          v6 = @"NAV_TRAY_DISCOVERY_SHOWN";

          break;
        case 115:
          v6 = @"TAP_TO_REPORT_INCIDENT";

          break;
        case 116:
          v6 = @"TAP_SHORTCUT";

          break;
        case 117:
          v6 = @"BLOCK_CONTACT";

          break;
        case 118:
          v6 = @"TAP_TO_ADD_RATING";

          break;
        case 119:
          v6 = @"AR_WALKING_LOCALIZATION_FAILED";

          break;
        case 120:
          v6 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

          break;
        case 121:
          v6 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

          break;
        case 122:
          v6 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

          break;
        case 123:
          v6 = @"ATTEMPT_AR_WALKING_LOCALIZATION";

          break;
        case 124:
          v6 = @"RAISE_TO_ENTER_AR_WALKING";

          break;
        case 125:
          v6 = @"TAP_DISMISS";

          break;
        case 126:
          v6 = @"TAP_ENTER_AR_WALKING";

          break;
        case 127:
          v6 = @"TAP_OK";

          break;
        case 128:
          v6 = @"TAP_TRY_AGAIN";

          break;
        case 129:
          v6 = @"TAP_TURN_ON_IN_SETTINGS";

          break;
        case 130:
          v6 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

          break;
        case 131:
          v6 = @"VLF_CORRECTION_USER_ABANDON";

          break;
        case 132:
          v6 = @"AREA_EVENTS_ALERT";

          break;
        case 133:
          v6 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

          break;
        case 134:
          v6 = @"ACCEPT_EVENT_REROUTE";

          break;
        case 135:
          v6 = @"DISPLAY_AREA_EVENTS_ADVISORY";

          break;
        case 136:
          v6 = @"DISMISS_EVENT_REROUTE";

          break;
        case 137:
          v6 = @"PUNCH_OUT_EVENTS_LINK";

          break;
        case 138:
          v6 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

          break;
        case 139:
          v6 = @"ADJUST_GUIDANCE_SETTINGS";

          break;
        case 140:
          v6 = @"HIDE_DETAILS";

          break;
        case 141:
          v6 = @"SELECT_VOICE_GUIDANCE_ON";

          break;
        case 142:
          v6 = @"SELECT_VOICE_GUIDANCE_OFF";

          break;
        case 143:
          v6 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

          break;
        case 144:
          v6 = @"TAP_TEXT_LABEL";

          break;
        case 145:
          v6 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

          break;
        case 146:
          v6 = @"TAP_EXIT";

          break;
        case 147:
          v6 = @"TAP_CITY_MENU";

          break;
        case 148:
          v6 = @"CHECK_AVOID_TOLLS";

          break;
        case 149:
          v6 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

          break;
        case 150:
          v6 = @"TAP_ICLOUD";

          break;
        case 151:
          v6 = @"CHECK_AVOID_HIGHWAYS";

          break;
        case 152:
          v6 = @"TAP_FAVORITES";

          break;
        case 153:
          v6 = @"SELECT_DISTANCE_IN_KM";

          break;
        case 154:
          v6 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

          break;
        case 155:
          v6 = @"OPEN_FULL_CARD_FILTER";

          break;
        case 156:
          v6 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

          break;
        case 157:
          v6 = @"OPEN_SINGLE_CARD_FILTER";

          break;
        case 158:
          v6 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 159:
          v6 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

          break;
        case 160:
          v6 = @"SESSIONLESS_REVEAL";

          break;
        case 161:
          v6 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

          break;
        case 162:
          v6 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

          break;
        case 163:
          v6 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

          break;
        case 164:
          v6 = @"ENTER_RAP_REPORT_MENU";

          break;
        case 165:
          v6 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

          break;
        case 166:
          v6 = @"TAP_MY_VEHICLES";

          break;
        case 167:
          v6 = @"SUBMIT_SINGLE_CARD_FILTER";

          break;
        case 168:
          v6 = @"SUBMIT_FULL_CARD_FILTER";

          break;
        case 169:
          v6 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

          break;
        case 170:
          v6 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

          break;
        case 171:
          v6 = @"TAP_EXPLORE_CURATED_COLELCTIONS";

          break;
        case 172:
          v6 = @"TAP_ACCOUNT";

          break;
        case 173:
          v6 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

          break;
        case 174:
          v6 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

          break;
        case 175:
          v6 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

          break;
        case 176:
          v6 = @"RESULT_REFINEMENT_TOGGLE_OFF";

          break;
        case 177:
          v6 = @"TAP_CITY_CURATED_COLLECTIONS";

          break;
        case 178:
          v6 = @"TAP_REPORTS";

          break;
        case 179:
          v6 = @"TAP_RATINGS";

          break;
        case 180:
          v6 = @"TAP_EXPLORE_CURATED_COLLECTIONS";

          break;
        case 181:
          v6 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

          break;
        case 182:
          v6 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

          break;
        case 183:
          v6 = @"SELECT_DISTANCE_IN_MILES";

          break;
        case 184:
          v6 = @"TAP_PRIVACY_STATEMENT";

          break;
        case 185:
          v6 = @"TAP_MAPS_SETTINGS";

          break;
        case 186:
          v6 = @"CANCEL_FULL_CARD_FILTER";

          break;
        case 187:
          v6 = @"TAP_LATEST_CURATED_COLLECTION";

          break;
        case 188:
          v6 = @"TAP_TEMPORAL_CURATED_COLLECTION";

          break;
        case 189:
          v6 = @"UNCHECK_AVOID_TOLLS";

          break;
        case 190:
          v6 = @"UNSELECT_SEARCH_REFINEMENT";

          break;
        case 191:
          v6 = @"TAP_RATING";

          break;
        case 192:
          v6 = @"TAP_ICLOUD_SIGN_IN";

          break;
        case 193:
          v6 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

          break;
        case 194:
          v6 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

          break;
        case 195:
          v6 = @"UNCHECK_AVOID_HIGHWAYS";

          break;
        case 196:
          v6 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

          break;
        case 197:
          v6 = @"RESULT_REFINEMENT_TOGGLE_ON";

          break;
        case 198:
          v6 = @"TAP_CONTEXT_LINE_HYPERLINK";

          break;
        case 199:
          v6 = @"TAP_MY_GUIDES";

          break;
        case 200:
          v6 = @"SELECT_SEARCH_REFINEMENT";

          break;
        case 201:
          v6 = @"SESSIONLESS_TAP_ACCOUNT";

          break;
        case 202:
          v6 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 203:
          v6 = @"TAP_TRAVEL_PREFERENCES";

          break;
        case 204:
          v6 = @"SHOW_CURATED_COLLECTION_LIST";

          break;
        case 205:
          v6 = @"CANCEL_SINGLE_CARD_FILTER";

          break;
        case 206:
          v6 = @"DISPLAY_HFP_OPTION";

          break;
        case 207:
          v6 = @"SWITCH_OFF_HFP";

          break;
        case 208:
          v6 = @"SWITCH_ON_HFP";

          break;
        case 209:
          v6 = @"TAP_QUICK_ACTION_TRAY";

          break;
        case 210:
          v6 = @"SHOW_ALL_CITIES";

          break;
        case 211:
          v6 = @"TAP_ADD_NEARBY_TRANSIT";

          break;
        case 212:
          v6 = @"RESUME";

          break;
        case 213:
          v6 = @"DISPLAY_TIPKIT_PROMPT";

          break;
        case 214:
          v6 = @"TAP_NEARBY_TRANSIT_FAVORITE";

          break;
        case 215:
          v6 = @"TAP_DRIVING_MODE";

          break;
        case 216:
          v6 = @"SWITCH_ON_VOICE_GUIDANCE";

          break;
        case 217:
          v6 = @"DISMISS_TIPKIT_PROMPT";

          break;
        case 218:
          v6 = @"TAP_EXPAND_EXIT_DETAILS";

          break;
        case 219:
          v6 = @"TAP_NEARBY_TRANSIT_FILTER";

          break;
        case 220:
          v6 = @"TAP_MORE_DEPARTURES";

          break;
        case 221:
          v6 = @"RAP_INDIVIDUAL_PLACE";

          break;
        case 222:
          v6 = @"RAP_ADD_MAP";

          break;
        case 223:
          v6 = @"TAP_SUGGESTED_RAP";

          break;
        case 224:
          v6 = @"RAP_STREET_ISSUE";

          break;
        case 225:
          v6 = @"SWIPE_PIN_REVEAL";

          break;
        case 226:
          v6 = @"TAP_ADD_TIPKIT_FAVORITE";

          break;
        case 227:
          v6 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

          break;
        case 228:
          v6 = @"RAP_BAD_TRIP";

          break;
        case 229:
          v6 = @"RAP_PLACE_ISSUE";

          break;
        case 230:
          v6 = @"TAP_OPEN_MAPS";

          break;
        case 231:
          v6 = @"TAP_NEARBY_TRANSIT_RESULT";

          break;
        case 232:
          v6 = @"RAP_GUIDE";

          break;
        case 233:
          v6 = @"SWITCH_OFF_VOICE_GUIDANCE";

          break;
        case 234:
          v6 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

          break;
        case 235:
          v6 = @"SELECT_TRANSIT_STEP";

          break;
        case 236:
          v6 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

          break;
        case 237:
          v6 = @"TAP_SEE_MORE";

          break;
        case 238:
          v6 = @"RAP_IN_REVIEW";

          break;
        case 239:
          v6 = @"TAP_OPEN_MENU";

          break;
        case 240:
          v6 = @"TAP_NEARBY_TRANSIT";

          break;
        case 241:
          v6 = @"TAP_PIN_LINE";

          break;
        case 242:
          v6 = @"SWITCH_OFF_TRIP_FEEDBACK";

          break;
        case 243:
          v6 = @"RAP_GOOD_TRIP";

          break;
        case 244:
          v6 = @"TAP_FILTERED_CURATED_COLLECTION";

          break;
        case 245:
          v6 = @"SHARE_MY_LOCATION";

          break;
        case 246:
          v6 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

          break;
        case 247:
          v6 = @"DISPLAY_GENERIC_ADVISORY";

          break;
        case 248:
          v6 = @"ADVISORY_ALERT";

          break;
        case 249:
          v6 = @"PUNCH_OUT_LINK";

          break;
        case 250:
          v6 = @"TAP_GENERIC_ADVISORY";

          break;
        case 251:
          v6 = @"TAP_EXPLORE_MODE";

          break;
        case 252:
          v6 = @"TAP_UNPIN_LINE";

          break;
        case 253:
          v6 = @"MENU_UNPIN";

          break;
        case 254:
          v6 = @"MENU_PIN";

          break;
        case 255:
          v6 = @"SWIPE_PIN";

          break;
        case 256:
          v6 = @"SWIPE_UNPIN";

          break;
        case 257:
          v6 = @"TAP_MEDIA_APP";

          break;
        case 258:
          v6 = @"TAP_GUIDES_SUBACTION";

          break;
        case 259:
          v6 = @"TAP_MEDIA";

          break;
        case 260:
          v6 = @"PUNCH_OUT_MEDIA";

          break;
        case 261:
          v6 = @"SHOW_MEDIA_APP_MENU";

          break;
        case 262:
          v6 = @"SCROLL_RIGHT_RIBBON";

          break;
        case 263:
          v6 = @"SCROLL_LEFT_RIBBON";

          break;
        case 264:
          v6 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

          break;
        case 265:
          v6 = @"TAP_SHOW_MORE_TEXT";

          break;
        case 266:
          v6 = @"SCROLL_LEFT_RATINGS";

          break;
        case 267:
          v6 = @"SCROLL_LEFT_TEMPLATE_PLACE";

          break;
        case 268:
          v6 = @"SCROLL_RIGHT_TEMPLATE_PLACE";

          break;
        case 269:
          v6 = @"SCROLL_RIGHT_RATINGS";

          break;
        case 270:
          v6 = @"TAP_ALLOW";

          break;
        case 271:
          v6 = @"TAP_GO_TO_SETTING";

          break;
        case 272:
          v6 = @"START_SUBMIT_REPORT";

          break;
        case 273:
          v6 = @"AUTHENTICATION_INFO_FAILURE";

          break;
        case 274:
          v6 = @"SUCCESSFULLY_SUBMIT_REPORT";

          break;
        case 275:
          v6 = @"FAILED_SUBMIT_REPORT";

          break;
        case 276:
          v6 = @"AUTHENTICATION_INFO_SUCCESS";

          break;
        case 277:
          v6 = @"EDIT_WAYPOINT";

          break;
        case 278:
          v6 = @"CLEAR_TEXT";

          break;
        case 279:
          v6 = @"REORDER_WAYPOINT";

          break;
        case 280:
          v6 = @"REMOVE_WAYPOINT";

          break;
        case 281:
          v6 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

          break;
        case 282:
          v6 = @"TAP_SHOWCASE_MENU";

          break;
        case 283:
          v6 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

          break;
        case 284:
          v6 = @"TAP_PHOTO_ALBUM";

          break;
        case 285:
          v6 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 286:
          v6 = @"RAP_INLINE_ADD";

          break;
        case 287:
          v6 = @"RAP_TAP_EDIT";

          break;
        case 288:
          v6 = @"CLAIM_BUSINESS";

          break;
        case 289:
          v6 = @"RAP_EDIT_OPTIONS";

          break;
        case 290:
          v6 = @"TAP_IN_REVIEW_RAP";

          break;
        case 291:
          v6 = @"ORB_MENU_ADD_STOP";

          break;
        case 292:
          v6 = @"NEXT_STOP";

          break;
        case 293:
          v6 = @"ARRIVE_AT_WAYPOINT";

          break;
        case 294:
          v6 = @"REMOVE_STOP";

          break;
        case 295:
          v6 = @"DISPLAY_PAUSE_BUTTON";

          break;
        case 296:
          v6 = @"DISPLAY_PAUSE_NEXT_BUTTONS";

          break;
        case 297:
          v6 = @"AUTO_ADVANCE_NEXT_STOP";

          break;
        case 298:
          v6 = @"ADD_INLINE_NEGATIVE_RATING";

          break;
        case 299:
          v6 = @"ADD_INLINE_POSITIVE_RATING";

          break;
        case 300:
          v6 = @"TAP_TO_ADD_RATING_AND_PHOTO";

          break;
        case 301:
          v6 = @"SUBMIT_RATINGS_AND_PHOTOS";

          break;
        case 302:
          v6 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

          break;
        case 303:
          v6 = @"TAP_RECENTLY_VIEWED_ROUTE";

          break;
        case 304:
          v6 = @"SHOW_ALL_RECENTS";

          break;
        case 305:
          v6 = @"RESUME_MULTIPOINT_ROUTE";

          break;
        case 306:
          v6 = @"DISMISS_TRANSIT_TIPKIT";

          break;
        case 307:
          v6 = @"DISPLAY_TRANSIT_TIPKIT";

          break;
        case 308:
          v6 = @"TAP_TRANSIT_TIPKIT";

          break;
        case 309:
          v6 = @"FILTER_EV";

          break;
        case 310:
          v6 = @"FILTER_SURCHARGE";

          break;
        case 311:
          v6 = @"FILTER_PREFER";

          break;
        case 312:
          v6 = @"TAP_WALKING_ANNOTATION";

          break;
        case 313:
          v6 = @"FILTER_AVOID";

          break;
        case 314:
          v6 = @"FILTER_TRANSPORTATION_MODE";

          break;
        case 315:
          v6 = @"FILTER_RECOMMENDED_ROUTES";

          break;
        case 316:
          v6 = @"FILTER_IC_FARES";

          break;
        case 317:
          v6 = @"FILTER_TRANSIT_CARD_FARES";

          break;
        case 318:
          v6 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 319:
          v6 = @"TAP_NOTIFICATION_SETTINGS";

          break;
        case 320:
          v6 = @"TAP_ENABLE_NOTIFICATION";

          break;
        case 321:
          v6 = @"ARP_SUGGESTIONS_TURN_OFF";

          break;
        case 322:
          v6 = @"ARP_SUGGESTIONS_TURN_ON";

          break;
        case 323:
          v6 = @"DISMISS_ARP_SUGGESTION";

          break;
        case 324:
          v6 = @"RATINGS_AND_PHOTOS_TURN_ON";

          break;
        case 325:
          v6 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

          break;
        case 326:
          v6 = @"UNSELECT_SUGGESTED_PHOTOS";

          break;
        case 327:
          v6 = @"SUGGESTED_PHOTOS_SHOWN";

          break;
        case 328:
          v6 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 329:
          v6 = @"TAP_YOUR_PHOTOS_ALBUM";

          break;
        case 330:
          v6 = @"RATINGS_AND_PHOTOS_TURN_OFF";

          break;
        case 331:
          v6 = @"DELETE_PHOTO";

          break;
        case 332:
          v6 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 333:
          v6 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

          break;
        case 334:
          v6 = @"TAP_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 335:
          v6 = @"DISPLAY_YOUR_PHOTOS_ALBUM";

          break;
        case 336:
          v6 = @"SELECT_SUGGESTED_PHOTOS";

          break;
        case 337:
          v6 = @"ADD_STOP";

          break;
        case 338:
          v6 = @"SHOW_CREDIT_TURN_ON";

          break;
        case 339:
          v6 = @"DISPLAY_ARP_SUGGESTION";

          break;
        case 340:
          v6 = @"TAP_TO_ADD_PHOTO_CREDIT";

          break;
        case 341:
          v6 = @"SHOW_CREDIT_TURN_OFF";

          break;
        case 342:
          v6 = @"TAP_TO_EDIT_NICKNAME";

          break;
        case 343:
          v6 = @"SUBMIT_RATINGS";

          break;
        case 344:
          v6 = @"END_NAV_ON_WATCH";

          break;
        case 345:
          v6 = @"FILTER_EBIKE";

          break;
        case 356:
          v6 = @"ADD_STOP_SIRI";

          break;
        case 357:
          v6 = @"TAP_REVIEWED_RAP";

          break;
        case 358:
          v6 = @"TAP_OUTREACH_RAP";

          break;
        case 359:
          v6 = @"DISPLAY_SUGGESTED_ITEM";

          break;
        case 360:
          v6 = @"DISPLAY_HIKING_TIPKIT";

          break;
        case 361:
          v6 = @"DISMISS_HIKING_TIPKIT";

          break;
        case 362:
          v6 = @"TAP_HIKING_TIPKIT";

          break;
        case 363:
          v6 = @"SCROLL_LEFT_TRAILS";

          break;
        case 364:
          v6 = @"TAP_MORE_TRAILS";

          break;
        case 365:
          v6 = @"TAP_RELATED_TRAIL";

          break;
        case 366:
          v6 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

          break;
        case 367:
          v6 = @"SCROLL_RIGHT_TRAILS";

          break;
        case 368:
          v6 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 369:
          v6 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

          break;
        case 370:
          v6 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 371:
          v6 = @"TAP_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 372:
          v6 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 373:
          v6 = @"EXPIRED_MAPS_REMOVED";

          break;
        case 374:
          v6 = @"UPDATE_ALL_DOWNLOAD_MAPS";

          break;
        case 375:
          v6 = @"TAP_EXPIRED_MAPS";

          break;
        case 376:
          v6 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 377:
          v6 = @"MOVE_DOWNLOAD_MAPS";

          break;
        case 378:
          v6 = @"SAVE_RENAME_DOWNLOAD_MAPS";

          break;
        case 379:
          v6 = @"TAP_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 380:
          v6 = @"TAP_ENTER_OFFLINE_MAPS";

          break;
        case 381:
          v6 = @"TAP_DOWNLOAD_MAPS";

          break;
        case 382:
          v6 = @"TAP_DOWNLOAD_MAPS_CONTINUE";

          break;
        case 383:
          v6 = @"DELETE_DOWNLOAD_MAPS";

          break;
        case 384:
          v6 = @"SLIDE_CLEAR_EXPIRED_MAPS";

          break;
        case 385:
          v6 = @"RENAME_DOWNLOAD_MAPS";

          break;
        case 386:
          v6 = @"RESIZE_DOWNLOAD_MAPS";

          break;
        case 387:
          v6 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

          break;
        case 388:
          v6 = @"RESTORE_EXPIRED_MAPS";

          break;
        case 389:
          v6 = @"CLEAR_EXPIRED_MAPS";

          break;
        case 390:
          v6 = @"TAP_USING_OFFLINE_BAR";

          break;
        case 391:
          v6 = @"UPDATE_DOWNLOAD_MAPS";

          break;
        case 392:
          v6 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 393:
          v6 = @"DISPLAY_DOWNLOAD_MAPS";

          break;
        case 394:
          v6 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

          break;
        case 395:
          v6 = @"DISPLAY_EXPIRED_MAPS";

          break;
        case 396:
          v6 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 397:
          v6 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

          break;
        case 398:
          v6 = @"SLIDE_RESTORE_EXPIRED_MAPS";

          break;
        case 399:
          v6 = @"ETA_SHARE_TRAY_TIMEOUT";

          break;
        case 400:
          v6 = @"START_ETA_SHARING";

          break;
        case 401:
          v6 = @"PERSON_LOCATION_UPDATE";

          break;
        case 402:
          v6 = @"STOP_ETA_SHARING";

          break;
        case 403:
          v6 = @"PUNCH_OUT_TO_FINDMY";

          break;
        case 404:
          v6 = @"TAP_PEOPLE_LOCATION";

          break;
        case 405:
          v6 = @"TAP_TO_REQUEST_LOCATION";

          break;
        case 406:
          v6 = @"ZOOM_OUT_CROWN";

          break;
        case 407:
          v6 = @"TAP_RESIZE_DOWNLOAD_MAPS";

          break;
        case 408:
          v6 = @"TAP_DELETE_DOWNLOAD_MAPS";

          break;
        case 409:
          v6 = @"SELECT_LIST_VIEW";

          break;
        case 410:
          v6 = @"SCROLL_RIGHT_TRAILHEADS";

          break;
        case 411:
          v6 = @"SWITCH_TO_ONLINE_MODE";

          break;
        case 412:
          v6 = @"TAP_RELATED_TRAILHEAD";

          break;
        case 413:
          v6 = @"SELECT_ELEVATION_VIEW";

          break;
        case 414:
          v6 = @"TOGGLE_PROXIMITY_RADIUS_ON";

          break;
        case 415:
          v6 = @"SEE_MORE_RECENTS";

          break;
        case 416:
          v6 = @"SEE_MORE_GUIDES";

          break;
        case 417:
          v6 = @"SELECT_CONTROLS";

          break;
        case 418:
          v6 = @"NO_SEARCH_RESULTS";

          break;
        case 419:
          v6 = @"TAP_VIEW_RESULTS_CAROUSEL";

          break;
        case 420:
          v6 = @"TAP_VIEW_RESULTS_LIST";

          break;
        case 421:
          v6 = @"SELECT_MAP_VIEW";

          break;
        case 422:
          v6 = @"SCROLL_LEFT_TRAILHEADS";

          break;
        case 423:
          v6 = @"SWITCH_TO_OFFLINE_MODE";

          break;
        case 424:
          v6 = @"ZOOM_IN_CROWN";

          break;
        case 425:
          v6 = @"TOGGLE_PROXIMITY_RADIUS_OFF";

          break;
        case 426:
          v6 = @"TAP_MAP";

          break;
        case 427:
          v6 = @"SWIPE_DOWN";

          break;
        case 428:
          v6 = @"TAP_MORE_TRAILHEADS";

          break;
        case 429:
          v6 = @"TAP_ROUTE_OPTIONS";

          break;
        case 430:
          v6 = @"TAP_ROUTE_NAV_MAP";

          break;
        case 431:
          v6 = @"TAP_ROUTE_OVERVIEW_MAP";

          break;
        case 432:
          v6 = @"TAP_AUDIO";

          break;
        case 433:
          v6 = @"TAP_OPEN_PLACECARD";

          break;
        case 434:
          v6 = @"TAP_VIEW_STOPS";

          break;
        case 435:
          v6 = @"TAP_ROUTE_DETAILS";

          break;
        case 436:
          v6 = @"ADD_LPR_VEHICLE";

          break;
        case 437:
          v6 = @"TAP_ADD_VEHICLE";

          break;
        case 438:
          v6 = @"TAP_PLUG_TYPE";

          break;
        case 439:
          v6 = @"UNSELECT_SUGGESTED_NETWORK";

          break;
        case 440:
          v6 = @"TAP_SET_UP_LATER";

          break;
        case 441:
          v6 = @"ADD_EV_VEHICLE";

          break;
        case 442:
          v6 = @"UPDATE_COLOR";

          break;
        case 443:
          v6 = @"SELECT_OTHER_NETWORK";

          break;
        case 444:
          v6 = @"UNSELECT_NETWORK";

          break;
        case 445:
          v6 = @"TAP_BACK";

          break;
        case 446:
          v6 = @"TAP_CANCEL";

          break;
        case 447:
          v6 = @"UNSELECT_VEHICLE";

          break;
        case 448:
          v6 = @"UNSELECT_OTHER_NETWORK";

          break;
        case 449:
          v6 = @"DISPLAY_EV_TIPKIT";

          break;
        case 450:
          v6 = @"SELECT_NETWORK";

          break;
        case 451:
          v6 = @"TAP_EV_TIPKIT";

          break;
        case 452:
          v6 = @"TAP_CHOOSE_NETWORKS";

          break;
        case 453:
          v6 = @"TAP_ADD_NETWORK";

          break;
        case 454:
          v6 = @"FILTER_NETWORK";

          break;
        case 455:
          v6 = @"SELECT_SUGGESTED_NETWORK";

          break;
        case 456:
          v6 = @"TRANSIT_TO_WALKING";

          break;
        case 457:
          v6 = @"TRANSIT_TO_FINDMY";

          break;
        case 458:
          v6 = @"TAP_AC_KEYBOARD";

          break;
        case 459:
          v6 = @"REACH_PHOTO_STRIP_END";

          break;
        case 460:
          v6 = @"SEARCH_HERE_REVEAL";

          break;
        case 461:
          v6 = @"TAP_SEARCH_HERE";

          break;
        case 462:
          v6 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

          break;
        case 463:
          v6 = @"SAVE";

          break;
        case 464:
          v6 = @"TAP_MORE_CURATED_HIKES";

          break;
        case 465:
          v6 = @"CREATE_CUSTOM_ROUTE";

          break;
        case 466:
          v6 = @"TAP_TRY_NOW";

          break;
        case 467:
          v6 = @"TAP_CURATED_HIKE";

          break;
        case 468:
          v6 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

          break;
        case 469:
          v6 = @"ADD_TO_LIBRARY";

          break;
        case 470:
          v6 = @"START_HIKING";

          break;
        case 471:
          v6 = @"EDIT_NOTE";

          break;
        case 472:
          v6 = @"CREATE_NOTE";

          break;
        case 473:
          v6 = @"DELETE_PIN";

          break;
        case 474:
          v6 = @"ADD_ROUTE";

          break;
        case 475:
          v6 = @"ADD_PIN";

          break;
        case 476:
          v6 = @"REMOVE_FROM_COLLECTION";

          break;
        case 477:
          v6 = @"REMOVE_FROM_LIBRARY";

          break;
        case 478:
          v6 = @"TAP_ITEM";

          break;
        case 479:
          v6 = @"DELETE_ROUTE";

          break;
        case 480:
          v6 = @"TAP_ROUTE";

          break;
        case 481:
          v6 = @"TAP_DOWNLOAD_WATCH_MAPS";

          break;
        case 482:
          v6 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 483:
          v6 = @"STOP_DOWNLOAD_ONTO_WATCH";

          break;
        case 484:
          v6 = @"TAP_DOWNLOAD_ONTO_WATCH";

          break;
        case 485:
          v6 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 486:
          v6 = @"TAP_DOWNLOAD_NOW_WATCH";

          break;
        case 487:
          v6 = @"REVEAL_DETECTION_LIST";

          break;
        case 488:
          v6 = @"TAP_RECOMMENDATION";

          break;
        case 489:
          v6 = @"TAP_EXPAND";

          break;
        case 490:
          v6 = @"EXPAND_DETECTION_LIST";

          break;
        case 491:
          v6 = @"FIRST_PARTY_MAP_VIEW";

          break;
        case 492:
          v6 = @"SECOND_PARTY_MAP_VIEW";

          break;
        case 493:
          v6 = @"THIRD_PARTY_MAP_VIEW";

          break;
        case 494:
          v6 = @"DAEMON_PARTY_MAP_VIEW";

          break;
        case 495:
          v6 = @"MAPS_APP_DWELL_TIME_3_SEC";

          break;
        case 496:
          v6 = @"MAPS_APP_DWELL_TIME_30_SEC";

          break;
        case 497:
          v6 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

          break;
        case 498:
          v6 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

          break;
        case 499:
          v6 = @"DISPLAY_DOOM";

          break;
        case 500:
          v6 = @"TAP_DOOM";

          break;
        case 501:
          v6 = @"TAP_ROUTE_GENIUS";

          break;
        case 502:
          v6 = @"DISPLAY_ROUTE_GENIUS";

          break;
        case 503:
          v6 = @"TAP_WIDGET";

          break;
        case 504:
          v6 = @"ARRIVE_AT_DESTINATION";

          break;
        case 505:
          v6 = @"DISPLAY_WIDGET";

          break;
        case 506:
          v6 = @"CLEAR_HISTORY";

          break;
        case 507:
          v6 = @"TAP_SECTION";

          break;
        case 508:
          v6 = @"APPROVE_LOCATION";

          break;
        case 509:
          v6 = @"DISMISS_VISITED_PLACES_TIPKIT";

          break;
        case 510:
          v6 = @"DISPLAY_VISITED_PLACES_TIPKIT";

          break;
        case 511:
          v6 = @"MORE_OPTIONS";

          break;
        case 512:
          v6 = @"TAP_VISITED_PLACES_AVAILABLE";

          break;
        case 513:
          v6 = @"AUTO_REFRESH_SEARCH";

          break;
        case 514:
          v6 = @"REMOVE_VISIT";

          break;
        case 515:
          v6 = @"WRONG_LOCATION";

          break;
        case 516:
          v6 = @"CONFIRM";

          break;
        case 517:
          v6 = @"KEEP_HISTORY";

          break;
        case 518:
          v6 = @"DISPLAY_VISITED_PLACES_AVAILABLE";

          break;
        case 519:
          v6 = @"REMOVE";

          break;
        case 520:
          v6 = @"ALLOW";

          break;
        case 521:
          v6 = @"DONT_ALLOW";

          break;
        case 522:
          v6 = @"REMOVE_EVERY_VISIT";

          break;
        case 523:
          v6 = @"CONTINUE_VISITED_PLACES_TIPKIT";

          break;
        case 524:
          v6 = @"REMOVE_FROM_FAVORITE_GUIDE";

          break;
        case 525:
          v6 = @"ADD_TO_FAVORITE_GUIDE";

          break;
        case 526:
          v6 = @"FAMILIAR_ROUTE_DISPLAYED";

          break;
        case 527:
          v6 = @"FAMILIAR_ROUTE_NAV_STARTED";

          break;
        case 528:
          v6 = @"SELECT_AUDIO_VOLUME_LOUDER";

          break;
        case 529:
          v6 = @"SELECT_AUDIO_VOLUME_SOFTER";

          break;
        case 1001:
          v6 = @"PAN";

          break;
        case 1002:
          v6 = @"ZOOM_IN";

          break;
        case 1003:
          v6 = @"ZOOM_OUT";

          break;
        case 1004:
          v6 = @"ROTATE";

          break;
        case 1010:
          v6 = @"TAP_POI";

          break;
        case 1011:
          v6 = @"TAP_POI_TRANSIT";

          break;
        case 1017:
          v6 = @"TAP_POI_HIGHLIGHTED";

          break;
        case 1018:
          v6 = @"TAP_POI_CLUSTERED";

          break;
        case 1020:
          v6 = @"TAP_POI_DROPPED_PIN";

          break;
        case 1030:
          v6 = @"DROP_PIN";

          break;
        case 1031:
          v6 = @"TAP_INCIDENT";

          break;
        case 1032:
          v6 = @"TAP_TRANSIT_LINE";

          break;
        case 1033:
          v6 = @"TAP_POI_CALENDAR";

          break;
        case 1034:
          v6 = @"TAP_POI_CURRENT_LOCATION";

          break;
        case 1035:
          v6 = @"TAP_POI_TRANSIT_LINE";

          break;
        case 1036:
          v6 = @"TAP_POI_LANDMARK";

          break;
        case 1037:
          v6 = @"TAP_POI_FLYOVER";

          break;
        case 1038:
          v6 = @"TAP_TO_HIDE_TRAY";

          break;
        case 1039:
          v6 = @"TAP_TO_REVEAL_TRAY";

          break;
        case 1040:
          v6 = @"TAP_COMPASS";

          break;
        case 1041:
          v6 = @"PITCH_AWAY_FROM_GROUND";

          break;
        case 1042:
          v6 = @"PITCH_CLOSER_TO_GROUND";

          break;
        case 1043:
          v6 = @"ZOOM_IN_PINCH";

          break;
        case 1044:
          v6 = @"ZOOM_OUT_PINCH";

          break;
        case 1045:
          v6 = @"ZOOM_IN_DOUBLE_TAP";

          break;
        case 1046:
          v6 = @"ZOOM_OUT_TWO_FINGER_TAP";

          break;
        case 1047:
          v6 = @"ZOOM_IN_ONE_FINGER";

          break;
        case 1048:
          v6 = @"ZOOM_OUT_ONE_FINGER";

          break;
        case 1049:
          v6 = @"ZOOM_IN_BUTTON";

          break;
        case 1050:
          v6 = @"ZOOM_OUT_BUTTON";

          break;
        case 1051:
          v6 = @"TAP_TRAFFIC_CAMERA";

          break;
        case 1052:
          v6 = @"DISPLAY_INDOOR_MAP_BUTTON";

          break;
        case 1053:
          v6 = @"OPEN_INDOOR_MAP";

          break;
        case 1054:
          v6 = @"DISPLAY_VENUE_BROWSE_BUTTON";

          break;
        case 1055:
          v6 = @"TAP_VENUE_BROWSE_BUTTON";

          break;
        case 1056:
          v6 = @"ENTER_VENUE_EXPERIENCE";

          break;
        case 1057:
          v6 = @"EXIT_VENUE_EXPERIENCE";

          break;
        case 1058:
          v6 = @"ZOOM_IN_SCENE_PINCH";

          break;
        case 1059:
          v6 = @"ZOOM_OUT_SCENE_PINCH";

          break;
        case 1060:
          v6 = @"ZOOM_RESET";

          break;
        case 1061:
          v6 = @"TAP_SCENE_UNAVAILABLE_AREA";

          break;
        case 1062:
          v6 = @"TAP_TRANSIT_ACCESS_POINT";

          break;
        case 1063:
          v6 = @"TAP_SPEED_CAMERA";

          break;
        case 1064:
          v6 = @"TAP_RED_LIGHT_CAMERA";

          break;
        case 1065:
          v6 = @"TAP_GEO";

          break;
        default:
          if (action != 1500)
          {
            goto LABEL_200;
          }

          v6 = @"TAP_PLAY_SOUND";

          break;
      }
    }

    return v6;
  }

  if (action <= 9000)
  {
    if (action <= 6002)
    {
      if (action > 4001)
      {
        if (action <= 4004)
        {
          if (action == 4002)
          {
            v6 = @"TAP_HEADING_ON";
          }

          else if (action == 4003)
          {
            v6 = @"TAP_HEADING_OFF";
          }

          else
          {
            v6 = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(action)
          {
            case 5001:
              v6 = @"SHOW_MAPS_SETTINGS";

              return v6;
            case 5002:
              v6 = @"TAP_STANDARD_MODE";

              return v6;
            case 5003:
              v6 = @"TAP_TRANSIT_MODE";

              return v6;
            case 5004:
              v6 = @"TAP_SATELLITE_MODE";

              return v6;
            case 5005:
              v6 = @"SWITCH_ON_TRAFFIC";

              return v6;
            case 5006:
              v6 = @"SWITCH_OFF_TRAFFIC";

              return v6;
            case 5007:
              v6 = @"SWITCH_ON_LABELS";

              return v6;
            case 5008:
              v6 = @"SWITCH_OFF_LABELS";

              return v6;
            case 5009:
              v6 = @"SWITCH_ON_3D_MAP";

              return v6;
            case 5010:
              v6 = @"SWITCH_OFF_3D_MAP";

              return v6;
            case 5011:
              v6 = @"SWITCH_ON_WEATHER";

              return v6;
            case 5012:
              v6 = @"SWITCH_OFF_WEATHER";

              return v6;
            case 5013:
              v6 = @"REPORT_A_PROBLEM";

              return v6;
            case 5014:
              v6 = @"ADD_PLACE";

              return v6;
            case 5015:
              goto LABEL_200;
            case 5016:
              v6 = @"TAP_PREFERENCES";

              return v6;
            case 5017:
              v6 = @"SWITCH_ON_TOLLS";

              return v6;
            case 5018:
              v6 = @"SWITCH_OFF_TOLLS";

              return v6;
            case 5019:
              v6 = @"SWITCH_ON_HIGHWAYS";

              return v6;
            case 5020:
              v6 = @"SWITCH_OFF_HIGHWAYS";

              return v6;
            case 5021:
              v6 = @"SWITCH_ON_HEADING";

              return v6;
            case 5022:
              v6 = @"SWITCH_OFF_HEADING";

              return v6;
            case 5023:
              v6 = @"SWITCH_ON_SPEED_LIMIT";

              return v6;
            case 5024:
              v6 = @"SWITCH_OFF_SPEED_LIMIT";

              return v6;
            case 5025:
              v6 = @"ELECT_DRIVING_MODE";

              return v6;
            case 5026:
              v6 = @"ELECT_WALKING_MODE";

              return v6;
            case 5027:
              v6 = @"ELECT_TRANSIT_MODE";

              return v6;
            case 5028:
              v6 = @"ELECT_RIDESHARE_MODE";

              return v6;
            case 5029:
              v6 = @"SWITCH_ON_FIND_MY_CAR";

              return v6;
            case 5030:
              v6 = @"SWITCH_OFF_FIND_MY_CAR";

              return v6;
            case 5031:
              v6 = @"MARK_MY_LOCATION";

              return v6;
            case 5032:
              v6 = @"TAP_HYBRID_MODE";

              return v6;
            case 5033:
              v6 = @"CHECK_AVOID_BUSY_ROADS";

              return v6;
            case 5034:
              v6 = @"UNCHECK_AVOID_BUSY_ROADS";

              return v6;
            case 5035:
              v6 = @"CHECK_AVOID_HILLS";

              return v6;
            case 5036:
              v6 = @"UNCHECK_AVOID_HILLS";

              return v6;
            case 5037:
              v6 = @"CHECK_AVOID_STAIRS";

              return v6;
            case 5038:
              v6 = @"UNCHECK_AVOID_STAIRS";

              return v6;
            case 5039:
              v6 = @"ELECT_CYCLING_MODE";

              return v6;
            default:
              if (action == 4005)
              {
                v6 = @"PUCK_SNAP";
              }

              else
              {
                if (action != 4006)
                {
                  goto LABEL_200;
                }

                v6 = @"SELECT_FLOOR";
              }

              break;
          }
        }
      }

      else
      {
        switch(action)
        {
          case 3001:
            v6 = @"START_NAV";

            break;
          case 3002:
            v6 = @"END_NAV";

            break;
          case 3003:
            v6 = @"OPEN_NAV_AUDIO_SETTINGS";

            break;
          case 3004:
            v6 = @"VIEW_DETAILS";

            break;
          case 3005:
            v6 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

            break;
          case 3006:
            v6 = @"OPEN_ROUTING_EDITOR";

            break;
          case 3007:
            v6 = @"EDIT_ORIGIN";

            break;
          case 3008:
            v6 = @"EDIT_DESTINATION";

            break;
          case 3009:
            v6 = @"SWAP_ORIGIN_DESTINATION";

            break;
          case 3010:
            v6 = @"OPEN_MORE_ROUTES";

            break;
          case 3011:
            v6 = @"SELECT_ROUTING_TYPE_DRIVING";

            break;
          case 3012:
            v6 = @"SELECT_ROUTING_TYPE_WALKING";

            break;
          case 3013:
            v6 = @"SELECT_ROUTING_TYPE_TRANSIT";

            break;
          case 3014:
            v6 = @"SELECT_ROUTING_TYPE_RIDESHARE";

            break;
          case 3015:
            v6 = @"SELECT_ROUTE";

            break;
          case 3016:
            v6 = @"COLLAPSE_STEP_DETAILS_WALK";

            break;
          case 3017:
            v6 = @"EXPAND_STEP_DETAILS_WALK";

            break;
          case 3018:
            v6 = @"COLLAPSE_STEP_DETAILS_TRANSIT";

            break;
          case 3019:
            v6 = @"EXPAND_STEP_DETAILS_TRANSIT";

            break;
          case 3020:
            v6 = @"UNCHECK_BUS";

            break;
          case 3021:
            v6 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3022:
            v6 = @"UNCHECK_COMMUTER_RAIL";

            break;
          case 3023:
            v6 = @"UNCHECK_FERRY";

            break;
          case 3024:
            v6 = @"CHECK_BUS";

            break;
          case 3025:
            v6 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3026:
            v6 = @"CHECK_COMMUTER_RAIL";

            break;
          case 3027:
            v6 = @"CHECK_FERRY";

            break;
          case 3028:
            v6 = @"SELECT_LEAVE_AT";

            break;
          case 3029:
            v6 = @"SELECT_ARRIVE_BY";

            break;
          case 3030:
            v6 = @"SELECT_LEAVE_NOW";

            break;
          case 3031:
            v6 = @"SELECT_DATE_TIME";

            break;
          case 3032:
            v6 = @"SWITCH_ON_IC_FARES";

            break;
          case 3033:
            v6 = @"SWITCH_OFF_IC_FARES";

            break;
          case 3034:
            v6 = @"OPEN_ROUTE_OPTIONS_DATETIME";

            break;
          case 3035:
            v6 = @"OPEN_ROUTE_OPTIONS_TRANSIT";

            break;
          case 3036:
            v6 = @"OPEN_ROUTE_OPTIONS_DRIVING";

            break;
          case 3037:
            v6 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

            break;
          case 3038:
            v6 = @"REVEAL_FROM_ROUTING";

            break;
          case 3039:
            v6 = @"DISPLAY_ROUTES";

            break;
          case 3040:
            v6 = @"CHECK_RECOMMENDED_ROUTES";

            break;
          case 3041:
            v6 = @"UNCHECK_RECOMMENDED_ROUTES";

            break;
          case 3042:
            v6 = @"CHECK_FASTER_TRIPS";

            break;
          case 3043:
            v6 = @"UNCHECK_FASTER_TRIPS";

            break;
          case 3044:
            v6 = @"CHECK_FEWER_TRANSFERS";

            break;
          case 3045:
            v6 = @"UNCHECK_FEWER_TRANSFERS";

            break;
          case 3046:
            v6 = @"CHECK_LESS_WALKING";

            break;
          case 3047:
            v6 = @"UNCHECK_LESS_WALKING";

            break;
          case 3048:
            v6 = @"OPEN_ROUTE_OPTIONS_CYCLING";

            break;
          case 3049:
            v6 = @"TAP_MORE_ROUTES";

            break;
          case 3050:
            v6 = @"OPEN_NAV_OVERVIEW";

            break;
          case 3051:
            v6 = @"RESUME_NAV_MANEUVER_VIEW";

            break;
          case 3052:
            v6 = @"SELECT_AUDIO_VOLUME_SILENT";

            break;
          case 3053:
            v6 = @"SELECT_AUDIO_VOLUME_LOW";

            break;
          case 3054:
            v6 = @"SELECT_AUDIO_VOLUME_NORMAL";

            break;
          case 3055:
            v6 = @"SELECT_AUDIO_VOLUME_LOUD";

            break;
          case 3056:
            v6 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

            break;
          case 3057:
            v6 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

            break;
          case 3058:
            v6 = @"RESUME_PREV_NAV";

            break;
          case 3059:
            v6 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

            break;
          case 3060:
            v6 = @"ACCEPT_REROUTE";

            break;
          case 3061:
            v6 = @"DISMISS_REROUTE";

            break;
          case 3062:
            v6 = @"ATTEMPT_END_NAV";

            break;
          case 3063:
            v6 = @"DISPLAY_BANNER";

            break;
          case 3064:
            v6 = @"VIEW_BANNER_DETAILS";

            break;
          case 3065:
            v6 = @"ENTER_GUIDANCE";

            break;
          case 3066:
            v6 = @"AUTO_ADVANCE_GUIDANCE";

            break;
          case 3067:
            v6 = @"TAP_OPEN_WALLET";

            break;
          case 3068:
            v6 = @"SELECT_VOICE_GUIDANCE_ALL";

            break;
          case 3069:
            v6 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

            break;
          case 3070:
            v6 = @"SELECT_VOICE_GUIDANCE_NONE";

            break;
          case 3071:
            v6 = @"DISPLAY_CARD";

            break;
          case 3072:
            v6 = @"RENDER_ROUTE";

            break;
          case 3073:
            v6 = @"DISPLAY_JUNCTION_VIEW";

            break;
          case 3074:
            v6 = @"SELECT_DEPARTURE";

            break;
          case 3075:
            v6 = @"DISPLAY_AR_VIEW_RAISE_BANNER";

            break;
          case 3076:
            v6 = @"DEVICE_RAISE";

            break;
          case 3077:
            v6 = @"ENTER_AR_NAV_VIEW";

            break;
          case 3078:
            v6 = @"EXIT_AR_NAV_VIEW";

            break;
          case 3079:
            v6 = @"AR_CALIBRATION_START";

            break;
          case 3080:
            v6 = @"AR_CALIBRATION_FAILURE";

            break;
          case 3081:
            v6 = @"AR_CALIBRATION_SUCCESS";

            break;
          case 3082:
            v6 = @"DISPLAY_AR_NAV_ARROW";

            break;
          case 3083:
            v6 = @"DISPLAY_AR_NAV_TURN_AROUND";

            break;
          case 3084:
            v6 = @"DISPLAY_GO_OUTSIDE_BANNER";

            break;
          case 3085:
            v6 = @"DISPLAY_AR_DARKNESS_MESSAGE";

            break;
          case 3086:
            v6 = @"DISPLAY_AR_NAV_ENDPOINT";

            break;
          case 3087:
            v6 = @"DISPLAY_ADVISORY_BANNER";

            break;
          case 3088:
            v6 = @"TAP_SHOW_ADVISORY_DETAILS";

            break;
          default:
            if (action != 4001)
            {
              goto LABEL_200;
            }

            v6 = @"RECENTER_CURRENT_LOCATION";

            break;
        }
      }
    }

    else if (action > 7000)
    {
      if (action > 8000)
      {
        if (action <= 8005)
        {
          if (action <= 8002)
          {
            if (action == 8001)
            {
              v6 = @"INVOKE_SIRI_SNIPPET";
            }

            else
            {
              v6 = @"INVOKE_SIRI_DISAMBIGUATION";
            }
          }

          else if (action == 8003)
          {
            v6 = @"SHOW_PLACE_DETAILS";
          }

          else if (action == 8004)
          {
            v6 = @"ANSWER_REROUTE_SUGGESTION";
          }

          else
          {
            v6 = @"SUGGEST_NAV_REROUTE";
          }
        }

        else if (action > 8008)
        {
          switch(action)
          {
            case 0x1F49:
              v6 = @"INVOKE_SIRI";

              break;
            case 0x1F4A:
              v6 = @"DISPLAY_SIRI_ERROR_MESSAGE";

              break;
            case 0x1F4B:
              v6 = @"DISPLAY_NO_RESULTS_MESSAGE";

              break;
            default:
              goto LABEL_200;
          }
        }

        else if (action == 8006)
        {
          v6 = @"GET_NAV_STATUS";
        }

        else if (action == 8007)
        {
          v6 = @"REPEAT_NAV_STATUS";
        }

        else
        {
          v6 = @"SELECT_AUDIO_VOLUME_UNMUTE";
        }
      }

      else
      {
        switch(action)
        {
          case 7001:
            v6 = @"EXPAND_TRANSIT_SYSTEM";

            break;
          case 7002:
            v6 = @"COLLAPSE_TRANSIT_SYSTEM";

            break;
          case 7003:
            v6 = @"SHOW_MORE_DEPARTURES";

            break;
          case 7004:
            v6 = @"VIEW_TRANSIT_LINE";

            break;
          case 7005:
            v6 = @"CANCEL_VIEW_TRANSIT_LINE";

            break;
          case 7006:
            v6 = @"TAP_TRANSIT_ATTRIBUTION";

            break;
          case 7007:
            v6 = @"TAP_TRANSIT_ADVISORY";

            break;
          case 7008:
            v6 = @"MORE_DETAILS_TRANSIT_ADVISORY";

            break;
          case 7009:
            v6 = @"SUBSCRIBE_LINE_INCIDENT";

            break;
          case 7010:
            v6 = @"UNSUBSCRIBE_LINE_INCIDENT";

            break;
          case 7011:
            v6 = @"TAP_NEAREST_STATION";

            break;
          case 7012:
            v6 = @"TAP_NEAREST_STOP";

            break;
          case 7013:
            v6 = @"TAP_CONNECTION";

            break;
          case 7014:
            v6 = @"GET_TICKETS";

            break;
          case 7015:
            v6 = @"OPEN_SCHEDULECARD_DATETIME";

            break;
          case 7016:
            v6 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

            break;
          case 7017:
            v6 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

            break;
          case 7018:
            v6 = @"VIEW_ON_MAP";

            break;
          case 7019:
            v6 = @"FORCE_UPDATE_DEPARTURE_INFO";

            break;
          case 7020:
            v6 = @"TAP_TRANSIT_LINE_INFO";

            break;
          case 7021:
            v6 = @"TAP_ATTRIBUTION_CELL";

            break;
          case 7022:
            v6 = @"TAP_NEXT_DEPARTURES";

            break;
          case 7023:
            v6 = @"VIEW_BANNER";

            break;
          case 7024:
            v6 = @"GET_SHOWTIMES";

            break;
          case 7025:
            v6 = @"MAKE_APPOINTMENT";

            break;
          case 7026:
            v6 = @"RESERVE_PARKING";

            break;
          case 7027:
            v6 = @"RESERVE_ROOM";

            break;
          case 7028:
            v6 = @"WAITLIST";

            break;
          case 7029:
            v6 = @"ORDER_TAKEOUT";

            break;
          case 7030:
            v6 = @"RESERVE";

            break;
          default:
            goto LABEL_200;
        }
      }
    }

    else
    {
      switch(action)
      {
        case 6003:
          v6 = @"GET_DIRECTIONS";

          break;
        case 6004:
          v6 = @"TAP_FLYOVER_TOUR";

          break;
        case 6005:
          v6 = @"REMOVE_PIN";

          break;
        case 6006:
          v6 = @"TAP_PHOTO";

          break;
        case 6007:
          v6 = @"TAP_MAPS_VIEW";

          break;
        case 6008:
          v6 = @"TAP_ADDRESS";

          break;
        case 6009:
          v6 = @"CALL";

          break;
        case 6010:
          v6 = @"TAP_URL";

          break;
        case 6011:
          v6 = @"SHOW_TODAY_HOURS";

          break;
        case 6012:
          v6 = @"SHOW_ALL_HOURS";

          break;
        case 6013:
          v6 = @"SHARE";

          break;
        case 6015:
          v6 = @"ADD_TO_FAVORITES";

          break;
        case 6016:
          v6 = @"ADD_CONTACT";

          break;
        case 6018:
          v6 = @"PUNCH_OUT_PHOTO";

          break;
        case 6019:
          v6 = @"PUNCH_OUT_USEFUL_TO_KNOW";

          break;
        case 6020:
          v6 = @"PUNCH_OUT_OPEN_APP";

          break;
        case 6021:
          v6 = @"PUNCH_OUT_SINGLE_REVIEW";

          break;
        case 6022:
          v6 = @"PUNCH_OUT_CHECK_IN";

          break;
        case 6023:
          v6 = @"PUNCH_OUT_MORE_INFO";

          break;
        case 6024:
          v6 = @"PUNCH_OUT_WRITE_REVIEW";

          break;
        case 6025:
          v6 = @"PUNCH_OUT_ADD_PHOTO";

          break;
        case 6026:
          v6 = @"TAP_GRID_VIEW";

          break;
        case 6027:
          v6 = @"EDIT_LOCATION";

          break;
        case 6029:
          v6 = @"ADD_PHOTO";

          break;
        case 6031:
          v6 = @"RETAKE";

          break;
        case 6032:
          v6 = @"ADD_NOTE";

          break;
        case 6033:
          v6 = @"REMOVE_CAR";

          break;
        case 6034:
          v6 = @"EDIT_NAME";

          break;
        case 6036:
          v6 = @"RESERVE_TABLE";

          break;
        case 6037:
          v6 = @"ADD_TO_QUEUE";

          break;
        case 6038:
          v6 = @"VIEW_BOOKED_TABLE";

          break;
        case 6039:
          v6 = @"VIEW_QUEUED_TABLE";

          break;
        case 6040:
          v6 = @"PUNCH_OUT_THIRD_PARTY_APP";

          break;
        case 6041:
          v6 = @"PUNCH_OUT_LEGAL_LINK";

          break;
        case 6042:
          v6 = @"TAP_PLACECARD_HEADER";

          break;
        case 6043:
          v6 = @"REMOVE_FROM_FAVORITES";

          break;
        case 6044:
          v6 = @"VIEW_CONTACT";

          break;
        case 6045:
          v6 = @"CHAT";

          break;
        case 6046:
          v6 = @"FIND_STORES";

          break;
        case 6047:
          v6 = @"TAP_PARENT";

          break;
        case 6048:
          v6 = @"SCROLL_LEFT_PHOTOS";

          break;
        case 6049:
          v6 = @"SCROLL_RIGHT_PHOTOS";

          break;
        case 6050:
          v6 = @"PUNCH_OUT";

          break;
        case 6051:
          v6 = @"TAP_ENTER_MUNIN";

          break;
        case 6052:
          v6 = @"TAP_RECOMMENDED_DISHES_PHOTO";

          break;
        case 6053:
          v6 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

          break;
        case 6054:
          v6 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

          break;
        case 6055:
          v6 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6056:
          v6 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6057:
          v6 = @"SHOW_LINKED_SERVICE_HOURS";

          break;
        case 6058:
          v6 = @"ENTER_LOOK_AROUND";

          break;
        case 6059:
          v6 = @"EXIT_LOOK_AROUND";

          break;
        case 6060:
          v6 = @"TAP_ENTER_LOOK_AROUND_VIEW";

          break;
        case 6061:
          v6 = @"TAP_ENTER_LOOK_AROUND_PIP";

          break;
        case 6062:
          v6 = @"EXPAND_LOOK_AROUND_VIEW";

          break;
        case 6063:
          v6 = @"CLOSE_LOOK_AROUND";

          break;
        case 6064:
          v6 = @"COLLAPSE_LOOK_AROUND_VIEW";

          break;
        case 6065:
          v6 = @"TAP_SHOW_ACTIONS";

          break;
        case 6066:
          v6 = @"TAP_HIDE_LABELS";

          break;
        case 6067:
          v6 = @"TAP_SHOW_LABELS";

          break;
        case 6068:
          v6 = @"TAP_SHOW_DETAILS";

          break;
        case 6069:
          v6 = @"PAN_LOOK_AROUND";

          break;
        case 6070:
          v6 = @"TAP_LOOK_AROUND_THUMBNAIL";

          break;
        case 6071:
          v6 = @"TAP_LANDMARK";

          break;
        case 6072:
          v6 = @"TAP_SCENE";

          break;
        case 6073:
          v6 = @"SHOW_LINKED_BUSINESS_HOURS";

          break;
        case 6074:
          v6 = @"TAP_PLACECARD_SHORTCUT";

          break;
        case 6075:
          v6 = @"SHOW_ALL_LOCATIONS_INSIDE";

          break;
        case 6076:
          v6 = @"SHOW_ALL_SIMILAR_LOCATIONS";

          break;
        case 6077:
          v6 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

          break;
        case 6078:
          v6 = @"TAP_PARENT_LOCATION";

          break;
        case 6079:
          v6 = @"TAP_SIMILAR_LOCATION";

          break;
        case 6080:
          v6 = @"TAP_LOCATION_INSIDE";

          break;
        case 6081:
          v6 = @"TAP_LOCATION_AT_ADDRESS";

          break;
        case 6082:
          v6 = @"CLOSE_ROUTE_GENIUS";

          break;
        case 6083:
          v6 = @"LOAD_WEB_CONTENT";

          break;
        case 6084:
          v6 = @"SCROLL_FORWARD_WEB_CONTENT";

          break;
        case 6085:
          v6 = @"SCROLL_BACKWARD_WEB_CONTENT";

          break;
        case 6086:
          v6 = @"TAP_WEB_CONTENT";

          break;
        case 6087:
          v6 = @"SHOW_PHOTO_VIEWER";

          break;
        case 6088:
          v6 = @"SHOW_LAST_PAGE";

          break;
        case 6089:
          v6 = @"TAP_VIEW_APP";

          break;
        case 6090:
          v6 = @"TAP_APP_CLIP";

          break;
        case 6091:
          v6 = @"DEAD_BATTERY";

          break;
        case 6092:
          v6 = @"DISMISS_LOW_BATTERY_ALERT";

          break;
        case 6093:
          v6 = @"DISMISS_OUT_OF_RANGE_ALERT";

          break;
        case 6094:
          v6 = @"FAILED_TO_LOAD_EV_STATUS";

          break;
        case 6095:
          v6 = @"LOW_BATTERY_ALERT";

          break;
        case 6096:
          v6 = @"PAUSE_ROUTE";

          break;
        case 6097:
          v6 = @"TAP_ADD_STOP";

          break;
        case 6098:
          v6 = @"TAP_CHARGE_POINT";

          break;
        case 6099:
          v6 = @"TAP_OUT_OF_RANGE_ALERT";

          break;
        case 6100:
          v6 = @"SCROLL_DOWN_PHOTOS";

          break;
        case 6101:
          v6 = @"SCROLL_UP_PHOTOS";

          break;
        case 6102:
          v6 = @"TAP_MORE_PHOTOS";

          break;
        case 6103:
          v6 = @"TAP_TO_CONFIRM_INCIDENT";

          break;
        case 6104:
          v6 = @"SHOW_INCIDENT";

          break;
        case 6105:
          v6 = @"REVEAL_APP_CLIP";

          break;
        case 6106:
          v6 = @"ORDER_DELIVERY";

          break;
        case 6107:
          v6 = @"VIEW_MENU";

          break;
        case 6108:
          v6 = @"TAP_EDIT_STOPS";

          break;
        case 6109:
          v6 = @"LEARN_MORE_WEB_CONTENT";

          break;
        case 6110:
          v6 = @"MAKE_APPOINTMENT_WEB_CONTENT";

          break;
        case 6111:
          v6 = @"REVEAL_SHOWCASE";

          break;
        case 6112:
          v6 = @"TAP_ACTION_BAR";

          break;
        default:
          goto LABEL_200;
      }
    }
  }

  else
  {
    if (action <= 12000)
    {
      switch(action)
      {
        case 10101:
          v6 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

          break;
        case 10102:
          v6 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

          break;
        case 10103:
          v6 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

          break;
        case 10104:
          v6 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

          break;
        case 10105:
          v6 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

          break;
        case 10106:
          v6 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

          break;
        case 10107:
          v6 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

          break;
        case 10108:
          v6 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

          break;
        case 10109:
          v6 = @"RAP_CANCEL";

          break;
        case 10110:
          v6 = @"RAP_NEXT";

          break;
        case 10111:
          v6 = @"RAP_BACK";

          break;
        case 10112:
          v6 = @"RAP_SEND";

          break;
        case 10113:
          v6 = @"RAP_SKIP";

          break;
        case 10114:
          v6 = @"RAP_SHOW_MORE";

          break;
        case 10115:
          v6 = @"RAP_ADD_PHOTO";

          break;
        case 10116:
          v6 = @"RAP_MAP_INCORRECT";

          break;
        case 10117:
          v6 = @"RAP_BAD_DIRECTIONS";

          break;
        case 10118:
          v6 = @"RAP_TRANSIT_INFO_INCORRECT";

          break;
        case 10119:
          v6 = @"RAP_SATELLITE_IMAGE_PROBLEM";

          break;
        case 10120:
          v6 = @"RAP_SEARCH_RESULTS_INCORRECT";

          break;
        case 10121:
          v6 = @"RAP_ADD_A_PLACE";

          break;
        case 10122:
          v6 = @"RAP_HOME";

          break;
        case 10123:
          v6 = @"RAP_WORK";

          break;
        case 10124:
          v6 = @"RAP_OTHER";

          break;
        case 10125:
          v6 = @"RAP_LOCATION";

          break;
        case 10126:
          v6 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

          break;
        case 10127:
          v6 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

          break;
        case 10128:
          v6 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

          break;
        case 10129:
          v6 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

          break;
        case 10130:
          v6 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

          break;
        case 10131:
          v6 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

          break;
        case 10132:
          v6 = @"RAP_TRANSIT_DELAY";

          break;
        case 10133:
          v6 = @"RAP_LOCATION_CLOSED";

          break;
        case 10134:
          v6 = @"RAP_CLOSED_PERMANENTLY";

          break;
        case 10135:
          v6 = @"RAP_CLOSED_TEMPORARILY";

          break;
        case 10136:
          v6 = @"RAP_HOURS_HAVE_CHANGED";

          break;
        case 10137:
          v6 = @"RAP_SELECT_STATION";

          break;
        case 10138:
          v6 = @"RAP_SELECT_LINE";

          break;
        case 10139:
          v6 = @"RAP_SELECT_ACCESS_POINT";

          break;
        case 10140:
          v6 = @"RAP_SELECT_SEARCH";

          break;
        case 10141:
          v6 = @"RAP_PAN_MAP";

          break;
        case 10142:
          v6 = @"RAP_CENTER_MAP_ON_USER";

          break;
        case 10143:
          v6 = @"RAP_SEARCH_UNEXPECTED";

          break;
        case 10144:
          v6 = @"RAP_ADD_POI";

          break;
        case 10145:
          v6 = @"RAP_ADD_STREET_ADDRESS";

          break;
        case 10146:
          v6 = @"RAP_ADD_OTHER";

          break;
        case 10147:
          v6 = @"RAP_SELECT_CATEGORY";

          break;
        case 10148:
          v6 = @"RAP_TAKE_PHOTO";

          break;
        case 10149:
          v6 = @"RAP_RETAKE_PHOTO";

          break;
        case 10150:
          v6 = @"RAP_PLACE_DETAILS";

          break;
        case 10151:
          v6 = @"RAP_SATELLITE_IMAGE_OUTDATED";

          break;
        case 10152:
          v6 = @"RAP_SATELLITE_IMAGE_QUALITY";

          break;
        case 10153:
          v6 = @"RAP_SELECT_LABEL";

          break;
        case 10154:
          v6 = @"RAP_SELECT_ROUTE";

          break;
        case 10155:
          v6 = @"RAP_CLAIM_BUSINESS";

          break;
        case 10156:
          v6 = @"RAP_BRAND_DETAILS";

          break;
        case 10157:
          v6 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

          break;
        case 10158:
          v6 = @"RAP_LOOK_AROUND_LABELS_STREET";

          break;
        case 10159:
          v6 = @"RAP_LOOK_AROUND_BLURRING";

          break;
        case 10160:
          v6 = @"RAP_LOOK_AROUND_REMOVE_HOME";

          break;
        case 10161:
          v6 = @"RAP_LOOK_AROUND_LABELS_STORE";

          break;
        case 10162:
          v6 = @"RAP_LOOK_AROUND_PRIVACY";

          break;
        case 10163:
          v6 = @"RAP_INCORRECT_HOURS";

          break;
        case 10164:
          v6 = @"RAP_INCORRECT_ADDRESS";

          break;
        case 10165:
          v6 = @"RAP_EDIT_PLACE_DETAILS";

          break;
        case 10166:
          v6 = @"RAP_EDIT_PLACE_NAME";

          break;
        case 10167:
          v6 = @"RAP_EDIT_ADDRESS";

          break;
        case 10168:
          v6 = @"RAP_ADD_CATEGORY";

          break;
        case 10169:
          v6 = @"RAP_REMOVE_CATEGORY";

          break;
        case 10170:
          v6 = @"RAP_DESELECT_CATEGORY";

          break;
        case 10171:
          v6 = @"RAP_ADD_HOURS";

          break;
        case 10172:
          v6 = @"RAP_REMOVE_HOURS";

          break;
        case 10173:
          v6 = @"RAP_TAP_DAY_OF_WEEK";

          break;
        case 10174:
          v6 = @"RAP_TAP_24_HOURS_BUTTON";

          break;
        case 10175:
          v6 = @"RAP_TAP_OPEN_TIME";

          break;
        case 10176:
          v6 = @"RAP_TAP_CLOSED_TIME";

          break;
        case 10177:
          v6 = @"RAP_TAP_TEMPORARY_CLOSURE";

          break;
        case 10178:
          v6 = @"RAP_TAP_PERMANENTLY_CLOSED";

          break;
        case 10179:
          v6 = @"RAP_EDIT_WEBSITE";

          break;
        case 10180:
          v6 = @"RAP_EDIT_PHONE_NUMBER";

          break;
        case 10181:
          v6 = @"RAP_TAP_ACCEPTS_APPLE_PAY";

          break;
        case 10182:
          v6 = @"RAP_ADD_COMMENTS";

          break;
        case 10183:
          v6 = @"RAP_EDIT_LOCATION";

          break;
        case 10184:
          v6 = @"RAP_VIEW_LOCATION";

          break;
        case 10185:
          v6 = @"RAP_ZOOM_IN";

          break;
        case 10186:
          v6 = @"RAP_ZOOM_OUT";

          break;
        case 10187:
          v6 = @"RAP_VIEW_ENTRY_POINTS";

          break;
        case 10188:
          v6 = @"RAP_EDIT_EXISTING_ENTRY_POINT";

          break;
        case 10189:
          v6 = @"RAP_ADD_NEW_ENTRY_POINT";

          break;
        case 10190:
          v6 = @"RAP_REMOVE_ENTRY_POINT";

          break;
        case 10191:
          v6 = @"RAP_SELECT_ENTRY_POINT_TYPE";

          break;
        default:
          switch(action)
          {
            case 9001:
              v6 = @"TAP_WIDGET_ITEM";

              break;
            case 9002:
              v6 = @"DISPLAY_NOTIFICATION";

              break;
            case 9003:
              v6 = @"TAP_NOTIFICATION";

              break;
            case 9004:
              v6 = @"EXPAND_NOTIFICATION";

              break;
            case 9005:
              v6 = @"DISMISS_NOTIFICATION";

              break;
            case 9006:
              v6 = @"OPEN_SEARCH";

              break;
            case 9007:
              v6 = @"OPEN_PAN_VIEW";

              break;
            case 9008:
              v6 = @"PAN_LEFT";

              break;
            case 9009:
              v6 = @"PAN_UP";

              break;
            case 9010:
            case 9041:
            case 9042:
            case 9043:
            case 9044:
            case 9045:
            case 9046:
            case 9047:
            case 9048:
            case 9049:
            case 9050:
            case 9051:
            case 9052:
            case 9053:
            case 9054:
            case 9055:
            case 9056:
            case 9057:
            case 9058:
            case 9059:
            case 9060:
            case 9061:
            case 9062:
            case 9063:
            case 9064:
            case 9065:
            case 9066:
            case 9067:
            case 9068:
            case 9069:
            case 9070:
            case 9071:
            case 9072:
            case 9073:
            case 9074:
            case 9075:
            case 9076:
            case 9077:
            case 9078:
            case 9079:
            case 9080:
            case 9081:
            case 9082:
            case 9083:
            case 9084:
            case 9085:
            case 9086:
            case 9087:
            case 9088:
            case 9089:
            case 9090:
            case 9091:
            case 9092:
            case 9093:
            case 9094:
            case 9095:
            case 9096:
            case 9097:
            case 9098:
            case 9099:
            case 9100:
              goto LABEL_200;
            case 9011:
              v6 = @"PAN_DOWN";

              break;
            case 9012:
              v6 = @"TAP_RECENT_DESTINATIONS";

              break;
            case 9013:
              v6 = @"OPEN_DESTINATIONS";

              break;
            case 9014:
              v6 = @"OPEN_FAVORITES";

              break;
            case 9015:
              v6 = @"VIEW_NAV_OPTIONS";

              break;
            case 9016:
              v6 = @"START_NAV_NO_GUIDANCE";

              break;
            case 9017:
              v6 = @"TURN_OFF_GUIDANCE";

              break;
            case 9018:
              v6 = @"TURN_ON_GUIDANCE";

              break;
            case 9019:
              v6 = @"OPEN_KEYBOARD";

              break;
            case 9020:
              v6 = @"SHARE_DESTINATION";

              break;
            case 9021:
              v6 = @"START_NAV_AUTOMATED";

              break;
            case 9022:
              v6 = @"SHARE_ETA";

              break;
            case 9023:
              v6 = @"SELECT_GROUP";

              break;
            case 9024:
              v6 = @"DESELECT_GROUP";

              break;
            case 9025:
              v6 = @"SELECT_CONTACT";

              break;
            case 9026:
              v6 = @"DESELECT_CONTACT";

              break;
            case 9027:
              v6 = @"TAP_VIEW_CONTACTS";

              break;
            case 9028:
              v6 = @"STOP_RECEIVING_ETA";

              break;
            case 9029:
              v6 = @"DISPLAY_ANNOUNCEMENT";

              break;
            case 9030:
              v6 = @"TAP_ANNOUNCEMENT";

              break;
            case 9031:
              v6 = @"DISPLAY_CYCLING_NOTIFICATION";

              break;
            case 9032:
              v6 = @"TAP_CYCLING_NOTIFICATION";

              break;
            case 9033:
              v6 = @"SHARE_CYCLING_ETA";

              break;
            case 9034:
              v6 = @"MANAGE_NOTIFICATIONS";

              break;
            case 9035:
              v6 = @"PUNCH_OUT_PUBLISHER_REVIEW";

              break;
            case 9036:
              v6 = @"SCROLL_FORWARD";

              break;
            case 9037:
              v6 = @"SCROLL_BACKWARD";

              break;
            case 9038:
              v6 = @"SHOW_ALL_CURATED_COLLECTIONS";

              break;
            case 9039:
              v6 = @"TAP_LESS";

              break;
            case 9040:
              v6 = @"TAP_MORE";

              break;
            case 9101:
              v6 = @"DISPLAY_ADD_HOME_AND_WORK";

              break;
            case 9102:
              v6 = @"TAP_ADD_HOME_AND_WORK";

              break;
            case 9103:
              v6 = @"DISPLAY_ALLOW_FREQUENTS";

              break;
            case 9104:
              v6 = @"TAP_ALLOW_FREQUENTS";

              break;
            case 9105:
              v6 = @"DISPLAY_ALLOW_LOCATION";

              break;
            case 9106:
              v6 = @"TAP_ALLOW_LOCATION";

              break;
            default:
              switch(action)
              {
                case 11001:
                  v6 = @"EXIT_MAPS_LOWER_WRIST";

                  break;
                case 11002:
                  v6 = @"TASK_READY";

                  break;
                case 11003:
                  v6 = @"TAP_SEARCH";

                  break;
                case 11004:
                  v6 = @"TAP_MY_LOCATION";

                  break;
                case 11005:
                  v6 = @"SHOW_NEARBY";

                  break;
                case 11006:
                  v6 = @"TAP_NEARBY";

                  break;
                case 11007:
                  v6 = @"TAP_PROACTIVE";

                  break;
                case 11008:
                  v6 = @"FORCE_PRESS";

                  break;
                case 11009:
                  v6 = @"TAP_CONTACTS";

                  break;
                case 11010:
                  v6 = @"TAP_TRANSIT";

                  break;
                case 11011:
                  v6 = @"TAP_DICTATION";

                  break;
                case 11012:
                  v6 = @"GET_DIRECTIONS_DRIVING";

                  break;
                case 11013:
                  v6 = @"GET_DIRECTIONS_WALKING";

                  break;
                case 11014:
                  v6 = @"GET_DIRECTIONS_TRANSIT";

                  break;
                case 11015:
                  v6 = @"OPEN_STANDARD_MAP";

                  break;
                case 11016:
                  v6 = @"OPEN_TRANSIT_MAP";

                  break;
                case 11017:
                  v6 = @"START_NAV_AUTO";

                  break;
                case 11018:
                  v6 = @"TAP_RECENT";

                  break;
                case 11019:
                  v6 = @"TAP_FAVORITE";

                  break;
                case 11020:
                  v6 = @"TAP_SCRIBBLE";

                  break;
                case 11021:
                  v6 = @"TAP_VIEW_MAP";

                  break;
                case 11022:
                  v6 = @"TAP_VIEW_TBT";

                  break;
                case 11023:
                  v6 = @"VIEW_ROUTE_INFO";

                  break;
                case 11024:
                  v6 = @"NAV_UNMUTE";

                  break;
                case 11025:
                  v6 = @"NAV_MUTE";

                  break;
                case 11026:
                  v6 = @"GET_DIRECTIONS_CYCLING";

                  break;
                case 11027:
                  v6 = @"TAP_SEARCH_HOME";

                  break;
                case 11028:
                  v6 = @"ROUTE_PAUSED_ON_WATCH";

                  break;
                case 11029:
                  v6 = @"NEXT_STOP_TAPPED_ON_WATCH";

                  break;
                default:
                  goto LABEL_200;
              }

              break;
          }

          break;
      }

      return v6;
    }

    if (action > 16000)
    {
      switch(action)
      {
        case 17001:
          v6 = @"START_DRAG";

          break;
        case 17002:
          v6 = @"CANCEL_DRAG";

          break;
        case 17003:
          v6 = @"COMPLETE_DRAG";

          break;
        case 17004:
          v6 = @"START_DROP";

          break;
        case 17005:
          v6 = @"CANCEL_DROP";

          break;
        case 17006:
          v6 = @"COMPLETE_DROP";

          break;
        case 17007:
          v6 = @"ANNOTATION_SELECT";

          break;
        case 17008:
          v6 = @"ANNOTATION_SELECT_AUTO";

          break;
        case 17009:
          v6 = @"ANNOTATION_SELECT_LIST";

          break;
        case 17010:
          v6 = @"BROWSE_TOP_CATEGORY_DISPLAYED";

          break;
        case 17011:
          v6 = @"CALLOUT_FLYOVER_TOUR";

          break;
        case 17012:
          v6 = @"CALLOUT_INFO";

          break;
        case 17013:
          v6 = @"CALLOUT_NAV_TRANSIT";

          break;
        case 17014:
          v6 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

          break;
        case 17015:
          v6 = @"CALLOUT_VIEW_TRANSIT_LINE";

          break;
        case 17016:
          v6 = @"DIRECTIONS_SELECT";

          break;
        case 17017:
          v6 = @"DIRECTIONS_TRANSIT_CUSTOM";

          break;
        case 17018:
          v6 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

          break;
        case 17019:
          v6 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

          break;
        case 17020:
          v6 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

          break;
        case 17021:
          v6 = @"DIRECTIONS_TRANSIT_LATER";

          break;
        case 17022:
          v6 = @"DIRECTIONS_TRANSIT_NOW";

          break;
        case 17023:
          v6 = @"FLYOVER_NOTIFICATION_DISMISS";

          break;
        case 17024:
          v6 = @"FLYOVER_NOTIFICATION_START";

          break;
        case 17025:
          v6 = @"FLYOVER_TOUR_COMPLETED";

          break;
        case 17026:
          v6 = @"FLYOVER_TOUR_END";

          break;
        case 17027:
          v6 = @"FLYOVER_TOUR_NOTIFICATION";

          break;
        case 17028:
          v6 = @"FLYOVER_TOUR_START";

          break;
        case 17029:
          v6 = @"INFO_BOOKMARKS";

          break;
        case 17030:
          v6 = @"INFO_CARD_DETACHED";

          break;
        case 17031:
          v6 = @"INFO_CONTACTS";

          break;
        case 17032:
          v6 = @"INFO_DIRECTIONS";

          break;
        case 17033:
          v6 = @"INFO_DIRECTIONS_FROM";

          break;
        case 17034:
          v6 = @"INFO_DIRECTIONS_TO";

          break;
        case 17035:
          v6 = @"INFO_DISMISS";

          break;
        case 17036:
          v6 = @"INFO_INFO";

          break;
        case 17037:
          v6 = @"INFO_PHOTOS";

          break;
        case 17038:
          v6 = @"INFO_REVIEWS";

          break;
        case 17039:
          v6 = @"INFO_SHARE";

          break;
        case 17040:
          v6 = @"INFO_SHARE_AIRDROP";

          break;
        case 17041:
          v6 = @"INFO_SHARE_FACEBOOK";

          break;
        case 17042:
          v6 = @"INFO_SHARE_MAIL";

          break;
        case 17043:
          v6 = @"INFO_SHARE_MESSAGE";

          break;
        case 17044:
          v6 = @"INFO_SHARE_TENCENTWEIBO";

          break;
        case 17045:
          v6 = @"INFO_SHARE_WEIBO";

          break;
        case 17046:
          v6 = @"INFO_YELP";

          break;
        case 17047:
          v6 = @"MAPS_APP_LAUNCH";

          break;
        case 17048:
          v6 = @"MAP_3D_OFF";

          break;
        case 17049:
          v6 = @"MAP_3D_ON";

          break;
        case 17050:
          v6 = @"MAP_OPTIONS_DROP_PIN";

          break;
        case 17051:
          v6 = @"MAP_OPTIONS_HYBRID";

          break;
        case 17052:
          v6 = @"MAP_OPTIONS_PRINT";

          break;
        case 17053:
          v6 = @"MAP_OPTIONS_REMOVE_PIN";

          break;
        case 17054:
          v6 = @"MAP_OPTIONS_SATELLITE";

          break;
        case 17055:
          v6 = @"MAP_OPTIONS_STANDARD";

          break;
        case 17056:
          v6 = @"MAP_OPTIONS_TRAFFIC_HIDE";

          break;
        case 17057:
          v6 = @"MAP_OPTIONS_TRAFFIC_SHOW";

          break;
        case 17058:
          v6 = @"MAP_OPTIONS_TRANSIT";

          break;
        case 17059:
          v6 = @"MAP_TAP_FLYOVER_CITY";

          break;
        case 17060:
          v6 = @"MAP_TAP_LINE";

          break;
        case 17061:
          v6 = @"MAP_TAP_POI_TRANSIT";

          break;
        case 17062:
          v6 = @"MAP_TAP_TRAFFIC_INCIDENT";

          break;
        case 17063:
          v6 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

          break;
        case 17064:
          v6 = @"MAP_USER_TRACKING_OFF";

          break;
        case 17065:
          v6 = @"MAP_USER_TRACKING_ON";

          break;
        case 17066:
          v6 = @"MAP_USER_TRACKING_WITH_HEADING_ON";

          break;
        case 17067:
          v6 = @"NAV_CLEAR";

          break;
        case 17068:
          v6 = @"NAV_LIST";

          break;
        case 17069:
          v6 = @"NAV_ROUTE_STEP_NEXT";

          break;
        case 17070:
          v6 = @"NAV_ROUTE_STEP_PREV";

          break;
        case 17071:
          v6 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

          break;
        case 17072:
          v6 = @"ORB_DISPLAY_MENU";

          break;
        case 17073:
          v6 = @"ORB_MENU_CALL";

          break;
        case 17074:
          v6 = @"ORB_MENU_DIRECTIONS";

          break;
        case 17075:
          v6 = @"ORB_MENU_DISMISS";

          break;
        case 17076:
          v6 = @"ORB_MENU_SHARE";

          break;
        case 17077:
          v6 = @"ORB_MENU_SHOW_PLACECARD";

          break;
        case 17078:
          v6 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

          break;
        case 17079:
          v6 = @"ORB_MENU_URL";

          break;
        case 17080:
          v6 = @"ORB_PRESS";

          break;
        case 17081:
          v6 = @"ORB_SPRINGBOARD_MARK_LOCATION";

          break;
        case 17082:
          v6 = @"ORB_SPRINGBOARD_SEARCH";

          break;
        case 17083:
          v6 = @"ORB_SPRINGBOARD_SHARE_LOCATION";

          break;
        case 17084:
          v6 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

          break;
        case 17085:
          v6 = @"RAP_PERMISSION_CANCEL";

          break;
        case 17086:
          v6 = @"RAP_PERMISSION_EMAIL_NA";

          break;
        case 17087:
          v6 = @"RAP_PERMISSION_EMAIL_OK";

          break;
        case 17088:
          v6 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

          break;
        case 17089:
          v6 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

          break;
        case 17090:
          v6 = @"RAP_PERMISSION_OK";

          break;
        case 17091:
          v6 = @"SEARCH_BEGIN";

          break;
        case 17092:
          v6 = @"SEARCH_CANCEL";

          break;
        case 17093:
          v6 = @"SEARCH_SELECT";

          break;
        case 17094:
          v6 = @"TRANSIT_LINE_SELECTION_DISMISS";

          break;
        case 17095:
          v6 = @"TRANSIT_LINE_SELECTION_VIEW";

          break;
        case 17096:
          v6 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

          break;
        case 17097:
          v6 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

          break;
        case 17098:
          v6 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

          break;
        case 17099:
          v6 = @"UNKNOWN_ACTION";

          break;
        case 17100:
          v6 = @"INFO_SHARE_TWITTER";

          break;
        case 17101:
          v6 = @"INFO_TAP_POPULAR_APP_NEARBY";

          break;
        case 17102:
          v6 = @"INFO_DIRECTIONS_WALK";

          break;
        case 17103:
          v6 = @"INFO_DIRECTIONS_TRANSIT";

          break;
        case 17104:
          v6 = @"INFO_DIRECTIONS_DRIVE";

          break;
        case 17105:
          v6 = @"INFO_REPORT_A_PROBLEM";

          break;
        case 17106:
          v6 = @"CALLOUT_NAV";

          break;
        case 17107:
          v6 = @"RAP_PERMISSION_EMAIL_CANCEL";

          break;
        case 17108:
          v6 = @"MAP_TAP_POI";

          break;
        default:
          if (action == 16001)
          {
            v6 = @"SEARCH_IN_MAPS";
          }

          else
          {
            if (action != 90010)
            {
              goto LABEL_200;
            }

            v6 = @"PAN_RIGHT";
          }

          break;
      }

      return v6;
    }

    if (action <= 13004)
    {
      if (action > 12007)
      {
        if (action <= 13000)
        {
          switch(action)
          {
            case 0x2EE8:
              v6 = @"ADD_SPECIAL_REQUEST";

              break;
            case 0x2EE9:
              v6 = @"CHANGE_RESERVATION";

              break;
            case 0x2EEA:
              v6 = @"LEARN_MORE";

              break;
            default:
              goto LABEL_200;
          }
        }

        else if (action > 13002)
        {
          if (action == 13003)
          {
            v6 = @"SELECT_LABEL";
          }

          else
          {
            v6 = @"DELETE_ADDRESS";
          }
        }

        else if (action == 13001)
        {
          v6 = @"SELECT_ADDRESS";
        }

        else
        {
          v6 = @"ADD_ADDRESS";
        }
      }

      else if (action <= 12003)
      {
        if (action == 12001)
        {
          v6 = @"VIEW_MORE_OPTIONS";
        }

        else if (action == 12002)
        {
          v6 = @"SELECT_TIME";
        }

        else
        {
          v6 = @"SHOW_NEXT_AVAILABLE";
        }
      }

      else if (action > 12005)
      {
        if (action == 12006)
        {
          v6 = @"EDIT_BOOKING";
        }

        else
        {
          v6 = @"EDIT_PHONE";
        }
      }

      else if (action == 12004)
      {
        v6 = @"DECREASE_TABLE_SIZE";
      }

      else
      {
        v6 = @"INCREASE_TABLE_SIZE";
      }
    }

    else if (action <= 14004)
    {
      if (action <= 14000)
      {
        switch(action)
        {
          case 0x32CD:
            v6 = @"EDIT_ITEMS";

            break;
          case 0x32CE:
            v6 = @"RAP_FAVORITES";

            break;
          case 0x32CF:
            v6 = @"SORT_LIST_ITEM";

            break;
          default:
            goto LABEL_200;
        }
      }

      else if (action > 14002)
      {
        if (action == 14003)
        {
          v6 = @"BOOK_RIDE";
        }

        else
        {
          v6 = @"REQUEST_RIDE";
        }
      }

      else if (action == 14001)
      {
        v6 = @"VIEW_APP";
      }

      else
      {
        v6 = @"ENABLE";
      }
    }

    else
    {
      if (action <= 14008)
      {
        if (action > 14006)
        {
          if (action == 14007)
          {
            v6 = @"ENABLE_ALL_RIDESHARE_APPS";
          }

          else
          {
            v6 = @"TAP_FOR_MORE_RIDES";
          }
        }

        else if (action == 14005)
        {
          v6 = @"CONTACT_DRIVER";
        }

        else
        {
          v6 = @"CHANGE_PAYMENT";
        }

        return v6;
      }

      if (action > 15001)
      {
        if (action == 15002)
        {
          v6 = @"ORB_POP";
        }

        else
        {
          if (action != 15003)
          {
            goto LABEL_200;
          }

          v6 = @"ORB_DISMISS";
        }
      }

      else
      {
        if (action != 14009)
        {
          if (action == 15001)
          {
            v6 = @"ORB_PEEK";

            return v6;
          }

LABEL_200:
          v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_201:

          return v6;
        }

        v6 = @"SUBMIT_TRIP_FEEDBACK";
      }
    }
  }

  return v6;
}

- (BOOL)_isValidTargetForNavUI:(int)a3
{
  result = 1;
  if (a3 > 400)
  {
    if ((a3 - 401) >= 3 && a3 != 802)
    {
      return 0;
    }
  }

  else if ((a3 - 301) >= 3 && a3 != 104)
  {
    return 0;
  }

  return result;
}

- (id)_siriIntentHash:(id)a3
{
  if ([(MKSiriInteraction *)self _isIntentDeletable])
  {
    if ([(NSString *)self->_searchQueryString length])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"input=%@", self->_searchQueryString];
      v5 = [MKSiriInteraction _siriIntentMurmurHash:v4];
    }

    else
    {
      v6 = [(MKMapItem *)self->_mapItem _geoMapItem];
      v4 = v6;
      if (v6)
      {
        if ([v6 _hasMUID])
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"muid=%llu", objc_msgSend(v4, "_muid")];
          v5 = [MKSiriInteraction _siriIntentMurmurHash:v7];
        }

        else
        {
          v7 = [v4 addressObject];
          v8 = MEMORY[0x1E696AEC0];
          v9 = [v7 fullAddressWithMultiline:0];
          v10 = [v8 stringWithFormat:@"address=%@", v9];
          v5 = [MKSiriInteraction _siriIntentMurmurHash:v10];
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKSiriInteraction)initWithGEOUIAction:(int)a3 target:(int)a4 mapItem:(id)a5 resultIndex:(int)a6 searchCategory:(id)a7 searchQueryString:(id)a8
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = MKSiriInteraction;
  v18 = [(MKSiriInteraction *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_action = a3;
    v18->_target = a4;
    objc_storeStrong(&v18->_mapItem, a5);
    v19->_resultIndex = a6;
    objc_storeStrong(&v19->_searchCategory, a7);
    objc_storeStrong(&v19->_searchQueryString, a8);
  }

  return v19;
}

+ (id)_siriIntentMurmurHash:(id)a3
{
  v3 = MEMORY[0x1E695DF88];
  v4 = a3;
  v5 = [[v3 alloc] initWithLength:16];
  [v4 UTF8String];
  [v4 lengthOfBytesUsingEncoding:4];

  [v5 mutableBytes];
  _GEOMurmurHash3_128_realign();
  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

+ (void)generateHashForNavigationURL:(id)a3
{
  if (a3)
  {
    v5 = [a3 absoluteString];
    [MKSiriInteraction _siriIntentMurmurHash:?];
  }

  else
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    [v5 UUIDString];
  }
  v3 = ;
  v4 = s_navigationHash;
  s_navigationHash = v3;
}

+ (void)removeRecentIntentWithSearchText:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F15B23C0;
  }

  v5 = MEMORY[0x1E696E8B8];
  v8 = v4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"input=%@", v4];
  v7 = [MKSiriInteraction _siriIntentMurmurHash:v6];
  [v5 deleteInteractionsWithGroupIdentifier:v7 completion:0];
}

+ (void)removeRecentIntentWithPlacemark:(id)a3
{
  if (a3)
  {
    v3 = [a3 _geoMapItem];
    if (v3)
    {
      v11 = v3;
      if ([v3 _hasMUID])
      {
        v4 = MEMORY[0x1E696E8B8];
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"muid=%llu", objc_msgSend(v11, "_muid")];
        v6 = [MKSiriInteraction _siriIntentMurmurHash:v5];
        [v4 deleteInteractionsWithGroupIdentifier:v6 completion:0];
      }

      else
      {
        v5 = [v11 addressObject];
        v7 = MEMORY[0x1E696E8B8];
        v8 = MEMORY[0x1E696AEC0];
        v6 = [v5 fullAddressWithMultiline:0];
        v9 = [v8 stringWithFormat:@"address=%@", v6];
        v10 = [MKSiriInteraction _siriIntentMurmurHash:v9];
        [v7 deleteInteractionsWithGroupIdentifier:v10 completion:0];
      }

      v3 = v11;
    }
  }
}

@end