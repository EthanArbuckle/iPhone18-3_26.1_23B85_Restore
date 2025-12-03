@interface AceObject
- (BOOL)_afui_updateMapsAnalytics;
@end

@implementation AceObject

- (BOOL)_afui_updateMapsAnalytics
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    extSessionGuid = [(AceObject *)self extSessionGuid];
    extSessionGuidCreatedTimestamp = [(AceObject *)self extSessionGuidCreatedTimestamp];
    v5 = extSessionGuidCreatedTimestamp;
    if (extSessionGuid && extSessionGuidCreatedTimestamp)
    {
      v6 = +[GEOUserSession sharedInstance];
      v7 = objc_alloc_init(GEOUserSessionEntity);
      [v7 updateSessionIDFromUUIDString:extSessionGuid];
      [v5 timeIntervalSinceReferenceDate];
      [v7 setSessionCreationTime:?];
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = objc_opt_class();
        v11 = v10;
        aceId = [(AceObject *)self aceId];
        *buf = 136315906;
        v28 = "[AceObject(MapsSession) _afui_updateMapsAnalytics]";
        v29 = 2112;
        v30 = v7;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = aceId;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Setting maps user session to %@ from <%@ %@>", buf, 0x2Au);
      }

      v13 = 1;
      [v6 setSharedMapsUserSessionEntity:v7 shareSessionIDWithMaps:1];

LABEL_23:
      return v13;
    }

    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF528(self, v14);
    }
  }

  _afui_mapsRelatedChild = [(AceObject *)self _afui_mapsRelatedChild];
  _afui_updateMapsAnalytics = [_afui_mapsRelatedChild _afui_updateMapsAnalytics];

  if ((_afui_updateMapsAnalytics & 1) == 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    extSessionGuid = [(AceObject *)self _afui_mapsRelatedChildren];
    v17 = [extSessionGuid countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(extSessionGuid);
          }

          if ([*(*(&v22 + 1) + 8 * i) _afui_updateMapsAnalytics])
          {
            v13 = 1;
            goto LABEL_23;
          }
        }

        v18 = [extSessionGuid countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
    goto LABEL_23;
  }

  return 1;
}

@end