@interface RAPAnalyticsManager
+ (id)_requestParametersFromReport:(id)report;
+ (id)_valueFromReport:(id)report;
+ (int)_targetFromFeedbackType:(int)type;
+ (int)_targetFromReport:(id)report;
+ (void)_captureRAPUserAction:(int)action target:(int)target value:(id)value report:(id)report muid:(unint64_t)muid;
+ (void)_captureRAPUserAction:(int)action target:(int)target value:(id)value report:(id)report requestParameters:(id)parameters duration:(id)duration muid:(unint64_t)muid;
+ (void)captureRAPCancelActionFromReport:(id)report forMuid:(unint64_t)muid;
+ (void)captureRAPCancelSearchActionFromReport:(id)report;
+ (void)captureRAPRevealActionFromReport:(id)report forMuid:(unint64_t)muid;
+ (void)captureRAPSendActionFromReport:(id)report forMuid:(unint64_t)muid;
@end

@implementation RAPAnalyticsManager

+ (id)_valueFromReport:(id)report
{
  reportCopy = report;
  initialQuestion = [reportCopy initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    initialQuestion2 = [reportCopy initialQuestion];
    questionType = [initialQuestion2 questionType];
    if ((questionType - 13) > 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(&off_101661CB0 + (questionType - 13));
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int)_targetFromFeedbackType:(int)type
{
  if ((type - 2) > 0x13)
  {
    return 0;
  }

  else
  {
    return dword_101216340[type - 2];
  }
}

+ (int)_targetFromReport:(id)report
{
  reportCopy = report;
  initialQuestion = [reportCopy initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_22;
  }

  initialQuestion2 = [reportCopy initialQuestion];
  questionType = [initialQuestion2 questionType];
  v8 = 32;
  if (questionType > 16)
  {
    if (questionType > 23)
    {
      if ((questionType - 24) < 4)
      {
        goto LABEL_23;
      }

      if (questionType == 28)
      {
        goto LABEL_5;
      }

      if (questionType == 29)
      {
        v8 = 61;
        goto LABEL_23;
      }
    }

    else
    {
      if ((questionType - 17) < 4)
      {
        v8 = 63;
        goto LABEL_23;
      }

      if ((questionType - 21) < 2)
      {
        v8 = 43;
        goto LABEL_23;
      }

      if (questionType == 23)
      {
        v8 = 34;
        goto LABEL_23;
      }
    }

    goto LABEL_21;
  }

  if (questionType > 8)
  {
    if ((questionType - 9) < 4)
    {
      goto LABEL_23;
    }

    if ((questionType - 13) < 4)
    {
      v8 = 62;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if ((questionType - 2) >= 7)
  {
    if (questionType == 1)
    {
      goto LABEL_23;
    }

LABEL_21:

LABEL_22:
    initialQuestion2 = [RAPAnalyticsManager _requestParametersFromReport:reportCopy];
    submissionParameters = [initialQuestion2 submissionParameters];
    type = [submissionParameters type];

    v8 = [RAPAnalyticsManager _targetFromFeedbackType:type];
    goto LABEL_23;
  }

LABEL_5:
  v8 = 35;
LABEL_23:

  return v8;
}

+ (id)_requestParametersFromReport:(id)report
{
  newFeedbackRequestParameters = [report newFeedbackRequestParameters];
  submissionParameters = [newFeedbackRequestParameters submissionParameters];
  [submissionParameters setFeedbackType];

  return newFeedbackRequestParameters;
}

+ (void)_captureRAPUserAction:(int)action target:(int)target value:(id)value report:(id)report requestParameters:(id)parameters duration:(id)duration muid:(unint64_t)muid
{
  parametersCopy = parameters;
  durationCopy = duration;
  valueCopy = value;
  combinedUserPath = [report combinedUserPath];
  if ([combinedUserPath nativePathsCount])
  {
    v22 = [combinedUserPath nativePathAtIndex:0];
  }

  else
  {
    v22 = 0;
  }

  submissionParameters = [parametersCopy submissionParameters];
  type = [submissionParameters type];

  v16 = +[RAPWebBundleDownloadManager sharedInstance];
  v27 = 0;
  v17 = [v16 loadWebBundleManifestWithError:&v27];

  v18 = GEOConfigGetString();
  v19 = GEOConfigGetString();
  webPaths = [combinedUserPath webPaths];
  version = [v17 version];
  [GEOAPPortal captureRAPUserAction:action target:target value:valueCopy entryPoint:v22 feedbackType:type muid:muid feedbackFieldOptionKeys:webPaths rapServerManifestVersion:version duration:durationCopy rapABManifestVersion:v18 rapAPBranchId:v19];
}

+ (void)_captureRAPUserAction:(int)action target:(int)target value:(id)value report:(id)report muid:(unint64_t)muid
{
  v9 = *&target;
  v10 = *&action;
  reportCopy = report;
  valueCopy = value;
  v13 = [RAPAnalyticsManager _requestParametersFromReport:reportCopy];
  [RAPAnalyticsManager _captureRAPUserAction:v10 target:v9 value:valueCopy report:reportCopy requestParameters:v13 duration:0 muid:muid];
}

+ (void)captureRAPSendActionFromReport:(id)report forMuid:(unint64_t)muid
{
  reportCopy = report;
  v5 = [RAPAnalyticsManager _targetFromReport:reportCopy];
  v6 = [RAPAnalyticsManager _requestParametersFromReport:reportCopy];
  v7 = [RAPAnalyticsManager _valueFromReport:reportCopy];
  if (v5 == 33)
  {
    submissionParameters = [v6 submissionParameters];
    details = [submissionParameters details];
    curatedCollectionFeedback = [details curatedCollectionFeedback];
    curatedCollectionCorrections = [curatedCollectionFeedback curatedCollectionCorrections];

    v12 = [curatedCollectionCorrections correctionTypeAsString:{objc_msgSend(curatedCollectionCorrections, "correctionType")}];

    v7 = v12;
  }

  creationDate = [reportCopy creationDate];
  [creationDate timeIntervalSinceNow];
  v15 = v14;
  creationDate2 = [reportCopy creationDate];
  [creationDate2 timeIntervalSinceNow];
  if (v15 < 0.0)
  {
    v18 = -v17;
  }

  else
  {
    v18 = v17;
  }

  v19 = [NSNumber numberWithDouble:v18];
  [RAPAnalyticsManager _captureRAPUserAction:10112 target:v5 value:v7 report:reportCopy requestParameters:v6 duration:v19 muid:muid];
}

+ (void)captureRAPCancelSearchActionFromReport:(id)report
{
  reportCopy = report;
  v4 = [RAPAnalyticsManager _targetFromReport:reportCopy];
  v6 = [RAPAnalyticsManager _valueFromReport:reportCopy];
  v5 = [RAPAnalyticsManager _requestParametersFromReport:reportCopy];
  [RAPAnalyticsManager _captureRAPUserAction:2003 target:v4 value:v6 report:reportCopy requestParameters:v5 duration:0 muid:0];
}

+ (void)captureRAPCancelActionFromReport:(id)report forMuid:(unint64_t)muid
{
  reportCopy = report;
  v6 = [RAPAnalyticsManager _targetFromReport:reportCopy];
  v8 = [RAPAnalyticsManager _valueFromReport:reportCopy];
  v7 = [RAPAnalyticsManager _requestParametersFromReport:reportCopy];
  [RAPAnalyticsManager _captureRAPUserAction:10109 target:v6 value:v8 report:reportCopy requestParameters:v7 duration:0 muid:muid];
}

+ (void)captureRAPRevealActionFromReport:(id)report forMuid:(unint64_t)muid
{
  reportCopy = report;
  v5 = [RAPAnalyticsManager _targetFromReport:reportCopy];
  v6 = [RAPAnalyticsManager _valueFromReport:reportCopy];
  v7 = [RAPAnalyticsManager _requestParametersFromReport:reportCopy];
  [RAPAnalyticsManager _captureRAPUserAction:21 target:v5 value:v6 report:reportCopy requestParameters:v7 duration:0 muid:muid];
  if (v5 > 1000)
  {
    if (v5 > 1400)
    {
      if (v5 > 1705)
      {
        if (v5 > 1806)
        {
          if (v5 <= 1899)
          {
            if (v5 <= 1808)
            {
              if (v5 == 1807)
              {
                v8 = @"MAPS_WEB_RELATED_PLACES_LIST";
              }

              else
              {
                v8 = @"MAPS_WEB_COLLECTION_LIST";
              }

              goto LABEL_571;
            }

            if (v5 == 1809)
            {
              v8 = @"MAPS_WEB_DIRECTIONS";
              goto LABEL_571;
            }

            if (v5 == 1810)
            {
              v8 = @"MAPS_WEB_SIDEBAR";
              goto LABEL_571;
            }
          }

          else
          {
            if (v5 <= 1901)
            {
              if (v5 == 1900)
              {
                v8 = @"FIND_MY_AIR_TAG_VIEW";
              }

              else
              {
                v8 = @"FIND_MY_AIR_PODS_VIEW";
              }

              goto LABEL_571;
            }

            switch(v5)
            {
              case 0x76E:
                v8 = @"FIND_MY_ACCESSORY_VIEW";
                goto LABEL_571;
              case 0x76F:
                v8 = @"FIND_MY_DEVICE_VIEW";
                goto LABEL_571;
              case 0x770:
                v8 = @"FIND_MY_PERSON_VIEW";
                goto LABEL_571;
            }
          }
        }

        else
        {
          if (v5 > 1801)
          {
            if (v5 <= 1803)
            {
              if (v5 == 1802)
              {
                v8 = @"MAPS_WEB_SEARCH";
              }

              else
              {
                v8 = @"MAPS_WEB_SEARCH_RESULTS";
              }
            }

            else if (v5 == 1804)
            {
              v8 = @"MAPS_WEB_PUBLISHER";
            }

            else if (v5 == 1805)
            {
              v8 = @"MAPS_WEB_GUIDE";
            }

            else
            {
              v8 = @"MAPS_WEB_GUIDES_HOME";
            }

            goto LABEL_571;
          }

          if (v5 <= 1707)
          {
            if (v5 == 1706)
            {
              v8 = @"LOOK_AROUND_VIEW_PLACECARD";
            }

            else
            {
              v8 = @"LOOK_AROUND_PIP_PLACECARD";
            }

            goto LABEL_571;
          }

          if (v5 == 1708)
          {
            v8 = @"OFFLINE_BROWSE_ONLY_SEARCH_TRAY";
            goto LABEL_571;
          }

          if (v5 == 1801)
          {
            v8 = @"MAPS_WEB_PLACE";
            goto LABEL_571;
          }
        }
      }

      else if (v5 > 1502)
      {
        if (v5 > 1700)
        {
          if (v5 <= 1702)
          {
            if (v5 == 1701)
            {
              v8 = @"LOOK_AROUND_ACTION_SHEET";
            }

            else
            {
              v8 = @"LOOK_AROUND_VIEW";
            }
          }

          else if (v5 == 1703)
          {
            v8 = @"LOOK_AROUND_PLATTER";
          }

          else if (v5 == 1704)
          {
            v8 = @"LOOK_AROUND_PIP_UNAVAILABLE_ZOOM";
          }

          else
          {
            v8 = @"LOOK_AROUND_PIP_UNAVAILABLE_REGION";
          }

          goto LABEL_571;
        }

        if (v5 > 1600)
        {
          if (v5 == 1601)
          {
            v8 = @"MENU_ITEM_DARK_MAP";
            goto LABEL_571;
          }

          if (v5 == 1700)
          {
            v8 = @"LOOK_AROUND_PIP";
            goto LABEL_571;
          }
        }

        else
        {
          if (v5 == 1503)
          {
            v8 = @"PLACECARD_PHONE";
            goto LABEL_571;
          }

          if (v5 == 1504)
          {
            v8 = @"PLACECARD_URL";
            goto LABEL_571;
          }
        }
      }

      else
      {
        if (v5 <= 1404)
        {
          if (v5 > 1402)
          {
            if (v5 == 1403)
            {
              v8 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_REQUESTING";
            }

            else
            {
              v8 = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_CONFIRMED";
            }
          }

          else if (v5 == 1401)
          {
            v8 = @"ROUTING_TRAY_RIDESHARE_RIDE_OPTIONS";
          }

          else
          {
            v8 = @"ROUTING_TRAY_RIDESHARE_DETAILS_PICKING";
          }

          goto LABEL_571;
        }

        if (v5 <= 1406)
        {
          if (v5 == 1405)
          {
            v8 = @"ROUTING_TRAY_RIDESHARE_SURGE_PRICING_DIALOG";
          }

          else
          {
            v8 = @"ROUTING_TRAY_RIDESHARE_FEEDBACK";
          }

          goto LABEL_571;
        }

        switch(v5)
        {
          case 0x57F:
            v8 = @"ROUTING_TRAY_RIDESHARE_ENABLE_ALL";
            goto LABEL_571;
          case 0x5DD:
            v8 = @"PLACECARD_HEADER";
            goto LABEL_571;
          case 0x5DE:
            v8 = @"PLACECARD_ADDRESS";
            goto LABEL_571;
        }
      }

LABEL_570:
      v8 = [NSString stringWithFormat:@"(unknown: %i)", v5];
      goto LABEL_571;
    }

    switch(v5)
    {
      case 1001:
        v8 = @"CARPLAY_NAV";
        break;
      case 1002:
        v8 = @"CARPLAY_EXPLORE";
        break;
      case 1003:
        v8 = @"CARPLAY_DESTINATIONS";
        break;
      case 1004:
        v8 = @"CARPLAY_TRAFFIC_INCIDENT";
        break;
      case 1005:
        v8 = @"CARPLAY_CONTROL";
        break;
      case 1006:
        v8 = @"CARPLAY_PROACTIVE";
        break;
      case 1007:
        v8 = @"CARPLAY_ROUTING";
        break;
      case 1008:
        v8 = @"CARPLAY_MORE_ROUTES";
        break;
      case 1009:
        v8 = @"CARPLAY_SEARCH_ALONG_ROUTE";
        break;
      case 1010:
        v8 = @"CARPLAY_SEARCH";
        break;
      case 1011:
        v8 = @"CARPLAY_SEARCH_RESULTS";
        break;
      case 1012:
        v8 = @"CARPLAY_FAVORITES";
        break;
      case 1013:
        v8 = @"CARPLAY_NAV_CONFIRMATION";
        break;
      case 1014:
        v8 = @"CARPLAY_DESTINATION_SHARING";
        break;
      case 1015:
        v8 = @"CARPLAY_NOTIFICATION_BATTERY";
        break;
      case 1016:
        v8 = @"CARPLAY_NOTIFICATION_DOOM";
        break;
      case 1017:
        v8 = @"CARPLAY_NOTIFICATION_FUEL";
        break;
      case 1018:
        v8 = @"CARPLAY_NOTIFICATION_HYBRID";
        break;
      case 1019:
        v8 = @"CARPLAY_SHARE_ETA_TRAY";
        break;
      case 1020:
        v8 = @"CARPLAY_ETA_UPDATE_TRAY";
        break;
      case 1021:
        v8 = @"CARPLAY_ACTION_TRAY";
        break;
      case 1022:
        v8 = @"CARPLAY_PLACECARD";
        break;
      case 1023:
        v8 = @"CARPLAY_KEYBOARD";
        break;
      case 1024:
        v8 = @"CARPLAY_UI_TARGET_UNKNOWN";
        break;
      case 1025:
        v8 = @"CARPLAY_EDIT_STOPS";
        break;
      case 1100:
        v8 = @"RAP_DIRECTIONS_MENU";
        break;
      case 1101:
        v8 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_LIST";
        break;
      case 1102:
        v8 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_DETAILS_FORM";
        break;
      case 1103:
        v8 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE_FORM";
        break;
      case 1104:
        v8 = @"RAP_DIRECTIONS_ESTIMATED_TIME_INCORRECT_FORM";
        break;
      case 1105:
        v8 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_FORM";
        break;
      case 1106:
        v8 = @"RAP_TRANSIT_MENU";
        break;
      case 1107:
        v8 = @"RAP_STATION_MAP";
        break;
      case 1108:
        v8 = @"RAP_STATION_MENU";
        break;
      case 1109:
        v8 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_MAP";
        break;
      case 1110:
        v8 = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_FORM";
        break;
      case 1111:
        v8 = @"RAP_STATION_CLOSED_FORM";
        break;
      case 1112:
        v8 = @"RAP_LINE_MAP";
        break;
      case 1113:
        v8 = @"RAP_LINE_MENU";
        break;
      case 1114:
        v8 = @"RAP_LINE_NAME_FORM";
        break;
      case 1115:
        v8 = @"RAP_LINE_SHAPE_FORM";
        break;
      case 1116:
        v8 = @"RAP_LINE_SCHEDULE_INCORRECT_FORM";
        break;
      case 1117:
        v8 = @"RAP_ADD_PLACE_MENU";
        break;
      case 1118:
        v8 = @"RAP_ADD_POI_MAP";
        break;
      case 1119:
        v8 = @"RAP_CATEGORY_LIST";
        break;
      case 1120:
        v8 = @"RAP_POI_DETAILS_FORM";
        break;
      case 1121:
        v8 = @"RAP_ADD_STREET_MAP";
        break;
      case 1122:
        v8 = @"RAP_STREET_DETAILS_FORM";
        break;
      case 1123:
        v8 = @"RAP_ADD_OTHER_MAP";
        break;
      case 1124:
        v8 = @"RAP_OTHER_DETAILS_FORM";
        break;
      case 1125:
        v8 = @"RAP_CAMERA";
        break;
      case 1126:
        v8 = @"RAP_LABEL_MAP";
        break;
      case 1127:
        v8 = @"RAP_LABEL_DETAILS_FORM";
        break;
      case 1128:
        v8 = @"RAP_SEARCH_MENU";
        break;
      case 1129:
        v8 = @"RAP_SEARCH_UNEXPECTED_RESULT_FORM";
        break;
      case 1130:
        v8 = @"RAP_SEARCH_ADDRESS_INCORRECT_FORM";
        break;
      case 1131:
        v8 = @"RAP_SEARCH_LOCATION_INCORRECT_MAP";
        break;
      case 1132:
        v8 = @"RAP_SEARCH_LOCATION_INCORRECT_DETAILS_FORM";
        break;
      case 1133:
        v8 = @"RAP_SATELLITE_IMAGE_MAP";
        break;
      case 1134:
        v8 = @"RAP_SATELLITE_IMAGE_DETAILS_FORM";
        break;
      case 1135:
        v8 = @"RAP_OTHER_FORM";
        break;
      case 1136:
        v8 = @"RAP_PRIVACY";
        break;
      case 1137:
        v8 = @"RAP_CONFIRMATION";
        break;
      case 1138:
        v8 = @"RAP_POI_MENU";
        break;
      case 1139:
        v8 = @"RAP_SEARCH_AUTOCOMPLETE_MENU";
        break;
      case 1140:
        v8 = @"RAP_ADD_A_PLACE_MAP";
        break;
      case 1141:
        v8 = @"RAP_POI_LOCATION_MAP";
        break;
      case 1142:
        v8 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_MAP";
        break;
      case 1143:
        v8 = @"RAP_POI_CLOSED_FORM";
        break;
      case 1144:
        v8 = @"RAP_CLAIM_BUSINESS_DIALOG";
        break;
      case 1145:
        v8 = @"RAP_BRAND_MENU";
        break;
      case 1146:
        v8 = @"RAP_BRAND_DETAILS_FORM";
        break;
      case 1147:
        v8 = @"RAP_LOOK_AROUND_IMAGE_QUALITY_FORM";
        break;
      case 1148:
        v8 = @"RAP_LOOK_AROUND_LABELS_STREET_FORM";
        break;
      case 1149:
        v8 = @"RAP_LOOK_AROUND_BLURRING_FORM";
        break;
      case 1150:
        v8 = @"RAP_LOOK_AROUND_REMOVE_HOME_FORM";
        break;
      case 1151:
        v8 = @"RAP_LOOK_AROUND_MENU";
        break;
      case 1152:
        v8 = @"RAP_LOOK_AROUND_LABELS_STORE_FORM";
        break;
      case 1153:
        v8 = @"RAP_LOOK_AROUND_PRIVACY_MENU";
        break;
      case 1154:
        v8 = @"RAP_LIGHTWEIGHT";
        break;
      case 1155:
        v8 = @"RAP_EDIT_PLACE_DETAILS";
        break;
      case 1156:
        v8 = @"RAP_ADD_CATEGORY";
        break;
      case 1157:
        v8 = @"RAP_ADD_HOURS";
        break;
      case 1158:
        v8 = @"RAP_EDIT_LOCATION";
        break;
      case 1159:
        v8 = @"RAP_EDIT_ENTRY_POINT";
        break;
      case 1160:
        v8 = @"RAP_LOOK_AROUND";
        break;
      case 1161:
        v8 = @"RAP_ADD_ENTRY_POINT";
        break;
      case 1201:
        v8 = @"WATCH_MAIN_MENU";
        break;
      case 1202:
        v8 = @"WATCH_MAIN_PRESS_MENU";
        break;
      case 1203:
        v8 = @"WATCH_SEARCH";
        break;
      case 1204:
        v8 = @"WATCH_DICTATION";
        break;
      case 1205:
        v8 = @"WATCH_FAVORITES";
        break;
      case 1206:
        v8 = @"WATCH_SUB_CATEGORY_LIST";
        break;
      case 1207:
        v8 = @"WATCH_SEARCH_RESULTS_LIST";
        break;
      case 1208:
        v8 = @"WATCH_MAP_VIEW";
        break;
      case 1209:
        v8 = @"WATCH_PLACECARD";
        break;
      case 1210:
        v8 = @"WATCH_ROUTE_PLANNING";
        break;
      case 1211:
        v8 = @"WATCH_ROUTE_DETAILS";
        break;
      case 1212:
        v8 = @"WATCH_NAV_TBT";
        break;
      case 1213:
        v8 = @"WATCH_NAV_MAP";
        break;
      case 1214:
        v8 = @"WATCH_NAV_PRESS_MENU";
        break;
      case 1215:
        v8 = @"WATCH_MAP_PRESS_MENU";
        break;
      case 1216:
        v8 = @"WATCH_ROUTING_PRESS_MENU";
        break;
      case 1217:
        v8 = @"WATCH_TRANSIT_MAP_VIEW";
        break;
      case 1218:
        v8 = @"WATCH_SCRIBBLE";
        break;
      case 1219:
        v8 = @"WATCH_COLLECTION_VIEW";
        break;
      case 1220:
        v8 = @"WATCH_ROUTE_PLANNING_WALKING";
        break;
      case 1221:
        v8 = @"WATCH_ROUTE_PLANNING_DRIVING";
        break;
      case 1222:
        v8 = @"WATCH_ROUTE_PLANNING_TRANSIT";
        break;
      case 1223:
        v8 = @"WATCH_PAIRED_DEVICE";
        break;
      case 1224:
        v8 = @"WATCH_NAV_DRIVING_SPLIT";
        break;
      case 1225:
        v8 = @"WATCH_NAV_DRIVING_PLATTER";
        break;
      case 1226:
        v8 = @"WATCH_NAV_DRIVING_MAP";
        break;
      case 1227:
        v8 = @"WATCH_NAV_WALKING_SPLIT";
        break;
      case 1228:
        v8 = @"WATCH_NAV_WALKING_PLATTER";
        break;
      case 1229:
        v8 = @"WATCH_NAV_WALKING_MAP";
        break;
      case 1230:
        v8 = @"WATCH_NAV_TRANSIT_SPLIT";
        break;
      case 1231:
        v8 = @"WATCH_NAV_TRANSIT_PLATTER";
        break;
      case 1232:
        v8 = @"WATCH_NAV_TRANSIT_MAP";
        break;
      case 1233:
        v8 = @"WATCH_ROUTE_INFO";
        break;
      case 1234:
        v8 = @"WATCH_NAV_CYCLING_MAP";
        break;
      case 1235:
        v8 = @"WATCH_NAV_CYCLING_PLATTER";
        break;
      case 1236:
        v8 = @"WATCH_NAV_CYCLING_SPLIT";
        break;
      case 1237:
        v8 = @"WATCH_ROUTE_PLANNING_CYCLING";
        break;
      case 1238:
        v8 = @"WATCH_SEARCH_INPUT";
        break;
      case 1239:
        v8 = @"WATCH_SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
        break;
      case 1240:
        v8 = @"WATCH_SIRI_SUGGESTION_RESUME_ROUTE";
        break;
      case 1301:
        v8 = @"PERSONALIZED_ADDRESS_LIST";
        break;
      case 1302:
        v8 = @"PERSONALIZED_ADDRESS_FORM";
        break;
      case 1303:
        v8 = @"PERSONALIZED_LABEL_FORM";
        break;
      case 1304:
        v8 = @"PERSONALIZED_EDIT_MAP";
        break;
      case 1305:
        v8 = @"PERSONALIZED_CONFIRMATION";
        break;
      case 1306:
        v8 = @"PERSONALIZED_ADDRESS_DELETE_DIALOG";
        break;
      case 1307:
        v8 = @"PERSONALIZED_ADDRESS_INFO";
        break;
      case 1308:
        v8 = @"PERSONALIZED_ADDRESS_SEARCH";
        break;
      case 1309:
        v8 = @"PERSONALIZED_ADDRESS_SEARCH_RESULTS";
        break;
      case 1310:
        v8 = @"FAVORITE_SEARCH";
        break;
      case 1311:
        v8 = @"FAVORITE_LIST";
        break;
      case 1312:
        v8 = @"FAVORITE_INFO";
        break;
      case 1313:
        v8 = @"PERSONALIZED_CONFIRMATION_WITH_PRIVACY";
        break;
      default:
        goto LABEL_570;
    }
  }

  else
  {
    v8 = @"UI_TARGET_UNKNOWN";
    switch(v5)
    {
      case 0:
        break;
      case 1:
        v8 = @"UI_TARGET_POI";
        break;
      case 2:
        v8 = @"UI_TARGET_SEARCH_RESULT_LIST";
        break;
      case 3:
        v8 = @"UI_TARGET_POPULAR_NEARBY_LIST";
        break;
      case 4:
        v8 = @"UI_TARGET_CALLOUT";
        break;
      case 5:
        v8 = @"UI_TARGET_SEARCH_PIN";
        break;
      case 6:
        v8 = @"UI_TARGET_DROPPED_PIN";
        break;
      case 7:
        v8 = @"UI_TARGET_TRANSIT_LINE";
        break;
      case 8:
        v8 = @"SEARCH_TRAY";
        break;
      case 9:
        v8 = @"SEARCH_TRAY_BROWSE";
        break;
      case 10:
        v8 = @"SEARCH_TRAY_POPULAR_NEARBY";
        break;
      case 11:
        v8 = @"SEARCH_TRAY_AC";
        break;
      case 12:
        v8 = @"SEARCH_TRAY_AC_INTERMEDIATE";
        break;
      case 13:
        v8 = @"SEARCH_TRAY_NO_QUERY";
        break;
      case 14:
        v8 = @"AR_WALKING_LEGAL_TRAY";
        break;
      case 15:
        v8 = @"RAISE_TO_START_AR_TRAY";
        break;
      case 16:
        v8 = @"EVENTS_ADVISORY_DETAILS_PAGE";
        break;
      case 17:
        v8 = @"INCIDENT_REPORT_TRAY_CARPLAY";
        break;
      case 18:
        v8 = @"HIGHLIGHTED_AREA";
        break;
      case 19:
        v8 = @"CURATED_COLLECTIONS_HOME";
        break;
      case 20:
        v8 = @"TRAVEL_PREFERENCES_TRAY";
        break;
      case 21:
        v8 = @"RESULT_TRAY_SEARCH";
        break;
      case 22:
        v8 = @"SINGLE_CARD_FILTER";
        break;
      case 23:
        v8 = @"FULL_CARD_FILTER";
        break;
      case 24:
        v8 = @"ACCOUNT_PRIVACY_TRAY";
        break;
      case 25:
        v8 = @"APPLE_RATINGS_HISTORY_TRAY";
        break;
      case 26:
        v8 = @"CURATED_COLLECTIONS_HOME_FILTERED";
        break;
      case 27:
        v8 = @"CITY_MENU";
        break;
      case 28:
        v8 = @"CURATED_COLLECTIONS_HOME_CONDENSED";
        break;
      case 29:
        v8 = @"ACCOUNT_TRAY";
        break;
      case 30:
        v8 = @"QUICK_ACTION_TRAY";
        break;
      case 31:
        v8 = @"SUBMIT_TRIP_FEEDBACK";
        break;
      case 32:
        v8 = @"RAP_PLACE_ISSUE_DETAILS";
        break;
      case 33:
        v8 = @"RAP_GUIDES_DETAILS";
        break;
      case 34:
        v8 = @"RAP_BAD_DIRECTIONS_DETAILS";
        break;
      case 35:
        v8 = @"RAP_ADD_MAP_DETAILS";
        break;
      case 36:
        v8 = @"WATCH_COMPLICATION";
        break;
      case 37:
        v8 = @"RAP_NAV_MENU";
        break;
      case 38:
        v8 = @"NOTIFICATION_ALIGHT_BANNER_TRANSIT";
        break;
      case 39:
        v8 = @"RAP_REPORT_MENU";
        break;
      case 40:
        v8 = @"RAP_CURATED_COLLECTION_MENU";
        break;
      case 41:
        v8 = @"RAP_REPORT_CARD_DETAILS";
        break;
      case 42:
        v8 = @"NOTIFICATION_NO_LOCATION_TRANSIT";
        break;
      case 43:
        v8 = @"RAP_STREET_ISSUE_DETAILS";
        break;
      case 44:
        v8 = @"NEARBY_TRANSIT_CARD";
        break;
      case 45:
        v8 = @"WATCH_NAV_MENU";
        break;
      case 46:
        v8 = @"GENERIC_ADVISORY_PAGE";
        break;
      case 47:
        v8 = @"USER_PROFILE_TRAY";
        break;
      case 48:
        v8 = @"MEDIA_APP_MENU";
        break;
      case 49:
        v8 = @"TEMPLATE_PLACE_TRAY";
        break;
      case 50:
        v8 = @"NOTIFICATION_CONSENT_REPROMPT_RAP";
        break;
      case 51:
        v8 = @"ALLOW_NOTIFICATION_DIALOG";
        break;
      case 52:
        v8 = @"NOTIFICATION_CONSENT_REPROMPT_DRIVING";
        break;
      case 53:
        v8 = @"NOTIFICATION_CONSENT_REPROMPT_ARP";
        break;
      case 54:
        v8 = @"NOTIFICATION_CONSENT_REPROMPT_TIME_ELAPSED";
        break;
      case 55:
        v8 = @"NOTIFICATION_CONSENT_PROMPT";
        break;
      case 56:
        v8 = @"QUICK_ACTION_TRAY_VENDORS_MENU";
        break;
      case 57:
        v8 = @"PLACECARD_TRAY_VENDORS_MENU";
        break;
      case 58:
        v8 = @"RESULTS_TRAY_SEARCH_ROUTE_PLANNING";
        break;
      case 59:
        v8 = @"SEARCH_ALONG_ROUTE_TRAY";
        break;
      case 60:
        v8 = @"MAP_RESULTS_SEARCH_ROUTE_PLANNING";
        break;
      case 61:
        v8 = @"PLACECARD_SHOWCASE_MENU";
        break;
      case 62:
        v8 = @"RAP_INLINE_ADD_DETAILS";
        break;
      case 63:
        v8 = @"RAP_EDIT_MENU_DETAILS";
        break;
      case 64:
        v8 = @"RAP_SUBMISSION_PROMPT";
        break;
      case 65:
        v8 = @"RAP_PLACECARD_EDIT_MENU";
        break;
      case 66:
        v8 = @"ARP_SUBMISSION_CONFIRMATION_PAGE";
        break;
      case 67:
        v8 = @"INCIDENT_REPORT_MENU";
        break;
      case 68:
        v8 = @"RAP_SELECT_BAD_ROUTES_STEPS";
        break;
      case 69:
        v8 = @"RAP_SELECT_BAD_ROUTES";
        break;
      case 70:
        v8 = @"SIRI_SUGGESTION_RESUME_ROUTE";
        break;
      case 71:
        v8 = @"SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
        break;
      case 72:
        v8 = @"SPOTLIGHT_BUSINESS_ENTITY_LIST";
        break;
      case 73:
        v8 = @"SPOTLIGHT_BUSINESS_ENTITY";
        break;
      case 74:
        v8 = @"NOTIFICATION_ARP";
        break;
      case 75:
        v8 = @"IMPROVE_LOCATION_ACCURACY_PROMPT";
        break;
      case 76:
        v8 = @"YOUR_PHOTOS_ALBUM";
        break;
      case 77:
        v8 = @"ARP_PHOTO_CREDIT";
        break;
      case 78:
        v8 = @"RAP_OUTREACH_REVIEWED_REPORT";
        break;
      case 79:
        v8 = @"RAP_REPORT_MENU_MORE";
        break;
      case 80:
        v8 = @"WATCH_MAPS_SETTINGS";
        break;
      case 81:
        v8 = @"OFFLINE_FEATURE_PROMPT";
        break;
      case 82:
        v8 = @"EXPIRED_MAPS_DETAILS";
        break;
      case 83:
        v8 = @"MAPS_VIEW";
        break;
      case 84:
        v8 = @"NOTIFICATION_OFFLINE";
        break;
      case 85:
        v8 = @"EXPIRED_MAPS_MANAGEMENT";
        break;
      case 86:
        v8 = @"OFFLINE_NEW_MAPS_MANAGEMENT";
        break;
      case 87:
        v8 = @"EDIT_EXPIRED_MAPS_MANAGEMENT";
        break;
      case 88:
        v8 = @"OFFLINE_MAPS_MANAGEMENT";
        break;
      case 89:
        v8 = @"REGION_SELECTOR";
        break;
      case 90:
        v8 = @"OFFLINE_SUGGESTED_MAPS_MANAGEMENT";
        break;
      case 91:
        v8 = @"FIND_MY_ETA_SHARING_TRAY";
        break;
      case 92:
        v8 = @"WATCH_PLACE";
        break;
      case 93:
        v8 = @"WATCH_ROUTE_PLANNING_TRANSIT_CAROUSEL";
        break;
      case 94:
        v8 = @"WATCH_ROUTE_PLANNING_MAP";
        break;
      case 95:
        v8 = @"WATCH_NAV_WALKING_CONTROLS";
        break;
      case 96:
        v8 = @"WATCH_NAV_CYCLING_CONTROLS";
        break;
      case 97:
        v8 = @"WATCH_ROUTE_PLANNING_WALKING_CAROUSEL";
        break;
      case 98:
        v8 = @"WATCH_NAV_TRANSIT_CONTROLS";
        break;
      case 99:
        v8 = @"WATCH_SEARCH_RESULTS_CAROUSEL";
        break;
      case 100:
        v8 = @"WATCH_NAV_DRIVING_CONTROLS";
        break;
      case 101:
        v8 = @"RESULTS_TRAY_SEARCH";
        break;
      case 102:
        v8 = @"RESULTS_TRAY_BROWSE";
        break;
      case 103:
        v8 = @"RESULTS_TRAY_FAVORITES";
        break;
      case 104:
        v8 = @"RESULTS_TRAY_SEARCH_ALONG_ROUTE";
        break;
      case 105:
        v8 = @"RESULTS_TRAY_CLUSTER";
        break;
      case 106:
        v8 = @"RESULTS_TRAY_VENUE_BROWSE";
        break;
      case 107:
        v8 = @"WATCH_MAP_RESULTS";
        break;
      case 108:
        v8 = @"WATCH_NAV_WALKING_ELEVATION_VIEW";
        break;
      case 109:
        v8 = @"WATCH_PLACES";
        break;
      case 110:
        v8 = @"WATCH_NAV_CYCLING_ELEVATION_VIEW";
        break;
      case 111:
        v8 = @"WATCH_ROUTE_PLANNING_CYCLING_CAROUSEL";
        break;
      case 112:
        v8 = @"DOWNLOADED_MAPS_DETAILS";
        break;
      case 113:
        v8 = @"WATCH_ROUTE_PLANNING_DRIVING_CAROUSEL";
        break;
      case 114:
        v8 = @"WATCH_NAV_TRANSIT_OVERVIEW_MAP";
        break;
      case 115:
        v8 = @"WATCH_NAV_WALKING_OVERVIEW_MAP";
        break;
      case 116:
        v8 = @"WATCH_NAV_CYCLING_OVERVIEW_MAP";
        break;
      case 117:
        v8 = @"WATCH_ROUTE_OPTIONS";
        break;
      case 118:
        v8 = @"WATCH_NAV_DRIVING_OVERVIEW_MAP";
        break;
      case 119:
        v8 = @"WATCH_MORE_GUIDES";
        break;
      case 120:
        v8 = @"WATCH_RECENTLY_VIEWED";
        break;
      case 121:
        v8 = @"EV_SUCCESS_TRAY";
        break;
      case 122:
        v8 = @"PREFERRED_NETWORK_SELECTION_TRAY";
        break;
      case 123:
        v8 = @"PREFERRED_NETWORK_TRAY";
        break;
      case 124:
        v8 = @"WALKING_TRANSITION_SUGGESTION_TRAY";
        break;
      case 125:
        v8 = @"FINDMY_TRANSITION_SUGGESTION_TRAY";
        break;
      case 126:
        v8 = @"CARPLAY_FIND_MY_ETA_SHARING_TRAY";
        break;
      case 127:
        v8 = @"AC_KEYBOARD_TRAY";
        break;
      case 128:
        v8 = @"MORE_RELATED_TRAILS";
        break;
      case 129:
        v8 = @"MORE_RELATED_TRAILHEADS";
        break;
      case 130:
        v8 = @"ROUTING_TRAY_CUSTOM_ROUTE";
        break;
      case 131:
        v8 = @"CUSTOM_ROUTE_CREATION_TRAY";
        break;
      case 132:
        v8 = @"ROUTING_TRAY_CURATED_HIKE";
        break;
      case 133:
        v8 = @"MORE_CURATED_HIKES";
        break;
      case 134:
        v8 = @"CUSTOM_ROUTE_ONBOARDING";
        break;
      case 135:
        v8 = @"LIBRARY_ROUTES";
        break;
      case 136:
        v8 = @"HIKING_TRANSITION_SUGGESTION_TRAY";
        break;
      case 137:
        v8 = @"MY_LIBRARY";
        break;
      case 138:
        v8 = @"EDIT_NOTE_TRAY";
        break;
      case 139:
        v8 = @"CREATE_NOTE_TRAY";
        break;
      case 140:
        v8 = @"LIBRARY_PLACES";
        break;
      case 141:
        v8 = @"WATCH_ACCOUNT";
        break;
      case 142:
        v8 = @"WATCH_DOWNLOADED_MAPS";
        break;
      case 143:
        v8 = @"VISUAL_INTELLIGENCE_DETECTION_LIST";
        break;
      case 144:
        v8 = @"VISUAL_INTELLIGENCE_DETECTION";
        break;
      case 145:
        v8 = @"VISUAL_INTELLIGENCE_SNIPPET";
        break;
      case 146:
        v8 = @"FAMILIAR_ROUTE_NOTIFICATION";
        break;
      case 147:
        v8 = @"LIBRARY_VISITED";
        break;
      case 148:
        v8 = @"VISITED_PLACES_ONBOARDING";
        break;
      case 149:
        v8 = @"NOTIFICATION_VISITED_PLACES";
        break;
      case 150:
        v8 = @"LOCATION_CORRECTION_TRAY";
        break;
      case 151:
        v8 = @"MAPS_WIDGET_VISITED_PLACE";
        break;
      case 152:
        v8 = @"REMOVE_VISIT_TRAY";
        break;
      case 153:
        v8 = @"NEARBY_SUGGESTION_TRAY";
        break;
      case 154:
        v8 = @"FAMILIAR_ROUTES_ONBOARDING";
        break;
      case 155:
        v8 = @"ROUTING_TRAY_CARPLAY";
        break;
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 276:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 300:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
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
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
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
      case 700:
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
        goto LABEL_570;
      case 201:
        v8 = @"PLACECARD_TRAY";
        break;
      case 202:
        v8 = @"WEB_MODULE";
        break;
      case 203:
        v8 = @"ACTION_BAR";
        break;
      case 204:
        v8 = @"ACTION_BAR_VENDORS_MENU";
        break;
      case 250:
        v8 = @"ADD_FAVORITE_TRAY";
        break;
      case 251:
        v8 = @"COLLECTION_LIST";
        break;
      case 252:
        v8 = @"COLLECTION_VIEW";
        break;
      case 253:
        v8 = @"FAVORITE_DETAILS";
        break;
      case 254:
        v8 = @"FAVORITES_TRAY";
        break;
      case 255:
        v8 = @"SHARED_COLLECTION";
        break;
      case 256:
        v8 = @"SHARED_COLLECTION_VIEW";
        break;
      case 257:
        v8 = @"RECENTLY_VIEWED";
        break;
      case 258:
        v8 = @"SHARED_WEB_COLLECTION";
        break;
      case 259:
        v8 = @"CURATED_COLLECTION_VIEW";
        break;
      case 260:
        v8 = @"FEATURED_COLLECTIONS";
        break;
      case 261:
        v8 = @"PUBLISHER_TRAY";
        break;
      case 262:
        v8 = @"SHARED_CURATED_COLLECTION_VIEW";
        break;
      case 263:
        v8 = @"CURATED_COLLECTION_NOTIFICATION";
        break;
      case 264:
        v8 = @"CURATED_COLLECTION_LIST";
        break;
      case 265:
        v8 = @"PUBLISHER_LIST";
        break;
      case 266:
        v8 = @"WATCH_CURATED_COLLECTION_VIEW";
        break;
      case 267:
        v8 = @"SIRI_SUGGESTION_SHARED_ETA_SUBLIST";
        break;
      case 268:
        v8 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY_SUBLIST";
        break;
      case 301:
        v8 = @"ROUTING_TRAY_DRIVING";
        break;
      case 302:
        v8 = @"ROUTING_TRAY_WALKING";
        break;
      case 303:
        v8 = @"ROUTING_TRAY_TRANSIT";
        break;
      case 304:
        v8 = @"ROUTING_TRAY_RIDESHARE";
        break;
      case 305:
        v8 = @"ROUTING_TRAY_CYCLING";
        break;
      case 306:
        v8 = @"ROUTING_TRAY_VIRTUAL_GARAGE_VIEW";
        break;
      case 401:
        v8 = @"NAV_TRAY_DRIVING";
        break;
      case 402:
        v8 = @"NAV_TRAY_WALKING";
        break;
      case 403:
        v8 = @"NAV_TRAY_TRANSIT";
        break;
      case 404:
        v8 = @"NAV_TRAY_CYCLING";
        break;
      case 501:
        v8 = @"MAP_PLACECARD";
        break;
      case 502:
        v8 = @"MAP_SEARCH";
        break;
      case 503:
        v8 = @"MAP_RESULTS";
        break;
      case 504:
        v8 = @"MAP_ROUTING";
        break;
      case 505:
        v8 = @"MAP_NAV";
        break;
      case 506:
        v8 = @"MAP_RESULTS_SEARCH_ALONG_ROUTE";
        break;
      case 507:
        v8 = @"MAP_TRAFFIC_INCIDENT";
        break;
      case 508:
        v8 = @"MAP_FULL_SCREEN";
        break;
      case 509:
        v8 = @"MAP_DRIVE";
        break;
      case 510:
        v8 = @"MAP_LAUNCH_AND_GO";
        break;
      case 511:
        v8 = @"MAP_VIEW";
        break;
      case 601:
        v8 = @"MAPS_SETTINGS";
        break;
      case 602:
        v8 = @"MAPS_PREFERENCES";
        break;
      case 603:
        v8 = @"RAP";
        break;
      case 604:
        v8 = @"ROUTING_DRIVING_DETAILS";
        break;
      case 605:
        v8 = @"ROUTING_WALKING_DETAILS";
        break;
      case 606:
        v8 = @"ROUTING_TRANSIT_DETAILS";
        break;
      case 607:
        v8 = @"ROUTING_EDITOR";
        break;
      case 608:
        v8 = @"NAV_DRIVING_DETAILS";
        break;
      case 609:
        v8 = @"NAV_WALKING_DETAILS";
        break;
      case 610:
        v8 = @"NAV_TRANSIT_DETAILS";
        break;
      case 611:
        v8 = @"NAV_AUDIO_SETTINGS";
        break;
      case 612:
        v8 = @"PHOTO_VIEWER_ALL";
        break;
      case 613:
        v8 = @"PHOTO_VIEWER_SINGLE";
        break;
      case 614:
        v8 = @"ROUTE_OPTIONS_TRANSIT";
        break;
      case 615:
        v8 = @"TRAFFIC_INCIDENT_TRAY";
        break;
      case 616:
        v8 = @"NAV_DIRECTIONS_BANNER_DRIVING";
        break;
      case 617:
        v8 = @"NAV_DIRECTIONS_BANNER_WALKING";
        break;
      case 618:
        v8 = @"NAV_DIRECTIONS_BANNER_TRANSIT";
        break;
      case 619:
        v8 = @"REFINE_SEARCH_SUGGESTION_AREA";
        break;
      case 620:
        v8 = @"ADD_PHOTO_SHEET";
        break;
      case 621:
        v8 = @"ADD_PLACE_SHEET";
        break;
      case 622:
        v8 = @"SHARE_SHEET";
        break;
      case 623:
        v8 = @"EDIT_LOCATION_SHEET";
        break;
      case 624:
        v8 = @"ADD_CONTACT_SHEET";
        break;
      case 625:
        v8 = @"EDIT_NAME_SHEET";
        break;
      case 626:
        v8 = @"DRIVING_NAV_SETTINGS";
        break;
      case 627:
        v8 = @"TRANSIT_SETTINGS";
        break;
      case 628:
        v8 = @"TRANSIT_ADVISORY_SHEET";
        break;
      case 629:
        v8 = @"REMOVE_CAR_SHEET";
        break;
      case 630:
        v8 = @"ROUTE_OPTIONS_DRIVING";
        break;
      case 631:
        v8 = @"ROUTE_OPTIONS_DATETIME";
        break;
      case 632:
        v8 = @"TRANSIT_ADVISORY_BANNER";
        break;
      case 633:
        v8 = @"BOOK_TABLE_SELECT_TIME";
        break;
      case 634:
        v8 = @"BOOK_TABLE_MORE_OPTIONS";
        break;
      case 635:
        v8 = @"BOOK_TABLE_READY";
        break;
      case 636:
        v8 = @"BOOK_TABLE_BOOKED";
        break;
      case 637:
        v8 = @"TRANSIT_LINE_CLUSTER_SHEET";
        break;
      case 638:
        v8 = @"TRANSIT_LINE_LIST_SHEET";
        break;
      case 639:
        v8 = @"TRANSIT_BALANCE_BANNER";
        break;
      case 640:
        v8 = @"WEATHER_ICON";
        break;
      case 641:
        v8 = @"HELP_IMPROVE_MAPS_DIALOG";
        break;
      case 642:
        v8 = @"HELP_IMPROVE_COMMUTE_PREDICTION_ACCURACY_DIALOG";
        break;
      case 643:
        v8 = @"COMMUTE_PREDICTION_ACCURACY_DIALOG";
        break;
      case 644:
        v8 = @"FLOOR_PICKER";
        break;
      case 645:
        v8 = @"VENUE_LIST";
        break;
      case 646:
        v8 = @"AR_MODE";
        break;
      case 647:
        v8 = @"ROUTING_TRANSIT_TICKETS_SHEET";
        break;
      case 648:
        v8 = @"LINKED_SERVICE_HOURS";
        break;
      case 649:
        v8 = @"SHARE_ETA_TRAY";
        break;
      case 650:
        v8 = @"ETA_UPDATE_TRAY";
        break;
      case 651:
        v8 = @"SCHEDULECARD_TRAY";
        break;
      case 652:
        v8 = @"AR_NAV";
        break;
      case 653:
        v8 = @"TAP_TRANSIT_ACCESS_POINT";
        break;
      case 654:
        v8 = @"LOCATIONS_INSIDE";
        break;
      case 655:
        v8 = @"SIMILAR_LOCATIONS";
        break;
      case 656:
        v8 = @"LOCATIONS_AT_ADDRESS";
        break;
      case 657:
        v8 = @"NAV_DIRECTIONS_BANNER_CYCLING";
        break;
      case 658:
        v8 = @"ROUTE_OPTIONS_CYCLING";
        break;
      case 659:
        v8 = @"EV_CONNECTION_TRAY";
        break;
      case 660:
        v8 = @"VIRTUAL_GARAGE";
        break;
      case 661:
        v8 = @"VIRTUAL_GARAGE_BANNER";
        break;
      case 662:
        v8 = @"VIRTUAL_GARAGE_VEHICLE_VIEW";
        break;
      case 663:
        v8 = @"ADVISORY_DETAILS_PAGE";
        break;
      case 664:
        v8 = @"APP_CLIP_NOTIFICATION";
        break;
      case 665:
        v8 = @"PHOTO_VIEWER_GALLERY";
        break;
      case 666:
        v8 = @"RECOMMENDATION_CARD";
        break;
      case 667:
        v8 = @"INCIDENT_REPORT_TRAY";
        break;
      case 668:
        v8 = @"MAPS_WIDGET_DISPLAY";
        break;
      case 669:
        v8 = @"VISUAL_LOCATION_FRAMEWORK";
        break;
      case 670:
        v8 = @"APP_CLIP_TRAY";
        break;
      case 671:
        v8 = @"LICENSE_PLATE_SUGGESTION_PAGE";
        break;
      case 672:
        v8 = @"NOTIFICATION_ADD_PLATE";
        break;
      case 673:
        v8 = @"MAPS_RESULTS";
        break;
      case 674:
        v8 = @"MAPS_WIDGET_APP_CONNECTION";
        break;
      case 675:
        v8 = @"MAPS_WIDGET_CURRENT_LOCATION";
        break;
      case 676:
        v8 = @"MAPS_WIDGET_CURRENT_NAV";
        break;
      case 677:
        v8 = @"MAPS_WIDGET_ETA";
        break;
      case 678:
        v8 = @"MAPS_WIDGET_TRANSIT";
        break;
      case 679:
        v8 = @"MAPS_WIDGET_UPC_DESTINATION";
        break;
      case 680:
        v8 = @"WIDGET_CREATION_TRAY";
        break;
      case 681:
        v8 = @"MAPS_WIDGET_HOME";
        break;
      case 682:
        v8 = @"MAPS_WIDGET_PARKED_CAR";
        break;
      case 683:
        v8 = @"MAPS_WIDGET_POI";
        break;
      case 684:
        v8 = @"MAPS_WIDGET_SCHOOL";
        break;
      case 685:
        v8 = @"MAPS_WIDGET_WORK";
        break;
      case 686:
        v8 = @"AIRPORT_NOTIFICATION";
        break;
      case 687:
        v8 = @"MAPS_WIDGET_EMPTY";
        break;
      case 688:
        v8 = @"COARSE_LOCATION_OPTIONS_PROMPT";
        break;
      case 689:
        v8 = @"ALLOW_PRECISE_LOCATION_PROMPT";
        break;
      case 690:
        v8 = @"SHARE_MY_LOCATION";
        break;
      case 691:
        v8 = @"MARK_MY_LOCATION";
        break;
      case 692:
        v8 = @"AIRPORT_NOTIFICATION_WATCH";
        break;
      case 693:
        v8 = @"EDIT_FAVORITE";
        break;
      case 694:
        v8 = @"ROUTING_CYCLING_DETAILS";
        break;
      case 695:
        v8 = @"NAV_CYCLING_DETAILS";
        break;
      case 696:
        v8 = @"MAPS_SUGGESTION_WIDGET";
        break;
      case 697:
        v8 = @"ARP_TIPKIT";
        break;
      case 698:
        v8 = @"ARP_PRIVACY";
        break;
      case 699:
        v8 = @"ROUTE_OPTIONS_WALKING";
        break;
      case 701:
        v8 = @"SAFARI_SEARCH";
        break;
      case 702:
        v8 = @"SPOTLIGHT_SEARCH";
        break;
      case 703:
        v8 = @"SAFARI_MAPS_SEARCH_RESULTS";
        break;
      case 704:
        v8 = @"SPOTLIGHT_MAPS_SEARCH_RESULTS";
        break;
      case 705:
        v8 = @"WIDGET_MAPS_DESTINATIONS";
        break;
      case 706:
        v8 = @"WIDGET_MAPS_TRANSIT";
        break;
      case 707:
        v8 = @"WIDGET_MAPS_NEARBY";
        break;
      case 708:
        v8 = @"NOTIFICATION_FIND_MY_CAR";
        break;
      case 709:
        v8 = @"CONTROL_CENTER";
        break;
      case 710:
        v8 = @"NOTIFICATION_CENTER";
        break;
      case 711:
        v8 = @"NOTIFICATION_DOOM";
        break;
      case 712:
        v8 = @"NOTIFICATION_VENUES";
        break;
      case 713:
        v8 = @"NOTIFICATION_RAP_UPDATE";
        break;
      case 714:
        v8 = @"NOTIFICATION_TRIP_CANCELLED";
        break;
      case 715:
        v8 = @"NOTIFICATION_STOP_SKIPPED";
        break;
      case 716:
        v8 = @"NOTIFICATION_TRIP_DELAYED";
        break;
      case 717:
        v8 = @"NOTIFICATION_RAP";
        break;
      case 718:
        v8 = @"NOTIFICATION_PROXY_AUTH";
        break;
      case 719:
        v8 = @"NOTIFICATION_PUSH_TO_DEVICE";
        break;
      case 720:
        v8 = @"NOTIFICATION_LOW_FUEL";
        break;
      case 721:
        v8 = @"NOTIFICATION_FIND_MY_CAR_RESET";
        break;
      case 722:
        v8 = @"NOTIFICATION_TRAFFIC_CONDITIONS";
        break;
      case 723:
        v8 = @"NOTIFICATION_SHARED_ETA";
        break;
      case 724:
        v8 = @"NOTIFICATION_SHARED_ETA_UPDATE";
        break;
      case 725:
        v8 = @"ANNOUNCEMENT_TYPE_UNKNOWN";
        break;
      case 726:
        v8 = @"ANNOUNCEMENT_TYPE_GENERAL";
        break;
      case 727:
        v8 = @"ANNOUNCEMENT_TYPE_FLYOVER";
        break;
      case 728:
        v8 = @"ANNOUNCEMENT_TYPE_TRANSIT";
        break;
      case 729:
        v8 = @"ANNOUNCEMENT_TYPE_VENUES";
        break;
      case 730:
        v8 = @"ANNOUNCEMENT_TYPE_ENHANCED_DETAIL";
        break;
      case 731:
        v8 = @"ANNOUNCEMENT_TYPE_LANE_GUIDANCE";
        break;
      case 732:
        v8 = @"ANNOUNCEMENT_TYPE_LOOK_AROUND";
        break;
      case 733:
        v8 = @"APP_SHEET";
        break;
      case 734:
        v8 = @"CZ_ADVISORY_DETAILS_PAGE";
        break;
      case 735:
        v8 = @"SHARE_ETA_CONTACT_TRAY";
        break;
      case 736:
        v8 = @"SIRI_SHARE_ETA";
        break;
      case 737:
        v8 = @"SIRI_SUGGESTION_SHARED_ETA";
        break;
      case 738:
        v8 = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY";
        break;
      case 739:
        v8 = @"INCIDENT_ALERT_TRAY";
        break;
      case 740:
        v8 = @"INCIDENT_REPORT_CONFIRMATION_TRAY";
        break;
      case 741:
        v8 = @"RAP_INCIDENT_REPORT_VIEW";
        break;
      case 742:
        v8 = @"SEARCH_ALONG_ROUTE_CATEGORY_TRAY";
        break;
      case 743:
        v8 = @"TRAFFIC_ADVISORY_SHEET";
        break;
      case 801:
        v8 = @"SIRI_PLUGIN_SNIPPET";
        break;
      case 802:
        v8 = @"SIRI_PLUGIN_COMMAND";
        break;
      case 803:
        v8 = @"SIRI_SEARCH_RESULT_LIST";
        break;
      case 804:
        v8 = @"SIRI_DISAMBIGUATION_LIST";
        break;
      case 805:
        v8 = @"SIRI_PLACE_SNIPPET";
        break;
      default:
        if (v5 != 901)
        {
          goto LABEL_570;
        }

        v8 = @"CHROME";
        break;
    }
  }

LABEL_571:
  [RAPAnalyticsManager _captureRAPUserAction:21 target:41 value:v8 report:reportCopy requestParameters:v7 duration:0 muid:muid];
}

@end