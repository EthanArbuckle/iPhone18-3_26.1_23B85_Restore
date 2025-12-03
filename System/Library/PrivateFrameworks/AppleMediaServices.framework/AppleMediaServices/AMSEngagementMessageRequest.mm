@interface AMSEngagementMessageRequest
- (AMSEngagementMessageRequest)initWithJSObject:(id)object;
- (id)exportObject;
- (id)makeDialogRequest;
@end

@implementation AMSEngagementMessageRequest

- (AMSEngagementMessageRequest)initWithJSObject:(id)object
{
  v116[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v113.receiver = self;
  v113.super_class = AMSEngagementMessageRequest;
  v5 = [(AMSEngagementMessageRequest *)&v113 init];

  if (!v5)
  {
LABEL_106:
    v88 = v5;
    goto LABEL_107;
  }

  v6 = [objectCopy objectForKeyedSubscript:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v5->_presentationAction = 0;
  if ([v8 isEqualToString:@"present"])
  {
    v5->_presentationAction = 1;
    v9 = [objectCopy objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    v13 = [v12 objectForKeyedSubscript:@"appearance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v90 = v14;
    v15 = v14;

    v16 = [objectCopy objectForKeyedSubscript:@"debugInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    obj = v17;
    v18 = v17;

    v19 = [objectCopy objectForKeyedSubscript:@"engagementRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = [objectCopy objectForKeyedSubscript:@"messageIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v94 = v23;
    v97 = v23;

    v24 = [v12 objectForKeyedSubscript:@"iconURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v101 = v25;

    v26 = [v12 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v92 = v27;
    v96 = v27;

    v28 = [v12 objectForKeyedSubscript:@"metricsEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v100 = v29;

    v30 = [v12 objectForKeyedSubscript:@"actions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v107 = v31;

    v32 = [v12 objectForKeyedSubscript:@"defaultAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v105 = v33;

    v34 = [v12 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v104 = v35;

    v36 = [v12 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v108 = v37;

    v38 = [v12 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v39 = v15;
    if (objc_opt_isKindOfClass())
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    v106 = v41;
    if (v41)
    {
      v103 = 0;
      v42 = v39;
    }

    else
    {
      v43 = [v12 objectForKeyedSubscript:{@"title", v90, v92, v94, v96, v97}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      v45 = v44;

      v46 = [v45 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      v42 = v39;
      v106 = v47;

      v48 = [v45 objectForKeyedSubscript:@"accessibilityText"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v103 = v49;
    }

    v98 = v21;
    if (v108)
    {
      v102 = 0;
    }

    else
    {
      v50 = v18;
      v51 = v42;
      v52 = [v12 objectForKeyedSubscript:@"subtitle"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;

      v55 = [v54 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      v42 = v51;
      v108 = v56;

      v57 = [v54 objectForKeyedSubscript:@"accessibilityText"];
      objc_opt_class();
      v18 = v50;
      if (objc_opt_isKindOfClass())
      {
        v58 = v57;
      }

      else
      {
        v58 = 0;
      }

      v21 = v98;
      v102 = v58;
    }

    v59 = [v12 objectForKeyedSubscript:{@"clickstreamMetricsEvent", v90}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    v61 = v60;

    clickstreamMetricsEvent = v5->_clickstreamMetricsEvent;
    v5->_clickstreamMetricsEvent = v61;

    objc_storeStrong(&v5->_debugInfo, obj);
    objc_storeStrong(&v5->_messageIdentifier, v94);
    objc_storeStrong(&v5->_title, v106);
    objc_storeStrong(&v5->_titleAccessibilityLabel, v103);
    objc_storeStrong(&v5->_subtitle, v108);
    objc_storeStrong(&v5->_subtitleAccessibilityLabel, v102);
    objc_storeStrong(&v5->_identifier, v92);
    v63 = [objectCopy objectForKeyedSubscript:@"isCached"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;

    v5->_isMessageCached = [v65 BOOLValue];
    v66 = [[AMSEngagementRequest alloc] initWithJSONDictionary:v21];
    engagementRequest = v5->_engagementRequest;
    v5->_engagementRequest = v66;

    if (v18)
    {
      clientData = [(AMSEngagementRequest *)v5->_engagementRequest clientData];
      v115 = @"debugInfo";
      v116[0] = v18;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v115 count:1];
      v70 = [clientData ams_dictionaryByAddingEntriesFromDictionary:v69];
      [(AMSEngagementRequest *)v5->_engagementRequest setClientData:v70];
    }

    if ([v42 count])
    {
      objc_storeStrong(&v5->_appearanceInfo, v91);
    }

    v72 = v100;
    v71 = v101;
    v73 = v105;
    if (v101)
    {
      v74 = [MEMORY[0x1E695DFF8] URLWithString:v101];
      iconURL = v5->_iconURL;
      v5->_iconURL = v74;
    }

    if (v104)
    {
      v5->_style = [v104 integerValue];
    }

    if (v100)
    {
      v76 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v100];
      metricsEvent = v5->_metricsEvent;
      v5->_metricsEvent = v76;
    }

    if (v107)
    {
      v93 = v42;
      v95 = v8;
      array = [MEMORY[0x1E695DF70] array];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v79 = v107;
      v80 = [v79 countByEnumeratingWithState:&v109 objects:v114 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v110;
        do
        {
          for (i = 0; i != v81; ++i)
          {
            if (*v110 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = [[AMSEngagementMessageAction alloc] initWithJSObject:*(*(&v109 + 1) + 8 * i)];
            if (v84)
            {
              [array addObject:v84];
            }
          }

          v81 = [v79 countByEnumeratingWithState:&v109 objects:v114 count:16];
        }

        while (v81);
      }

      if ([array count])
      {
        v85 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
        actions = v5->_actions;
        v5->_actions = v85;
      }

      v42 = v93;
      v8 = v95;
      v21 = v98;
      v72 = v100;
      v71 = v101;
      v73 = v105;
    }

    if (v73)
    {
      v87 = [[AMSEngagementMessageAction alloc] initWithJSObject:v73];
      if (v87)
      {
        objc_storeStrong(&v5->_defaultAction, v87);
      }

      v73 = v105;
    }

    goto LABEL_106;
  }

  if ([v8 isEqualToString:@"dismissDeferred"])
  {
    v5->_presentationAction = 2;
  }

  v11 = v5;

LABEL_107:
  return v5;
}

- (id)exportObject
{
  v61[2] = *MEMORY[0x1E69E9840];
  presentationAction = [(AMSEngagementMessageRequest *)self presentationAction];
  v4 = @"present";
  if (!presentationAction)
  {
    v4 = @"dismiss";
  }

  if (presentationAction == 2)
  {
    v5 = @"dismissDeferred";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x1E695DF90];
  v60[0] = @"action";
  v60[1] = @"isCached";
  v61[0] = v5;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSEngagementMessageRequest isMessageCached](self, "isMessageCached")}];
  v61[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
  v9 = [v6 dictionaryWithDictionary:v8];

  debugInfo = [(AMSEngagementMessageRequest *)self debugInfo];

  if (debugInfo)
  {
    debugInfo2 = [(AMSEngagementMessageRequest *)self debugInfo];
    [v9 setObject:debugInfo2 forKeyedSubscript:@"debugInfo"];
  }

  engagementRequest = [(AMSEngagementMessageRequest *)self engagementRequest];

  if (engagementRequest)
  {
    engagementRequest2 = [(AMSEngagementMessageRequest *)self engagementRequest];
    exportObject = [engagementRequest2 exportObject];
    [v9 setObject:exportObject forKeyedSubscript:@"engagementRequest"];
  }

  messageIdentifier = [(AMSEngagementMessageRequest *)self messageIdentifier];

  if (messageIdentifier)
  {
    messageIdentifier2 = [(AMSEngagementMessageRequest *)self messageIdentifier];
    [v9 setObject:messageIdentifier2 forKeyedSubscript:@"messageIdentifier"];
  }

  v17 = MEMORY[0x1E695DF90];
  v58 = @"style";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSEngagementMessageRequest style](self, "style")}];
  v59 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v20 = [v17 dictionaryWithDictionary:v19];

  appearanceInfo = [(AMSEngagementMessageRequest *)self appearanceInfo];

  if (appearanceInfo)
  {
    appearanceInfo2 = [(AMSEngagementMessageRequest *)self appearanceInfo];
    [v20 setObject:appearanceInfo2 forKeyedSubscript:@"appearance"];
  }

  iconURL = [(AMSEngagementMessageRequest *)self iconURL];

  if (iconURL)
  {
    iconURL2 = [(AMSEngagementMessageRequest *)self iconURL];
    absoluteString = [iconURL2 absoluteString];
    [v20 setObject:absoluteString forKeyedSubscript:@"iconURL"];
  }

  identifier = [(AMSEngagementMessageRequest *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSEngagementMessageRequest *)self identifier];
    [v20 setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  metricsEvent = [(AMSEngagementMessageRequest *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSEngagementMessageRequest *)self metricsEvent];
    underlyingDictionary = [metricsEvent2 underlyingDictionary];
    [v20 setObject:underlyingDictionary forKeyedSubscript:@"metricsEvent"];
  }

  clickstreamMetricsEvent = [(AMSEngagementMessageRequest *)self clickstreamMetricsEvent];

  if (clickstreamMetricsEvent)
  {
    clickstreamMetricsEvent2 = [(AMSEngagementMessageRequest *)self clickstreamMetricsEvent];
    [v20 setObject:clickstreamMetricsEvent2 forKeyedSubscript:@"clickstreamMetricsEvent"];
  }

  actions = [(AMSEngagementMessageRequest *)self actions];

  if (actions)
  {
    actions2 = [(AMSEngagementMessageRequest *)self actions];
    v35 = [actions2 ams_mapWithTransform:&__block_literal_global_50];
    [v20 setObject:v35 forKeyedSubscript:@"actions"];
  }

  defaultAction = [(AMSEngagementMessageRequest *)self defaultAction];

  if (defaultAction)
  {
    defaultAction2 = [(AMSEngagementMessageRequest *)self defaultAction];
    exportObject2 = [defaultAction2 exportObject];
    [v20 setObject:exportObject2 forKeyedSubscript:@"defaultAction"];
  }

  subtitle = [(AMSEngagementMessageRequest *)self subtitle];

  if (subtitle)
  {
    v40 = MEMORY[0x1E695DF90];
    v56 = @"value";
    subtitle2 = [(AMSEngagementMessageRequest *)self subtitle];
    v57 = subtitle2;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v43 = [v40 dictionaryWithDictionary:v42];

    subtitleAccessibilityLabel = [(AMSEngagementMessageRequest *)self subtitleAccessibilityLabel];

    if (subtitleAccessibilityLabel)
    {
      subtitleAccessibilityLabel2 = [(AMSEngagementMessageRequest *)self subtitleAccessibilityLabel];
      [v43 setObject:subtitleAccessibilityLabel2 forKeyedSubscript:@"accessibilityText"];
    }

    [v20 setObject:v43 forKeyedSubscript:@"subtitle"];
  }

  title = [(AMSEngagementMessageRequest *)self title];

  if (title)
  {
    v47 = MEMORY[0x1E695DF90];
    v54 = @"value";
    title2 = [(AMSEngagementMessageRequest *)self title];
    v55 = title2;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v50 = [v47 dictionaryWithDictionary:v49];

    titleAccessibilityLabel = [(AMSEngagementMessageRequest *)self titleAccessibilityLabel];

    if (titleAccessibilityLabel)
    {
      titleAccessibilityLabel2 = [(AMSEngagementMessageRequest *)self titleAccessibilityLabel];
      [v50 setObject:titleAccessibilityLabel2 forKeyedSubscript:@"accessibilityText"];
    }

    [v20 setObject:v50 forKeyedSubscript:@"title"];
  }

  [v9 setObject:v20 forKeyedSubscript:@"content"];

  return v9;
}

- (id)makeDialogRequest
{
  v36[1] = *MEMORY[0x1E69E9840];
  if ([(AMSEngagementMessageRequest *)self presentationAction]&& [(AMSEngagementMessageRequest *)self presentationAction]!= 2)
  {
    v4 = [AMSDialogRequest alloc];
    title = [(AMSEngagementMessageRequest *)self title];
    subtitle = [(AMSEngagementMessageRequest *)self subtitle];
    appearanceInfo = [(AMSEngagementMessageRequest *)self appearanceInfo];
    v3 = [(AMSDialogRequest *)v4 initWithTitle:title message:subtitle appearanceInfo:appearanceInfo];

    debugInfo = [(AMSEngagementMessageRequest *)self debugInfo];

    if (debugInfo)
    {
      userInfo = [(AMSDialogRequest *)v3 userInfo];
      v35 = @"debugInfo";
      debugInfo2 = [(AMSEngagementMessageRequest *)self debugInfo];
      v36[0] = debugInfo2;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v12 = [userInfo ams_dictionaryByAddingEntriesFromDictionary:v11];
      [(AMSDialogRequest *)v3 setUserInfo:v12];
    }

    titleAccessibilityLabel = [(AMSEngagementMessageRequest *)self titleAccessibilityLabel];
    [(AMSDialogRequest *)v3 setTitleAccessibilityLabel:titleAccessibilityLabel];

    subtitleAccessibilityLabel = [(AMSEngagementMessageRequest *)self subtitleAccessibilityLabel];
    [(AMSDialogRequest *)v3 setMessageAccessibilityLabel:subtitleAccessibilityLabel];

    iconURL = [(AMSEngagementMessageRequest *)self iconURL];
    [(AMSDialogRequest *)v3 setIconURL:iconURL];

    [(AMSDialogRequest *)v3 setStyle:[(AMSEngagementMessageRequest *)self style]];
    clickstreamMetricsEvent = [(AMSEngagementMessageRequest *)self clickstreamMetricsEvent];
    [(AMSDialogRequest *)v3 setClickstreamMetricsEvent:clickstreamMetricsEvent];

    metricsEvent = [(AMSEngagementMessageRequest *)self metricsEvent];
    [(AMSDialogRequest *)v3 setMetricsEvent:metricsEvent];

    identifier = [(AMSEngagementMessageRequest *)self identifier];
    [(AMSDialogRequest *)v3 setIdentifier:identifier];

    actions = [(AMSEngagementMessageRequest *)self actions];

    if (actions)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      actions2 = [(AMSEngagementMessageRequest *)self actions];
      v21 = [actions2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(actions2);
            }

            makeDialogAction = [*(*(&v30 + 1) + 8 * i) makeDialogAction];
            if (makeDialogAction)
            {
              [(AMSDialogRequest *)v3 addButtonAction:makeDialogAction];
            }
          }

          v22 = [actions2 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v22);
      }
    }

    defaultAction = [(AMSEngagementMessageRequest *)self defaultAction];

    if (defaultAction)
    {
      defaultAction2 = [(AMSEngagementMessageRequest *)self defaultAction];
      makeDialogAction2 = [defaultAction2 makeDialogAction];

      [(AMSDialogRequest *)v3 setDefaultAction:makeDialogAction2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end