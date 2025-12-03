@interface MKSiriInteraction
+ (NSString)navigationHash;
+ (id)_siriIntentMurmurHash:(id)hash;
+ (void)generateHashForNavigationURL:(id)l;
+ (void)removeRecentIntentWithPlacemark:(id)placemark;
+ (void)removeRecentIntentWithSearchText:(id)text;
- (BOOL)_isIntentDeletable;
- (BOOL)_isStartNavigationAction:(int)action;
- (BOOL)_isValidTargetForNavUI:(int)i;
- (MKSiriInteraction)initWithGEOUIAction:(int)action target:(int)target mapItem:(id)item resultIndex:(int)index searchCategory:(id)category searchQueryString:(id)string;
- (id)_siriIntentHash:(id)hash;
- (id)_whiteListedBrowseCategoryActionAsString:(int)string;
- (id)_whiteListedNavigationActionAsString:(int)string;
- (id)_whiteListedPlaceCardActionAsString:(int)string;
- (id)_whiteListedSearchActionAsString:(int)string;
- (id)_whiteListedSiriListActionAsString:(int)string;
- (id)intentIfWanted;
- (void)_navTimerFired:(id)fired;
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

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

    name = [(MKMapItem *)self->_mapItem name];
    v17 = [name length];

    if (v17)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = _MKLocalizedStringFromThisBundle(@"[Siri Biomestream Donations] Directions to %@");
      name2 = [(MKMapItem *)self->_mapItem name];
      v21 = [v18 stringWithFormat:v19, name2];
      [v15 setObject:v21 forKeyedSubscript:@"title"];

      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      languageIdentifier = [currentLocale languageIdentifier];
      [v15 setObject:languageIdentifier forKeyedSubscript:@"locale"];
    }

    _firstLocalizedCategoryName = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
    v25 = [_firstLocalizedCategoryName length];

    if (v25)
    {
      _firstLocalizedCategoryName2 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
      [v15 setObject:_firstLocalizedCategoryName2 forKeyedSubscript:@"category_type"];
    }

    popularTokenString = [(GEOSearchCategory *)self->_searchCategory popularTokenString];
    v28 = [popularTokenString length];

    if (v28)
    {
      popularTokenString2 = [(GEOSearchCategory *)self->_searchCategory popularTokenString];
      [v15 setObject:popularTokenString2 forKeyedSubscript:@"category_type"];
    }

    if ([(NSString *)self->_searchQueryString length])
    {
      [v15 setObject:self->_searchQueryString forKeyedSubscript:@"input"];
    }

    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    addressDictionary = [_geoMapItem addressDictionary];

    if (addressDictionary)
    {
      v44 = v7;
      v45 = v9;
      v46 = v8;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v32 = addressDictionary;
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

    if ([bundleIdentifier length])
    {
      [v15 setObject:bundleIdentifier forKeyedSubscript:@"source"];
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
    [self generateHashForNavigationURL:0];
    v2 = s_navigationHash;
  }

  return v2;
}

- (void)donateIfWanted
{
  intentIfWanted = [(MKSiriInteraction *)self intentIfWanted];
  if (intentIfWanted)
  {
    v6 = intentIfWanted;
    v4 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:intentIfWanted response:0];
    if ([(MKSiriInteraction *)self _isIntentDeletable])
    {
      v5 = [(MKSiriInteraction *)self _siriIntentHash:v6];
      [v4 setGroupIdentifier:v5];
    }

    [v4 donateInteractionWithCompletion:0];

    intentIfWanted = v6;
  }
}

- (void)_navTimerFired:(id)fired
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (fired && s_navStartedTimer)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v5 = +[MKSiriInteraction navigationHash];
    v11 = @"nav_identifier";
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v6 mutableCopy];

    [v7 setObject:@"Continue" forKeyedSubscript:@"navigationType"];
    if ([bundleIdentifier length])
    {
      [v7 setObject:bundleIdentifier forKeyedSubscript:@"source"];
    }

    v8 = [objc_alloc(MEMORY[0x1E696E880]) initWithDomain:@"Maps" verb:@"Navigation" parametersByName:v7];
    v9 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v8 response:0];
    [v9 donateInteractionWithCompletion:0];
    [s_navStartedTimer invalidate];
    v10 = s_navStartedTimer;
    s_navStartedTimer = 0;
  }
}

- (BOOL)_isStartNavigationAction:(int)action
{
  result = 1;
  if (action > 9020)
  {
    if (action == 9021)
    {
      return result;
    }

    v4 = 11017;
  }

  else
  {
    if (action == 3001)
    {
      return result;
    }

    v4 = 9016;
  }

  if (action != v4)
  {
    return 0;
  }

  return result;
}

- (id)_whiteListedNavigationActionAsString:(int)string
{
  action = 0;
  if (string > 9015)
  {
    if (string == 9016 || string == 11017)
    {
      goto LABEL_8;
    }

    v6 = 9021;
  }

  else
  {
    if ((string - 3001) < 2)
    {
      goto LABEL_8;
    }

    v6 = 8006;
  }

  if (string != v6)
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
          action = @"TAP_DIRECTIONS";
        }

        else if (action == 1502)
        {
          action = @"TAP_PROXIMITY_FIND";
        }

        else
        {
          action = @"TAP_PRECISION_FIND";
        }
      }

      else
      {
        switch(action)
        {
          case 2001:
            action = @"TAP_SEARCH_FIELD";

            return action;
          case 2002:
            action = @"CLEAR_SEARCH";

            return action;
          case 2003:
            action = @"CANCEL_SEARCH";

            return action;
          case 2004:
            action = @"TAP_BROWSE_TOP_CATEGORY";

            return action;
          case 2005:
            action = @"TAP_BROWSE_SUB_CATEGORY";

            return action;
          case 2006:
            action = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

            return action;
          case 2007:
            action = @"TAP_LIST_ITEM";

            return action;
          case 2008:
            action = @"SHARE_LIST_ITEM";

            return action;
          case 2009:
            action = @"DELETE_LIST_ITEM";

            return action;
          case 2010:
            action = @"EDIT_LIST_ITEM";

            return action;
          case 2011:
            action = @"REFRESH_SEARCH";

            return action;
          case 2012:
            action = @"REVEAL_LIST_ITEM_ACTIONS";

            return action;
          case 2013:
            action = @"HIDE_LIST_ITEM_ACTIONS";

            return action;
          case 2014:
            action = @"TAP_SEARCH_BUTTON";

            return action;
          case 2015:
            action = @"SHOW_SEARCH_RESULTS";

            return action;
          case 2016:
            action = @"SHOW_REFRESH_SEARCH";

            return action;
          case 2017:
            action = @"PASTE_TEXT";

            return action;
          case 2018:
            action = @"TAP_LIST_SUB_ITEM";

            return action;
          case 2019:
            action = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2020:
            action = @"TAP_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2021:
            action = @"CLOSE_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2022:
            action = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2023:
            action = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2024:
            action = @"RETAINED_QUERY";

            return action;
          case 2025:
            action = @"TAP_RECENT_AC_SUGGESTION";

            return action;
          case 2026:
            action = @"CLEAR_RECENT_AC_SUGGESTION";

            return action;
          case 2027:
            action = @"DELETE_RECENT_AC_SUGGESTION";

            return action;
          case 2028:
          case 2029:
            goto LABEL_198;
          case 2030:
            action = @"TAP_BROWSE_NEARBY_CATEGORY";

            return action;
          case 2031:
            action = @"TAP_SUBACTION";

            return action;
          case 2032:
            action = @"TAP_QUERY_BUILDING_ARROW";

            return action;
          case 2033:
            action = @"CLICK_ON_EDIT_SEARCH";

            return action;
          case 2034:
            action = @"REMOVE_CLIENT_AC_SUGGESTION";

            return action;
          case 2035:
            action = @"SHARE_CLIENT_AC_SUGGESTION";

            return action;
          case 2036:
            action = @"TAP_ON_MORE_RESULTS";

            return action;
          case 2037:
            action = @"SHARE_ITEM";

            return action;
          case 2038:
            action = @"HIDE_ITEM";

            return action;
          case 2039:
            action = @"TAP_SUGGESTED_ITEM";

            return action;
          case 2040:
            action = @"SHARE_SUGGESTED_ITEM";

            return action;
          case 2041:
            action = @"HIDE_SUGGESTED_ITEM";

            return action;
          case 2042:
            action = @"ADD_HOME_FAVORITE";

            return action;
          case 2043:
            action = @"ADD_WORK_FAVORITE";

            return action;
          case 2044:
            action = @"ADD_FAVORITE";

            return action;
          case 2045:
            action = @"VIEW_FAVORITES_LIST";

            return action;
          case 2046:
            action = @"TAP_HOME_FAVORITE";

            return action;
          case 2047:
            action = @"TAP_WORK_FAVORITE";

            return action;
          case 2048:
            action = @"TAP_CAR_FAVORITE";

            return action;
          case 2049:
            action = @"TAP_FAVORITE_ITEM";

            return action;
          case 2050:
            action = @"CREATE_HOME_FAVORITE";

            return action;
          case 2051:
            action = @"CREATE_WORK_FAVORITE";

            return action;
          case 2052:
            action = @"CREATE_FAVORITE";

            return action;
          case 2053:
            action = @"SUBMIT_FAVORITE_EDIT";

            return action;
          case 2054:
            action = @"ADD_RECOMMENDED_FAVORITE";

            return action;
          case 2055:
            action = @"EDIT_FAVORITE";

            return action;
          case 2056:
            action = @"REMOVE_FAVORITE";

            return action;
          case 2057:
            action = @"SHARE_FAVORITE";

            return action;
          case 2058:
            action = @"EDIT_FAVORITES";

            return action;
          case 2059:
            action = @"ADD_FAVORITE_PLACE";

            return action;
          case 2060:
            action = @"REMOVE_FAVORITE_PLACE";

            return action;
          case 2061:
            action = @"CHANGE_HOME_ADDRESS";

            return action;
          case 2062:
            action = @"CHANGE_WORK_ADDRESS";

            return action;
          case 2063:
            action = @"REFINE_LOCATION";

            return action;
          case 2064:
            action = @"TAP_RECENTLY_VIEWED_ITEM";

            return action;
          case 2065:
            action = @"SHOW_COLLECTION_LIST";

            return action;
          case 2066:
            action = @"SHOW_FAVORITES_COLLECTION";

            return action;
          case 2067:
            action = @"SHOW_COLLECTION";

            return action;
          case 2068:
            action = @"TAP_COLLECTION_ITEM";

            return action;
          case 2069:
            action = @"SHARE_COLLECTION_ITEM";

            return action;
          case 2070:
            action = @"REMOVE_COLLECTION_ITEM";

            return action;
          case 2071:
            action = @"SAVE_SHARED_COLLECTION";

            return action;
          case 2072:
            action = @"CREATE_NEW_COLLECTION";

            return action;
          case 2073:
            action = @"SAVE_TO_COLLECTION";

            return action;
          case 2074:
            action = @"EDIT_PHOTO";

            return action;
          case 2075:
            action = @"SORT_BY_NAME";

            return action;
          case 2076:
            action = @"SORT_BY_DISTANCE";

            return action;
          case 2077:
            action = @"SORT_BY_RECENT";

            return action;
          case 2078:
            action = @"AUTO_SHARE_ETA";

            return action;
          case 2079:
            action = @"CANCEL_AUTO_SHARE_ETA";

            return action;
          case 2080:
            action = @"MAP_SEARCH";

            return action;
          case 2081:
            action = @"DELETE_COLLECTION";

            return action;
          case 2082:
            action = @"SHARE_COLLECTION";

            return action;
          case 2083:
            action = @"SHOW_TRANSIT_LINES_COLLECTION";

            return action;
          case 2084:
            action = @"SHOW_MY_PLACES";

            return action;
          case 2085:
            action = @"SHOW_ALL_PLACES";

            return action;
          case 2086:
            action = @"TAP_RECENT_QUERY";

            return action;
          case 2087:
            action = @"TAP_QUERY_SUGGESTION";

            return action;
          case 2088:
            action = @"DELETE_CURATED_COLLECTION";

            return action;
          case 2089:
            action = @"FOLLOW";

            return action;
          case 2090:
            action = @"PUNCH_IN";

            return action;
          case 2091:
            action = @"SAVE_CURATED_COLLECTION";

            return action;
          case 2092:
            action = @"SCROLL_LEFT_COLLECTIONS";

            return action;
          case 2093:
            action = @"SCROLL_RIGHT_COLLECTIONS";

            return action;
          case 2094:
            action = @"SEE_ALL_CURATED_COLLECTION";

            return action;
          case 2095:
            action = @"SEE_ALL_PUBLISHERS";

            return action;
          case 2096:
            action = @"SHARE_CURATED_COLLECTION";

            return action;
          case 2097:
            action = @"SHARE_PUBLISHER";

            return action;
          case 2098:
            action = @"SHOW_MORE_COLLECTION";

            return action;
          case 2099:
            action = @"TAP_CURATED_COLLECTION";

            return action;
          case 2100:
            action = @"TAP_FEATURED_COLLECTIONS";

            return action;
          case 2101:
            action = @"TAP_LOCATION";

            return action;
          case 2102:
            action = @"TAP_PUBLISHER";

            return action;
          case 2103:
            action = @"TAP_PUBLISHER_APP";

            return action;
          case 2104:
            action = @"TAP_PUBLISHER_COLLECTIONS";

            return action;
          case 2105:
            action = @"UNFOLLOW";

            return action;
          case 2106:
            action = @"CHANGE_SCHOOL_ADDRESS";

            return action;
          case 2107:
            action = @"ADD_VEHICLE";

            return action;
          case 2108:
            action = @"DISPLAY_VIRTUAL_GARAGE";

            return action;
          case 2109:
            action = @"ENTER_VIRTUAL_GARAGE";

            return action;
          case 2110:
            action = @"PUNCH_OUT_MANUFACTURER_APP";

            return action;
          case 2111:
            action = @"REMOVE_LICENSE_PLATE";

            return action;
          case 2112:
            action = @"REMOVE_VEHICLE";

            return action;
          case 2113:
            action = @"SELECT_VEHICLE";

            return action;
          case 2114:
            action = @"SUBMIT_LICENSE_PLATE";

            return action;
          case 2115:
            action = @"TAP_ADD_LICENSE_PLATE";

            return action;
          case 2116:
            action = @"TAP_ADD_NEW_CAR";

            return action;
          case 2117:
            action = @"TAP_BANNER";

            return action;
          case 2118:
            action = @"TAP_CONNECT";

            return action;
          case 2119:
            action = @"TAP_CONTINUE";

            return action;
          case 2120:
            action = @"TAP_EDIT";

            return action;
          case 2121:
            action = @"TAP_NAME";

            return action;
          case 2122:
            action = @"TAP_NOT_NOW";

            return action;
          case 2123:
            action = @"TAP_OTHER_VEHICLE";

            return action;
          case 2124:
            action = @"TAP_REMOVE_LICENSE_PLATE";

            return action;
          case 2125:
            action = @"TAP_UPDATE_PLATE_NUMBER";

            return action;
          case 2126:
            action = @"TAP_VEHICLE";

            return action;
          case 2127:
            action = @"TAP_VEHICLE_NAME";

            return action;
          case 2128:
            action = @"UPDATE_NAME";

            return action;
          case 2129:
            action = @"DONE_TAKING_PHOTO";

            return action;
          case 2130:
            action = @"ENABLE_SHOW_PHOTO_NAME";

            return action;
          case 2131:
            action = @"SUBMIT_PHOTO";

            return action;
          case 2132:
            action = @"USE_PHOTO";

            return action;
          case 2133:
            action = @"ADD_RECOMMENDATION_TO_MAPS";

            return action;
          case 2134:
            action = @"CANCEL_PHOTO_SUBMISSION";

            return action;
          case 2135:
            action = @"CLOSE_RECOMMENDATION_CARD";

            return action;
          case 2136:
            action = @"EDIT_RATING";

            return action;
          case 2137:
            action = @"PROMPTED_TO_ADD_PHOTO";

            return action;
          case 2138:
            action = @"PROMPTED_TO_ADD_RATING";

            return action;
          case 2139:
            action = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

            return action;
          case 2140:
            action = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

            return action;
          case 2141:
            action = @"RETAKE_PHOTO";

            return action;
          case 2142:
            action = @"REVEAL_RECOMMENDATION_CARD";

            return action;
          case 2143:
            action = @"SUBMIT_NEGATIVE_RATING";

            return action;
          case 2144:
            action = @"SUBMIT_POSITIVE_RATING";

            return action;
          case 2145:
            action = @"TAP_CHOOSING_PHOTO";

            return action;
          case 2146:
            action = @"TAP_TAKE_NEW_PHOTO";

            return action;
          case 2147:
            action = @"TAP_TO_ADD_PHOTO";

            return action;
          case 2148:
            action = @"CANCEL_INCIDENT_REPORT";

            return action;
          case 2149:
            action = @"INCIDENT_REPORT_SUBMITTED";

            return action;
          case 2150:
            action = @"REPORTED_INCIDENT_NOT_RECEIVED";

            return action;
          case 2151:
            action = @"REPORTED_INCIDENT_RECEIVED";

            return action;
          case 2152:
            action = @"REPORT_INCIDENT";

            return action;
          case 2153:
            action = @"SELECT_INCIDENT_TYPE";

            return action;
          case 2154:
            action = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

            return action;
          case 2155:
            action = @"TAP_TO_START_REPORT_INCIDENT";

            return action;
          case 2156:
            action = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

            return action;
          case 2157:
            action = @"ATTEMPT_VLF_CORRECTION";

            return action;
          case 2158:
            action = @"DISMISS_VLF_PROMPT";

            return action;
          case 2159:
            action = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

            return action;
          case 2160:
            action = @"VLF_CORRECTION_FAILED";

            return action;
          case 2161:
            action = @"VLF_CORRECTION_SUCCESSFUL";

            return action;
          case 2162:
            action = @"ENABLE_WIDGET_SUGGESTIONS";

            return action;
          case 2163:
            action = @"DISPLAY_CZ_ADVISORY";

            return action;
          case 2164:
            action = @"PUNCH_OUT_URL_PAY";

            return action;
          case 2165:
            action = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

            return action;
          case 2166:
            action = @"DELETE_ITEM";

            return action;
          case 2167:
            action = @"CANCEL_REMOVE";

            return action;
          case 2168:
            action = @"DELETE_SUGGESTION";

            return action;
          case 2169:
            action = @"ADD_SCHOOL_FAVORITE";

            return action;
          case 2170:
            action = @"GO_TO_WEBSITE";

            return action;
          case 2171:
            action = @"TRY_AGAIN";

            return action;
          case 2172:
            action = @"CHECK_AUTO_RECORD_WORKOUT";

            return action;
          case 2173:
            action = @"CHECK_EBIKE";

            return action;
          case 2174:
            action = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

            return action;
          case 2175:
            action = @"DISPLAY_CYCLING_DEFAULT_OPTION";

            return action;
          case 2176:
            action = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

            return action;
          case 2177:
            action = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

            return action;
          case 2178:
            action = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

            return action;
          case 2179:
            action = @"TAP_AUTOMATIC_WORKOUT_OPTION";

            return action;
          case 2180:
            action = @"TAP_CYCLING_DEFAULT_OPTION";

            return action;
          case 2181:
            action = @"TAP_CYCLING_NO_BIKE_ADVISORY";

            return action;
          case 2182:
            action = @"TAP_CYCLING_STAIRS_ADVISORY";

            return action;
          case 2183:
            action = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

            return action;
          case 2184:
            action = @"UNCHECK_AUTO_RECORD_WORKOUT";

            return action;
          case 2185:
            action = @"UNCHECK_EBIKE";

            return action;
          case 2186:
            action = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

            return action;
          case 2187:
            action = @"DISPLAY_LPR_ADVISORY";

            return action;
          case 2188:
            action = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

            return action;
          case 2189:
            action = @"CREATE_WIDGET";

            return action;
          case 2190:
            action = @"REVEAL_WIDGET_TRAY";

            return action;
          case 2191:
            action = @"LPR_ERROR_CODE";

            return action;
          case 2192:
            action = @"TAP_SEE_ALL_RECENTLY_VIEWED";

            return action;
          case 2193:
            action = @"TAP_CLEAR_RECENTLY_VIEWED";

            return action;
          case 2194:
            action = @"LPR_HARD_STOP";

            return action;
          case 2195:
            action = @"TAP_PUBLISHER_SUBACTION";

            return action;
          case 2196:
            action = @"CARPLAY_DISPLAY_ACTIVATED";

            return action;
          case 2197:
            action = @"CARPLAY_DISPLAY_DEACTIVATED";

            return action;
          case 2198:
            action = @"TAP_FEATURED_COLLECTION";

            return action;
          case 2199:
            action = @"SCROLL_FEATURED_COLLECTION_FORWARD";

            return action;
          case 2200:
            action = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

            return action;
          default:
            if (action == 1504)
            {
              action = @"TAP_ENABLE_LOST_MODE";
            }

            else
            {
              if (action != 1505)
              {
                goto LABEL_198;
              }

              action = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
            }

            break;
        }
      }
    }

    else
    {
      action = @"UI_ACTION_UNKNOWN";
      switch(action)
      {
        case 0:
          goto LABEL_199;
        case 1:
          action = @"PULL_UP";

          break;
        case 2:
          action = @"PULL_DOWN";

          break;
        case 3:
          action = @"TAP";

          break;
        case 4:
          action = @"CLOSE";

          break;
        case 5:
          action = @"SWIPE_PREV";

          break;
        case 6:
          action = @"SWIPE_NEXT";

          break;
        case 7:
          action = @"SCROLL_UP";

          break;
        case 8:
          action = @"SCROLL_DOWN";

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
          action = @"SHOW_MORE";

          break;
        case 11:
          action = @"SHOW_LESS";

          break;
        case 12:
          action = @"SWIPE_LEFT";

          break;
        case 13:
          action = @"SWIPE_RIGHT";

          break;
        case 14:
          action = @"MINIMIZE";

          break;
        case 15:
          action = @"TAP_PREV";

          break;
        case 16:
          action = @"TAP_NEXT";

          break;
        case 17:
          action = @"SUBMIT";

          break;
        case 18:
          action = @"CANCEL";

          break;
        case 19:
          action = @"ENTER_MAPS";

          break;
        case 20:
          action = @"EXIT_MAPS";

          break;
        case 21:
          action = @"REVEAL";

          break;
        case 22:
          action = @"OPEN_NEW_TAB";

          break;
        case 25:
          action = @"BACK";

          break;
        case 26:
          action = @"ACTIVATE";

          break;
        case 27:
          action = @"DEACTIVATE";

          break;
        case 28:
          action = @"AGREE";

          break;
        case 29:
          action = @"DISAGREE";

          break;
        case 30:
          action = @"SKIP_ANSWER";

          break;
        case 31:
          action = @"EXPAND";

          break;
        case 32:
          action = @"COLLAPSE";

          break;
        case 33:
          action = @"ENTER";

          break;
        case 34:
          action = @"EXIT";

          break;
        case 35:
          action = @"SCROLL_UP_INDEX_BAR";

          break;
        case 36:
          action = @"SCROLL_DOWN_INDEX_BAR";

          break;
        case 37:
          action = @"TOGGLE_ON";

          break;
        case 38:
          action = @"TOGGLE_OFF";

          break;
        case 39:
          action = @"LONG_PRESS";

          break;
        case 40:
          action = @"CLICK";

          break;
        case 41:
          action = @"TAP_DONE";

          break;
        case 42:
          action = @"TAP_CLOSE";

          break;
        case 43:
          action = @"SCROLL_LEFT";

          break;
        case 44:
          action = @"SCROLL_RIGHT";

          break;
        case 45:
          action = @"DISPLAY";

          break;
        case 46:
          action = @"OPEN_IN_APP";

          break;
        case 47:
          action = @"CONCEAL";

          break;
        case 48:
          action = @"TAP_DELETE";

          break;
        case 49:
          action = @"TAP_FILTER";

          break;
        case 50:
          action = @"TAP_SECONDARY_BUTTON";

          break;
        case 51:
          action = @"TAP_WIDGET_FOOD";

          break;
        case 52:
          action = @"TAP_WIDGET_GAS";

          break;
        case 53:
          action = @"TAP_WIDGET_LOADING";

          break;
        case 54:
          action = @"TAP_WIDGET_SEARCH";

          break;
        case 55:
          action = @"TAP_WIDGET_STORES";

          break;
        case 56:
          action = @"DISPLAY_ALLOW_ONCE_PROMPT";

          break;
        case 57:
          action = @"SHARE_CURRENT_LOCATION";

          break;
        case 58:
          action = @"SHARE_PHOTO";

          break;
        case 59:
          action = @"TAP_KEEP_OFF";

          break;
        case 60:
          action = @"TAP_PHOTO_CATEGORY";

          break;
        case 61:
          action = @"TAP_PRECISE_LOCATION_OFF_BANNER";

          break;
        case 62:
          action = @"TAP_TURN_ON";

          break;
        case 63:
          action = @"DISPLAY_CYCLING_ANNOTATION";

          break;
        case 64:
          action = @"DISPLAY_DRIVING_DEFAULT_OPTION";

          break;
        case 65:
          action = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

          break;
        case 66:
          action = @"DISPLAY_WALKING_DEFAULT_OPTION";

          break;
        case 67:
          action = @"TAP_CYCLING_ANNOTATION";

          break;
        case 68:
          action = @"TAP_DRIVING_DEFAULT_OPTION";

          break;
        case 69:
          action = @"TAP_TRANSIT_DEFAULT_OPTION";

          break;
        case 70:
          action = @"TAP_WALKING_DEFAULT_OPTION";

          break;
        case 71:
          action = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

          break;
        case 72:
          action = @"TAP_RIDESHARE_DEFAULT_OPTION";

          break;
        case 73:
          action = @"TAP_PERSONAL_COLLECTION";

          break;
        case 74:
          action = @"RESUME_ROUTE";

          break;
        case 75:
          action = @"DISPLAY_OUT_OF_RANGE_ALERT";

          break;
        case 76:
          action = @"TAP_ALLOW_ONCE";

          break;
        case 77:
          action = @"TAP_DO_NOT_ALLOW";

          break;
        case 78:
          action = @"ADD_RECCOMENDED_FAVORITE";

          break;
        case 79:
          action = @"ADD_RECOMMENDED_HOME_FAVORITE";

          break;
        case 80:
          action = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 81:
          action = @"ADD_RECOMMENDED_WORK_FAVORITE";

          break;
        case 82:
          action = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

          break;
        case 83:
          action = @"CREATE_SCHOOL_FAVORITE";

          break;
        case 84:
          action = @"TAP_SCHOOL_FAVORITE";

          break;
        case 85:
          action = @"SELECT_ROUTING_TYPE_CYCLING";

          break;
        case 86:
          action = @"REPORT_PHOTO";

          break;
        case 87:
          action = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

          break;
        case 88:
          action = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

          break;
        case 89:
          action = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

          break;
        case 90:
          action = @"CREATE_RECOMMENDED_FAVORITE";

          break;
        case 91:
          action = @"CREATE_RECOMMENDED_HOME_FAVORITE";

          break;
        case 92:
          action = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 93:
          action = @"CREATE_RECOMMENDED_WORK_FAVORITE";

          break;
        case 94:
          action = @"TAP_SMALL_WIDGET_ITEM";

          break;
        case 95:
          action = @"TAP_MEDIUM_WIDGET_ITEM";

          break;
        case 96:
          action = @"TAP_LARGE_WIDGET_ITEM";

          break;
        case 97:
          action = @"DISPLAY_ARP_TIPKIT";

          break;
        case 98:
          action = @"NEXT";

          break;
        case 99:
          action = @"TAP_RATE_AND_ADD_PHOTOS";

          break;
        case 100:
          action = @"TAP_TO_ADD_POSITIVE_RATING";

          break;
        case 101:
          action = @"TAP_TO_ADD_NEGATIVE_RATING";

          break;
        case 102:
          action = @"TAP_ACTIVE_SHARING_NOTIFICATION";

          break;
        case 103:
          action = @"INVOKE_SIRI_PROMPT";

          break;
        case 104:
          action = @"ETA_SHARED_SUCCESSFULLY";

          break;
        case 105:
          action = @"ENDED_ETA_SHARE_SUCCESSFULLY";

          break;
        case 106:
          action = @"CLEAR_INCIDENT";

          break;
        case 107:
          action = @"CONFIRM_INCIDENT";

          break;
        case 108:
          action = @"DISMISS_INCIDENT";

          break;
        case 109:
          action = @"INCIDENT_ALERT_TIMEOUT";

          break;
        case 110:
          action = @"INCIDENT_ALERT_TRAY_SHOWN";

          break;
        case 111:
          action = @"INCIDENT_CARD_SHOWN";

          break;
        case 112:
          action = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

          break;
        case 113:
          action = @"INCIDENT_REPORT_TRAY_SHOWN";

          break;
        case 114:
          action = @"NAV_TRAY_DISCOVERY_SHOWN";

          break;
        case 115:
          action = @"TAP_TO_REPORT_INCIDENT";

          break;
        case 116:
          action = @"TAP_SHORTCUT";

          break;
        case 117:
          action = @"BLOCK_CONTACT";

          break;
        case 118:
          action = @"TAP_TO_ADD_RATING";

          break;
        case 119:
          action = @"AR_WALKING_LOCALIZATION_FAILED";

          break;
        case 120:
          action = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

          break;
        case 121:
          action = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

          break;
        case 122:
          action = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

          break;
        case 123:
          action = @"ATTEMPT_AR_WALKING_LOCALIZATION";

          break;
        case 124:
          action = @"RAISE_TO_ENTER_AR_WALKING";

          break;
        case 125:
          action = @"TAP_DISMISS";

          break;
        case 126:
          action = @"TAP_ENTER_AR_WALKING";

          break;
        case 127:
          action = @"TAP_OK";

          break;
        case 128:
          action = @"TAP_TRY_AGAIN";

          break;
        case 129:
          action = @"TAP_TURN_ON_IN_SETTINGS";

          break;
        case 130:
          action = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

          break;
        case 131:
          action = @"VLF_CORRECTION_USER_ABANDON";

          break;
        case 132:
          action = @"AREA_EVENTS_ALERT";

          break;
        case 133:
          action = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

          break;
        case 134:
          action = @"ACCEPT_EVENT_REROUTE";

          break;
        case 135:
          action = @"DISPLAY_AREA_EVENTS_ADVISORY";

          break;
        case 136:
          action = @"DISMISS_EVENT_REROUTE";

          break;
        case 137:
          action = @"PUNCH_OUT_EVENTS_LINK";

          break;
        case 138:
          action = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

          break;
        case 139:
          action = @"ADJUST_GUIDANCE_SETTINGS";

          break;
        case 140:
          action = @"HIDE_DETAILS";

          break;
        case 141:
          action = @"SELECT_VOICE_GUIDANCE_ON";

          break;
        case 142:
          action = @"SELECT_VOICE_GUIDANCE_OFF";

          break;
        case 143:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

          break;
        case 144:
          action = @"TAP_TEXT_LABEL";

          break;
        case 145:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

          break;
        case 146:
          action = @"TAP_EXIT";

          break;
        case 147:
          action = @"TAP_CITY_MENU";

          break;
        case 148:
          action = @"CHECK_AVOID_TOLLS";

          break;
        case 149:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

          break;
        case 150:
          action = @"TAP_ICLOUD";

          break;
        case 151:
          action = @"CHECK_AVOID_HIGHWAYS";

          break;
        case 152:
          action = @"TAP_FAVORITES";

          break;
        case 153:
          action = @"SELECT_DISTANCE_IN_KM";

          break;
        case 154:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

          break;
        case 155:
          action = @"OPEN_FULL_CARD_FILTER";

          break;
        case 156:
          action = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

          break;
        case 157:
          action = @"OPEN_SINGLE_CARD_FILTER";

          break;
        case 158:
          action = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 159:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

          break;
        case 160:
          action = @"SESSIONLESS_REVEAL";

          break;
        case 161:
          action = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

          break;
        case 162:
          action = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

          break;
        case 163:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

          break;
        case 164:
          action = @"ENTER_RAP_REPORT_MENU";

          break;
        case 165:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

          break;
        case 166:
          action = @"TAP_MY_VEHICLES";

          break;
        case 167:
          action = @"SUBMIT_SINGLE_CARD_FILTER";

          break;
        case 168:
          action = @"SUBMIT_FULL_CARD_FILTER";

          break;
        case 169:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

          break;
        case 170:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

          break;
        case 171:
          action = @"TAP_EXPLORE_CURATED_COLELCTIONS";

          break;
        case 172:
          action = @"TAP_ACCOUNT";

          break;
        case 173:
          action = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

          break;
        case 174:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

          break;
        case 175:
          action = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

          break;
        case 176:
          action = @"RESULT_REFINEMENT_TOGGLE_OFF";

          break;
        case 177:
          action = @"TAP_CITY_CURATED_COLLECTIONS";

          break;
        case 178:
          action = @"TAP_REPORTS";

          break;
        case 179:
          action = @"TAP_RATINGS";

          break;
        case 180:
          action = @"TAP_EXPLORE_CURATED_COLLECTIONS";

          break;
        case 181:
          action = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

          break;
        case 182:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

          break;
        case 183:
          action = @"SELECT_DISTANCE_IN_MILES";

          break;
        case 184:
          action = @"TAP_PRIVACY_STATEMENT";

          break;
        case 185:
          action = @"TAP_MAPS_SETTINGS";

          break;
        case 186:
          action = @"CANCEL_FULL_CARD_FILTER";

          break;
        case 187:
          action = @"TAP_LATEST_CURATED_COLLECTION";

          break;
        case 188:
          action = @"TAP_TEMPORAL_CURATED_COLLECTION";

          break;
        case 189:
          action = @"UNCHECK_AVOID_TOLLS";

          break;
        case 190:
          action = @"UNSELECT_SEARCH_REFINEMENT";

          break;
        case 191:
          action = @"TAP_RATING";

          break;
        case 192:
          action = @"TAP_ICLOUD_SIGN_IN";

          break;
        case 193:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

          break;
        case 194:
          action = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

          break;
        case 195:
          action = @"UNCHECK_AVOID_HIGHWAYS";

          break;
        case 196:
          action = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

          break;
        case 197:
          action = @"RESULT_REFINEMENT_TOGGLE_ON";

          break;
        case 198:
          action = @"TAP_CONTEXT_LINE_HYPERLINK";

          break;
        case 199:
          action = @"TAP_MY_GUIDES";

          break;
        case 200:
          action = @"SELECT_SEARCH_REFINEMENT";

          break;
        case 201:
          action = @"SESSIONLESS_TAP_ACCOUNT";

          break;
        case 202:
          action = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 203:
          action = @"TAP_TRAVEL_PREFERENCES";

          break;
        case 204:
          action = @"SHOW_CURATED_COLLECTION_LIST";

          break;
        case 205:
          action = @"CANCEL_SINGLE_CARD_FILTER";

          break;
        case 206:
          action = @"DISPLAY_HFP_OPTION";

          break;
        case 207:
          action = @"SWITCH_OFF_HFP";

          break;
        case 208:
          action = @"SWITCH_ON_HFP";

          break;
        case 209:
          action = @"TAP_QUICK_ACTION_TRAY";

          break;
        case 210:
          action = @"SHOW_ALL_CITIES";

          break;
        case 211:
          action = @"TAP_ADD_NEARBY_TRANSIT";

          break;
        case 212:
          action = @"RESUME";

          break;
        case 213:
          action = @"DISPLAY_TIPKIT_PROMPT";

          break;
        case 214:
          action = @"TAP_NEARBY_TRANSIT_FAVORITE";

          break;
        case 215:
          action = @"TAP_DRIVING_MODE";

          break;
        case 216:
          action = @"SWITCH_ON_VOICE_GUIDANCE";

          break;
        case 217:
          action = @"DISMISS_TIPKIT_PROMPT";

          break;
        case 218:
          action = @"TAP_EXPAND_EXIT_DETAILS";

          break;
        case 219:
          action = @"TAP_NEARBY_TRANSIT_FILTER";

          break;
        case 220:
          action = @"TAP_MORE_DEPARTURES";

          break;
        case 221:
          action = @"RAP_INDIVIDUAL_PLACE";

          break;
        case 222:
          action = @"RAP_ADD_MAP";

          break;
        case 223:
          action = @"TAP_SUGGESTED_RAP";

          break;
        case 224:
          action = @"RAP_STREET_ISSUE";

          break;
        case 225:
          action = @"SWIPE_PIN_REVEAL";

          break;
        case 226:
          action = @"TAP_ADD_TIPKIT_FAVORITE";

          break;
        case 227:
          action = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

          break;
        case 228:
          action = @"RAP_BAD_TRIP";

          break;
        case 229:
          action = @"RAP_PLACE_ISSUE";

          break;
        case 230:
          action = @"TAP_OPEN_MAPS";

          break;
        case 231:
          action = @"TAP_NEARBY_TRANSIT_RESULT";

          break;
        case 232:
          action = @"RAP_GUIDE";

          break;
        case 233:
          action = @"SWITCH_OFF_VOICE_GUIDANCE";

          break;
        case 234:
          action = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

          break;
        case 235:
          action = @"SELECT_TRANSIT_STEP";

          break;
        case 236:
          action = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

          break;
        case 237:
          action = @"TAP_SEE_MORE";

          break;
        case 238:
          action = @"RAP_IN_REVIEW";

          break;
        case 239:
          action = @"TAP_OPEN_MENU";

          break;
        case 240:
          action = @"TAP_NEARBY_TRANSIT";

          break;
        case 241:
          action = @"TAP_PIN_LINE";

          break;
        case 242:
          action = @"SWITCH_OFF_TRIP_FEEDBACK";

          break;
        case 243:
          action = @"RAP_GOOD_TRIP";

          break;
        case 244:
          action = @"TAP_FILTERED_CURATED_COLLECTION";

          break;
        case 245:
          action = @"SHARE_MY_LOCATION";

          break;
        case 246:
          action = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

          break;
        case 247:
          action = @"DISPLAY_GENERIC_ADVISORY";

          break;
        case 248:
          action = @"ADVISORY_ALERT";

          break;
        case 249:
          action = @"PUNCH_OUT_LINK";

          break;
        case 250:
          action = @"TAP_GENERIC_ADVISORY";

          break;
        case 251:
          action = @"TAP_EXPLORE_MODE";

          break;
        case 252:
          action = @"TAP_UNPIN_LINE";

          break;
        case 253:
          action = @"MENU_UNPIN";

          break;
        case 254:
          action = @"MENU_PIN";

          break;
        case 255:
          action = @"SWIPE_PIN";

          break;
        case 256:
          action = @"SWIPE_UNPIN";

          break;
        case 257:
          action = @"TAP_MEDIA_APP";

          break;
        case 258:
          action = @"TAP_GUIDES_SUBACTION";

          break;
        case 259:
          action = @"TAP_MEDIA";

          break;
        case 260:
          action = @"PUNCH_OUT_MEDIA";

          break;
        case 261:
          action = @"SHOW_MEDIA_APP_MENU";

          break;
        case 262:
          action = @"SCROLL_RIGHT_RIBBON";

          break;
        case 263:
          action = @"SCROLL_LEFT_RIBBON";

          break;
        case 264:
          action = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

          break;
        case 265:
          action = @"TAP_SHOW_MORE_TEXT";

          break;
        case 266:
          action = @"SCROLL_LEFT_RATINGS";

          break;
        case 267:
          action = @"SCROLL_LEFT_TEMPLATE_PLACE";

          break;
        case 268:
          action = @"SCROLL_RIGHT_TEMPLATE_PLACE";

          break;
        case 269:
          action = @"SCROLL_RIGHT_RATINGS";

          break;
        case 270:
          action = @"TAP_ALLOW";

          break;
        case 271:
          action = @"TAP_GO_TO_SETTING";

          break;
        case 272:
          action = @"START_SUBMIT_REPORT";

          break;
        case 273:
          action = @"AUTHENTICATION_INFO_FAILURE";

          break;
        case 274:
          action = @"SUCCESSFULLY_SUBMIT_REPORT";

          break;
        case 275:
          action = @"FAILED_SUBMIT_REPORT";

          break;
        case 276:
          action = @"AUTHENTICATION_INFO_SUCCESS";

          break;
        case 277:
          action = @"EDIT_WAYPOINT";

          break;
        case 278:
          action = @"CLEAR_TEXT";

          break;
        case 279:
          action = @"REORDER_WAYPOINT";

          break;
        case 280:
          action = @"REMOVE_WAYPOINT";

          break;
        case 281:
          action = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

          break;
        case 282:
          action = @"TAP_SHOWCASE_MENU";

          break;
        case 283:
          action = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

          break;
        case 284:
          action = @"TAP_PHOTO_ALBUM";

          break;
        case 285:
          action = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 286:
          action = @"RAP_INLINE_ADD";

          break;
        case 287:
          action = @"RAP_TAP_EDIT";

          break;
        case 288:
          action = @"CLAIM_BUSINESS";

          break;
        case 289:
          action = @"RAP_EDIT_OPTIONS";

          break;
        case 290:
          action = @"TAP_IN_REVIEW_RAP";

          break;
        case 291:
          action = @"ORB_MENU_ADD_STOP";

          break;
        case 292:
          action = @"NEXT_STOP";

          break;
        case 293:
          action = @"ARRIVE_AT_WAYPOINT";

          break;
        case 294:
          action = @"REMOVE_STOP";

          break;
        case 295:
          action = @"DISPLAY_PAUSE_BUTTON";

          break;
        case 296:
          action = @"DISPLAY_PAUSE_NEXT_BUTTONS";

          break;
        case 297:
          action = @"AUTO_ADVANCE_NEXT_STOP";

          break;
        case 298:
          action = @"ADD_INLINE_NEGATIVE_RATING";

          break;
        case 299:
          action = @"ADD_INLINE_POSITIVE_RATING";

          break;
        case 300:
          action = @"TAP_TO_ADD_RATING_AND_PHOTO";

          break;
        case 301:
          action = @"SUBMIT_RATINGS_AND_PHOTOS";

          break;
        case 302:
          action = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

          break;
        case 303:
          action = @"TAP_RECENTLY_VIEWED_ROUTE";

          break;
        case 304:
          action = @"SHOW_ALL_RECENTS";

          break;
        case 305:
          action = @"RESUME_MULTIPOINT_ROUTE";

          break;
        case 306:
          action = @"DISMISS_TRANSIT_TIPKIT";

          break;
        case 307:
          action = @"DISPLAY_TRANSIT_TIPKIT";

          break;
        case 308:
          action = @"TAP_TRANSIT_TIPKIT";

          break;
        case 309:
          action = @"FILTER_EV";

          break;
        case 310:
          action = @"FILTER_SURCHARGE";

          break;
        case 311:
          action = @"FILTER_PREFER";

          break;
        case 312:
          action = @"TAP_WALKING_ANNOTATION";

          break;
        case 313:
          action = @"FILTER_AVOID";

          break;
        case 314:
          action = @"FILTER_TRANSPORTATION_MODE";

          break;
        case 315:
          action = @"FILTER_RECOMMENDED_ROUTES";

          break;
        case 316:
          action = @"FILTER_IC_FARES";

          break;
        case 317:
          action = @"FILTER_TRANSIT_CARD_FARES";

          break;
        case 318:
          action = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 319:
          action = @"TAP_NOTIFICATION_SETTINGS";

          break;
        case 320:
          action = @"TAP_ENABLE_NOTIFICATION";

          break;
        case 321:
          action = @"ARP_SUGGESTIONS_TURN_OFF";

          break;
        case 322:
          action = @"ARP_SUGGESTIONS_TURN_ON";

          break;
        case 323:
          action = @"DISMISS_ARP_SUGGESTION";

          break;
        case 324:
          action = @"RATINGS_AND_PHOTOS_TURN_ON";

          break;
        case 325:
          action = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

          break;
        case 326:
          action = @"UNSELECT_SUGGESTED_PHOTOS";

          break;
        case 327:
          action = @"SUGGESTED_PHOTOS_SHOWN";

          break;
        case 328:
          action = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 329:
          action = @"TAP_YOUR_PHOTOS_ALBUM";

          break;
        case 330:
          action = @"RATINGS_AND_PHOTOS_TURN_OFF";

          break;
        case 331:
          action = @"DELETE_PHOTO";

          break;
        case 332:
          action = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 333:
          action = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

          break;
        case 334:
          action = @"TAP_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 335:
          action = @"DISPLAY_YOUR_PHOTOS_ALBUM";

          break;
        case 336:
          action = @"SELECT_SUGGESTED_PHOTOS";

          break;
        case 337:
          action = @"ADD_STOP";

          break;
        case 338:
          action = @"SHOW_CREDIT_TURN_ON";

          break;
        case 339:
          action = @"DISPLAY_ARP_SUGGESTION";

          break;
        case 340:
          action = @"TAP_TO_ADD_PHOTO_CREDIT";

          break;
        case 341:
          action = @"SHOW_CREDIT_TURN_OFF";

          break;
        case 342:
          action = @"TAP_TO_EDIT_NICKNAME";

          break;
        case 343:
          action = @"SUBMIT_RATINGS";

          break;
        case 344:
          action = @"END_NAV_ON_WATCH";

          break;
        case 345:
          action = @"FILTER_EBIKE";

          break;
        case 356:
          action = @"ADD_STOP_SIRI";

          break;
        case 357:
          action = @"TAP_REVIEWED_RAP";

          break;
        case 358:
          action = @"TAP_OUTREACH_RAP";

          break;
        case 359:
          action = @"DISPLAY_SUGGESTED_ITEM";

          break;
        case 360:
          action = @"DISPLAY_HIKING_TIPKIT";

          break;
        case 361:
          action = @"DISMISS_HIKING_TIPKIT";

          break;
        case 362:
          action = @"TAP_HIKING_TIPKIT";

          break;
        case 363:
          action = @"SCROLL_LEFT_TRAILS";

          break;
        case 364:
          action = @"TAP_MORE_TRAILS";

          break;
        case 365:
          action = @"TAP_RELATED_TRAIL";

          break;
        case 366:
          action = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

          break;
        case 367:
          action = @"SCROLL_RIGHT_TRAILS";

          break;
        case 368:
          action = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 369:
          action = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

          break;
        case 370:
          action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 371:
          action = @"TAP_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 372:
          action = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 373:
          action = @"EXPIRED_MAPS_REMOVED";

          break;
        case 374:
          action = @"UPDATE_ALL_DOWNLOAD_MAPS";

          break;
        case 375:
          action = @"TAP_EXPIRED_MAPS";

          break;
        case 376:
          action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 377:
          action = @"MOVE_DOWNLOAD_MAPS";

          break;
        case 378:
          action = @"SAVE_RENAME_DOWNLOAD_MAPS";

          break;
        case 379:
          action = @"TAP_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 380:
          action = @"TAP_ENTER_OFFLINE_MAPS";

          break;
        case 381:
          action = @"TAP_DOWNLOAD_MAPS";

          break;
        case 382:
          action = @"TAP_DOWNLOAD_MAPS_CONTINUE";

          break;
        case 383:
          action = @"DELETE_DOWNLOAD_MAPS";

          break;
        case 384:
          action = @"SLIDE_CLEAR_EXPIRED_MAPS";

          break;
        case 385:
          action = @"RENAME_DOWNLOAD_MAPS";

          break;
        case 386:
          action = @"RESIZE_DOWNLOAD_MAPS";

          break;
        case 387:
          action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

          break;
        case 388:
          action = @"RESTORE_EXPIRED_MAPS";

          break;
        case 389:
          action = @"CLEAR_EXPIRED_MAPS";

          break;
        case 390:
          action = @"TAP_USING_OFFLINE_BAR";

          break;
        case 391:
          action = @"UPDATE_DOWNLOAD_MAPS";

          break;
        case 392:
          action = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 393:
          action = @"DISPLAY_DOWNLOAD_MAPS";

          break;
        case 394:
          action = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

          break;
        case 395:
          action = @"DISPLAY_EXPIRED_MAPS";

          break;
        case 396:
          action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 397:
          action = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

          break;
        case 398:
          action = @"SLIDE_RESTORE_EXPIRED_MAPS";

          break;
        case 399:
          action = @"ETA_SHARE_TRAY_TIMEOUT";

          break;
        case 400:
          action = @"START_ETA_SHARING";

          break;
        case 401:
          action = @"PERSON_LOCATION_UPDATE";

          break;
        case 402:
          action = @"STOP_ETA_SHARING";

          break;
        case 403:
          action = @"PUNCH_OUT_TO_FINDMY";

          break;
        case 404:
          action = @"TAP_PEOPLE_LOCATION";

          break;
        case 405:
          action = @"TAP_TO_REQUEST_LOCATION";

          break;
        case 406:
          action = @"ZOOM_OUT_CROWN";

          break;
        case 407:
          action = @"TAP_RESIZE_DOWNLOAD_MAPS";

          break;
        case 408:
          action = @"TAP_DELETE_DOWNLOAD_MAPS";

          break;
        case 409:
          action = @"SELECT_LIST_VIEW";

          break;
        case 410:
          action = @"SCROLL_RIGHT_TRAILHEADS";

          break;
        case 411:
          action = @"SWITCH_TO_ONLINE_MODE";

          break;
        case 412:
          action = @"TAP_RELATED_TRAILHEAD";

          break;
        case 413:
          action = @"SELECT_ELEVATION_VIEW";

          break;
        case 414:
          action = @"TOGGLE_PROXIMITY_RADIUS_ON";

          break;
        case 415:
          action = @"SEE_MORE_RECENTS";

          break;
        case 416:
          action = @"SEE_MORE_GUIDES";

          break;
        case 417:
          action = @"SELECT_CONTROLS";

          break;
        case 418:
          action = @"NO_SEARCH_RESULTS";

          break;
        case 419:
          action = @"TAP_VIEW_RESULTS_CAROUSEL";

          break;
        case 420:
          action = @"TAP_VIEW_RESULTS_LIST";

          break;
        case 421:
          action = @"SELECT_MAP_VIEW";

          break;
        case 422:
          action = @"SCROLL_LEFT_TRAILHEADS";

          break;
        case 423:
          action = @"SWITCH_TO_OFFLINE_MODE";

          break;
        case 424:
          action = @"ZOOM_IN_CROWN";

          break;
        case 425:
          action = @"TOGGLE_PROXIMITY_RADIUS_OFF";

          break;
        case 426:
          action = @"TAP_MAP";

          break;
        case 427:
          action = @"SWIPE_DOWN";

          break;
        case 428:
          action = @"TAP_MORE_TRAILHEADS";

          break;
        case 429:
          action = @"TAP_ROUTE_OPTIONS";

          break;
        case 430:
          action = @"TAP_ROUTE_NAV_MAP";

          break;
        case 431:
          action = @"TAP_ROUTE_OVERVIEW_MAP";

          break;
        case 432:
          action = @"TAP_AUDIO";

          break;
        case 433:
          action = @"TAP_OPEN_PLACECARD";

          break;
        case 434:
          action = @"TAP_VIEW_STOPS";

          break;
        case 435:
          action = @"TAP_ROUTE_DETAILS";

          break;
        case 436:
          action = @"ADD_LPR_VEHICLE";

          break;
        case 437:
          action = @"TAP_ADD_VEHICLE";

          break;
        case 438:
          action = @"TAP_PLUG_TYPE";

          break;
        case 439:
          action = @"UNSELECT_SUGGESTED_NETWORK";

          break;
        case 440:
          action = @"TAP_SET_UP_LATER";

          break;
        case 441:
          action = @"ADD_EV_VEHICLE";

          break;
        case 442:
          action = @"UPDATE_COLOR";

          break;
        case 443:
          action = @"SELECT_OTHER_NETWORK";

          break;
        case 444:
          action = @"UNSELECT_NETWORK";

          break;
        case 445:
          action = @"TAP_BACK";

          break;
        case 446:
          action = @"TAP_CANCEL";

          break;
        case 447:
          action = @"UNSELECT_VEHICLE";

          break;
        case 448:
          action = @"UNSELECT_OTHER_NETWORK";

          break;
        case 449:
          action = @"DISPLAY_EV_TIPKIT";

          break;
        case 450:
          action = @"SELECT_NETWORK";

          break;
        case 451:
          action = @"TAP_EV_TIPKIT";

          break;
        case 452:
          action = @"TAP_CHOOSE_NETWORKS";

          break;
        case 453:
          action = @"TAP_ADD_NETWORK";

          break;
        case 454:
          action = @"FILTER_NETWORK";

          break;
        case 455:
          action = @"SELECT_SUGGESTED_NETWORK";

          break;
        case 456:
          action = @"TRANSIT_TO_WALKING";

          break;
        case 457:
          action = @"TRANSIT_TO_FINDMY";

          break;
        case 458:
          action = @"TAP_AC_KEYBOARD";

          break;
        case 459:
          action = @"REACH_PHOTO_STRIP_END";

          break;
        case 460:
          action = @"SEARCH_HERE_REVEAL";

          break;
        case 461:
          action = @"TAP_SEARCH_HERE";

          break;
        case 462:
          action = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

          break;
        case 463:
          action = @"SAVE";

          break;
        case 464:
          action = @"TAP_MORE_CURATED_HIKES";

          break;
        case 465:
          action = @"CREATE_CUSTOM_ROUTE";

          break;
        case 466:
          action = @"TAP_TRY_NOW";

          break;
        case 467:
          action = @"TAP_CURATED_HIKE";

          break;
        case 468:
          action = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

          break;
        case 469:
          action = @"ADD_TO_LIBRARY";

          break;
        case 470:
          action = @"START_HIKING";

          break;
        case 471:
          action = @"EDIT_NOTE";

          break;
        case 472:
          action = @"CREATE_NOTE";

          break;
        case 473:
          action = @"DELETE_PIN";

          break;
        case 474:
          action = @"ADD_ROUTE";

          break;
        case 475:
          action = @"ADD_PIN";

          break;
        case 476:
          action = @"REMOVE_FROM_COLLECTION";

          break;
        case 477:
          action = @"REMOVE_FROM_LIBRARY";

          break;
        case 478:
          action = @"TAP_ITEM";

          break;
        case 479:
          action = @"DELETE_ROUTE";

          break;
        case 480:
          action = @"TAP_ROUTE";

          break;
        case 481:
          action = @"TAP_DOWNLOAD_WATCH_MAPS";

          break;
        case 482:
          action = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 483:
          action = @"STOP_DOWNLOAD_ONTO_WATCH";

          break;
        case 484:
          action = @"TAP_DOWNLOAD_ONTO_WATCH";

          break;
        case 485:
          action = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 486:
          action = @"TAP_DOWNLOAD_NOW_WATCH";

          break;
        case 487:
          action = @"REVEAL_DETECTION_LIST";

          break;
        case 488:
          action = @"TAP_RECOMMENDATION";

          break;
        case 489:
          action = @"TAP_EXPAND";

          break;
        case 490:
          action = @"EXPAND_DETECTION_LIST";

          break;
        case 491:
          action = @"FIRST_PARTY_MAP_VIEW";

          break;
        case 492:
          action = @"SECOND_PARTY_MAP_VIEW";

          break;
        case 493:
          action = @"THIRD_PARTY_MAP_VIEW";

          break;
        case 494:
          action = @"DAEMON_PARTY_MAP_VIEW";

          break;
        case 495:
          action = @"MAPS_APP_DWELL_TIME_3_SEC";

          break;
        case 496:
          action = @"MAPS_APP_DWELL_TIME_30_SEC";

          break;
        case 497:
          action = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

          break;
        case 498:
          action = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

          break;
        case 499:
          action = @"DISPLAY_DOOM";

          break;
        case 500:
          action = @"TAP_DOOM";

          break;
        case 501:
          action = @"TAP_ROUTE_GENIUS";

          break;
        case 502:
          action = @"DISPLAY_ROUTE_GENIUS";

          break;
        case 503:
          action = @"TAP_WIDGET";

          break;
        case 504:
          action = @"ARRIVE_AT_DESTINATION";

          break;
        case 505:
          action = @"DISPLAY_WIDGET";

          break;
        case 506:
          action = @"CLEAR_HISTORY";

          break;
        case 507:
          action = @"TAP_SECTION";

          break;
        case 508:
          action = @"APPROVE_LOCATION";

          break;
        case 509:
          action = @"DISMISS_VISITED_PLACES_TIPKIT";

          break;
        case 510:
          action = @"DISPLAY_VISITED_PLACES_TIPKIT";

          break;
        case 511:
          action = @"MORE_OPTIONS";

          break;
        case 512:
          action = @"TAP_VISITED_PLACES_AVAILABLE";

          break;
        case 513:
          action = @"AUTO_REFRESH_SEARCH";

          break;
        case 514:
          action = @"REMOVE_VISIT";

          break;
        case 515:
          action = @"WRONG_LOCATION";

          break;
        case 516:
          action = @"CONFIRM";

          break;
        case 517:
          action = @"KEEP_HISTORY";

          break;
        case 518:
          action = @"DISPLAY_VISITED_PLACES_AVAILABLE";

          break;
        case 519:
          action = @"REMOVE";

          break;
        case 520:
          action = @"ALLOW";

          break;
        case 521:
          action = @"DONT_ALLOW";

          break;
        case 522:
          action = @"REMOVE_EVERY_VISIT";

          break;
        case 523:
          action = @"CONTINUE_VISITED_PLACES_TIPKIT";

          break;
        case 524:
          action = @"REMOVE_FROM_FAVORITE_GUIDE";

          break;
        case 525:
          action = @"ADD_TO_FAVORITE_GUIDE";

          break;
        case 526:
          action = @"FAMILIAR_ROUTE_DISPLAYED";

          break;
        case 527:
          action = @"FAMILIAR_ROUTE_NAV_STARTED";

          break;
        case 528:
          action = @"SELECT_AUDIO_VOLUME_LOUDER";

          break;
        case 529:
          action = @"SELECT_AUDIO_VOLUME_SOFTER";

          break;
        case 1001:
          action = @"PAN";

          break;
        case 1002:
          action = @"ZOOM_IN";

          break;
        case 1003:
          action = @"ZOOM_OUT";

          break;
        case 1004:
          action = @"ROTATE";

          break;
        case 1010:
          action = @"TAP_POI";

          break;
        case 1011:
          action = @"TAP_POI_TRANSIT";

          break;
        case 1017:
          action = @"TAP_POI_HIGHLIGHTED";

          break;
        case 1018:
          action = @"TAP_POI_CLUSTERED";

          break;
        case 1020:
          action = @"TAP_POI_DROPPED_PIN";

          break;
        case 1030:
          action = @"DROP_PIN";

          break;
        case 1031:
          action = @"TAP_INCIDENT";

          break;
        case 1032:
          action = @"TAP_TRANSIT_LINE";

          break;
        case 1033:
          action = @"TAP_POI_CALENDAR";

          break;
        case 1034:
          action = @"TAP_POI_CURRENT_LOCATION";

          break;
        case 1035:
          action = @"TAP_POI_TRANSIT_LINE";

          break;
        case 1036:
          action = @"TAP_POI_LANDMARK";

          break;
        case 1037:
          action = @"TAP_POI_FLYOVER";

          break;
        case 1038:
          action = @"TAP_TO_HIDE_TRAY";

          break;
        case 1039:
          action = @"TAP_TO_REVEAL_TRAY";

          break;
        case 1040:
          action = @"TAP_COMPASS";

          break;
        case 1041:
          action = @"PITCH_AWAY_FROM_GROUND";

          break;
        case 1042:
          action = @"PITCH_CLOSER_TO_GROUND";

          break;
        case 1043:
          action = @"ZOOM_IN_PINCH";

          break;
        case 1044:
          action = @"ZOOM_OUT_PINCH";

          break;
        case 1045:
          action = @"ZOOM_IN_DOUBLE_TAP";

          break;
        case 1046:
          action = @"ZOOM_OUT_TWO_FINGER_TAP";

          break;
        case 1047:
          action = @"ZOOM_IN_ONE_FINGER";

          break;
        case 1048:
          action = @"ZOOM_OUT_ONE_FINGER";

          break;
        case 1049:
          action = @"ZOOM_IN_BUTTON";

          break;
        case 1050:
          action = @"ZOOM_OUT_BUTTON";

          break;
        case 1051:
          action = @"TAP_TRAFFIC_CAMERA";

          break;
        case 1052:
          action = @"DISPLAY_INDOOR_MAP_BUTTON";

          break;
        case 1053:
          action = @"OPEN_INDOOR_MAP";

          break;
        case 1054:
          action = @"DISPLAY_VENUE_BROWSE_BUTTON";

          break;
        case 1055:
          action = @"TAP_VENUE_BROWSE_BUTTON";

          break;
        case 1056:
          action = @"ENTER_VENUE_EXPERIENCE";

          break;
        case 1057:
          action = @"EXIT_VENUE_EXPERIENCE";

          break;
        case 1058:
          action = @"ZOOM_IN_SCENE_PINCH";

          break;
        case 1059:
          action = @"ZOOM_OUT_SCENE_PINCH";

          break;
        case 1060:
          action = @"ZOOM_RESET";

          break;
        case 1061:
          action = @"TAP_SCENE_UNAVAILABLE_AREA";

          break;
        case 1062:
          action = @"TAP_TRANSIT_ACCESS_POINT";

          break;
        case 1063:
          action = @"TAP_SPEED_CAMERA";

          break;
        case 1064:
          action = @"TAP_RED_LIGHT_CAMERA";

          break;
        case 1065:
          action = @"TAP_GEO";

          break;
        default:
          if (action != 1500)
          {
            goto LABEL_198;
          }

          action = @"TAP_PLAY_SOUND";

          break;
      }
    }

    return action;
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
            action = @"TAP_HEADING_ON";
          }

          else if (action == 4003)
          {
            action = @"TAP_HEADING_OFF";
          }

          else
          {
            action = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(action)
          {
            case 5001:
              action = @"SHOW_MAPS_SETTINGS";

              return action;
            case 5002:
              action = @"TAP_STANDARD_MODE";

              return action;
            case 5003:
              action = @"TAP_TRANSIT_MODE";

              return action;
            case 5004:
              action = @"TAP_SATELLITE_MODE";

              return action;
            case 5005:
              action = @"SWITCH_ON_TRAFFIC";

              return action;
            case 5006:
              action = @"SWITCH_OFF_TRAFFIC";

              return action;
            case 5007:
              action = @"SWITCH_ON_LABELS";

              return action;
            case 5008:
              action = @"SWITCH_OFF_LABELS";

              return action;
            case 5009:
              action = @"SWITCH_ON_3D_MAP";

              return action;
            case 5010:
              action = @"SWITCH_OFF_3D_MAP";

              return action;
            case 5011:
              action = @"SWITCH_ON_WEATHER";

              return action;
            case 5012:
              action = @"SWITCH_OFF_WEATHER";

              return action;
            case 5013:
              action = @"REPORT_A_PROBLEM";

              return action;
            case 5014:
              action = @"ADD_PLACE";

              return action;
            case 5015:
              goto LABEL_198;
            case 5016:
              action = @"TAP_PREFERENCES";

              return action;
            case 5017:
              action = @"SWITCH_ON_TOLLS";

              return action;
            case 5018:
              action = @"SWITCH_OFF_TOLLS";

              return action;
            case 5019:
              action = @"SWITCH_ON_HIGHWAYS";

              return action;
            case 5020:
              action = @"SWITCH_OFF_HIGHWAYS";

              return action;
            case 5021:
              action = @"SWITCH_ON_HEADING";

              return action;
            case 5022:
              action = @"SWITCH_OFF_HEADING";

              return action;
            case 5023:
              action = @"SWITCH_ON_SPEED_LIMIT";

              return action;
            case 5024:
              action = @"SWITCH_OFF_SPEED_LIMIT";

              return action;
            case 5025:
              action = @"ELECT_DRIVING_MODE";

              return action;
            case 5026:
              action = @"ELECT_WALKING_MODE";

              return action;
            case 5027:
              action = @"ELECT_TRANSIT_MODE";

              return action;
            case 5028:
              action = @"ELECT_RIDESHARE_MODE";

              return action;
            case 5029:
              action = @"SWITCH_ON_FIND_MY_CAR";

              return action;
            case 5030:
              action = @"SWITCH_OFF_FIND_MY_CAR";

              return action;
            case 5031:
              action = @"MARK_MY_LOCATION";

              return action;
            case 5032:
              action = @"TAP_HYBRID_MODE";

              return action;
            case 5033:
              action = @"CHECK_AVOID_BUSY_ROADS";

              return action;
            case 5034:
              action = @"UNCHECK_AVOID_BUSY_ROADS";

              return action;
            case 5035:
              action = @"CHECK_AVOID_HILLS";

              return action;
            case 5036:
              action = @"UNCHECK_AVOID_HILLS";

              return action;
            case 5037:
              action = @"CHECK_AVOID_STAIRS";

              return action;
            case 5038:
              action = @"UNCHECK_AVOID_STAIRS";

              return action;
            case 5039:
              action = @"ELECT_CYCLING_MODE";

              return action;
            default:
              if (action == 4005)
              {
                action = @"PUCK_SNAP";
              }

              else
              {
                if (action != 4006)
                {
                  goto LABEL_198;
                }

                action = @"SELECT_FLOOR";
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
            action = @"START_NAV";

            break;
          case 3002:
            action = @"END_NAV";

            break;
          case 3003:
            action = @"OPEN_NAV_AUDIO_SETTINGS";

            break;
          case 3004:
            action = @"VIEW_DETAILS";

            break;
          case 3005:
            action = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

            break;
          case 3006:
            action = @"OPEN_ROUTING_EDITOR";

            break;
          case 3007:
            action = @"EDIT_ORIGIN";

            break;
          case 3008:
            action = @"EDIT_DESTINATION";

            break;
          case 3009:
            action = @"SWAP_ORIGIN_DESTINATION";

            break;
          case 3010:
            action = @"OPEN_MORE_ROUTES";

            break;
          case 3011:
            action = @"SELECT_ROUTING_TYPE_DRIVING";

            break;
          case 3012:
            action = @"SELECT_ROUTING_TYPE_WALKING";

            break;
          case 3013:
            action = @"SELECT_ROUTING_TYPE_TRANSIT";

            break;
          case 3014:
            action = @"SELECT_ROUTING_TYPE_RIDESHARE";

            break;
          case 3015:
            action = @"SELECT_ROUTE";

            break;
          case 3016:
            action = @"COLLAPSE_STEP_DETAILS_WALK";

            break;
          case 3017:
            action = @"EXPAND_STEP_DETAILS_WALK";

            break;
          case 3018:
            action = @"COLLAPSE_STEP_DETAILS_TRANSIT";

            break;
          case 3019:
            action = @"EXPAND_STEP_DETAILS_TRANSIT";

            break;
          case 3020:
            action = @"UNCHECK_BUS";

            break;
          case 3021:
            action = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3022:
            action = @"UNCHECK_COMMUTER_RAIL";

            break;
          case 3023:
            action = @"UNCHECK_FERRY";

            break;
          case 3024:
            action = @"CHECK_BUS";

            break;
          case 3025:
            action = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3026:
            action = @"CHECK_COMMUTER_RAIL";

            break;
          case 3027:
            action = @"CHECK_FERRY";

            break;
          case 3028:
            action = @"SELECT_LEAVE_AT";

            break;
          case 3029:
            action = @"SELECT_ARRIVE_BY";

            break;
          case 3030:
            action = @"SELECT_LEAVE_NOW";

            break;
          case 3031:
            action = @"SELECT_DATE_TIME";

            break;
          case 3032:
            action = @"SWITCH_ON_IC_FARES";

            break;
          case 3033:
            action = @"SWITCH_OFF_IC_FARES";

            break;
          case 3034:
            action = @"OPEN_ROUTE_OPTIONS_DATETIME";

            break;
          case 3035:
            action = @"OPEN_ROUTE_OPTIONS_TRANSIT";

            break;
          case 3036:
            action = @"OPEN_ROUTE_OPTIONS_DRIVING";

            break;
          case 3037:
            action = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

            break;
          case 3038:
            action = @"REVEAL_FROM_ROUTING";

            break;
          case 3039:
            action = @"DISPLAY_ROUTES";

            break;
          case 3040:
            action = @"CHECK_RECOMMENDED_ROUTES";

            break;
          case 3041:
            action = @"UNCHECK_RECOMMENDED_ROUTES";

            break;
          case 3042:
            action = @"CHECK_FASTER_TRIPS";

            break;
          case 3043:
            action = @"UNCHECK_FASTER_TRIPS";

            break;
          case 3044:
            action = @"CHECK_FEWER_TRANSFERS";

            break;
          case 3045:
            action = @"UNCHECK_FEWER_TRANSFERS";

            break;
          case 3046:
            action = @"CHECK_LESS_WALKING";

            break;
          case 3047:
            action = @"UNCHECK_LESS_WALKING";

            break;
          case 3048:
            action = @"OPEN_ROUTE_OPTIONS_CYCLING";

            break;
          case 3049:
            action = @"TAP_MORE_ROUTES";

            break;
          case 3050:
            action = @"OPEN_NAV_OVERVIEW";

            break;
          case 3051:
            action = @"RESUME_NAV_MANEUVER_VIEW";

            break;
          case 3052:
            action = @"SELECT_AUDIO_VOLUME_SILENT";

            break;
          case 3053:
            action = @"SELECT_AUDIO_VOLUME_LOW";

            break;
          case 3054:
            action = @"SELECT_AUDIO_VOLUME_NORMAL";

            break;
          case 3055:
            action = @"SELECT_AUDIO_VOLUME_LOUD";

            break;
          case 3056:
            action = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

            break;
          case 3057:
            action = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

            break;
          case 3058:
            action = @"RESUME_PREV_NAV";

            break;
          case 3059:
            action = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

            break;
          case 3060:
            action = @"ACCEPT_REROUTE";

            break;
          case 3061:
            action = @"DISMISS_REROUTE";

            break;
          case 3062:
            action = @"ATTEMPT_END_NAV";

            break;
          case 3063:
            action = @"DISPLAY_BANNER";

            break;
          case 3064:
            action = @"VIEW_BANNER_DETAILS";

            break;
          case 3065:
            action = @"ENTER_GUIDANCE";

            break;
          case 3066:
            action = @"AUTO_ADVANCE_GUIDANCE";

            break;
          case 3067:
            action = @"TAP_OPEN_WALLET";

            break;
          case 3068:
            action = @"SELECT_VOICE_GUIDANCE_ALL";

            break;
          case 3069:
            action = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

            break;
          case 3070:
            action = @"SELECT_VOICE_GUIDANCE_NONE";

            break;
          case 3071:
            action = @"DISPLAY_CARD";

            break;
          case 3072:
            action = @"RENDER_ROUTE";

            break;
          case 3073:
            action = @"DISPLAY_JUNCTION_VIEW";

            break;
          case 3074:
            action = @"SELECT_DEPARTURE";

            break;
          case 3075:
            action = @"DISPLAY_AR_VIEW_RAISE_BANNER";

            break;
          case 3076:
            action = @"DEVICE_RAISE";

            break;
          case 3077:
            action = @"ENTER_AR_NAV_VIEW";

            break;
          case 3078:
            action = @"EXIT_AR_NAV_VIEW";

            break;
          case 3079:
            action = @"AR_CALIBRATION_START";

            break;
          case 3080:
            action = @"AR_CALIBRATION_FAILURE";

            break;
          case 3081:
            action = @"AR_CALIBRATION_SUCCESS";

            break;
          case 3082:
            action = @"DISPLAY_AR_NAV_ARROW";

            break;
          case 3083:
            action = @"DISPLAY_AR_NAV_TURN_AROUND";

            break;
          case 3084:
            action = @"DISPLAY_GO_OUTSIDE_BANNER";

            break;
          case 3085:
            action = @"DISPLAY_AR_DARKNESS_MESSAGE";

            break;
          case 3086:
            action = @"DISPLAY_AR_NAV_ENDPOINT";

            break;
          case 3087:
            action = @"DISPLAY_ADVISORY_BANNER";

            break;
          case 3088:
            action = @"TAP_SHOW_ADVISORY_DETAILS";

            break;
          default:
            if (action != 4001)
            {
              goto LABEL_198;
            }

            action = @"RECENTER_CURRENT_LOCATION";

            break;
        }
      }

      return action;
    }

    if (action <= 7000)
    {
      switch(action)
      {
        case 6003:
          action = @"GET_DIRECTIONS";

          break;
        case 6004:
          action = @"TAP_FLYOVER_TOUR";

          break;
        case 6005:
          action = @"REMOVE_PIN";

          break;
        case 6006:
          action = @"TAP_PHOTO";

          break;
        case 6007:
          action = @"TAP_MAPS_VIEW";

          break;
        case 6008:
          action = @"TAP_ADDRESS";

          break;
        case 6009:
          action = @"CALL";

          break;
        case 6010:
          action = @"TAP_URL";

          break;
        case 6011:
          action = @"SHOW_TODAY_HOURS";

          break;
        case 6012:
          action = @"SHOW_ALL_HOURS";

          break;
        case 6013:
          action = @"SHARE";

          break;
        case 6015:
          action = @"ADD_TO_FAVORITES";

          break;
        case 6016:
          action = @"ADD_CONTACT";

          break;
        case 6018:
          action = @"PUNCH_OUT_PHOTO";

          break;
        case 6019:
          action = @"PUNCH_OUT_USEFUL_TO_KNOW";

          break;
        case 6020:
          action = @"PUNCH_OUT_OPEN_APP";

          break;
        case 6021:
          action = @"PUNCH_OUT_SINGLE_REVIEW";

          break;
        case 6022:
          action = @"PUNCH_OUT_CHECK_IN";

          break;
        case 6023:
          action = @"PUNCH_OUT_MORE_INFO";

          break;
        case 6024:
          action = @"PUNCH_OUT_WRITE_REVIEW";

          break;
        case 6025:
          action = @"PUNCH_OUT_ADD_PHOTO";

          break;
        case 6026:
          action = @"TAP_GRID_VIEW";

          break;
        case 6027:
          action = @"EDIT_LOCATION";

          break;
        case 6029:
          action = @"ADD_PHOTO";

          break;
        case 6031:
          action = @"RETAKE";

          break;
        case 6032:
          action = @"ADD_NOTE";

          break;
        case 6033:
          action = @"REMOVE_CAR";

          break;
        case 6034:
          action = @"EDIT_NAME";

          break;
        case 6036:
          action = @"RESERVE_TABLE";

          break;
        case 6037:
          action = @"ADD_TO_QUEUE";

          break;
        case 6038:
          action = @"VIEW_BOOKED_TABLE";

          break;
        case 6039:
          action = @"VIEW_QUEUED_TABLE";

          break;
        case 6040:
          action = @"PUNCH_OUT_THIRD_PARTY_APP";

          break;
        case 6041:
          action = @"PUNCH_OUT_LEGAL_LINK";

          break;
        case 6042:
          action = @"TAP_PLACECARD_HEADER";

          break;
        case 6043:
          action = @"REMOVE_FROM_FAVORITES";

          break;
        case 6044:
          action = @"VIEW_CONTACT";

          break;
        case 6045:
          action = @"CHAT";

          break;
        case 6046:
          action = @"FIND_STORES";

          break;
        case 6047:
          action = @"TAP_PARENT";

          break;
        case 6048:
          action = @"SCROLL_LEFT_PHOTOS";

          break;
        case 6049:
          action = @"SCROLL_RIGHT_PHOTOS";

          break;
        case 6050:
          action = @"PUNCH_OUT";

          break;
        case 6051:
          action = @"TAP_ENTER_MUNIN";

          break;
        case 6052:
          action = @"TAP_RECOMMENDED_DISHES_PHOTO";

          break;
        case 6053:
          action = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

          break;
        case 6054:
          action = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

          break;
        case 6055:
          action = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6056:
          action = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6057:
          action = @"SHOW_LINKED_SERVICE_HOURS";

          break;
        case 6058:
          action = @"ENTER_LOOK_AROUND";

          break;
        case 6059:
          action = @"EXIT_LOOK_AROUND";

          break;
        case 6060:
          action = @"TAP_ENTER_LOOK_AROUND_VIEW";

          break;
        case 6061:
          action = @"TAP_ENTER_LOOK_AROUND_PIP";

          break;
        case 6062:
          action = @"EXPAND_LOOK_AROUND_VIEW";

          break;
        case 6063:
          action = @"CLOSE_LOOK_AROUND";

          break;
        case 6064:
          action = @"COLLAPSE_LOOK_AROUND_VIEW";

          break;
        case 6065:
          action = @"TAP_SHOW_ACTIONS";

          break;
        case 6066:
          action = @"TAP_HIDE_LABELS";

          break;
        case 6067:
          action = @"TAP_SHOW_LABELS";

          break;
        case 6068:
          action = @"TAP_SHOW_DETAILS";

          break;
        case 6069:
          action = @"PAN_LOOK_AROUND";

          break;
        case 6070:
          action = @"TAP_LOOK_AROUND_THUMBNAIL";

          break;
        case 6071:
          action = @"TAP_LANDMARK";

          break;
        case 6072:
          action = @"TAP_SCENE";

          break;
        case 6073:
          action = @"SHOW_LINKED_BUSINESS_HOURS";

          break;
        case 6074:
          action = @"TAP_PLACECARD_SHORTCUT";

          break;
        case 6075:
          action = @"SHOW_ALL_LOCATIONS_INSIDE";

          break;
        case 6076:
          action = @"SHOW_ALL_SIMILAR_LOCATIONS";

          break;
        case 6077:
          action = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

          break;
        case 6078:
          action = @"TAP_PARENT_LOCATION";

          break;
        case 6079:
          action = @"TAP_SIMILAR_LOCATION";

          break;
        case 6080:
          action = @"TAP_LOCATION_INSIDE";

          break;
        case 6081:
          action = @"TAP_LOCATION_AT_ADDRESS";

          break;
        case 6082:
          action = @"CLOSE_ROUTE_GENIUS";

          break;
        case 6083:
          action = @"LOAD_WEB_CONTENT";

          break;
        case 6084:
          action = @"SCROLL_FORWARD_WEB_CONTENT";

          break;
        case 6085:
          action = @"SCROLL_BACKWARD_WEB_CONTENT";

          break;
        case 6086:
          action = @"TAP_WEB_CONTENT";

          break;
        case 6087:
          action = @"SHOW_PHOTO_VIEWER";

          break;
        case 6088:
          action = @"SHOW_LAST_PAGE";

          break;
        case 6089:
          action = @"TAP_VIEW_APP";

          break;
        case 6090:
          action = @"TAP_APP_CLIP";

          break;
        case 6091:
          action = @"DEAD_BATTERY";

          break;
        case 6092:
          action = @"DISMISS_LOW_BATTERY_ALERT";

          break;
        case 6093:
          action = @"DISMISS_OUT_OF_RANGE_ALERT";

          break;
        case 6094:
          action = @"FAILED_TO_LOAD_EV_STATUS";

          break;
        case 6095:
          action = @"LOW_BATTERY_ALERT";

          break;
        case 6096:
          action = @"PAUSE_ROUTE";

          break;
        case 6097:
          action = @"TAP_ADD_STOP";

          break;
        case 6098:
          action = @"TAP_CHARGE_POINT";

          break;
        case 6099:
          action = @"TAP_OUT_OF_RANGE_ALERT";

          break;
        case 6100:
          action = @"SCROLL_DOWN_PHOTOS";

          break;
        case 6101:
          action = @"SCROLL_UP_PHOTOS";

          break;
        case 6102:
          action = @"TAP_MORE_PHOTOS";

          break;
        case 6103:
          action = @"TAP_TO_CONFIRM_INCIDENT";

          break;
        case 6104:
          action = @"SHOW_INCIDENT";

          break;
        case 6105:
          action = @"REVEAL_APP_CLIP";

          break;
        case 6106:
          action = @"ORDER_DELIVERY";

          break;
        case 6107:
          action = @"VIEW_MENU";

          break;
        case 6108:
          action = @"TAP_EDIT_STOPS";

          break;
        case 6109:
          action = @"LEARN_MORE_WEB_CONTENT";

          break;
        case 6110:
          action = @"MAKE_APPOINTMENT_WEB_CONTENT";

          break;
        case 6111:
          action = @"REVEAL_SHOWCASE";

          break;
        case 6112:
          action = @"TAP_ACTION_BAR";

          break;
        default:
          goto LABEL_198;
      }

      return action;
    }

    if (action <= 8000)
    {
      switch(action)
      {
        case 7001:
          action = @"EXPAND_TRANSIT_SYSTEM";

          break;
        case 7002:
          action = @"COLLAPSE_TRANSIT_SYSTEM";

          break;
        case 7003:
          action = @"SHOW_MORE_DEPARTURES";

          break;
        case 7004:
          action = @"VIEW_TRANSIT_LINE";

          break;
        case 7005:
          action = @"CANCEL_VIEW_TRANSIT_LINE";

          break;
        case 7006:
          action = @"TAP_TRANSIT_ATTRIBUTION";

          break;
        case 7007:
          action = @"TAP_TRANSIT_ADVISORY";

          break;
        case 7008:
          action = @"MORE_DETAILS_TRANSIT_ADVISORY";

          break;
        case 7009:
          action = @"SUBSCRIBE_LINE_INCIDENT";

          break;
        case 7010:
          action = @"UNSUBSCRIBE_LINE_INCIDENT";

          break;
        case 7011:
          action = @"TAP_NEAREST_STATION";

          break;
        case 7012:
          action = @"TAP_NEAREST_STOP";

          break;
        case 7013:
          action = @"TAP_CONNECTION";

          break;
        case 7014:
          action = @"GET_TICKETS";

          break;
        case 7015:
          action = @"OPEN_SCHEDULECARD_DATETIME";

          break;
        case 7016:
          action = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

          break;
        case 7017:
          action = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

          break;
        case 7018:
          action = @"VIEW_ON_MAP";

          break;
        case 7019:
          action = @"FORCE_UPDATE_DEPARTURE_INFO";

          break;
        case 7020:
          action = @"TAP_TRANSIT_LINE_INFO";

          break;
        case 7021:
          action = @"TAP_ATTRIBUTION_CELL";

          break;
        case 7022:
          action = @"TAP_NEXT_DEPARTURES";

          break;
        case 7023:
          action = @"VIEW_BANNER";

          break;
        case 7024:
          action = @"GET_SHOWTIMES";

          break;
        case 7025:
          action = @"MAKE_APPOINTMENT";

          break;
        case 7026:
          action = @"RESERVE_PARKING";

          break;
        case 7027:
          action = @"RESERVE_ROOM";

          break;
        case 7028:
          action = @"WAITLIST";

          break;
        case 7029:
          action = @"ORDER_TAKEOUT";

          break;
        case 7030:
          action = @"RESERVE";

          break;
        default:
          goto LABEL_198;
      }

      return action;
    }

    if (action <= 8005)
    {
      if (action <= 8002)
      {
        if (action == 8001)
        {
          action = @"INVOKE_SIRI_SNIPPET";
        }

        else
        {
          action = @"INVOKE_SIRI_DISAMBIGUATION";
        }
      }

      else if (action == 8003)
      {
        action = @"SHOW_PLACE_DETAILS";
      }

      else if (action == 8004)
      {
        action = @"ANSWER_REROUTE_SUGGESTION";
      }

      else
      {
        action = @"SUGGEST_NAV_REROUTE";
      }

      return action;
    }

    if (action <= 8008)
    {
      if (action == 8006)
      {
        action = @"GET_NAV_STATUS";
      }

      else if (action == 8007)
      {
        action = @"REPEAT_NAV_STATUS";
      }

      else
      {
        action = @"SELECT_AUDIO_VOLUME_UNMUTE";
      }

      return action;
    }

    switch(action)
    {
      case 0x1F49:
        action = @"INVOKE_SIRI";

        return action;
      case 0x1F4A:
        action = @"DISPLAY_SIRI_ERROR_MESSAGE";

        return action;
      case 0x1F4B:
        action = @"DISPLAY_NO_RESULTS_MESSAGE";

        return action;
    }

LABEL_198:
    action = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_199:

    return action;
  }

  if (action <= 12000)
  {
    switch(action)
    {
      case 10101:
        action = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

        break;
      case 10102:
        action = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

        break;
      case 10103:
        action = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

        break;
      case 10104:
        action = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

        break;
      case 10105:
        action = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

        break;
      case 10106:
        action = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

        break;
      case 10107:
        action = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

        break;
      case 10108:
        action = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

        break;
      case 10109:
        action = @"RAP_CANCEL";

        break;
      case 10110:
        action = @"RAP_NEXT";

        break;
      case 10111:
        action = @"RAP_BACK";

        break;
      case 10112:
        action = @"RAP_SEND";

        break;
      case 10113:
        action = @"RAP_SKIP";

        break;
      case 10114:
        action = @"RAP_SHOW_MORE";

        break;
      case 10115:
        action = @"RAP_ADD_PHOTO";

        break;
      case 10116:
        action = @"RAP_MAP_INCORRECT";

        break;
      case 10117:
        action = @"RAP_BAD_DIRECTIONS";

        break;
      case 10118:
        action = @"RAP_TRANSIT_INFO_INCORRECT";

        break;
      case 10119:
        action = @"RAP_SATELLITE_IMAGE_PROBLEM";

        break;
      case 10120:
        action = @"RAP_SEARCH_RESULTS_INCORRECT";

        break;
      case 10121:
        action = @"RAP_ADD_A_PLACE";

        break;
      case 10122:
        action = @"RAP_HOME";

        break;
      case 10123:
        action = @"RAP_WORK";

        break;
      case 10124:
        action = @"RAP_OTHER";

        break;
      case 10125:
        action = @"RAP_LOCATION";

        break;
      case 10126:
        action = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

        break;
      case 10127:
        action = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

        break;
      case 10128:
        action = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

        break;
      case 10129:
        action = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

        break;
      case 10130:
        action = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

        break;
      case 10131:
        action = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

        break;
      case 10132:
        action = @"RAP_TRANSIT_DELAY";

        break;
      case 10133:
        action = @"RAP_LOCATION_CLOSED";

        break;
      case 10134:
        action = @"RAP_CLOSED_PERMANENTLY";

        break;
      case 10135:
        action = @"RAP_CLOSED_TEMPORARILY";

        break;
      case 10136:
        action = @"RAP_HOURS_HAVE_CHANGED";

        break;
      case 10137:
        action = @"RAP_SELECT_STATION";

        break;
      case 10138:
        action = @"RAP_SELECT_LINE";

        break;
      case 10139:
        action = @"RAP_SELECT_ACCESS_POINT";

        break;
      case 10140:
        action = @"RAP_SELECT_SEARCH";

        break;
      case 10141:
        action = @"RAP_PAN_MAP";

        break;
      case 10142:
        action = @"RAP_CENTER_MAP_ON_USER";

        break;
      case 10143:
        action = @"RAP_SEARCH_UNEXPECTED";

        break;
      case 10144:
        action = @"RAP_ADD_POI";

        break;
      case 10145:
        action = @"RAP_ADD_STREET_ADDRESS";

        break;
      case 10146:
        action = @"RAP_ADD_OTHER";

        break;
      case 10147:
        action = @"RAP_SELECT_CATEGORY";

        break;
      case 10148:
        action = @"RAP_TAKE_PHOTO";

        break;
      case 10149:
        action = @"RAP_RETAKE_PHOTO";

        break;
      case 10150:
        action = @"RAP_PLACE_DETAILS";

        break;
      case 10151:
        action = @"RAP_SATELLITE_IMAGE_OUTDATED";

        break;
      case 10152:
        action = @"RAP_SATELLITE_IMAGE_QUALITY";

        break;
      case 10153:
        action = @"RAP_SELECT_LABEL";

        break;
      case 10154:
        action = @"RAP_SELECT_ROUTE";

        break;
      case 10155:
        action = @"RAP_CLAIM_BUSINESS";

        break;
      case 10156:
        action = @"RAP_BRAND_DETAILS";

        break;
      case 10157:
        action = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

        break;
      case 10158:
        action = @"RAP_LOOK_AROUND_LABELS_STREET";

        break;
      case 10159:
        action = @"RAP_LOOK_AROUND_BLURRING";

        break;
      case 10160:
        action = @"RAP_LOOK_AROUND_REMOVE_HOME";

        break;
      case 10161:
        action = @"RAP_LOOK_AROUND_LABELS_STORE";

        break;
      case 10162:
        action = @"RAP_LOOK_AROUND_PRIVACY";

        break;
      case 10163:
        action = @"RAP_INCORRECT_HOURS";

        break;
      case 10164:
        action = @"RAP_INCORRECT_ADDRESS";

        break;
      case 10165:
        action = @"RAP_EDIT_PLACE_DETAILS";

        break;
      case 10166:
        action = @"RAP_EDIT_PLACE_NAME";

        break;
      case 10167:
        action = @"RAP_EDIT_ADDRESS";

        break;
      case 10168:
        action = @"RAP_ADD_CATEGORY";

        break;
      case 10169:
        action = @"RAP_REMOVE_CATEGORY";

        break;
      case 10170:
        action = @"RAP_DESELECT_CATEGORY";

        break;
      case 10171:
        action = @"RAP_ADD_HOURS";

        break;
      case 10172:
        action = @"RAP_REMOVE_HOURS";

        break;
      case 10173:
        action = @"RAP_TAP_DAY_OF_WEEK";

        break;
      case 10174:
        action = @"RAP_TAP_24_HOURS_BUTTON";

        break;
      case 10175:
        action = @"RAP_TAP_OPEN_TIME";

        break;
      case 10176:
        action = @"RAP_TAP_CLOSED_TIME";

        break;
      case 10177:
        action = @"RAP_TAP_TEMPORARY_CLOSURE";

        break;
      case 10178:
        action = @"RAP_TAP_PERMANENTLY_CLOSED";

        break;
      case 10179:
        action = @"RAP_EDIT_WEBSITE";

        break;
      case 10180:
        action = @"RAP_EDIT_PHONE_NUMBER";

        break;
      case 10181:
        action = @"RAP_TAP_ACCEPTS_APPLE_PAY";

        break;
      case 10182:
        action = @"RAP_ADD_COMMENTS";

        break;
      case 10183:
        action = @"RAP_EDIT_LOCATION";

        break;
      case 10184:
        action = @"RAP_VIEW_LOCATION";

        break;
      case 10185:
        action = @"RAP_ZOOM_IN";

        break;
      case 10186:
        action = @"RAP_ZOOM_OUT";

        break;
      case 10187:
        action = @"RAP_VIEW_ENTRY_POINTS";

        break;
      case 10188:
        action = @"RAP_EDIT_EXISTING_ENTRY_POINT";

        break;
      case 10189:
        action = @"RAP_ADD_NEW_ENTRY_POINT";

        break;
      case 10190:
        action = @"RAP_REMOVE_ENTRY_POINT";

        break;
      case 10191:
        action = @"RAP_SELECT_ENTRY_POINT_TYPE";

        break;
      default:
        switch(action)
        {
          case 9001:
            action = @"TAP_WIDGET_ITEM";

            break;
          case 9002:
            action = @"DISPLAY_NOTIFICATION";

            break;
          case 9003:
            action = @"TAP_NOTIFICATION";

            break;
          case 9004:
            action = @"EXPAND_NOTIFICATION";

            break;
          case 9005:
            action = @"DISMISS_NOTIFICATION";

            break;
          case 9006:
            action = @"OPEN_SEARCH";

            break;
          case 9007:
            action = @"OPEN_PAN_VIEW";

            break;
          case 9008:
            action = @"PAN_LEFT";

            break;
          case 9009:
            action = @"PAN_UP";

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
            action = @"PAN_DOWN";

            break;
          case 9012:
            action = @"TAP_RECENT_DESTINATIONS";

            break;
          case 9013:
            action = @"OPEN_DESTINATIONS";

            break;
          case 9014:
            action = @"OPEN_FAVORITES";

            break;
          case 9015:
            action = @"VIEW_NAV_OPTIONS";

            break;
          case 9016:
            action = @"START_NAV_NO_GUIDANCE";

            break;
          case 9017:
            action = @"TURN_OFF_GUIDANCE";

            break;
          case 9018:
            action = @"TURN_ON_GUIDANCE";

            break;
          case 9019:
            action = @"OPEN_KEYBOARD";

            break;
          case 9020:
            action = @"SHARE_DESTINATION";

            break;
          case 9021:
            action = @"START_NAV_AUTOMATED";

            break;
          case 9022:
            action = @"SHARE_ETA";

            break;
          case 9023:
            action = @"SELECT_GROUP";

            break;
          case 9024:
            action = @"DESELECT_GROUP";

            break;
          case 9025:
            action = @"SELECT_CONTACT";

            break;
          case 9026:
            action = @"DESELECT_CONTACT";

            break;
          case 9027:
            action = @"TAP_VIEW_CONTACTS";

            break;
          case 9028:
            action = @"STOP_RECEIVING_ETA";

            break;
          case 9029:
            action = @"DISPLAY_ANNOUNCEMENT";

            break;
          case 9030:
            action = @"TAP_ANNOUNCEMENT";

            break;
          case 9031:
            action = @"DISPLAY_CYCLING_NOTIFICATION";

            break;
          case 9032:
            action = @"TAP_CYCLING_NOTIFICATION";

            break;
          case 9033:
            action = @"SHARE_CYCLING_ETA";

            break;
          case 9034:
            action = @"MANAGE_NOTIFICATIONS";

            break;
          case 9035:
            action = @"PUNCH_OUT_PUBLISHER_REVIEW";

            break;
          case 9036:
            action = @"SCROLL_FORWARD";

            break;
          case 9037:
            action = @"SCROLL_BACKWARD";

            break;
          case 9038:
            action = @"SHOW_ALL_CURATED_COLLECTIONS";

            break;
          case 9039:
            action = @"TAP_LESS";

            break;
          case 9040:
            action = @"TAP_MORE";

            break;
          case 9101:
            action = @"DISPLAY_ADD_HOME_AND_WORK";

            break;
          case 9102:
            action = @"TAP_ADD_HOME_AND_WORK";

            break;
          case 9103:
            action = @"DISPLAY_ALLOW_FREQUENTS";

            break;
          case 9104:
            action = @"TAP_ALLOW_FREQUENTS";

            break;
          case 9105:
            action = @"DISPLAY_ALLOW_LOCATION";

            break;
          case 9106:
            action = @"TAP_ALLOW_LOCATION";

            break;
          default:
            switch(action)
            {
              case 11001:
                action = @"EXIT_MAPS_LOWER_WRIST";

                break;
              case 11002:
                action = @"TASK_READY";

                break;
              case 11003:
                action = @"TAP_SEARCH";

                break;
              case 11004:
                action = @"TAP_MY_LOCATION";

                break;
              case 11005:
                action = @"SHOW_NEARBY";

                break;
              case 11006:
                action = @"TAP_NEARBY";

                break;
              case 11007:
                action = @"TAP_PROACTIVE";

                break;
              case 11008:
                action = @"FORCE_PRESS";

                break;
              case 11009:
                action = @"TAP_CONTACTS";

                break;
              case 11010:
                action = @"TAP_TRANSIT";

                break;
              case 11011:
                action = @"TAP_DICTATION";

                break;
              case 11012:
                action = @"GET_DIRECTIONS_DRIVING";

                break;
              case 11013:
                action = @"GET_DIRECTIONS_WALKING";

                break;
              case 11014:
                action = @"GET_DIRECTIONS_TRANSIT";

                break;
              case 11015:
                action = @"OPEN_STANDARD_MAP";

                break;
              case 11016:
                action = @"OPEN_TRANSIT_MAP";

                break;
              case 11017:
                action = @"START_NAV_AUTO";

                break;
              case 11018:
                action = @"TAP_RECENT";

                break;
              case 11019:
                action = @"TAP_FAVORITE";

                break;
              case 11020:
                action = @"TAP_SCRIBBLE";

                break;
              case 11021:
                action = @"TAP_VIEW_MAP";

                break;
              case 11022:
                action = @"TAP_VIEW_TBT";

                break;
              case 11023:
                action = @"VIEW_ROUTE_INFO";

                break;
              case 11024:
                action = @"NAV_UNMUTE";

                break;
              case 11025:
                action = @"NAV_MUTE";

                break;
              case 11026:
                action = @"GET_DIRECTIONS_CYCLING";

                break;
              case 11027:
                action = @"TAP_SEARCH_HOME";

                break;
              case 11028:
                action = @"ROUTE_PAUSED_ON_WATCH";

                break;
              case 11029:
                action = @"NEXT_STOP_TAPPED_ON_WATCH";

                break;
              default:
                goto LABEL_198;
            }

            break;
        }

        break;
    }

    return action;
  }

  if (action > 16000)
  {
    switch(action)
    {
      case 17001:
        action = @"START_DRAG";

        break;
      case 17002:
        action = @"CANCEL_DRAG";

        break;
      case 17003:
        action = @"COMPLETE_DRAG";

        break;
      case 17004:
        action = @"START_DROP";

        break;
      case 17005:
        action = @"CANCEL_DROP";

        break;
      case 17006:
        action = @"COMPLETE_DROP";

        break;
      case 17007:
        action = @"ANNOTATION_SELECT";

        break;
      case 17008:
        action = @"ANNOTATION_SELECT_AUTO";

        break;
      case 17009:
        action = @"ANNOTATION_SELECT_LIST";

        break;
      case 17010:
        action = @"BROWSE_TOP_CATEGORY_DISPLAYED";

        break;
      case 17011:
        action = @"CALLOUT_FLYOVER_TOUR";

        break;
      case 17012:
        action = @"CALLOUT_INFO";

        break;
      case 17013:
        action = @"CALLOUT_NAV_TRANSIT";

        break;
      case 17014:
        action = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

        break;
      case 17015:
        action = @"CALLOUT_VIEW_TRANSIT_LINE";

        break;
      case 17016:
        action = @"DIRECTIONS_SELECT";

        break;
      case 17017:
        action = @"DIRECTIONS_TRANSIT_CUSTOM";

        break;
      case 17018:
        action = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

        break;
      case 17019:
        action = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

        break;
      case 17020:
        action = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

        break;
      case 17021:
        action = @"DIRECTIONS_TRANSIT_LATER";

        break;
      case 17022:
        action = @"DIRECTIONS_TRANSIT_NOW";

        break;
      case 17023:
        action = @"FLYOVER_NOTIFICATION_DISMISS";

        break;
      case 17024:
        action = @"FLYOVER_NOTIFICATION_START";

        break;
      case 17025:
        action = @"FLYOVER_TOUR_COMPLETED";

        break;
      case 17026:
        action = @"FLYOVER_TOUR_END";

        break;
      case 17027:
        action = @"FLYOVER_TOUR_NOTIFICATION";

        break;
      case 17028:
        action = @"FLYOVER_TOUR_START";

        break;
      case 17029:
        action = @"INFO_BOOKMARKS";

        break;
      case 17030:
        action = @"INFO_CARD_DETACHED";

        break;
      case 17031:
        action = @"INFO_CONTACTS";

        break;
      case 17032:
        action = @"INFO_DIRECTIONS";

        break;
      case 17033:
        action = @"INFO_DIRECTIONS_FROM";

        break;
      case 17034:
        action = @"INFO_DIRECTIONS_TO";

        break;
      case 17035:
        action = @"INFO_DISMISS";

        break;
      case 17036:
        action = @"INFO_INFO";

        break;
      case 17037:
        action = @"INFO_PHOTOS";

        break;
      case 17038:
        action = @"INFO_REVIEWS";

        break;
      case 17039:
        action = @"INFO_SHARE";

        break;
      case 17040:
        action = @"INFO_SHARE_AIRDROP";

        break;
      case 17041:
        action = @"INFO_SHARE_FACEBOOK";

        break;
      case 17042:
        action = @"INFO_SHARE_MAIL";

        break;
      case 17043:
        action = @"INFO_SHARE_MESSAGE";

        break;
      case 17044:
        action = @"INFO_SHARE_TENCENTWEIBO";

        break;
      case 17045:
        action = @"INFO_SHARE_WEIBO";

        break;
      case 17046:
        action = @"INFO_YELP";

        break;
      case 17047:
        action = @"MAPS_APP_LAUNCH";

        break;
      case 17048:
        action = @"MAP_3D_OFF";

        break;
      case 17049:
        action = @"MAP_3D_ON";

        break;
      case 17050:
        action = @"MAP_OPTIONS_DROP_PIN";

        break;
      case 17051:
        action = @"MAP_OPTIONS_HYBRID";

        break;
      case 17052:
        action = @"MAP_OPTIONS_PRINT";

        break;
      case 17053:
        action = @"MAP_OPTIONS_REMOVE_PIN";

        break;
      case 17054:
        action = @"MAP_OPTIONS_SATELLITE";

        break;
      case 17055:
        action = @"MAP_OPTIONS_STANDARD";

        break;
      case 17056:
        action = @"MAP_OPTIONS_TRAFFIC_HIDE";

        break;
      case 17057:
        action = @"MAP_OPTIONS_TRAFFIC_SHOW";

        break;
      case 17058:
        action = @"MAP_OPTIONS_TRANSIT";

        break;
      case 17059:
        action = @"MAP_TAP_FLYOVER_CITY";

        break;
      case 17060:
        action = @"MAP_TAP_LINE";

        break;
      case 17061:
        action = @"MAP_TAP_POI_TRANSIT";

        break;
      case 17062:
        action = @"MAP_TAP_TRAFFIC_INCIDENT";

        break;
      case 17063:
        action = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

        break;
      case 17064:
        action = @"MAP_USER_TRACKING_OFF";

        break;
      case 17065:
        action = @"MAP_USER_TRACKING_ON";

        break;
      case 17066:
        action = @"MAP_USER_TRACKING_WITH_HEADING_ON";

        break;
      case 17067:
        action = @"NAV_CLEAR";

        break;
      case 17068:
        action = @"NAV_LIST";

        break;
      case 17069:
        action = @"NAV_ROUTE_STEP_NEXT";

        break;
      case 17070:
        action = @"NAV_ROUTE_STEP_PREV";

        break;
      case 17071:
        action = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

        break;
      case 17072:
        action = @"ORB_DISPLAY_MENU";

        break;
      case 17073:
        action = @"ORB_MENU_CALL";

        break;
      case 17074:
        action = @"ORB_MENU_DIRECTIONS";

        break;
      case 17075:
        action = @"ORB_MENU_DISMISS";

        break;
      case 17076:
        action = @"ORB_MENU_SHARE";

        break;
      case 17077:
        action = @"ORB_MENU_SHOW_PLACECARD";

        break;
      case 17078:
        action = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

        break;
      case 17079:
        action = @"ORB_MENU_URL";

        break;
      case 17080:
        action = @"ORB_PRESS";

        break;
      case 17081:
        action = @"ORB_SPRINGBOARD_MARK_LOCATION";

        break;
      case 17082:
        action = @"ORB_SPRINGBOARD_SEARCH";

        break;
      case 17083:
        action = @"ORB_SPRINGBOARD_SHARE_LOCATION";

        break;
      case 17084:
        action = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

        break;
      case 17085:
        action = @"RAP_PERMISSION_CANCEL";

        break;
      case 17086:
        action = @"RAP_PERMISSION_EMAIL_NA";

        break;
      case 17087:
        action = @"RAP_PERMISSION_EMAIL_OK";

        break;
      case 17088:
        action = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

        break;
      case 17089:
        action = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

        break;
      case 17090:
        action = @"RAP_PERMISSION_OK";

        break;
      case 17091:
        action = @"SEARCH_BEGIN";

        break;
      case 17092:
        action = @"SEARCH_CANCEL";

        break;
      case 17093:
        action = @"SEARCH_SELECT";

        break;
      case 17094:
        action = @"TRANSIT_LINE_SELECTION_DISMISS";

        break;
      case 17095:
        action = @"TRANSIT_LINE_SELECTION_VIEW";

        break;
      case 17096:
        action = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

        break;
      case 17097:
        action = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

        break;
      case 17098:
        action = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

        break;
      case 17099:
        action = @"UNKNOWN_ACTION";

        break;
      case 17100:
        action = @"INFO_SHARE_TWITTER";

        break;
      case 17101:
        action = @"INFO_TAP_POPULAR_APP_NEARBY";

        break;
      case 17102:
        action = @"INFO_DIRECTIONS_WALK";

        break;
      case 17103:
        action = @"INFO_DIRECTIONS_TRANSIT";

        break;
      case 17104:
        action = @"INFO_DIRECTIONS_DRIVE";

        break;
      case 17105:
        action = @"INFO_REPORT_A_PROBLEM";

        break;
      case 17106:
        action = @"CALLOUT_NAV";

        break;
      case 17107:
        action = @"RAP_PERMISSION_EMAIL_CANCEL";

        break;
      case 17108:
        action = @"MAP_TAP_POI";

        break;
      default:
        if (action == 16001)
        {
          action = @"SEARCH_IN_MAPS";
        }

        else
        {
          if (action != 90010)
          {
            goto LABEL_198;
          }

          action = @"PAN_RIGHT";
        }

        break;
    }

    return action;
  }

  if (action <= 13004)
  {
    if (action <= 12007)
    {
      if (action <= 12003)
      {
        if (action == 12001)
        {
          action = @"VIEW_MORE_OPTIONS";
        }

        else if (action == 12002)
        {
          action = @"SELECT_TIME";
        }

        else
        {
          action = @"SHOW_NEXT_AVAILABLE";
        }
      }

      else if (action > 12005)
      {
        if (action == 12006)
        {
          action = @"EDIT_BOOKING";
        }

        else
        {
          action = @"EDIT_PHONE";
        }
      }

      else if (action == 12004)
      {
        action = @"DECREASE_TABLE_SIZE";
      }

      else
      {
        action = @"INCREASE_TABLE_SIZE";
      }

      return action;
    }

    if (action > 13000)
    {
      if (action > 13002)
      {
        if (action == 13003)
        {
          action = @"SELECT_LABEL";
        }

        else
        {
          action = @"DELETE_ADDRESS";
        }
      }

      else if (action == 13001)
      {
        action = @"SELECT_ADDRESS";
      }

      else
      {
        action = @"ADD_ADDRESS";
      }

      return action;
    }

    switch(action)
    {
      case 0x2EE8:
        action = @"ADD_SPECIAL_REQUEST";

        return action;
      case 0x2EE9:
        action = @"CHANGE_RESERVATION";

        return action;
      case 0x2EEA:
        action = @"LEARN_MORE";

        return action;
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
          action = @"BOOK_RIDE";
        }

        else
        {
          action = @"REQUEST_RIDE";
        }
      }

      else if (action == 14001)
      {
        action = @"VIEW_APP";
      }

      else
      {
        action = @"ENABLE";
      }

      return action;
    }

    switch(action)
    {
      case 0x32CD:
        action = @"EDIT_ITEMS";

        return action;
      case 0x32CE:
        action = @"RAP_FAVORITES";

        return action;
      case 0x32CF:
        action = @"SORT_LIST_ITEM";

        return action;
    }

    goto LABEL_198;
  }

  if (action <= 14008)
  {
    if (action > 14006)
    {
      if (action == 14007)
      {
        action = @"ENABLE_ALL_RIDESHARE_APPS";
      }

      else
      {
        action = @"TAP_FOR_MORE_RIDES";
      }
    }

    else if (action == 14005)
    {
      action = @"CONTACT_DRIVER";
    }

    else
    {
      action = @"CHANGE_PAYMENT";
    }

    return action;
  }

  if (action > 15001)
  {
    if (action == 15002)
    {
      action = @"ORB_POP";

      return action;
    }

    if (action == 15003)
    {
      action = @"ORB_DISMISS";

      return action;
    }

    goto LABEL_198;
  }

  if (action != 14009)
  {
    if (action == 15001)
    {
      action = @"ORB_PEEK";

      return action;
    }

    goto LABEL_198;
  }

  action = @"SUBMIT_TRIP_FEEDBACK";

  return action;
}

- (id)_whiteListedSearchActionAsString:(int)string
{
  if (string == 2014)
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
            action = @"TAP_DIRECTIONS";
          }

          else if (action == 1502)
          {
            action = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            action = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(action)
          {
            case 2001:
              action = @"TAP_SEARCH_FIELD";

              return action;
            case 2002:
              action = @"CLEAR_SEARCH";

              return action;
            case 2003:
              action = @"CANCEL_SEARCH";

              return action;
            case 2004:
              action = @"TAP_BROWSE_TOP_CATEGORY";

              return action;
            case 2005:
              action = @"TAP_BROWSE_SUB_CATEGORY";

              return action;
            case 2006:
              action = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

              return action;
            case 2007:
              action = @"TAP_LIST_ITEM";

              return action;
            case 2008:
              action = @"SHARE_LIST_ITEM";

              return action;
            case 2009:
              action = @"DELETE_LIST_ITEM";

              return action;
            case 2010:
              action = @"EDIT_LIST_ITEM";

              return action;
            case 2011:
              action = @"REFRESH_SEARCH";

              return action;
            case 2012:
              action = @"REVEAL_LIST_ITEM_ACTIONS";

              return action;
            case 2013:
              action = @"HIDE_LIST_ITEM_ACTIONS";

              return action;
            case 2014:
              action = @"TAP_SEARCH_BUTTON";

              return action;
            case 2015:
              action = @"SHOW_SEARCH_RESULTS";

              return action;
            case 2016:
              action = @"SHOW_REFRESH_SEARCH";

              return action;
            case 2017:
              action = @"PASTE_TEXT";

              return action;
            case 2018:
              action = @"TAP_LIST_SUB_ITEM";

              return action;
            case 2019:
              action = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2020:
              action = @"TAP_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2021:
              action = @"CLOSE_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2022:
              action = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2023:
              action = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2024:
              action = @"RETAINED_QUERY";

              return action;
            case 2025:
              action = @"TAP_RECENT_AC_SUGGESTION";

              return action;
            case 2026:
              action = @"CLEAR_RECENT_AC_SUGGESTION";

              return action;
            case 2027:
              action = @"DELETE_RECENT_AC_SUGGESTION";

              return action;
            case 2028:
            case 2029:
              goto LABEL_195;
            case 2030:
              action = @"TAP_BROWSE_NEARBY_CATEGORY";

              return action;
            case 2031:
              action = @"TAP_SUBACTION";

              return action;
            case 2032:
              action = @"TAP_QUERY_BUILDING_ARROW";

              return action;
            case 2033:
              action = @"CLICK_ON_EDIT_SEARCH";

              return action;
            case 2034:
              action = @"REMOVE_CLIENT_AC_SUGGESTION";

              return action;
            case 2035:
              action = @"SHARE_CLIENT_AC_SUGGESTION";

              return action;
            case 2036:
              action = @"TAP_ON_MORE_RESULTS";

              return action;
            case 2037:
              action = @"SHARE_ITEM";

              return action;
            case 2038:
              action = @"HIDE_ITEM";

              return action;
            case 2039:
              action = @"TAP_SUGGESTED_ITEM";

              return action;
            case 2040:
              action = @"SHARE_SUGGESTED_ITEM";

              return action;
            case 2041:
              action = @"HIDE_SUGGESTED_ITEM";

              return action;
            case 2042:
              action = @"ADD_HOME_FAVORITE";

              return action;
            case 2043:
              action = @"ADD_WORK_FAVORITE";

              return action;
            case 2044:
              action = @"ADD_FAVORITE";

              return action;
            case 2045:
              action = @"VIEW_FAVORITES_LIST";

              return action;
            case 2046:
              action = @"TAP_HOME_FAVORITE";

              return action;
            case 2047:
              action = @"TAP_WORK_FAVORITE";

              return action;
            case 2048:
              action = @"TAP_CAR_FAVORITE";

              return action;
            case 2049:
              action = @"TAP_FAVORITE_ITEM";

              return action;
            case 2050:
              action = @"CREATE_HOME_FAVORITE";

              return action;
            case 2051:
              action = @"CREATE_WORK_FAVORITE";

              return action;
            case 2052:
              action = @"CREATE_FAVORITE";

              return action;
            case 2053:
              action = @"SUBMIT_FAVORITE_EDIT";

              return action;
            case 2054:
              action = @"ADD_RECOMMENDED_FAVORITE";

              return action;
            case 2055:
              action = @"EDIT_FAVORITE";

              return action;
            case 2056:
              action = @"REMOVE_FAVORITE";

              return action;
            case 2057:
              action = @"SHARE_FAVORITE";

              return action;
            case 2058:
              action = @"EDIT_FAVORITES";

              return action;
            case 2059:
              action = @"ADD_FAVORITE_PLACE";

              return action;
            case 2060:
              action = @"REMOVE_FAVORITE_PLACE";

              return action;
            case 2061:
              action = @"CHANGE_HOME_ADDRESS";

              return action;
            case 2062:
              action = @"CHANGE_WORK_ADDRESS";

              return action;
            case 2063:
              action = @"REFINE_LOCATION";

              return action;
            case 2064:
              action = @"TAP_RECENTLY_VIEWED_ITEM";

              return action;
            case 2065:
              action = @"SHOW_COLLECTION_LIST";

              return action;
            case 2066:
              action = @"SHOW_FAVORITES_COLLECTION";

              return action;
            case 2067:
              action = @"SHOW_COLLECTION";

              return action;
            case 2068:
              action = @"TAP_COLLECTION_ITEM";

              return action;
            case 2069:
              action = @"SHARE_COLLECTION_ITEM";

              return action;
            case 2070:
              action = @"REMOVE_COLLECTION_ITEM";

              return action;
            case 2071:
              action = @"SAVE_SHARED_COLLECTION";

              return action;
            case 2072:
              action = @"CREATE_NEW_COLLECTION";

              return action;
            case 2073:
              action = @"SAVE_TO_COLLECTION";

              return action;
            case 2074:
              action = @"EDIT_PHOTO";

              return action;
            case 2075:
              action = @"SORT_BY_NAME";

              return action;
            case 2076:
              action = @"SORT_BY_DISTANCE";

              return action;
            case 2077:
              action = @"SORT_BY_RECENT";

              return action;
            case 2078:
              action = @"AUTO_SHARE_ETA";

              return action;
            case 2079:
              action = @"CANCEL_AUTO_SHARE_ETA";

              return action;
            case 2080:
              action = @"MAP_SEARCH";

              return action;
            case 2081:
              action = @"DELETE_COLLECTION";

              return action;
            case 2082:
              action = @"SHARE_COLLECTION";

              return action;
            case 2083:
              action = @"SHOW_TRANSIT_LINES_COLLECTION";

              return action;
            case 2084:
              action = @"SHOW_MY_PLACES";

              return action;
            case 2085:
              action = @"SHOW_ALL_PLACES";

              return action;
            case 2086:
              action = @"TAP_RECENT_QUERY";

              return action;
            case 2087:
              action = @"TAP_QUERY_SUGGESTION";

              return action;
            case 2088:
              action = @"DELETE_CURATED_COLLECTION";

              return action;
            case 2089:
              action = @"FOLLOW";

              return action;
            case 2090:
              action = @"PUNCH_IN";

              return action;
            case 2091:
              action = @"SAVE_CURATED_COLLECTION";

              return action;
            case 2092:
              action = @"SCROLL_LEFT_COLLECTIONS";

              return action;
            case 2093:
              action = @"SCROLL_RIGHT_COLLECTIONS";

              return action;
            case 2094:
              action = @"SEE_ALL_CURATED_COLLECTION";

              return action;
            case 2095:
              action = @"SEE_ALL_PUBLISHERS";

              return action;
            case 2096:
              action = @"SHARE_CURATED_COLLECTION";

              return action;
            case 2097:
              action = @"SHARE_PUBLISHER";

              return action;
            case 2098:
              action = @"SHOW_MORE_COLLECTION";

              return action;
            case 2099:
              action = @"TAP_CURATED_COLLECTION";

              return action;
            case 2100:
              action = @"TAP_FEATURED_COLLECTIONS";

              return action;
            case 2101:
              action = @"TAP_LOCATION";

              return action;
            case 2102:
              action = @"TAP_PUBLISHER";

              return action;
            case 2103:
              action = @"TAP_PUBLISHER_APP";

              return action;
            case 2104:
              action = @"TAP_PUBLISHER_COLLECTIONS";

              return action;
            case 2105:
              action = @"UNFOLLOW";

              return action;
            case 2106:
              action = @"CHANGE_SCHOOL_ADDRESS";

              return action;
            case 2107:
              action = @"ADD_VEHICLE";

              return action;
            case 2108:
              action = @"DISPLAY_VIRTUAL_GARAGE";

              return action;
            case 2109:
              action = @"ENTER_VIRTUAL_GARAGE";

              return action;
            case 2110:
              action = @"PUNCH_OUT_MANUFACTURER_APP";

              return action;
            case 2111:
              action = @"REMOVE_LICENSE_PLATE";

              return action;
            case 2112:
              action = @"REMOVE_VEHICLE";

              return action;
            case 2113:
              action = @"SELECT_VEHICLE";

              return action;
            case 2114:
              action = @"SUBMIT_LICENSE_PLATE";

              return action;
            case 2115:
              action = @"TAP_ADD_LICENSE_PLATE";

              return action;
            case 2116:
              action = @"TAP_ADD_NEW_CAR";

              return action;
            case 2117:
              action = @"TAP_BANNER";

              return action;
            case 2118:
              action = @"TAP_CONNECT";

              return action;
            case 2119:
              action = @"TAP_CONTINUE";

              return action;
            case 2120:
              action = @"TAP_EDIT";

              return action;
            case 2121:
              action = @"TAP_NAME";

              return action;
            case 2122:
              action = @"TAP_NOT_NOW";

              return action;
            case 2123:
              action = @"TAP_OTHER_VEHICLE";

              return action;
            case 2124:
              action = @"TAP_REMOVE_LICENSE_PLATE";

              return action;
            case 2125:
              action = @"TAP_UPDATE_PLATE_NUMBER";

              return action;
            case 2126:
              action = @"TAP_VEHICLE";

              return action;
            case 2127:
              action = @"TAP_VEHICLE_NAME";

              return action;
            case 2128:
              action = @"UPDATE_NAME";

              return action;
            case 2129:
              action = @"DONE_TAKING_PHOTO";

              return action;
            case 2130:
              action = @"ENABLE_SHOW_PHOTO_NAME";

              return action;
            case 2131:
              action = @"SUBMIT_PHOTO";

              return action;
            case 2132:
              action = @"USE_PHOTO";

              return action;
            case 2133:
              action = @"ADD_RECOMMENDATION_TO_MAPS";

              return action;
            case 2134:
              action = @"CANCEL_PHOTO_SUBMISSION";

              return action;
            case 2135:
              action = @"CLOSE_RECOMMENDATION_CARD";

              return action;
            case 2136:
              action = @"EDIT_RATING";

              return action;
            case 2137:
              action = @"PROMPTED_TO_ADD_PHOTO";

              return action;
            case 2138:
              action = @"PROMPTED_TO_ADD_RATING";

              return action;
            case 2139:
              action = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

              return action;
            case 2140:
              action = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

              return action;
            case 2141:
              action = @"RETAKE_PHOTO";

              return action;
            case 2142:
              action = @"REVEAL_RECOMMENDATION_CARD";

              return action;
            case 2143:
              action = @"SUBMIT_NEGATIVE_RATING";

              return action;
            case 2144:
              action = @"SUBMIT_POSITIVE_RATING";

              return action;
            case 2145:
              action = @"TAP_CHOOSING_PHOTO";

              return action;
            case 2146:
              action = @"TAP_TAKE_NEW_PHOTO";

              return action;
            case 2147:
              action = @"TAP_TO_ADD_PHOTO";

              return action;
            case 2148:
              action = @"CANCEL_INCIDENT_REPORT";

              return action;
            case 2149:
              action = @"INCIDENT_REPORT_SUBMITTED";

              return action;
            case 2150:
              action = @"REPORTED_INCIDENT_NOT_RECEIVED";

              return action;
            case 2151:
              action = @"REPORTED_INCIDENT_RECEIVED";

              return action;
            case 2152:
              action = @"REPORT_INCIDENT";

              return action;
            case 2153:
              action = @"SELECT_INCIDENT_TYPE";

              return action;
            case 2154:
              action = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

              return action;
            case 2155:
              action = @"TAP_TO_START_REPORT_INCIDENT";

              return action;
            case 2156:
              action = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

              return action;
            case 2157:
              action = @"ATTEMPT_VLF_CORRECTION";

              return action;
            case 2158:
              action = @"DISMISS_VLF_PROMPT";

              return action;
            case 2159:
              action = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

              return action;
            case 2160:
              action = @"VLF_CORRECTION_FAILED";

              return action;
            case 2161:
              action = @"VLF_CORRECTION_SUCCESSFUL";

              return action;
            case 2162:
              action = @"ENABLE_WIDGET_SUGGESTIONS";

              return action;
            case 2163:
              action = @"DISPLAY_CZ_ADVISORY";

              return action;
            case 2164:
              action = @"PUNCH_OUT_URL_PAY";

              return action;
            case 2165:
              action = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

              return action;
            case 2166:
              action = @"DELETE_ITEM";

              return action;
            case 2167:
              action = @"CANCEL_REMOVE";

              return action;
            case 2168:
              action = @"DELETE_SUGGESTION";

              return action;
            case 2169:
              action = @"ADD_SCHOOL_FAVORITE";

              return action;
            case 2170:
              action = @"GO_TO_WEBSITE";

              return action;
            case 2171:
              action = @"TRY_AGAIN";

              return action;
            case 2172:
              action = @"CHECK_AUTO_RECORD_WORKOUT";

              return action;
            case 2173:
              action = @"CHECK_EBIKE";

              return action;
            case 2174:
              action = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

              return action;
            case 2175:
              action = @"DISPLAY_CYCLING_DEFAULT_OPTION";

              return action;
            case 2176:
              action = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

              return action;
            case 2177:
              action = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

              return action;
            case 2178:
              action = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

              return action;
            case 2179:
              action = @"TAP_AUTOMATIC_WORKOUT_OPTION";

              return action;
            case 2180:
              action = @"TAP_CYCLING_DEFAULT_OPTION";

              return action;
            case 2181:
              action = @"TAP_CYCLING_NO_BIKE_ADVISORY";

              return action;
            case 2182:
              action = @"TAP_CYCLING_STAIRS_ADVISORY";

              return action;
            case 2183:
              action = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

              return action;
            case 2184:
              action = @"UNCHECK_AUTO_RECORD_WORKOUT";

              return action;
            case 2185:
              action = @"UNCHECK_EBIKE";

              return action;
            case 2186:
              action = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

              return action;
            case 2187:
              action = @"DISPLAY_LPR_ADVISORY";

              return action;
            case 2188:
              action = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

              return action;
            case 2189:
              action = @"CREATE_WIDGET";

              return action;
            case 2190:
              action = @"REVEAL_WIDGET_TRAY";

              return action;
            case 2191:
              action = @"LPR_ERROR_CODE";

              return action;
            case 2192:
              action = @"TAP_SEE_ALL_RECENTLY_VIEWED";

              return action;
            case 2193:
              action = @"TAP_CLEAR_RECENTLY_VIEWED";

              return action;
            case 2194:
              action = @"LPR_HARD_STOP";

              return action;
            case 2195:
              action = @"TAP_PUBLISHER_SUBACTION";

              return action;
            case 2196:
              action = @"CARPLAY_DISPLAY_ACTIVATED";

              return action;
            case 2197:
              action = @"CARPLAY_DISPLAY_DEACTIVATED";

              return action;
            case 2198:
              action = @"TAP_FEATURED_COLLECTION";

              return action;
            case 2199:
              action = @"SCROLL_FEATURED_COLLECTION_FORWARD";

              return action;
            case 2200:
              action = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

              return action;
            default:
              if (action == 1504)
              {
                action = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (action != 1505)
                {
                  goto LABEL_195;
                }

                action = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        action = @"UI_ACTION_UNKNOWN";
        switch(action)
        {
          case 0:
            goto LABEL_196;
          case 1:
            action = @"PULL_UP";

            break;
          case 2:
            action = @"PULL_DOWN";

            break;
          case 3:
            action = @"TAP";

            break;
          case 4:
            action = @"CLOSE";

            break;
          case 5:
            action = @"SWIPE_PREV";

            break;
          case 6:
            action = @"SWIPE_NEXT";

            break;
          case 7:
            action = @"SCROLL_UP";

            break;
          case 8:
            action = @"SCROLL_DOWN";

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
            action = @"SHOW_MORE";

            break;
          case 11:
            action = @"SHOW_LESS";

            break;
          case 12:
            action = @"SWIPE_LEFT";

            break;
          case 13:
            action = @"SWIPE_RIGHT";

            break;
          case 14:
            action = @"MINIMIZE";

            break;
          case 15:
            action = @"TAP_PREV";

            break;
          case 16:
            action = @"TAP_NEXT";

            break;
          case 17:
            action = @"SUBMIT";

            break;
          case 18:
            action = @"CANCEL";

            break;
          case 19:
            action = @"ENTER_MAPS";

            break;
          case 20:
            action = @"EXIT_MAPS";

            break;
          case 21:
            action = @"REVEAL";

            break;
          case 22:
            action = @"OPEN_NEW_TAB";

            break;
          case 25:
            action = @"BACK";

            break;
          case 26:
            action = @"ACTIVATE";

            break;
          case 27:
            action = @"DEACTIVATE";

            break;
          case 28:
            action = @"AGREE";

            break;
          case 29:
            action = @"DISAGREE";

            break;
          case 30:
            action = @"SKIP_ANSWER";

            break;
          case 31:
            action = @"EXPAND";

            break;
          case 32:
            action = @"COLLAPSE";

            break;
          case 33:
            action = @"ENTER";

            break;
          case 34:
            action = @"EXIT";

            break;
          case 35:
            action = @"SCROLL_UP_INDEX_BAR";

            break;
          case 36:
            action = @"SCROLL_DOWN_INDEX_BAR";

            break;
          case 37:
            action = @"TOGGLE_ON";

            break;
          case 38:
            action = @"TOGGLE_OFF";

            break;
          case 39:
            action = @"LONG_PRESS";

            break;
          case 40:
            action = @"CLICK";

            break;
          case 41:
            action = @"TAP_DONE";

            break;
          case 42:
            action = @"TAP_CLOSE";

            break;
          case 43:
            action = @"SCROLL_LEFT";

            break;
          case 44:
            action = @"SCROLL_RIGHT";

            break;
          case 45:
            action = @"DISPLAY";

            break;
          case 46:
            action = @"OPEN_IN_APP";

            break;
          case 47:
            action = @"CONCEAL";

            break;
          case 48:
            action = @"TAP_DELETE";

            break;
          case 49:
            action = @"TAP_FILTER";

            break;
          case 50:
            action = @"TAP_SECONDARY_BUTTON";

            break;
          case 51:
            action = @"TAP_WIDGET_FOOD";

            break;
          case 52:
            action = @"TAP_WIDGET_GAS";

            break;
          case 53:
            action = @"TAP_WIDGET_LOADING";

            break;
          case 54:
            action = @"TAP_WIDGET_SEARCH";

            break;
          case 55:
            action = @"TAP_WIDGET_STORES";

            break;
          case 56:
            action = @"DISPLAY_ALLOW_ONCE_PROMPT";

            break;
          case 57:
            action = @"SHARE_CURRENT_LOCATION";

            break;
          case 58:
            action = @"SHARE_PHOTO";

            break;
          case 59:
            action = @"TAP_KEEP_OFF";

            break;
          case 60:
            action = @"TAP_PHOTO_CATEGORY";

            break;
          case 61:
            action = @"TAP_PRECISE_LOCATION_OFF_BANNER";

            break;
          case 62:
            action = @"TAP_TURN_ON";

            break;
          case 63:
            action = @"DISPLAY_CYCLING_ANNOTATION";

            break;
          case 64:
            action = @"DISPLAY_DRIVING_DEFAULT_OPTION";

            break;
          case 65:
            action = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

            break;
          case 66:
            action = @"DISPLAY_WALKING_DEFAULT_OPTION";

            break;
          case 67:
            action = @"TAP_CYCLING_ANNOTATION";

            break;
          case 68:
            action = @"TAP_DRIVING_DEFAULT_OPTION";

            break;
          case 69:
            action = @"TAP_TRANSIT_DEFAULT_OPTION";

            break;
          case 70:
            action = @"TAP_WALKING_DEFAULT_OPTION";

            break;
          case 71:
            action = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

            break;
          case 72:
            action = @"TAP_RIDESHARE_DEFAULT_OPTION";

            break;
          case 73:
            action = @"TAP_PERSONAL_COLLECTION";

            break;
          case 74:
            action = @"RESUME_ROUTE";

            break;
          case 75:
            action = @"DISPLAY_OUT_OF_RANGE_ALERT";

            break;
          case 76:
            action = @"TAP_ALLOW_ONCE";

            break;
          case 77:
            action = @"TAP_DO_NOT_ALLOW";

            break;
          case 78:
            action = @"ADD_RECCOMENDED_FAVORITE";

            break;
          case 79:
            action = @"ADD_RECOMMENDED_HOME_FAVORITE";

            break;
          case 80:
            action = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 81:
            action = @"ADD_RECOMMENDED_WORK_FAVORITE";

            break;
          case 82:
            action = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

            break;
          case 83:
            action = @"CREATE_SCHOOL_FAVORITE";

            break;
          case 84:
            action = @"TAP_SCHOOL_FAVORITE";

            break;
          case 85:
            action = @"SELECT_ROUTING_TYPE_CYCLING";

            break;
          case 86:
            action = @"REPORT_PHOTO";

            break;
          case 87:
            action = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

            break;
          case 88:
            action = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

            break;
          case 89:
            action = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

            break;
          case 90:
            action = @"CREATE_RECOMMENDED_FAVORITE";

            break;
          case 91:
            action = @"CREATE_RECOMMENDED_HOME_FAVORITE";

            break;
          case 92:
            action = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 93:
            action = @"CREATE_RECOMMENDED_WORK_FAVORITE";

            break;
          case 94:
            action = @"TAP_SMALL_WIDGET_ITEM";

            break;
          case 95:
            action = @"TAP_MEDIUM_WIDGET_ITEM";

            break;
          case 96:
            action = @"TAP_LARGE_WIDGET_ITEM";

            break;
          case 97:
            action = @"DISPLAY_ARP_TIPKIT";

            break;
          case 98:
            action = @"NEXT";

            break;
          case 99:
            action = @"TAP_RATE_AND_ADD_PHOTOS";

            break;
          case 100:
            action = @"TAP_TO_ADD_POSITIVE_RATING";

            break;
          case 101:
            action = @"TAP_TO_ADD_NEGATIVE_RATING";

            break;
          case 102:
            action = @"TAP_ACTIVE_SHARING_NOTIFICATION";

            break;
          case 103:
            action = @"INVOKE_SIRI_PROMPT";

            break;
          case 104:
            action = @"ETA_SHARED_SUCCESSFULLY";

            break;
          case 105:
            action = @"ENDED_ETA_SHARE_SUCCESSFULLY";

            break;
          case 106:
            action = @"CLEAR_INCIDENT";

            break;
          case 107:
            action = @"CONFIRM_INCIDENT";

            break;
          case 108:
            action = @"DISMISS_INCIDENT";

            break;
          case 109:
            action = @"INCIDENT_ALERT_TIMEOUT";

            break;
          case 110:
            action = @"INCIDENT_ALERT_TRAY_SHOWN";

            break;
          case 111:
            action = @"INCIDENT_CARD_SHOWN";

            break;
          case 112:
            action = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

            break;
          case 113:
            action = @"INCIDENT_REPORT_TRAY_SHOWN";

            break;
          case 114:
            action = @"NAV_TRAY_DISCOVERY_SHOWN";

            break;
          case 115:
            action = @"TAP_TO_REPORT_INCIDENT";

            break;
          case 116:
            action = @"TAP_SHORTCUT";

            break;
          case 117:
            action = @"BLOCK_CONTACT";

            break;
          case 118:
            action = @"TAP_TO_ADD_RATING";

            break;
          case 119:
            action = @"AR_WALKING_LOCALIZATION_FAILED";

            break;
          case 120:
            action = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

            break;
          case 121:
            action = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

            break;
          case 122:
            action = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

            break;
          case 123:
            action = @"ATTEMPT_AR_WALKING_LOCALIZATION";

            break;
          case 124:
            action = @"RAISE_TO_ENTER_AR_WALKING";

            break;
          case 125:
            action = @"TAP_DISMISS";

            break;
          case 126:
            action = @"TAP_ENTER_AR_WALKING";

            break;
          case 127:
            action = @"TAP_OK";

            break;
          case 128:
            action = @"TAP_TRY_AGAIN";

            break;
          case 129:
            action = @"TAP_TURN_ON_IN_SETTINGS";

            break;
          case 130:
            action = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

            break;
          case 131:
            action = @"VLF_CORRECTION_USER_ABANDON";

            break;
          case 132:
            action = @"AREA_EVENTS_ALERT";

            break;
          case 133:
            action = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

            break;
          case 134:
            action = @"ACCEPT_EVENT_REROUTE";

            break;
          case 135:
            action = @"DISPLAY_AREA_EVENTS_ADVISORY";

            break;
          case 136:
            action = @"DISMISS_EVENT_REROUTE";

            break;
          case 137:
            action = @"PUNCH_OUT_EVENTS_LINK";

            break;
          case 138:
            action = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

            break;
          case 139:
            action = @"ADJUST_GUIDANCE_SETTINGS";

            break;
          case 140:
            action = @"HIDE_DETAILS";

            break;
          case 141:
            action = @"SELECT_VOICE_GUIDANCE_ON";

            break;
          case 142:
            action = @"SELECT_VOICE_GUIDANCE_OFF";

            break;
          case 143:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

            break;
          case 144:
            action = @"TAP_TEXT_LABEL";

            break;
          case 145:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

            break;
          case 146:
            action = @"TAP_EXIT";

            break;
          case 147:
            action = @"TAP_CITY_MENU";

            break;
          case 148:
            action = @"CHECK_AVOID_TOLLS";

            break;
          case 149:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

            break;
          case 150:
            action = @"TAP_ICLOUD";

            break;
          case 151:
            action = @"CHECK_AVOID_HIGHWAYS";

            break;
          case 152:
            action = @"TAP_FAVORITES";

            break;
          case 153:
            action = @"SELECT_DISTANCE_IN_KM";

            break;
          case 154:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

            break;
          case 155:
            action = @"OPEN_FULL_CARD_FILTER";

            break;
          case 156:
            action = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

            break;
          case 157:
            action = @"OPEN_SINGLE_CARD_FILTER";

            break;
          case 158:
            action = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 159:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

            break;
          case 160:
            action = @"SESSIONLESS_REVEAL";

            break;
          case 161:
            action = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

            break;
          case 162:
            action = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

            break;
          case 163:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

            break;
          case 164:
            action = @"ENTER_RAP_REPORT_MENU";

            break;
          case 165:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

            break;
          case 166:
            action = @"TAP_MY_VEHICLES";

            break;
          case 167:
            action = @"SUBMIT_SINGLE_CARD_FILTER";

            break;
          case 168:
            action = @"SUBMIT_FULL_CARD_FILTER";

            break;
          case 169:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

            break;
          case 170:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

            break;
          case 171:
            action = @"TAP_EXPLORE_CURATED_COLELCTIONS";

            break;
          case 172:
            action = @"TAP_ACCOUNT";

            break;
          case 173:
            action = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

            break;
          case 174:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

            break;
          case 175:
            action = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

            break;
          case 176:
            action = @"RESULT_REFINEMENT_TOGGLE_OFF";

            break;
          case 177:
            action = @"TAP_CITY_CURATED_COLLECTIONS";

            break;
          case 178:
            action = @"TAP_REPORTS";

            break;
          case 179:
            action = @"TAP_RATINGS";

            break;
          case 180:
            action = @"TAP_EXPLORE_CURATED_COLLECTIONS";

            break;
          case 181:
            action = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

            break;
          case 182:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

            break;
          case 183:
            action = @"SELECT_DISTANCE_IN_MILES";

            break;
          case 184:
            action = @"TAP_PRIVACY_STATEMENT";

            break;
          case 185:
            action = @"TAP_MAPS_SETTINGS";

            break;
          case 186:
            action = @"CANCEL_FULL_CARD_FILTER";

            break;
          case 187:
            action = @"TAP_LATEST_CURATED_COLLECTION";

            break;
          case 188:
            action = @"TAP_TEMPORAL_CURATED_COLLECTION";

            break;
          case 189:
            action = @"UNCHECK_AVOID_TOLLS";

            break;
          case 190:
            action = @"UNSELECT_SEARCH_REFINEMENT";

            break;
          case 191:
            action = @"TAP_RATING";

            break;
          case 192:
            action = @"TAP_ICLOUD_SIGN_IN";

            break;
          case 193:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

            break;
          case 194:
            action = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

            break;
          case 195:
            action = @"UNCHECK_AVOID_HIGHWAYS";

            break;
          case 196:
            action = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

            break;
          case 197:
            action = @"RESULT_REFINEMENT_TOGGLE_ON";

            break;
          case 198:
            action = @"TAP_CONTEXT_LINE_HYPERLINK";

            break;
          case 199:
            action = @"TAP_MY_GUIDES";

            break;
          case 200:
            action = @"SELECT_SEARCH_REFINEMENT";

            break;
          case 201:
            action = @"SESSIONLESS_TAP_ACCOUNT";

            break;
          case 202:
            action = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 203:
            action = @"TAP_TRAVEL_PREFERENCES";

            break;
          case 204:
            action = @"SHOW_CURATED_COLLECTION_LIST";

            break;
          case 205:
            action = @"CANCEL_SINGLE_CARD_FILTER";

            break;
          case 206:
            action = @"DISPLAY_HFP_OPTION";

            break;
          case 207:
            action = @"SWITCH_OFF_HFP";

            break;
          case 208:
            action = @"SWITCH_ON_HFP";

            break;
          case 209:
            action = @"TAP_QUICK_ACTION_TRAY";

            break;
          case 210:
            action = @"SHOW_ALL_CITIES";

            break;
          case 211:
            action = @"TAP_ADD_NEARBY_TRANSIT";

            break;
          case 212:
            action = @"RESUME";

            break;
          case 213:
            action = @"DISPLAY_TIPKIT_PROMPT";

            break;
          case 214:
            action = @"TAP_NEARBY_TRANSIT_FAVORITE";

            break;
          case 215:
            action = @"TAP_DRIVING_MODE";

            break;
          case 216:
            action = @"SWITCH_ON_VOICE_GUIDANCE";

            break;
          case 217:
            action = @"DISMISS_TIPKIT_PROMPT";

            break;
          case 218:
            action = @"TAP_EXPAND_EXIT_DETAILS";

            break;
          case 219:
            action = @"TAP_NEARBY_TRANSIT_FILTER";

            break;
          case 220:
            action = @"TAP_MORE_DEPARTURES";

            break;
          case 221:
            action = @"RAP_INDIVIDUAL_PLACE";

            break;
          case 222:
            action = @"RAP_ADD_MAP";

            break;
          case 223:
            action = @"TAP_SUGGESTED_RAP";

            break;
          case 224:
            action = @"RAP_STREET_ISSUE";

            break;
          case 225:
            action = @"SWIPE_PIN_REVEAL";

            break;
          case 226:
            action = @"TAP_ADD_TIPKIT_FAVORITE";

            break;
          case 227:
            action = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

            break;
          case 228:
            action = @"RAP_BAD_TRIP";

            break;
          case 229:
            action = @"RAP_PLACE_ISSUE";

            break;
          case 230:
            action = @"TAP_OPEN_MAPS";

            break;
          case 231:
            action = @"TAP_NEARBY_TRANSIT_RESULT";

            break;
          case 232:
            action = @"RAP_GUIDE";

            break;
          case 233:
            action = @"SWITCH_OFF_VOICE_GUIDANCE";

            break;
          case 234:
            action = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

            break;
          case 235:
            action = @"SELECT_TRANSIT_STEP";

            break;
          case 236:
            action = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

            break;
          case 237:
            action = @"TAP_SEE_MORE";

            break;
          case 238:
            action = @"RAP_IN_REVIEW";

            break;
          case 239:
            action = @"TAP_OPEN_MENU";

            break;
          case 240:
            action = @"TAP_NEARBY_TRANSIT";

            break;
          case 241:
            action = @"TAP_PIN_LINE";

            break;
          case 242:
            action = @"SWITCH_OFF_TRIP_FEEDBACK";

            break;
          case 243:
            action = @"RAP_GOOD_TRIP";

            break;
          case 244:
            action = @"TAP_FILTERED_CURATED_COLLECTION";

            break;
          case 245:
            action = @"SHARE_MY_LOCATION";

            break;
          case 246:
            action = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

            break;
          case 247:
            action = @"DISPLAY_GENERIC_ADVISORY";

            break;
          case 248:
            action = @"ADVISORY_ALERT";

            break;
          case 249:
            action = @"PUNCH_OUT_LINK";

            break;
          case 250:
            action = @"TAP_GENERIC_ADVISORY";

            break;
          case 251:
            action = @"TAP_EXPLORE_MODE";

            break;
          case 252:
            action = @"TAP_UNPIN_LINE";

            break;
          case 253:
            action = @"MENU_UNPIN";

            break;
          case 254:
            action = @"MENU_PIN";

            break;
          case 255:
            action = @"SWIPE_PIN";

            break;
          case 256:
            action = @"SWIPE_UNPIN";

            break;
          case 257:
            action = @"TAP_MEDIA_APP";

            break;
          case 258:
            action = @"TAP_GUIDES_SUBACTION";

            break;
          case 259:
            action = @"TAP_MEDIA";

            break;
          case 260:
            action = @"PUNCH_OUT_MEDIA";

            break;
          case 261:
            action = @"SHOW_MEDIA_APP_MENU";

            break;
          case 262:
            action = @"SCROLL_RIGHT_RIBBON";

            break;
          case 263:
            action = @"SCROLL_LEFT_RIBBON";

            break;
          case 264:
            action = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

            break;
          case 265:
            action = @"TAP_SHOW_MORE_TEXT";

            break;
          case 266:
            action = @"SCROLL_LEFT_RATINGS";

            break;
          case 267:
            action = @"SCROLL_LEFT_TEMPLATE_PLACE";

            break;
          case 268:
            action = @"SCROLL_RIGHT_TEMPLATE_PLACE";

            break;
          case 269:
            action = @"SCROLL_RIGHT_RATINGS";

            break;
          case 270:
            action = @"TAP_ALLOW";

            break;
          case 271:
            action = @"TAP_GO_TO_SETTING";

            break;
          case 272:
            action = @"START_SUBMIT_REPORT";

            break;
          case 273:
            action = @"AUTHENTICATION_INFO_FAILURE";

            break;
          case 274:
            action = @"SUCCESSFULLY_SUBMIT_REPORT";

            break;
          case 275:
            action = @"FAILED_SUBMIT_REPORT";

            break;
          case 276:
            action = @"AUTHENTICATION_INFO_SUCCESS";

            break;
          case 277:
            action = @"EDIT_WAYPOINT";

            break;
          case 278:
            action = @"CLEAR_TEXT";

            break;
          case 279:
            action = @"REORDER_WAYPOINT";

            break;
          case 280:
            action = @"REMOVE_WAYPOINT";

            break;
          case 281:
            action = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

            break;
          case 282:
            action = @"TAP_SHOWCASE_MENU";

            break;
          case 283:
            action = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

            break;
          case 284:
            action = @"TAP_PHOTO_ALBUM";

            break;
          case 285:
            action = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 286:
            action = @"RAP_INLINE_ADD";

            break;
          case 287:
            action = @"RAP_TAP_EDIT";

            break;
          case 288:
            action = @"CLAIM_BUSINESS";

            break;
          case 289:
            action = @"RAP_EDIT_OPTIONS";

            break;
          case 290:
            action = @"TAP_IN_REVIEW_RAP";

            break;
          case 291:
            action = @"ORB_MENU_ADD_STOP";

            break;
          case 292:
            action = @"NEXT_STOP";

            break;
          case 293:
            action = @"ARRIVE_AT_WAYPOINT";

            break;
          case 294:
            action = @"REMOVE_STOP";

            break;
          case 295:
            action = @"DISPLAY_PAUSE_BUTTON";

            break;
          case 296:
            action = @"DISPLAY_PAUSE_NEXT_BUTTONS";

            break;
          case 297:
            action = @"AUTO_ADVANCE_NEXT_STOP";

            break;
          case 298:
            action = @"ADD_INLINE_NEGATIVE_RATING";

            break;
          case 299:
            action = @"ADD_INLINE_POSITIVE_RATING";

            break;
          case 300:
            action = @"TAP_TO_ADD_RATING_AND_PHOTO";

            break;
          case 301:
            action = @"SUBMIT_RATINGS_AND_PHOTOS";

            break;
          case 302:
            action = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

            break;
          case 303:
            action = @"TAP_RECENTLY_VIEWED_ROUTE";

            break;
          case 304:
            action = @"SHOW_ALL_RECENTS";

            break;
          case 305:
            action = @"RESUME_MULTIPOINT_ROUTE";

            break;
          case 306:
            action = @"DISMISS_TRANSIT_TIPKIT";

            break;
          case 307:
            action = @"DISPLAY_TRANSIT_TIPKIT";

            break;
          case 308:
            action = @"TAP_TRANSIT_TIPKIT";

            break;
          case 309:
            action = @"FILTER_EV";

            break;
          case 310:
            action = @"FILTER_SURCHARGE";

            break;
          case 311:
            action = @"FILTER_PREFER";

            break;
          case 312:
            action = @"TAP_WALKING_ANNOTATION";

            break;
          case 313:
            action = @"FILTER_AVOID";

            break;
          case 314:
            action = @"FILTER_TRANSPORTATION_MODE";

            break;
          case 315:
            action = @"FILTER_RECOMMENDED_ROUTES";

            break;
          case 316:
            action = @"FILTER_IC_FARES";

            break;
          case 317:
            action = @"FILTER_TRANSIT_CARD_FARES";

            break;
          case 318:
            action = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 319:
            action = @"TAP_NOTIFICATION_SETTINGS";

            break;
          case 320:
            action = @"TAP_ENABLE_NOTIFICATION";

            break;
          case 321:
            action = @"ARP_SUGGESTIONS_TURN_OFF";

            break;
          case 322:
            action = @"ARP_SUGGESTIONS_TURN_ON";

            break;
          case 323:
            action = @"DISMISS_ARP_SUGGESTION";

            break;
          case 324:
            action = @"RATINGS_AND_PHOTOS_TURN_ON";

            break;
          case 325:
            action = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

            break;
          case 326:
            action = @"UNSELECT_SUGGESTED_PHOTOS";

            break;
          case 327:
            action = @"SUGGESTED_PHOTOS_SHOWN";

            break;
          case 328:
            action = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 329:
            action = @"TAP_YOUR_PHOTOS_ALBUM";

            break;
          case 330:
            action = @"RATINGS_AND_PHOTOS_TURN_OFF";

            break;
          case 331:
            action = @"DELETE_PHOTO";

            break;
          case 332:
            action = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 333:
            action = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

            break;
          case 334:
            action = @"TAP_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 335:
            action = @"DISPLAY_YOUR_PHOTOS_ALBUM";

            break;
          case 336:
            action = @"SELECT_SUGGESTED_PHOTOS";

            break;
          case 337:
            action = @"ADD_STOP";

            break;
          case 338:
            action = @"SHOW_CREDIT_TURN_ON";

            break;
          case 339:
            action = @"DISPLAY_ARP_SUGGESTION";

            break;
          case 340:
            action = @"TAP_TO_ADD_PHOTO_CREDIT";

            break;
          case 341:
            action = @"SHOW_CREDIT_TURN_OFF";

            break;
          case 342:
            action = @"TAP_TO_EDIT_NICKNAME";

            break;
          case 343:
            action = @"SUBMIT_RATINGS";

            break;
          case 344:
            action = @"END_NAV_ON_WATCH";

            break;
          case 345:
            action = @"FILTER_EBIKE";

            break;
          case 356:
            action = @"ADD_STOP_SIRI";

            break;
          case 357:
            action = @"TAP_REVIEWED_RAP";

            break;
          case 358:
            action = @"TAP_OUTREACH_RAP";

            break;
          case 359:
            action = @"DISPLAY_SUGGESTED_ITEM";

            break;
          case 360:
            action = @"DISPLAY_HIKING_TIPKIT";

            break;
          case 361:
            action = @"DISMISS_HIKING_TIPKIT";

            break;
          case 362:
            action = @"TAP_HIKING_TIPKIT";

            break;
          case 363:
            action = @"SCROLL_LEFT_TRAILS";

            break;
          case 364:
            action = @"TAP_MORE_TRAILS";

            break;
          case 365:
            action = @"TAP_RELATED_TRAIL";

            break;
          case 366:
            action = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

            break;
          case 367:
            action = @"SCROLL_RIGHT_TRAILS";

            break;
          case 368:
            action = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 369:
            action = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

            break;
          case 370:
            action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 371:
            action = @"TAP_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 372:
            action = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 373:
            action = @"EXPIRED_MAPS_REMOVED";

            break;
          case 374:
            action = @"UPDATE_ALL_DOWNLOAD_MAPS";

            break;
          case 375:
            action = @"TAP_EXPIRED_MAPS";

            break;
          case 376:
            action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 377:
            action = @"MOVE_DOWNLOAD_MAPS";

            break;
          case 378:
            action = @"SAVE_RENAME_DOWNLOAD_MAPS";

            break;
          case 379:
            action = @"TAP_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 380:
            action = @"TAP_ENTER_OFFLINE_MAPS";

            break;
          case 381:
            action = @"TAP_DOWNLOAD_MAPS";

            break;
          case 382:
            action = @"TAP_DOWNLOAD_MAPS_CONTINUE";

            break;
          case 383:
            action = @"DELETE_DOWNLOAD_MAPS";

            break;
          case 384:
            action = @"SLIDE_CLEAR_EXPIRED_MAPS";

            break;
          case 385:
            action = @"RENAME_DOWNLOAD_MAPS";

            break;
          case 386:
            action = @"RESIZE_DOWNLOAD_MAPS";

            break;
          case 387:
            action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

            break;
          case 388:
            action = @"RESTORE_EXPIRED_MAPS";

            break;
          case 389:
            action = @"CLEAR_EXPIRED_MAPS";

            break;
          case 390:
            action = @"TAP_USING_OFFLINE_BAR";

            break;
          case 391:
            action = @"UPDATE_DOWNLOAD_MAPS";

            break;
          case 392:
            action = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 393:
            action = @"DISPLAY_DOWNLOAD_MAPS";

            break;
          case 394:
            action = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

            break;
          case 395:
            action = @"DISPLAY_EXPIRED_MAPS";

            break;
          case 396:
            action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 397:
            action = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

            break;
          case 398:
            action = @"SLIDE_RESTORE_EXPIRED_MAPS";

            break;
          case 399:
            action = @"ETA_SHARE_TRAY_TIMEOUT";

            break;
          case 400:
            action = @"START_ETA_SHARING";

            break;
          case 401:
            action = @"PERSON_LOCATION_UPDATE";

            break;
          case 402:
            action = @"STOP_ETA_SHARING";

            break;
          case 403:
            action = @"PUNCH_OUT_TO_FINDMY";

            break;
          case 404:
            action = @"TAP_PEOPLE_LOCATION";

            break;
          case 405:
            action = @"TAP_TO_REQUEST_LOCATION";

            break;
          case 406:
            action = @"ZOOM_OUT_CROWN";

            break;
          case 407:
            action = @"TAP_RESIZE_DOWNLOAD_MAPS";

            break;
          case 408:
            action = @"TAP_DELETE_DOWNLOAD_MAPS";

            break;
          case 409:
            action = @"SELECT_LIST_VIEW";

            break;
          case 410:
            action = @"SCROLL_RIGHT_TRAILHEADS";

            break;
          case 411:
            action = @"SWITCH_TO_ONLINE_MODE";

            break;
          case 412:
            action = @"TAP_RELATED_TRAILHEAD";

            break;
          case 413:
            action = @"SELECT_ELEVATION_VIEW";

            break;
          case 414:
            action = @"TOGGLE_PROXIMITY_RADIUS_ON";

            break;
          case 415:
            action = @"SEE_MORE_RECENTS";

            break;
          case 416:
            action = @"SEE_MORE_GUIDES";

            break;
          case 417:
            action = @"SELECT_CONTROLS";

            break;
          case 418:
            action = @"NO_SEARCH_RESULTS";

            break;
          case 419:
            action = @"TAP_VIEW_RESULTS_CAROUSEL";

            break;
          case 420:
            action = @"TAP_VIEW_RESULTS_LIST";

            break;
          case 421:
            action = @"SELECT_MAP_VIEW";

            break;
          case 422:
            action = @"SCROLL_LEFT_TRAILHEADS";

            break;
          case 423:
            action = @"SWITCH_TO_OFFLINE_MODE";

            break;
          case 424:
            action = @"ZOOM_IN_CROWN";

            break;
          case 425:
            action = @"TOGGLE_PROXIMITY_RADIUS_OFF";

            break;
          case 426:
            action = @"TAP_MAP";

            break;
          case 427:
            action = @"SWIPE_DOWN";

            break;
          case 428:
            action = @"TAP_MORE_TRAILHEADS";

            break;
          case 429:
            action = @"TAP_ROUTE_OPTIONS";

            break;
          case 430:
            action = @"TAP_ROUTE_NAV_MAP";

            break;
          case 431:
            action = @"TAP_ROUTE_OVERVIEW_MAP";

            break;
          case 432:
            action = @"TAP_AUDIO";

            break;
          case 433:
            action = @"TAP_OPEN_PLACECARD";

            break;
          case 434:
            action = @"TAP_VIEW_STOPS";

            break;
          case 435:
            action = @"TAP_ROUTE_DETAILS";

            break;
          case 436:
            action = @"ADD_LPR_VEHICLE";

            break;
          case 437:
            action = @"TAP_ADD_VEHICLE";

            break;
          case 438:
            action = @"TAP_PLUG_TYPE";

            break;
          case 439:
            action = @"UNSELECT_SUGGESTED_NETWORK";

            break;
          case 440:
            action = @"TAP_SET_UP_LATER";

            break;
          case 441:
            action = @"ADD_EV_VEHICLE";

            break;
          case 442:
            action = @"UPDATE_COLOR";

            break;
          case 443:
            action = @"SELECT_OTHER_NETWORK";

            break;
          case 444:
            action = @"UNSELECT_NETWORK";

            break;
          case 445:
            action = @"TAP_BACK";

            break;
          case 446:
            action = @"TAP_CANCEL";

            break;
          case 447:
            action = @"UNSELECT_VEHICLE";

            break;
          case 448:
            action = @"UNSELECT_OTHER_NETWORK";

            break;
          case 449:
            action = @"DISPLAY_EV_TIPKIT";

            break;
          case 450:
            action = @"SELECT_NETWORK";

            break;
          case 451:
            action = @"TAP_EV_TIPKIT";

            break;
          case 452:
            action = @"TAP_CHOOSE_NETWORKS";

            break;
          case 453:
            action = @"TAP_ADD_NETWORK";

            break;
          case 454:
            action = @"FILTER_NETWORK";

            break;
          case 455:
            action = @"SELECT_SUGGESTED_NETWORK";

            break;
          case 456:
            action = @"TRANSIT_TO_WALKING";

            break;
          case 457:
            action = @"TRANSIT_TO_FINDMY";

            break;
          case 458:
            action = @"TAP_AC_KEYBOARD";

            break;
          case 459:
            action = @"REACH_PHOTO_STRIP_END";

            break;
          case 460:
            action = @"SEARCH_HERE_REVEAL";

            break;
          case 461:
            action = @"TAP_SEARCH_HERE";

            break;
          case 462:
            action = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

            break;
          case 463:
            action = @"SAVE";

            break;
          case 464:
            action = @"TAP_MORE_CURATED_HIKES";

            break;
          case 465:
            action = @"CREATE_CUSTOM_ROUTE";

            break;
          case 466:
            action = @"TAP_TRY_NOW";

            break;
          case 467:
            action = @"TAP_CURATED_HIKE";

            break;
          case 468:
            action = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

            break;
          case 469:
            action = @"ADD_TO_LIBRARY";

            break;
          case 470:
            action = @"START_HIKING";

            break;
          case 471:
            action = @"EDIT_NOTE";

            break;
          case 472:
            action = @"CREATE_NOTE";

            break;
          case 473:
            action = @"DELETE_PIN";

            break;
          case 474:
            action = @"ADD_ROUTE";

            break;
          case 475:
            action = @"ADD_PIN";

            break;
          case 476:
            action = @"REMOVE_FROM_COLLECTION";

            break;
          case 477:
            action = @"REMOVE_FROM_LIBRARY";

            break;
          case 478:
            action = @"TAP_ITEM";

            break;
          case 479:
            action = @"DELETE_ROUTE";

            break;
          case 480:
            action = @"TAP_ROUTE";

            break;
          case 481:
            action = @"TAP_DOWNLOAD_WATCH_MAPS";

            break;
          case 482:
            action = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 483:
            action = @"STOP_DOWNLOAD_ONTO_WATCH";

            break;
          case 484:
            action = @"TAP_DOWNLOAD_ONTO_WATCH";

            break;
          case 485:
            action = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 486:
            action = @"TAP_DOWNLOAD_NOW_WATCH";

            break;
          case 487:
            action = @"REVEAL_DETECTION_LIST";

            break;
          case 488:
            action = @"TAP_RECOMMENDATION";

            break;
          case 489:
            action = @"TAP_EXPAND";

            break;
          case 490:
            action = @"EXPAND_DETECTION_LIST";

            break;
          case 491:
            action = @"FIRST_PARTY_MAP_VIEW";

            break;
          case 492:
            action = @"SECOND_PARTY_MAP_VIEW";

            break;
          case 493:
            action = @"THIRD_PARTY_MAP_VIEW";

            break;
          case 494:
            action = @"DAEMON_PARTY_MAP_VIEW";

            break;
          case 495:
            action = @"MAPS_APP_DWELL_TIME_3_SEC";

            break;
          case 496:
            action = @"MAPS_APP_DWELL_TIME_30_SEC";

            break;
          case 497:
            action = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

            break;
          case 498:
            action = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

            break;
          case 499:
            action = @"DISPLAY_DOOM";

            break;
          case 500:
            action = @"TAP_DOOM";

            break;
          case 501:
            action = @"TAP_ROUTE_GENIUS";

            break;
          case 502:
            action = @"DISPLAY_ROUTE_GENIUS";

            break;
          case 503:
            action = @"TAP_WIDGET";

            break;
          case 504:
            action = @"ARRIVE_AT_DESTINATION";

            break;
          case 505:
            action = @"DISPLAY_WIDGET";

            break;
          case 506:
            action = @"CLEAR_HISTORY";

            break;
          case 507:
            action = @"TAP_SECTION";

            break;
          case 508:
            action = @"APPROVE_LOCATION";

            break;
          case 509:
            action = @"DISMISS_VISITED_PLACES_TIPKIT";

            break;
          case 510:
            action = @"DISPLAY_VISITED_PLACES_TIPKIT";

            break;
          case 511:
            action = @"MORE_OPTIONS";

            break;
          case 512:
            action = @"TAP_VISITED_PLACES_AVAILABLE";

            break;
          case 513:
            action = @"AUTO_REFRESH_SEARCH";

            break;
          case 514:
            action = @"REMOVE_VISIT";

            break;
          case 515:
            action = @"WRONG_LOCATION";

            break;
          case 516:
            action = @"CONFIRM";

            break;
          case 517:
            action = @"KEEP_HISTORY";

            break;
          case 518:
            action = @"DISPLAY_VISITED_PLACES_AVAILABLE";

            break;
          case 519:
            action = @"REMOVE";

            break;
          case 520:
            action = @"ALLOW";

            break;
          case 521:
            action = @"DONT_ALLOW";

            break;
          case 522:
            action = @"REMOVE_EVERY_VISIT";

            break;
          case 523:
            action = @"CONTINUE_VISITED_PLACES_TIPKIT";

            break;
          case 524:
            action = @"REMOVE_FROM_FAVORITE_GUIDE";

            break;
          case 525:
            action = @"ADD_TO_FAVORITE_GUIDE";

            break;
          case 526:
            action = @"FAMILIAR_ROUTE_DISPLAYED";

            break;
          case 527:
            action = @"FAMILIAR_ROUTE_NAV_STARTED";

            break;
          case 528:
            action = @"SELECT_AUDIO_VOLUME_LOUDER";

            break;
          case 529:
            action = @"SELECT_AUDIO_VOLUME_SOFTER";

            break;
          case 1001:
            action = @"PAN";

            break;
          case 1002:
            action = @"ZOOM_IN";

            break;
          case 1003:
            action = @"ZOOM_OUT";

            break;
          case 1004:
            action = @"ROTATE";

            break;
          case 1010:
            action = @"TAP_POI";

            break;
          case 1011:
            action = @"TAP_POI_TRANSIT";

            break;
          case 1017:
            action = @"TAP_POI_HIGHLIGHTED";

            break;
          case 1018:
            action = @"TAP_POI_CLUSTERED";

            break;
          case 1020:
            action = @"TAP_POI_DROPPED_PIN";

            break;
          case 1030:
            action = @"DROP_PIN";

            break;
          case 1031:
            action = @"TAP_INCIDENT";

            break;
          case 1032:
            action = @"TAP_TRANSIT_LINE";

            break;
          case 1033:
            action = @"TAP_POI_CALENDAR";

            break;
          case 1034:
            action = @"TAP_POI_CURRENT_LOCATION";

            break;
          case 1035:
            action = @"TAP_POI_TRANSIT_LINE";

            break;
          case 1036:
            action = @"TAP_POI_LANDMARK";

            break;
          case 1037:
            action = @"TAP_POI_FLYOVER";

            break;
          case 1038:
            action = @"TAP_TO_HIDE_TRAY";

            break;
          case 1039:
            action = @"TAP_TO_REVEAL_TRAY";

            break;
          case 1040:
            action = @"TAP_COMPASS";

            break;
          case 1041:
            action = @"PITCH_AWAY_FROM_GROUND";

            break;
          case 1042:
            action = @"PITCH_CLOSER_TO_GROUND";

            break;
          case 1043:
            action = @"ZOOM_IN_PINCH";

            break;
          case 1044:
            action = @"ZOOM_OUT_PINCH";

            break;
          case 1045:
            action = @"ZOOM_IN_DOUBLE_TAP";

            break;
          case 1046:
            action = @"ZOOM_OUT_TWO_FINGER_TAP";

            break;
          case 1047:
            action = @"ZOOM_IN_ONE_FINGER";

            break;
          case 1048:
            action = @"ZOOM_OUT_ONE_FINGER";

            break;
          case 1049:
            action = @"ZOOM_IN_BUTTON";

            break;
          case 1050:
            action = @"ZOOM_OUT_BUTTON";

            break;
          case 1051:
            action = @"TAP_TRAFFIC_CAMERA";

            break;
          case 1052:
            action = @"DISPLAY_INDOOR_MAP_BUTTON";

            break;
          case 1053:
            action = @"OPEN_INDOOR_MAP";

            break;
          case 1054:
            action = @"DISPLAY_VENUE_BROWSE_BUTTON";

            break;
          case 1055:
            action = @"TAP_VENUE_BROWSE_BUTTON";

            break;
          case 1056:
            action = @"ENTER_VENUE_EXPERIENCE";

            break;
          case 1057:
            action = @"EXIT_VENUE_EXPERIENCE";

            break;
          case 1058:
            action = @"ZOOM_IN_SCENE_PINCH";

            break;
          case 1059:
            action = @"ZOOM_OUT_SCENE_PINCH";

            break;
          case 1060:
            action = @"ZOOM_RESET";

            break;
          case 1061:
            action = @"TAP_SCENE_UNAVAILABLE_AREA";

            break;
          case 1062:
            action = @"TAP_TRANSIT_ACCESS_POINT";

            break;
          case 1063:
            action = @"TAP_SPEED_CAMERA";

            break;
          case 1064:
            action = @"TAP_RED_LIGHT_CAMERA";

            break;
          case 1065:
            action = @"TAP_GEO";

            break;
          default:
            if (action != 1500)
            {
              goto LABEL_195;
            }

            action = @"TAP_PLAY_SOUND";

            break;
        }
      }

      return action;
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
              action = @"TAP_HEADING_ON";
            }

            else if (action == 4003)
            {
              action = @"TAP_HEADING_OFF";
            }

            else
            {
              action = @"PUCK_DRIFT";
            }
          }

          else
          {
            switch(action)
            {
              case 5001:
                action = @"SHOW_MAPS_SETTINGS";

                return action;
              case 5002:
                action = @"TAP_STANDARD_MODE";

                return action;
              case 5003:
                action = @"TAP_TRANSIT_MODE";

                return action;
              case 5004:
                action = @"TAP_SATELLITE_MODE";

                return action;
              case 5005:
                action = @"SWITCH_ON_TRAFFIC";

                return action;
              case 5006:
                action = @"SWITCH_OFF_TRAFFIC";

                return action;
              case 5007:
                action = @"SWITCH_ON_LABELS";

                return action;
              case 5008:
                action = @"SWITCH_OFF_LABELS";

                return action;
              case 5009:
                action = @"SWITCH_ON_3D_MAP";

                return action;
              case 5010:
                action = @"SWITCH_OFF_3D_MAP";

                return action;
              case 5011:
                action = @"SWITCH_ON_WEATHER";

                return action;
              case 5012:
                action = @"SWITCH_OFF_WEATHER";

                return action;
              case 5013:
                action = @"REPORT_A_PROBLEM";

                return action;
              case 5014:
                action = @"ADD_PLACE";

                return action;
              case 5015:
                goto LABEL_195;
              case 5016:
                action = @"TAP_PREFERENCES";

                return action;
              case 5017:
                action = @"SWITCH_ON_TOLLS";

                return action;
              case 5018:
                action = @"SWITCH_OFF_TOLLS";

                return action;
              case 5019:
                action = @"SWITCH_ON_HIGHWAYS";

                return action;
              case 5020:
                action = @"SWITCH_OFF_HIGHWAYS";

                return action;
              case 5021:
                action = @"SWITCH_ON_HEADING";

                return action;
              case 5022:
                action = @"SWITCH_OFF_HEADING";

                return action;
              case 5023:
                action = @"SWITCH_ON_SPEED_LIMIT";

                return action;
              case 5024:
                action = @"SWITCH_OFF_SPEED_LIMIT";

                return action;
              case 5025:
                action = @"ELECT_DRIVING_MODE";

                return action;
              case 5026:
                action = @"ELECT_WALKING_MODE";

                return action;
              case 5027:
                action = @"ELECT_TRANSIT_MODE";

                return action;
              case 5028:
                action = @"ELECT_RIDESHARE_MODE";

                return action;
              case 5029:
                action = @"SWITCH_ON_FIND_MY_CAR";

                return action;
              case 5030:
                action = @"SWITCH_OFF_FIND_MY_CAR";

                return action;
              case 5031:
                action = @"MARK_MY_LOCATION";

                return action;
              case 5032:
                action = @"TAP_HYBRID_MODE";

                return action;
              case 5033:
                action = @"CHECK_AVOID_BUSY_ROADS";

                return action;
              case 5034:
                action = @"UNCHECK_AVOID_BUSY_ROADS";

                return action;
              case 5035:
                action = @"CHECK_AVOID_HILLS";

                return action;
              case 5036:
                action = @"UNCHECK_AVOID_HILLS";

                return action;
              case 5037:
                action = @"CHECK_AVOID_STAIRS";

                return action;
              case 5038:
                action = @"UNCHECK_AVOID_STAIRS";

                return action;
              case 5039:
                action = @"ELECT_CYCLING_MODE";

                return action;
              default:
                if (action == 4005)
                {
                  action = @"PUCK_SNAP";
                }

                else
                {
                  if (action != 4006)
                  {
                    goto LABEL_195;
                  }

                  action = @"SELECT_FLOOR";
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
              action = @"START_NAV";

              break;
            case 3002:
              action = @"END_NAV";

              break;
            case 3003:
              action = @"OPEN_NAV_AUDIO_SETTINGS";

              break;
            case 3004:
              action = @"VIEW_DETAILS";

              break;
            case 3005:
              action = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

              break;
            case 3006:
              action = @"OPEN_ROUTING_EDITOR";

              break;
            case 3007:
              action = @"EDIT_ORIGIN";

              break;
            case 3008:
              action = @"EDIT_DESTINATION";

              break;
            case 3009:
              action = @"SWAP_ORIGIN_DESTINATION";

              break;
            case 3010:
              action = @"OPEN_MORE_ROUTES";

              break;
            case 3011:
              action = @"SELECT_ROUTING_TYPE_DRIVING";

              break;
            case 3012:
              action = @"SELECT_ROUTING_TYPE_WALKING";

              break;
            case 3013:
              action = @"SELECT_ROUTING_TYPE_TRANSIT";

              break;
            case 3014:
              action = @"SELECT_ROUTING_TYPE_RIDESHARE";

              break;
            case 3015:
              action = @"SELECT_ROUTE";

              break;
            case 3016:
              action = @"COLLAPSE_STEP_DETAILS_WALK";

              break;
            case 3017:
              action = @"EXPAND_STEP_DETAILS_WALK";

              break;
            case 3018:
              action = @"COLLAPSE_STEP_DETAILS_TRANSIT";

              break;
            case 3019:
              action = @"EXPAND_STEP_DETAILS_TRANSIT";

              break;
            case 3020:
              action = @"UNCHECK_BUS";

              break;
            case 3021:
              action = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3022:
              action = @"UNCHECK_COMMUTER_RAIL";

              break;
            case 3023:
              action = @"UNCHECK_FERRY";

              break;
            case 3024:
              action = @"CHECK_BUS";

              break;
            case 3025:
              action = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3026:
              action = @"CHECK_COMMUTER_RAIL";

              break;
            case 3027:
              action = @"CHECK_FERRY";

              break;
            case 3028:
              action = @"SELECT_LEAVE_AT";

              break;
            case 3029:
              action = @"SELECT_ARRIVE_BY";

              break;
            case 3030:
              action = @"SELECT_LEAVE_NOW";

              break;
            case 3031:
              action = @"SELECT_DATE_TIME";

              break;
            case 3032:
              action = @"SWITCH_ON_IC_FARES";

              break;
            case 3033:
              action = @"SWITCH_OFF_IC_FARES";

              break;
            case 3034:
              action = @"OPEN_ROUTE_OPTIONS_DATETIME";

              break;
            case 3035:
              action = @"OPEN_ROUTE_OPTIONS_TRANSIT";

              break;
            case 3036:
              action = @"OPEN_ROUTE_OPTIONS_DRIVING";

              break;
            case 3037:
              action = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

              break;
            case 3038:
              action = @"REVEAL_FROM_ROUTING";

              break;
            case 3039:
              action = @"DISPLAY_ROUTES";

              break;
            case 3040:
              action = @"CHECK_RECOMMENDED_ROUTES";

              break;
            case 3041:
              action = @"UNCHECK_RECOMMENDED_ROUTES";

              break;
            case 3042:
              action = @"CHECK_FASTER_TRIPS";

              break;
            case 3043:
              action = @"UNCHECK_FASTER_TRIPS";

              break;
            case 3044:
              action = @"CHECK_FEWER_TRANSFERS";

              break;
            case 3045:
              action = @"UNCHECK_FEWER_TRANSFERS";

              break;
            case 3046:
              action = @"CHECK_LESS_WALKING";

              break;
            case 3047:
              action = @"UNCHECK_LESS_WALKING";

              break;
            case 3048:
              action = @"OPEN_ROUTE_OPTIONS_CYCLING";

              break;
            case 3049:
              action = @"TAP_MORE_ROUTES";

              break;
            case 3050:
              action = @"OPEN_NAV_OVERVIEW";

              break;
            case 3051:
              action = @"RESUME_NAV_MANEUVER_VIEW";

              break;
            case 3052:
              action = @"SELECT_AUDIO_VOLUME_SILENT";

              break;
            case 3053:
              action = @"SELECT_AUDIO_VOLUME_LOW";

              break;
            case 3054:
              action = @"SELECT_AUDIO_VOLUME_NORMAL";

              break;
            case 3055:
              action = @"SELECT_AUDIO_VOLUME_LOUD";

              break;
            case 3056:
              action = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

              break;
            case 3057:
              action = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

              break;
            case 3058:
              action = @"RESUME_PREV_NAV";

              break;
            case 3059:
              action = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

              break;
            case 3060:
              action = @"ACCEPT_REROUTE";

              break;
            case 3061:
              action = @"DISMISS_REROUTE";

              break;
            case 3062:
              action = @"ATTEMPT_END_NAV";

              break;
            case 3063:
              action = @"DISPLAY_BANNER";

              break;
            case 3064:
              action = @"VIEW_BANNER_DETAILS";

              break;
            case 3065:
              action = @"ENTER_GUIDANCE";

              break;
            case 3066:
              action = @"AUTO_ADVANCE_GUIDANCE";

              break;
            case 3067:
              action = @"TAP_OPEN_WALLET";

              break;
            case 3068:
              action = @"SELECT_VOICE_GUIDANCE_ALL";

              break;
            case 3069:
              action = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

              break;
            case 3070:
              action = @"SELECT_VOICE_GUIDANCE_NONE";

              break;
            case 3071:
              action = @"DISPLAY_CARD";

              break;
            case 3072:
              action = @"RENDER_ROUTE";

              break;
            case 3073:
              action = @"DISPLAY_JUNCTION_VIEW";

              break;
            case 3074:
              action = @"SELECT_DEPARTURE";

              break;
            case 3075:
              action = @"DISPLAY_AR_VIEW_RAISE_BANNER";

              break;
            case 3076:
              action = @"DEVICE_RAISE";

              break;
            case 3077:
              action = @"ENTER_AR_NAV_VIEW";

              break;
            case 3078:
              action = @"EXIT_AR_NAV_VIEW";

              break;
            case 3079:
              action = @"AR_CALIBRATION_START";

              break;
            case 3080:
              action = @"AR_CALIBRATION_FAILURE";

              break;
            case 3081:
              action = @"AR_CALIBRATION_SUCCESS";

              break;
            case 3082:
              action = @"DISPLAY_AR_NAV_ARROW";

              break;
            case 3083:
              action = @"DISPLAY_AR_NAV_TURN_AROUND";

              break;
            case 3084:
              action = @"DISPLAY_GO_OUTSIDE_BANNER";

              break;
            case 3085:
              action = @"DISPLAY_AR_DARKNESS_MESSAGE";

              break;
            case 3086:
              action = @"DISPLAY_AR_NAV_ENDPOINT";

              break;
            case 3087:
              action = @"DISPLAY_ADVISORY_BANNER";

              break;
            case 3088:
              action = @"TAP_SHOW_ADVISORY_DETAILS";

              break;
            default:
              if (action != 4001)
              {
                goto LABEL_195;
              }

              action = @"RECENTER_CURRENT_LOCATION";

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
                action = @"INVOKE_SIRI_SNIPPET";
              }

              else
              {
                action = @"INVOKE_SIRI_DISAMBIGUATION";
              }
            }

            else if (action == 8003)
            {
              action = @"SHOW_PLACE_DETAILS";
            }

            else if (action == 8004)
            {
              action = @"ANSWER_REROUTE_SUGGESTION";
            }

            else
            {
              action = @"SUGGEST_NAV_REROUTE";
            }
          }

          else if (action > 8008)
          {
            switch(action)
            {
              case 0x1F49:
                action = @"INVOKE_SIRI";

                break;
              case 0x1F4A:
                action = @"DISPLAY_SIRI_ERROR_MESSAGE";

                break;
              case 0x1F4B:
                action = @"DISPLAY_NO_RESULTS_MESSAGE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action == 8006)
          {
            action = @"GET_NAV_STATUS";
          }

          else if (action == 8007)
          {
            action = @"REPEAT_NAV_STATUS";
          }

          else
          {
            action = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }
        }

        else
        {
          switch(action)
          {
            case 7001:
              action = @"EXPAND_TRANSIT_SYSTEM";

              break;
            case 7002:
              action = @"COLLAPSE_TRANSIT_SYSTEM";

              break;
            case 7003:
              action = @"SHOW_MORE_DEPARTURES";

              break;
            case 7004:
              action = @"VIEW_TRANSIT_LINE";

              break;
            case 7005:
              action = @"CANCEL_VIEW_TRANSIT_LINE";

              break;
            case 7006:
              action = @"TAP_TRANSIT_ATTRIBUTION";

              break;
            case 7007:
              action = @"TAP_TRANSIT_ADVISORY";

              break;
            case 7008:
              action = @"MORE_DETAILS_TRANSIT_ADVISORY";

              break;
            case 7009:
              action = @"SUBSCRIBE_LINE_INCIDENT";

              break;
            case 7010:
              action = @"UNSUBSCRIBE_LINE_INCIDENT";

              break;
            case 7011:
              action = @"TAP_NEAREST_STATION";

              break;
            case 7012:
              action = @"TAP_NEAREST_STOP";

              break;
            case 7013:
              action = @"TAP_CONNECTION";

              break;
            case 7014:
              action = @"GET_TICKETS";

              break;
            case 7015:
              action = @"OPEN_SCHEDULECARD_DATETIME";

              break;
            case 7016:
              action = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

              break;
            case 7017:
              action = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

              break;
            case 7018:
              action = @"VIEW_ON_MAP";

              break;
            case 7019:
              action = @"FORCE_UPDATE_DEPARTURE_INFO";

              break;
            case 7020:
              action = @"TAP_TRANSIT_LINE_INFO";

              break;
            case 7021:
              action = @"TAP_ATTRIBUTION_CELL";

              break;
            case 7022:
              action = @"TAP_NEXT_DEPARTURES";

              break;
            case 7023:
              action = @"VIEW_BANNER";

              break;
            case 7024:
              action = @"GET_SHOWTIMES";

              break;
            case 7025:
              action = @"MAKE_APPOINTMENT";

              break;
            case 7026:
              action = @"RESERVE_PARKING";

              break;
            case 7027:
              action = @"RESERVE_ROOM";

              break;
            case 7028:
              action = @"WAITLIST";

              break;
            case 7029:
              action = @"ORDER_TAKEOUT";

              break;
            case 7030:
              action = @"RESERVE";

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
            action = @"GET_DIRECTIONS";

            break;
          case 6004:
            action = @"TAP_FLYOVER_TOUR";

            break;
          case 6005:
            action = @"REMOVE_PIN";

            break;
          case 6006:
            action = @"TAP_PHOTO";

            break;
          case 6007:
            action = @"TAP_MAPS_VIEW";

            break;
          case 6008:
            action = @"TAP_ADDRESS";

            break;
          case 6009:
            action = @"CALL";

            break;
          case 6010:
            action = @"TAP_URL";

            break;
          case 6011:
            action = @"SHOW_TODAY_HOURS";

            break;
          case 6012:
            action = @"SHOW_ALL_HOURS";

            break;
          case 6013:
            action = @"SHARE";

            break;
          case 6015:
            action = @"ADD_TO_FAVORITES";

            break;
          case 6016:
            action = @"ADD_CONTACT";

            break;
          case 6018:
            action = @"PUNCH_OUT_PHOTO";

            break;
          case 6019:
            action = @"PUNCH_OUT_USEFUL_TO_KNOW";

            break;
          case 6020:
            action = @"PUNCH_OUT_OPEN_APP";

            break;
          case 6021:
            action = @"PUNCH_OUT_SINGLE_REVIEW";

            break;
          case 6022:
            action = @"PUNCH_OUT_CHECK_IN";

            break;
          case 6023:
            action = @"PUNCH_OUT_MORE_INFO";

            break;
          case 6024:
            action = @"PUNCH_OUT_WRITE_REVIEW";

            break;
          case 6025:
            action = @"PUNCH_OUT_ADD_PHOTO";

            break;
          case 6026:
            action = @"TAP_GRID_VIEW";

            break;
          case 6027:
            action = @"EDIT_LOCATION";

            break;
          case 6029:
            action = @"ADD_PHOTO";

            break;
          case 6031:
            action = @"RETAKE";

            break;
          case 6032:
            action = @"ADD_NOTE";

            break;
          case 6033:
            action = @"REMOVE_CAR";

            break;
          case 6034:
            action = @"EDIT_NAME";

            break;
          case 6036:
            action = @"RESERVE_TABLE";

            break;
          case 6037:
            action = @"ADD_TO_QUEUE";

            break;
          case 6038:
            action = @"VIEW_BOOKED_TABLE";

            break;
          case 6039:
            action = @"VIEW_QUEUED_TABLE";

            break;
          case 6040:
            action = @"PUNCH_OUT_THIRD_PARTY_APP";

            break;
          case 6041:
            action = @"PUNCH_OUT_LEGAL_LINK";

            break;
          case 6042:
            action = @"TAP_PLACECARD_HEADER";

            break;
          case 6043:
            action = @"REMOVE_FROM_FAVORITES";

            break;
          case 6044:
            action = @"VIEW_CONTACT";

            break;
          case 6045:
            action = @"CHAT";

            break;
          case 6046:
            action = @"FIND_STORES";

            break;
          case 6047:
            action = @"TAP_PARENT";

            break;
          case 6048:
            action = @"SCROLL_LEFT_PHOTOS";

            break;
          case 6049:
            action = @"SCROLL_RIGHT_PHOTOS";

            break;
          case 6050:
            action = @"PUNCH_OUT";

            break;
          case 6051:
            action = @"TAP_ENTER_MUNIN";

            break;
          case 6052:
            action = @"TAP_RECOMMENDED_DISHES_PHOTO";

            break;
          case 6053:
            action = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

            break;
          case 6054:
            action = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

            break;
          case 6055:
            action = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6056:
            action = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6057:
            action = @"SHOW_LINKED_SERVICE_HOURS";

            break;
          case 6058:
            action = @"ENTER_LOOK_AROUND";

            break;
          case 6059:
            action = @"EXIT_LOOK_AROUND";

            break;
          case 6060:
            action = @"TAP_ENTER_LOOK_AROUND_VIEW";

            break;
          case 6061:
            action = @"TAP_ENTER_LOOK_AROUND_PIP";

            break;
          case 6062:
            action = @"EXPAND_LOOK_AROUND_VIEW";

            break;
          case 6063:
            action = @"CLOSE_LOOK_AROUND";

            break;
          case 6064:
            action = @"COLLAPSE_LOOK_AROUND_VIEW";

            break;
          case 6065:
            action = @"TAP_SHOW_ACTIONS";

            break;
          case 6066:
            action = @"TAP_HIDE_LABELS";

            break;
          case 6067:
            action = @"TAP_SHOW_LABELS";

            break;
          case 6068:
            action = @"TAP_SHOW_DETAILS";

            break;
          case 6069:
            action = @"PAN_LOOK_AROUND";

            break;
          case 6070:
            action = @"TAP_LOOK_AROUND_THUMBNAIL";

            break;
          case 6071:
            action = @"TAP_LANDMARK";

            break;
          case 6072:
            action = @"TAP_SCENE";

            break;
          case 6073:
            action = @"SHOW_LINKED_BUSINESS_HOURS";

            break;
          case 6074:
            action = @"TAP_PLACECARD_SHORTCUT";

            break;
          case 6075:
            action = @"SHOW_ALL_LOCATIONS_INSIDE";

            break;
          case 6076:
            action = @"SHOW_ALL_SIMILAR_LOCATIONS";

            break;
          case 6077:
            action = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

            break;
          case 6078:
            action = @"TAP_PARENT_LOCATION";

            break;
          case 6079:
            action = @"TAP_SIMILAR_LOCATION";

            break;
          case 6080:
            action = @"TAP_LOCATION_INSIDE";

            break;
          case 6081:
            action = @"TAP_LOCATION_AT_ADDRESS";

            break;
          case 6082:
            action = @"CLOSE_ROUTE_GENIUS";

            break;
          case 6083:
            action = @"LOAD_WEB_CONTENT";

            break;
          case 6084:
            action = @"SCROLL_FORWARD_WEB_CONTENT";

            break;
          case 6085:
            action = @"SCROLL_BACKWARD_WEB_CONTENT";

            break;
          case 6086:
            action = @"TAP_WEB_CONTENT";

            break;
          case 6087:
            action = @"SHOW_PHOTO_VIEWER";

            break;
          case 6088:
            action = @"SHOW_LAST_PAGE";

            break;
          case 6089:
            action = @"TAP_VIEW_APP";

            break;
          case 6090:
            action = @"TAP_APP_CLIP";

            break;
          case 6091:
            action = @"DEAD_BATTERY";

            break;
          case 6092:
            action = @"DISMISS_LOW_BATTERY_ALERT";

            break;
          case 6093:
            action = @"DISMISS_OUT_OF_RANGE_ALERT";

            break;
          case 6094:
            action = @"FAILED_TO_LOAD_EV_STATUS";

            break;
          case 6095:
            action = @"LOW_BATTERY_ALERT";

            break;
          case 6096:
            action = @"PAUSE_ROUTE";

            break;
          case 6097:
            action = @"TAP_ADD_STOP";

            break;
          case 6098:
            action = @"TAP_CHARGE_POINT";

            break;
          case 6099:
            action = @"TAP_OUT_OF_RANGE_ALERT";

            break;
          case 6100:
            action = @"SCROLL_DOWN_PHOTOS";

            break;
          case 6101:
            action = @"SCROLL_UP_PHOTOS";

            break;
          case 6102:
            action = @"TAP_MORE_PHOTOS";

            break;
          case 6103:
            action = @"TAP_TO_CONFIRM_INCIDENT";

            break;
          case 6104:
            action = @"SHOW_INCIDENT";

            break;
          case 6105:
            action = @"REVEAL_APP_CLIP";

            break;
          case 6106:
            action = @"ORDER_DELIVERY";

            break;
          case 6107:
            action = @"VIEW_MENU";

            break;
          case 6108:
            action = @"TAP_EDIT_STOPS";

            break;
          case 6109:
            action = @"LEARN_MORE_WEB_CONTENT";

            break;
          case 6110:
            action = @"MAKE_APPOINTMENT_WEB_CONTENT";

            break;
          case 6111:
            action = @"REVEAL_SHOWCASE";

            break;
          case 6112:
            action = @"TAP_ACTION_BAR";

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
            action = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

            break;
          case 10102:
            action = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

            break;
          case 10103:
            action = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

            break;
          case 10104:
            action = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

            break;
          case 10105:
            action = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

            break;
          case 10106:
            action = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

            break;
          case 10107:
            action = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

            break;
          case 10108:
            action = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

            break;
          case 10109:
            action = @"RAP_CANCEL";

            break;
          case 10110:
            action = @"RAP_NEXT";

            break;
          case 10111:
            action = @"RAP_BACK";

            break;
          case 10112:
            action = @"RAP_SEND";

            break;
          case 10113:
            action = @"RAP_SKIP";

            break;
          case 10114:
            action = @"RAP_SHOW_MORE";

            break;
          case 10115:
            action = @"RAP_ADD_PHOTO";

            break;
          case 10116:
            action = @"RAP_MAP_INCORRECT";

            break;
          case 10117:
            action = @"RAP_BAD_DIRECTIONS";

            break;
          case 10118:
            action = @"RAP_TRANSIT_INFO_INCORRECT";

            break;
          case 10119:
            action = @"RAP_SATELLITE_IMAGE_PROBLEM";

            break;
          case 10120:
            action = @"RAP_SEARCH_RESULTS_INCORRECT";

            break;
          case 10121:
            action = @"RAP_ADD_A_PLACE";

            break;
          case 10122:
            action = @"RAP_HOME";

            break;
          case 10123:
            action = @"RAP_WORK";

            break;
          case 10124:
            action = @"RAP_OTHER";

            break;
          case 10125:
            action = @"RAP_LOCATION";

            break;
          case 10126:
            action = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

            break;
          case 10127:
            action = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

            break;
          case 10128:
            action = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

            break;
          case 10129:
            action = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

            break;
          case 10130:
            action = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

            break;
          case 10131:
            action = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

            break;
          case 10132:
            action = @"RAP_TRANSIT_DELAY";

            break;
          case 10133:
            action = @"RAP_LOCATION_CLOSED";

            break;
          case 10134:
            action = @"RAP_CLOSED_PERMANENTLY";

            break;
          case 10135:
            action = @"RAP_CLOSED_TEMPORARILY";

            break;
          case 10136:
            action = @"RAP_HOURS_HAVE_CHANGED";

            break;
          case 10137:
            action = @"RAP_SELECT_STATION";

            break;
          case 10138:
            action = @"RAP_SELECT_LINE";

            break;
          case 10139:
            action = @"RAP_SELECT_ACCESS_POINT";

            break;
          case 10140:
            action = @"RAP_SELECT_SEARCH";

            break;
          case 10141:
            action = @"RAP_PAN_MAP";

            break;
          case 10142:
            action = @"RAP_CENTER_MAP_ON_USER";

            break;
          case 10143:
            action = @"RAP_SEARCH_UNEXPECTED";

            break;
          case 10144:
            action = @"RAP_ADD_POI";

            break;
          case 10145:
            action = @"RAP_ADD_STREET_ADDRESS";

            break;
          case 10146:
            action = @"RAP_ADD_OTHER";

            break;
          case 10147:
            action = @"RAP_SELECT_CATEGORY";

            break;
          case 10148:
            action = @"RAP_TAKE_PHOTO";

            break;
          case 10149:
            action = @"RAP_RETAKE_PHOTO";

            break;
          case 10150:
            action = @"RAP_PLACE_DETAILS";

            break;
          case 10151:
            action = @"RAP_SATELLITE_IMAGE_OUTDATED";

            break;
          case 10152:
            action = @"RAP_SATELLITE_IMAGE_QUALITY";

            break;
          case 10153:
            action = @"RAP_SELECT_LABEL";

            break;
          case 10154:
            action = @"RAP_SELECT_ROUTE";

            break;
          case 10155:
            action = @"RAP_CLAIM_BUSINESS";

            break;
          case 10156:
            action = @"RAP_BRAND_DETAILS";

            break;
          case 10157:
            action = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

            break;
          case 10158:
            action = @"RAP_LOOK_AROUND_LABELS_STREET";

            break;
          case 10159:
            action = @"RAP_LOOK_AROUND_BLURRING";

            break;
          case 10160:
            action = @"RAP_LOOK_AROUND_REMOVE_HOME";

            break;
          case 10161:
            action = @"RAP_LOOK_AROUND_LABELS_STORE";

            break;
          case 10162:
            action = @"RAP_LOOK_AROUND_PRIVACY";

            break;
          case 10163:
            action = @"RAP_INCORRECT_HOURS";

            break;
          case 10164:
            action = @"RAP_INCORRECT_ADDRESS";

            break;
          case 10165:
            action = @"RAP_EDIT_PLACE_DETAILS";

            break;
          case 10166:
            action = @"RAP_EDIT_PLACE_NAME";

            break;
          case 10167:
            action = @"RAP_EDIT_ADDRESS";

            break;
          case 10168:
            action = @"RAP_ADD_CATEGORY";

            break;
          case 10169:
            action = @"RAP_REMOVE_CATEGORY";

            break;
          case 10170:
            action = @"RAP_DESELECT_CATEGORY";

            break;
          case 10171:
            action = @"RAP_ADD_HOURS";

            break;
          case 10172:
            action = @"RAP_REMOVE_HOURS";

            break;
          case 10173:
            action = @"RAP_TAP_DAY_OF_WEEK";

            break;
          case 10174:
            action = @"RAP_TAP_24_HOURS_BUTTON";

            break;
          case 10175:
            action = @"RAP_TAP_OPEN_TIME";

            break;
          case 10176:
            action = @"RAP_TAP_CLOSED_TIME";

            break;
          case 10177:
            action = @"RAP_TAP_TEMPORARY_CLOSURE";

            break;
          case 10178:
            action = @"RAP_TAP_PERMANENTLY_CLOSED";

            break;
          case 10179:
            action = @"RAP_EDIT_WEBSITE";

            break;
          case 10180:
            action = @"RAP_EDIT_PHONE_NUMBER";

            break;
          case 10181:
            action = @"RAP_TAP_ACCEPTS_APPLE_PAY";

            break;
          case 10182:
            action = @"RAP_ADD_COMMENTS";

            break;
          case 10183:
            action = @"RAP_EDIT_LOCATION";

            break;
          case 10184:
            action = @"RAP_VIEW_LOCATION";

            break;
          case 10185:
            action = @"RAP_ZOOM_IN";

            break;
          case 10186:
            action = @"RAP_ZOOM_OUT";

            break;
          case 10187:
            action = @"RAP_VIEW_ENTRY_POINTS";

            break;
          case 10188:
            action = @"RAP_EDIT_EXISTING_ENTRY_POINT";

            break;
          case 10189:
            action = @"RAP_ADD_NEW_ENTRY_POINT";

            break;
          case 10190:
            action = @"RAP_REMOVE_ENTRY_POINT";

            break;
          case 10191:
            action = @"RAP_SELECT_ENTRY_POINT_TYPE";

            break;
          default:
            switch(action)
            {
              case 9001:
                action = @"TAP_WIDGET_ITEM";

                break;
              case 9002:
                action = @"DISPLAY_NOTIFICATION";

                break;
              case 9003:
                action = @"TAP_NOTIFICATION";

                break;
              case 9004:
                action = @"EXPAND_NOTIFICATION";

                break;
              case 9005:
                action = @"DISMISS_NOTIFICATION";

                break;
              case 9006:
                action = @"OPEN_SEARCH";

                break;
              case 9007:
                action = @"OPEN_PAN_VIEW";

                break;
              case 9008:
                action = @"PAN_LEFT";

                break;
              case 9009:
                action = @"PAN_UP";

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
                action = @"PAN_DOWN";

                break;
              case 9012:
                action = @"TAP_RECENT_DESTINATIONS";

                break;
              case 9013:
                action = @"OPEN_DESTINATIONS";

                break;
              case 9014:
                action = @"OPEN_FAVORITES";

                break;
              case 9015:
                action = @"VIEW_NAV_OPTIONS";

                break;
              case 9016:
                action = @"START_NAV_NO_GUIDANCE";

                break;
              case 9017:
                action = @"TURN_OFF_GUIDANCE";

                break;
              case 9018:
                action = @"TURN_ON_GUIDANCE";

                break;
              case 9019:
                action = @"OPEN_KEYBOARD";

                break;
              case 9020:
                action = @"SHARE_DESTINATION";

                break;
              case 9021:
                action = @"START_NAV_AUTOMATED";

                break;
              case 9022:
                action = @"SHARE_ETA";

                break;
              case 9023:
                action = @"SELECT_GROUP";

                break;
              case 9024:
                action = @"DESELECT_GROUP";

                break;
              case 9025:
                action = @"SELECT_CONTACT";

                break;
              case 9026:
                action = @"DESELECT_CONTACT";

                break;
              case 9027:
                action = @"TAP_VIEW_CONTACTS";

                break;
              case 9028:
                action = @"STOP_RECEIVING_ETA";

                break;
              case 9029:
                action = @"DISPLAY_ANNOUNCEMENT";

                break;
              case 9030:
                action = @"TAP_ANNOUNCEMENT";

                break;
              case 9031:
                action = @"DISPLAY_CYCLING_NOTIFICATION";

                break;
              case 9032:
                action = @"TAP_CYCLING_NOTIFICATION";

                break;
              case 9033:
                action = @"SHARE_CYCLING_ETA";

                break;
              case 9034:
                action = @"MANAGE_NOTIFICATIONS";

                break;
              case 9035:
                action = @"PUNCH_OUT_PUBLISHER_REVIEW";

                break;
              case 9036:
                action = @"SCROLL_FORWARD";

                break;
              case 9037:
                action = @"SCROLL_BACKWARD";

                break;
              case 9038:
                action = @"SHOW_ALL_CURATED_COLLECTIONS";

                break;
              case 9039:
                action = @"TAP_LESS";

                break;
              case 9040:
                action = @"TAP_MORE";

                break;
              case 9101:
                action = @"DISPLAY_ADD_HOME_AND_WORK";

                break;
              case 9102:
                action = @"TAP_ADD_HOME_AND_WORK";

                break;
              case 9103:
                action = @"DISPLAY_ALLOW_FREQUENTS";

                break;
              case 9104:
                action = @"TAP_ALLOW_FREQUENTS";

                break;
              case 9105:
                action = @"DISPLAY_ALLOW_LOCATION";

                break;
              case 9106:
                action = @"TAP_ALLOW_LOCATION";

                break;
              default:
                switch(action)
                {
                  case 11001:
                    action = @"EXIT_MAPS_LOWER_WRIST";

                    break;
                  case 11002:
                    action = @"TASK_READY";

                    break;
                  case 11003:
                    action = @"TAP_SEARCH";

                    break;
                  case 11004:
                    action = @"TAP_MY_LOCATION";

                    break;
                  case 11005:
                    action = @"SHOW_NEARBY";

                    break;
                  case 11006:
                    action = @"TAP_NEARBY";

                    break;
                  case 11007:
                    action = @"TAP_PROACTIVE";

                    break;
                  case 11008:
                    action = @"FORCE_PRESS";

                    break;
                  case 11009:
                    action = @"TAP_CONTACTS";

                    break;
                  case 11010:
                    action = @"TAP_TRANSIT";

                    break;
                  case 11011:
                    action = @"TAP_DICTATION";

                    break;
                  case 11012:
                    action = @"GET_DIRECTIONS_DRIVING";

                    break;
                  case 11013:
                    action = @"GET_DIRECTIONS_WALKING";

                    break;
                  case 11014:
                    action = @"GET_DIRECTIONS_TRANSIT";

                    break;
                  case 11015:
                    action = @"OPEN_STANDARD_MAP";

                    break;
                  case 11016:
                    action = @"OPEN_TRANSIT_MAP";

                    break;
                  case 11017:
                    action = @"START_NAV_AUTO";

                    break;
                  case 11018:
                    action = @"TAP_RECENT";

                    break;
                  case 11019:
                    action = @"TAP_FAVORITE";

                    break;
                  case 11020:
                    action = @"TAP_SCRIBBLE";

                    break;
                  case 11021:
                    action = @"TAP_VIEW_MAP";

                    break;
                  case 11022:
                    action = @"TAP_VIEW_TBT";

                    break;
                  case 11023:
                    action = @"VIEW_ROUTE_INFO";

                    break;
                  case 11024:
                    action = @"NAV_UNMUTE";

                    break;
                  case 11025:
                    action = @"NAV_MUTE";

                    break;
                  case 11026:
                    action = @"GET_DIRECTIONS_CYCLING";

                    break;
                  case 11027:
                    action = @"TAP_SEARCH_HOME";

                    break;
                  case 11028:
                    action = @"ROUTE_PAUSED_ON_WATCH";

                    break;
                  case 11029:
                    action = @"NEXT_STOP_TAPPED_ON_WATCH";

                    break;
                  default:
                    goto LABEL_195;
                }

                break;
            }

            break;
        }

        return action;
      }

      if (action > 16000)
      {
        switch(action)
        {
          case 17001:
            action = @"START_DRAG";

            break;
          case 17002:
            action = @"CANCEL_DRAG";

            break;
          case 17003:
            action = @"COMPLETE_DRAG";

            break;
          case 17004:
            action = @"START_DROP";

            break;
          case 17005:
            action = @"CANCEL_DROP";

            break;
          case 17006:
            action = @"COMPLETE_DROP";

            break;
          case 17007:
            action = @"ANNOTATION_SELECT";

            break;
          case 17008:
            action = @"ANNOTATION_SELECT_AUTO";

            break;
          case 17009:
            action = @"ANNOTATION_SELECT_LIST";

            break;
          case 17010:
            action = @"BROWSE_TOP_CATEGORY_DISPLAYED";

            break;
          case 17011:
            action = @"CALLOUT_FLYOVER_TOUR";

            break;
          case 17012:
            action = @"CALLOUT_INFO";

            break;
          case 17013:
            action = @"CALLOUT_NAV_TRANSIT";

            break;
          case 17014:
            action = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

            break;
          case 17015:
            action = @"CALLOUT_VIEW_TRANSIT_LINE";

            break;
          case 17016:
            action = @"DIRECTIONS_SELECT";

            break;
          case 17017:
            action = @"DIRECTIONS_TRANSIT_CUSTOM";

            break;
          case 17018:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

            break;
          case 17019:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

            break;
          case 17020:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

            break;
          case 17021:
            action = @"DIRECTIONS_TRANSIT_LATER";

            break;
          case 17022:
            action = @"DIRECTIONS_TRANSIT_NOW";

            break;
          case 17023:
            action = @"FLYOVER_NOTIFICATION_DISMISS";

            break;
          case 17024:
            action = @"FLYOVER_NOTIFICATION_START";

            break;
          case 17025:
            action = @"FLYOVER_TOUR_COMPLETED";

            break;
          case 17026:
            action = @"FLYOVER_TOUR_END";

            break;
          case 17027:
            action = @"FLYOVER_TOUR_NOTIFICATION";

            break;
          case 17028:
            action = @"FLYOVER_TOUR_START";

            break;
          case 17029:
            action = @"INFO_BOOKMARKS";

            break;
          case 17030:
            action = @"INFO_CARD_DETACHED";

            break;
          case 17031:
            action = @"INFO_CONTACTS";

            break;
          case 17032:
            action = @"INFO_DIRECTIONS";

            break;
          case 17033:
            action = @"INFO_DIRECTIONS_FROM";

            break;
          case 17034:
            action = @"INFO_DIRECTIONS_TO";

            break;
          case 17035:
            action = @"INFO_DISMISS";

            break;
          case 17036:
            action = @"INFO_INFO";

            break;
          case 17037:
            action = @"INFO_PHOTOS";

            break;
          case 17038:
            action = @"INFO_REVIEWS";

            break;
          case 17039:
            action = @"INFO_SHARE";

            break;
          case 17040:
            action = @"INFO_SHARE_AIRDROP";

            break;
          case 17041:
            action = @"INFO_SHARE_FACEBOOK";

            break;
          case 17042:
            action = @"INFO_SHARE_MAIL";

            break;
          case 17043:
            action = @"INFO_SHARE_MESSAGE";

            break;
          case 17044:
            action = @"INFO_SHARE_TENCENTWEIBO";

            break;
          case 17045:
            action = @"INFO_SHARE_WEIBO";

            break;
          case 17046:
            action = @"INFO_YELP";

            break;
          case 17047:
            action = @"MAPS_APP_LAUNCH";

            break;
          case 17048:
            action = @"MAP_3D_OFF";

            break;
          case 17049:
            action = @"MAP_3D_ON";

            break;
          case 17050:
            action = @"MAP_OPTIONS_DROP_PIN";

            break;
          case 17051:
            action = @"MAP_OPTIONS_HYBRID";

            break;
          case 17052:
            action = @"MAP_OPTIONS_PRINT";

            break;
          case 17053:
            action = @"MAP_OPTIONS_REMOVE_PIN";

            break;
          case 17054:
            action = @"MAP_OPTIONS_SATELLITE";

            break;
          case 17055:
            action = @"MAP_OPTIONS_STANDARD";

            break;
          case 17056:
            action = @"MAP_OPTIONS_TRAFFIC_HIDE";

            break;
          case 17057:
            action = @"MAP_OPTIONS_TRAFFIC_SHOW";

            break;
          case 17058:
            action = @"MAP_OPTIONS_TRANSIT";

            break;
          case 17059:
            action = @"MAP_TAP_FLYOVER_CITY";

            break;
          case 17060:
            action = @"MAP_TAP_LINE";

            break;
          case 17061:
            action = @"MAP_TAP_POI_TRANSIT";

            break;
          case 17062:
            action = @"MAP_TAP_TRAFFIC_INCIDENT";

            break;
          case 17063:
            action = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

            break;
          case 17064:
            action = @"MAP_USER_TRACKING_OFF";

            break;
          case 17065:
            action = @"MAP_USER_TRACKING_ON";

            break;
          case 17066:
            action = @"MAP_USER_TRACKING_WITH_HEADING_ON";

            break;
          case 17067:
            action = @"NAV_CLEAR";

            break;
          case 17068:
            action = @"NAV_LIST";

            break;
          case 17069:
            action = @"NAV_ROUTE_STEP_NEXT";

            break;
          case 17070:
            action = @"NAV_ROUTE_STEP_PREV";

            break;
          case 17071:
            action = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

            break;
          case 17072:
            action = @"ORB_DISPLAY_MENU";

            break;
          case 17073:
            action = @"ORB_MENU_CALL";

            break;
          case 17074:
            action = @"ORB_MENU_DIRECTIONS";

            break;
          case 17075:
            action = @"ORB_MENU_DISMISS";

            break;
          case 17076:
            action = @"ORB_MENU_SHARE";

            break;
          case 17077:
            action = @"ORB_MENU_SHOW_PLACECARD";

            break;
          case 17078:
            action = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

            break;
          case 17079:
            action = @"ORB_MENU_URL";

            break;
          case 17080:
            action = @"ORB_PRESS";

            break;
          case 17081:
            action = @"ORB_SPRINGBOARD_MARK_LOCATION";

            break;
          case 17082:
            action = @"ORB_SPRINGBOARD_SEARCH";

            break;
          case 17083:
            action = @"ORB_SPRINGBOARD_SHARE_LOCATION";

            break;
          case 17084:
            action = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

            break;
          case 17085:
            action = @"RAP_PERMISSION_CANCEL";

            break;
          case 17086:
            action = @"RAP_PERMISSION_EMAIL_NA";

            break;
          case 17087:
            action = @"RAP_PERMISSION_EMAIL_OK";

            break;
          case 17088:
            action = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

            break;
          case 17089:
            action = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

            break;
          case 17090:
            action = @"RAP_PERMISSION_OK";

            break;
          case 17091:
            action = @"SEARCH_BEGIN";

            break;
          case 17092:
            action = @"SEARCH_CANCEL";

            break;
          case 17093:
            action = @"SEARCH_SELECT";

            break;
          case 17094:
            action = @"TRANSIT_LINE_SELECTION_DISMISS";

            break;
          case 17095:
            action = @"TRANSIT_LINE_SELECTION_VIEW";

            break;
          case 17096:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

            break;
          case 17097:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

            break;
          case 17098:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

            break;
          case 17099:
            action = @"UNKNOWN_ACTION";

            break;
          case 17100:
            action = @"INFO_SHARE_TWITTER";

            break;
          case 17101:
            action = @"INFO_TAP_POPULAR_APP_NEARBY";

            break;
          case 17102:
            action = @"INFO_DIRECTIONS_WALK";

            break;
          case 17103:
            action = @"INFO_DIRECTIONS_TRANSIT";

            break;
          case 17104:
            action = @"INFO_DIRECTIONS_DRIVE";

            break;
          case 17105:
            action = @"INFO_REPORT_A_PROBLEM";

            break;
          case 17106:
            action = @"CALLOUT_NAV";

            break;
          case 17107:
            action = @"RAP_PERMISSION_EMAIL_CANCEL";

            break;
          case 17108:
            action = @"MAP_TAP_POI";

            break;
          default:
            if (action == 16001)
            {
              action = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (action != 90010)
              {
                goto LABEL_195;
              }

              action = @"PAN_RIGHT";
            }

            break;
        }

        return action;
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
                action = @"ADD_SPECIAL_REQUEST";

                break;
              case 0x2EE9:
                action = @"CHANGE_RESERVATION";

                break;
              case 0x2EEA:
                action = @"LEARN_MORE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action > 13002)
          {
            if (action == 13003)
            {
              action = @"SELECT_LABEL";
            }

            else
            {
              action = @"DELETE_ADDRESS";
            }
          }

          else if (action == 13001)
          {
            action = @"SELECT_ADDRESS";
          }

          else
          {
            action = @"ADD_ADDRESS";
          }
        }

        else if (action <= 12003)
        {
          if (action == 12001)
          {
            action = @"VIEW_MORE_OPTIONS";
          }

          else if (action == 12002)
          {
            action = @"SELECT_TIME";
          }

          else
          {
            action = @"SHOW_NEXT_AVAILABLE";
          }
        }

        else if (action > 12005)
        {
          if (action == 12006)
          {
            action = @"EDIT_BOOKING";
          }

          else
          {
            action = @"EDIT_PHONE";
          }
        }

        else if (action == 12004)
        {
          action = @"DECREASE_TABLE_SIZE";
        }

        else
        {
          action = @"INCREASE_TABLE_SIZE";
        }
      }

      else if (action <= 14004)
      {
        if (action <= 14000)
        {
          switch(action)
          {
            case 0x32CD:
              action = @"EDIT_ITEMS";

              break;
            case 0x32CE:
              action = @"RAP_FAVORITES";

              break;
            case 0x32CF:
              action = @"SORT_LIST_ITEM";

              break;
            default:
              goto LABEL_195;
          }
        }

        else if (action > 14002)
        {
          if (action == 14003)
          {
            action = @"BOOK_RIDE";
          }

          else
          {
            action = @"REQUEST_RIDE";
          }
        }

        else if (action == 14001)
        {
          action = @"VIEW_APP";
        }

        else
        {
          action = @"ENABLE";
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
              action = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              action = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (action == 14005)
          {
            action = @"CONTACT_DRIVER";
          }

          else
          {
            action = @"CHANGE_PAYMENT";
          }

          return action;
        }

        if (action > 15001)
        {
          if (action == 15002)
          {
            action = @"ORB_POP";
          }

          else
          {
            if (action != 15003)
            {
              goto LABEL_195;
            }

            action = @"ORB_DISMISS";
          }
        }

        else
        {
          if (action != 14009)
          {
            if (action == 15001)
            {
              action = @"ORB_PEEK";

              return action;
            }

LABEL_195:
            action = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_196:

            return action;
          }

          action = @"SUBMIT_TRIP_FEEDBACK";
        }
      }
    }
  }

  else
  {
    action = 0;
  }

  return action;
}

- (id)_whiteListedBrowseCategoryActionAsString:(int)string
{
  if (string == 2004)
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
            action = @"TAP_DIRECTIONS";
          }

          else if (action == 1502)
          {
            action = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            action = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(action)
          {
            case 2001:
              action = @"TAP_SEARCH_FIELD";

              return action;
            case 2002:
              action = @"CLEAR_SEARCH";

              return action;
            case 2003:
              action = @"CANCEL_SEARCH";

              return action;
            case 2004:
              action = @"TAP_BROWSE_TOP_CATEGORY";

              return action;
            case 2005:
              action = @"TAP_BROWSE_SUB_CATEGORY";

              return action;
            case 2006:
              action = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

              return action;
            case 2007:
              action = @"TAP_LIST_ITEM";

              return action;
            case 2008:
              action = @"SHARE_LIST_ITEM";

              return action;
            case 2009:
              action = @"DELETE_LIST_ITEM";

              return action;
            case 2010:
              action = @"EDIT_LIST_ITEM";

              return action;
            case 2011:
              action = @"REFRESH_SEARCH";

              return action;
            case 2012:
              action = @"REVEAL_LIST_ITEM_ACTIONS";

              return action;
            case 2013:
              action = @"HIDE_LIST_ITEM_ACTIONS";

              return action;
            case 2014:
              action = @"TAP_SEARCH_BUTTON";

              return action;
            case 2015:
              action = @"SHOW_SEARCH_RESULTS";

              return action;
            case 2016:
              action = @"SHOW_REFRESH_SEARCH";

              return action;
            case 2017:
              action = @"PASTE_TEXT";

              return action;
            case 2018:
              action = @"TAP_LIST_SUB_ITEM";

              return action;
            case 2019:
              action = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2020:
              action = @"TAP_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2021:
              action = @"CLOSE_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2022:
              action = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2023:
              action = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2024:
              action = @"RETAINED_QUERY";

              return action;
            case 2025:
              action = @"TAP_RECENT_AC_SUGGESTION";

              return action;
            case 2026:
              action = @"CLEAR_RECENT_AC_SUGGESTION";

              return action;
            case 2027:
              action = @"DELETE_RECENT_AC_SUGGESTION";

              return action;
            case 2028:
            case 2029:
              goto LABEL_195;
            case 2030:
              action = @"TAP_BROWSE_NEARBY_CATEGORY";

              return action;
            case 2031:
              action = @"TAP_SUBACTION";

              return action;
            case 2032:
              action = @"TAP_QUERY_BUILDING_ARROW";

              return action;
            case 2033:
              action = @"CLICK_ON_EDIT_SEARCH";

              return action;
            case 2034:
              action = @"REMOVE_CLIENT_AC_SUGGESTION";

              return action;
            case 2035:
              action = @"SHARE_CLIENT_AC_SUGGESTION";

              return action;
            case 2036:
              action = @"TAP_ON_MORE_RESULTS";

              return action;
            case 2037:
              action = @"SHARE_ITEM";

              return action;
            case 2038:
              action = @"HIDE_ITEM";

              return action;
            case 2039:
              action = @"TAP_SUGGESTED_ITEM";

              return action;
            case 2040:
              action = @"SHARE_SUGGESTED_ITEM";

              return action;
            case 2041:
              action = @"HIDE_SUGGESTED_ITEM";

              return action;
            case 2042:
              action = @"ADD_HOME_FAVORITE";

              return action;
            case 2043:
              action = @"ADD_WORK_FAVORITE";

              return action;
            case 2044:
              action = @"ADD_FAVORITE";

              return action;
            case 2045:
              action = @"VIEW_FAVORITES_LIST";

              return action;
            case 2046:
              action = @"TAP_HOME_FAVORITE";

              return action;
            case 2047:
              action = @"TAP_WORK_FAVORITE";

              return action;
            case 2048:
              action = @"TAP_CAR_FAVORITE";

              return action;
            case 2049:
              action = @"TAP_FAVORITE_ITEM";

              return action;
            case 2050:
              action = @"CREATE_HOME_FAVORITE";

              return action;
            case 2051:
              action = @"CREATE_WORK_FAVORITE";

              return action;
            case 2052:
              action = @"CREATE_FAVORITE";

              return action;
            case 2053:
              action = @"SUBMIT_FAVORITE_EDIT";

              return action;
            case 2054:
              action = @"ADD_RECOMMENDED_FAVORITE";

              return action;
            case 2055:
              action = @"EDIT_FAVORITE";

              return action;
            case 2056:
              action = @"REMOVE_FAVORITE";

              return action;
            case 2057:
              action = @"SHARE_FAVORITE";

              return action;
            case 2058:
              action = @"EDIT_FAVORITES";

              return action;
            case 2059:
              action = @"ADD_FAVORITE_PLACE";

              return action;
            case 2060:
              action = @"REMOVE_FAVORITE_PLACE";

              return action;
            case 2061:
              action = @"CHANGE_HOME_ADDRESS";

              return action;
            case 2062:
              action = @"CHANGE_WORK_ADDRESS";

              return action;
            case 2063:
              action = @"REFINE_LOCATION";

              return action;
            case 2064:
              action = @"TAP_RECENTLY_VIEWED_ITEM";

              return action;
            case 2065:
              action = @"SHOW_COLLECTION_LIST";

              return action;
            case 2066:
              action = @"SHOW_FAVORITES_COLLECTION";

              return action;
            case 2067:
              action = @"SHOW_COLLECTION";

              return action;
            case 2068:
              action = @"TAP_COLLECTION_ITEM";

              return action;
            case 2069:
              action = @"SHARE_COLLECTION_ITEM";

              return action;
            case 2070:
              action = @"REMOVE_COLLECTION_ITEM";

              return action;
            case 2071:
              action = @"SAVE_SHARED_COLLECTION";

              return action;
            case 2072:
              action = @"CREATE_NEW_COLLECTION";

              return action;
            case 2073:
              action = @"SAVE_TO_COLLECTION";

              return action;
            case 2074:
              action = @"EDIT_PHOTO";

              return action;
            case 2075:
              action = @"SORT_BY_NAME";

              return action;
            case 2076:
              action = @"SORT_BY_DISTANCE";

              return action;
            case 2077:
              action = @"SORT_BY_RECENT";

              return action;
            case 2078:
              action = @"AUTO_SHARE_ETA";

              return action;
            case 2079:
              action = @"CANCEL_AUTO_SHARE_ETA";

              return action;
            case 2080:
              action = @"MAP_SEARCH";

              return action;
            case 2081:
              action = @"DELETE_COLLECTION";

              return action;
            case 2082:
              action = @"SHARE_COLLECTION";

              return action;
            case 2083:
              action = @"SHOW_TRANSIT_LINES_COLLECTION";

              return action;
            case 2084:
              action = @"SHOW_MY_PLACES";

              return action;
            case 2085:
              action = @"SHOW_ALL_PLACES";

              return action;
            case 2086:
              action = @"TAP_RECENT_QUERY";

              return action;
            case 2087:
              action = @"TAP_QUERY_SUGGESTION";

              return action;
            case 2088:
              action = @"DELETE_CURATED_COLLECTION";

              return action;
            case 2089:
              action = @"FOLLOW";

              return action;
            case 2090:
              action = @"PUNCH_IN";

              return action;
            case 2091:
              action = @"SAVE_CURATED_COLLECTION";

              return action;
            case 2092:
              action = @"SCROLL_LEFT_COLLECTIONS";

              return action;
            case 2093:
              action = @"SCROLL_RIGHT_COLLECTIONS";

              return action;
            case 2094:
              action = @"SEE_ALL_CURATED_COLLECTION";

              return action;
            case 2095:
              action = @"SEE_ALL_PUBLISHERS";

              return action;
            case 2096:
              action = @"SHARE_CURATED_COLLECTION";

              return action;
            case 2097:
              action = @"SHARE_PUBLISHER";

              return action;
            case 2098:
              action = @"SHOW_MORE_COLLECTION";

              return action;
            case 2099:
              action = @"TAP_CURATED_COLLECTION";

              return action;
            case 2100:
              action = @"TAP_FEATURED_COLLECTIONS";

              return action;
            case 2101:
              action = @"TAP_LOCATION";

              return action;
            case 2102:
              action = @"TAP_PUBLISHER";

              return action;
            case 2103:
              action = @"TAP_PUBLISHER_APP";

              return action;
            case 2104:
              action = @"TAP_PUBLISHER_COLLECTIONS";

              return action;
            case 2105:
              action = @"UNFOLLOW";

              return action;
            case 2106:
              action = @"CHANGE_SCHOOL_ADDRESS";

              return action;
            case 2107:
              action = @"ADD_VEHICLE";

              return action;
            case 2108:
              action = @"DISPLAY_VIRTUAL_GARAGE";

              return action;
            case 2109:
              action = @"ENTER_VIRTUAL_GARAGE";

              return action;
            case 2110:
              action = @"PUNCH_OUT_MANUFACTURER_APP";

              return action;
            case 2111:
              action = @"REMOVE_LICENSE_PLATE";

              return action;
            case 2112:
              action = @"REMOVE_VEHICLE";

              return action;
            case 2113:
              action = @"SELECT_VEHICLE";

              return action;
            case 2114:
              action = @"SUBMIT_LICENSE_PLATE";

              return action;
            case 2115:
              action = @"TAP_ADD_LICENSE_PLATE";

              return action;
            case 2116:
              action = @"TAP_ADD_NEW_CAR";

              return action;
            case 2117:
              action = @"TAP_BANNER";

              return action;
            case 2118:
              action = @"TAP_CONNECT";

              return action;
            case 2119:
              action = @"TAP_CONTINUE";

              return action;
            case 2120:
              action = @"TAP_EDIT";

              return action;
            case 2121:
              action = @"TAP_NAME";

              return action;
            case 2122:
              action = @"TAP_NOT_NOW";

              return action;
            case 2123:
              action = @"TAP_OTHER_VEHICLE";

              return action;
            case 2124:
              action = @"TAP_REMOVE_LICENSE_PLATE";

              return action;
            case 2125:
              action = @"TAP_UPDATE_PLATE_NUMBER";

              return action;
            case 2126:
              action = @"TAP_VEHICLE";

              return action;
            case 2127:
              action = @"TAP_VEHICLE_NAME";

              return action;
            case 2128:
              action = @"UPDATE_NAME";

              return action;
            case 2129:
              action = @"DONE_TAKING_PHOTO";

              return action;
            case 2130:
              action = @"ENABLE_SHOW_PHOTO_NAME";

              return action;
            case 2131:
              action = @"SUBMIT_PHOTO";

              return action;
            case 2132:
              action = @"USE_PHOTO";

              return action;
            case 2133:
              action = @"ADD_RECOMMENDATION_TO_MAPS";

              return action;
            case 2134:
              action = @"CANCEL_PHOTO_SUBMISSION";

              return action;
            case 2135:
              action = @"CLOSE_RECOMMENDATION_CARD";

              return action;
            case 2136:
              action = @"EDIT_RATING";

              return action;
            case 2137:
              action = @"PROMPTED_TO_ADD_PHOTO";

              return action;
            case 2138:
              action = @"PROMPTED_TO_ADD_RATING";

              return action;
            case 2139:
              action = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

              return action;
            case 2140:
              action = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

              return action;
            case 2141:
              action = @"RETAKE_PHOTO";

              return action;
            case 2142:
              action = @"REVEAL_RECOMMENDATION_CARD";

              return action;
            case 2143:
              action = @"SUBMIT_NEGATIVE_RATING";

              return action;
            case 2144:
              action = @"SUBMIT_POSITIVE_RATING";

              return action;
            case 2145:
              action = @"TAP_CHOOSING_PHOTO";

              return action;
            case 2146:
              action = @"TAP_TAKE_NEW_PHOTO";

              return action;
            case 2147:
              action = @"TAP_TO_ADD_PHOTO";

              return action;
            case 2148:
              action = @"CANCEL_INCIDENT_REPORT";

              return action;
            case 2149:
              action = @"INCIDENT_REPORT_SUBMITTED";

              return action;
            case 2150:
              action = @"REPORTED_INCIDENT_NOT_RECEIVED";

              return action;
            case 2151:
              action = @"REPORTED_INCIDENT_RECEIVED";

              return action;
            case 2152:
              action = @"REPORT_INCIDENT";

              return action;
            case 2153:
              action = @"SELECT_INCIDENT_TYPE";

              return action;
            case 2154:
              action = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

              return action;
            case 2155:
              action = @"TAP_TO_START_REPORT_INCIDENT";

              return action;
            case 2156:
              action = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

              return action;
            case 2157:
              action = @"ATTEMPT_VLF_CORRECTION";

              return action;
            case 2158:
              action = @"DISMISS_VLF_PROMPT";

              return action;
            case 2159:
              action = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

              return action;
            case 2160:
              action = @"VLF_CORRECTION_FAILED";

              return action;
            case 2161:
              action = @"VLF_CORRECTION_SUCCESSFUL";

              return action;
            case 2162:
              action = @"ENABLE_WIDGET_SUGGESTIONS";

              return action;
            case 2163:
              action = @"DISPLAY_CZ_ADVISORY";

              return action;
            case 2164:
              action = @"PUNCH_OUT_URL_PAY";

              return action;
            case 2165:
              action = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

              return action;
            case 2166:
              action = @"DELETE_ITEM";

              return action;
            case 2167:
              action = @"CANCEL_REMOVE";

              return action;
            case 2168:
              action = @"DELETE_SUGGESTION";

              return action;
            case 2169:
              action = @"ADD_SCHOOL_FAVORITE";

              return action;
            case 2170:
              action = @"GO_TO_WEBSITE";

              return action;
            case 2171:
              action = @"TRY_AGAIN";

              return action;
            case 2172:
              action = @"CHECK_AUTO_RECORD_WORKOUT";

              return action;
            case 2173:
              action = @"CHECK_EBIKE";

              return action;
            case 2174:
              action = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

              return action;
            case 2175:
              action = @"DISPLAY_CYCLING_DEFAULT_OPTION";

              return action;
            case 2176:
              action = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

              return action;
            case 2177:
              action = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

              return action;
            case 2178:
              action = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

              return action;
            case 2179:
              action = @"TAP_AUTOMATIC_WORKOUT_OPTION";

              return action;
            case 2180:
              action = @"TAP_CYCLING_DEFAULT_OPTION";

              return action;
            case 2181:
              action = @"TAP_CYCLING_NO_BIKE_ADVISORY";

              return action;
            case 2182:
              action = @"TAP_CYCLING_STAIRS_ADVISORY";

              return action;
            case 2183:
              action = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

              return action;
            case 2184:
              action = @"UNCHECK_AUTO_RECORD_WORKOUT";

              return action;
            case 2185:
              action = @"UNCHECK_EBIKE";

              return action;
            case 2186:
              action = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

              return action;
            case 2187:
              action = @"DISPLAY_LPR_ADVISORY";

              return action;
            case 2188:
              action = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

              return action;
            case 2189:
              action = @"CREATE_WIDGET";

              return action;
            case 2190:
              action = @"REVEAL_WIDGET_TRAY";

              return action;
            case 2191:
              action = @"LPR_ERROR_CODE";

              return action;
            case 2192:
              action = @"TAP_SEE_ALL_RECENTLY_VIEWED";

              return action;
            case 2193:
              action = @"TAP_CLEAR_RECENTLY_VIEWED";

              return action;
            case 2194:
              action = @"LPR_HARD_STOP";

              return action;
            case 2195:
              action = @"TAP_PUBLISHER_SUBACTION";

              return action;
            case 2196:
              action = @"CARPLAY_DISPLAY_ACTIVATED";

              return action;
            case 2197:
              action = @"CARPLAY_DISPLAY_DEACTIVATED";

              return action;
            case 2198:
              action = @"TAP_FEATURED_COLLECTION";

              return action;
            case 2199:
              action = @"SCROLL_FEATURED_COLLECTION_FORWARD";

              return action;
            case 2200:
              action = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

              return action;
            default:
              if (action == 1504)
              {
                action = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (action != 1505)
                {
                  goto LABEL_195;
                }

                action = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        action = @"UI_ACTION_UNKNOWN";
        switch(action)
        {
          case 0:
            goto LABEL_196;
          case 1:
            action = @"PULL_UP";

            break;
          case 2:
            action = @"PULL_DOWN";

            break;
          case 3:
            action = @"TAP";

            break;
          case 4:
            action = @"CLOSE";

            break;
          case 5:
            action = @"SWIPE_PREV";

            break;
          case 6:
            action = @"SWIPE_NEXT";

            break;
          case 7:
            action = @"SCROLL_UP";

            break;
          case 8:
            action = @"SCROLL_DOWN";

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
            action = @"SHOW_MORE";

            break;
          case 11:
            action = @"SHOW_LESS";

            break;
          case 12:
            action = @"SWIPE_LEFT";

            break;
          case 13:
            action = @"SWIPE_RIGHT";

            break;
          case 14:
            action = @"MINIMIZE";

            break;
          case 15:
            action = @"TAP_PREV";

            break;
          case 16:
            action = @"TAP_NEXT";

            break;
          case 17:
            action = @"SUBMIT";

            break;
          case 18:
            action = @"CANCEL";

            break;
          case 19:
            action = @"ENTER_MAPS";

            break;
          case 20:
            action = @"EXIT_MAPS";

            break;
          case 21:
            action = @"REVEAL";

            break;
          case 22:
            action = @"OPEN_NEW_TAB";

            break;
          case 25:
            action = @"BACK";

            break;
          case 26:
            action = @"ACTIVATE";

            break;
          case 27:
            action = @"DEACTIVATE";

            break;
          case 28:
            action = @"AGREE";

            break;
          case 29:
            action = @"DISAGREE";

            break;
          case 30:
            action = @"SKIP_ANSWER";

            break;
          case 31:
            action = @"EXPAND";

            break;
          case 32:
            action = @"COLLAPSE";

            break;
          case 33:
            action = @"ENTER";

            break;
          case 34:
            action = @"EXIT";

            break;
          case 35:
            action = @"SCROLL_UP_INDEX_BAR";

            break;
          case 36:
            action = @"SCROLL_DOWN_INDEX_BAR";

            break;
          case 37:
            action = @"TOGGLE_ON";

            break;
          case 38:
            action = @"TOGGLE_OFF";

            break;
          case 39:
            action = @"LONG_PRESS";

            break;
          case 40:
            action = @"CLICK";

            break;
          case 41:
            action = @"TAP_DONE";

            break;
          case 42:
            action = @"TAP_CLOSE";

            break;
          case 43:
            action = @"SCROLL_LEFT";

            break;
          case 44:
            action = @"SCROLL_RIGHT";

            break;
          case 45:
            action = @"DISPLAY";

            break;
          case 46:
            action = @"OPEN_IN_APP";

            break;
          case 47:
            action = @"CONCEAL";

            break;
          case 48:
            action = @"TAP_DELETE";

            break;
          case 49:
            action = @"TAP_FILTER";

            break;
          case 50:
            action = @"TAP_SECONDARY_BUTTON";

            break;
          case 51:
            action = @"TAP_WIDGET_FOOD";

            break;
          case 52:
            action = @"TAP_WIDGET_GAS";

            break;
          case 53:
            action = @"TAP_WIDGET_LOADING";

            break;
          case 54:
            action = @"TAP_WIDGET_SEARCH";

            break;
          case 55:
            action = @"TAP_WIDGET_STORES";

            break;
          case 56:
            action = @"DISPLAY_ALLOW_ONCE_PROMPT";

            break;
          case 57:
            action = @"SHARE_CURRENT_LOCATION";

            break;
          case 58:
            action = @"SHARE_PHOTO";

            break;
          case 59:
            action = @"TAP_KEEP_OFF";

            break;
          case 60:
            action = @"TAP_PHOTO_CATEGORY";

            break;
          case 61:
            action = @"TAP_PRECISE_LOCATION_OFF_BANNER";

            break;
          case 62:
            action = @"TAP_TURN_ON";

            break;
          case 63:
            action = @"DISPLAY_CYCLING_ANNOTATION";

            break;
          case 64:
            action = @"DISPLAY_DRIVING_DEFAULT_OPTION";

            break;
          case 65:
            action = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

            break;
          case 66:
            action = @"DISPLAY_WALKING_DEFAULT_OPTION";

            break;
          case 67:
            action = @"TAP_CYCLING_ANNOTATION";

            break;
          case 68:
            action = @"TAP_DRIVING_DEFAULT_OPTION";

            break;
          case 69:
            action = @"TAP_TRANSIT_DEFAULT_OPTION";

            break;
          case 70:
            action = @"TAP_WALKING_DEFAULT_OPTION";

            break;
          case 71:
            action = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

            break;
          case 72:
            action = @"TAP_RIDESHARE_DEFAULT_OPTION";

            break;
          case 73:
            action = @"TAP_PERSONAL_COLLECTION";

            break;
          case 74:
            action = @"RESUME_ROUTE";

            break;
          case 75:
            action = @"DISPLAY_OUT_OF_RANGE_ALERT";

            break;
          case 76:
            action = @"TAP_ALLOW_ONCE";

            break;
          case 77:
            action = @"TAP_DO_NOT_ALLOW";

            break;
          case 78:
            action = @"ADD_RECCOMENDED_FAVORITE";

            break;
          case 79:
            action = @"ADD_RECOMMENDED_HOME_FAVORITE";

            break;
          case 80:
            action = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 81:
            action = @"ADD_RECOMMENDED_WORK_FAVORITE";

            break;
          case 82:
            action = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

            break;
          case 83:
            action = @"CREATE_SCHOOL_FAVORITE";

            break;
          case 84:
            action = @"TAP_SCHOOL_FAVORITE";

            break;
          case 85:
            action = @"SELECT_ROUTING_TYPE_CYCLING";

            break;
          case 86:
            action = @"REPORT_PHOTO";

            break;
          case 87:
            action = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

            break;
          case 88:
            action = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

            break;
          case 89:
            action = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

            break;
          case 90:
            action = @"CREATE_RECOMMENDED_FAVORITE";

            break;
          case 91:
            action = @"CREATE_RECOMMENDED_HOME_FAVORITE";

            break;
          case 92:
            action = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 93:
            action = @"CREATE_RECOMMENDED_WORK_FAVORITE";

            break;
          case 94:
            action = @"TAP_SMALL_WIDGET_ITEM";

            break;
          case 95:
            action = @"TAP_MEDIUM_WIDGET_ITEM";

            break;
          case 96:
            action = @"TAP_LARGE_WIDGET_ITEM";

            break;
          case 97:
            action = @"DISPLAY_ARP_TIPKIT";

            break;
          case 98:
            action = @"NEXT";

            break;
          case 99:
            action = @"TAP_RATE_AND_ADD_PHOTOS";

            break;
          case 100:
            action = @"TAP_TO_ADD_POSITIVE_RATING";

            break;
          case 101:
            action = @"TAP_TO_ADD_NEGATIVE_RATING";

            break;
          case 102:
            action = @"TAP_ACTIVE_SHARING_NOTIFICATION";

            break;
          case 103:
            action = @"INVOKE_SIRI_PROMPT";

            break;
          case 104:
            action = @"ETA_SHARED_SUCCESSFULLY";

            break;
          case 105:
            action = @"ENDED_ETA_SHARE_SUCCESSFULLY";

            break;
          case 106:
            action = @"CLEAR_INCIDENT";

            break;
          case 107:
            action = @"CONFIRM_INCIDENT";

            break;
          case 108:
            action = @"DISMISS_INCIDENT";

            break;
          case 109:
            action = @"INCIDENT_ALERT_TIMEOUT";

            break;
          case 110:
            action = @"INCIDENT_ALERT_TRAY_SHOWN";

            break;
          case 111:
            action = @"INCIDENT_CARD_SHOWN";

            break;
          case 112:
            action = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

            break;
          case 113:
            action = @"INCIDENT_REPORT_TRAY_SHOWN";

            break;
          case 114:
            action = @"NAV_TRAY_DISCOVERY_SHOWN";

            break;
          case 115:
            action = @"TAP_TO_REPORT_INCIDENT";

            break;
          case 116:
            action = @"TAP_SHORTCUT";

            break;
          case 117:
            action = @"BLOCK_CONTACT";

            break;
          case 118:
            action = @"TAP_TO_ADD_RATING";

            break;
          case 119:
            action = @"AR_WALKING_LOCALIZATION_FAILED";

            break;
          case 120:
            action = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

            break;
          case 121:
            action = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

            break;
          case 122:
            action = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

            break;
          case 123:
            action = @"ATTEMPT_AR_WALKING_LOCALIZATION";

            break;
          case 124:
            action = @"RAISE_TO_ENTER_AR_WALKING";

            break;
          case 125:
            action = @"TAP_DISMISS";

            break;
          case 126:
            action = @"TAP_ENTER_AR_WALKING";

            break;
          case 127:
            action = @"TAP_OK";

            break;
          case 128:
            action = @"TAP_TRY_AGAIN";

            break;
          case 129:
            action = @"TAP_TURN_ON_IN_SETTINGS";

            break;
          case 130:
            action = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

            break;
          case 131:
            action = @"VLF_CORRECTION_USER_ABANDON";

            break;
          case 132:
            action = @"AREA_EVENTS_ALERT";

            break;
          case 133:
            action = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

            break;
          case 134:
            action = @"ACCEPT_EVENT_REROUTE";

            break;
          case 135:
            action = @"DISPLAY_AREA_EVENTS_ADVISORY";

            break;
          case 136:
            action = @"DISMISS_EVENT_REROUTE";

            break;
          case 137:
            action = @"PUNCH_OUT_EVENTS_LINK";

            break;
          case 138:
            action = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

            break;
          case 139:
            action = @"ADJUST_GUIDANCE_SETTINGS";

            break;
          case 140:
            action = @"HIDE_DETAILS";

            break;
          case 141:
            action = @"SELECT_VOICE_GUIDANCE_ON";

            break;
          case 142:
            action = @"SELECT_VOICE_GUIDANCE_OFF";

            break;
          case 143:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

            break;
          case 144:
            action = @"TAP_TEXT_LABEL";

            break;
          case 145:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

            break;
          case 146:
            action = @"TAP_EXIT";

            break;
          case 147:
            action = @"TAP_CITY_MENU";

            break;
          case 148:
            action = @"CHECK_AVOID_TOLLS";

            break;
          case 149:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

            break;
          case 150:
            action = @"TAP_ICLOUD";

            break;
          case 151:
            action = @"CHECK_AVOID_HIGHWAYS";

            break;
          case 152:
            action = @"TAP_FAVORITES";

            break;
          case 153:
            action = @"SELECT_DISTANCE_IN_KM";

            break;
          case 154:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

            break;
          case 155:
            action = @"OPEN_FULL_CARD_FILTER";

            break;
          case 156:
            action = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

            break;
          case 157:
            action = @"OPEN_SINGLE_CARD_FILTER";

            break;
          case 158:
            action = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 159:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

            break;
          case 160:
            action = @"SESSIONLESS_REVEAL";

            break;
          case 161:
            action = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

            break;
          case 162:
            action = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

            break;
          case 163:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

            break;
          case 164:
            action = @"ENTER_RAP_REPORT_MENU";

            break;
          case 165:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

            break;
          case 166:
            action = @"TAP_MY_VEHICLES";

            break;
          case 167:
            action = @"SUBMIT_SINGLE_CARD_FILTER";

            break;
          case 168:
            action = @"SUBMIT_FULL_CARD_FILTER";

            break;
          case 169:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

            break;
          case 170:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

            break;
          case 171:
            action = @"TAP_EXPLORE_CURATED_COLELCTIONS";

            break;
          case 172:
            action = @"TAP_ACCOUNT";

            break;
          case 173:
            action = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

            break;
          case 174:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

            break;
          case 175:
            action = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

            break;
          case 176:
            action = @"RESULT_REFINEMENT_TOGGLE_OFF";

            break;
          case 177:
            action = @"TAP_CITY_CURATED_COLLECTIONS";

            break;
          case 178:
            action = @"TAP_REPORTS";

            break;
          case 179:
            action = @"TAP_RATINGS";

            break;
          case 180:
            action = @"TAP_EXPLORE_CURATED_COLLECTIONS";

            break;
          case 181:
            action = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

            break;
          case 182:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

            break;
          case 183:
            action = @"SELECT_DISTANCE_IN_MILES";

            break;
          case 184:
            action = @"TAP_PRIVACY_STATEMENT";

            break;
          case 185:
            action = @"TAP_MAPS_SETTINGS";

            break;
          case 186:
            action = @"CANCEL_FULL_CARD_FILTER";

            break;
          case 187:
            action = @"TAP_LATEST_CURATED_COLLECTION";

            break;
          case 188:
            action = @"TAP_TEMPORAL_CURATED_COLLECTION";

            break;
          case 189:
            action = @"UNCHECK_AVOID_TOLLS";

            break;
          case 190:
            action = @"UNSELECT_SEARCH_REFINEMENT";

            break;
          case 191:
            action = @"TAP_RATING";

            break;
          case 192:
            action = @"TAP_ICLOUD_SIGN_IN";

            break;
          case 193:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

            break;
          case 194:
            action = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

            break;
          case 195:
            action = @"UNCHECK_AVOID_HIGHWAYS";

            break;
          case 196:
            action = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

            break;
          case 197:
            action = @"RESULT_REFINEMENT_TOGGLE_ON";

            break;
          case 198:
            action = @"TAP_CONTEXT_LINE_HYPERLINK";

            break;
          case 199:
            action = @"TAP_MY_GUIDES";

            break;
          case 200:
            action = @"SELECT_SEARCH_REFINEMENT";

            break;
          case 201:
            action = @"SESSIONLESS_TAP_ACCOUNT";

            break;
          case 202:
            action = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 203:
            action = @"TAP_TRAVEL_PREFERENCES";

            break;
          case 204:
            action = @"SHOW_CURATED_COLLECTION_LIST";

            break;
          case 205:
            action = @"CANCEL_SINGLE_CARD_FILTER";

            break;
          case 206:
            action = @"DISPLAY_HFP_OPTION";

            break;
          case 207:
            action = @"SWITCH_OFF_HFP";

            break;
          case 208:
            action = @"SWITCH_ON_HFP";

            break;
          case 209:
            action = @"TAP_QUICK_ACTION_TRAY";

            break;
          case 210:
            action = @"SHOW_ALL_CITIES";

            break;
          case 211:
            action = @"TAP_ADD_NEARBY_TRANSIT";

            break;
          case 212:
            action = @"RESUME";

            break;
          case 213:
            action = @"DISPLAY_TIPKIT_PROMPT";

            break;
          case 214:
            action = @"TAP_NEARBY_TRANSIT_FAVORITE";

            break;
          case 215:
            action = @"TAP_DRIVING_MODE";

            break;
          case 216:
            action = @"SWITCH_ON_VOICE_GUIDANCE";

            break;
          case 217:
            action = @"DISMISS_TIPKIT_PROMPT";

            break;
          case 218:
            action = @"TAP_EXPAND_EXIT_DETAILS";

            break;
          case 219:
            action = @"TAP_NEARBY_TRANSIT_FILTER";

            break;
          case 220:
            action = @"TAP_MORE_DEPARTURES";

            break;
          case 221:
            action = @"RAP_INDIVIDUAL_PLACE";

            break;
          case 222:
            action = @"RAP_ADD_MAP";

            break;
          case 223:
            action = @"TAP_SUGGESTED_RAP";

            break;
          case 224:
            action = @"RAP_STREET_ISSUE";

            break;
          case 225:
            action = @"SWIPE_PIN_REVEAL";

            break;
          case 226:
            action = @"TAP_ADD_TIPKIT_FAVORITE";

            break;
          case 227:
            action = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

            break;
          case 228:
            action = @"RAP_BAD_TRIP";

            break;
          case 229:
            action = @"RAP_PLACE_ISSUE";

            break;
          case 230:
            action = @"TAP_OPEN_MAPS";

            break;
          case 231:
            action = @"TAP_NEARBY_TRANSIT_RESULT";

            break;
          case 232:
            action = @"RAP_GUIDE";

            break;
          case 233:
            action = @"SWITCH_OFF_VOICE_GUIDANCE";

            break;
          case 234:
            action = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

            break;
          case 235:
            action = @"SELECT_TRANSIT_STEP";

            break;
          case 236:
            action = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

            break;
          case 237:
            action = @"TAP_SEE_MORE";

            break;
          case 238:
            action = @"RAP_IN_REVIEW";

            break;
          case 239:
            action = @"TAP_OPEN_MENU";

            break;
          case 240:
            action = @"TAP_NEARBY_TRANSIT";

            break;
          case 241:
            action = @"TAP_PIN_LINE";

            break;
          case 242:
            action = @"SWITCH_OFF_TRIP_FEEDBACK";

            break;
          case 243:
            action = @"RAP_GOOD_TRIP";

            break;
          case 244:
            action = @"TAP_FILTERED_CURATED_COLLECTION";

            break;
          case 245:
            action = @"SHARE_MY_LOCATION";

            break;
          case 246:
            action = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

            break;
          case 247:
            action = @"DISPLAY_GENERIC_ADVISORY";

            break;
          case 248:
            action = @"ADVISORY_ALERT";

            break;
          case 249:
            action = @"PUNCH_OUT_LINK";

            break;
          case 250:
            action = @"TAP_GENERIC_ADVISORY";

            break;
          case 251:
            action = @"TAP_EXPLORE_MODE";

            break;
          case 252:
            action = @"TAP_UNPIN_LINE";

            break;
          case 253:
            action = @"MENU_UNPIN";

            break;
          case 254:
            action = @"MENU_PIN";

            break;
          case 255:
            action = @"SWIPE_PIN";

            break;
          case 256:
            action = @"SWIPE_UNPIN";

            break;
          case 257:
            action = @"TAP_MEDIA_APP";

            break;
          case 258:
            action = @"TAP_GUIDES_SUBACTION";

            break;
          case 259:
            action = @"TAP_MEDIA";

            break;
          case 260:
            action = @"PUNCH_OUT_MEDIA";

            break;
          case 261:
            action = @"SHOW_MEDIA_APP_MENU";

            break;
          case 262:
            action = @"SCROLL_RIGHT_RIBBON";

            break;
          case 263:
            action = @"SCROLL_LEFT_RIBBON";

            break;
          case 264:
            action = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

            break;
          case 265:
            action = @"TAP_SHOW_MORE_TEXT";

            break;
          case 266:
            action = @"SCROLL_LEFT_RATINGS";

            break;
          case 267:
            action = @"SCROLL_LEFT_TEMPLATE_PLACE";

            break;
          case 268:
            action = @"SCROLL_RIGHT_TEMPLATE_PLACE";

            break;
          case 269:
            action = @"SCROLL_RIGHT_RATINGS";

            break;
          case 270:
            action = @"TAP_ALLOW";

            break;
          case 271:
            action = @"TAP_GO_TO_SETTING";

            break;
          case 272:
            action = @"START_SUBMIT_REPORT";

            break;
          case 273:
            action = @"AUTHENTICATION_INFO_FAILURE";

            break;
          case 274:
            action = @"SUCCESSFULLY_SUBMIT_REPORT";

            break;
          case 275:
            action = @"FAILED_SUBMIT_REPORT";

            break;
          case 276:
            action = @"AUTHENTICATION_INFO_SUCCESS";

            break;
          case 277:
            action = @"EDIT_WAYPOINT";

            break;
          case 278:
            action = @"CLEAR_TEXT";

            break;
          case 279:
            action = @"REORDER_WAYPOINT";

            break;
          case 280:
            action = @"REMOVE_WAYPOINT";

            break;
          case 281:
            action = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

            break;
          case 282:
            action = @"TAP_SHOWCASE_MENU";

            break;
          case 283:
            action = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

            break;
          case 284:
            action = @"TAP_PHOTO_ALBUM";

            break;
          case 285:
            action = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 286:
            action = @"RAP_INLINE_ADD";

            break;
          case 287:
            action = @"RAP_TAP_EDIT";

            break;
          case 288:
            action = @"CLAIM_BUSINESS";

            break;
          case 289:
            action = @"RAP_EDIT_OPTIONS";

            break;
          case 290:
            action = @"TAP_IN_REVIEW_RAP";

            break;
          case 291:
            action = @"ORB_MENU_ADD_STOP";

            break;
          case 292:
            action = @"NEXT_STOP";

            break;
          case 293:
            action = @"ARRIVE_AT_WAYPOINT";

            break;
          case 294:
            action = @"REMOVE_STOP";

            break;
          case 295:
            action = @"DISPLAY_PAUSE_BUTTON";

            break;
          case 296:
            action = @"DISPLAY_PAUSE_NEXT_BUTTONS";

            break;
          case 297:
            action = @"AUTO_ADVANCE_NEXT_STOP";

            break;
          case 298:
            action = @"ADD_INLINE_NEGATIVE_RATING";

            break;
          case 299:
            action = @"ADD_INLINE_POSITIVE_RATING";

            break;
          case 300:
            action = @"TAP_TO_ADD_RATING_AND_PHOTO";

            break;
          case 301:
            action = @"SUBMIT_RATINGS_AND_PHOTOS";

            break;
          case 302:
            action = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

            break;
          case 303:
            action = @"TAP_RECENTLY_VIEWED_ROUTE";

            break;
          case 304:
            action = @"SHOW_ALL_RECENTS";

            break;
          case 305:
            action = @"RESUME_MULTIPOINT_ROUTE";

            break;
          case 306:
            action = @"DISMISS_TRANSIT_TIPKIT";

            break;
          case 307:
            action = @"DISPLAY_TRANSIT_TIPKIT";

            break;
          case 308:
            action = @"TAP_TRANSIT_TIPKIT";

            break;
          case 309:
            action = @"FILTER_EV";

            break;
          case 310:
            action = @"FILTER_SURCHARGE";

            break;
          case 311:
            action = @"FILTER_PREFER";

            break;
          case 312:
            action = @"TAP_WALKING_ANNOTATION";

            break;
          case 313:
            action = @"FILTER_AVOID";

            break;
          case 314:
            action = @"FILTER_TRANSPORTATION_MODE";

            break;
          case 315:
            action = @"FILTER_RECOMMENDED_ROUTES";

            break;
          case 316:
            action = @"FILTER_IC_FARES";

            break;
          case 317:
            action = @"FILTER_TRANSIT_CARD_FARES";

            break;
          case 318:
            action = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 319:
            action = @"TAP_NOTIFICATION_SETTINGS";

            break;
          case 320:
            action = @"TAP_ENABLE_NOTIFICATION";

            break;
          case 321:
            action = @"ARP_SUGGESTIONS_TURN_OFF";

            break;
          case 322:
            action = @"ARP_SUGGESTIONS_TURN_ON";

            break;
          case 323:
            action = @"DISMISS_ARP_SUGGESTION";

            break;
          case 324:
            action = @"RATINGS_AND_PHOTOS_TURN_ON";

            break;
          case 325:
            action = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

            break;
          case 326:
            action = @"UNSELECT_SUGGESTED_PHOTOS";

            break;
          case 327:
            action = @"SUGGESTED_PHOTOS_SHOWN";

            break;
          case 328:
            action = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 329:
            action = @"TAP_YOUR_PHOTOS_ALBUM";

            break;
          case 330:
            action = @"RATINGS_AND_PHOTOS_TURN_OFF";

            break;
          case 331:
            action = @"DELETE_PHOTO";

            break;
          case 332:
            action = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 333:
            action = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

            break;
          case 334:
            action = @"TAP_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 335:
            action = @"DISPLAY_YOUR_PHOTOS_ALBUM";

            break;
          case 336:
            action = @"SELECT_SUGGESTED_PHOTOS";

            break;
          case 337:
            action = @"ADD_STOP";

            break;
          case 338:
            action = @"SHOW_CREDIT_TURN_ON";

            break;
          case 339:
            action = @"DISPLAY_ARP_SUGGESTION";

            break;
          case 340:
            action = @"TAP_TO_ADD_PHOTO_CREDIT";

            break;
          case 341:
            action = @"SHOW_CREDIT_TURN_OFF";

            break;
          case 342:
            action = @"TAP_TO_EDIT_NICKNAME";

            break;
          case 343:
            action = @"SUBMIT_RATINGS";

            break;
          case 344:
            action = @"END_NAV_ON_WATCH";

            break;
          case 345:
            action = @"FILTER_EBIKE";

            break;
          case 356:
            action = @"ADD_STOP_SIRI";

            break;
          case 357:
            action = @"TAP_REVIEWED_RAP";

            break;
          case 358:
            action = @"TAP_OUTREACH_RAP";

            break;
          case 359:
            action = @"DISPLAY_SUGGESTED_ITEM";

            break;
          case 360:
            action = @"DISPLAY_HIKING_TIPKIT";

            break;
          case 361:
            action = @"DISMISS_HIKING_TIPKIT";

            break;
          case 362:
            action = @"TAP_HIKING_TIPKIT";

            break;
          case 363:
            action = @"SCROLL_LEFT_TRAILS";

            break;
          case 364:
            action = @"TAP_MORE_TRAILS";

            break;
          case 365:
            action = @"TAP_RELATED_TRAIL";

            break;
          case 366:
            action = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

            break;
          case 367:
            action = @"SCROLL_RIGHT_TRAILS";

            break;
          case 368:
            action = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 369:
            action = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

            break;
          case 370:
            action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 371:
            action = @"TAP_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 372:
            action = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 373:
            action = @"EXPIRED_MAPS_REMOVED";

            break;
          case 374:
            action = @"UPDATE_ALL_DOWNLOAD_MAPS";

            break;
          case 375:
            action = @"TAP_EXPIRED_MAPS";

            break;
          case 376:
            action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 377:
            action = @"MOVE_DOWNLOAD_MAPS";

            break;
          case 378:
            action = @"SAVE_RENAME_DOWNLOAD_MAPS";

            break;
          case 379:
            action = @"TAP_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 380:
            action = @"TAP_ENTER_OFFLINE_MAPS";

            break;
          case 381:
            action = @"TAP_DOWNLOAD_MAPS";

            break;
          case 382:
            action = @"TAP_DOWNLOAD_MAPS_CONTINUE";

            break;
          case 383:
            action = @"DELETE_DOWNLOAD_MAPS";

            break;
          case 384:
            action = @"SLIDE_CLEAR_EXPIRED_MAPS";

            break;
          case 385:
            action = @"RENAME_DOWNLOAD_MAPS";

            break;
          case 386:
            action = @"RESIZE_DOWNLOAD_MAPS";

            break;
          case 387:
            action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

            break;
          case 388:
            action = @"RESTORE_EXPIRED_MAPS";

            break;
          case 389:
            action = @"CLEAR_EXPIRED_MAPS";

            break;
          case 390:
            action = @"TAP_USING_OFFLINE_BAR";

            break;
          case 391:
            action = @"UPDATE_DOWNLOAD_MAPS";

            break;
          case 392:
            action = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 393:
            action = @"DISPLAY_DOWNLOAD_MAPS";

            break;
          case 394:
            action = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

            break;
          case 395:
            action = @"DISPLAY_EXPIRED_MAPS";

            break;
          case 396:
            action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 397:
            action = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

            break;
          case 398:
            action = @"SLIDE_RESTORE_EXPIRED_MAPS";

            break;
          case 399:
            action = @"ETA_SHARE_TRAY_TIMEOUT";

            break;
          case 400:
            action = @"START_ETA_SHARING";

            break;
          case 401:
            action = @"PERSON_LOCATION_UPDATE";

            break;
          case 402:
            action = @"STOP_ETA_SHARING";

            break;
          case 403:
            action = @"PUNCH_OUT_TO_FINDMY";

            break;
          case 404:
            action = @"TAP_PEOPLE_LOCATION";

            break;
          case 405:
            action = @"TAP_TO_REQUEST_LOCATION";

            break;
          case 406:
            action = @"ZOOM_OUT_CROWN";

            break;
          case 407:
            action = @"TAP_RESIZE_DOWNLOAD_MAPS";

            break;
          case 408:
            action = @"TAP_DELETE_DOWNLOAD_MAPS";

            break;
          case 409:
            action = @"SELECT_LIST_VIEW";

            break;
          case 410:
            action = @"SCROLL_RIGHT_TRAILHEADS";

            break;
          case 411:
            action = @"SWITCH_TO_ONLINE_MODE";

            break;
          case 412:
            action = @"TAP_RELATED_TRAILHEAD";

            break;
          case 413:
            action = @"SELECT_ELEVATION_VIEW";

            break;
          case 414:
            action = @"TOGGLE_PROXIMITY_RADIUS_ON";

            break;
          case 415:
            action = @"SEE_MORE_RECENTS";

            break;
          case 416:
            action = @"SEE_MORE_GUIDES";

            break;
          case 417:
            action = @"SELECT_CONTROLS";

            break;
          case 418:
            action = @"NO_SEARCH_RESULTS";

            break;
          case 419:
            action = @"TAP_VIEW_RESULTS_CAROUSEL";

            break;
          case 420:
            action = @"TAP_VIEW_RESULTS_LIST";

            break;
          case 421:
            action = @"SELECT_MAP_VIEW";

            break;
          case 422:
            action = @"SCROLL_LEFT_TRAILHEADS";

            break;
          case 423:
            action = @"SWITCH_TO_OFFLINE_MODE";

            break;
          case 424:
            action = @"ZOOM_IN_CROWN";

            break;
          case 425:
            action = @"TOGGLE_PROXIMITY_RADIUS_OFF";

            break;
          case 426:
            action = @"TAP_MAP";

            break;
          case 427:
            action = @"SWIPE_DOWN";

            break;
          case 428:
            action = @"TAP_MORE_TRAILHEADS";

            break;
          case 429:
            action = @"TAP_ROUTE_OPTIONS";

            break;
          case 430:
            action = @"TAP_ROUTE_NAV_MAP";

            break;
          case 431:
            action = @"TAP_ROUTE_OVERVIEW_MAP";

            break;
          case 432:
            action = @"TAP_AUDIO";

            break;
          case 433:
            action = @"TAP_OPEN_PLACECARD";

            break;
          case 434:
            action = @"TAP_VIEW_STOPS";

            break;
          case 435:
            action = @"TAP_ROUTE_DETAILS";

            break;
          case 436:
            action = @"ADD_LPR_VEHICLE";

            break;
          case 437:
            action = @"TAP_ADD_VEHICLE";

            break;
          case 438:
            action = @"TAP_PLUG_TYPE";

            break;
          case 439:
            action = @"UNSELECT_SUGGESTED_NETWORK";

            break;
          case 440:
            action = @"TAP_SET_UP_LATER";

            break;
          case 441:
            action = @"ADD_EV_VEHICLE";

            break;
          case 442:
            action = @"UPDATE_COLOR";

            break;
          case 443:
            action = @"SELECT_OTHER_NETWORK";

            break;
          case 444:
            action = @"UNSELECT_NETWORK";

            break;
          case 445:
            action = @"TAP_BACK";

            break;
          case 446:
            action = @"TAP_CANCEL";

            break;
          case 447:
            action = @"UNSELECT_VEHICLE";

            break;
          case 448:
            action = @"UNSELECT_OTHER_NETWORK";

            break;
          case 449:
            action = @"DISPLAY_EV_TIPKIT";

            break;
          case 450:
            action = @"SELECT_NETWORK";

            break;
          case 451:
            action = @"TAP_EV_TIPKIT";

            break;
          case 452:
            action = @"TAP_CHOOSE_NETWORKS";

            break;
          case 453:
            action = @"TAP_ADD_NETWORK";

            break;
          case 454:
            action = @"FILTER_NETWORK";

            break;
          case 455:
            action = @"SELECT_SUGGESTED_NETWORK";

            break;
          case 456:
            action = @"TRANSIT_TO_WALKING";

            break;
          case 457:
            action = @"TRANSIT_TO_FINDMY";

            break;
          case 458:
            action = @"TAP_AC_KEYBOARD";

            break;
          case 459:
            action = @"REACH_PHOTO_STRIP_END";

            break;
          case 460:
            action = @"SEARCH_HERE_REVEAL";

            break;
          case 461:
            action = @"TAP_SEARCH_HERE";

            break;
          case 462:
            action = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

            break;
          case 463:
            action = @"SAVE";

            break;
          case 464:
            action = @"TAP_MORE_CURATED_HIKES";

            break;
          case 465:
            action = @"CREATE_CUSTOM_ROUTE";

            break;
          case 466:
            action = @"TAP_TRY_NOW";

            break;
          case 467:
            action = @"TAP_CURATED_HIKE";

            break;
          case 468:
            action = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

            break;
          case 469:
            action = @"ADD_TO_LIBRARY";

            break;
          case 470:
            action = @"START_HIKING";

            break;
          case 471:
            action = @"EDIT_NOTE";

            break;
          case 472:
            action = @"CREATE_NOTE";

            break;
          case 473:
            action = @"DELETE_PIN";

            break;
          case 474:
            action = @"ADD_ROUTE";

            break;
          case 475:
            action = @"ADD_PIN";

            break;
          case 476:
            action = @"REMOVE_FROM_COLLECTION";

            break;
          case 477:
            action = @"REMOVE_FROM_LIBRARY";

            break;
          case 478:
            action = @"TAP_ITEM";

            break;
          case 479:
            action = @"DELETE_ROUTE";

            break;
          case 480:
            action = @"TAP_ROUTE";

            break;
          case 481:
            action = @"TAP_DOWNLOAD_WATCH_MAPS";

            break;
          case 482:
            action = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 483:
            action = @"STOP_DOWNLOAD_ONTO_WATCH";

            break;
          case 484:
            action = @"TAP_DOWNLOAD_ONTO_WATCH";

            break;
          case 485:
            action = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 486:
            action = @"TAP_DOWNLOAD_NOW_WATCH";

            break;
          case 487:
            action = @"REVEAL_DETECTION_LIST";

            break;
          case 488:
            action = @"TAP_RECOMMENDATION";

            break;
          case 489:
            action = @"TAP_EXPAND";

            break;
          case 490:
            action = @"EXPAND_DETECTION_LIST";

            break;
          case 491:
            action = @"FIRST_PARTY_MAP_VIEW";

            break;
          case 492:
            action = @"SECOND_PARTY_MAP_VIEW";

            break;
          case 493:
            action = @"THIRD_PARTY_MAP_VIEW";

            break;
          case 494:
            action = @"DAEMON_PARTY_MAP_VIEW";

            break;
          case 495:
            action = @"MAPS_APP_DWELL_TIME_3_SEC";

            break;
          case 496:
            action = @"MAPS_APP_DWELL_TIME_30_SEC";

            break;
          case 497:
            action = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

            break;
          case 498:
            action = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

            break;
          case 499:
            action = @"DISPLAY_DOOM";

            break;
          case 500:
            action = @"TAP_DOOM";

            break;
          case 501:
            action = @"TAP_ROUTE_GENIUS";

            break;
          case 502:
            action = @"DISPLAY_ROUTE_GENIUS";

            break;
          case 503:
            action = @"TAP_WIDGET";

            break;
          case 504:
            action = @"ARRIVE_AT_DESTINATION";

            break;
          case 505:
            action = @"DISPLAY_WIDGET";

            break;
          case 506:
            action = @"CLEAR_HISTORY";

            break;
          case 507:
            action = @"TAP_SECTION";

            break;
          case 508:
            action = @"APPROVE_LOCATION";

            break;
          case 509:
            action = @"DISMISS_VISITED_PLACES_TIPKIT";

            break;
          case 510:
            action = @"DISPLAY_VISITED_PLACES_TIPKIT";

            break;
          case 511:
            action = @"MORE_OPTIONS";

            break;
          case 512:
            action = @"TAP_VISITED_PLACES_AVAILABLE";

            break;
          case 513:
            action = @"AUTO_REFRESH_SEARCH";

            break;
          case 514:
            action = @"REMOVE_VISIT";

            break;
          case 515:
            action = @"WRONG_LOCATION";

            break;
          case 516:
            action = @"CONFIRM";

            break;
          case 517:
            action = @"KEEP_HISTORY";

            break;
          case 518:
            action = @"DISPLAY_VISITED_PLACES_AVAILABLE";

            break;
          case 519:
            action = @"REMOVE";

            break;
          case 520:
            action = @"ALLOW";

            break;
          case 521:
            action = @"DONT_ALLOW";

            break;
          case 522:
            action = @"REMOVE_EVERY_VISIT";

            break;
          case 523:
            action = @"CONTINUE_VISITED_PLACES_TIPKIT";

            break;
          case 524:
            action = @"REMOVE_FROM_FAVORITE_GUIDE";

            break;
          case 525:
            action = @"ADD_TO_FAVORITE_GUIDE";

            break;
          case 526:
            action = @"FAMILIAR_ROUTE_DISPLAYED";

            break;
          case 527:
            action = @"FAMILIAR_ROUTE_NAV_STARTED";

            break;
          case 528:
            action = @"SELECT_AUDIO_VOLUME_LOUDER";

            break;
          case 529:
            action = @"SELECT_AUDIO_VOLUME_SOFTER";

            break;
          case 1001:
            action = @"PAN";

            break;
          case 1002:
            action = @"ZOOM_IN";

            break;
          case 1003:
            action = @"ZOOM_OUT";

            break;
          case 1004:
            action = @"ROTATE";

            break;
          case 1010:
            action = @"TAP_POI";

            break;
          case 1011:
            action = @"TAP_POI_TRANSIT";

            break;
          case 1017:
            action = @"TAP_POI_HIGHLIGHTED";

            break;
          case 1018:
            action = @"TAP_POI_CLUSTERED";

            break;
          case 1020:
            action = @"TAP_POI_DROPPED_PIN";

            break;
          case 1030:
            action = @"DROP_PIN";

            break;
          case 1031:
            action = @"TAP_INCIDENT";

            break;
          case 1032:
            action = @"TAP_TRANSIT_LINE";

            break;
          case 1033:
            action = @"TAP_POI_CALENDAR";

            break;
          case 1034:
            action = @"TAP_POI_CURRENT_LOCATION";

            break;
          case 1035:
            action = @"TAP_POI_TRANSIT_LINE";

            break;
          case 1036:
            action = @"TAP_POI_LANDMARK";

            break;
          case 1037:
            action = @"TAP_POI_FLYOVER";

            break;
          case 1038:
            action = @"TAP_TO_HIDE_TRAY";

            break;
          case 1039:
            action = @"TAP_TO_REVEAL_TRAY";

            break;
          case 1040:
            action = @"TAP_COMPASS";

            break;
          case 1041:
            action = @"PITCH_AWAY_FROM_GROUND";

            break;
          case 1042:
            action = @"PITCH_CLOSER_TO_GROUND";

            break;
          case 1043:
            action = @"ZOOM_IN_PINCH";

            break;
          case 1044:
            action = @"ZOOM_OUT_PINCH";

            break;
          case 1045:
            action = @"ZOOM_IN_DOUBLE_TAP";

            break;
          case 1046:
            action = @"ZOOM_OUT_TWO_FINGER_TAP";

            break;
          case 1047:
            action = @"ZOOM_IN_ONE_FINGER";

            break;
          case 1048:
            action = @"ZOOM_OUT_ONE_FINGER";

            break;
          case 1049:
            action = @"ZOOM_IN_BUTTON";

            break;
          case 1050:
            action = @"ZOOM_OUT_BUTTON";

            break;
          case 1051:
            action = @"TAP_TRAFFIC_CAMERA";

            break;
          case 1052:
            action = @"DISPLAY_INDOOR_MAP_BUTTON";

            break;
          case 1053:
            action = @"OPEN_INDOOR_MAP";

            break;
          case 1054:
            action = @"DISPLAY_VENUE_BROWSE_BUTTON";

            break;
          case 1055:
            action = @"TAP_VENUE_BROWSE_BUTTON";

            break;
          case 1056:
            action = @"ENTER_VENUE_EXPERIENCE";

            break;
          case 1057:
            action = @"EXIT_VENUE_EXPERIENCE";

            break;
          case 1058:
            action = @"ZOOM_IN_SCENE_PINCH";

            break;
          case 1059:
            action = @"ZOOM_OUT_SCENE_PINCH";

            break;
          case 1060:
            action = @"ZOOM_RESET";

            break;
          case 1061:
            action = @"TAP_SCENE_UNAVAILABLE_AREA";

            break;
          case 1062:
            action = @"TAP_TRANSIT_ACCESS_POINT";

            break;
          case 1063:
            action = @"TAP_SPEED_CAMERA";

            break;
          case 1064:
            action = @"TAP_RED_LIGHT_CAMERA";

            break;
          case 1065:
            action = @"TAP_GEO";

            break;
          default:
            if (action != 1500)
            {
              goto LABEL_195;
            }

            action = @"TAP_PLAY_SOUND";

            break;
        }
      }

      return action;
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
              action = @"TAP_HEADING_ON";
            }

            else if (action == 4003)
            {
              action = @"TAP_HEADING_OFF";
            }

            else
            {
              action = @"PUCK_DRIFT";
            }
          }

          else
          {
            switch(action)
            {
              case 5001:
                action = @"SHOW_MAPS_SETTINGS";

                return action;
              case 5002:
                action = @"TAP_STANDARD_MODE";

                return action;
              case 5003:
                action = @"TAP_TRANSIT_MODE";

                return action;
              case 5004:
                action = @"TAP_SATELLITE_MODE";

                return action;
              case 5005:
                action = @"SWITCH_ON_TRAFFIC";

                return action;
              case 5006:
                action = @"SWITCH_OFF_TRAFFIC";

                return action;
              case 5007:
                action = @"SWITCH_ON_LABELS";

                return action;
              case 5008:
                action = @"SWITCH_OFF_LABELS";

                return action;
              case 5009:
                action = @"SWITCH_ON_3D_MAP";

                return action;
              case 5010:
                action = @"SWITCH_OFF_3D_MAP";

                return action;
              case 5011:
                action = @"SWITCH_ON_WEATHER";

                return action;
              case 5012:
                action = @"SWITCH_OFF_WEATHER";

                return action;
              case 5013:
                action = @"REPORT_A_PROBLEM";

                return action;
              case 5014:
                action = @"ADD_PLACE";

                return action;
              case 5015:
                goto LABEL_195;
              case 5016:
                action = @"TAP_PREFERENCES";

                return action;
              case 5017:
                action = @"SWITCH_ON_TOLLS";

                return action;
              case 5018:
                action = @"SWITCH_OFF_TOLLS";

                return action;
              case 5019:
                action = @"SWITCH_ON_HIGHWAYS";

                return action;
              case 5020:
                action = @"SWITCH_OFF_HIGHWAYS";

                return action;
              case 5021:
                action = @"SWITCH_ON_HEADING";

                return action;
              case 5022:
                action = @"SWITCH_OFF_HEADING";

                return action;
              case 5023:
                action = @"SWITCH_ON_SPEED_LIMIT";

                return action;
              case 5024:
                action = @"SWITCH_OFF_SPEED_LIMIT";

                return action;
              case 5025:
                action = @"ELECT_DRIVING_MODE";

                return action;
              case 5026:
                action = @"ELECT_WALKING_MODE";

                return action;
              case 5027:
                action = @"ELECT_TRANSIT_MODE";

                return action;
              case 5028:
                action = @"ELECT_RIDESHARE_MODE";

                return action;
              case 5029:
                action = @"SWITCH_ON_FIND_MY_CAR";

                return action;
              case 5030:
                action = @"SWITCH_OFF_FIND_MY_CAR";

                return action;
              case 5031:
                action = @"MARK_MY_LOCATION";

                return action;
              case 5032:
                action = @"TAP_HYBRID_MODE";

                return action;
              case 5033:
                action = @"CHECK_AVOID_BUSY_ROADS";

                return action;
              case 5034:
                action = @"UNCHECK_AVOID_BUSY_ROADS";

                return action;
              case 5035:
                action = @"CHECK_AVOID_HILLS";

                return action;
              case 5036:
                action = @"UNCHECK_AVOID_HILLS";

                return action;
              case 5037:
                action = @"CHECK_AVOID_STAIRS";

                return action;
              case 5038:
                action = @"UNCHECK_AVOID_STAIRS";

                return action;
              case 5039:
                action = @"ELECT_CYCLING_MODE";

                return action;
              default:
                if (action == 4005)
                {
                  action = @"PUCK_SNAP";
                }

                else
                {
                  if (action != 4006)
                  {
                    goto LABEL_195;
                  }

                  action = @"SELECT_FLOOR";
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
              action = @"START_NAV";

              break;
            case 3002:
              action = @"END_NAV";

              break;
            case 3003:
              action = @"OPEN_NAV_AUDIO_SETTINGS";

              break;
            case 3004:
              action = @"VIEW_DETAILS";

              break;
            case 3005:
              action = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

              break;
            case 3006:
              action = @"OPEN_ROUTING_EDITOR";

              break;
            case 3007:
              action = @"EDIT_ORIGIN";

              break;
            case 3008:
              action = @"EDIT_DESTINATION";

              break;
            case 3009:
              action = @"SWAP_ORIGIN_DESTINATION";

              break;
            case 3010:
              action = @"OPEN_MORE_ROUTES";

              break;
            case 3011:
              action = @"SELECT_ROUTING_TYPE_DRIVING";

              break;
            case 3012:
              action = @"SELECT_ROUTING_TYPE_WALKING";

              break;
            case 3013:
              action = @"SELECT_ROUTING_TYPE_TRANSIT";

              break;
            case 3014:
              action = @"SELECT_ROUTING_TYPE_RIDESHARE";

              break;
            case 3015:
              action = @"SELECT_ROUTE";

              break;
            case 3016:
              action = @"COLLAPSE_STEP_DETAILS_WALK";

              break;
            case 3017:
              action = @"EXPAND_STEP_DETAILS_WALK";

              break;
            case 3018:
              action = @"COLLAPSE_STEP_DETAILS_TRANSIT";

              break;
            case 3019:
              action = @"EXPAND_STEP_DETAILS_TRANSIT";

              break;
            case 3020:
              action = @"UNCHECK_BUS";

              break;
            case 3021:
              action = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3022:
              action = @"UNCHECK_COMMUTER_RAIL";

              break;
            case 3023:
              action = @"UNCHECK_FERRY";

              break;
            case 3024:
              action = @"CHECK_BUS";

              break;
            case 3025:
              action = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3026:
              action = @"CHECK_COMMUTER_RAIL";

              break;
            case 3027:
              action = @"CHECK_FERRY";

              break;
            case 3028:
              action = @"SELECT_LEAVE_AT";

              break;
            case 3029:
              action = @"SELECT_ARRIVE_BY";

              break;
            case 3030:
              action = @"SELECT_LEAVE_NOW";

              break;
            case 3031:
              action = @"SELECT_DATE_TIME";

              break;
            case 3032:
              action = @"SWITCH_ON_IC_FARES";

              break;
            case 3033:
              action = @"SWITCH_OFF_IC_FARES";

              break;
            case 3034:
              action = @"OPEN_ROUTE_OPTIONS_DATETIME";

              break;
            case 3035:
              action = @"OPEN_ROUTE_OPTIONS_TRANSIT";

              break;
            case 3036:
              action = @"OPEN_ROUTE_OPTIONS_DRIVING";

              break;
            case 3037:
              action = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

              break;
            case 3038:
              action = @"REVEAL_FROM_ROUTING";

              break;
            case 3039:
              action = @"DISPLAY_ROUTES";

              break;
            case 3040:
              action = @"CHECK_RECOMMENDED_ROUTES";

              break;
            case 3041:
              action = @"UNCHECK_RECOMMENDED_ROUTES";

              break;
            case 3042:
              action = @"CHECK_FASTER_TRIPS";

              break;
            case 3043:
              action = @"UNCHECK_FASTER_TRIPS";

              break;
            case 3044:
              action = @"CHECK_FEWER_TRANSFERS";

              break;
            case 3045:
              action = @"UNCHECK_FEWER_TRANSFERS";

              break;
            case 3046:
              action = @"CHECK_LESS_WALKING";

              break;
            case 3047:
              action = @"UNCHECK_LESS_WALKING";

              break;
            case 3048:
              action = @"OPEN_ROUTE_OPTIONS_CYCLING";

              break;
            case 3049:
              action = @"TAP_MORE_ROUTES";

              break;
            case 3050:
              action = @"OPEN_NAV_OVERVIEW";

              break;
            case 3051:
              action = @"RESUME_NAV_MANEUVER_VIEW";

              break;
            case 3052:
              action = @"SELECT_AUDIO_VOLUME_SILENT";

              break;
            case 3053:
              action = @"SELECT_AUDIO_VOLUME_LOW";

              break;
            case 3054:
              action = @"SELECT_AUDIO_VOLUME_NORMAL";

              break;
            case 3055:
              action = @"SELECT_AUDIO_VOLUME_LOUD";

              break;
            case 3056:
              action = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

              break;
            case 3057:
              action = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

              break;
            case 3058:
              action = @"RESUME_PREV_NAV";

              break;
            case 3059:
              action = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

              break;
            case 3060:
              action = @"ACCEPT_REROUTE";

              break;
            case 3061:
              action = @"DISMISS_REROUTE";

              break;
            case 3062:
              action = @"ATTEMPT_END_NAV";

              break;
            case 3063:
              action = @"DISPLAY_BANNER";

              break;
            case 3064:
              action = @"VIEW_BANNER_DETAILS";

              break;
            case 3065:
              action = @"ENTER_GUIDANCE";

              break;
            case 3066:
              action = @"AUTO_ADVANCE_GUIDANCE";

              break;
            case 3067:
              action = @"TAP_OPEN_WALLET";

              break;
            case 3068:
              action = @"SELECT_VOICE_GUIDANCE_ALL";

              break;
            case 3069:
              action = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

              break;
            case 3070:
              action = @"SELECT_VOICE_GUIDANCE_NONE";

              break;
            case 3071:
              action = @"DISPLAY_CARD";

              break;
            case 3072:
              action = @"RENDER_ROUTE";

              break;
            case 3073:
              action = @"DISPLAY_JUNCTION_VIEW";

              break;
            case 3074:
              action = @"SELECT_DEPARTURE";

              break;
            case 3075:
              action = @"DISPLAY_AR_VIEW_RAISE_BANNER";

              break;
            case 3076:
              action = @"DEVICE_RAISE";

              break;
            case 3077:
              action = @"ENTER_AR_NAV_VIEW";

              break;
            case 3078:
              action = @"EXIT_AR_NAV_VIEW";

              break;
            case 3079:
              action = @"AR_CALIBRATION_START";

              break;
            case 3080:
              action = @"AR_CALIBRATION_FAILURE";

              break;
            case 3081:
              action = @"AR_CALIBRATION_SUCCESS";

              break;
            case 3082:
              action = @"DISPLAY_AR_NAV_ARROW";

              break;
            case 3083:
              action = @"DISPLAY_AR_NAV_TURN_AROUND";

              break;
            case 3084:
              action = @"DISPLAY_GO_OUTSIDE_BANNER";

              break;
            case 3085:
              action = @"DISPLAY_AR_DARKNESS_MESSAGE";

              break;
            case 3086:
              action = @"DISPLAY_AR_NAV_ENDPOINT";

              break;
            case 3087:
              action = @"DISPLAY_ADVISORY_BANNER";

              break;
            case 3088:
              action = @"TAP_SHOW_ADVISORY_DETAILS";

              break;
            default:
              if (action != 4001)
              {
                goto LABEL_195;
              }

              action = @"RECENTER_CURRENT_LOCATION";

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
                action = @"INVOKE_SIRI_SNIPPET";
              }

              else
              {
                action = @"INVOKE_SIRI_DISAMBIGUATION";
              }
            }

            else if (action == 8003)
            {
              action = @"SHOW_PLACE_DETAILS";
            }

            else if (action == 8004)
            {
              action = @"ANSWER_REROUTE_SUGGESTION";
            }

            else
            {
              action = @"SUGGEST_NAV_REROUTE";
            }
          }

          else if (action > 8008)
          {
            switch(action)
            {
              case 0x1F49:
                action = @"INVOKE_SIRI";

                break;
              case 0x1F4A:
                action = @"DISPLAY_SIRI_ERROR_MESSAGE";

                break;
              case 0x1F4B:
                action = @"DISPLAY_NO_RESULTS_MESSAGE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action == 8006)
          {
            action = @"GET_NAV_STATUS";
          }

          else if (action == 8007)
          {
            action = @"REPEAT_NAV_STATUS";
          }

          else
          {
            action = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }
        }

        else
        {
          switch(action)
          {
            case 7001:
              action = @"EXPAND_TRANSIT_SYSTEM";

              break;
            case 7002:
              action = @"COLLAPSE_TRANSIT_SYSTEM";

              break;
            case 7003:
              action = @"SHOW_MORE_DEPARTURES";

              break;
            case 7004:
              action = @"VIEW_TRANSIT_LINE";

              break;
            case 7005:
              action = @"CANCEL_VIEW_TRANSIT_LINE";

              break;
            case 7006:
              action = @"TAP_TRANSIT_ATTRIBUTION";

              break;
            case 7007:
              action = @"TAP_TRANSIT_ADVISORY";

              break;
            case 7008:
              action = @"MORE_DETAILS_TRANSIT_ADVISORY";

              break;
            case 7009:
              action = @"SUBSCRIBE_LINE_INCIDENT";

              break;
            case 7010:
              action = @"UNSUBSCRIBE_LINE_INCIDENT";

              break;
            case 7011:
              action = @"TAP_NEAREST_STATION";

              break;
            case 7012:
              action = @"TAP_NEAREST_STOP";

              break;
            case 7013:
              action = @"TAP_CONNECTION";

              break;
            case 7014:
              action = @"GET_TICKETS";

              break;
            case 7015:
              action = @"OPEN_SCHEDULECARD_DATETIME";

              break;
            case 7016:
              action = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

              break;
            case 7017:
              action = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

              break;
            case 7018:
              action = @"VIEW_ON_MAP";

              break;
            case 7019:
              action = @"FORCE_UPDATE_DEPARTURE_INFO";

              break;
            case 7020:
              action = @"TAP_TRANSIT_LINE_INFO";

              break;
            case 7021:
              action = @"TAP_ATTRIBUTION_CELL";

              break;
            case 7022:
              action = @"TAP_NEXT_DEPARTURES";

              break;
            case 7023:
              action = @"VIEW_BANNER";

              break;
            case 7024:
              action = @"GET_SHOWTIMES";

              break;
            case 7025:
              action = @"MAKE_APPOINTMENT";

              break;
            case 7026:
              action = @"RESERVE_PARKING";

              break;
            case 7027:
              action = @"RESERVE_ROOM";

              break;
            case 7028:
              action = @"WAITLIST";

              break;
            case 7029:
              action = @"ORDER_TAKEOUT";

              break;
            case 7030:
              action = @"RESERVE";

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
            action = @"GET_DIRECTIONS";

            break;
          case 6004:
            action = @"TAP_FLYOVER_TOUR";

            break;
          case 6005:
            action = @"REMOVE_PIN";

            break;
          case 6006:
            action = @"TAP_PHOTO";

            break;
          case 6007:
            action = @"TAP_MAPS_VIEW";

            break;
          case 6008:
            action = @"TAP_ADDRESS";

            break;
          case 6009:
            action = @"CALL";

            break;
          case 6010:
            action = @"TAP_URL";

            break;
          case 6011:
            action = @"SHOW_TODAY_HOURS";

            break;
          case 6012:
            action = @"SHOW_ALL_HOURS";

            break;
          case 6013:
            action = @"SHARE";

            break;
          case 6015:
            action = @"ADD_TO_FAVORITES";

            break;
          case 6016:
            action = @"ADD_CONTACT";

            break;
          case 6018:
            action = @"PUNCH_OUT_PHOTO";

            break;
          case 6019:
            action = @"PUNCH_OUT_USEFUL_TO_KNOW";

            break;
          case 6020:
            action = @"PUNCH_OUT_OPEN_APP";

            break;
          case 6021:
            action = @"PUNCH_OUT_SINGLE_REVIEW";

            break;
          case 6022:
            action = @"PUNCH_OUT_CHECK_IN";

            break;
          case 6023:
            action = @"PUNCH_OUT_MORE_INFO";

            break;
          case 6024:
            action = @"PUNCH_OUT_WRITE_REVIEW";

            break;
          case 6025:
            action = @"PUNCH_OUT_ADD_PHOTO";

            break;
          case 6026:
            action = @"TAP_GRID_VIEW";

            break;
          case 6027:
            action = @"EDIT_LOCATION";

            break;
          case 6029:
            action = @"ADD_PHOTO";

            break;
          case 6031:
            action = @"RETAKE";

            break;
          case 6032:
            action = @"ADD_NOTE";

            break;
          case 6033:
            action = @"REMOVE_CAR";

            break;
          case 6034:
            action = @"EDIT_NAME";

            break;
          case 6036:
            action = @"RESERVE_TABLE";

            break;
          case 6037:
            action = @"ADD_TO_QUEUE";

            break;
          case 6038:
            action = @"VIEW_BOOKED_TABLE";

            break;
          case 6039:
            action = @"VIEW_QUEUED_TABLE";

            break;
          case 6040:
            action = @"PUNCH_OUT_THIRD_PARTY_APP";

            break;
          case 6041:
            action = @"PUNCH_OUT_LEGAL_LINK";

            break;
          case 6042:
            action = @"TAP_PLACECARD_HEADER";

            break;
          case 6043:
            action = @"REMOVE_FROM_FAVORITES";

            break;
          case 6044:
            action = @"VIEW_CONTACT";

            break;
          case 6045:
            action = @"CHAT";

            break;
          case 6046:
            action = @"FIND_STORES";

            break;
          case 6047:
            action = @"TAP_PARENT";

            break;
          case 6048:
            action = @"SCROLL_LEFT_PHOTOS";

            break;
          case 6049:
            action = @"SCROLL_RIGHT_PHOTOS";

            break;
          case 6050:
            action = @"PUNCH_OUT";

            break;
          case 6051:
            action = @"TAP_ENTER_MUNIN";

            break;
          case 6052:
            action = @"TAP_RECOMMENDED_DISHES_PHOTO";

            break;
          case 6053:
            action = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

            break;
          case 6054:
            action = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

            break;
          case 6055:
            action = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6056:
            action = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6057:
            action = @"SHOW_LINKED_SERVICE_HOURS";

            break;
          case 6058:
            action = @"ENTER_LOOK_AROUND";

            break;
          case 6059:
            action = @"EXIT_LOOK_AROUND";

            break;
          case 6060:
            action = @"TAP_ENTER_LOOK_AROUND_VIEW";

            break;
          case 6061:
            action = @"TAP_ENTER_LOOK_AROUND_PIP";

            break;
          case 6062:
            action = @"EXPAND_LOOK_AROUND_VIEW";

            break;
          case 6063:
            action = @"CLOSE_LOOK_AROUND";

            break;
          case 6064:
            action = @"COLLAPSE_LOOK_AROUND_VIEW";

            break;
          case 6065:
            action = @"TAP_SHOW_ACTIONS";

            break;
          case 6066:
            action = @"TAP_HIDE_LABELS";

            break;
          case 6067:
            action = @"TAP_SHOW_LABELS";

            break;
          case 6068:
            action = @"TAP_SHOW_DETAILS";

            break;
          case 6069:
            action = @"PAN_LOOK_AROUND";

            break;
          case 6070:
            action = @"TAP_LOOK_AROUND_THUMBNAIL";

            break;
          case 6071:
            action = @"TAP_LANDMARK";

            break;
          case 6072:
            action = @"TAP_SCENE";

            break;
          case 6073:
            action = @"SHOW_LINKED_BUSINESS_HOURS";

            break;
          case 6074:
            action = @"TAP_PLACECARD_SHORTCUT";

            break;
          case 6075:
            action = @"SHOW_ALL_LOCATIONS_INSIDE";

            break;
          case 6076:
            action = @"SHOW_ALL_SIMILAR_LOCATIONS";

            break;
          case 6077:
            action = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

            break;
          case 6078:
            action = @"TAP_PARENT_LOCATION";

            break;
          case 6079:
            action = @"TAP_SIMILAR_LOCATION";

            break;
          case 6080:
            action = @"TAP_LOCATION_INSIDE";

            break;
          case 6081:
            action = @"TAP_LOCATION_AT_ADDRESS";

            break;
          case 6082:
            action = @"CLOSE_ROUTE_GENIUS";

            break;
          case 6083:
            action = @"LOAD_WEB_CONTENT";

            break;
          case 6084:
            action = @"SCROLL_FORWARD_WEB_CONTENT";

            break;
          case 6085:
            action = @"SCROLL_BACKWARD_WEB_CONTENT";

            break;
          case 6086:
            action = @"TAP_WEB_CONTENT";

            break;
          case 6087:
            action = @"SHOW_PHOTO_VIEWER";

            break;
          case 6088:
            action = @"SHOW_LAST_PAGE";

            break;
          case 6089:
            action = @"TAP_VIEW_APP";

            break;
          case 6090:
            action = @"TAP_APP_CLIP";

            break;
          case 6091:
            action = @"DEAD_BATTERY";

            break;
          case 6092:
            action = @"DISMISS_LOW_BATTERY_ALERT";

            break;
          case 6093:
            action = @"DISMISS_OUT_OF_RANGE_ALERT";

            break;
          case 6094:
            action = @"FAILED_TO_LOAD_EV_STATUS";

            break;
          case 6095:
            action = @"LOW_BATTERY_ALERT";

            break;
          case 6096:
            action = @"PAUSE_ROUTE";

            break;
          case 6097:
            action = @"TAP_ADD_STOP";

            break;
          case 6098:
            action = @"TAP_CHARGE_POINT";

            break;
          case 6099:
            action = @"TAP_OUT_OF_RANGE_ALERT";

            break;
          case 6100:
            action = @"SCROLL_DOWN_PHOTOS";

            break;
          case 6101:
            action = @"SCROLL_UP_PHOTOS";

            break;
          case 6102:
            action = @"TAP_MORE_PHOTOS";

            break;
          case 6103:
            action = @"TAP_TO_CONFIRM_INCIDENT";

            break;
          case 6104:
            action = @"SHOW_INCIDENT";

            break;
          case 6105:
            action = @"REVEAL_APP_CLIP";

            break;
          case 6106:
            action = @"ORDER_DELIVERY";

            break;
          case 6107:
            action = @"VIEW_MENU";

            break;
          case 6108:
            action = @"TAP_EDIT_STOPS";

            break;
          case 6109:
            action = @"LEARN_MORE_WEB_CONTENT";

            break;
          case 6110:
            action = @"MAKE_APPOINTMENT_WEB_CONTENT";

            break;
          case 6111:
            action = @"REVEAL_SHOWCASE";

            break;
          case 6112:
            action = @"TAP_ACTION_BAR";

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
            action = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

            break;
          case 10102:
            action = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

            break;
          case 10103:
            action = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

            break;
          case 10104:
            action = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

            break;
          case 10105:
            action = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

            break;
          case 10106:
            action = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

            break;
          case 10107:
            action = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

            break;
          case 10108:
            action = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

            break;
          case 10109:
            action = @"RAP_CANCEL";

            break;
          case 10110:
            action = @"RAP_NEXT";

            break;
          case 10111:
            action = @"RAP_BACK";

            break;
          case 10112:
            action = @"RAP_SEND";

            break;
          case 10113:
            action = @"RAP_SKIP";

            break;
          case 10114:
            action = @"RAP_SHOW_MORE";

            break;
          case 10115:
            action = @"RAP_ADD_PHOTO";

            break;
          case 10116:
            action = @"RAP_MAP_INCORRECT";

            break;
          case 10117:
            action = @"RAP_BAD_DIRECTIONS";

            break;
          case 10118:
            action = @"RAP_TRANSIT_INFO_INCORRECT";

            break;
          case 10119:
            action = @"RAP_SATELLITE_IMAGE_PROBLEM";

            break;
          case 10120:
            action = @"RAP_SEARCH_RESULTS_INCORRECT";

            break;
          case 10121:
            action = @"RAP_ADD_A_PLACE";

            break;
          case 10122:
            action = @"RAP_HOME";

            break;
          case 10123:
            action = @"RAP_WORK";

            break;
          case 10124:
            action = @"RAP_OTHER";

            break;
          case 10125:
            action = @"RAP_LOCATION";

            break;
          case 10126:
            action = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

            break;
          case 10127:
            action = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

            break;
          case 10128:
            action = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

            break;
          case 10129:
            action = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

            break;
          case 10130:
            action = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

            break;
          case 10131:
            action = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

            break;
          case 10132:
            action = @"RAP_TRANSIT_DELAY";

            break;
          case 10133:
            action = @"RAP_LOCATION_CLOSED";

            break;
          case 10134:
            action = @"RAP_CLOSED_PERMANENTLY";

            break;
          case 10135:
            action = @"RAP_CLOSED_TEMPORARILY";

            break;
          case 10136:
            action = @"RAP_HOURS_HAVE_CHANGED";

            break;
          case 10137:
            action = @"RAP_SELECT_STATION";

            break;
          case 10138:
            action = @"RAP_SELECT_LINE";

            break;
          case 10139:
            action = @"RAP_SELECT_ACCESS_POINT";

            break;
          case 10140:
            action = @"RAP_SELECT_SEARCH";

            break;
          case 10141:
            action = @"RAP_PAN_MAP";

            break;
          case 10142:
            action = @"RAP_CENTER_MAP_ON_USER";

            break;
          case 10143:
            action = @"RAP_SEARCH_UNEXPECTED";

            break;
          case 10144:
            action = @"RAP_ADD_POI";

            break;
          case 10145:
            action = @"RAP_ADD_STREET_ADDRESS";

            break;
          case 10146:
            action = @"RAP_ADD_OTHER";

            break;
          case 10147:
            action = @"RAP_SELECT_CATEGORY";

            break;
          case 10148:
            action = @"RAP_TAKE_PHOTO";

            break;
          case 10149:
            action = @"RAP_RETAKE_PHOTO";

            break;
          case 10150:
            action = @"RAP_PLACE_DETAILS";

            break;
          case 10151:
            action = @"RAP_SATELLITE_IMAGE_OUTDATED";

            break;
          case 10152:
            action = @"RAP_SATELLITE_IMAGE_QUALITY";

            break;
          case 10153:
            action = @"RAP_SELECT_LABEL";

            break;
          case 10154:
            action = @"RAP_SELECT_ROUTE";

            break;
          case 10155:
            action = @"RAP_CLAIM_BUSINESS";

            break;
          case 10156:
            action = @"RAP_BRAND_DETAILS";

            break;
          case 10157:
            action = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

            break;
          case 10158:
            action = @"RAP_LOOK_AROUND_LABELS_STREET";

            break;
          case 10159:
            action = @"RAP_LOOK_AROUND_BLURRING";

            break;
          case 10160:
            action = @"RAP_LOOK_AROUND_REMOVE_HOME";

            break;
          case 10161:
            action = @"RAP_LOOK_AROUND_LABELS_STORE";

            break;
          case 10162:
            action = @"RAP_LOOK_AROUND_PRIVACY";

            break;
          case 10163:
            action = @"RAP_INCORRECT_HOURS";

            break;
          case 10164:
            action = @"RAP_INCORRECT_ADDRESS";

            break;
          case 10165:
            action = @"RAP_EDIT_PLACE_DETAILS";

            break;
          case 10166:
            action = @"RAP_EDIT_PLACE_NAME";

            break;
          case 10167:
            action = @"RAP_EDIT_ADDRESS";

            break;
          case 10168:
            action = @"RAP_ADD_CATEGORY";

            break;
          case 10169:
            action = @"RAP_REMOVE_CATEGORY";

            break;
          case 10170:
            action = @"RAP_DESELECT_CATEGORY";

            break;
          case 10171:
            action = @"RAP_ADD_HOURS";

            break;
          case 10172:
            action = @"RAP_REMOVE_HOURS";

            break;
          case 10173:
            action = @"RAP_TAP_DAY_OF_WEEK";

            break;
          case 10174:
            action = @"RAP_TAP_24_HOURS_BUTTON";

            break;
          case 10175:
            action = @"RAP_TAP_OPEN_TIME";

            break;
          case 10176:
            action = @"RAP_TAP_CLOSED_TIME";

            break;
          case 10177:
            action = @"RAP_TAP_TEMPORARY_CLOSURE";

            break;
          case 10178:
            action = @"RAP_TAP_PERMANENTLY_CLOSED";

            break;
          case 10179:
            action = @"RAP_EDIT_WEBSITE";

            break;
          case 10180:
            action = @"RAP_EDIT_PHONE_NUMBER";

            break;
          case 10181:
            action = @"RAP_TAP_ACCEPTS_APPLE_PAY";

            break;
          case 10182:
            action = @"RAP_ADD_COMMENTS";

            break;
          case 10183:
            action = @"RAP_EDIT_LOCATION";

            break;
          case 10184:
            action = @"RAP_VIEW_LOCATION";

            break;
          case 10185:
            action = @"RAP_ZOOM_IN";

            break;
          case 10186:
            action = @"RAP_ZOOM_OUT";

            break;
          case 10187:
            action = @"RAP_VIEW_ENTRY_POINTS";

            break;
          case 10188:
            action = @"RAP_EDIT_EXISTING_ENTRY_POINT";

            break;
          case 10189:
            action = @"RAP_ADD_NEW_ENTRY_POINT";

            break;
          case 10190:
            action = @"RAP_REMOVE_ENTRY_POINT";

            break;
          case 10191:
            action = @"RAP_SELECT_ENTRY_POINT_TYPE";

            break;
          default:
            switch(action)
            {
              case 9001:
                action = @"TAP_WIDGET_ITEM";

                break;
              case 9002:
                action = @"DISPLAY_NOTIFICATION";

                break;
              case 9003:
                action = @"TAP_NOTIFICATION";

                break;
              case 9004:
                action = @"EXPAND_NOTIFICATION";

                break;
              case 9005:
                action = @"DISMISS_NOTIFICATION";

                break;
              case 9006:
                action = @"OPEN_SEARCH";

                break;
              case 9007:
                action = @"OPEN_PAN_VIEW";

                break;
              case 9008:
                action = @"PAN_LEFT";

                break;
              case 9009:
                action = @"PAN_UP";

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
                action = @"PAN_DOWN";

                break;
              case 9012:
                action = @"TAP_RECENT_DESTINATIONS";

                break;
              case 9013:
                action = @"OPEN_DESTINATIONS";

                break;
              case 9014:
                action = @"OPEN_FAVORITES";

                break;
              case 9015:
                action = @"VIEW_NAV_OPTIONS";

                break;
              case 9016:
                action = @"START_NAV_NO_GUIDANCE";

                break;
              case 9017:
                action = @"TURN_OFF_GUIDANCE";

                break;
              case 9018:
                action = @"TURN_ON_GUIDANCE";

                break;
              case 9019:
                action = @"OPEN_KEYBOARD";

                break;
              case 9020:
                action = @"SHARE_DESTINATION";

                break;
              case 9021:
                action = @"START_NAV_AUTOMATED";

                break;
              case 9022:
                action = @"SHARE_ETA";

                break;
              case 9023:
                action = @"SELECT_GROUP";

                break;
              case 9024:
                action = @"DESELECT_GROUP";

                break;
              case 9025:
                action = @"SELECT_CONTACT";

                break;
              case 9026:
                action = @"DESELECT_CONTACT";

                break;
              case 9027:
                action = @"TAP_VIEW_CONTACTS";

                break;
              case 9028:
                action = @"STOP_RECEIVING_ETA";

                break;
              case 9029:
                action = @"DISPLAY_ANNOUNCEMENT";

                break;
              case 9030:
                action = @"TAP_ANNOUNCEMENT";

                break;
              case 9031:
                action = @"DISPLAY_CYCLING_NOTIFICATION";

                break;
              case 9032:
                action = @"TAP_CYCLING_NOTIFICATION";

                break;
              case 9033:
                action = @"SHARE_CYCLING_ETA";

                break;
              case 9034:
                action = @"MANAGE_NOTIFICATIONS";

                break;
              case 9035:
                action = @"PUNCH_OUT_PUBLISHER_REVIEW";

                break;
              case 9036:
                action = @"SCROLL_FORWARD";

                break;
              case 9037:
                action = @"SCROLL_BACKWARD";

                break;
              case 9038:
                action = @"SHOW_ALL_CURATED_COLLECTIONS";

                break;
              case 9039:
                action = @"TAP_LESS";

                break;
              case 9040:
                action = @"TAP_MORE";

                break;
              case 9101:
                action = @"DISPLAY_ADD_HOME_AND_WORK";

                break;
              case 9102:
                action = @"TAP_ADD_HOME_AND_WORK";

                break;
              case 9103:
                action = @"DISPLAY_ALLOW_FREQUENTS";

                break;
              case 9104:
                action = @"TAP_ALLOW_FREQUENTS";

                break;
              case 9105:
                action = @"DISPLAY_ALLOW_LOCATION";

                break;
              case 9106:
                action = @"TAP_ALLOW_LOCATION";

                break;
              default:
                switch(action)
                {
                  case 11001:
                    action = @"EXIT_MAPS_LOWER_WRIST";

                    break;
                  case 11002:
                    action = @"TASK_READY";

                    break;
                  case 11003:
                    action = @"TAP_SEARCH";

                    break;
                  case 11004:
                    action = @"TAP_MY_LOCATION";

                    break;
                  case 11005:
                    action = @"SHOW_NEARBY";

                    break;
                  case 11006:
                    action = @"TAP_NEARBY";

                    break;
                  case 11007:
                    action = @"TAP_PROACTIVE";

                    break;
                  case 11008:
                    action = @"FORCE_PRESS";

                    break;
                  case 11009:
                    action = @"TAP_CONTACTS";

                    break;
                  case 11010:
                    action = @"TAP_TRANSIT";

                    break;
                  case 11011:
                    action = @"TAP_DICTATION";

                    break;
                  case 11012:
                    action = @"GET_DIRECTIONS_DRIVING";

                    break;
                  case 11013:
                    action = @"GET_DIRECTIONS_WALKING";

                    break;
                  case 11014:
                    action = @"GET_DIRECTIONS_TRANSIT";

                    break;
                  case 11015:
                    action = @"OPEN_STANDARD_MAP";

                    break;
                  case 11016:
                    action = @"OPEN_TRANSIT_MAP";

                    break;
                  case 11017:
                    action = @"START_NAV_AUTO";

                    break;
                  case 11018:
                    action = @"TAP_RECENT";

                    break;
                  case 11019:
                    action = @"TAP_FAVORITE";

                    break;
                  case 11020:
                    action = @"TAP_SCRIBBLE";

                    break;
                  case 11021:
                    action = @"TAP_VIEW_MAP";

                    break;
                  case 11022:
                    action = @"TAP_VIEW_TBT";

                    break;
                  case 11023:
                    action = @"VIEW_ROUTE_INFO";

                    break;
                  case 11024:
                    action = @"NAV_UNMUTE";

                    break;
                  case 11025:
                    action = @"NAV_MUTE";

                    break;
                  case 11026:
                    action = @"GET_DIRECTIONS_CYCLING";

                    break;
                  case 11027:
                    action = @"TAP_SEARCH_HOME";

                    break;
                  case 11028:
                    action = @"ROUTE_PAUSED_ON_WATCH";

                    break;
                  case 11029:
                    action = @"NEXT_STOP_TAPPED_ON_WATCH";

                    break;
                  default:
                    goto LABEL_195;
                }

                break;
            }

            break;
        }

        return action;
      }

      if (action > 16000)
      {
        switch(action)
        {
          case 17001:
            action = @"START_DRAG";

            break;
          case 17002:
            action = @"CANCEL_DRAG";

            break;
          case 17003:
            action = @"COMPLETE_DRAG";

            break;
          case 17004:
            action = @"START_DROP";

            break;
          case 17005:
            action = @"CANCEL_DROP";

            break;
          case 17006:
            action = @"COMPLETE_DROP";

            break;
          case 17007:
            action = @"ANNOTATION_SELECT";

            break;
          case 17008:
            action = @"ANNOTATION_SELECT_AUTO";

            break;
          case 17009:
            action = @"ANNOTATION_SELECT_LIST";

            break;
          case 17010:
            action = @"BROWSE_TOP_CATEGORY_DISPLAYED";

            break;
          case 17011:
            action = @"CALLOUT_FLYOVER_TOUR";

            break;
          case 17012:
            action = @"CALLOUT_INFO";

            break;
          case 17013:
            action = @"CALLOUT_NAV_TRANSIT";

            break;
          case 17014:
            action = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

            break;
          case 17015:
            action = @"CALLOUT_VIEW_TRANSIT_LINE";

            break;
          case 17016:
            action = @"DIRECTIONS_SELECT";

            break;
          case 17017:
            action = @"DIRECTIONS_TRANSIT_CUSTOM";

            break;
          case 17018:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

            break;
          case 17019:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

            break;
          case 17020:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

            break;
          case 17021:
            action = @"DIRECTIONS_TRANSIT_LATER";

            break;
          case 17022:
            action = @"DIRECTIONS_TRANSIT_NOW";

            break;
          case 17023:
            action = @"FLYOVER_NOTIFICATION_DISMISS";

            break;
          case 17024:
            action = @"FLYOVER_NOTIFICATION_START";

            break;
          case 17025:
            action = @"FLYOVER_TOUR_COMPLETED";

            break;
          case 17026:
            action = @"FLYOVER_TOUR_END";

            break;
          case 17027:
            action = @"FLYOVER_TOUR_NOTIFICATION";

            break;
          case 17028:
            action = @"FLYOVER_TOUR_START";

            break;
          case 17029:
            action = @"INFO_BOOKMARKS";

            break;
          case 17030:
            action = @"INFO_CARD_DETACHED";

            break;
          case 17031:
            action = @"INFO_CONTACTS";

            break;
          case 17032:
            action = @"INFO_DIRECTIONS";

            break;
          case 17033:
            action = @"INFO_DIRECTIONS_FROM";

            break;
          case 17034:
            action = @"INFO_DIRECTIONS_TO";

            break;
          case 17035:
            action = @"INFO_DISMISS";

            break;
          case 17036:
            action = @"INFO_INFO";

            break;
          case 17037:
            action = @"INFO_PHOTOS";

            break;
          case 17038:
            action = @"INFO_REVIEWS";

            break;
          case 17039:
            action = @"INFO_SHARE";

            break;
          case 17040:
            action = @"INFO_SHARE_AIRDROP";

            break;
          case 17041:
            action = @"INFO_SHARE_FACEBOOK";

            break;
          case 17042:
            action = @"INFO_SHARE_MAIL";

            break;
          case 17043:
            action = @"INFO_SHARE_MESSAGE";

            break;
          case 17044:
            action = @"INFO_SHARE_TENCENTWEIBO";

            break;
          case 17045:
            action = @"INFO_SHARE_WEIBO";

            break;
          case 17046:
            action = @"INFO_YELP";

            break;
          case 17047:
            action = @"MAPS_APP_LAUNCH";

            break;
          case 17048:
            action = @"MAP_3D_OFF";

            break;
          case 17049:
            action = @"MAP_3D_ON";

            break;
          case 17050:
            action = @"MAP_OPTIONS_DROP_PIN";

            break;
          case 17051:
            action = @"MAP_OPTIONS_HYBRID";

            break;
          case 17052:
            action = @"MAP_OPTIONS_PRINT";

            break;
          case 17053:
            action = @"MAP_OPTIONS_REMOVE_PIN";

            break;
          case 17054:
            action = @"MAP_OPTIONS_SATELLITE";

            break;
          case 17055:
            action = @"MAP_OPTIONS_STANDARD";

            break;
          case 17056:
            action = @"MAP_OPTIONS_TRAFFIC_HIDE";

            break;
          case 17057:
            action = @"MAP_OPTIONS_TRAFFIC_SHOW";

            break;
          case 17058:
            action = @"MAP_OPTIONS_TRANSIT";

            break;
          case 17059:
            action = @"MAP_TAP_FLYOVER_CITY";

            break;
          case 17060:
            action = @"MAP_TAP_LINE";

            break;
          case 17061:
            action = @"MAP_TAP_POI_TRANSIT";

            break;
          case 17062:
            action = @"MAP_TAP_TRAFFIC_INCIDENT";

            break;
          case 17063:
            action = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

            break;
          case 17064:
            action = @"MAP_USER_TRACKING_OFF";

            break;
          case 17065:
            action = @"MAP_USER_TRACKING_ON";

            break;
          case 17066:
            action = @"MAP_USER_TRACKING_WITH_HEADING_ON";

            break;
          case 17067:
            action = @"NAV_CLEAR";

            break;
          case 17068:
            action = @"NAV_LIST";

            break;
          case 17069:
            action = @"NAV_ROUTE_STEP_NEXT";

            break;
          case 17070:
            action = @"NAV_ROUTE_STEP_PREV";

            break;
          case 17071:
            action = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

            break;
          case 17072:
            action = @"ORB_DISPLAY_MENU";

            break;
          case 17073:
            action = @"ORB_MENU_CALL";

            break;
          case 17074:
            action = @"ORB_MENU_DIRECTIONS";

            break;
          case 17075:
            action = @"ORB_MENU_DISMISS";

            break;
          case 17076:
            action = @"ORB_MENU_SHARE";

            break;
          case 17077:
            action = @"ORB_MENU_SHOW_PLACECARD";

            break;
          case 17078:
            action = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

            break;
          case 17079:
            action = @"ORB_MENU_URL";

            break;
          case 17080:
            action = @"ORB_PRESS";

            break;
          case 17081:
            action = @"ORB_SPRINGBOARD_MARK_LOCATION";

            break;
          case 17082:
            action = @"ORB_SPRINGBOARD_SEARCH";

            break;
          case 17083:
            action = @"ORB_SPRINGBOARD_SHARE_LOCATION";

            break;
          case 17084:
            action = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

            break;
          case 17085:
            action = @"RAP_PERMISSION_CANCEL";

            break;
          case 17086:
            action = @"RAP_PERMISSION_EMAIL_NA";

            break;
          case 17087:
            action = @"RAP_PERMISSION_EMAIL_OK";

            break;
          case 17088:
            action = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

            break;
          case 17089:
            action = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

            break;
          case 17090:
            action = @"RAP_PERMISSION_OK";

            break;
          case 17091:
            action = @"SEARCH_BEGIN";

            break;
          case 17092:
            action = @"SEARCH_CANCEL";

            break;
          case 17093:
            action = @"SEARCH_SELECT";

            break;
          case 17094:
            action = @"TRANSIT_LINE_SELECTION_DISMISS";

            break;
          case 17095:
            action = @"TRANSIT_LINE_SELECTION_VIEW";

            break;
          case 17096:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

            break;
          case 17097:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

            break;
          case 17098:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

            break;
          case 17099:
            action = @"UNKNOWN_ACTION";

            break;
          case 17100:
            action = @"INFO_SHARE_TWITTER";

            break;
          case 17101:
            action = @"INFO_TAP_POPULAR_APP_NEARBY";

            break;
          case 17102:
            action = @"INFO_DIRECTIONS_WALK";

            break;
          case 17103:
            action = @"INFO_DIRECTIONS_TRANSIT";

            break;
          case 17104:
            action = @"INFO_DIRECTIONS_DRIVE";

            break;
          case 17105:
            action = @"INFO_REPORT_A_PROBLEM";

            break;
          case 17106:
            action = @"CALLOUT_NAV";

            break;
          case 17107:
            action = @"RAP_PERMISSION_EMAIL_CANCEL";

            break;
          case 17108:
            action = @"MAP_TAP_POI";

            break;
          default:
            if (action == 16001)
            {
              action = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (action != 90010)
              {
                goto LABEL_195;
              }

              action = @"PAN_RIGHT";
            }

            break;
        }

        return action;
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
                action = @"ADD_SPECIAL_REQUEST";

                break;
              case 0x2EE9:
                action = @"CHANGE_RESERVATION";

                break;
              case 0x2EEA:
                action = @"LEARN_MORE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action > 13002)
          {
            if (action == 13003)
            {
              action = @"SELECT_LABEL";
            }

            else
            {
              action = @"DELETE_ADDRESS";
            }
          }

          else if (action == 13001)
          {
            action = @"SELECT_ADDRESS";
          }

          else
          {
            action = @"ADD_ADDRESS";
          }
        }

        else if (action <= 12003)
        {
          if (action == 12001)
          {
            action = @"VIEW_MORE_OPTIONS";
          }

          else if (action == 12002)
          {
            action = @"SELECT_TIME";
          }

          else
          {
            action = @"SHOW_NEXT_AVAILABLE";
          }
        }

        else if (action > 12005)
        {
          if (action == 12006)
          {
            action = @"EDIT_BOOKING";
          }

          else
          {
            action = @"EDIT_PHONE";
          }
        }

        else if (action == 12004)
        {
          action = @"DECREASE_TABLE_SIZE";
        }

        else
        {
          action = @"INCREASE_TABLE_SIZE";
        }
      }

      else if (action <= 14004)
      {
        if (action <= 14000)
        {
          switch(action)
          {
            case 0x32CD:
              action = @"EDIT_ITEMS";

              break;
            case 0x32CE:
              action = @"RAP_FAVORITES";

              break;
            case 0x32CF:
              action = @"SORT_LIST_ITEM";

              break;
            default:
              goto LABEL_195;
          }
        }

        else if (action > 14002)
        {
          if (action == 14003)
          {
            action = @"BOOK_RIDE";
          }

          else
          {
            action = @"REQUEST_RIDE";
          }
        }

        else if (action == 14001)
        {
          action = @"VIEW_APP";
        }

        else
        {
          action = @"ENABLE";
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
              action = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              action = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (action == 14005)
          {
            action = @"CONTACT_DRIVER";
          }

          else
          {
            action = @"CHANGE_PAYMENT";
          }

          return action;
        }

        if (action > 15001)
        {
          if (action == 15002)
          {
            action = @"ORB_POP";
          }

          else
          {
            if (action != 15003)
            {
              goto LABEL_195;
            }

            action = @"ORB_DISMISS";
          }
        }

        else
        {
          if (action != 14009)
          {
            if (action == 15001)
            {
              action = @"ORB_PEEK";

              return action;
            }

LABEL_195:
            action = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_196:

            return action;
          }

          action = @"SUBMIT_TRIP_FEEDBACK";
        }
      }
    }
  }

  else
  {
    action = 0;
  }

  return action;
}

- (id)_whiteListedSiriListActionAsString:(int)string
{
  if (string == 2007)
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
            action = @"TAP_DIRECTIONS";
          }

          else if (action == 1502)
          {
            action = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            action = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(action)
          {
            case 2001:
              action = @"TAP_SEARCH_FIELD";

              return action;
            case 2002:
              action = @"CLEAR_SEARCH";

              return action;
            case 2003:
              action = @"CANCEL_SEARCH";

              return action;
            case 2004:
              action = @"TAP_BROWSE_TOP_CATEGORY";

              return action;
            case 2005:
              action = @"TAP_BROWSE_SUB_CATEGORY";

              return action;
            case 2006:
              action = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

              return action;
            case 2007:
              action = @"TAP_LIST_ITEM";

              return action;
            case 2008:
              action = @"SHARE_LIST_ITEM";

              return action;
            case 2009:
              action = @"DELETE_LIST_ITEM";

              return action;
            case 2010:
              action = @"EDIT_LIST_ITEM";

              return action;
            case 2011:
              action = @"REFRESH_SEARCH";

              return action;
            case 2012:
              action = @"REVEAL_LIST_ITEM_ACTIONS";

              return action;
            case 2013:
              action = @"HIDE_LIST_ITEM_ACTIONS";

              return action;
            case 2014:
              action = @"TAP_SEARCH_BUTTON";

              return action;
            case 2015:
              action = @"SHOW_SEARCH_RESULTS";

              return action;
            case 2016:
              action = @"SHOW_REFRESH_SEARCH";

              return action;
            case 2017:
              action = @"PASTE_TEXT";

              return action;
            case 2018:
              action = @"TAP_LIST_SUB_ITEM";

              return action;
            case 2019:
              action = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2020:
              action = @"TAP_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2021:
              action = @"CLOSE_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2022:
              action = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2023:
              action = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

              return action;
            case 2024:
              action = @"RETAINED_QUERY";

              return action;
            case 2025:
              action = @"TAP_RECENT_AC_SUGGESTION";

              return action;
            case 2026:
              action = @"CLEAR_RECENT_AC_SUGGESTION";

              return action;
            case 2027:
              action = @"DELETE_RECENT_AC_SUGGESTION";

              return action;
            case 2028:
            case 2029:
              goto LABEL_195;
            case 2030:
              action = @"TAP_BROWSE_NEARBY_CATEGORY";

              return action;
            case 2031:
              action = @"TAP_SUBACTION";

              return action;
            case 2032:
              action = @"TAP_QUERY_BUILDING_ARROW";

              return action;
            case 2033:
              action = @"CLICK_ON_EDIT_SEARCH";

              return action;
            case 2034:
              action = @"REMOVE_CLIENT_AC_SUGGESTION";

              return action;
            case 2035:
              action = @"SHARE_CLIENT_AC_SUGGESTION";

              return action;
            case 2036:
              action = @"TAP_ON_MORE_RESULTS";

              return action;
            case 2037:
              action = @"SHARE_ITEM";

              return action;
            case 2038:
              action = @"HIDE_ITEM";

              return action;
            case 2039:
              action = @"TAP_SUGGESTED_ITEM";

              return action;
            case 2040:
              action = @"SHARE_SUGGESTED_ITEM";

              return action;
            case 2041:
              action = @"HIDE_SUGGESTED_ITEM";

              return action;
            case 2042:
              action = @"ADD_HOME_FAVORITE";

              return action;
            case 2043:
              action = @"ADD_WORK_FAVORITE";

              return action;
            case 2044:
              action = @"ADD_FAVORITE";

              return action;
            case 2045:
              action = @"VIEW_FAVORITES_LIST";

              return action;
            case 2046:
              action = @"TAP_HOME_FAVORITE";

              return action;
            case 2047:
              action = @"TAP_WORK_FAVORITE";

              return action;
            case 2048:
              action = @"TAP_CAR_FAVORITE";

              return action;
            case 2049:
              action = @"TAP_FAVORITE_ITEM";

              return action;
            case 2050:
              action = @"CREATE_HOME_FAVORITE";

              return action;
            case 2051:
              action = @"CREATE_WORK_FAVORITE";

              return action;
            case 2052:
              action = @"CREATE_FAVORITE";

              return action;
            case 2053:
              action = @"SUBMIT_FAVORITE_EDIT";

              return action;
            case 2054:
              action = @"ADD_RECOMMENDED_FAVORITE";

              return action;
            case 2055:
              action = @"EDIT_FAVORITE";

              return action;
            case 2056:
              action = @"REMOVE_FAVORITE";

              return action;
            case 2057:
              action = @"SHARE_FAVORITE";

              return action;
            case 2058:
              action = @"EDIT_FAVORITES";

              return action;
            case 2059:
              action = @"ADD_FAVORITE_PLACE";

              return action;
            case 2060:
              action = @"REMOVE_FAVORITE_PLACE";

              return action;
            case 2061:
              action = @"CHANGE_HOME_ADDRESS";

              return action;
            case 2062:
              action = @"CHANGE_WORK_ADDRESS";

              return action;
            case 2063:
              action = @"REFINE_LOCATION";

              return action;
            case 2064:
              action = @"TAP_RECENTLY_VIEWED_ITEM";

              return action;
            case 2065:
              action = @"SHOW_COLLECTION_LIST";

              return action;
            case 2066:
              action = @"SHOW_FAVORITES_COLLECTION";

              return action;
            case 2067:
              action = @"SHOW_COLLECTION";

              return action;
            case 2068:
              action = @"TAP_COLLECTION_ITEM";

              return action;
            case 2069:
              action = @"SHARE_COLLECTION_ITEM";

              return action;
            case 2070:
              action = @"REMOVE_COLLECTION_ITEM";

              return action;
            case 2071:
              action = @"SAVE_SHARED_COLLECTION";

              return action;
            case 2072:
              action = @"CREATE_NEW_COLLECTION";

              return action;
            case 2073:
              action = @"SAVE_TO_COLLECTION";

              return action;
            case 2074:
              action = @"EDIT_PHOTO";

              return action;
            case 2075:
              action = @"SORT_BY_NAME";

              return action;
            case 2076:
              action = @"SORT_BY_DISTANCE";

              return action;
            case 2077:
              action = @"SORT_BY_RECENT";

              return action;
            case 2078:
              action = @"AUTO_SHARE_ETA";

              return action;
            case 2079:
              action = @"CANCEL_AUTO_SHARE_ETA";

              return action;
            case 2080:
              action = @"MAP_SEARCH";

              return action;
            case 2081:
              action = @"DELETE_COLLECTION";

              return action;
            case 2082:
              action = @"SHARE_COLLECTION";

              return action;
            case 2083:
              action = @"SHOW_TRANSIT_LINES_COLLECTION";

              return action;
            case 2084:
              action = @"SHOW_MY_PLACES";

              return action;
            case 2085:
              action = @"SHOW_ALL_PLACES";

              return action;
            case 2086:
              action = @"TAP_RECENT_QUERY";

              return action;
            case 2087:
              action = @"TAP_QUERY_SUGGESTION";

              return action;
            case 2088:
              action = @"DELETE_CURATED_COLLECTION";

              return action;
            case 2089:
              action = @"FOLLOW";

              return action;
            case 2090:
              action = @"PUNCH_IN";

              return action;
            case 2091:
              action = @"SAVE_CURATED_COLLECTION";

              return action;
            case 2092:
              action = @"SCROLL_LEFT_COLLECTIONS";

              return action;
            case 2093:
              action = @"SCROLL_RIGHT_COLLECTIONS";

              return action;
            case 2094:
              action = @"SEE_ALL_CURATED_COLLECTION";

              return action;
            case 2095:
              action = @"SEE_ALL_PUBLISHERS";

              return action;
            case 2096:
              action = @"SHARE_CURATED_COLLECTION";

              return action;
            case 2097:
              action = @"SHARE_PUBLISHER";

              return action;
            case 2098:
              action = @"SHOW_MORE_COLLECTION";

              return action;
            case 2099:
              action = @"TAP_CURATED_COLLECTION";

              return action;
            case 2100:
              action = @"TAP_FEATURED_COLLECTIONS";

              return action;
            case 2101:
              action = @"TAP_LOCATION";

              return action;
            case 2102:
              action = @"TAP_PUBLISHER";

              return action;
            case 2103:
              action = @"TAP_PUBLISHER_APP";

              return action;
            case 2104:
              action = @"TAP_PUBLISHER_COLLECTIONS";

              return action;
            case 2105:
              action = @"UNFOLLOW";

              return action;
            case 2106:
              action = @"CHANGE_SCHOOL_ADDRESS";

              return action;
            case 2107:
              action = @"ADD_VEHICLE";

              return action;
            case 2108:
              action = @"DISPLAY_VIRTUAL_GARAGE";

              return action;
            case 2109:
              action = @"ENTER_VIRTUAL_GARAGE";

              return action;
            case 2110:
              action = @"PUNCH_OUT_MANUFACTURER_APP";

              return action;
            case 2111:
              action = @"REMOVE_LICENSE_PLATE";

              return action;
            case 2112:
              action = @"REMOVE_VEHICLE";

              return action;
            case 2113:
              action = @"SELECT_VEHICLE";

              return action;
            case 2114:
              action = @"SUBMIT_LICENSE_PLATE";

              return action;
            case 2115:
              action = @"TAP_ADD_LICENSE_PLATE";

              return action;
            case 2116:
              action = @"TAP_ADD_NEW_CAR";

              return action;
            case 2117:
              action = @"TAP_BANNER";

              return action;
            case 2118:
              action = @"TAP_CONNECT";

              return action;
            case 2119:
              action = @"TAP_CONTINUE";

              return action;
            case 2120:
              action = @"TAP_EDIT";

              return action;
            case 2121:
              action = @"TAP_NAME";

              return action;
            case 2122:
              action = @"TAP_NOT_NOW";

              return action;
            case 2123:
              action = @"TAP_OTHER_VEHICLE";

              return action;
            case 2124:
              action = @"TAP_REMOVE_LICENSE_PLATE";

              return action;
            case 2125:
              action = @"TAP_UPDATE_PLATE_NUMBER";

              return action;
            case 2126:
              action = @"TAP_VEHICLE";

              return action;
            case 2127:
              action = @"TAP_VEHICLE_NAME";

              return action;
            case 2128:
              action = @"UPDATE_NAME";

              return action;
            case 2129:
              action = @"DONE_TAKING_PHOTO";

              return action;
            case 2130:
              action = @"ENABLE_SHOW_PHOTO_NAME";

              return action;
            case 2131:
              action = @"SUBMIT_PHOTO";

              return action;
            case 2132:
              action = @"USE_PHOTO";

              return action;
            case 2133:
              action = @"ADD_RECOMMENDATION_TO_MAPS";

              return action;
            case 2134:
              action = @"CANCEL_PHOTO_SUBMISSION";

              return action;
            case 2135:
              action = @"CLOSE_RECOMMENDATION_CARD";

              return action;
            case 2136:
              action = @"EDIT_RATING";

              return action;
            case 2137:
              action = @"PROMPTED_TO_ADD_PHOTO";

              return action;
            case 2138:
              action = @"PROMPTED_TO_ADD_RATING";

              return action;
            case 2139:
              action = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

              return action;
            case 2140:
              action = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

              return action;
            case 2141:
              action = @"RETAKE_PHOTO";

              return action;
            case 2142:
              action = @"REVEAL_RECOMMENDATION_CARD";

              return action;
            case 2143:
              action = @"SUBMIT_NEGATIVE_RATING";

              return action;
            case 2144:
              action = @"SUBMIT_POSITIVE_RATING";

              return action;
            case 2145:
              action = @"TAP_CHOOSING_PHOTO";

              return action;
            case 2146:
              action = @"TAP_TAKE_NEW_PHOTO";

              return action;
            case 2147:
              action = @"TAP_TO_ADD_PHOTO";

              return action;
            case 2148:
              action = @"CANCEL_INCIDENT_REPORT";

              return action;
            case 2149:
              action = @"INCIDENT_REPORT_SUBMITTED";

              return action;
            case 2150:
              action = @"REPORTED_INCIDENT_NOT_RECEIVED";

              return action;
            case 2151:
              action = @"REPORTED_INCIDENT_RECEIVED";

              return action;
            case 2152:
              action = @"REPORT_INCIDENT";

              return action;
            case 2153:
              action = @"SELECT_INCIDENT_TYPE";

              return action;
            case 2154:
              action = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

              return action;
            case 2155:
              action = @"TAP_TO_START_REPORT_INCIDENT";

              return action;
            case 2156:
              action = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

              return action;
            case 2157:
              action = @"ATTEMPT_VLF_CORRECTION";

              return action;
            case 2158:
              action = @"DISMISS_VLF_PROMPT";

              return action;
            case 2159:
              action = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

              return action;
            case 2160:
              action = @"VLF_CORRECTION_FAILED";

              return action;
            case 2161:
              action = @"VLF_CORRECTION_SUCCESSFUL";

              return action;
            case 2162:
              action = @"ENABLE_WIDGET_SUGGESTIONS";

              return action;
            case 2163:
              action = @"DISPLAY_CZ_ADVISORY";

              return action;
            case 2164:
              action = @"PUNCH_OUT_URL_PAY";

              return action;
            case 2165:
              action = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

              return action;
            case 2166:
              action = @"DELETE_ITEM";

              return action;
            case 2167:
              action = @"CANCEL_REMOVE";

              return action;
            case 2168:
              action = @"DELETE_SUGGESTION";

              return action;
            case 2169:
              action = @"ADD_SCHOOL_FAVORITE";

              return action;
            case 2170:
              action = @"GO_TO_WEBSITE";

              return action;
            case 2171:
              action = @"TRY_AGAIN";

              return action;
            case 2172:
              action = @"CHECK_AUTO_RECORD_WORKOUT";

              return action;
            case 2173:
              action = @"CHECK_EBIKE";

              return action;
            case 2174:
              action = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

              return action;
            case 2175:
              action = @"DISPLAY_CYCLING_DEFAULT_OPTION";

              return action;
            case 2176:
              action = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

              return action;
            case 2177:
              action = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

              return action;
            case 2178:
              action = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

              return action;
            case 2179:
              action = @"TAP_AUTOMATIC_WORKOUT_OPTION";

              return action;
            case 2180:
              action = @"TAP_CYCLING_DEFAULT_OPTION";

              return action;
            case 2181:
              action = @"TAP_CYCLING_NO_BIKE_ADVISORY";

              return action;
            case 2182:
              action = @"TAP_CYCLING_STAIRS_ADVISORY";

              return action;
            case 2183:
              action = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

              return action;
            case 2184:
              action = @"UNCHECK_AUTO_RECORD_WORKOUT";

              return action;
            case 2185:
              action = @"UNCHECK_EBIKE";

              return action;
            case 2186:
              action = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

              return action;
            case 2187:
              action = @"DISPLAY_LPR_ADVISORY";

              return action;
            case 2188:
              action = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

              return action;
            case 2189:
              action = @"CREATE_WIDGET";

              return action;
            case 2190:
              action = @"REVEAL_WIDGET_TRAY";

              return action;
            case 2191:
              action = @"LPR_ERROR_CODE";

              return action;
            case 2192:
              action = @"TAP_SEE_ALL_RECENTLY_VIEWED";

              return action;
            case 2193:
              action = @"TAP_CLEAR_RECENTLY_VIEWED";

              return action;
            case 2194:
              action = @"LPR_HARD_STOP";

              return action;
            case 2195:
              action = @"TAP_PUBLISHER_SUBACTION";

              return action;
            case 2196:
              action = @"CARPLAY_DISPLAY_ACTIVATED";

              return action;
            case 2197:
              action = @"CARPLAY_DISPLAY_DEACTIVATED";

              return action;
            case 2198:
              action = @"TAP_FEATURED_COLLECTION";

              return action;
            case 2199:
              action = @"SCROLL_FEATURED_COLLECTION_FORWARD";

              return action;
            case 2200:
              action = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

              return action;
            default:
              if (action == 1504)
              {
                action = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (action != 1505)
                {
                  goto LABEL_195;
                }

                action = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        action = @"UI_ACTION_UNKNOWN";
        switch(action)
        {
          case 0:
            goto LABEL_196;
          case 1:
            action = @"PULL_UP";

            break;
          case 2:
            action = @"PULL_DOWN";

            break;
          case 3:
            action = @"TAP";

            break;
          case 4:
            action = @"CLOSE";

            break;
          case 5:
            action = @"SWIPE_PREV";

            break;
          case 6:
            action = @"SWIPE_NEXT";

            break;
          case 7:
            action = @"SCROLL_UP";

            break;
          case 8:
            action = @"SCROLL_DOWN";

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
            action = @"SHOW_MORE";

            break;
          case 11:
            action = @"SHOW_LESS";

            break;
          case 12:
            action = @"SWIPE_LEFT";

            break;
          case 13:
            action = @"SWIPE_RIGHT";

            break;
          case 14:
            action = @"MINIMIZE";

            break;
          case 15:
            action = @"TAP_PREV";

            break;
          case 16:
            action = @"TAP_NEXT";

            break;
          case 17:
            action = @"SUBMIT";

            break;
          case 18:
            action = @"CANCEL";

            break;
          case 19:
            action = @"ENTER_MAPS";

            break;
          case 20:
            action = @"EXIT_MAPS";

            break;
          case 21:
            action = @"REVEAL";

            break;
          case 22:
            action = @"OPEN_NEW_TAB";

            break;
          case 25:
            action = @"BACK";

            break;
          case 26:
            action = @"ACTIVATE";

            break;
          case 27:
            action = @"DEACTIVATE";

            break;
          case 28:
            action = @"AGREE";

            break;
          case 29:
            action = @"DISAGREE";

            break;
          case 30:
            action = @"SKIP_ANSWER";

            break;
          case 31:
            action = @"EXPAND";

            break;
          case 32:
            action = @"COLLAPSE";

            break;
          case 33:
            action = @"ENTER";

            break;
          case 34:
            action = @"EXIT";

            break;
          case 35:
            action = @"SCROLL_UP_INDEX_BAR";

            break;
          case 36:
            action = @"SCROLL_DOWN_INDEX_BAR";

            break;
          case 37:
            action = @"TOGGLE_ON";

            break;
          case 38:
            action = @"TOGGLE_OFF";

            break;
          case 39:
            action = @"LONG_PRESS";

            break;
          case 40:
            action = @"CLICK";

            break;
          case 41:
            action = @"TAP_DONE";

            break;
          case 42:
            action = @"TAP_CLOSE";

            break;
          case 43:
            action = @"SCROLL_LEFT";

            break;
          case 44:
            action = @"SCROLL_RIGHT";

            break;
          case 45:
            action = @"DISPLAY";

            break;
          case 46:
            action = @"OPEN_IN_APP";

            break;
          case 47:
            action = @"CONCEAL";

            break;
          case 48:
            action = @"TAP_DELETE";

            break;
          case 49:
            action = @"TAP_FILTER";

            break;
          case 50:
            action = @"TAP_SECONDARY_BUTTON";

            break;
          case 51:
            action = @"TAP_WIDGET_FOOD";

            break;
          case 52:
            action = @"TAP_WIDGET_GAS";

            break;
          case 53:
            action = @"TAP_WIDGET_LOADING";

            break;
          case 54:
            action = @"TAP_WIDGET_SEARCH";

            break;
          case 55:
            action = @"TAP_WIDGET_STORES";

            break;
          case 56:
            action = @"DISPLAY_ALLOW_ONCE_PROMPT";

            break;
          case 57:
            action = @"SHARE_CURRENT_LOCATION";

            break;
          case 58:
            action = @"SHARE_PHOTO";

            break;
          case 59:
            action = @"TAP_KEEP_OFF";

            break;
          case 60:
            action = @"TAP_PHOTO_CATEGORY";

            break;
          case 61:
            action = @"TAP_PRECISE_LOCATION_OFF_BANNER";

            break;
          case 62:
            action = @"TAP_TURN_ON";

            break;
          case 63:
            action = @"DISPLAY_CYCLING_ANNOTATION";

            break;
          case 64:
            action = @"DISPLAY_DRIVING_DEFAULT_OPTION";

            break;
          case 65:
            action = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

            break;
          case 66:
            action = @"DISPLAY_WALKING_DEFAULT_OPTION";

            break;
          case 67:
            action = @"TAP_CYCLING_ANNOTATION";

            break;
          case 68:
            action = @"TAP_DRIVING_DEFAULT_OPTION";

            break;
          case 69:
            action = @"TAP_TRANSIT_DEFAULT_OPTION";

            break;
          case 70:
            action = @"TAP_WALKING_DEFAULT_OPTION";

            break;
          case 71:
            action = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

            break;
          case 72:
            action = @"TAP_RIDESHARE_DEFAULT_OPTION";

            break;
          case 73:
            action = @"TAP_PERSONAL_COLLECTION";

            break;
          case 74:
            action = @"RESUME_ROUTE";

            break;
          case 75:
            action = @"DISPLAY_OUT_OF_RANGE_ALERT";

            break;
          case 76:
            action = @"TAP_ALLOW_ONCE";

            break;
          case 77:
            action = @"TAP_DO_NOT_ALLOW";

            break;
          case 78:
            action = @"ADD_RECCOMENDED_FAVORITE";

            break;
          case 79:
            action = @"ADD_RECOMMENDED_HOME_FAVORITE";

            break;
          case 80:
            action = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 81:
            action = @"ADD_RECOMMENDED_WORK_FAVORITE";

            break;
          case 82:
            action = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

            break;
          case 83:
            action = @"CREATE_SCHOOL_FAVORITE";

            break;
          case 84:
            action = @"TAP_SCHOOL_FAVORITE";

            break;
          case 85:
            action = @"SELECT_ROUTING_TYPE_CYCLING";

            break;
          case 86:
            action = @"REPORT_PHOTO";

            break;
          case 87:
            action = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

            break;
          case 88:
            action = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

            break;
          case 89:
            action = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

            break;
          case 90:
            action = @"CREATE_RECOMMENDED_FAVORITE";

            break;
          case 91:
            action = @"CREATE_RECOMMENDED_HOME_FAVORITE";

            break;
          case 92:
            action = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

            break;
          case 93:
            action = @"CREATE_RECOMMENDED_WORK_FAVORITE";

            break;
          case 94:
            action = @"TAP_SMALL_WIDGET_ITEM";

            break;
          case 95:
            action = @"TAP_MEDIUM_WIDGET_ITEM";

            break;
          case 96:
            action = @"TAP_LARGE_WIDGET_ITEM";

            break;
          case 97:
            action = @"DISPLAY_ARP_TIPKIT";

            break;
          case 98:
            action = @"NEXT";

            break;
          case 99:
            action = @"TAP_RATE_AND_ADD_PHOTOS";

            break;
          case 100:
            action = @"TAP_TO_ADD_POSITIVE_RATING";

            break;
          case 101:
            action = @"TAP_TO_ADD_NEGATIVE_RATING";

            break;
          case 102:
            action = @"TAP_ACTIVE_SHARING_NOTIFICATION";

            break;
          case 103:
            action = @"INVOKE_SIRI_PROMPT";

            break;
          case 104:
            action = @"ETA_SHARED_SUCCESSFULLY";

            break;
          case 105:
            action = @"ENDED_ETA_SHARE_SUCCESSFULLY";

            break;
          case 106:
            action = @"CLEAR_INCIDENT";

            break;
          case 107:
            action = @"CONFIRM_INCIDENT";

            break;
          case 108:
            action = @"DISMISS_INCIDENT";

            break;
          case 109:
            action = @"INCIDENT_ALERT_TIMEOUT";

            break;
          case 110:
            action = @"INCIDENT_ALERT_TRAY_SHOWN";

            break;
          case 111:
            action = @"INCIDENT_CARD_SHOWN";

            break;
          case 112:
            action = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

            break;
          case 113:
            action = @"INCIDENT_REPORT_TRAY_SHOWN";

            break;
          case 114:
            action = @"NAV_TRAY_DISCOVERY_SHOWN";

            break;
          case 115:
            action = @"TAP_TO_REPORT_INCIDENT";

            break;
          case 116:
            action = @"TAP_SHORTCUT";

            break;
          case 117:
            action = @"BLOCK_CONTACT";

            break;
          case 118:
            action = @"TAP_TO_ADD_RATING";

            break;
          case 119:
            action = @"AR_WALKING_LOCALIZATION_FAILED";

            break;
          case 120:
            action = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

            break;
          case 121:
            action = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

            break;
          case 122:
            action = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

            break;
          case 123:
            action = @"ATTEMPT_AR_WALKING_LOCALIZATION";

            break;
          case 124:
            action = @"RAISE_TO_ENTER_AR_WALKING";

            break;
          case 125:
            action = @"TAP_DISMISS";

            break;
          case 126:
            action = @"TAP_ENTER_AR_WALKING";

            break;
          case 127:
            action = @"TAP_OK";

            break;
          case 128:
            action = @"TAP_TRY_AGAIN";

            break;
          case 129:
            action = @"TAP_TURN_ON_IN_SETTINGS";

            break;
          case 130:
            action = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

            break;
          case 131:
            action = @"VLF_CORRECTION_USER_ABANDON";

            break;
          case 132:
            action = @"AREA_EVENTS_ALERT";

            break;
          case 133:
            action = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

            break;
          case 134:
            action = @"ACCEPT_EVENT_REROUTE";

            break;
          case 135:
            action = @"DISPLAY_AREA_EVENTS_ADVISORY";

            break;
          case 136:
            action = @"DISMISS_EVENT_REROUTE";

            break;
          case 137:
            action = @"PUNCH_OUT_EVENTS_LINK";

            break;
          case 138:
            action = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

            break;
          case 139:
            action = @"ADJUST_GUIDANCE_SETTINGS";

            break;
          case 140:
            action = @"HIDE_DETAILS";

            break;
          case 141:
            action = @"SELECT_VOICE_GUIDANCE_ON";

            break;
          case 142:
            action = @"SELECT_VOICE_GUIDANCE_OFF";

            break;
          case 143:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

            break;
          case 144:
            action = @"TAP_TEXT_LABEL";

            break;
          case 145:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

            break;
          case 146:
            action = @"TAP_EXIT";

            break;
          case 147:
            action = @"TAP_CITY_MENU";

            break;
          case 148:
            action = @"CHECK_AVOID_TOLLS";

            break;
          case 149:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

            break;
          case 150:
            action = @"TAP_ICLOUD";

            break;
          case 151:
            action = @"CHECK_AVOID_HIGHWAYS";

            break;
          case 152:
            action = @"TAP_FAVORITES";

            break;
          case 153:
            action = @"SELECT_DISTANCE_IN_KM";

            break;
          case 154:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

            break;
          case 155:
            action = @"OPEN_FULL_CARD_FILTER";

            break;
          case 156:
            action = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

            break;
          case 157:
            action = @"OPEN_SINGLE_CARD_FILTER";

            break;
          case 158:
            action = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 159:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

            break;
          case 160:
            action = @"SESSIONLESS_REVEAL";

            break;
          case 161:
            action = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

            break;
          case 162:
            action = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

            break;
          case 163:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

            break;
          case 164:
            action = @"ENTER_RAP_REPORT_MENU";

            break;
          case 165:
            action = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

            break;
          case 166:
            action = @"TAP_MY_VEHICLES";

            break;
          case 167:
            action = @"SUBMIT_SINGLE_CARD_FILTER";

            break;
          case 168:
            action = @"SUBMIT_FULL_CARD_FILTER";

            break;
          case 169:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

            break;
          case 170:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

            break;
          case 171:
            action = @"TAP_EXPLORE_CURATED_COLELCTIONS";

            break;
          case 172:
            action = @"TAP_ACCOUNT";

            break;
          case 173:
            action = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

            break;
          case 174:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

            break;
          case 175:
            action = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

            break;
          case 176:
            action = @"RESULT_REFINEMENT_TOGGLE_OFF";

            break;
          case 177:
            action = @"TAP_CITY_CURATED_COLLECTIONS";

            break;
          case 178:
            action = @"TAP_REPORTS";

            break;
          case 179:
            action = @"TAP_RATINGS";

            break;
          case 180:
            action = @"TAP_EXPLORE_CURATED_COLLECTIONS";

            break;
          case 181:
            action = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

            break;
          case 182:
            action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

            break;
          case 183:
            action = @"SELECT_DISTANCE_IN_MILES";

            break;
          case 184:
            action = @"TAP_PRIVACY_STATEMENT";

            break;
          case 185:
            action = @"TAP_MAPS_SETTINGS";

            break;
          case 186:
            action = @"CANCEL_FULL_CARD_FILTER";

            break;
          case 187:
            action = @"TAP_LATEST_CURATED_COLLECTION";

            break;
          case 188:
            action = @"TAP_TEMPORAL_CURATED_COLLECTION";

            break;
          case 189:
            action = @"UNCHECK_AVOID_TOLLS";

            break;
          case 190:
            action = @"UNSELECT_SEARCH_REFINEMENT";

            break;
          case 191:
            action = @"TAP_RATING";

            break;
          case 192:
            action = @"TAP_ICLOUD_SIGN_IN";

            break;
          case 193:
            action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

            break;
          case 194:
            action = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

            break;
          case 195:
            action = @"UNCHECK_AVOID_HIGHWAYS";

            break;
          case 196:
            action = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

            break;
          case 197:
            action = @"RESULT_REFINEMENT_TOGGLE_ON";

            break;
          case 198:
            action = @"TAP_CONTEXT_LINE_HYPERLINK";

            break;
          case 199:
            action = @"TAP_MY_GUIDES";

            break;
          case 200:
            action = @"SELECT_SEARCH_REFINEMENT";

            break;
          case 201:
            action = @"SESSIONLESS_TAP_ACCOUNT";

            break;
          case 202:
            action = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

            break;
          case 203:
            action = @"TAP_TRAVEL_PREFERENCES";

            break;
          case 204:
            action = @"SHOW_CURATED_COLLECTION_LIST";

            break;
          case 205:
            action = @"CANCEL_SINGLE_CARD_FILTER";

            break;
          case 206:
            action = @"DISPLAY_HFP_OPTION";

            break;
          case 207:
            action = @"SWITCH_OFF_HFP";

            break;
          case 208:
            action = @"SWITCH_ON_HFP";

            break;
          case 209:
            action = @"TAP_QUICK_ACTION_TRAY";

            break;
          case 210:
            action = @"SHOW_ALL_CITIES";

            break;
          case 211:
            action = @"TAP_ADD_NEARBY_TRANSIT";

            break;
          case 212:
            action = @"RESUME";

            break;
          case 213:
            action = @"DISPLAY_TIPKIT_PROMPT";

            break;
          case 214:
            action = @"TAP_NEARBY_TRANSIT_FAVORITE";

            break;
          case 215:
            action = @"TAP_DRIVING_MODE";

            break;
          case 216:
            action = @"SWITCH_ON_VOICE_GUIDANCE";

            break;
          case 217:
            action = @"DISMISS_TIPKIT_PROMPT";

            break;
          case 218:
            action = @"TAP_EXPAND_EXIT_DETAILS";

            break;
          case 219:
            action = @"TAP_NEARBY_TRANSIT_FILTER";

            break;
          case 220:
            action = @"TAP_MORE_DEPARTURES";

            break;
          case 221:
            action = @"RAP_INDIVIDUAL_PLACE";

            break;
          case 222:
            action = @"RAP_ADD_MAP";

            break;
          case 223:
            action = @"TAP_SUGGESTED_RAP";

            break;
          case 224:
            action = @"RAP_STREET_ISSUE";

            break;
          case 225:
            action = @"SWIPE_PIN_REVEAL";

            break;
          case 226:
            action = @"TAP_ADD_TIPKIT_FAVORITE";

            break;
          case 227:
            action = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

            break;
          case 228:
            action = @"RAP_BAD_TRIP";

            break;
          case 229:
            action = @"RAP_PLACE_ISSUE";

            break;
          case 230:
            action = @"TAP_OPEN_MAPS";

            break;
          case 231:
            action = @"TAP_NEARBY_TRANSIT_RESULT";

            break;
          case 232:
            action = @"RAP_GUIDE";

            break;
          case 233:
            action = @"SWITCH_OFF_VOICE_GUIDANCE";

            break;
          case 234:
            action = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

            break;
          case 235:
            action = @"SELECT_TRANSIT_STEP";

            break;
          case 236:
            action = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

            break;
          case 237:
            action = @"TAP_SEE_MORE";

            break;
          case 238:
            action = @"RAP_IN_REVIEW";

            break;
          case 239:
            action = @"TAP_OPEN_MENU";

            break;
          case 240:
            action = @"TAP_NEARBY_TRANSIT";

            break;
          case 241:
            action = @"TAP_PIN_LINE";

            break;
          case 242:
            action = @"SWITCH_OFF_TRIP_FEEDBACK";

            break;
          case 243:
            action = @"RAP_GOOD_TRIP";

            break;
          case 244:
            action = @"TAP_FILTERED_CURATED_COLLECTION";

            break;
          case 245:
            action = @"SHARE_MY_LOCATION";

            break;
          case 246:
            action = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

            break;
          case 247:
            action = @"DISPLAY_GENERIC_ADVISORY";

            break;
          case 248:
            action = @"ADVISORY_ALERT";

            break;
          case 249:
            action = @"PUNCH_OUT_LINK";

            break;
          case 250:
            action = @"TAP_GENERIC_ADVISORY";

            break;
          case 251:
            action = @"TAP_EXPLORE_MODE";

            break;
          case 252:
            action = @"TAP_UNPIN_LINE";

            break;
          case 253:
            action = @"MENU_UNPIN";

            break;
          case 254:
            action = @"MENU_PIN";

            break;
          case 255:
            action = @"SWIPE_PIN";

            break;
          case 256:
            action = @"SWIPE_UNPIN";

            break;
          case 257:
            action = @"TAP_MEDIA_APP";

            break;
          case 258:
            action = @"TAP_GUIDES_SUBACTION";

            break;
          case 259:
            action = @"TAP_MEDIA";

            break;
          case 260:
            action = @"PUNCH_OUT_MEDIA";

            break;
          case 261:
            action = @"SHOW_MEDIA_APP_MENU";

            break;
          case 262:
            action = @"SCROLL_RIGHT_RIBBON";

            break;
          case 263:
            action = @"SCROLL_LEFT_RIBBON";

            break;
          case 264:
            action = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

            break;
          case 265:
            action = @"TAP_SHOW_MORE_TEXT";

            break;
          case 266:
            action = @"SCROLL_LEFT_RATINGS";

            break;
          case 267:
            action = @"SCROLL_LEFT_TEMPLATE_PLACE";

            break;
          case 268:
            action = @"SCROLL_RIGHT_TEMPLATE_PLACE";

            break;
          case 269:
            action = @"SCROLL_RIGHT_RATINGS";

            break;
          case 270:
            action = @"TAP_ALLOW";

            break;
          case 271:
            action = @"TAP_GO_TO_SETTING";

            break;
          case 272:
            action = @"START_SUBMIT_REPORT";

            break;
          case 273:
            action = @"AUTHENTICATION_INFO_FAILURE";

            break;
          case 274:
            action = @"SUCCESSFULLY_SUBMIT_REPORT";

            break;
          case 275:
            action = @"FAILED_SUBMIT_REPORT";

            break;
          case 276:
            action = @"AUTHENTICATION_INFO_SUCCESS";

            break;
          case 277:
            action = @"EDIT_WAYPOINT";

            break;
          case 278:
            action = @"CLEAR_TEXT";

            break;
          case 279:
            action = @"REORDER_WAYPOINT";

            break;
          case 280:
            action = @"REMOVE_WAYPOINT";

            break;
          case 281:
            action = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

            break;
          case 282:
            action = @"TAP_SHOWCASE_MENU";

            break;
          case 283:
            action = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

            break;
          case 284:
            action = @"TAP_PHOTO_ALBUM";

            break;
          case 285:
            action = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 286:
            action = @"RAP_INLINE_ADD";

            break;
          case 287:
            action = @"RAP_TAP_EDIT";

            break;
          case 288:
            action = @"CLAIM_BUSINESS";

            break;
          case 289:
            action = @"RAP_EDIT_OPTIONS";

            break;
          case 290:
            action = @"TAP_IN_REVIEW_RAP";

            break;
          case 291:
            action = @"ORB_MENU_ADD_STOP";

            break;
          case 292:
            action = @"NEXT_STOP";

            break;
          case 293:
            action = @"ARRIVE_AT_WAYPOINT";

            break;
          case 294:
            action = @"REMOVE_STOP";

            break;
          case 295:
            action = @"DISPLAY_PAUSE_BUTTON";

            break;
          case 296:
            action = @"DISPLAY_PAUSE_NEXT_BUTTONS";

            break;
          case 297:
            action = @"AUTO_ADVANCE_NEXT_STOP";

            break;
          case 298:
            action = @"ADD_INLINE_NEGATIVE_RATING";

            break;
          case 299:
            action = @"ADD_INLINE_POSITIVE_RATING";

            break;
          case 300:
            action = @"TAP_TO_ADD_RATING_AND_PHOTO";

            break;
          case 301:
            action = @"SUBMIT_RATINGS_AND_PHOTOS";

            break;
          case 302:
            action = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

            break;
          case 303:
            action = @"TAP_RECENTLY_VIEWED_ROUTE";

            break;
          case 304:
            action = @"SHOW_ALL_RECENTS";

            break;
          case 305:
            action = @"RESUME_MULTIPOINT_ROUTE";

            break;
          case 306:
            action = @"DISMISS_TRANSIT_TIPKIT";

            break;
          case 307:
            action = @"DISPLAY_TRANSIT_TIPKIT";

            break;
          case 308:
            action = @"TAP_TRANSIT_TIPKIT";

            break;
          case 309:
            action = @"FILTER_EV";

            break;
          case 310:
            action = @"FILTER_SURCHARGE";

            break;
          case 311:
            action = @"FILTER_PREFER";

            break;
          case 312:
            action = @"TAP_WALKING_ANNOTATION";

            break;
          case 313:
            action = @"FILTER_AVOID";

            break;
          case 314:
            action = @"FILTER_TRANSPORTATION_MODE";

            break;
          case 315:
            action = @"FILTER_RECOMMENDED_ROUTES";

            break;
          case 316:
            action = @"FILTER_IC_FARES";

            break;
          case 317:
            action = @"FILTER_TRANSIT_CARD_FARES";

            break;
          case 318:
            action = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

            break;
          case 319:
            action = @"TAP_NOTIFICATION_SETTINGS";

            break;
          case 320:
            action = @"TAP_ENABLE_NOTIFICATION";

            break;
          case 321:
            action = @"ARP_SUGGESTIONS_TURN_OFF";

            break;
          case 322:
            action = @"ARP_SUGGESTIONS_TURN_ON";

            break;
          case 323:
            action = @"DISMISS_ARP_SUGGESTION";

            break;
          case 324:
            action = @"RATINGS_AND_PHOTOS_TURN_ON";

            break;
          case 325:
            action = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

            break;
          case 326:
            action = @"UNSELECT_SUGGESTED_PHOTOS";

            break;
          case 327:
            action = @"SUGGESTED_PHOTOS_SHOWN";

            break;
          case 328:
            action = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 329:
            action = @"TAP_YOUR_PHOTOS_ALBUM";

            break;
          case 330:
            action = @"RATINGS_AND_PHOTOS_TURN_OFF";

            break;
          case 331:
            action = @"DELETE_PHOTO";

            break;
          case 332:
            action = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 333:
            action = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

            break;
          case 334:
            action = @"TAP_PHOTOS_LIVE_NOTIFICATION";

            break;
          case 335:
            action = @"DISPLAY_YOUR_PHOTOS_ALBUM";

            break;
          case 336:
            action = @"SELECT_SUGGESTED_PHOTOS";

            break;
          case 337:
            action = @"ADD_STOP";

            break;
          case 338:
            action = @"SHOW_CREDIT_TURN_ON";

            break;
          case 339:
            action = @"DISPLAY_ARP_SUGGESTION";

            break;
          case 340:
            action = @"TAP_TO_ADD_PHOTO_CREDIT";

            break;
          case 341:
            action = @"SHOW_CREDIT_TURN_OFF";

            break;
          case 342:
            action = @"TAP_TO_EDIT_NICKNAME";

            break;
          case 343:
            action = @"SUBMIT_RATINGS";

            break;
          case 344:
            action = @"END_NAV_ON_WATCH";

            break;
          case 345:
            action = @"FILTER_EBIKE";

            break;
          case 356:
            action = @"ADD_STOP_SIRI";

            break;
          case 357:
            action = @"TAP_REVIEWED_RAP";

            break;
          case 358:
            action = @"TAP_OUTREACH_RAP";

            break;
          case 359:
            action = @"DISPLAY_SUGGESTED_ITEM";

            break;
          case 360:
            action = @"DISPLAY_HIKING_TIPKIT";

            break;
          case 361:
            action = @"DISMISS_HIKING_TIPKIT";

            break;
          case 362:
            action = @"TAP_HIKING_TIPKIT";

            break;
          case 363:
            action = @"SCROLL_LEFT_TRAILS";

            break;
          case 364:
            action = @"TAP_MORE_TRAILS";

            break;
          case 365:
            action = @"TAP_RELATED_TRAIL";

            break;
          case 366:
            action = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

            break;
          case 367:
            action = @"SCROLL_RIGHT_TRAILS";

            break;
          case 368:
            action = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 369:
            action = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

            break;
          case 370:
            action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 371:
            action = @"TAP_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 372:
            action = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

            break;
          case 373:
            action = @"EXPIRED_MAPS_REMOVED";

            break;
          case 374:
            action = @"UPDATE_ALL_DOWNLOAD_MAPS";

            break;
          case 375:
            action = @"TAP_EXPIRED_MAPS";

            break;
          case 376:
            action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 377:
            action = @"MOVE_DOWNLOAD_MAPS";

            break;
          case 378:
            action = @"SAVE_RENAME_DOWNLOAD_MAPS";

            break;
          case 379:
            action = @"TAP_COMPLETE_DOWNLOAD_MAPS";

            break;
          case 380:
            action = @"TAP_ENTER_OFFLINE_MAPS";

            break;
          case 381:
            action = @"TAP_DOWNLOAD_MAPS";

            break;
          case 382:
            action = @"TAP_DOWNLOAD_MAPS_CONTINUE";

            break;
          case 383:
            action = @"DELETE_DOWNLOAD_MAPS";

            break;
          case 384:
            action = @"SLIDE_CLEAR_EXPIRED_MAPS";

            break;
          case 385:
            action = @"RENAME_DOWNLOAD_MAPS";

            break;
          case 386:
            action = @"RESIZE_DOWNLOAD_MAPS";

            break;
          case 387:
            action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

            break;
          case 388:
            action = @"RESTORE_EXPIRED_MAPS";

            break;
          case 389:
            action = @"CLEAR_EXPIRED_MAPS";

            break;
          case 390:
            action = @"TAP_USING_OFFLINE_BAR";

            break;
          case 391:
            action = @"UPDATE_DOWNLOAD_MAPS";

            break;
          case 392:
            action = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

            break;
          case 393:
            action = @"DISPLAY_DOWNLOAD_MAPS";

            break;
          case 394:
            action = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

            break;
          case 395:
            action = @"DISPLAY_EXPIRED_MAPS";

            break;
          case 396:
            action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

            break;
          case 397:
            action = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

            break;
          case 398:
            action = @"SLIDE_RESTORE_EXPIRED_MAPS";

            break;
          case 399:
            action = @"ETA_SHARE_TRAY_TIMEOUT";

            break;
          case 400:
            action = @"START_ETA_SHARING";

            break;
          case 401:
            action = @"PERSON_LOCATION_UPDATE";

            break;
          case 402:
            action = @"STOP_ETA_SHARING";

            break;
          case 403:
            action = @"PUNCH_OUT_TO_FINDMY";

            break;
          case 404:
            action = @"TAP_PEOPLE_LOCATION";

            break;
          case 405:
            action = @"TAP_TO_REQUEST_LOCATION";

            break;
          case 406:
            action = @"ZOOM_OUT_CROWN";

            break;
          case 407:
            action = @"TAP_RESIZE_DOWNLOAD_MAPS";

            break;
          case 408:
            action = @"TAP_DELETE_DOWNLOAD_MAPS";

            break;
          case 409:
            action = @"SELECT_LIST_VIEW";

            break;
          case 410:
            action = @"SCROLL_RIGHT_TRAILHEADS";

            break;
          case 411:
            action = @"SWITCH_TO_ONLINE_MODE";

            break;
          case 412:
            action = @"TAP_RELATED_TRAILHEAD";

            break;
          case 413:
            action = @"SELECT_ELEVATION_VIEW";

            break;
          case 414:
            action = @"TOGGLE_PROXIMITY_RADIUS_ON";

            break;
          case 415:
            action = @"SEE_MORE_RECENTS";

            break;
          case 416:
            action = @"SEE_MORE_GUIDES";

            break;
          case 417:
            action = @"SELECT_CONTROLS";

            break;
          case 418:
            action = @"NO_SEARCH_RESULTS";

            break;
          case 419:
            action = @"TAP_VIEW_RESULTS_CAROUSEL";

            break;
          case 420:
            action = @"TAP_VIEW_RESULTS_LIST";

            break;
          case 421:
            action = @"SELECT_MAP_VIEW";

            break;
          case 422:
            action = @"SCROLL_LEFT_TRAILHEADS";

            break;
          case 423:
            action = @"SWITCH_TO_OFFLINE_MODE";

            break;
          case 424:
            action = @"ZOOM_IN_CROWN";

            break;
          case 425:
            action = @"TOGGLE_PROXIMITY_RADIUS_OFF";

            break;
          case 426:
            action = @"TAP_MAP";

            break;
          case 427:
            action = @"SWIPE_DOWN";

            break;
          case 428:
            action = @"TAP_MORE_TRAILHEADS";

            break;
          case 429:
            action = @"TAP_ROUTE_OPTIONS";

            break;
          case 430:
            action = @"TAP_ROUTE_NAV_MAP";

            break;
          case 431:
            action = @"TAP_ROUTE_OVERVIEW_MAP";

            break;
          case 432:
            action = @"TAP_AUDIO";

            break;
          case 433:
            action = @"TAP_OPEN_PLACECARD";

            break;
          case 434:
            action = @"TAP_VIEW_STOPS";

            break;
          case 435:
            action = @"TAP_ROUTE_DETAILS";

            break;
          case 436:
            action = @"ADD_LPR_VEHICLE";

            break;
          case 437:
            action = @"TAP_ADD_VEHICLE";

            break;
          case 438:
            action = @"TAP_PLUG_TYPE";

            break;
          case 439:
            action = @"UNSELECT_SUGGESTED_NETWORK";

            break;
          case 440:
            action = @"TAP_SET_UP_LATER";

            break;
          case 441:
            action = @"ADD_EV_VEHICLE";

            break;
          case 442:
            action = @"UPDATE_COLOR";

            break;
          case 443:
            action = @"SELECT_OTHER_NETWORK";

            break;
          case 444:
            action = @"UNSELECT_NETWORK";

            break;
          case 445:
            action = @"TAP_BACK";

            break;
          case 446:
            action = @"TAP_CANCEL";

            break;
          case 447:
            action = @"UNSELECT_VEHICLE";

            break;
          case 448:
            action = @"UNSELECT_OTHER_NETWORK";

            break;
          case 449:
            action = @"DISPLAY_EV_TIPKIT";

            break;
          case 450:
            action = @"SELECT_NETWORK";

            break;
          case 451:
            action = @"TAP_EV_TIPKIT";

            break;
          case 452:
            action = @"TAP_CHOOSE_NETWORKS";

            break;
          case 453:
            action = @"TAP_ADD_NETWORK";

            break;
          case 454:
            action = @"FILTER_NETWORK";

            break;
          case 455:
            action = @"SELECT_SUGGESTED_NETWORK";

            break;
          case 456:
            action = @"TRANSIT_TO_WALKING";

            break;
          case 457:
            action = @"TRANSIT_TO_FINDMY";

            break;
          case 458:
            action = @"TAP_AC_KEYBOARD";

            break;
          case 459:
            action = @"REACH_PHOTO_STRIP_END";

            break;
          case 460:
            action = @"SEARCH_HERE_REVEAL";

            break;
          case 461:
            action = @"TAP_SEARCH_HERE";

            break;
          case 462:
            action = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

            break;
          case 463:
            action = @"SAVE";

            break;
          case 464:
            action = @"TAP_MORE_CURATED_HIKES";

            break;
          case 465:
            action = @"CREATE_CUSTOM_ROUTE";

            break;
          case 466:
            action = @"TAP_TRY_NOW";

            break;
          case 467:
            action = @"TAP_CURATED_HIKE";

            break;
          case 468:
            action = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

            break;
          case 469:
            action = @"ADD_TO_LIBRARY";

            break;
          case 470:
            action = @"START_HIKING";

            break;
          case 471:
            action = @"EDIT_NOTE";

            break;
          case 472:
            action = @"CREATE_NOTE";

            break;
          case 473:
            action = @"DELETE_PIN";

            break;
          case 474:
            action = @"ADD_ROUTE";

            break;
          case 475:
            action = @"ADD_PIN";

            break;
          case 476:
            action = @"REMOVE_FROM_COLLECTION";

            break;
          case 477:
            action = @"REMOVE_FROM_LIBRARY";

            break;
          case 478:
            action = @"TAP_ITEM";

            break;
          case 479:
            action = @"DELETE_ROUTE";

            break;
          case 480:
            action = @"TAP_ROUTE";

            break;
          case 481:
            action = @"TAP_DOWNLOAD_WATCH_MAPS";

            break;
          case 482:
            action = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 483:
            action = @"STOP_DOWNLOAD_ONTO_WATCH";

            break;
          case 484:
            action = @"TAP_DOWNLOAD_ONTO_WATCH";

            break;
          case 485:
            action = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

            break;
          case 486:
            action = @"TAP_DOWNLOAD_NOW_WATCH";

            break;
          case 487:
            action = @"REVEAL_DETECTION_LIST";

            break;
          case 488:
            action = @"TAP_RECOMMENDATION";

            break;
          case 489:
            action = @"TAP_EXPAND";

            break;
          case 490:
            action = @"EXPAND_DETECTION_LIST";

            break;
          case 491:
            action = @"FIRST_PARTY_MAP_VIEW";

            break;
          case 492:
            action = @"SECOND_PARTY_MAP_VIEW";

            break;
          case 493:
            action = @"THIRD_PARTY_MAP_VIEW";

            break;
          case 494:
            action = @"DAEMON_PARTY_MAP_VIEW";

            break;
          case 495:
            action = @"MAPS_APP_DWELL_TIME_3_SEC";

            break;
          case 496:
            action = @"MAPS_APP_DWELL_TIME_30_SEC";

            break;
          case 497:
            action = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

            break;
          case 498:
            action = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

            break;
          case 499:
            action = @"DISPLAY_DOOM";

            break;
          case 500:
            action = @"TAP_DOOM";

            break;
          case 501:
            action = @"TAP_ROUTE_GENIUS";

            break;
          case 502:
            action = @"DISPLAY_ROUTE_GENIUS";

            break;
          case 503:
            action = @"TAP_WIDGET";

            break;
          case 504:
            action = @"ARRIVE_AT_DESTINATION";

            break;
          case 505:
            action = @"DISPLAY_WIDGET";

            break;
          case 506:
            action = @"CLEAR_HISTORY";

            break;
          case 507:
            action = @"TAP_SECTION";

            break;
          case 508:
            action = @"APPROVE_LOCATION";

            break;
          case 509:
            action = @"DISMISS_VISITED_PLACES_TIPKIT";

            break;
          case 510:
            action = @"DISPLAY_VISITED_PLACES_TIPKIT";

            break;
          case 511:
            action = @"MORE_OPTIONS";

            break;
          case 512:
            action = @"TAP_VISITED_PLACES_AVAILABLE";

            break;
          case 513:
            action = @"AUTO_REFRESH_SEARCH";

            break;
          case 514:
            action = @"REMOVE_VISIT";

            break;
          case 515:
            action = @"WRONG_LOCATION";

            break;
          case 516:
            action = @"CONFIRM";

            break;
          case 517:
            action = @"KEEP_HISTORY";

            break;
          case 518:
            action = @"DISPLAY_VISITED_PLACES_AVAILABLE";

            break;
          case 519:
            action = @"REMOVE";

            break;
          case 520:
            action = @"ALLOW";

            break;
          case 521:
            action = @"DONT_ALLOW";

            break;
          case 522:
            action = @"REMOVE_EVERY_VISIT";

            break;
          case 523:
            action = @"CONTINUE_VISITED_PLACES_TIPKIT";

            break;
          case 524:
            action = @"REMOVE_FROM_FAVORITE_GUIDE";

            break;
          case 525:
            action = @"ADD_TO_FAVORITE_GUIDE";

            break;
          case 526:
            action = @"FAMILIAR_ROUTE_DISPLAYED";

            break;
          case 527:
            action = @"FAMILIAR_ROUTE_NAV_STARTED";

            break;
          case 528:
            action = @"SELECT_AUDIO_VOLUME_LOUDER";

            break;
          case 529:
            action = @"SELECT_AUDIO_VOLUME_SOFTER";

            break;
          case 1001:
            action = @"PAN";

            break;
          case 1002:
            action = @"ZOOM_IN";

            break;
          case 1003:
            action = @"ZOOM_OUT";

            break;
          case 1004:
            action = @"ROTATE";

            break;
          case 1010:
            action = @"TAP_POI";

            break;
          case 1011:
            action = @"TAP_POI_TRANSIT";

            break;
          case 1017:
            action = @"TAP_POI_HIGHLIGHTED";

            break;
          case 1018:
            action = @"TAP_POI_CLUSTERED";

            break;
          case 1020:
            action = @"TAP_POI_DROPPED_PIN";

            break;
          case 1030:
            action = @"DROP_PIN";

            break;
          case 1031:
            action = @"TAP_INCIDENT";

            break;
          case 1032:
            action = @"TAP_TRANSIT_LINE";

            break;
          case 1033:
            action = @"TAP_POI_CALENDAR";

            break;
          case 1034:
            action = @"TAP_POI_CURRENT_LOCATION";

            break;
          case 1035:
            action = @"TAP_POI_TRANSIT_LINE";

            break;
          case 1036:
            action = @"TAP_POI_LANDMARK";

            break;
          case 1037:
            action = @"TAP_POI_FLYOVER";

            break;
          case 1038:
            action = @"TAP_TO_HIDE_TRAY";

            break;
          case 1039:
            action = @"TAP_TO_REVEAL_TRAY";

            break;
          case 1040:
            action = @"TAP_COMPASS";

            break;
          case 1041:
            action = @"PITCH_AWAY_FROM_GROUND";

            break;
          case 1042:
            action = @"PITCH_CLOSER_TO_GROUND";

            break;
          case 1043:
            action = @"ZOOM_IN_PINCH";

            break;
          case 1044:
            action = @"ZOOM_OUT_PINCH";

            break;
          case 1045:
            action = @"ZOOM_IN_DOUBLE_TAP";

            break;
          case 1046:
            action = @"ZOOM_OUT_TWO_FINGER_TAP";

            break;
          case 1047:
            action = @"ZOOM_IN_ONE_FINGER";

            break;
          case 1048:
            action = @"ZOOM_OUT_ONE_FINGER";

            break;
          case 1049:
            action = @"ZOOM_IN_BUTTON";

            break;
          case 1050:
            action = @"ZOOM_OUT_BUTTON";

            break;
          case 1051:
            action = @"TAP_TRAFFIC_CAMERA";

            break;
          case 1052:
            action = @"DISPLAY_INDOOR_MAP_BUTTON";

            break;
          case 1053:
            action = @"OPEN_INDOOR_MAP";

            break;
          case 1054:
            action = @"DISPLAY_VENUE_BROWSE_BUTTON";

            break;
          case 1055:
            action = @"TAP_VENUE_BROWSE_BUTTON";

            break;
          case 1056:
            action = @"ENTER_VENUE_EXPERIENCE";

            break;
          case 1057:
            action = @"EXIT_VENUE_EXPERIENCE";

            break;
          case 1058:
            action = @"ZOOM_IN_SCENE_PINCH";

            break;
          case 1059:
            action = @"ZOOM_OUT_SCENE_PINCH";

            break;
          case 1060:
            action = @"ZOOM_RESET";

            break;
          case 1061:
            action = @"TAP_SCENE_UNAVAILABLE_AREA";

            break;
          case 1062:
            action = @"TAP_TRANSIT_ACCESS_POINT";

            break;
          case 1063:
            action = @"TAP_SPEED_CAMERA";

            break;
          case 1064:
            action = @"TAP_RED_LIGHT_CAMERA";

            break;
          case 1065:
            action = @"TAP_GEO";

            break;
          default:
            if (action != 1500)
            {
              goto LABEL_195;
            }

            action = @"TAP_PLAY_SOUND";

            break;
        }
      }

      return action;
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
              action = @"TAP_HEADING_ON";
            }

            else if (action == 4003)
            {
              action = @"TAP_HEADING_OFF";
            }

            else
            {
              action = @"PUCK_DRIFT";
            }
          }

          else
          {
            switch(action)
            {
              case 5001:
                action = @"SHOW_MAPS_SETTINGS";

                return action;
              case 5002:
                action = @"TAP_STANDARD_MODE";

                return action;
              case 5003:
                action = @"TAP_TRANSIT_MODE";

                return action;
              case 5004:
                action = @"TAP_SATELLITE_MODE";

                return action;
              case 5005:
                action = @"SWITCH_ON_TRAFFIC";

                return action;
              case 5006:
                action = @"SWITCH_OFF_TRAFFIC";

                return action;
              case 5007:
                action = @"SWITCH_ON_LABELS";

                return action;
              case 5008:
                action = @"SWITCH_OFF_LABELS";

                return action;
              case 5009:
                action = @"SWITCH_ON_3D_MAP";

                return action;
              case 5010:
                action = @"SWITCH_OFF_3D_MAP";

                return action;
              case 5011:
                action = @"SWITCH_ON_WEATHER";

                return action;
              case 5012:
                action = @"SWITCH_OFF_WEATHER";

                return action;
              case 5013:
                action = @"REPORT_A_PROBLEM";

                return action;
              case 5014:
                action = @"ADD_PLACE";

                return action;
              case 5015:
                goto LABEL_195;
              case 5016:
                action = @"TAP_PREFERENCES";

                return action;
              case 5017:
                action = @"SWITCH_ON_TOLLS";

                return action;
              case 5018:
                action = @"SWITCH_OFF_TOLLS";

                return action;
              case 5019:
                action = @"SWITCH_ON_HIGHWAYS";

                return action;
              case 5020:
                action = @"SWITCH_OFF_HIGHWAYS";

                return action;
              case 5021:
                action = @"SWITCH_ON_HEADING";

                return action;
              case 5022:
                action = @"SWITCH_OFF_HEADING";

                return action;
              case 5023:
                action = @"SWITCH_ON_SPEED_LIMIT";

                return action;
              case 5024:
                action = @"SWITCH_OFF_SPEED_LIMIT";

                return action;
              case 5025:
                action = @"ELECT_DRIVING_MODE";

                return action;
              case 5026:
                action = @"ELECT_WALKING_MODE";

                return action;
              case 5027:
                action = @"ELECT_TRANSIT_MODE";

                return action;
              case 5028:
                action = @"ELECT_RIDESHARE_MODE";

                return action;
              case 5029:
                action = @"SWITCH_ON_FIND_MY_CAR";

                return action;
              case 5030:
                action = @"SWITCH_OFF_FIND_MY_CAR";

                return action;
              case 5031:
                action = @"MARK_MY_LOCATION";

                return action;
              case 5032:
                action = @"TAP_HYBRID_MODE";

                return action;
              case 5033:
                action = @"CHECK_AVOID_BUSY_ROADS";

                return action;
              case 5034:
                action = @"UNCHECK_AVOID_BUSY_ROADS";

                return action;
              case 5035:
                action = @"CHECK_AVOID_HILLS";

                return action;
              case 5036:
                action = @"UNCHECK_AVOID_HILLS";

                return action;
              case 5037:
                action = @"CHECK_AVOID_STAIRS";

                return action;
              case 5038:
                action = @"UNCHECK_AVOID_STAIRS";

                return action;
              case 5039:
                action = @"ELECT_CYCLING_MODE";

                return action;
              default:
                if (action == 4005)
                {
                  action = @"PUCK_SNAP";
                }

                else
                {
                  if (action != 4006)
                  {
                    goto LABEL_195;
                  }

                  action = @"SELECT_FLOOR";
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
              action = @"START_NAV";

              break;
            case 3002:
              action = @"END_NAV";

              break;
            case 3003:
              action = @"OPEN_NAV_AUDIO_SETTINGS";

              break;
            case 3004:
              action = @"VIEW_DETAILS";

              break;
            case 3005:
              action = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

              break;
            case 3006:
              action = @"OPEN_ROUTING_EDITOR";

              break;
            case 3007:
              action = @"EDIT_ORIGIN";

              break;
            case 3008:
              action = @"EDIT_DESTINATION";

              break;
            case 3009:
              action = @"SWAP_ORIGIN_DESTINATION";

              break;
            case 3010:
              action = @"OPEN_MORE_ROUTES";

              break;
            case 3011:
              action = @"SELECT_ROUTING_TYPE_DRIVING";

              break;
            case 3012:
              action = @"SELECT_ROUTING_TYPE_WALKING";

              break;
            case 3013:
              action = @"SELECT_ROUTING_TYPE_TRANSIT";

              break;
            case 3014:
              action = @"SELECT_ROUTING_TYPE_RIDESHARE";

              break;
            case 3015:
              action = @"SELECT_ROUTE";

              break;
            case 3016:
              action = @"COLLAPSE_STEP_DETAILS_WALK";

              break;
            case 3017:
              action = @"EXPAND_STEP_DETAILS_WALK";

              break;
            case 3018:
              action = @"COLLAPSE_STEP_DETAILS_TRANSIT";

              break;
            case 3019:
              action = @"EXPAND_STEP_DETAILS_TRANSIT";

              break;
            case 3020:
              action = @"UNCHECK_BUS";

              break;
            case 3021:
              action = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3022:
              action = @"UNCHECK_COMMUTER_RAIL";

              break;
            case 3023:
              action = @"UNCHECK_FERRY";

              break;
            case 3024:
              action = @"CHECK_BUS";

              break;
            case 3025:
              action = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

              break;
            case 3026:
              action = @"CHECK_COMMUTER_RAIL";

              break;
            case 3027:
              action = @"CHECK_FERRY";

              break;
            case 3028:
              action = @"SELECT_LEAVE_AT";

              break;
            case 3029:
              action = @"SELECT_ARRIVE_BY";

              break;
            case 3030:
              action = @"SELECT_LEAVE_NOW";

              break;
            case 3031:
              action = @"SELECT_DATE_TIME";

              break;
            case 3032:
              action = @"SWITCH_ON_IC_FARES";

              break;
            case 3033:
              action = @"SWITCH_OFF_IC_FARES";

              break;
            case 3034:
              action = @"OPEN_ROUTE_OPTIONS_DATETIME";

              break;
            case 3035:
              action = @"OPEN_ROUTE_OPTIONS_TRANSIT";

              break;
            case 3036:
              action = @"OPEN_ROUTE_OPTIONS_DRIVING";

              break;
            case 3037:
              action = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

              break;
            case 3038:
              action = @"REVEAL_FROM_ROUTING";

              break;
            case 3039:
              action = @"DISPLAY_ROUTES";

              break;
            case 3040:
              action = @"CHECK_RECOMMENDED_ROUTES";

              break;
            case 3041:
              action = @"UNCHECK_RECOMMENDED_ROUTES";

              break;
            case 3042:
              action = @"CHECK_FASTER_TRIPS";

              break;
            case 3043:
              action = @"UNCHECK_FASTER_TRIPS";

              break;
            case 3044:
              action = @"CHECK_FEWER_TRANSFERS";

              break;
            case 3045:
              action = @"UNCHECK_FEWER_TRANSFERS";

              break;
            case 3046:
              action = @"CHECK_LESS_WALKING";

              break;
            case 3047:
              action = @"UNCHECK_LESS_WALKING";

              break;
            case 3048:
              action = @"OPEN_ROUTE_OPTIONS_CYCLING";

              break;
            case 3049:
              action = @"TAP_MORE_ROUTES";

              break;
            case 3050:
              action = @"OPEN_NAV_OVERVIEW";

              break;
            case 3051:
              action = @"RESUME_NAV_MANEUVER_VIEW";

              break;
            case 3052:
              action = @"SELECT_AUDIO_VOLUME_SILENT";

              break;
            case 3053:
              action = @"SELECT_AUDIO_VOLUME_LOW";

              break;
            case 3054:
              action = @"SELECT_AUDIO_VOLUME_NORMAL";

              break;
            case 3055:
              action = @"SELECT_AUDIO_VOLUME_LOUD";

              break;
            case 3056:
              action = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

              break;
            case 3057:
              action = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

              break;
            case 3058:
              action = @"RESUME_PREV_NAV";

              break;
            case 3059:
              action = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

              break;
            case 3060:
              action = @"ACCEPT_REROUTE";

              break;
            case 3061:
              action = @"DISMISS_REROUTE";

              break;
            case 3062:
              action = @"ATTEMPT_END_NAV";

              break;
            case 3063:
              action = @"DISPLAY_BANNER";

              break;
            case 3064:
              action = @"VIEW_BANNER_DETAILS";

              break;
            case 3065:
              action = @"ENTER_GUIDANCE";

              break;
            case 3066:
              action = @"AUTO_ADVANCE_GUIDANCE";

              break;
            case 3067:
              action = @"TAP_OPEN_WALLET";

              break;
            case 3068:
              action = @"SELECT_VOICE_GUIDANCE_ALL";

              break;
            case 3069:
              action = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

              break;
            case 3070:
              action = @"SELECT_VOICE_GUIDANCE_NONE";

              break;
            case 3071:
              action = @"DISPLAY_CARD";

              break;
            case 3072:
              action = @"RENDER_ROUTE";

              break;
            case 3073:
              action = @"DISPLAY_JUNCTION_VIEW";

              break;
            case 3074:
              action = @"SELECT_DEPARTURE";

              break;
            case 3075:
              action = @"DISPLAY_AR_VIEW_RAISE_BANNER";

              break;
            case 3076:
              action = @"DEVICE_RAISE";

              break;
            case 3077:
              action = @"ENTER_AR_NAV_VIEW";

              break;
            case 3078:
              action = @"EXIT_AR_NAV_VIEW";

              break;
            case 3079:
              action = @"AR_CALIBRATION_START";

              break;
            case 3080:
              action = @"AR_CALIBRATION_FAILURE";

              break;
            case 3081:
              action = @"AR_CALIBRATION_SUCCESS";

              break;
            case 3082:
              action = @"DISPLAY_AR_NAV_ARROW";

              break;
            case 3083:
              action = @"DISPLAY_AR_NAV_TURN_AROUND";

              break;
            case 3084:
              action = @"DISPLAY_GO_OUTSIDE_BANNER";

              break;
            case 3085:
              action = @"DISPLAY_AR_DARKNESS_MESSAGE";

              break;
            case 3086:
              action = @"DISPLAY_AR_NAV_ENDPOINT";

              break;
            case 3087:
              action = @"DISPLAY_ADVISORY_BANNER";

              break;
            case 3088:
              action = @"TAP_SHOW_ADVISORY_DETAILS";

              break;
            default:
              if (action != 4001)
              {
                goto LABEL_195;
              }

              action = @"RECENTER_CURRENT_LOCATION";

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
                action = @"INVOKE_SIRI_SNIPPET";
              }

              else
              {
                action = @"INVOKE_SIRI_DISAMBIGUATION";
              }
            }

            else if (action == 8003)
            {
              action = @"SHOW_PLACE_DETAILS";
            }

            else if (action == 8004)
            {
              action = @"ANSWER_REROUTE_SUGGESTION";
            }

            else
            {
              action = @"SUGGEST_NAV_REROUTE";
            }
          }

          else if (action > 8008)
          {
            switch(action)
            {
              case 0x1F49:
                action = @"INVOKE_SIRI";

                break;
              case 0x1F4A:
                action = @"DISPLAY_SIRI_ERROR_MESSAGE";

                break;
              case 0x1F4B:
                action = @"DISPLAY_NO_RESULTS_MESSAGE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action == 8006)
          {
            action = @"GET_NAV_STATUS";
          }

          else if (action == 8007)
          {
            action = @"REPEAT_NAV_STATUS";
          }

          else
          {
            action = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }
        }

        else
        {
          switch(action)
          {
            case 7001:
              action = @"EXPAND_TRANSIT_SYSTEM";

              break;
            case 7002:
              action = @"COLLAPSE_TRANSIT_SYSTEM";

              break;
            case 7003:
              action = @"SHOW_MORE_DEPARTURES";

              break;
            case 7004:
              action = @"VIEW_TRANSIT_LINE";

              break;
            case 7005:
              action = @"CANCEL_VIEW_TRANSIT_LINE";

              break;
            case 7006:
              action = @"TAP_TRANSIT_ATTRIBUTION";

              break;
            case 7007:
              action = @"TAP_TRANSIT_ADVISORY";

              break;
            case 7008:
              action = @"MORE_DETAILS_TRANSIT_ADVISORY";

              break;
            case 7009:
              action = @"SUBSCRIBE_LINE_INCIDENT";

              break;
            case 7010:
              action = @"UNSUBSCRIBE_LINE_INCIDENT";

              break;
            case 7011:
              action = @"TAP_NEAREST_STATION";

              break;
            case 7012:
              action = @"TAP_NEAREST_STOP";

              break;
            case 7013:
              action = @"TAP_CONNECTION";

              break;
            case 7014:
              action = @"GET_TICKETS";

              break;
            case 7015:
              action = @"OPEN_SCHEDULECARD_DATETIME";

              break;
            case 7016:
              action = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

              break;
            case 7017:
              action = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

              break;
            case 7018:
              action = @"VIEW_ON_MAP";

              break;
            case 7019:
              action = @"FORCE_UPDATE_DEPARTURE_INFO";

              break;
            case 7020:
              action = @"TAP_TRANSIT_LINE_INFO";

              break;
            case 7021:
              action = @"TAP_ATTRIBUTION_CELL";

              break;
            case 7022:
              action = @"TAP_NEXT_DEPARTURES";

              break;
            case 7023:
              action = @"VIEW_BANNER";

              break;
            case 7024:
              action = @"GET_SHOWTIMES";

              break;
            case 7025:
              action = @"MAKE_APPOINTMENT";

              break;
            case 7026:
              action = @"RESERVE_PARKING";

              break;
            case 7027:
              action = @"RESERVE_ROOM";

              break;
            case 7028:
              action = @"WAITLIST";

              break;
            case 7029:
              action = @"ORDER_TAKEOUT";

              break;
            case 7030:
              action = @"RESERVE";

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
            action = @"GET_DIRECTIONS";

            break;
          case 6004:
            action = @"TAP_FLYOVER_TOUR";

            break;
          case 6005:
            action = @"REMOVE_PIN";

            break;
          case 6006:
            action = @"TAP_PHOTO";

            break;
          case 6007:
            action = @"TAP_MAPS_VIEW";

            break;
          case 6008:
            action = @"TAP_ADDRESS";

            break;
          case 6009:
            action = @"CALL";

            break;
          case 6010:
            action = @"TAP_URL";

            break;
          case 6011:
            action = @"SHOW_TODAY_HOURS";

            break;
          case 6012:
            action = @"SHOW_ALL_HOURS";

            break;
          case 6013:
            action = @"SHARE";

            break;
          case 6015:
            action = @"ADD_TO_FAVORITES";

            break;
          case 6016:
            action = @"ADD_CONTACT";

            break;
          case 6018:
            action = @"PUNCH_OUT_PHOTO";

            break;
          case 6019:
            action = @"PUNCH_OUT_USEFUL_TO_KNOW";

            break;
          case 6020:
            action = @"PUNCH_OUT_OPEN_APP";

            break;
          case 6021:
            action = @"PUNCH_OUT_SINGLE_REVIEW";

            break;
          case 6022:
            action = @"PUNCH_OUT_CHECK_IN";

            break;
          case 6023:
            action = @"PUNCH_OUT_MORE_INFO";

            break;
          case 6024:
            action = @"PUNCH_OUT_WRITE_REVIEW";

            break;
          case 6025:
            action = @"PUNCH_OUT_ADD_PHOTO";

            break;
          case 6026:
            action = @"TAP_GRID_VIEW";

            break;
          case 6027:
            action = @"EDIT_LOCATION";

            break;
          case 6029:
            action = @"ADD_PHOTO";

            break;
          case 6031:
            action = @"RETAKE";

            break;
          case 6032:
            action = @"ADD_NOTE";

            break;
          case 6033:
            action = @"REMOVE_CAR";

            break;
          case 6034:
            action = @"EDIT_NAME";

            break;
          case 6036:
            action = @"RESERVE_TABLE";

            break;
          case 6037:
            action = @"ADD_TO_QUEUE";

            break;
          case 6038:
            action = @"VIEW_BOOKED_TABLE";

            break;
          case 6039:
            action = @"VIEW_QUEUED_TABLE";

            break;
          case 6040:
            action = @"PUNCH_OUT_THIRD_PARTY_APP";

            break;
          case 6041:
            action = @"PUNCH_OUT_LEGAL_LINK";

            break;
          case 6042:
            action = @"TAP_PLACECARD_HEADER";

            break;
          case 6043:
            action = @"REMOVE_FROM_FAVORITES";

            break;
          case 6044:
            action = @"VIEW_CONTACT";

            break;
          case 6045:
            action = @"CHAT";

            break;
          case 6046:
            action = @"FIND_STORES";

            break;
          case 6047:
            action = @"TAP_PARENT";

            break;
          case 6048:
            action = @"SCROLL_LEFT_PHOTOS";

            break;
          case 6049:
            action = @"SCROLL_RIGHT_PHOTOS";

            break;
          case 6050:
            action = @"PUNCH_OUT";

            break;
          case 6051:
            action = @"TAP_ENTER_MUNIN";

            break;
          case 6052:
            action = @"TAP_RECOMMENDED_DISHES_PHOTO";

            break;
          case 6053:
            action = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

            break;
          case 6054:
            action = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

            break;
          case 6055:
            action = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6056:
            action = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

            break;
          case 6057:
            action = @"SHOW_LINKED_SERVICE_HOURS";

            break;
          case 6058:
            action = @"ENTER_LOOK_AROUND";

            break;
          case 6059:
            action = @"EXIT_LOOK_AROUND";

            break;
          case 6060:
            action = @"TAP_ENTER_LOOK_AROUND_VIEW";

            break;
          case 6061:
            action = @"TAP_ENTER_LOOK_AROUND_PIP";

            break;
          case 6062:
            action = @"EXPAND_LOOK_AROUND_VIEW";

            break;
          case 6063:
            action = @"CLOSE_LOOK_AROUND";

            break;
          case 6064:
            action = @"COLLAPSE_LOOK_AROUND_VIEW";

            break;
          case 6065:
            action = @"TAP_SHOW_ACTIONS";

            break;
          case 6066:
            action = @"TAP_HIDE_LABELS";

            break;
          case 6067:
            action = @"TAP_SHOW_LABELS";

            break;
          case 6068:
            action = @"TAP_SHOW_DETAILS";

            break;
          case 6069:
            action = @"PAN_LOOK_AROUND";

            break;
          case 6070:
            action = @"TAP_LOOK_AROUND_THUMBNAIL";

            break;
          case 6071:
            action = @"TAP_LANDMARK";

            break;
          case 6072:
            action = @"TAP_SCENE";

            break;
          case 6073:
            action = @"SHOW_LINKED_BUSINESS_HOURS";

            break;
          case 6074:
            action = @"TAP_PLACECARD_SHORTCUT";

            break;
          case 6075:
            action = @"SHOW_ALL_LOCATIONS_INSIDE";

            break;
          case 6076:
            action = @"SHOW_ALL_SIMILAR_LOCATIONS";

            break;
          case 6077:
            action = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

            break;
          case 6078:
            action = @"TAP_PARENT_LOCATION";

            break;
          case 6079:
            action = @"TAP_SIMILAR_LOCATION";

            break;
          case 6080:
            action = @"TAP_LOCATION_INSIDE";

            break;
          case 6081:
            action = @"TAP_LOCATION_AT_ADDRESS";

            break;
          case 6082:
            action = @"CLOSE_ROUTE_GENIUS";

            break;
          case 6083:
            action = @"LOAD_WEB_CONTENT";

            break;
          case 6084:
            action = @"SCROLL_FORWARD_WEB_CONTENT";

            break;
          case 6085:
            action = @"SCROLL_BACKWARD_WEB_CONTENT";

            break;
          case 6086:
            action = @"TAP_WEB_CONTENT";

            break;
          case 6087:
            action = @"SHOW_PHOTO_VIEWER";

            break;
          case 6088:
            action = @"SHOW_LAST_PAGE";

            break;
          case 6089:
            action = @"TAP_VIEW_APP";

            break;
          case 6090:
            action = @"TAP_APP_CLIP";

            break;
          case 6091:
            action = @"DEAD_BATTERY";

            break;
          case 6092:
            action = @"DISMISS_LOW_BATTERY_ALERT";

            break;
          case 6093:
            action = @"DISMISS_OUT_OF_RANGE_ALERT";

            break;
          case 6094:
            action = @"FAILED_TO_LOAD_EV_STATUS";

            break;
          case 6095:
            action = @"LOW_BATTERY_ALERT";

            break;
          case 6096:
            action = @"PAUSE_ROUTE";

            break;
          case 6097:
            action = @"TAP_ADD_STOP";

            break;
          case 6098:
            action = @"TAP_CHARGE_POINT";

            break;
          case 6099:
            action = @"TAP_OUT_OF_RANGE_ALERT";

            break;
          case 6100:
            action = @"SCROLL_DOWN_PHOTOS";

            break;
          case 6101:
            action = @"SCROLL_UP_PHOTOS";

            break;
          case 6102:
            action = @"TAP_MORE_PHOTOS";

            break;
          case 6103:
            action = @"TAP_TO_CONFIRM_INCIDENT";

            break;
          case 6104:
            action = @"SHOW_INCIDENT";

            break;
          case 6105:
            action = @"REVEAL_APP_CLIP";

            break;
          case 6106:
            action = @"ORDER_DELIVERY";

            break;
          case 6107:
            action = @"VIEW_MENU";

            break;
          case 6108:
            action = @"TAP_EDIT_STOPS";

            break;
          case 6109:
            action = @"LEARN_MORE_WEB_CONTENT";

            break;
          case 6110:
            action = @"MAKE_APPOINTMENT_WEB_CONTENT";

            break;
          case 6111:
            action = @"REVEAL_SHOWCASE";

            break;
          case 6112:
            action = @"TAP_ACTION_BAR";

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
            action = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

            break;
          case 10102:
            action = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

            break;
          case 10103:
            action = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

            break;
          case 10104:
            action = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

            break;
          case 10105:
            action = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

            break;
          case 10106:
            action = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

            break;
          case 10107:
            action = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

            break;
          case 10108:
            action = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

            break;
          case 10109:
            action = @"RAP_CANCEL";

            break;
          case 10110:
            action = @"RAP_NEXT";

            break;
          case 10111:
            action = @"RAP_BACK";

            break;
          case 10112:
            action = @"RAP_SEND";

            break;
          case 10113:
            action = @"RAP_SKIP";

            break;
          case 10114:
            action = @"RAP_SHOW_MORE";

            break;
          case 10115:
            action = @"RAP_ADD_PHOTO";

            break;
          case 10116:
            action = @"RAP_MAP_INCORRECT";

            break;
          case 10117:
            action = @"RAP_BAD_DIRECTIONS";

            break;
          case 10118:
            action = @"RAP_TRANSIT_INFO_INCORRECT";

            break;
          case 10119:
            action = @"RAP_SATELLITE_IMAGE_PROBLEM";

            break;
          case 10120:
            action = @"RAP_SEARCH_RESULTS_INCORRECT";

            break;
          case 10121:
            action = @"RAP_ADD_A_PLACE";

            break;
          case 10122:
            action = @"RAP_HOME";

            break;
          case 10123:
            action = @"RAP_WORK";

            break;
          case 10124:
            action = @"RAP_OTHER";

            break;
          case 10125:
            action = @"RAP_LOCATION";

            break;
          case 10126:
            action = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

            break;
          case 10127:
            action = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

            break;
          case 10128:
            action = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

            break;
          case 10129:
            action = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

            break;
          case 10130:
            action = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

            break;
          case 10131:
            action = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

            break;
          case 10132:
            action = @"RAP_TRANSIT_DELAY";

            break;
          case 10133:
            action = @"RAP_LOCATION_CLOSED";

            break;
          case 10134:
            action = @"RAP_CLOSED_PERMANENTLY";

            break;
          case 10135:
            action = @"RAP_CLOSED_TEMPORARILY";

            break;
          case 10136:
            action = @"RAP_HOURS_HAVE_CHANGED";

            break;
          case 10137:
            action = @"RAP_SELECT_STATION";

            break;
          case 10138:
            action = @"RAP_SELECT_LINE";

            break;
          case 10139:
            action = @"RAP_SELECT_ACCESS_POINT";

            break;
          case 10140:
            action = @"RAP_SELECT_SEARCH";

            break;
          case 10141:
            action = @"RAP_PAN_MAP";

            break;
          case 10142:
            action = @"RAP_CENTER_MAP_ON_USER";

            break;
          case 10143:
            action = @"RAP_SEARCH_UNEXPECTED";

            break;
          case 10144:
            action = @"RAP_ADD_POI";

            break;
          case 10145:
            action = @"RAP_ADD_STREET_ADDRESS";

            break;
          case 10146:
            action = @"RAP_ADD_OTHER";

            break;
          case 10147:
            action = @"RAP_SELECT_CATEGORY";

            break;
          case 10148:
            action = @"RAP_TAKE_PHOTO";

            break;
          case 10149:
            action = @"RAP_RETAKE_PHOTO";

            break;
          case 10150:
            action = @"RAP_PLACE_DETAILS";

            break;
          case 10151:
            action = @"RAP_SATELLITE_IMAGE_OUTDATED";

            break;
          case 10152:
            action = @"RAP_SATELLITE_IMAGE_QUALITY";

            break;
          case 10153:
            action = @"RAP_SELECT_LABEL";

            break;
          case 10154:
            action = @"RAP_SELECT_ROUTE";

            break;
          case 10155:
            action = @"RAP_CLAIM_BUSINESS";

            break;
          case 10156:
            action = @"RAP_BRAND_DETAILS";

            break;
          case 10157:
            action = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

            break;
          case 10158:
            action = @"RAP_LOOK_AROUND_LABELS_STREET";

            break;
          case 10159:
            action = @"RAP_LOOK_AROUND_BLURRING";

            break;
          case 10160:
            action = @"RAP_LOOK_AROUND_REMOVE_HOME";

            break;
          case 10161:
            action = @"RAP_LOOK_AROUND_LABELS_STORE";

            break;
          case 10162:
            action = @"RAP_LOOK_AROUND_PRIVACY";

            break;
          case 10163:
            action = @"RAP_INCORRECT_HOURS";

            break;
          case 10164:
            action = @"RAP_INCORRECT_ADDRESS";

            break;
          case 10165:
            action = @"RAP_EDIT_PLACE_DETAILS";

            break;
          case 10166:
            action = @"RAP_EDIT_PLACE_NAME";

            break;
          case 10167:
            action = @"RAP_EDIT_ADDRESS";

            break;
          case 10168:
            action = @"RAP_ADD_CATEGORY";

            break;
          case 10169:
            action = @"RAP_REMOVE_CATEGORY";

            break;
          case 10170:
            action = @"RAP_DESELECT_CATEGORY";

            break;
          case 10171:
            action = @"RAP_ADD_HOURS";

            break;
          case 10172:
            action = @"RAP_REMOVE_HOURS";

            break;
          case 10173:
            action = @"RAP_TAP_DAY_OF_WEEK";

            break;
          case 10174:
            action = @"RAP_TAP_24_HOURS_BUTTON";

            break;
          case 10175:
            action = @"RAP_TAP_OPEN_TIME";

            break;
          case 10176:
            action = @"RAP_TAP_CLOSED_TIME";

            break;
          case 10177:
            action = @"RAP_TAP_TEMPORARY_CLOSURE";

            break;
          case 10178:
            action = @"RAP_TAP_PERMANENTLY_CLOSED";

            break;
          case 10179:
            action = @"RAP_EDIT_WEBSITE";

            break;
          case 10180:
            action = @"RAP_EDIT_PHONE_NUMBER";

            break;
          case 10181:
            action = @"RAP_TAP_ACCEPTS_APPLE_PAY";

            break;
          case 10182:
            action = @"RAP_ADD_COMMENTS";

            break;
          case 10183:
            action = @"RAP_EDIT_LOCATION";

            break;
          case 10184:
            action = @"RAP_VIEW_LOCATION";

            break;
          case 10185:
            action = @"RAP_ZOOM_IN";

            break;
          case 10186:
            action = @"RAP_ZOOM_OUT";

            break;
          case 10187:
            action = @"RAP_VIEW_ENTRY_POINTS";

            break;
          case 10188:
            action = @"RAP_EDIT_EXISTING_ENTRY_POINT";

            break;
          case 10189:
            action = @"RAP_ADD_NEW_ENTRY_POINT";

            break;
          case 10190:
            action = @"RAP_REMOVE_ENTRY_POINT";

            break;
          case 10191:
            action = @"RAP_SELECT_ENTRY_POINT_TYPE";

            break;
          default:
            switch(action)
            {
              case 9001:
                action = @"TAP_WIDGET_ITEM";

                break;
              case 9002:
                action = @"DISPLAY_NOTIFICATION";

                break;
              case 9003:
                action = @"TAP_NOTIFICATION";

                break;
              case 9004:
                action = @"EXPAND_NOTIFICATION";

                break;
              case 9005:
                action = @"DISMISS_NOTIFICATION";

                break;
              case 9006:
                action = @"OPEN_SEARCH";

                break;
              case 9007:
                action = @"OPEN_PAN_VIEW";

                break;
              case 9008:
                action = @"PAN_LEFT";

                break;
              case 9009:
                action = @"PAN_UP";

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
                action = @"PAN_DOWN";

                break;
              case 9012:
                action = @"TAP_RECENT_DESTINATIONS";

                break;
              case 9013:
                action = @"OPEN_DESTINATIONS";

                break;
              case 9014:
                action = @"OPEN_FAVORITES";

                break;
              case 9015:
                action = @"VIEW_NAV_OPTIONS";

                break;
              case 9016:
                action = @"START_NAV_NO_GUIDANCE";

                break;
              case 9017:
                action = @"TURN_OFF_GUIDANCE";

                break;
              case 9018:
                action = @"TURN_ON_GUIDANCE";

                break;
              case 9019:
                action = @"OPEN_KEYBOARD";

                break;
              case 9020:
                action = @"SHARE_DESTINATION";

                break;
              case 9021:
                action = @"START_NAV_AUTOMATED";

                break;
              case 9022:
                action = @"SHARE_ETA";

                break;
              case 9023:
                action = @"SELECT_GROUP";

                break;
              case 9024:
                action = @"DESELECT_GROUP";

                break;
              case 9025:
                action = @"SELECT_CONTACT";

                break;
              case 9026:
                action = @"DESELECT_CONTACT";

                break;
              case 9027:
                action = @"TAP_VIEW_CONTACTS";

                break;
              case 9028:
                action = @"STOP_RECEIVING_ETA";

                break;
              case 9029:
                action = @"DISPLAY_ANNOUNCEMENT";

                break;
              case 9030:
                action = @"TAP_ANNOUNCEMENT";

                break;
              case 9031:
                action = @"DISPLAY_CYCLING_NOTIFICATION";

                break;
              case 9032:
                action = @"TAP_CYCLING_NOTIFICATION";

                break;
              case 9033:
                action = @"SHARE_CYCLING_ETA";

                break;
              case 9034:
                action = @"MANAGE_NOTIFICATIONS";

                break;
              case 9035:
                action = @"PUNCH_OUT_PUBLISHER_REVIEW";

                break;
              case 9036:
                action = @"SCROLL_FORWARD";

                break;
              case 9037:
                action = @"SCROLL_BACKWARD";

                break;
              case 9038:
                action = @"SHOW_ALL_CURATED_COLLECTIONS";

                break;
              case 9039:
                action = @"TAP_LESS";

                break;
              case 9040:
                action = @"TAP_MORE";

                break;
              case 9101:
                action = @"DISPLAY_ADD_HOME_AND_WORK";

                break;
              case 9102:
                action = @"TAP_ADD_HOME_AND_WORK";

                break;
              case 9103:
                action = @"DISPLAY_ALLOW_FREQUENTS";

                break;
              case 9104:
                action = @"TAP_ALLOW_FREQUENTS";

                break;
              case 9105:
                action = @"DISPLAY_ALLOW_LOCATION";

                break;
              case 9106:
                action = @"TAP_ALLOW_LOCATION";

                break;
              default:
                switch(action)
                {
                  case 11001:
                    action = @"EXIT_MAPS_LOWER_WRIST";

                    break;
                  case 11002:
                    action = @"TASK_READY";

                    break;
                  case 11003:
                    action = @"TAP_SEARCH";

                    break;
                  case 11004:
                    action = @"TAP_MY_LOCATION";

                    break;
                  case 11005:
                    action = @"SHOW_NEARBY";

                    break;
                  case 11006:
                    action = @"TAP_NEARBY";

                    break;
                  case 11007:
                    action = @"TAP_PROACTIVE";

                    break;
                  case 11008:
                    action = @"FORCE_PRESS";

                    break;
                  case 11009:
                    action = @"TAP_CONTACTS";

                    break;
                  case 11010:
                    action = @"TAP_TRANSIT";

                    break;
                  case 11011:
                    action = @"TAP_DICTATION";

                    break;
                  case 11012:
                    action = @"GET_DIRECTIONS_DRIVING";

                    break;
                  case 11013:
                    action = @"GET_DIRECTIONS_WALKING";

                    break;
                  case 11014:
                    action = @"GET_DIRECTIONS_TRANSIT";

                    break;
                  case 11015:
                    action = @"OPEN_STANDARD_MAP";

                    break;
                  case 11016:
                    action = @"OPEN_TRANSIT_MAP";

                    break;
                  case 11017:
                    action = @"START_NAV_AUTO";

                    break;
                  case 11018:
                    action = @"TAP_RECENT";

                    break;
                  case 11019:
                    action = @"TAP_FAVORITE";

                    break;
                  case 11020:
                    action = @"TAP_SCRIBBLE";

                    break;
                  case 11021:
                    action = @"TAP_VIEW_MAP";

                    break;
                  case 11022:
                    action = @"TAP_VIEW_TBT";

                    break;
                  case 11023:
                    action = @"VIEW_ROUTE_INFO";

                    break;
                  case 11024:
                    action = @"NAV_UNMUTE";

                    break;
                  case 11025:
                    action = @"NAV_MUTE";

                    break;
                  case 11026:
                    action = @"GET_DIRECTIONS_CYCLING";

                    break;
                  case 11027:
                    action = @"TAP_SEARCH_HOME";

                    break;
                  case 11028:
                    action = @"ROUTE_PAUSED_ON_WATCH";

                    break;
                  case 11029:
                    action = @"NEXT_STOP_TAPPED_ON_WATCH";

                    break;
                  default:
                    goto LABEL_195;
                }

                break;
            }

            break;
        }

        return action;
      }

      if (action > 16000)
      {
        switch(action)
        {
          case 17001:
            action = @"START_DRAG";

            break;
          case 17002:
            action = @"CANCEL_DRAG";

            break;
          case 17003:
            action = @"COMPLETE_DRAG";

            break;
          case 17004:
            action = @"START_DROP";

            break;
          case 17005:
            action = @"CANCEL_DROP";

            break;
          case 17006:
            action = @"COMPLETE_DROP";

            break;
          case 17007:
            action = @"ANNOTATION_SELECT";

            break;
          case 17008:
            action = @"ANNOTATION_SELECT_AUTO";

            break;
          case 17009:
            action = @"ANNOTATION_SELECT_LIST";

            break;
          case 17010:
            action = @"BROWSE_TOP_CATEGORY_DISPLAYED";

            break;
          case 17011:
            action = @"CALLOUT_FLYOVER_TOUR";

            break;
          case 17012:
            action = @"CALLOUT_INFO";

            break;
          case 17013:
            action = @"CALLOUT_NAV_TRANSIT";

            break;
          case 17014:
            action = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

            break;
          case 17015:
            action = @"CALLOUT_VIEW_TRANSIT_LINE";

            break;
          case 17016:
            action = @"DIRECTIONS_SELECT";

            break;
          case 17017:
            action = @"DIRECTIONS_TRANSIT_CUSTOM";

            break;
          case 17018:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

            break;
          case 17019:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

            break;
          case 17020:
            action = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

            break;
          case 17021:
            action = @"DIRECTIONS_TRANSIT_LATER";

            break;
          case 17022:
            action = @"DIRECTIONS_TRANSIT_NOW";

            break;
          case 17023:
            action = @"FLYOVER_NOTIFICATION_DISMISS";

            break;
          case 17024:
            action = @"FLYOVER_NOTIFICATION_START";

            break;
          case 17025:
            action = @"FLYOVER_TOUR_COMPLETED";

            break;
          case 17026:
            action = @"FLYOVER_TOUR_END";

            break;
          case 17027:
            action = @"FLYOVER_TOUR_NOTIFICATION";

            break;
          case 17028:
            action = @"FLYOVER_TOUR_START";

            break;
          case 17029:
            action = @"INFO_BOOKMARKS";

            break;
          case 17030:
            action = @"INFO_CARD_DETACHED";

            break;
          case 17031:
            action = @"INFO_CONTACTS";

            break;
          case 17032:
            action = @"INFO_DIRECTIONS";

            break;
          case 17033:
            action = @"INFO_DIRECTIONS_FROM";

            break;
          case 17034:
            action = @"INFO_DIRECTIONS_TO";

            break;
          case 17035:
            action = @"INFO_DISMISS";

            break;
          case 17036:
            action = @"INFO_INFO";

            break;
          case 17037:
            action = @"INFO_PHOTOS";

            break;
          case 17038:
            action = @"INFO_REVIEWS";

            break;
          case 17039:
            action = @"INFO_SHARE";

            break;
          case 17040:
            action = @"INFO_SHARE_AIRDROP";

            break;
          case 17041:
            action = @"INFO_SHARE_FACEBOOK";

            break;
          case 17042:
            action = @"INFO_SHARE_MAIL";

            break;
          case 17043:
            action = @"INFO_SHARE_MESSAGE";

            break;
          case 17044:
            action = @"INFO_SHARE_TENCENTWEIBO";

            break;
          case 17045:
            action = @"INFO_SHARE_WEIBO";

            break;
          case 17046:
            action = @"INFO_YELP";

            break;
          case 17047:
            action = @"MAPS_APP_LAUNCH";

            break;
          case 17048:
            action = @"MAP_3D_OFF";

            break;
          case 17049:
            action = @"MAP_3D_ON";

            break;
          case 17050:
            action = @"MAP_OPTIONS_DROP_PIN";

            break;
          case 17051:
            action = @"MAP_OPTIONS_HYBRID";

            break;
          case 17052:
            action = @"MAP_OPTIONS_PRINT";

            break;
          case 17053:
            action = @"MAP_OPTIONS_REMOVE_PIN";

            break;
          case 17054:
            action = @"MAP_OPTIONS_SATELLITE";

            break;
          case 17055:
            action = @"MAP_OPTIONS_STANDARD";

            break;
          case 17056:
            action = @"MAP_OPTIONS_TRAFFIC_HIDE";

            break;
          case 17057:
            action = @"MAP_OPTIONS_TRAFFIC_SHOW";

            break;
          case 17058:
            action = @"MAP_OPTIONS_TRANSIT";

            break;
          case 17059:
            action = @"MAP_TAP_FLYOVER_CITY";

            break;
          case 17060:
            action = @"MAP_TAP_LINE";

            break;
          case 17061:
            action = @"MAP_TAP_POI_TRANSIT";

            break;
          case 17062:
            action = @"MAP_TAP_TRAFFIC_INCIDENT";

            break;
          case 17063:
            action = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

            break;
          case 17064:
            action = @"MAP_USER_TRACKING_OFF";

            break;
          case 17065:
            action = @"MAP_USER_TRACKING_ON";

            break;
          case 17066:
            action = @"MAP_USER_TRACKING_WITH_HEADING_ON";

            break;
          case 17067:
            action = @"NAV_CLEAR";

            break;
          case 17068:
            action = @"NAV_LIST";

            break;
          case 17069:
            action = @"NAV_ROUTE_STEP_NEXT";

            break;
          case 17070:
            action = @"NAV_ROUTE_STEP_PREV";

            break;
          case 17071:
            action = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

            break;
          case 17072:
            action = @"ORB_DISPLAY_MENU";

            break;
          case 17073:
            action = @"ORB_MENU_CALL";

            break;
          case 17074:
            action = @"ORB_MENU_DIRECTIONS";

            break;
          case 17075:
            action = @"ORB_MENU_DISMISS";

            break;
          case 17076:
            action = @"ORB_MENU_SHARE";

            break;
          case 17077:
            action = @"ORB_MENU_SHOW_PLACECARD";

            break;
          case 17078:
            action = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

            break;
          case 17079:
            action = @"ORB_MENU_URL";

            break;
          case 17080:
            action = @"ORB_PRESS";

            break;
          case 17081:
            action = @"ORB_SPRINGBOARD_MARK_LOCATION";

            break;
          case 17082:
            action = @"ORB_SPRINGBOARD_SEARCH";

            break;
          case 17083:
            action = @"ORB_SPRINGBOARD_SHARE_LOCATION";

            break;
          case 17084:
            action = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

            break;
          case 17085:
            action = @"RAP_PERMISSION_CANCEL";

            break;
          case 17086:
            action = @"RAP_PERMISSION_EMAIL_NA";

            break;
          case 17087:
            action = @"RAP_PERMISSION_EMAIL_OK";

            break;
          case 17088:
            action = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

            break;
          case 17089:
            action = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

            break;
          case 17090:
            action = @"RAP_PERMISSION_OK";

            break;
          case 17091:
            action = @"SEARCH_BEGIN";

            break;
          case 17092:
            action = @"SEARCH_CANCEL";

            break;
          case 17093:
            action = @"SEARCH_SELECT";

            break;
          case 17094:
            action = @"TRANSIT_LINE_SELECTION_DISMISS";

            break;
          case 17095:
            action = @"TRANSIT_LINE_SELECTION_VIEW";

            break;
          case 17096:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

            break;
          case 17097:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

            break;
          case 17098:
            action = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

            break;
          case 17099:
            action = @"UNKNOWN_ACTION";

            break;
          case 17100:
            action = @"INFO_SHARE_TWITTER";

            break;
          case 17101:
            action = @"INFO_TAP_POPULAR_APP_NEARBY";

            break;
          case 17102:
            action = @"INFO_DIRECTIONS_WALK";

            break;
          case 17103:
            action = @"INFO_DIRECTIONS_TRANSIT";

            break;
          case 17104:
            action = @"INFO_DIRECTIONS_DRIVE";

            break;
          case 17105:
            action = @"INFO_REPORT_A_PROBLEM";

            break;
          case 17106:
            action = @"CALLOUT_NAV";

            break;
          case 17107:
            action = @"RAP_PERMISSION_EMAIL_CANCEL";

            break;
          case 17108:
            action = @"MAP_TAP_POI";

            break;
          default:
            if (action == 16001)
            {
              action = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (action != 90010)
              {
                goto LABEL_195;
              }

              action = @"PAN_RIGHT";
            }

            break;
        }

        return action;
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
                action = @"ADD_SPECIAL_REQUEST";

                break;
              case 0x2EE9:
                action = @"CHANGE_RESERVATION";

                break;
              case 0x2EEA:
                action = @"LEARN_MORE";

                break;
              default:
                goto LABEL_195;
            }
          }

          else if (action > 13002)
          {
            if (action == 13003)
            {
              action = @"SELECT_LABEL";
            }

            else
            {
              action = @"DELETE_ADDRESS";
            }
          }

          else if (action == 13001)
          {
            action = @"SELECT_ADDRESS";
          }

          else
          {
            action = @"ADD_ADDRESS";
          }
        }

        else if (action <= 12003)
        {
          if (action == 12001)
          {
            action = @"VIEW_MORE_OPTIONS";
          }

          else if (action == 12002)
          {
            action = @"SELECT_TIME";
          }

          else
          {
            action = @"SHOW_NEXT_AVAILABLE";
          }
        }

        else if (action > 12005)
        {
          if (action == 12006)
          {
            action = @"EDIT_BOOKING";
          }

          else
          {
            action = @"EDIT_PHONE";
          }
        }

        else if (action == 12004)
        {
          action = @"DECREASE_TABLE_SIZE";
        }

        else
        {
          action = @"INCREASE_TABLE_SIZE";
        }
      }

      else if (action <= 14004)
      {
        if (action <= 14000)
        {
          switch(action)
          {
            case 0x32CD:
              action = @"EDIT_ITEMS";

              break;
            case 0x32CE:
              action = @"RAP_FAVORITES";

              break;
            case 0x32CF:
              action = @"SORT_LIST_ITEM";

              break;
            default:
              goto LABEL_195;
          }
        }

        else if (action > 14002)
        {
          if (action == 14003)
          {
            action = @"BOOK_RIDE";
          }

          else
          {
            action = @"REQUEST_RIDE";
          }
        }

        else if (action == 14001)
        {
          action = @"VIEW_APP";
        }

        else
        {
          action = @"ENABLE";
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
              action = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              action = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (action == 14005)
          {
            action = @"CONTACT_DRIVER";
          }

          else
          {
            action = @"CHANGE_PAYMENT";
          }

          return action;
        }

        if (action > 15001)
        {
          if (action == 15002)
          {
            action = @"ORB_POP";
          }

          else
          {
            if (action != 15003)
            {
              goto LABEL_195;
            }

            action = @"ORB_DISMISS";
          }
        }

        else
        {
          if (action != 14009)
          {
            if (action == 15001)
            {
              action = @"ORB_PEEK";

              return action;
            }

LABEL_195:
            action = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_196:

            return action;
          }

          action = @"SUBMIT_TRIP_FEEDBACK";
        }
      }
    }
  }

  else
  {
    action = 0;
  }

  return action;
}

- (id)_whiteListedPlaceCardActionAsString:(int)string
{
  v4 = (string - 6003) > 0x12 || ((1 << (string - 115)) & 0x607F1) == 0;
  if (v4 && string != 3001 && string != 21)
  {
    action = 0;

    return action;
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
          action = @"TAP_DIRECTIONS";
        }

        else if (action == 1502)
        {
          action = @"TAP_PROXIMITY_FIND";
        }

        else
        {
          action = @"TAP_PRECISION_FIND";
        }
      }

      else
      {
        switch(action)
        {
          case 2001:
            action = @"TAP_SEARCH_FIELD";

            return action;
          case 2002:
            action = @"CLEAR_SEARCH";

            return action;
          case 2003:
            action = @"CANCEL_SEARCH";

            return action;
          case 2004:
            action = @"TAP_BROWSE_TOP_CATEGORY";

            return action;
          case 2005:
            action = @"TAP_BROWSE_SUB_CATEGORY";

            return action;
          case 2006:
            action = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";

            return action;
          case 2007:
            action = @"TAP_LIST_ITEM";

            return action;
          case 2008:
            action = @"SHARE_LIST_ITEM";

            return action;
          case 2009:
            action = @"DELETE_LIST_ITEM";

            return action;
          case 2010:
            action = @"EDIT_LIST_ITEM";

            return action;
          case 2011:
            action = @"REFRESH_SEARCH";

            return action;
          case 2012:
            action = @"REVEAL_LIST_ITEM_ACTIONS";

            return action;
          case 2013:
            action = @"HIDE_LIST_ITEM_ACTIONS";

            return action;
          case 2014:
            action = @"TAP_SEARCH_BUTTON";

            return action;
          case 2015:
            action = @"SHOW_SEARCH_RESULTS";

            return action;
          case 2016:
            action = @"SHOW_REFRESH_SEARCH";

            return action;
          case 2017:
            action = @"PASTE_TEXT";

            return action;
          case 2018:
            action = @"TAP_LIST_SUB_ITEM";

            return action;
          case 2019:
            action = @"DISPLAY_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2020:
            action = @"TAP_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2021:
            action = @"CLOSE_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2022:
            action = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2023:
            action = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";

            return action;
          case 2024:
            action = @"RETAINED_QUERY";

            return action;
          case 2025:
            action = @"TAP_RECENT_AC_SUGGESTION";

            return action;
          case 2026:
            action = @"CLEAR_RECENT_AC_SUGGESTION";

            return action;
          case 2027:
            action = @"DELETE_RECENT_AC_SUGGESTION";

            return action;
          case 2028:
          case 2029:
            goto LABEL_200;
          case 2030:
            action = @"TAP_BROWSE_NEARBY_CATEGORY";

            return action;
          case 2031:
            action = @"TAP_SUBACTION";

            return action;
          case 2032:
            action = @"TAP_QUERY_BUILDING_ARROW";

            return action;
          case 2033:
            action = @"CLICK_ON_EDIT_SEARCH";

            return action;
          case 2034:
            action = @"REMOVE_CLIENT_AC_SUGGESTION";

            return action;
          case 2035:
            action = @"SHARE_CLIENT_AC_SUGGESTION";

            return action;
          case 2036:
            action = @"TAP_ON_MORE_RESULTS";

            return action;
          case 2037:
            action = @"SHARE_ITEM";

            return action;
          case 2038:
            action = @"HIDE_ITEM";

            return action;
          case 2039:
            action = @"TAP_SUGGESTED_ITEM";

            return action;
          case 2040:
            action = @"SHARE_SUGGESTED_ITEM";

            return action;
          case 2041:
            action = @"HIDE_SUGGESTED_ITEM";

            return action;
          case 2042:
            action = @"ADD_HOME_FAVORITE";

            return action;
          case 2043:
            action = @"ADD_WORK_FAVORITE";

            return action;
          case 2044:
            action = @"ADD_FAVORITE";

            return action;
          case 2045:
            action = @"VIEW_FAVORITES_LIST";

            return action;
          case 2046:
            action = @"TAP_HOME_FAVORITE";

            return action;
          case 2047:
            action = @"TAP_WORK_FAVORITE";

            return action;
          case 2048:
            action = @"TAP_CAR_FAVORITE";

            return action;
          case 2049:
            action = @"TAP_FAVORITE_ITEM";

            return action;
          case 2050:
            action = @"CREATE_HOME_FAVORITE";

            return action;
          case 2051:
            action = @"CREATE_WORK_FAVORITE";

            return action;
          case 2052:
            action = @"CREATE_FAVORITE";

            return action;
          case 2053:
            action = @"SUBMIT_FAVORITE_EDIT";

            return action;
          case 2054:
            action = @"ADD_RECOMMENDED_FAVORITE";

            return action;
          case 2055:
            action = @"EDIT_FAVORITE";

            return action;
          case 2056:
            action = @"REMOVE_FAVORITE";

            return action;
          case 2057:
            action = @"SHARE_FAVORITE";

            return action;
          case 2058:
            action = @"EDIT_FAVORITES";

            return action;
          case 2059:
            action = @"ADD_FAVORITE_PLACE";

            return action;
          case 2060:
            action = @"REMOVE_FAVORITE_PLACE";

            return action;
          case 2061:
            action = @"CHANGE_HOME_ADDRESS";

            return action;
          case 2062:
            action = @"CHANGE_WORK_ADDRESS";

            return action;
          case 2063:
            action = @"REFINE_LOCATION";

            return action;
          case 2064:
            action = @"TAP_RECENTLY_VIEWED_ITEM";

            return action;
          case 2065:
            action = @"SHOW_COLLECTION_LIST";

            return action;
          case 2066:
            action = @"SHOW_FAVORITES_COLLECTION";

            return action;
          case 2067:
            action = @"SHOW_COLLECTION";

            return action;
          case 2068:
            action = @"TAP_COLLECTION_ITEM";

            return action;
          case 2069:
            action = @"SHARE_COLLECTION_ITEM";

            return action;
          case 2070:
            action = @"REMOVE_COLLECTION_ITEM";

            return action;
          case 2071:
            action = @"SAVE_SHARED_COLLECTION";

            return action;
          case 2072:
            action = @"CREATE_NEW_COLLECTION";

            return action;
          case 2073:
            action = @"SAVE_TO_COLLECTION";

            return action;
          case 2074:
            action = @"EDIT_PHOTO";

            return action;
          case 2075:
            action = @"SORT_BY_NAME";

            return action;
          case 2076:
            action = @"SORT_BY_DISTANCE";

            return action;
          case 2077:
            action = @"SORT_BY_RECENT";

            return action;
          case 2078:
            action = @"AUTO_SHARE_ETA";

            return action;
          case 2079:
            action = @"CANCEL_AUTO_SHARE_ETA";

            return action;
          case 2080:
            action = @"MAP_SEARCH";

            return action;
          case 2081:
            action = @"DELETE_COLLECTION";

            return action;
          case 2082:
            action = @"SHARE_COLLECTION";

            return action;
          case 2083:
            action = @"SHOW_TRANSIT_LINES_COLLECTION";

            return action;
          case 2084:
            action = @"SHOW_MY_PLACES";

            return action;
          case 2085:
            action = @"SHOW_ALL_PLACES";

            return action;
          case 2086:
            action = @"TAP_RECENT_QUERY";

            return action;
          case 2087:
            action = @"TAP_QUERY_SUGGESTION";

            return action;
          case 2088:
            action = @"DELETE_CURATED_COLLECTION";

            return action;
          case 2089:
            action = @"FOLLOW";

            return action;
          case 2090:
            action = @"PUNCH_IN";

            return action;
          case 2091:
            action = @"SAVE_CURATED_COLLECTION";

            return action;
          case 2092:
            action = @"SCROLL_LEFT_COLLECTIONS";

            return action;
          case 2093:
            action = @"SCROLL_RIGHT_COLLECTIONS";

            return action;
          case 2094:
            action = @"SEE_ALL_CURATED_COLLECTION";

            return action;
          case 2095:
            action = @"SEE_ALL_PUBLISHERS";

            return action;
          case 2096:
            action = @"SHARE_CURATED_COLLECTION";

            return action;
          case 2097:
            action = @"SHARE_PUBLISHER";

            return action;
          case 2098:
            action = @"SHOW_MORE_COLLECTION";

            return action;
          case 2099:
            action = @"TAP_CURATED_COLLECTION";

            return action;
          case 2100:
            action = @"TAP_FEATURED_COLLECTIONS";

            return action;
          case 2101:
            action = @"TAP_LOCATION";

            return action;
          case 2102:
            action = @"TAP_PUBLISHER";

            return action;
          case 2103:
            action = @"TAP_PUBLISHER_APP";

            return action;
          case 2104:
            action = @"TAP_PUBLISHER_COLLECTIONS";

            return action;
          case 2105:
            action = @"UNFOLLOW";

            return action;
          case 2106:
            action = @"CHANGE_SCHOOL_ADDRESS";

            return action;
          case 2107:
            action = @"ADD_VEHICLE";

            return action;
          case 2108:
            action = @"DISPLAY_VIRTUAL_GARAGE";

            return action;
          case 2109:
            action = @"ENTER_VIRTUAL_GARAGE";

            return action;
          case 2110:
            action = @"PUNCH_OUT_MANUFACTURER_APP";

            return action;
          case 2111:
            action = @"REMOVE_LICENSE_PLATE";

            return action;
          case 2112:
            action = @"REMOVE_VEHICLE";

            return action;
          case 2113:
            action = @"SELECT_VEHICLE";

            return action;
          case 2114:
            action = @"SUBMIT_LICENSE_PLATE";

            return action;
          case 2115:
            action = @"TAP_ADD_LICENSE_PLATE";

            return action;
          case 2116:
            action = @"TAP_ADD_NEW_CAR";

            return action;
          case 2117:
            action = @"TAP_BANNER";

            return action;
          case 2118:
            action = @"TAP_CONNECT";

            return action;
          case 2119:
            action = @"TAP_CONTINUE";

            return action;
          case 2120:
            action = @"TAP_EDIT";

            return action;
          case 2121:
            action = @"TAP_NAME";

            return action;
          case 2122:
            action = @"TAP_NOT_NOW";

            return action;
          case 2123:
            action = @"TAP_OTHER_VEHICLE";

            return action;
          case 2124:
            action = @"TAP_REMOVE_LICENSE_PLATE";

            return action;
          case 2125:
            action = @"TAP_UPDATE_PLATE_NUMBER";

            return action;
          case 2126:
            action = @"TAP_VEHICLE";

            return action;
          case 2127:
            action = @"TAP_VEHICLE_NAME";

            return action;
          case 2128:
            action = @"UPDATE_NAME";

            return action;
          case 2129:
            action = @"DONE_TAKING_PHOTO";

            return action;
          case 2130:
            action = @"ENABLE_SHOW_PHOTO_NAME";

            return action;
          case 2131:
            action = @"SUBMIT_PHOTO";

            return action;
          case 2132:
            action = @"USE_PHOTO";

            return action;
          case 2133:
            action = @"ADD_RECOMMENDATION_TO_MAPS";

            return action;
          case 2134:
            action = @"CANCEL_PHOTO_SUBMISSION";

            return action;
          case 2135:
            action = @"CLOSE_RECOMMENDATION_CARD";

            return action;
          case 2136:
            action = @"EDIT_RATING";

            return action;
          case 2137:
            action = @"PROMPTED_TO_ADD_PHOTO";

            return action;
          case 2138:
            action = @"PROMPTED_TO_ADD_RATING";

            return action;
          case 2139:
            action = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";

            return action;
          case 2140:
            action = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";

            return action;
          case 2141:
            action = @"RETAKE_PHOTO";

            return action;
          case 2142:
            action = @"REVEAL_RECOMMENDATION_CARD";

            return action;
          case 2143:
            action = @"SUBMIT_NEGATIVE_RATING";

            return action;
          case 2144:
            action = @"SUBMIT_POSITIVE_RATING";

            return action;
          case 2145:
            action = @"TAP_CHOOSING_PHOTO";

            return action;
          case 2146:
            action = @"TAP_TAKE_NEW_PHOTO";

            return action;
          case 2147:
            action = @"TAP_TO_ADD_PHOTO";

            return action;
          case 2148:
            action = @"CANCEL_INCIDENT_REPORT";

            return action;
          case 2149:
            action = @"INCIDENT_REPORT_SUBMITTED";

            return action;
          case 2150:
            action = @"REPORTED_INCIDENT_NOT_RECEIVED";

            return action;
          case 2151:
            action = @"REPORTED_INCIDENT_RECEIVED";

            return action;
          case 2152:
            action = @"REPORT_INCIDENT";

            return action;
          case 2153:
            action = @"SELECT_INCIDENT_TYPE";

            return action;
          case 2154:
            action = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";

            return action;
          case 2155:
            action = @"TAP_TO_START_REPORT_INCIDENT";

            return action;
          case 2156:
            action = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";

            return action;
          case 2157:
            action = @"ATTEMPT_VLF_CORRECTION";

            return action;
          case 2158:
            action = @"DISMISS_VLF_PROMPT";

            return action;
          case 2159:
            action = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";

            return action;
          case 2160:
            action = @"VLF_CORRECTION_FAILED";

            return action;
          case 2161:
            action = @"VLF_CORRECTION_SUCCESSFUL";

            return action;
          case 2162:
            action = @"ENABLE_WIDGET_SUGGESTIONS";

            return action;
          case 2163:
            action = @"DISPLAY_CZ_ADVISORY";

            return action;
          case 2164:
            action = @"PUNCH_OUT_URL_PAY";

            return action;
          case 2165:
            action = @"TAP_SHOW_CZ_ADVISORY_DETAILS";

            return action;
          case 2166:
            action = @"DELETE_ITEM";

            return action;
          case 2167:
            action = @"CANCEL_REMOVE";

            return action;
          case 2168:
            action = @"DELETE_SUGGESTION";

            return action;
          case 2169:
            action = @"ADD_SCHOOL_FAVORITE";

            return action;
          case 2170:
            action = @"GO_TO_WEBSITE";

            return action;
          case 2171:
            action = @"TRY_AGAIN";

            return action;
          case 2172:
            action = @"CHECK_AUTO_RECORD_WORKOUT";

            return action;
          case 2173:
            action = @"CHECK_EBIKE";

            return action;
          case 2174:
            action = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";

            return action;
          case 2175:
            action = @"DISPLAY_CYCLING_DEFAULT_OPTION";

            return action;
          case 2176:
            action = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";

            return action;
          case 2177:
            action = @"DISPLAY_CYCLING_STAIRS_ADVISORY";

            return action;
          case 2178:
            action = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";

            return action;
          case 2179:
            action = @"TAP_AUTOMATIC_WORKOUT_OPTION";

            return action;
          case 2180:
            action = @"TAP_CYCLING_DEFAULT_OPTION";

            return action;
          case 2181:
            action = @"TAP_CYCLING_NO_BIKE_ADVISORY";

            return action;
          case 2182:
            action = @"TAP_CYCLING_STAIRS_ADVISORY";

            return action;
          case 2183:
            action = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";

            return action;
          case 2184:
            action = @"UNCHECK_AUTO_RECORD_WORKOUT";

            return action;
          case 2185:
            action = @"UNCHECK_EBIKE";

            return action;
          case 2186:
            action = @"DISPLAY_LICENSE_PLATE_SUGGESTION";

            return action;
          case 2187:
            action = @"DISPLAY_LPR_ADVISORY";

            return action;
          case 2188:
            action = @"TAP_SHOW_LPR_ADVISORY_DETAILS";

            return action;
          case 2189:
            action = @"CREATE_WIDGET";

            return action;
          case 2190:
            action = @"REVEAL_WIDGET_TRAY";

            return action;
          case 2191:
            action = @"LPR_ERROR_CODE";

            return action;
          case 2192:
            action = @"TAP_SEE_ALL_RECENTLY_VIEWED";

            return action;
          case 2193:
            action = @"TAP_CLEAR_RECENTLY_VIEWED";

            return action;
          case 2194:
            action = @"LPR_HARD_STOP";

            return action;
          case 2195:
            action = @"TAP_PUBLISHER_SUBACTION";

            return action;
          case 2196:
            action = @"CARPLAY_DISPLAY_ACTIVATED";

            return action;
          case 2197:
            action = @"CARPLAY_DISPLAY_DEACTIVATED";

            return action;
          case 2198:
            action = @"TAP_FEATURED_COLLECTION";

            return action;
          case 2199:
            action = @"SCROLL_FEATURED_COLLECTION_FORWARD";

            return action;
          case 2200:
            action = @"SCROLL_FEATURED_COLLECTION_BACKWARD";

            return action;
          default:
            if (action == 1504)
            {
              action = @"TAP_ENABLE_LOST_MODE";
            }

            else
            {
              if (action != 1505)
              {
                goto LABEL_200;
              }

              action = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
            }

            break;
        }
      }
    }

    else
    {
      action = @"UI_ACTION_UNKNOWN";
      switch(action)
      {
        case 0:
          goto LABEL_201;
        case 1:
          action = @"PULL_UP";

          break;
        case 2:
          action = @"PULL_DOWN";

          break;
        case 3:
          action = @"TAP";

          break;
        case 4:
          action = @"CLOSE";

          break;
        case 5:
          action = @"SWIPE_PREV";

          break;
        case 6:
          action = @"SWIPE_NEXT";

          break;
        case 7:
          action = @"SCROLL_UP";

          break;
        case 8:
          action = @"SCROLL_DOWN";

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
          action = @"SHOW_MORE";

          break;
        case 11:
          action = @"SHOW_LESS";

          break;
        case 12:
          action = @"SWIPE_LEFT";

          break;
        case 13:
          action = @"SWIPE_RIGHT";

          break;
        case 14:
          action = @"MINIMIZE";

          break;
        case 15:
          action = @"TAP_PREV";

          break;
        case 16:
          action = @"TAP_NEXT";

          break;
        case 17:
          action = @"SUBMIT";

          break;
        case 18:
          action = @"CANCEL";

          break;
        case 19:
          action = @"ENTER_MAPS";

          break;
        case 20:
          action = @"EXIT_MAPS";

          break;
        case 21:
          action = @"REVEAL";

          break;
        case 22:
          action = @"OPEN_NEW_TAB";

          break;
        case 25:
          action = @"BACK";

          break;
        case 26:
          action = @"ACTIVATE";

          break;
        case 27:
          action = @"DEACTIVATE";

          break;
        case 28:
          action = @"AGREE";

          break;
        case 29:
          action = @"DISAGREE";

          break;
        case 30:
          action = @"SKIP_ANSWER";

          break;
        case 31:
          action = @"EXPAND";

          break;
        case 32:
          action = @"COLLAPSE";

          break;
        case 33:
          action = @"ENTER";

          break;
        case 34:
          action = @"EXIT";

          break;
        case 35:
          action = @"SCROLL_UP_INDEX_BAR";

          break;
        case 36:
          action = @"SCROLL_DOWN_INDEX_BAR";

          break;
        case 37:
          action = @"TOGGLE_ON";

          break;
        case 38:
          action = @"TOGGLE_OFF";

          break;
        case 39:
          action = @"LONG_PRESS";

          break;
        case 40:
          action = @"CLICK";

          break;
        case 41:
          action = @"TAP_DONE";

          break;
        case 42:
          action = @"TAP_CLOSE";

          break;
        case 43:
          action = @"SCROLL_LEFT";

          break;
        case 44:
          action = @"SCROLL_RIGHT";

          break;
        case 45:
          action = @"DISPLAY";

          break;
        case 46:
          action = @"OPEN_IN_APP";

          break;
        case 47:
          action = @"CONCEAL";

          break;
        case 48:
          action = @"TAP_DELETE";

          break;
        case 49:
          action = @"TAP_FILTER";

          break;
        case 50:
          action = @"TAP_SECONDARY_BUTTON";

          break;
        case 51:
          action = @"TAP_WIDGET_FOOD";

          break;
        case 52:
          action = @"TAP_WIDGET_GAS";

          break;
        case 53:
          action = @"TAP_WIDGET_LOADING";

          break;
        case 54:
          action = @"TAP_WIDGET_SEARCH";

          break;
        case 55:
          action = @"TAP_WIDGET_STORES";

          break;
        case 56:
          action = @"DISPLAY_ALLOW_ONCE_PROMPT";

          break;
        case 57:
          action = @"SHARE_CURRENT_LOCATION";

          break;
        case 58:
          action = @"SHARE_PHOTO";

          break;
        case 59:
          action = @"TAP_KEEP_OFF";

          break;
        case 60:
          action = @"TAP_PHOTO_CATEGORY";

          break;
        case 61:
          action = @"TAP_PRECISE_LOCATION_OFF_BANNER";

          break;
        case 62:
          action = @"TAP_TURN_ON";

          break;
        case 63:
          action = @"DISPLAY_CYCLING_ANNOTATION";

          break;
        case 64:
          action = @"DISPLAY_DRIVING_DEFAULT_OPTION";

          break;
        case 65:
          action = @"DISPLAY_TRANSIT_DEFAULT_OPTION";

          break;
        case 66:
          action = @"DISPLAY_WALKING_DEFAULT_OPTION";

          break;
        case 67:
          action = @"TAP_CYCLING_ANNOTATION";

          break;
        case 68:
          action = @"TAP_DRIVING_DEFAULT_OPTION";

          break;
        case 69:
          action = @"TAP_TRANSIT_DEFAULT_OPTION";

          break;
        case 70:
          action = @"TAP_WALKING_DEFAULT_OPTION";

          break;
        case 71:
          action = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";

          break;
        case 72:
          action = @"TAP_RIDESHARE_DEFAULT_OPTION";

          break;
        case 73:
          action = @"TAP_PERSONAL_COLLECTION";

          break;
        case 74:
          action = @"RESUME_ROUTE";

          break;
        case 75:
          action = @"DISPLAY_OUT_OF_RANGE_ALERT";

          break;
        case 76:
          action = @"TAP_ALLOW_ONCE";

          break;
        case 77:
          action = @"TAP_DO_NOT_ALLOW";

          break;
        case 78:
          action = @"ADD_RECCOMENDED_FAVORITE";

          break;
        case 79:
          action = @"ADD_RECOMMENDED_HOME_FAVORITE";

          break;
        case 80:
          action = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 81:
          action = @"ADD_RECOMMENDED_WORK_FAVORITE";

          break;
        case 82:
          action = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";

          break;
        case 83:
          action = @"CREATE_SCHOOL_FAVORITE";

          break;
        case 84:
          action = @"TAP_SCHOOL_FAVORITE";

          break;
        case 85:
          action = @"SELECT_ROUTING_TYPE_CYCLING";

          break;
        case 86:
          action = @"REPORT_PHOTO";

          break;
        case 87:
          action = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";

          break;
        case 88:
          action = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";

          break;
        case 89:
          action = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";

          break;
        case 90:
          action = @"CREATE_RECOMMENDED_FAVORITE";

          break;
        case 91:
          action = @"CREATE_RECOMMENDED_HOME_FAVORITE";

          break;
        case 92:
          action = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";

          break;
        case 93:
          action = @"CREATE_RECOMMENDED_WORK_FAVORITE";

          break;
        case 94:
          action = @"TAP_SMALL_WIDGET_ITEM";

          break;
        case 95:
          action = @"TAP_MEDIUM_WIDGET_ITEM";

          break;
        case 96:
          action = @"TAP_LARGE_WIDGET_ITEM";

          break;
        case 97:
          action = @"DISPLAY_ARP_TIPKIT";

          break;
        case 98:
          action = @"NEXT";

          break;
        case 99:
          action = @"TAP_RATE_AND_ADD_PHOTOS";

          break;
        case 100:
          action = @"TAP_TO_ADD_POSITIVE_RATING";

          break;
        case 101:
          action = @"TAP_TO_ADD_NEGATIVE_RATING";

          break;
        case 102:
          action = @"TAP_ACTIVE_SHARING_NOTIFICATION";

          break;
        case 103:
          action = @"INVOKE_SIRI_PROMPT";

          break;
        case 104:
          action = @"ETA_SHARED_SUCCESSFULLY";

          break;
        case 105:
          action = @"ENDED_ETA_SHARE_SUCCESSFULLY";

          break;
        case 106:
          action = @"CLEAR_INCIDENT";

          break;
        case 107:
          action = @"CONFIRM_INCIDENT";

          break;
        case 108:
          action = @"DISMISS_INCIDENT";

          break;
        case 109:
          action = @"INCIDENT_ALERT_TIMEOUT";

          break;
        case 110:
          action = @"INCIDENT_ALERT_TRAY_SHOWN";

          break;
        case 111:
          action = @"INCIDENT_CARD_SHOWN";

          break;
        case 112:
          action = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";

          break;
        case 113:
          action = @"INCIDENT_REPORT_TRAY_SHOWN";

          break;
        case 114:
          action = @"NAV_TRAY_DISCOVERY_SHOWN";

          break;
        case 115:
          action = @"TAP_TO_REPORT_INCIDENT";

          break;
        case 116:
          action = @"TAP_SHORTCUT";

          break;
        case 117:
          action = @"BLOCK_CONTACT";

          break;
        case 118:
          action = @"TAP_TO_ADD_RATING";

          break;
        case 119:
          action = @"AR_WALKING_LOCALIZATION_FAILED";

          break;
        case 120:
          action = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";

          break;
        case 121:
          action = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";

          break;
        case 122:
          action = @"AR_WALKING_LOCALIZATION_USER_ABANDON";

          break;
        case 123:
          action = @"ATTEMPT_AR_WALKING_LOCALIZATION";

          break;
        case 124:
          action = @"RAISE_TO_ENTER_AR_WALKING";

          break;
        case 125:
          action = @"TAP_DISMISS";

          break;
        case 126:
          action = @"TAP_ENTER_AR_WALKING";

          break;
        case 127:
          action = @"TAP_OK";

          break;
        case 128:
          action = @"TAP_TRY_AGAIN";

          break;
        case 129:
          action = @"TAP_TURN_ON_IN_SETTINGS";

          break;
        case 130:
          action = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";

          break;
        case 131:
          action = @"VLF_CORRECTION_USER_ABANDON";

          break;
        case 132:
          action = @"AREA_EVENTS_ALERT";

          break;
        case 133:
          action = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";

          break;
        case 134:
          action = @"ACCEPT_EVENT_REROUTE";

          break;
        case 135:
          action = @"DISPLAY_AREA_EVENTS_ADVISORY";

          break;
        case 136:
          action = @"DISMISS_EVENT_REROUTE";

          break;
        case 137:
          action = @"PUNCH_OUT_EVENTS_LINK";

          break;
        case 138:
          action = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";

          break;
        case 139:
          action = @"ADJUST_GUIDANCE_SETTINGS";

          break;
        case 140:
          action = @"HIDE_DETAILS";

          break;
        case 141:
          action = @"SELECT_VOICE_GUIDANCE_ON";

          break;
        case 142:
          action = @"SELECT_VOICE_GUIDANCE_OFF";

          break;
        case 143:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";

          break;
        case 144:
          action = @"TAP_TEXT_LABEL";

          break;
        case 145:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";

          break;
        case 146:
          action = @"TAP_EXIT";

          break;
        case 147:
          action = @"TAP_CITY_MENU";

          break;
        case 148:
          action = @"CHECK_AVOID_TOLLS";

          break;
        case 149:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";

          break;
        case 150:
          action = @"TAP_ICLOUD";

          break;
        case 151:
          action = @"CHECK_AVOID_HIGHWAYS";

          break;
        case 152:
          action = @"TAP_FAVORITES";

          break;
        case 153:
          action = @"SELECT_DISTANCE_IN_KM";

          break;
        case 154:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";

          break;
        case 155:
          action = @"OPEN_FULL_CARD_FILTER";

          break;
        case 156:
          action = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";

          break;
        case 157:
          action = @"OPEN_SINGLE_CARD_FILTER";

          break;
        case 158:
          action = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 159:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";

          break;
        case 160:
          action = @"SESSIONLESS_REVEAL";

          break;
        case 161:
          action = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";

          break;
        case 162:
          action = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";

          break;
        case 163:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";

          break;
        case 164:
          action = @"ENTER_RAP_REPORT_MENU";

          break;
        case 165:
          action = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";

          break;
        case 166:
          action = @"TAP_MY_VEHICLES";

          break;
        case 167:
          action = @"SUBMIT_SINGLE_CARD_FILTER";

          break;
        case 168:
          action = @"SUBMIT_FULL_CARD_FILTER";

          break;
        case 169:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";

          break;
        case 170:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";

          break;
        case 171:
          action = @"TAP_EXPLORE_CURATED_COLELCTIONS";

          break;
        case 172:
          action = @"TAP_ACCOUNT";

          break;
        case 173:
          action = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";

          break;
        case 174:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";

          break;
        case 175:
          action = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";

          break;
        case 176:
          action = @"RESULT_REFINEMENT_TOGGLE_OFF";

          break;
        case 177:
          action = @"TAP_CITY_CURATED_COLLECTIONS";

          break;
        case 178:
          action = @"TAP_REPORTS";

          break;
        case 179:
          action = @"TAP_RATINGS";

          break;
        case 180:
          action = @"TAP_EXPLORE_CURATED_COLLECTIONS";

          break;
        case 181:
          action = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";

          break;
        case 182:
          action = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";

          break;
        case 183:
          action = @"SELECT_DISTANCE_IN_MILES";

          break;
        case 184:
          action = @"TAP_PRIVACY_STATEMENT";

          break;
        case 185:
          action = @"TAP_MAPS_SETTINGS";

          break;
        case 186:
          action = @"CANCEL_FULL_CARD_FILTER";

          break;
        case 187:
          action = @"TAP_LATEST_CURATED_COLLECTION";

          break;
        case 188:
          action = @"TAP_TEMPORAL_CURATED_COLLECTION";

          break;
        case 189:
          action = @"UNCHECK_AVOID_TOLLS";

          break;
        case 190:
          action = @"UNSELECT_SEARCH_REFINEMENT";

          break;
        case 191:
          action = @"TAP_RATING";

          break;
        case 192:
          action = @"TAP_ICLOUD_SIGN_IN";

          break;
        case 193:
          action = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";

          break;
        case 194:
          action = @"TAP_POI_HIGHLIGHTED_AUXILIARY";

          break;
        case 195:
          action = @"UNCHECK_AVOID_HIGHWAYS";

          break;
        case 196:
          action = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";

          break;
        case 197:
          action = @"RESULT_REFINEMENT_TOGGLE_ON";

          break;
        case 198:
          action = @"TAP_CONTEXT_LINE_HYPERLINK";

          break;
        case 199:
          action = @"TAP_MY_GUIDES";

          break;
        case 200:
          action = @"SELECT_SEARCH_REFINEMENT";

          break;
        case 201:
          action = @"SESSIONLESS_TAP_ACCOUNT";

          break;
        case 202:
          action = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";

          break;
        case 203:
          action = @"TAP_TRAVEL_PREFERENCES";

          break;
        case 204:
          action = @"SHOW_CURATED_COLLECTION_LIST";

          break;
        case 205:
          action = @"CANCEL_SINGLE_CARD_FILTER";

          break;
        case 206:
          action = @"DISPLAY_HFP_OPTION";

          break;
        case 207:
          action = @"SWITCH_OFF_HFP";

          break;
        case 208:
          action = @"SWITCH_ON_HFP";

          break;
        case 209:
          action = @"TAP_QUICK_ACTION_TRAY";

          break;
        case 210:
          action = @"SHOW_ALL_CITIES";

          break;
        case 211:
          action = @"TAP_ADD_NEARBY_TRANSIT";

          break;
        case 212:
          action = @"RESUME";

          break;
        case 213:
          action = @"DISPLAY_TIPKIT_PROMPT";

          break;
        case 214:
          action = @"TAP_NEARBY_TRANSIT_FAVORITE";

          break;
        case 215:
          action = @"TAP_DRIVING_MODE";

          break;
        case 216:
          action = @"SWITCH_ON_VOICE_GUIDANCE";

          break;
        case 217:
          action = @"DISMISS_TIPKIT_PROMPT";

          break;
        case 218:
          action = @"TAP_EXPAND_EXIT_DETAILS";

          break;
        case 219:
          action = @"TAP_NEARBY_TRANSIT_FILTER";

          break;
        case 220:
          action = @"TAP_MORE_DEPARTURES";

          break;
        case 221:
          action = @"RAP_INDIVIDUAL_PLACE";

          break;
        case 222:
          action = @"RAP_ADD_MAP";

          break;
        case 223:
          action = @"TAP_SUGGESTED_RAP";

          break;
        case 224:
          action = @"RAP_STREET_ISSUE";

          break;
        case 225:
          action = @"SWIPE_PIN_REVEAL";

          break;
        case 226:
          action = @"TAP_ADD_TIPKIT_FAVORITE";

          break;
        case 227:
          action = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";

          break;
        case 228:
          action = @"RAP_BAD_TRIP";

          break;
        case 229:
          action = @"RAP_PLACE_ISSUE";

          break;
        case 230:
          action = @"TAP_OPEN_MAPS";

          break;
        case 231:
          action = @"TAP_NEARBY_TRANSIT_RESULT";

          break;
        case 232:
          action = @"RAP_GUIDE";

          break;
        case 233:
          action = @"SWITCH_OFF_VOICE_GUIDANCE";

          break;
        case 234:
          action = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";

          break;
        case 235:
          action = @"SELECT_TRANSIT_STEP";

          break;
        case 236:
          action = @"SCROLL_VEHICLE_INFORMATION_FORWARD";

          break;
        case 237:
          action = @"TAP_SEE_MORE";

          break;
        case 238:
          action = @"RAP_IN_REVIEW";

          break;
        case 239:
          action = @"TAP_OPEN_MENU";

          break;
        case 240:
          action = @"TAP_NEARBY_TRANSIT";

          break;
        case 241:
          action = @"TAP_PIN_LINE";

          break;
        case 242:
          action = @"SWITCH_OFF_TRIP_FEEDBACK";

          break;
        case 243:
          action = @"RAP_GOOD_TRIP";

          break;
        case 244:
          action = @"TAP_FILTERED_CURATED_COLLECTION";

          break;
        case 245:
          action = @"SHARE_MY_LOCATION";

          break;
        case 246:
          action = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";

          break;
        case 247:
          action = @"DISPLAY_GENERIC_ADVISORY";

          break;
        case 248:
          action = @"ADVISORY_ALERT";

          break;
        case 249:
          action = @"PUNCH_OUT_LINK";

          break;
        case 250:
          action = @"TAP_GENERIC_ADVISORY";

          break;
        case 251:
          action = @"TAP_EXPLORE_MODE";

          break;
        case 252:
          action = @"TAP_UNPIN_LINE";

          break;
        case 253:
          action = @"MENU_UNPIN";

          break;
        case 254:
          action = @"MENU_PIN";

          break;
        case 255:
          action = @"SWIPE_PIN";

          break;
        case 256:
          action = @"SWIPE_UNPIN";

          break;
        case 257:
          action = @"TAP_MEDIA_APP";

          break;
        case 258:
          action = @"TAP_GUIDES_SUBACTION";

          break;
        case 259:
          action = @"TAP_MEDIA";

          break;
        case 260:
          action = @"PUNCH_OUT_MEDIA";

          break;
        case 261:
          action = @"SHOW_MEDIA_APP_MENU";

          break;
        case 262:
          action = @"SCROLL_RIGHT_RIBBON";

          break;
        case 263:
          action = @"SCROLL_LEFT_RIBBON";

          break;
        case 264:
          action = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";

          break;
        case 265:
          action = @"TAP_SHOW_MORE_TEXT";

          break;
        case 266:
          action = @"SCROLL_LEFT_RATINGS";

          break;
        case 267:
          action = @"SCROLL_LEFT_TEMPLATE_PLACE";

          break;
        case 268:
          action = @"SCROLL_RIGHT_TEMPLATE_PLACE";

          break;
        case 269:
          action = @"SCROLL_RIGHT_RATINGS";

          break;
        case 270:
          action = @"TAP_ALLOW";

          break;
        case 271:
          action = @"TAP_GO_TO_SETTING";

          break;
        case 272:
          action = @"START_SUBMIT_REPORT";

          break;
        case 273:
          action = @"AUTHENTICATION_INFO_FAILURE";

          break;
        case 274:
          action = @"SUCCESSFULLY_SUBMIT_REPORT";

          break;
        case 275:
          action = @"FAILED_SUBMIT_REPORT";

          break;
        case 276:
          action = @"AUTHENTICATION_INFO_SUCCESS";

          break;
        case 277:
          action = @"EDIT_WAYPOINT";

          break;
        case 278:
          action = @"CLEAR_TEXT";

          break;
        case 279:
          action = @"REORDER_WAYPOINT";

          break;
        case 280:
          action = @"REMOVE_WAYPOINT";

          break;
        case 281:
          action = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";

          break;
        case 282:
          action = @"TAP_SHOWCASE_MENU";

          break;
        case 283:
          action = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";

          break;
        case 284:
          action = @"TAP_PHOTO_ALBUM";

          break;
        case 285:
          action = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 286:
          action = @"RAP_INLINE_ADD";

          break;
        case 287:
          action = @"RAP_TAP_EDIT";

          break;
        case 288:
          action = @"CLAIM_BUSINESS";

          break;
        case 289:
          action = @"RAP_EDIT_OPTIONS";

          break;
        case 290:
          action = @"TAP_IN_REVIEW_RAP";

          break;
        case 291:
          action = @"ORB_MENU_ADD_STOP";

          break;
        case 292:
          action = @"NEXT_STOP";

          break;
        case 293:
          action = @"ARRIVE_AT_WAYPOINT";

          break;
        case 294:
          action = @"REMOVE_STOP";

          break;
        case 295:
          action = @"DISPLAY_PAUSE_BUTTON";

          break;
        case 296:
          action = @"DISPLAY_PAUSE_NEXT_BUTTONS";

          break;
        case 297:
          action = @"AUTO_ADVANCE_NEXT_STOP";

          break;
        case 298:
          action = @"ADD_INLINE_NEGATIVE_RATING";

          break;
        case 299:
          action = @"ADD_INLINE_POSITIVE_RATING";

          break;
        case 300:
          action = @"TAP_TO_ADD_RATING_AND_PHOTO";

          break;
        case 301:
          action = @"SUBMIT_RATINGS_AND_PHOTOS";

          break;
        case 302:
          action = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";

          break;
        case 303:
          action = @"TAP_RECENTLY_VIEWED_ROUTE";

          break;
        case 304:
          action = @"SHOW_ALL_RECENTS";

          break;
        case 305:
          action = @"RESUME_MULTIPOINT_ROUTE";

          break;
        case 306:
          action = @"DISMISS_TRANSIT_TIPKIT";

          break;
        case 307:
          action = @"DISPLAY_TRANSIT_TIPKIT";

          break;
        case 308:
          action = @"TAP_TRANSIT_TIPKIT";

          break;
        case 309:
          action = @"FILTER_EV";

          break;
        case 310:
          action = @"FILTER_SURCHARGE";

          break;
        case 311:
          action = @"FILTER_PREFER";

          break;
        case 312:
          action = @"TAP_WALKING_ANNOTATION";

          break;
        case 313:
          action = @"FILTER_AVOID";

          break;
        case 314:
          action = @"FILTER_TRANSPORTATION_MODE";

          break;
        case 315:
          action = @"FILTER_RECOMMENDED_ROUTES";

          break;
        case 316:
          action = @"FILTER_IC_FARES";

          break;
        case 317:
          action = @"FILTER_TRANSIT_CARD_FARES";

          break;
        case 318:
          action = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";

          break;
        case 319:
          action = @"TAP_NOTIFICATION_SETTINGS";

          break;
        case 320:
          action = @"TAP_ENABLE_NOTIFICATION";

          break;
        case 321:
          action = @"ARP_SUGGESTIONS_TURN_OFF";

          break;
        case 322:
          action = @"ARP_SUGGESTIONS_TURN_ON";

          break;
        case 323:
          action = @"DISMISS_ARP_SUGGESTION";

          break;
        case 324:
          action = @"RATINGS_AND_PHOTOS_TURN_ON";

          break;
        case 325:
          action = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";

          break;
        case 326:
          action = @"UNSELECT_SUGGESTED_PHOTOS";

          break;
        case 327:
          action = @"SUGGESTED_PHOTOS_SHOWN";

          break;
        case 328:
          action = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 329:
          action = @"TAP_YOUR_PHOTOS_ALBUM";

          break;
        case 330:
          action = @"RATINGS_AND_PHOTOS_TURN_OFF";

          break;
        case 331:
          action = @"DELETE_PHOTO";

          break;
        case 332:
          action = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 333:
          action = @"SCROLL_LEFT_SUGGESTED_PHOTOS";

          break;
        case 334:
          action = @"TAP_PHOTOS_LIVE_NOTIFICATION";

          break;
        case 335:
          action = @"DISPLAY_YOUR_PHOTOS_ALBUM";

          break;
        case 336:
          action = @"SELECT_SUGGESTED_PHOTOS";

          break;
        case 337:
          action = @"ADD_STOP";

          break;
        case 338:
          action = @"SHOW_CREDIT_TURN_ON";

          break;
        case 339:
          action = @"DISPLAY_ARP_SUGGESTION";

          break;
        case 340:
          action = @"TAP_TO_ADD_PHOTO_CREDIT";

          break;
        case 341:
          action = @"SHOW_CREDIT_TURN_OFF";

          break;
        case 342:
          action = @"TAP_TO_EDIT_NICKNAME";

          break;
        case 343:
          action = @"SUBMIT_RATINGS";

          break;
        case 344:
          action = @"END_NAV_ON_WATCH";

          break;
        case 345:
          action = @"FILTER_EBIKE";

          break;
        case 356:
          action = @"ADD_STOP_SIRI";

          break;
        case 357:
          action = @"TAP_REVIEWED_RAP";

          break;
        case 358:
          action = @"TAP_OUTREACH_RAP";

          break;
        case 359:
          action = @"DISPLAY_SUGGESTED_ITEM";

          break;
        case 360:
          action = @"DISPLAY_HIKING_TIPKIT";

          break;
        case 361:
          action = @"DISMISS_HIKING_TIPKIT";

          break;
        case 362:
          action = @"TAP_HIKING_TIPKIT";

          break;
        case 363:
          action = @"SCROLL_LEFT_TRAILS";

          break;
        case 364:
          action = @"TAP_MORE_TRAILS";

          break;
        case 365:
          action = @"TAP_RELATED_TRAIL";

          break;
        case 366:
          action = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";

          break;
        case 367:
          action = @"SCROLL_RIGHT_TRAILS";

          break;
        case 368:
          action = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 369:
          action = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";

          break;
        case 370:
          action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 371:
          action = @"TAP_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 372:
          action = @"SELECT_DOWNLOAD_OFFLINE_MAPS";

          break;
        case 373:
          action = @"EXPIRED_MAPS_REMOVED";

          break;
        case 374:
          action = @"UPDATE_ALL_DOWNLOAD_MAPS";

          break;
        case 375:
          action = @"TAP_EXPIRED_MAPS";

          break;
        case 376:
          action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 377:
          action = @"MOVE_DOWNLOAD_MAPS";

          break;
        case 378:
          action = @"SAVE_RENAME_DOWNLOAD_MAPS";

          break;
        case 379:
          action = @"TAP_COMPLETE_DOWNLOAD_MAPS";

          break;
        case 380:
          action = @"TAP_ENTER_OFFLINE_MAPS";

          break;
        case 381:
          action = @"TAP_DOWNLOAD_MAPS";

          break;
        case 382:
          action = @"TAP_DOWNLOAD_MAPS_CONTINUE";

          break;
        case 383:
          action = @"DELETE_DOWNLOAD_MAPS";

          break;
        case 384:
          action = @"SLIDE_CLEAR_EXPIRED_MAPS";

          break;
        case 385:
          action = @"RENAME_DOWNLOAD_MAPS";

          break;
        case 386:
          action = @"RESIZE_DOWNLOAD_MAPS";

          break;
        case 387:
          action = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";

          break;
        case 388:
          action = @"RESTORE_EXPIRED_MAPS";

          break;
        case 389:
          action = @"CLEAR_EXPIRED_MAPS";

          break;
        case 390:
          action = @"TAP_USING_OFFLINE_BAR";

          break;
        case 391:
          action = @"UPDATE_DOWNLOAD_MAPS";

          break;
        case 392:
          action = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";

          break;
        case 393:
          action = @"DISPLAY_DOWNLOAD_MAPS";

          break;
        case 394:
          action = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";

          break;
        case 395:
          action = @"DISPLAY_EXPIRED_MAPS";

          break;
        case 396:
          action = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";

          break;
        case 397:
          action = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";

          break;
        case 398:
          action = @"SLIDE_RESTORE_EXPIRED_MAPS";

          break;
        case 399:
          action = @"ETA_SHARE_TRAY_TIMEOUT";

          break;
        case 400:
          action = @"START_ETA_SHARING";

          break;
        case 401:
          action = @"PERSON_LOCATION_UPDATE";

          break;
        case 402:
          action = @"STOP_ETA_SHARING";

          break;
        case 403:
          action = @"PUNCH_OUT_TO_FINDMY";

          break;
        case 404:
          action = @"TAP_PEOPLE_LOCATION";

          break;
        case 405:
          action = @"TAP_TO_REQUEST_LOCATION";

          break;
        case 406:
          action = @"ZOOM_OUT_CROWN";

          break;
        case 407:
          action = @"TAP_RESIZE_DOWNLOAD_MAPS";

          break;
        case 408:
          action = @"TAP_DELETE_DOWNLOAD_MAPS";

          break;
        case 409:
          action = @"SELECT_LIST_VIEW";

          break;
        case 410:
          action = @"SCROLL_RIGHT_TRAILHEADS";

          break;
        case 411:
          action = @"SWITCH_TO_ONLINE_MODE";

          break;
        case 412:
          action = @"TAP_RELATED_TRAILHEAD";

          break;
        case 413:
          action = @"SELECT_ELEVATION_VIEW";

          break;
        case 414:
          action = @"TOGGLE_PROXIMITY_RADIUS_ON";

          break;
        case 415:
          action = @"SEE_MORE_RECENTS";

          break;
        case 416:
          action = @"SEE_MORE_GUIDES";

          break;
        case 417:
          action = @"SELECT_CONTROLS";

          break;
        case 418:
          action = @"NO_SEARCH_RESULTS";

          break;
        case 419:
          action = @"TAP_VIEW_RESULTS_CAROUSEL";

          break;
        case 420:
          action = @"TAP_VIEW_RESULTS_LIST";

          break;
        case 421:
          action = @"SELECT_MAP_VIEW";

          break;
        case 422:
          action = @"SCROLL_LEFT_TRAILHEADS";

          break;
        case 423:
          action = @"SWITCH_TO_OFFLINE_MODE";

          break;
        case 424:
          action = @"ZOOM_IN_CROWN";

          break;
        case 425:
          action = @"TOGGLE_PROXIMITY_RADIUS_OFF";

          break;
        case 426:
          action = @"TAP_MAP";

          break;
        case 427:
          action = @"SWIPE_DOWN";

          break;
        case 428:
          action = @"TAP_MORE_TRAILHEADS";

          break;
        case 429:
          action = @"TAP_ROUTE_OPTIONS";

          break;
        case 430:
          action = @"TAP_ROUTE_NAV_MAP";

          break;
        case 431:
          action = @"TAP_ROUTE_OVERVIEW_MAP";

          break;
        case 432:
          action = @"TAP_AUDIO";

          break;
        case 433:
          action = @"TAP_OPEN_PLACECARD";

          break;
        case 434:
          action = @"TAP_VIEW_STOPS";

          break;
        case 435:
          action = @"TAP_ROUTE_DETAILS";

          break;
        case 436:
          action = @"ADD_LPR_VEHICLE";

          break;
        case 437:
          action = @"TAP_ADD_VEHICLE";

          break;
        case 438:
          action = @"TAP_PLUG_TYPE";

          break;
        case 439:
          action = @"UNSELECT_SUGGESTED_NETWORK";

          break;
        case 440:
          action = @"TAP_SET_UP_LATER";

          break;
        case 441:
          action = @"ADD_EV_VEHICLE";

          break;
        case 442:
          action = @"UPDATE_COLOR";

          break;
        case 443:
          action = @"SELECT_OTHER_NETWORK";

          break;
        case 444:
          action = @"UNSELECT_NETWORK";

          break;
        case 445:
          action = @"TAP_BACK";

          break;
        case 446:
          action = @"TAP_CANCEL";

          break;
        case 447:
          action = @"UNSELECT_VEHICLE";

          break;
        case 448:
          action = @"UNSELECT_OTHER_NETWORK";

          break;
        case 449:
          action = @"DISPLAY_EV_TIPKIT";

          break;
        case 450:
          action = @"SELECT_NETWORK";

          break;
        case 451:
          action = @"TAP_EV_TIPKIT";

          break;
        case 452:
          action = @"TAP_CHOOSE_NETWORKS";

          break;
        case 453:
          action = @"TAP_ADD_NETWORK";

          break;
        case 454:
          action = @"FILTER_NETWORK";

          break;
        case 455:
          action = @"SELECT_SUGGESTED_NETWORK";

          break;
        case 456:
          action = @"TRANSIT_TO_WALKING";

          break;
        case 457:
          action = @"TRANSIT_TO_FINDMY";

          break;
        case 458:
          action = @"TAP_AC_KEYBOARD";

          break;
        case 459:
          action = @"REACH_PHOTO_STRIP_END";

          break;
        case 460:
          action = @"SEARCH_HERE_REVEAL";

          break;
        case 461:
          action = @"TAP_SEARCH_HERE";

          break;
        case 462:
          action = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";

          break;
        case 463:
          action = @"SAVE";

          break;
        case 464:
          action = @"TAP_MORE_CURATED_HIKES";

          break;
        case 465:
          action = @"CREATE_CUSTOM_ROUTE";

          break;
        case 466:
          action = @"TAP_TRY_NOW";

          break;
        case 467:
          action = @"TAP_CURATED_HIKE";

          break;
        case 468:
          action = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";

          break;
        case 469:
          action = @"ADD_TO_LIBRARY";

          break;
        case 470:
          action = @"START_HIKING";

          break;
        case 471:
          action = @"EDIT_NOTE";

          break;
        case 472:
          action = @"CREATE_NOTE";

          break;
        case 473:
          action = @"DELETE_PIN";

          break;
        case 474:
          action = @"ADD_ROUTE";

          break;
        case 475:
          action = @"ADD_PIN";

          break;
        case 476:
          action = @"REMOVE_FROM_COLLECTION";

          break;
        case 477:
          action = @"REMOVE_FROM_LIBRARY";

          break;
        case 478:
          action = @"TAP_ITEM";

          break;
        case 479:
          action = @"DELETE_ROUTE";

          break;
        case 480:
          action = @"TAP_ROUTE";

          break;
        case 481:
          action = @"TAP_DOWNLOAD_WATCH_MAPS";

          break;
        case 482:
          action = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 483:
          action = @"STOP_DOWNLOAD_ONTO_WATCH";

          break;
        case 484:
          action = @"TAP_DOWNLOAD_ONTO_WATCH";

          break;
        case 485:
          action = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";

          break;
        case 486:
          action = @"TAP_DOWNLOAD_NOW_WATCH";

          break;
        case 487:
          action = @"REVEAL_DETECTION_LIST";

          break;
        case 488:
          action = @"TAP_RECOMMENDATION";

          break;
        case 489:
          action = @"TAP_EXPAND";

          break;
        case 490:
          action = @"EXPAND_DETECTION_LIST";

          break;
        case 491:
          action = @"FIRST_PARTY_MAP_VIEW";

          break;
        case 492:
          action = @"SECOND_PARTY_MAP_VIEW";

          break;
        case 493:
          action = @"THIRD_PARTY_MAP_VIEW";

          break;
        case 494:
          action = @"DAEMON_PARTY_MAP_VIEW";

          break;
        case 495:
          action = @"MAPS_APP_DWELL_TIME_3_SEC";

          break;
        case 496:
          action = @"MAPS_APP_DWELL_TIME_30_SEC";

          break;
        case 497:
          action = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";

          break;
        case 498:
          action = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";

          break;
        case 499:
          action = @"DISPLAY_DOOM";

          break;
        case 500:
          action = @"TAP_DOOM";

          break;
        case 501:
          action = @"TAP_ROUTE_GENIUS";

          break;
        case 502:
          action = @"DISPLAY_ROUTE_GENIUS";

          break;
        case 503:
          action = @"TAP_WIDGET";

          break;
        case 504:
          action = @"ARRIVE_AT_DESTINATION";

          break;
        case 505:
          action = @"DISPLAY_WIDGET";

          break;
        case 506:
          action = @"CLEAR_HISTORY";

          break;
        case 507:
          action = @"TAP_SECTION";

          break;
        case 508:
          action = @"APPROVE_LOCATION";

          break;
        case 509:
          action = @"DISMISS_VISITED_PLACES_TIPKIT";

          break;
        case 510:
          action = @"DISPLAY_VISITED_PLACES_TIPKIT";

          break;
        case 511:
          action = @"MORE_OPTIONS";

          break;
        case 512:
          action = @"TAP_VISITED_PLACES_AVAILABLE";

          break;
        case 513:
          action = @"AUTO_REFRESH_SEARCH";

          break;
        case 514:
          action = @"REMOVE_VISIT";

          break;
        case 515:
          action = @"WRONG_LOCATION";

          break;
        case 516:
          action = @"CONFIRM";

          break;
        case 517:
          action = @"KEEP_HISTORY";

          break;
        case 518:
          action = @"DISPLAY_VISITED_PLACES_AVAILABLE";

          break;
        case 519:
          action = @"REMOVE";

          break;
        case 520:
          action = @"ALLOW";

          break;
        case 521:
          action = @"DONT_ALLOW";

          break;
        case 522:
          action = @"REMOVE_EVERY_VISIT";

          break;
        case 523:
          action = @"CONTINUE_VISITED_PLACES_TIPKIT";

          break;
        case 524:
          action = @"REMOVE_FROM_FAVORITE_GUIDE";

          break;
        case 525:
          action = @"ADD_TO_FAVORITE_GUIDE";

          break;
        case 526:
          action = @"FAMILIAR_ROUTE_DISPLAYED";

          break;
        case 527:
          action = @"FAMILIAR_ROUTE_NAV_STARTED";

          break;
        case 528:
          action = @"SELECT_AUDIO_VOLUME_LOUDER";

          break;
        case 529:
          action = @"SELECT_AUDIO_VOLUME_SOFTER";

          break;
        case 1001:
          action = @"PAN";

          break;
        case 1002:
          action = @"ZOOM_IN";

          break;
        case 1003:
          action = @"ZOOM_OUT";

          break;
        case 1004:
          action = @"ROTATE";

          break;
        case 1010:
          action = @"TAP_POI";

          break;
        case 1011:
          action = @"TAP_POI_TRANSIT";

          break;
        case 1017:
          action = @"TAP_POI_HIGHLIGHTED";

          break;
        case 1018:
          action = @"TAP_POI_CLUSTERED";

          break;
        case 1020:
          action = @"TAP_POI_DROPPED_PIN";

          break;
        case 1030:
          action = @"DROP_PIN";

          break;
        case 1031:
          action = @"TAP_INCIDENT";

          break;
        case 1032:
          action = @"TAP_TRANSIT_LINE";

          break;
        case 1033:
          action = @"TAP_POI_CALENDAR";

          break;
        case 1034:
          action = @"TAP_POI_CURRENT_LOCATION";

          break;
        case 1035:
          action = @"TAP_POI_TRANSIT_LINE";

          break;
        case 1036:
          action = @"TAP_POI_LANDMARK";

          break;
        case 1037:
          action = @"TAP_POI_FLYOVER";

          break;
        case 1038:
          action = @"TAP_TO_HIDE_TRAY";

          break;
        case 1039:
          action = @"TAP_TO_REVEAL_TRAY";

          break;
        case 1040:
          action = @"TAP_COMPASS";

          break;
        case 1041:
          action = @"PITCH_AWAY_FROM_GROUND";

          break;
        case 1042:
          action = @"PITCH_CLOSER_TO_GROUND";

          break;
        case 1043:
          action = @"ZOOM_IN_PINCH";

          break;
        case 1044:
          action = @"ZOOM_OUT_PINCH";

          break;
        case 1045:
          action = @"ZOOM_IN_DOUBLE_TAP";

          break;
        case 1046:
          action = @"ZOOM_OUT_TWO_FINGER_TAP";

          break;
        case 1047:
          action = @"ZOOM_IN_ONE_FINGER";

          break;
        case 1048:
          action = @"ZOOM_OUT_ONE_FINGER";

          break;
        case 1049:
          action = @"ZOOM_IN_BUTTON";

          break;
        case 1050:
          action = @"ZOOM_OUT_BUTTON";

          break;
        case 1051:
          action = @"TAP_TRAFFIC_CAMERA";

          break;
        case 1052:
          action = @"DISPLAY_INDOOR_MAP_BUTTON";

          break;
        case 1053:
          action = @"OPEN_INDOOR_MAP";

          break;
        case 1054:
          action = @"DISPLAY_VENUE_BROWSE_BUTTON";

          break;
        case 1055:
          action = @"TAP_VENUE_BROWSE_BUTTON";

          break;
        case 1056:
          action = @"ENTER_VENUE_EXPERIENCE";

          break;
        case 1057:
          action = @"EXIT_VENUE_EXPERIENCE";

          break;
        case 1058:
          action = @"ZOOM_IN_SCENE_PINCH";

          break;
        case 1059:
          action = @"ZOOM_OUT_SCENE_PINCH";

          break;
        case 1060:
          action = @"ZOOM_RESET";

          break;
        case 1061:
          action = @"TAP_SCENE_UNAVAILABLE_AREA";

          break;
        case 1062:
          action = @"TAP_TRANSIT_ACCESS_POINT";

          break;
        case 1063:
          action = @"TAP_SPEED_CAMERA";

          break;
        case 1064:
          action = @"TAP_RED_LIGHT_CAMERA";

          break;
        case 1065:
          action = @"TAP_GEO";

          break;
        default:
          if (action != 1500)
          {
            goto LABEL_200;
          }

          action = @"TAP_PLAY_SOUND";

          break;
      }
    }

    return action;
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
            action = @"TAP_HEADING_ON";
          }

          else if (action == 4003)
          {
            action = @"TAP_HEADING_OFF";
          }

          else
          {
            action = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(action)
          {
            case 5001:
              action = @"SHOW_MAPS_SETTINGS";

              return action;
            case 5002:
              action = @"TAP_STANDARD_MODE";

              return action;
            case 5003:
              action = @"TAP_TRANSIT_MODE";

              return action;
            case 5004:
              action = @"TAP_SATELLITE_MODE";

              return action;
            case 5005:
              action = @"SWITCH_ON_TRAFFIC";

              return action;
            case 5006:
              action = @"SWITCH_OFF_TRAFFIC";

              return action;
            case 5007:
              action = @"SWITCH_ON_LABELS";

              return action;
            case 5008:
              action = @"SWITCH_OFF_LABELS";

              return action;
            case 5009:
              action = @"SWITCH_ON_3D_MAP";

              return action;
            case 5010:
              action = @"SWITCH_OFF_3D_MAP";

              return action;
            case 5011:
              action = @"SWITCH_ON_WEATHER";

              return action;
            case 5012:
              action = @"SWITCH_OFF_WEATHER";

              return action;
            case 5013:
              action = @"REPORT_A_PROBLEM";

              return action;
            case 5014:
              action = @"ADD_PLACE";

              return action;
            case 5015:
              goto LABEL_200;
            case 5016:
              action = @"TAP_PREFERENCES";

              return action;
            case 5017:
              action = @"SWITCH_ON_TOLLS";

              return action;
            case 5018:
              action = @"SWITCH_OFF_TOLLS";

              return action;
            case 5019:
              action = @"SWITCH_ON_HIGHWAYS";

              return action;
            case 5020:
              action = @"SWITCH_OFF_HIGHWAYS";

              return action;
            case 5021:
              action = @"SWITCH_ON_HEADING";

              return action;
            case 5022:
              action = @"SWITCH_OFF_HEADING";

              return action;
            case 5023:
              action = @"SWITCH_ON_SPEED_LIMIT";

              return action;
            case 5024:
              action = @"SWITCH_OFF_SPEED_LIMIT";

              return action;
            case 5025:
              action = @"ELECT_DRIVING_MODE";

              return action;
            case 5026:
              action = @"ELECT_WALKING_MODE";

              return action;
            case 5027:
              action = @"ELECT_TRANSIT_MODE";

              return action;
            case 5028:
              action = @"ELECT_RIDESHARE_MODE";

              return action;
            case 5029:
              action = @"SWITCH_ON_FIND_MY_CAR";

              return action;
            case 5030:
              action = @"SWITCH_OFF_FIND_MY_CAR";

              return action;
            case 5031:
              action = @"MARK_MY_LOCATION";

              return action;
            case 5032:
              action = @"TAP_HYBRID_MODE";

              return action;
            case 5033:
              action = @"CHECK_AVOID_BUSY_ROADS";

              return action;
            case 5034:
              action = @"UNCHECK_AVOID_BUSY_ROADS";

              return action;
            case 5035:
              action = @"CHECK_AVOID_HILLS";

              return action;
            case 5036:
              action = @"UNCHECK_AVOID_HILLS";

              return action;
            case 5037:
              action = @"CHECK_AVOID_STAIRS";

              return action;
            case 5038:
              action = @"UNCHECK_AVOID_STAIRS";

              return action;
            case 5039:
              action = @"ELECT_CYCLING_MODE";

              return action;
            default:
              if (action == 4005)
              {
                action = @"PUCK_SNAP";
              }

              else
              {
                if (action != 4006)
                {
                  goto LABEL_200;
                }

                action = @"SELECT_FLOOR";
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
            action = @"START_NAV";

            break;
          case 3002:
            action = @"END_NAV";

            break;
          case 3003:
            action = @"OPEN_NAV_AUDIO_SETTINGS";

            break;
          case 3004:
            action = @"VIEW_DETAILS";

            break;
          case 3005:
            action = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";

            break;
          case 3006:
            action = @"OPEN_ROUTING_EDITOR";

            break;
          case 3007:
            action = @"EDIT_ORIGIN";

            break;
          case 3008:
            action = @"EDIT_DESTINATION";

            break;
          case 3009:
            action = @"SWAP_ORIGIN_DESTINATION";

            break;
          case 3010:
            action = @"OPEN_MORE_ROUTES";

            break;
          case 3011:
            action = @"SELECT_ROUTING_TYPE_DRIVING";

            break;
          case 3012:
            action = @"SELECT_ROUTING_TYPE_WALKING";

            break;
          case 3013:
            action = @"SELECT_ROUTING_TYPE_TRANSIT";

            break;
          case 3014:
            action = @"SELECT_ROUTING_TYPE_RIDESHARE";

            break;
          case 3015:
            action = @"SELECT_ROUTE";

            break;
          case 3016:
            action = @"COLLAPSE_STEP_DETAILS_WALK";

            break;
          case 3017:
            action = @"EXPAND_STEP_DETAILS_WALK";

            break;
          case 3018:
            action = @"COLLAPSE_STEP_DETAILS_TRANSIT";

            break;
          case 3019:
            action = @"EXPAND_STEP_DETAILS_TRANSIT";

            break;
          case 3020:
            action = @"UNCHECK_BUS";

            break;
          case 3021:
            action = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3022:
            action = @"UNCHECK_COMMUTER_RAIL";

            break;
          case 3023:
            action = @"UNCHECK_FERRY";

            break;
          case 3024:
            action = @"CHECK_BUS";

            break;
          case 3025:
            action = @"CHECK_SUBWAY_AND_LIGHT_RAIL";

            break;
          case 3026:
            action = @"CHECK_COMMUTER_RAIL";

            break;
          case 3027:
            action = @"CHECK_FERRY";

            break;
          case 3028:
            action = @"SELECT_LEAVE_AT";

            break;
          case 3029:
            action = @"SELECT_ARRIVE_BY";

            break;
          case 3030:
            action = @"SELECT_LEAVE_NOW";

            break;
          case 3031:
            action = @"SELECT_DATE_TIME";

            break;
          case 3032:
            action = @"SWITCH_ON_IC_FARES";

            break;
          case 3033:
            action = @"SWITCH_OFF_IC_FARES";

            break;
          case 3034:
            action = @"OPEN_ROUTE_OPTIONS_DATETIME";

            break;
          case 3035:
            action = @"OPEN_ROUTE_OPTIONS_TRANSIT";

            break;
          case 3036:
            action = @"OPEN_ROUTE_OPTIONS_DRIVING";

            break;
          case 3037:
            action = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";

            break;
          case 3038:
            action = @"REVEAL_FROM_ROUTING";

            break;
          case 3039:
            action = @"DISPLAY_ROUTES";

            break;
          case 3040:
            action = @"CHECK_RECOMMENDED_ROUTES";

            break;
          case 3041:
            action = @"UNCHECK_RECOMMENDED_ROUTES";

            break;
          case 3042:
            action = @"CHECK_FASTER_TRIPS";

            break;
          case 3043:
            action = @"UNCHECK_FASTER_TRIPS";

            break;
          case 3044:
            action = @"CHECK_FEWER_TRANSFERS";

            break;
          case 3045:
            action = @"UNCHECK_FEWER_TRANSFERS";

            break;
          case 3046:
            action = @"CHECK_LESS_WALKING";

            break;
          case 3047:
            action = @"UNCHECK_LESS_WALKING";

            break;
          case 3048:
            action = @"OPEN_ROUTE_OPTIONS_CYCLING";

            break;
          case 3049:
            action = @"TAP_MORE_ROUTES";

            break;
          case 3050:
            action = @"OPEN_NAV_OVERVIEW";

            break;
          case 3051:
            action = @"RESUME_NAV_MANEUVER_VIEW";

            break;
          case 3052:
            action = @"SELECT_AUDIO_VOLUME_SILENT";

            break;
          case 3053:
            action = @"SELECT_AUDIO_VOLUME_LOW";

            break;
          case 3054:
            action = @"SELECT_AUDIO_VOLUME_NORMAL";

            break;
          case 3055:
            action = @"SELECT_AUDIO_VOLUME_LOUD";

            break;
          case 3056:
            action = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";

            break;
          case 3057:
            action = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";

            break;
          case 3058:
            action = @"RESUME_PREV_NAV";

            break;
          case 3059:
            action = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";

            break;
          case 3060:
            action = @"ACCEPT_REROUTE";

            break;
          case 3061:
            action = @"DISMISS_REROUTE";

            break;
          case 3062:
            action = @"ATTEMPT_END_NAV";

            break;
          case 3063:
            action = @"DISPLAY_BANNER";

            break;
          case 3064:
            action = @"VIEW_BANNER_DETAILS";

            break;
          case 3065:
            action = @"ENTER_GUIDANCE";

            break;
          case 3066:
            action = @"AUTO_ADVANCE_GUIDANCE";

            break;
          case 3067:
            action = @"TAP_OPEN_WALLET";

            break;
          case 3068:
            action = @"SELECT_VOICE_GUIDANCE_ALL";

            break;
          case 3069:
            action = @"SELECT_VOICE_GUIDANCE_INCIDENTS";

            break;
          case 3070:
            action = @"SELECT_VOICE_GUIDANCE_NONE";

            break;
          case 3071:
            action = @"DISPLAY_CARD";

            break;
          case 3072:
            action = @"RENDER_ROUTE";

            break;
          case 3073:
            action = @"DISPLAY_JUNCTION_VIEW";

            break;
          case 3074:
            action = @"SELECT_DEPARTURE";

            break;
          case 3075:
            action = @"DISPLAY_AR_VIEW_RAISE_BANNER";

            break;
          case 3076:
            action = @"DEVICE_RAISE";

            break;
          case 3077:
            action = @"ENTER_AR_NAV_VIEW";

            break;
          case 3078:
            action = @"EXIT_AR_NAV_VIEW";

            break;
          case 3079:
            action = @"AR_CALIBRATION_START";

            break;
          case 3080:
            action = @"AR_CALIBRATION_FAILURE";

            break;
          case 3081:
            action = @"AR_CALIBRATION_SUCCESS";

            break;
          case 3082:
            action = @"DISPLAY_AR_NAV_ARROW";

            break;
          case 3083:
            action = @"DISPLAY_AR_NAV_TURN_AROUND";

            break;
          case 3084:
            action = @"DISPLAY_GO_OUTSIDE_BANNER";

            break;
          case 3085:
            action = @"DISPLAY_AR_DARKNESS_MESSAGE";

            break;
          case 3086:
            action = @"DISPLAY_AR_NAV_ENDPOINT";

            break;
          case 3087:
            action = @"DISPLAY_ADVISORY_BANNER";

            break;
          case 3088:
            action = @"TAP_SHOW_ADVISORY_DETAILS";

            break;
          default:
            if (action != 4001)
            {
              goto LABEL_200;
            }

            action = @"RECENTER_CURRENT_LOCATION";

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
              action = @"INVOKE_SIRI_SNIPPET";
            }

            else
            {
              action = @"INVOKE_SIRI_DISAMBIGUATION";
            }
          }

          else if (action == 8003)
          {
            action = @"SHOW_PLACE_DETAILS";
          }

          else if (action == 8004)
          {
            action = @"ANSWER_REROUTE_SUGGESTION";
          }

          else
          {
            action = @"SUGGEST_NAV_REROUTE";
          }
        }

        else if (action > 8008)
        {
          switch(action)
          {
            case 0x1F49:
              action = @"INVOKE_SIRI";

              break;
            case 0x1F4A:
              action = @"DISPLAY_SIRI_ERROR_MESSAGE";

              break;
            case 0x1F4B:
              action = @"DISPLAY_NO_RESULTS_MESSAGE";

              break;
            default:
              goto LABEL_200;
          }
        }

        else if (action == 8006)
        {
          action = @"GET_NAV_STATUS";
        }

        else if (action == 8007)
        {
          action = @"REPEAT_NAV_STATUS";
        }

        else
        {
          action = @"SELECT_AUDIO_VOLUME_UNMUTE";
        }
      }

      else
      {
        switch(action)
        {
          case 7001:
            action = @"EXPAND_TRANSIT_SYSTEM";

            break;
          case 7002:
            action = @"COLLAPSE_TRANSIT_SYSTEM";

            break;
          case 7003:
            action = @"SHOW_MORE_DEPARTURES";

            break;
          case 7004:
            action = @"VIEW_TRANSIT_LINE";

            break;
          case 7005:
            action = @"CANCEL_VIEW_TRANSIT_LINE";

            break;
          case 7006:
            action = @"TAP_TRANSIT_ATTRIBUTION";

            break;
          case 7007:
            action = @"TAP_TRANSIT_ADVISORY";

            break;
          case 7008:
            action = @"MORE_DETAILS_TRANSIT_ADVISORY";

            break;
          case 7009:
            action = @"SUBSCRIBE_LINE_INCIDENT";

            break;
          case 7010:
            action = @"UNSUBSCRIBE_LINE_INCIDENT";

            break;
          case 7011:
            action = @"TAP_NEAREST_STATION";

            break;
          case 7012:
            action = @"TAP_NEAREST_STOP";

            break;
          case 7013:
            action = @"TAP_CONNECTION";

            break;
          case 7014:
            action = @"GET_TICKETS";

            break;
          case 7015:
            action = @"OPEN_SCHEDULECARD_DATETIME";

            break;
          case 7016:
            action = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";

            break;
          case 7017:
            action = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";

            break;
          case 7018:
            action = @"VIEW_ON_MAP";

            break;
          case 7019:
            action = @"FORCE_UPDATE_DEPARTURE_INFO";

            break;
          case 7020:
            action = @"TAP_TRANSIT_LINE_INFO";

            break;
          case 7021:
            action = @"TAP_ATTRIBUTION_CELL";

            break;
          case 7022:
            action = @"TAP_NEXT_DEPARTURES";

            break;
          case 7023:
            action = @"VIEW_BANNER";

            break;
          case 7024:
            action = @"GET_SHOWTIMES";

            break;
          case 7025:
            action = @"MAKE_APPOINTMENT";

            break;
          case 7026:
            action = @"RESERVE_PARKING";

            break;
          case 7027:
            action = @"RESERVE_ROOM";

            break;
          case 7028:
            action = @"WAITLIST";

            break;
          case 7029:
            action = @"ORDER_TAKEOUT";

            break;
          case 7030:
            action = @"RESERVE";

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
          action = @"GET_DIRECTIONS";

          break;
        case 6004:
          action = @"TAP_FLYOVER_TOUR";

          break;
        case 6005:
          action = @"REMOVE_PIN";

          break;
        case 6006:
          action = @"TAP_PHOTO";

          break;
        case 6007:
          action = @"TAP_MAPS_VIEW";

          break;
        case 6008:
          action = @"TAP_ADDRESS";

          break;
        case 6009:
          action = @"CALL";

          break;
        case 6010:
          action = @"TAP_URL";

          break;
        case 6011:
          action = @"SHOW_TODAY_HOURS";

          break;
        case 6012:
          action = @"SHOW_ALL_HOURS";

          break;
        case 6013:
          action = @"SHARE";

          break;
        case 6015:
          action = @"ADD_TO_FAVORITES";

          break;
        case 6016:
          action = @"ADD_CONTACT";

          break;
        case 6018:
          action = @"PUNCH_OUT_PHOTO";

          break;
        case 6019:
          action = @"PUNCH_OUT_USEFUL_TO_KNOW";

          break;
        case 6020:
          action = @"PUNCH_OUT_OPEN_APP";

          break;
        case 6021:
          action = @"PUNCH_OUT_SINGLE_REVIEW";

          break;
        case 6022:
          action = @"PUNCH_OUT_CHECK_IN";

          break;
        case 6023:
          action = @"PUNCH_OUT_MORE_INFO";

          break;
        case 6024:
          action = @"PUNCH_OUT_WRITE_REVIEW";

          break;
        case 6025:
          action = @"PUNCH_OUT_ADD_PHOTO";

          break;
        case 6026:
          action = @"TAP_GRID_VIEW";

          break;
        case 6027:
          action = @"EDIT_LOCATION";

          break;
        case 6029:
          action = @"ADD_PHOTO";

          break;
        case 6031:
          action = @"RETAKE";

          break;
        case 6032:
          action = @"ADD_NOTE";

          break;
        case 6033:
          action = @"REMOVE_CAR";

          break;
        case 6034:
          action = @"EDIT_NAME";

          break;
        case 6036:
          action = @"RESERVE_TABLE";

          break;
        case 6037:
          action = @"ADD_TO_QUEUE";

          break;
        case 6038:
          action = @"VIEW_BOOKED_TABLE";

          break;
        case 6039:
          action = @"VIEW_QUEUED_TABLE";

          break;
        case 6040:
          action = @"PUNCH_OUT_THIRD_PARTY_APP";

          break;
        case 6041:
          action = @"PUNCH_OUT_LEGAL_LINK";

          break;
        case 6042:
          action = @"TAP_PLACECARD_HEADER";

          break;
        case 6043:
          action = @"REMOVE_FROM_FAVORITES";

          break;
        case 6044:
          action = @"VIEW_CONTACT";

          break;
        case 6045:
          action = @"CHAT";

          break;
        case 6046:
          action = @"FIND_STORES";

          break;
        case 6047:
          action = @"TAP_PARENT";

          break;
        case 6048:
          action = @"SCROLL_LEFT_PHOTOS";

          break;
        case 6049:
          action = @"SCROLL_RIGHT_PHOTOS";

          break;
        case 6050:
          action = @"PUNCH_OUT";

          break;
        case 6051:
          action = @"TAP_ENTER_MUNIN";

          break;
        case 6052:
          action = @"TAP_RECOMMENDED_DISHES_PHOTO";

          break;
        case 6053:
          action = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";

          break;
        case 6054:
          action = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";

          break;
        case 6055:
          action = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6056:
          action = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";

          break;
        case 6057:
          action = @"SHOW_LINKED_SERVICE_HOURS";

          break;
        case 6058:
          action = @"ENTER_LOOK_AROUND";

          break;
        case 6059:
          action = @"EXIT_LOOK_AROUND";

          break;
        case 6060:
          action = @"TAP_ENTER_LOOK_AROUND_VIEW";

          break;
        case 6061:
          action = @"TAP_ENTER_LOOK_AROUND_PIP";

          break;
        case 6062:
          action = @"EXPAND_LOOK_AROUND_VIEW";

          break;
        case 6063:
          action = @"CLOSE_LOOK_AROUND";

          break;
        case 6064:
          action = @"COLLAPSE_LOOK_AROUND_VIEW";

          break;
        case 6065:
          action = @"TAP_SHOW_ACTIONS";

          break;
        case 6066:
          action = @"TAP_HIDE_LABELS";

          break;
        case 6067:
          action = @"TAP_SHOW_LABELS";

          break;
        case 6068:
          action = @"TAP_SHOW_DETAILS";

          break;
        case 6069:
          action = @"PAN_LOOK_AROUND";

          break;
        case 6070:
          action = @"TAP_LOOK_AROUND_THUMBNAIL";

          break;
        case 6071:
          action = @"TAP_LANDMARK";

          break;
        case 6072:
          action = @"TAP_SCENE";

          break;
        case 6073:
          action = @"SHOW_LINKED_BUSINESS_HOURS";

          break;
        case 6074:
          action = @"TAP_PLACECARD_SHORTCUT";

          break;
        case 6075:
          action = @"SHOW_ALL_LOCATIONS_INSIDE";

          break;
        case 6076:
          action = @"SHOW_ALL_SIMILAR_LOCATIONS";

          break;
        case 6077:
          action = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";

          break;
        case 6078:
          action = @"TAP_PARENT_LOCATION";

          break;
        case 6079:
          action = @"TAP_SIMILAR_LOCATION";

          break;
        case 6080:
          action = @"TAP_LOCATION_INSIDE";

          break;
        case 6081:
          action = @"TAP_LOCATION_AT_ADDRESS";

          break;
        case 6082:
          action = @"CLOSE_ROUTE_GENIUS";

          break;
        case 6083:
          action = @"LOAD_WEB_CONTENT";

          break;
        case 6084:
          action = @"SCROLL_FORWARD_WEB_CONTENT";

          break;
        case 6085:
          action = @"SCROLL_BACKWARD_WEB_CONTENT";

          break;
        case 6086:
          action = @"TAP_WEB_CONTENT";

          break;
        case 6087:
          action = @"SHOW_PHOTO_VIEWER";

          break;
        case 6088:
          action = @"SHOW_LAST_PAGE";

          break;
        case 6089:
          action = @"TAP_VIEW_APP";

          break;
        case 6090:
          action = @"TAP_APP_CLIP";

          break;
        case 6091:
          action = @"DEAD_BATTERY";

          break;
        case 6092:
          action = @"DISMISS_LOW_BATTERY_ALERT";

          break;
        case 6093:
          action = @"DISMISS_OUT_OF_RANGE_ALERT";

          break;
        case 6094:
          action = @"FAILED_TO_LOAD_EV_STATUS";

          break;
        case 6095:
          action = @"LOW_BATTERY_ALERT";

          break;
        case 6096:
          action = @"PAUSE_ROUTE";

          break;
        case 6097:
          action = @"TAP_ADD_STOP";

          break;
        case 6098:
          action = @"TAP_CHARGE_POINT";

          break;
        case 6099:
          action = @"TAP_OUT_OF_RANGE_ALERT";

          break;
        case 6100:
          action = @"SCROLL_DOWN_PHOTOS";

          break;
        case 6101:
          action = @"SCROLL_UP_PHOTOS";

          break;
        case 6102:
          action = @"TAP_MORE_PHOTOS";

          break;
        case 6103:
          action = @"TAP_TO_CONFIRM_INCIDENT";

          break;
        case 6104:
          action = @"SHOW_INCIDENT";

          break;
        case 6105:
          action = @"REVEAL_APP_CLIP";

          break;
        case 6106:
          action = @"ORDER_DELIVERY";

          break;
        case 6107:
          action = @"VIEW_MENU";

          break;
        case 6108:
          action = @"TAP_EDIT_STOPS";

          break;
        case 6109:
          action = @"LEARN_MORE_WEB_CONTENT";

          break;
        case 6110:
          action = @"MAKE_APPOINTMENT_WEB_CONTENT";

          break;
        case 6111:
          action = @"REVEAL_SHOWCASE";

          break;
        case 6112:
          action = @"TAP_ACTION_BAR";

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
          action = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";

          break;
        case 10102:
          action = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";

          break;
        case 10103:
          action = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";

          break;
        case 10104:
          action = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";

          break;
        case 10105:
          action = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";

          break;
        case 10106:
          action = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";

          break;
        case 10107:
          action = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";

          break;
        case 10108:
          action = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";

          break;
        case 10109:
          action = @"RAP_CANCEL";

          break;
        case 10110:
          action = @"RAP_NEXT";

          break;
        case 10111:
          action = @"RAP_BACK";

          break;
        case 10112:
          action = @"RAP_SEND";

          break;
        case 10113:
          action = @"RAP_SKIP";

          break;
        case 10114:
          action = @"RAP_SHOW_MORE";

          break;
        case 10115:
          action = @"RAP_ADD_PHOTO";

          break;
        case 10116:
          action = @"RAP_MAP_INCORRECT";

          break;
        case 10117:
          action = @"RAP_BAD_DIRECTIONS";

          break;
        case 10118:
          action = @"RAP_TRANSIT_INFO_INCORRECT";

          break;
        case 10119:
          action = @"RAP_SATELLITE_IMAGE_PROBLEM";

          break;
        case 10120:
          action = @"RAP_SEARCH_RESULTS_INCORRECT";

          break;
        case 10121:
          action = @"RAP_ADD_A_PLACE";

          break;
        case 10122:
          action = @"RAP_HOME";

          break;
        case 10123:
          action = @"RAP_WORK";

          break;
        case 10124:
          action = @"RAP_OTHER";

          break;
        case 10125:
          action = @"RAP_LOCATION";

          break;
        case 10126:
          action = @"RAP_TRANSIT_STATION_INFO_INCORRECT";

          break;
        case 10127:
          action = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";

          break;
        case 10128:
          action = @"RAP_TRANSIT_LINE_INFO_INCORRECT";

          break;
        case 10129:
          action = @"RAP_TRANSIT_LINE_NAME_INCORRECT";

          break;
        case 10130:
          action = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";

          break;
        case 10131:
          action = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";

          break;
        case 10132:
          action = @"RAP_TRANSIT_DELAY";

          break;
        case 10133:
          action = @"RAP_LOCATION_CLOSED";

          break;
        case 10134:
          action = @"RAP_CLOSED_PERMANENTLY";

          break;
        case 10135:
          action = @"RAP_CLOSED_TEMPORARILY";

          break;
        case 10136:
          action = @"RAP_HOURS_HAVE_CHANGED";

          break;
        case 10137:
          action = @"RAP_SELECT_STATION";

          break;
        case 10138:
          action = @"RAP_SELECT_LINE";

          break;
        case 10139:
          action = @"RAP_SELECT_ACCESS_POINT";

          break;
        case 10140:
          action = @"RAP_SELECT_SEARCH";

          break;
        case 10141:
          action = @"RAP_PAN_MAP";

          break;
        case 10142:
          action = @"RAP_CENTER_MAP_ON_USER";

          break;
        case 10143:
          action = @"RAP_SEARCH_UNEXPECTED";

          break;
        case 10144:
          action = @"RAP_ADD_POI";

          break;
        case 10145:
          action = @"RAP_ADD_STREET_ADDRESS";

          break;
        case 10146:
          action = @"RAP_ADD_OTHER";

          break;
        case 10147:
          action = @"RAP_SELECT_CATEGORY";

          break;
        case 10148:
          action = @"RAP_TAKE_PHOTO";

          break;
        case 10149:
          action = @"RAP_RETAKE_PHOTO";

          break;
        case 10150:
          action = @"RAP_PLACE_DETAILS";

          break;
        case 10151:
          action = @"RAP_SATELLITE_IMAGE_OUTDATED";

          break;
        case 10152:
          action = @"RAP_SATELLITE_IMAGE_QUALITY";

          break;
        case 10153:
          action = @"RAP_SELECT_LABEL";

          break;
        case 10154:
          action = @"RAP_SELECT_ROUTE";

          break;
        case 10155:
          action = @"RAP_CLAIM_BUSINESS";

          break;
        case 10156:
          action = @"RAP_BRAND_DETAILS";

          break;
        case 10157:
          action = @"RAP_LOOK_AROUND_IMAGE_QUALITY";

          break;
        case 10158:
          action = @"RAP_LOOK_AROUND_LABELS_STREET";

          break;
        case 10159:
          action = @"RAP_LOOK_AROUND_BLURRING";

          break;
        case 10160:
          action = @"RAP_LOOK_AROUND_REMOVE_HOME";

          break;
        case 10161:
          action = @"RAP_LOOK_AROUND_LABELS_STORE";

          break;
        case 10162:
          action = @"RAP_LOOK_AROUND_PRIVACY";

          break;
        case 10163:
          action = @"RAP_INCORRECT_HOURS";

          break;
        case 10164:
          action = @"RAP_INCORRECT_ADDRESS";

          break;
        case 10165:
          action = @"RAP_EDIT_PLACE_DETAILS";

          break;
        case 10166:
          action = @"RAP_EDIT_PLACE_NAME";

          break;
        case 10167:
          action = @"RAP_EDIT_ADDRESS";

          break;
        case 10168:
          action = @"RAP_ADD_CATEGORY";

          break;
        case 10169:
          action = @"RAP_REMOVE_CATEGORY";

          break;
        case 10170:
          action = @"RAP_DESELECT_CATEGORY";

          break;
        case 10171:
          action = @"RAP_ADD_HOURS";

          break;
        case 10172:
          action = @"RAP_REMOVE_HOURS";

          break;
        case 10173:
          action = @"RAP_TAP_DAY_OF_WEEK";

          break;
        case 10174:
          action = @"RAP_TAP_24_HOURS_BUTTON";

          break;
        case 10175:
          action = @"RAP_TAP_OPEN_TIME";

          break;
        case 10176:
          action = @"RAP_TAP_CLOSED_TIME";

          break;
        case 10177:
          action = @"RAP_TAP_TEMPORARY_CLOSURE";

          break;
        case 10178:
          action = @"RAP_TAP_PERMANENTLY_CLOSED";

          break;
        case 10179:
          action = @"RAP_EDIT_WEBSITE";

          break;
        case 10180:
          action = @"RAP_EDIT_PHONE_NUMBER";

          break;
        case 10181:
          action = @"RAP_TAP_ACCEPTS_APPLE_PAY";

          break;
        case 10182:
          action = @"RAP_ADD_COMMENTS";

          break;
        case 10183:
          action = @"RAP_EDIT_LOCATION";

          break;
        case 10184:
          action = @"RAP_VIEW_LOCATION";

          break;
        case 10185:
          action = @"RAP_ZOOM_IN";

          break;
        case 10186:
          action = @"RAP_ZOOM_OUT";

          break;
        case 10187:
          action = @"RAP_VIEW_ENTRY_POINTS";

          break;
        case 10188:
          action = @"RAP_EDIT_EXISTING_ENTRY_POINT";

          break;
        case 10189:
          action = @"RAP_ADD_NEW_ENTRY_POINT";

          break;
        case 10190:
          action = @"RAP_REMOVE_ENTRY_POINT";

          break;
        case 10191:
          action = @"RAP_SELECT_ENTRY_POINT_TYPE";

          break;
        default:
          switch(action)
          {
            case 9001:
              action = @"TAP_WIDGET_ITEM";

              break;
            case 9002:
              action = @"DISPLAY_NOTIFICATION";

              break;
            case 9003:
              action = @"TAP_NOTIFICATION";

              break;
            case 9004:
              action = @"EXPAND_NOTIFICATION";

              break;
            case 9005:
              action = @"DISMISS_NOTIFICATION";

              break;
            case 9006:
              action = @"OPEN_SEARCH";

              break;
            case 9007:
              action = @"OPEN_PAN_VIEW";

              break;
            case 9008:
              action = @"PAN_LEFT";

              break;
            case 9009:
              action = @"PAN_UP";

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
              action = @"PAN_DOWN";

              break;
            case 9012:
              action = @"TAP_RECENT_DESTINATIONS";

              break;
            case 9013:
              action = @"OPEN_DESTINATIONS";

              break;
            case 9014:
              action = @"OPEN_FAVORITES";

              break;
            case 9015:
              action = @"VIEW_NAV_OPTIONS";

              break;
            case 9016:
              action = @"START_NAV_NO_GUIDANCE";

              break;
            case 9017:
              action = @"TURN_OFF_GUIDANCE";

              break;
            case 9018:
              action = @"TURN_ON_GUIDANCE";

              break;
            case 9019:
              action = @"OPEN_KEYBOARD";

              break;
            case 9020:
              action = @"SHARE_DESTINATION";

              break;
            case 9021:
              action = @"START_NAV_AUTOMATED";

              break;
            case 9022:
              action = @"SHARE_ETA";

              break;
            case 9023:
              action = @"SELECT_GROUP";

              break;
            case 9024:
              action = @"DESELECT_GROUP";

              break;
            case 9025:
              action = @"SELECT_CONTACT";

              break;
            case 9026:
              action = @"DESELECT_CONTACT";

              break;
            case 9027:
              action = @"TAP_VIEW_CONTACTS";

              break;
            case 9028:
              action = @"STOP_RECEIVING_ETA";

              break;
            case 9029:
              action = @"DISPLAY_ANNOUNCEMENT";

              break;
            case 9030:
              action = @"TAP_ANNOUNCEMENT";

              break;
            case 9031:
              action = @"DISPLAY_CYCLING_NOTIFICATION";

              break;
            case 9032:
              action = @"TAP_CYCLING_NOTIFICATION";

              break;
            case 9033:
              action = @"SHARE_CYCLING_ETA";

              break;
            case 9034:
              action = @"MANAGE_NOTIFICATIONS";

              break;
            case 9035:
              action = @"PUNCH_OUT_PUBLISHER_REVIEW";

              break;
            case 9036:
              action = @"SCROLL_FORWARD";

              break;
            case 9037:
              action = @"SCROLL_BACKWARD";

              break;
            case 9038:
              action = @"SHOW_ALL_CURATED_COLLECTIONS";

              break;
            case 9039:
              action = @"TAP_LESS";

              break;
            case 9040:
              action = @"TAP_MORE";

              break;
            case 9101:
              action = @"DISPLAY_ADD_HOME_AND_WORK";

              break;
            case 9102:
              action = @"TAP_ADD_HOME_AND_WORK";

              break;
            case 9103:
              action = @"DISPLAY_ALLOW_FREQUENTS";

              break;
            case 9104:
              action = @"TAP_ALLOW_FREQUENTS";

              break;
            case 9105:
              action = @"DISPLAY_ALLOW_LOCATION";

              break;
            case 9106:
              action = @"TAP_ALLOW_LOCATION";

              break;
            default:
              switch(action)
              {
                case 11001:
                  action = @"EXIT_MAPS_LOWER_WRIST";

                  break;
                case 11002:
                  action = @"TASK_READY";

                  break;
                case 11003:
                  action = @"TAP_SEARCH";

                  break;
                case 11004:
                  action = @"TAP_MY_LOCATION";

                  break;
                case 11005:
                  action = @"SHOW_NEARBY";

                  break;
                case 11006:
                  action = @"TAP_NEARBY";

                  break;
                case 11007:
                  action = @"TAP_PROACTIVE";

                  break;
                case 11008:
                  action = @"FORCE_PRESS";

                  break;
                case 11009:
                  action = @"TAP_CONTACTS";

                  break;
                case 11010:
                  action = @"TAP_TRANSIT";

                  break;
                case 11011:
                  action = @"TAP_DICTATION";

                  break;
                case 11012:
                  action = @"GET_DIRECTIONS_DRIVING";

                  break;
                case 11013:
                  action = @"GET_DIRECTIONS_WALKING";

                  break;
                case 11014:
                  action = @"GET_DIRECTIONS_TRANSIT";

                  break;
                case 11015:
                  action = @"OPEN_STANDARD_MAP";

                  break;
                case 11016:
                  action = @"OPEN_TRANSIT_MAP";

                  break;
                case 11017:
                  action = @"START_NAV_AUTO";

                  break;
                case 11018:
                  action = @"TAP_RECENT";

                  break;
                case 11019:
                  action = @"TAP_FAVORITE";

                  break;
                case 11020:
                  action = @"TAP_SCRIBBLE";

                  break;
                case 11021:
                  action = @"TAP_VIEW_MAP";

                  break;
                case 11022:
                  action = @"TAP_VIEW_TBT";

                  break;
                case 11023:
                  action = @"VIEW_ROUTE_INFO";

                  break;
                case 11024:
                  action = @"NAV_UNMUTE";

                  break;
                case 11025:
                  action = @"NAV_MUTE";

                  break;
                case 11026:
                  action = @"GET_DIRECTIONS_CYCLING";

                  break;
                case 11027:
                  action = @"TAP_SEARCH_HOME";

                  break;
                case 11028:
                  action = @"ROUTE_PAUSED_ON_WATCH";

                  break;
                case 11029:
                  action = @"NEXT_STOP_TAPPED_ON_WATCH";

                  break;
                default:
                  goto LABEL_200;
              }

              break;
          }

          break;
      }

      return action;
    }

    if (action > 16000)
    {
      switch(action)
      {
        case 17001:
          action = @"START_DRAG";

          break;
        case 17002:
          action = @"CANCEL_DRAG";

          break;
        case 17003:
          action = @"COMPLETE_DRAG";

          break;
        case 17004:
          action = @"START_DROP";

          break;
        case 17005:
          action = @"CANCEL_DROP";

          break;
        case 17006:
          action = @"COMPLETE_DROP";

          break;
        case 17007:
          action = @"ANNOTATION_SELECT";

          break;
        case 17008:
          action = @"ANNOTATION_SELECT_AUTO";

          break;
        case 17009:
          action = @"ANNOTATION_SELECT_LIST";

          break;
        case 17010:
          action = @"BROWSE_TOP_CATEGORY_DISPLAYED";

          break;
        case 17011:
          action = @"CALLOUT_FLYOVER_TOUR";

          break;
        case 17012:
          action = @"CALLOUT_INFO";

          break;
        case 17013:
          action = @"CALLOUT_NAV_TRANSIT";

          break;
        case 17014:
          action = @"CALLOUT_TRAFFIC_INCIDENT_INFO";

          break;
        case 17015:
          action = @"CALLOUT_VIEW_TRANSIT_LINE";

          break;
        case 17016:
          action = @"DIRECTIONS_SELECT";

          break;
        case 17017:
          action = @"DIRECTIONS_TRANSIT_CUSTOM";

          break;
        case 17018:
          action = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";

          break;
        case 17019:
          action = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";

          break;
        case 17020:
          action = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";

          break;
        case 17021:
          action = @"DIRECTIONS_TRANSIT_LATER";

          break;
        case 17022:
          action = @"DIRECTIONS_TRANSIT_NOW";

          break;
        case 17023:
          action = @"FLYOVER_NOTIFICATION_DISMISS";

          break;
        case 17024:
          action = @"FLYOVER_NOTIFICATION_START";

          break;
        case 17025:
          action = @"FLYOVER_TOUR_COMPLETED";

          break;
        case 17026:
          action = @"FLYOVER_TOUR_END";

          break;
        case 17027:
          action = @"FLYOVER_TOUR_NOTIFICATION";

          break;
        case 17028:
          action = @"FLYOVER_TOUR_START";

          break;
        case 17029:
          action = @"INFO_BOOKMARKS";

          break;
        case 17030:
          action = @"INFO_CARD_DETACHED";

          break;
        case 17031:
          action = @"INFO_CONTACTS";

          break;
        case 17032:
          action = @"INFO_DIRECTIONS";

          break;
        case 17033:
          action = @"INFO_DIRECTIONS_FROM";

          break;
        case 17034:
          action = @"INFO_DIRECTIONS_TO";

          break;
        case 17035:
          action = @"INFO_DISMISS";

          break;
        case 17036:
          action = @"INFO_INFO";

          break;
        case 17037:
          action = @"INFO_PHOTOS";

          break;
        case 17038:
          action = @"INFO_REVIEWS";

          break;
        case 17039:
          action = @"INFO_SHARE";

          break;
        case 17040:
          action = @"INFO_SHARE_AIRDROP";

          break;
        case 17041:
          action = @"INFO_SHARE_FACEBOOK";

          break;
        case 17042:
          action = @"INFO_SHARE_MAIL";

          break;
        case 17043:
          action = @"INFO_SHARE_MESSAGE";

          break;
        case 17044:
          action = @"INFO_SHARE_TENCENTWEIBO";

          break;
        case 17045:
          action = @"INFO_SHARE_WEIBO";

          break;
        case 17046:
          action = @"INFO_YELP";

          break;
        case 17047:
          action = @"MAPS_APP_LAUNCH";

          break;
        case 17048:
          action = @"MAP_3D_OFF";

          break;
        case 17049:
          action = @"MAP_3D_ON";

          break;
        case 17050:
          action = @"MAP_OPTIONS_DROP_PIN";

          break;
        case 17051:
          action = @"MAP_OPTIONS_HYBRID";

          break;
        case 17052:
          action = @"MAP_OPTIONS_PRINT";

          break;
        case 17053:
          action = @"MAP_OPTIONS_REMOVE_PIN";

          break;
        case 17054:
          action = @"MAP_OPTIONS_SATELLITE";

          break;
        case 17055:
          action = @"MAP_OPTIONS_STANDARD";

          break;
        case 17056:
          action = @"MAP_OPTIONS_TRAFFIC_HIDE";

          break;
        case 17057:
          action = @"MAP_OPTIONS_TRAFFIC_SHOW";

          break;
        case 17058:
          action = @"MAP_OPTIONS_TRANSIT";

          break;
        case 17059:
          action = @"MAP_TAP_FLYOVER_CITY";

          break;
        case 17060:
          action = @"MAP_TAP_LINE";

          break;
        case 17061:
          action = @"MAP_TAP_POI_TRANSIT";

          break;
        case 17062:
          action = @"MAP_TAP_TRAFFIC_INCIDENT";

          break;
        case 17063:
          action = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";

          break;
        case 17064:
          action = @"MAP_USER_TRACKING_OFF";

          break;
        case 17065:
          action = @"MAP_USER_TRACKING_ON";

          break;
        case 17066:
          action = @"MAP_USER_TRACKING_WITH_HEADING_ON";

          break;
        case 17067:
          action = @"NAV_CLEAR";

          break;
        case 17068:
          action = @"NAV_LIST";

          break;
        case 17069:
          action = @"NAV_ROUTE_STEP_NEXT";

          break;
        case 17070:
          action = @"NAV_ROUTE_STEP_PREV";

          break;
        case 17071:
          action = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";

          break;
        case 17072:
          action = @"ORB_DISPLAY_MENU";

          break;
        case 17073:
          action = @"ORB_MENU_CALL";

          break;
        case 17074:
          action = @"ORB_MENU_DIRECTIONS";

          break;
        case 17075:
          action = @"ORB_MENU_DISMISS";

          break;
        case 17076:
          action = @"ORB_MENU_SHARE";

          break;
        case 17077:
          action = @"ORB_MENU_SHOW_PLACECARD";

          break;
        case 17078:
          action = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";

          break;
        case 17079:
          action = @"ORB_MENU_URL";

          break;
        case 17080:
          action = @"ORB_PRESS";

          break;
        case 17081:
          action = @"ORB_SPRINGBOARD_MARK_LOCATION";

          break;
        case 17082:
          action = @"ORB_SPRINGBOARD_SEARCH";

          break;
        case 17083:
          action = @"ORB_SPRINGBOARD_SHARE_LOCATION";

          break;
        case 17084:
          action = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";

          break;
        case 17085:
          action = @"RAP_PERMISSION_CANCEL";

          break;
        case 17086:
          action = @"RAP_PERMISSION_EMAIL_NA";

          break;
        case 17087:
          action = @"RAP_PERMISSION_EMAIL_OK";

          break;
        case 17088:
          action = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";

          break;
        case 17089:
          action = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";

          break;
        case 17090:
          action = @"RAP_PERMISSION_OK";

          break;
        case 17091:
          action = @"SEARCH_BEGIN";

          break;
        case 17092:
          action = @"SEARCH_CANCEL";

          break;
        case 17093:
          action = @"SEARCH_SELECT";

          break;
        case 17094:
          action = @"TRANSIT_LINE_SELECTION_DISMISS";

          break;
        case 17095:
          action = @"TRANSIT_LINE_SELECTION_VIEW";

          break;
        case 17096:
          action = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";

          break;
        case 17097:
          action = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";

          break;
        case 17098:
          action = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";

          break;
        case 17099:
          action = @"UNKNOWN_ACTION";

          break;
        case 17100:
          action = @"INFO_SHARE_TWITTER";

          break;
        case 17101:
          action = @"INFO_TAP_POPULAR_APP_NEARBY";

          break;
        case 17102:
          action = @"INFO_DIRECTIONS_WALK";

          break;
        case 17103:
          action = @"INFO_DIRECTIONS_TRANSIT";

          break;
        case 17104:
          action = @"INFO_DIRECTIONS_DRIVE";

          break;
        case 17105:
          action = @"INFO_REPORT_A_PROBLEM";

          break;
        case 17106:
          action = @"CALLOUT_NAV";

          break;
        case 17107:
          action = @"RAP_PERMISSION_EMAIL_CANCEL";

          break;
        case 17108:
          action = @"MAP_TAP_POI";

          break;
        default:
          if (action == 16001)
          {
            action = @"SEARCH_IN_MAPS";
          }

          else
          {
            if (action != 90010)
            {
              goto LABEL_200;
            }

            action = @"PAN_RIGHT";
          }

          break;
      }

      return action;
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
              action = @"ADD_SPECIAL_REQUEST";

              break;
            case 0x2EE9:
              action = @"CHANGE_RESERVATION";

              break;
            case 0x2EEA:
              action = @"LEARN_MORE";

              break;
            default:
              goto LABEL_200;
          }
        }

        else if (action > 13002)
        {
          if (action == 13003)
          {
            action = @"SELECT_LABEL";
          }

          else
          {
            action = @"DELETE_ADDRESS";
          }
        }

        else if (action == 13001)
        {
          action = @"SELECT_ADDRESS";
        }

        else
        {
          action = @"ADD_ADDRESS";
        }
      }

      else if (action <= 12003)
      {
        if (action == 12001)
        {
          action = @"VIEW_MORE_OPTIONS";
        }

        else if (action == 12002)
        {
          action = @"SELECT_TIME";
        }

        else
        {
          action = @"SHOW_NEXT_AVAILABLE";
        }
      }

      else if (action > 12005)
      {
        if (action == 12006)
        {
          action = @"EDIT_BOOKING";
        }

        else
        {
          action = @"EDIT_PHONE";
        }
      }

      else if (action == 12004)
      {
        action = @"DECREASE_TABLE_SIZE";
      }

      else
      {
        action = @"INCREASE_TABLE_SIZE";
      }
    }

    else if (action <= 14004)
    {
      if (action <= 14000)
      {
        switch(action)
        {
          case 0x32CD:
            action = @"EDIT_ITEMS";

            break;
          case 0x32CE:
            action = @"RAP_FAVORITES";

            break;
          case 0x32CF:
            action = @"SORT_LIST_ITEM";

            break;
          default:
            goto LABEL_200;
        }
      }

      else if (action > 14002)
      {
        if (action == 14003)
        {
          action = @"BOOK_RIDE";
        }

        else
        {
          action = @"REQUEST_RIDE";
        }
      }

      else if (action == 14001)
      {
        action = @"VIEW_APP";
      }

      else
      {
        action = @"ENABLE";
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
            action = @"ENABLE_ALL_RIDESHARE_APPS";
          }

          else
          {
            action = @"TAP_FOR_MORE_RIDES";
          }
        }

        else if (action == 14005)
        {
          action = @"CONTACT_DRIVER";
        }

        else
        {
          action = @"CHANGE_PAYMENT";
        }

        return action;
      }

      if (action > 15001)
      {
        if (action == 15002)
        {
          action = @"ORB_POP";
        }

        else
        {
          if (action != 15003)
          {
            goto LABEL_200;
          }

          action = @"ORB_DISMISS";
        }
      }

      else
      {
        if (action != 14009)
        {
          if (action == 15001)
          {
            action = @"ORB_PEEK";

            return action;
          }

LABEL_200:
          action = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
LABEL_201:

          return action;
        }

        action = @"SUBMIT_TRIP_FEEDBACK";
      }
    }
  }

  return action;
}

- (BOOL)_isValidTargetForNavUI:(int)i
{
  result = 1;
  if (i > 400)
  {
    if ((i - 401) >= 3 && i != 802)
    {
      return 0;
    }
  }

  else if ((i - 301) >= 3 && i != 104)
  {
    return 0;
  }

  return result;
}

- (id)_siriIntentHash:(id)hash
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
      _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
      v4 = _geoMapItem;
      if (_geoMapItem)
      {
        if ([_geoMapItem _hasMUID])
        {
          addressObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"muid=%llu", objc_msgSend(v4, "_muid")];
          v5 = [MKSiriInteraction _siriIntentMurmurHash:addressObject];
        }

        else
        {
          addressObject = [v4 addressObject];
          v8 = MEMORY[0x1E696AEC0];
          v9 = [addressObject fullAddressWithMultiline:0];
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

- (MKSiriInteraction)initWithGEOUIAction:(int)action target:(int)target mapItem:(id)item resultIndex:(int)index searchCategory:(id)category searchQueryString:(id)string
{
  itemCopy = item;
  categoryCopy = category;
  stringCopy = string;
  v21.receiver = self;
  v21.super_class = MKSiriInteraction;
  v18 = [(MKSiriInteraction *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_action = action;
    v18->_target = target;
    objc_storeStrong(&v18->_mapItem, item);
    v19->_resultIndex = index;
    objc_storeStrong(&v19->_searchCategory, category);
    objc_storeStrong(&v19->_searchQueryString, string);
  }

  return v19;
}

+ (id)_siriIntentMurmurHash:(id)hash
{
  v3 = MEMORY[0x1E695DF88];
  hashCopy = hash;
  v5 = [[v3 alloc] initWithLength:16];
  [hashCopy UTF8String];
  [hashCopy lengthOfBytesUsingEncoding:4];

  [v5 mutableBytes];
  _GEOMurmurHash3_128_realign();
  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

+ (void)generateHashForNavigationURL:(id)l
{
  if (l)
  {
    absoluteString = [l absoluteString];
    [MKSiriInteraction _siriIntentMurmurHash:?];
  }

  else
  {
    absoluteString = [MEMORY[0x1E696AFB0] UUID];
    [absoluteString UUIDString];
  }
  v3 = ;
  v4 = s_navigationHash;
  s_navigationHash = v3;
}

+ (void)removeRecentIntentWithSearchText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    v4 = textCopy;
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

+ (void)removeRecentIntentWithPlacemark:(id)placemark
{
  if (placemark)
  {
    _geoMapItem = [placemark _geoMapItem];
    if (_geoMapItem)
    {
      v11 = _geoMapItem;
      if ([_geoMapItem _hasMUID])
      {
        v4 = MEMORY[0x1E696E8B8];
        addressObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"muid=%llu", objc_msgSend(v11, "_muid")];
        v6 = [MKSiriInteraction _siriIntentMurmurHash:addressObject];
        [v4 deleteInteractionsWithGroupIdentifier:v6 completion:0];
      }

      else
      {
        addressObject = [v11 addressObject];
        v7 = MEMORY[0x1E696E8B8];
        v8 = MEMORY[0x1E696AEC0];
        v6 = [addressObject fullAddressWithMultiline:0];
        v9 = [v8 stringWithFormat:@"address=%@", v6];
        v10 = [MKSiriInteraction _siriIntentMurmurHash:v9];
        [v7 deleteInteractionsWithGroupIdentifier:v10 completion:0];
      }

      _geoMapItem = v11;
    }
  }
}

@end