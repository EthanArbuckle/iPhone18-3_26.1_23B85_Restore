@interface SRModeDialogTransformer
+ (BOOL)_alwaysPrintSiriResponse;
+ (BOOL)supportsTransformationForAceCommand:(id)command;
+ (id)_addViewsForAddDialogs:(id)dialogs views:(id)views;
+ (id)_configurationDictionary;
+ (id)_firstSnippetInViews:(id)views;
+ (id)_redundantDUCIds;
+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_removeSpeakableTextFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_removeUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_sayItForDialog:(id)dialog;
+ (id)_speakableTextForDialog:(id)dialog mode:(unint64_t)mode;
+ (id)_transformDialogAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_transformLegacyAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_utteranceViewForDialog:(id)dialog mode:(unint64_t)mode printedOnly:(BOOL)only;
+ (id)transformAddDialogs:(id)dialogs forMode:(unint64_t)mode;
+ (id)transformAddViews:(id)views forMode:(unint64_t)mode;
+ (unint64_t)_typeOfAddViews:(id)views;
+ (void)_logModeComputationForAceCommand:(id)command mode:(unint64_t)mode;
@end

@implementation SRModeDialogTransformer

+ (id)transformAddViews:(id)views forMode:(unint64_t)mode
{
  viewsCopy = views;
  [self _logModeComputationForAceCommand:viewsCopy mode:mode];
  v8 = [self _typeOfAddViews:viewsCopy];
  if (v8 == 2)
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF638(v16, viewsCopy);
    }

    v4 = [viewsCopy copy];
    [v4 setViews:&__NSArray0__struct];
  }

  else
  {
    if (v8 == 1)
    {
      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        aceId = [viewsCopy aceId];
        v18 = 136315394;
        v19 = "+[SRModeDialogTransformer transformAddViews:forMode:]";
        v20 = 2112;
        v21 = aceId;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Found dialog AddViews (aceId = %@)", &v18, 0x16u);
      }

      v12 = [self _transformDialogAddViews:viewsCopy forMode:mode];
    }

    else
    {
      if (v8)
      {
        goto LABEL_14;
      }

      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        aceId2 = [viewsCopy aceId];
        v18 = 136315394;
        v19 = "+[SRModeDialogTransformer transformAddViews:forMode:]";
        v20 = 2112;
        v21 = aceId2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Found legacy AddViews (aceId = %@)", &v18, 0x16u);
      }

      v12 = [self _transformLegacyAddViews:viewsCopy forMode:mode];
    }

    v4 = v12;
  }

LABEL_14:

  return v4;
}

+ (id)transformAddDialogs:(id)dialogs forMode:(unint64_t)mode
{
  dialogsCopy = dialogs;
  [self _logModeComputationForAceCommand:dialogsCopy mode:mode];
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    aceId = [dialogsCopy aceId];
    dialogs = [dialogsCopy dialogs];
    *buf = 136315650;
    v39 = "+[SRModeDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = aceId;
    v42 = 2048;
    v43 = [dialogs count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) contains %lu dialogs", buf, 0x20u);
  }

  v33 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSMutableArray);
  _alwaysPrintSiriResponse = [self _alwaysPrintSiriResponse];
  if (_alwaysPrintSiriResponse)
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "+[SRModeDialogTransformer transformAddDialogs:forMode:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  dialogs2 = [dialogsCopy dialogs];
  v15 = [dialogs2 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(dialogs2);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        if ((_alwaysPrintSiriResponse | [v19 spokenOnly] ^ 1) == 1)
        {
          [self _utteranceViewForDialog:v19 mode:mode printedOnly:1];
          v21 = v20 = v11;
          [v33 addObject:v21];

          v11 = v20;
        }

        printedOnly = [v19 printedOnly];
        if (mode <= 1 && (printedOnly & 1) == 0)
        {
          v23 = [self _sayItForDialog:v19];
          [v11 addObject:v23];
        }
      }

      v16 = [dialogs2 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v16);
  }

  v24 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    aceId2 = [v32 aceId];
    v27 = [v33 count];
    v28 = [v11 count];
    *buf = 136315906;
    v39 = "+[SRModeDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = aceId2;
    v42 = 2048;
    v43 = v27;
    v44 = 2048;
    v45 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) transformed into %lu utterance views and %lu sayIts.", buf, 0x2Au);
  }

  v29 = objc_alloc_init(NSMutableArray);
  if ([v33 count])
  {
    v30 = [self _addViewsForAddDialogs:v32 views:v33];
    [v29 addObject:v30];
  }

  if ([v11 count])
  {
    [v29 addObjectsFromArray:v11];
  }

  return v29;
}

+ (BOOL)supportsTransformationForAceCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (unint64_t)_typeOfAddViews:(id)views
{
  viewsCopy = views;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  views = [viewsCopy views];
  v5 = [views countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(views);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        v7 |= objc_opt_isKindOfClass();
        dialog = [v11 dialog];
        LODWORD(v11) = dialog != 0;

        v8 |= v11;
      }

      v6 = [views countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);

    if (v7 & v8)
    {
      v13 = 2;
    }

    else
    {
      v13 = v8 & 1;
    }
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

+ (id)_transformLegacyAddViews:(id)views forMode:(unint64_t)mode
{
  viewsCopy = views;
  if (([self _shouldTransformLegacyAddViews] & 1) == 0)
  {
    goto LABEL_6;
  }

  if (mode < 2)
  {
    if (![self _alwaysPrintSiriResponse])
    {
      v8 = [self _removeUtteranceViewsFromAddViews:viewsCopy forMode:mode];
      goto LABEL_7;
    }

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "+[SRModeDialogTransformer _transformLegacyAddViews:forMode:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v13, 0xCu);
    }

LABEL_6:
    v8 = viewsCopy;
LABEL_7:
    mode = v8;
    goto LABEL_8;
  }

  if (mode == 2)
  {
    if ([self _alwaysPrintSiriResponse])
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "+[SRModeDialogTransformer _transformLegacyAddViews:forMode:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v13, 0xCu);
      }

      v11 = viewsCopy;
    }

    else
    {
      v11 = [self _removeRedundantUtteranceViewsFromAddViews:viewsCopy forMode:2];
    }

    v12 = v11;
    mode = [self _removeSpeakableTextFromAddViews:v11 forMode:2];
  }

LABEL_8:

  return mode;
}

+ (id)_configurationDictionary
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FABC;
  block[3] = &unk_100167A30;
  block[4] = self;
  if (qword_10018F258 != -1)
  {
    dispatch_once(&qword_10018F258, block);
  }

  v2 = qword_10018F260;

  return v2;
}

+ (id)_redundantDUCIds
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FC34;
  block[3] = &unk_100167A30;
  block[4] = self;
  if (qword_10018F268 != -1)
  {
    dispatch_once(&qword_10018F268, block);
  }

  v2 = qword_10018F270;

  return v2;
}

+ (BOOL)_alwaysPrintSiriResponse
{
  v2 = +[AFPreferences sharedPreferences];
  siriResponseShouldAlwaysPrint = [v2 siriResponseShouldAlwaysPrint];

  return siriResponseShouldAlwaysPrint;
}

+ (id)_firstSnippetInViews:(id)views
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewsCopy = views;
  v4 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode
{
  viewsCopy = views;
  views = [viewsCopy views];
  v7 = [self _firstSnippetInViews:views];

  if (v7)
  {
    v27 = v7;
    _redundantDUCIds = [self _redundantDUCIds];
    v8 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    views2 = [viewsCopy views];
    v10 = [views2 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(views2);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            dialogIdentifier = [v15 dialogIdentifier];
            v17 = dialogIdentifier;
            v18 = &stru_10016AE90;
            if (dialogIdentifier)
            {
              v18 = dialogIdentifier;
            }

            v19 = v18;

            lowercaseString = [(__CFString *)v19 lowercaseString];
            v21 = [_redundantDUCIds containsObject:lowercaseString];

            if (v21)
            {
              v22 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
              {
                v23 = v22;
                v24 = sub_100053A1C(mode);
                *buf = 136315650;
                v35 = "+[SRModeDialogTransformer _removeRedundantUtteranceViewsFromAddViews:forMode:]";
                v36 = 2112;
                v37 = v19;
                v38 = 2112;
                v39 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing redundant AssistantUtteranceView (%@) for current mode: %@", buf, 0x20u);
              }
            }

            else
            {
              [v8 addObject:v15];
            }
          }

          else
          {
            [v8 addObject:v14];
          }
        }

        v11 = [views2 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v11);
    }

    v25 = [viewsCopy copy];
    [v25 setViews:v8];

    v7 = v27;
  }

  else
  {
    v25 = viewsCopy;
  }

  return v25;
}

+ (id)_removeSpeakableTextFromAddViews:(id)views forMode:(unint64_t)mode
{
  viewsCopy = views;
  [viewsCopy views];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v68 = 0u;
  v4 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v66;
    v55 = *v66;
    do
    {
      v7 = 0;
      v56 = v5;
      do
      {
        if (*v66 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v65 + 1) + 8 * v7);
        speakableText = [v8 speakableText];

        if (speakableText)
        {
          speakableText2 = [v8 speakableText];
          v11 = [speakableText2 length];

          if (v11)
          {
            v12 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
              speakableText3 = [v8 speakableText];
              aceId = [v8 aceId];
              v16 = sub_100053A1C(mode);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableText3;
              v74 = 2112;
              v75 = aceId;
              v76 = 2112;
              v77 = v16;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from view %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v8 setSpeakableText:0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v8;
          speakableSuffix = [v17 speakableSuffix];
          v19 = [speakableSuffix length];

          if (v19)
          {
            v20 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              speakableSuffix2 = [v17 speakableSuffix];
              aceId2 = [v17 aceId];
              v24 = sub_100053A1C(mode);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableSuffix2;
              v74 = 2112;
              v75 = aceId2;
              v76 = 2112;
              v77 = v24;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableSuffix '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v17 setSpeakableSuffix:0];
          speakableDelimiter = [v17 speakableDelimiter];
          v26 = [speakableDelimiter length];

          if (v26)
          {
            v27 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
              speakableDelimiter2 = [v17 speakableDelimiter];
              aceId3 = [v17 aceId];
              v31 = sub_100053A1C(mode);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableDelimiter2;
              v74 = 2112;
              v75 = aceId3;
              v76 = 2112;
              v77 = v31;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          v59 = v7;
          [v17 setSpeakableDelimiter:0];
          speakableFinalDelimiter = [v17 speakableFinalDelimiter];
          v33 = [speakableFinalDelimiter length];

          if (v33)
          {
            v34 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v34;
              speakableFinalDelimiter2 = [v17 speakableFinalDelimiter];
              aceId4 = [v17 aceId];
              v38 = sub_100053A1C(mode);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableFinalDelimiter2;
              v74 = 2112;
              v75 = aceId4;
              v76 = 2112;
              v77 = v38;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableFinalDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v17 setSpeakableFinalDelimiter:0];
          v58 = v17;
          items = [v17 items];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v40 = [items countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v62;
            do
            {
              for (i = 0; i != v41; i = i + 1)
              {
                if (*v62 != v42)
                {
                  objc_enumerationMutation(items);
                }

                v44 = *(*(&v61 + 1) + 8 * i);
                speakableText4 = [v44 speakableText];
                v46 = [speakableText4 length];

                if (v46)
                {
                  v47 = AFSiriLogContextConnection;
                  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = v47;
                    speakableText5 = [v44 speakableText];
                    aceId5 = [v44 aceId];
                    v51 = sub_100053A1C(mode);
                    *buf = 136315906;
                    v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
                    v72 = 2112;
                    v73 = speakableText5;
                    v74 = 2112;
                    v75 = aceId5;
                    v76 = 2112;
                    v77 = v51;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from SAUIListItem %@ for current mode: %@", buf, 0x2Au);
                  }
                }

                [v44 setSpeakableText:0];
              }

              v41 = [items countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v41);
          }

          [v58 setItems:items];

          v6 = v55;
          v5 = v56;
          v7 = v59;
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v5);
  }

  v52 = [viewsCopy copy];
  [v52 setViews:obj];

  return v52;
}

+ (id)_removeUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode
{
  viewsCopy = views;
  views = [viewsCopy views];
  v7 = [self _firstSnippetInViews:views];
  v8 = v7;
  if (v7)
  {
    selfCopy = self;
    v42 = v7;
    v44 = viewsCopy;
    v9 = objc_alloc_init(NSMutableArray);
    v47 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = views;
    v11 = views;
    v12 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      v15 = 1;
      v16 = &AFSiriLogContextConnection;
      v45 = v10;
      do
      {
        v17 = 0;
        v48 = v13;
        do
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v49 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            speakableText = [v19 speakableText];

            if (speakableText)
            {
              speakableText2 = [v19 speakableText];
              [v9 addObject:speakableText2];

              v15 = v15 & [v19 canUseServerTTS];
            }

            dialogIdentifier = [v19 dialogIdentifier];

            if (dialogIdentifier)
            {
              dialogIdentifier2 = [v19 dialogIdentifier];
              [v47 addObject:dialogIdentifier2];
            }

            v24 = *v16;
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              [v19 dialogIdentifier];
              v27 = v26 = v9;
              sub_100053A1C(mode);
              v28 = v16;
              v29 = v14;
              v30 = v15;
              v32 = v31 = v11;
              *buf = 136315650;
              v54 = "+[SRModeDialogTransformer _removeUtteranceViewsFromAddViews:forMode:]";
              v55 = 2112;
              v56 = v27;
              v57 = 2112;
              v58 = v32;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing AssistantUtteranceView (%@) for current mode: %@", buf, 0x20u);

              v11 = v31;
              v15 = v30;
              v14 = v29;
              v16 = v28;

              v9 = v26;
              v10 = v45;
            }

            v13 = v48;
          }

          else
          {
            [v10 addObject:v18];
          }

          v17 = v17 + 1;
        }

        while (v13 != v17);
        v13 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v13);
    }

    else
    {
      LOBYTE(v15) = 1;
    }

    v8 = v42;
    speakableText3 = [v42 speakableText];

    viewsCopy = v44;
    if (speakableText3)
    {
      speakableText4 = [v42 speakableText];
      [v9 addObject:speakableText4];
    }

    views = v43;
    if ([v9 count])
    {
      v36 = [v9 componentsJoinedByString:@"\n"];
      [v42 setSpeakableText:v36];
      [v42 setCanUseServerTTS:v15 & 1];
    }

    _instrumentation = [v41 _instrumentation];
    aceId = [v42 aceId];
    [_instrumentation setDialogIdentifiers:v47 forAceViewSpeakableTextWithIdentifier:aceId];

    v33 = [v44 copy];
    [v33 setViews:v10];
  }

  else
  {
    v33 = viewsCopy;
  }

  return v33;
}

+ (id)_transformDialogAddViews:(id)views forMode:(unint64_t)mode
{
  viewsCopy = views;
  v7 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = viewsCopy;
  views = [viewsCopy views];
  v9 = [views countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v31 = views;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(views);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        dialog = [v13 dialog];
        if (!dialog)
        {
          [v7 addObject:v13];
          goto LABEL_16;
        }

        if ([self _alwaysPrintSiriResponse])
        {
          v15 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v40 = "+[SRModeDialogTransformer _transformDialogAddViews:forMode:]";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
          }

          v16 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:{objc_msgSend(dialog, "printedOnly")}];
          v44[0] = v16;
          v44[1] = v13;
          v17 = v44;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:0];
          v43[0] = v16;
          v43[1] = v13;
          v17 = v43;
LABEL_15:
          v18 = [NSArray arrayWithObjects:v17 count:2];
          [v7 addObjectsFromArray:v18];

          goto LABEL_16;
        }

        if (mode < 2)
        {
          if ([dialog printedOnly])
          {
            v19 = v13;
            v20 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:1];
            [v7 addObject:v20];
          }

          else
          {
            v19 = [v13 copy];
            v24 = [self _speakableTextForDialog:dialog mode:mode];
            [v19 setSpeakableText:v24];

            _instrumentation = [self _instrumentation];
            dialogIdentifier = [dialog dialogIdentifier];
            v38 = dialogIdentifier;
            v25 = [NSArray arrayWithObjects:&v38 count:1];
            aceId = [v19 aceId];
            [_instrumentation setDialogIdentifiers:v25 forAceViewSpeakableTextWithIdentifier:aceId];

            views = v31;
          }

          goto LABEL_30;
        }

        if (mode == 2)
        {
          if ([dialog spokenOnly])
          {
            v21 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v21;
              dialogIdentifier2 = [dialog dialogIdentifier];
              *buf = 136315394;
              v40 = "+[SRModeDialogTransformer _transformDialogAddViews:forMode:]";
              v41 = 2112;
              v42 = dialogIdentifier2;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) for Silent Mode since it is Spoken Only", buf, 0x16u);

              views = v31;
              goto LABEL_28;
            }
          }

          else
          {
            v22 = [self _utteranceViewForDialog:dialog mode:2 printedOnly:0];
            [v7 addObject:v22];
LABEL_28:
          }

          v19 = v13;
          goto LABEL_30;
        }

        v19 = 0;
LABEL_30:
        [v7 addObject:v19];

LABEL_16:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v27 = [views countByEnumeratingWithState:&v34 objects:v45 count:16];
      v10 = v27;
    }

    while (v27);
  }

  v28 = [v30 copy];
  [v28 setViews:v7];

  return v28;
}

+ (id)_utteranceViewForDialog:(id)dialog mode:(unint64_t)mode printedOnly:(BOOL)only
{
  onlyCopy = only;
  dialogCopy = dialog;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    dialogIdentifier = [dialogCopy dialogIdentifier];
    v12 = sub_100053A1C(mode);
    v51 = 136315650;
    v52 = "+[SRModeDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
    v53 = 2112;
    v54 = dialogIdentifier;
    v55 = 2112;
    v56 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into an Utterance View for current mode: %@", &v51, 0x20u);
  }

  v13 = objc_alloc_init(SAUIAssistantUtteranceView);
  aceId = [dialogCopy aceId];
  [v13 setAceId:aceId];

  refId = [dialogCopy refId];
  [v13 setRefId:refId];

  [v13 setCanUseServerTTS:{objc_msgSend(dialogCopy, "canUseServerTTS")}];
  configuration = [dialogCopy configuration];
  context = [configuration context];
  [v13 setContext:context];

  dialogIdentifier2 = [dialogCopy dialogIdentifier];
  [v13 setDialogIdentifier:dialogIdentifier2];

  metricsContext = [dialogCopy metricsContext];
  [v13 setMetricsContext:metricsContext];

  v20 = +[AFAccessibilityObserver sharedObserver];
  state = [v20 state];
  isVoiceOverTouchEnabled = [state isVoiceOverTouchEnabled];

  if (mode != 2 || isVoiceOverTouchEnabled != 2)
  {
    if (onlyCopy)
    {
      content = [dialogCopy content];
      text = [content text];

      v28 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:
        text5 = 0;
        goto LABEL_31;
      }

      caption = v28;
      dialogIdentifier3 = [dialogCopy dialogIdentifier];
      v51 = 136315394;
      v52 = "+[SRModeDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
      v53 = 2112;
      v54 = dialogIdentifier3;
      _os_log_impl(&_mh_execute_header, caption, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) when printedOnly is true", &v51, 0x16u);
LABEL_29:

      goto LABEL_30;
    }

    if (mode)
    {
      if (mode != 1)
      {
        if (mode != 2)
        {
          text5 = 0;
          text = 0;
          goto LABEL_31;
        }

        caption = [dialogCopy caption];
        text2 = [caption text];
        dialogIdentifier3 = text2;
        if (text2)
        {
          text = text2;
        }

        else
        {
          content2 = [dialogCopy content];
          text = [content2 text];
        }

        goto LABEL_29;
      }

      caption2 = [dialogCopy caption];
      text3 = [caption2 text];
      v43 = text3;
      if (text3)
      {
        text = text3;
      }

      else
      {
        content3 = [dialogCopy content];
        text = [content3 text];
      }

      selfCopy2 = self;
      v46 = dialogCopy;
      v47 = 1;
    }

    else
    {
      content4 = [dialogCopy content];
      text = [content4 text];

      selfCopy2 = self;
      v46 = dialogCopy;
      v47 = 0;
    }

    text5 = [selfCopy2 _speakableTextForDialog:v46 mode:v47];
    goto LABEL_31;
  }

  caption3 = [dialogCopy caption];
  text4 = [caption3 text];
  v25 = text4;
  if (text4)
  {
    text = text4;
  }

  else
  {
    content5 = [dialogCopy content];
    text = [content5 text];
  }

  content6 = [dialogCopy content];
  speakableTextOverride = [content6 speakableTextOverride];
  v35 = speakableTextOverride;
  if (speakableTextOverride)
  {
    text5 = speakableTextOverride;
  }

  else
  {
    content7 = [dialogCopy content];
    text5 = [content7 text];
  }

  v38 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    dialogIdentifier4 = [dialogCopy dialogIdentifier];
    v51 = 136315394;
    v52 = "+[SRModeDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
    v53 = 2112;
    v54 = dialogIdentifier4;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) CONTENT into speakable text for Voice Over", &v51, 0x16u);
  }

LABEL_31:
  [v13 setText:text];
  [v13 setSpeakableText:text5];

  return v13;
}

+ (id)_speakableTextForDialog:(id)dialog mode:(unint64_t)mode
{
  dialogCopy = dialog;
  v6 = +[AFAccessibilityObserver sharedObserver];
  state = [v6 state];
  isVoiceOverTouchEnabled = [state isVoiceOverTouchEnabled];

  switch(mode)
  {
    case 0uLL:
      v16 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v16;
        dialogIdentifier = [dialogCopy dialogIdentifier];
        *v27 = 136315394;
        *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
        *&v27[12] = 2112;
        *&v27[14] = dialogIdentifier;
        v15 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for Voice Mode";
        goto LABEL_12;
      }

LABEL_13:
      content = [dialogCopy content];
      speakableTextOverride = [content speakableTextOverride];
      if (speakableTextOverride)
      {
LABEL_14:
        isVoiceOverTouchEnabled = speakableTextOverride;
LABEL_17:

        break;
      }

      content2 = [dialogCopy content];
LABEL_16:
      v20 = content2;
      isVoiceOverTouchEnabled = [content2 text];

      goto LABEL_17;
    case 1uLL:
      if (isVoiceOverTouchEnabled == 2)
      {
        v12 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          dialogIdentifier = [dialogCopy dialogIdentifier];
          *v27 = 136315394;
          *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
          *&v27[12] = 2112;
          *&v27[14] = dialogIdentifier;
          v15 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for Mixed Mode with Voice Over";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, v27, 0x16u);

          goto LABEL_13;
        }
      }

      else
      {
        caption = [dialogCopy caption];

        v23 = AFSiriLogContextConnection;
        v24 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
        if (caption)
        {
          if (v24)
          {
            v25 = v23;
            dialogIdentifier2 = [dialogCopy dialogIdentifier];
            *v27 = 136315394;
            *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
            *&v27[12] = 2112;
            *&v27[14] = dialogIdentifier2;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) CAPTION into speakable text for Mixed Mode", v27, 0x16u);
          }

          content = [dialogCopy caption];
          speakableTextOverride = [content speakableTextOverride];
          if (speakableTextOverride)
          {
            goto LABEL_14;
          }

          content2 = [dialogCopy caption];
          goto LABEL_16;
        }

        if (v24)
        {
          v13 = v23;
          dialogIdentifier = [dialogCopy dialogIdentifier];
          *v27 = 136315394;
          *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
          *&v27[12] = 2112;
          *&v27[14] = dialogIdentifier;
          v15 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for Mixed Mode (Caption is nil)";
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    case 2uLL:
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        dialogIdentifier3 = [dialogCopy dialogIdentifier];
        *v27 = 136315394;
        *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
        *&v27[12] = 2112;
        *&v27[14] = dialogIdentifier3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) speakable text for Silent Mode", v27, 0x16u);
      }

      isVoiceOverTouchEnabled = 0;
      break;
  }

  return isVoiceOverTouchEnabled;
}

+ (id)_sayItForDialog:(id)dialog
{
  dialogCopy = dialog;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    dialogIdentifier = [dialogCopy dialogIdentifier];
    v23 = 136315394;
    v24 = "+[SRModeDialogTransformer _sayItForDialog:]";
    v25 = 2112;
    v26 = dialogIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into a SayIt", &v23, 0x16u);
  }

  v7 = objc_alloc_init(SAUISayIt);
  aceId = [dialogCopy aceId];
  [v7 setAceId:aceId];

  refId = [dialogCopy refId];
  [v7 setRefId:refId];

  [v7 setCanUseServerTTS:{objc_msgSend(dialogCopy, "canUseServerTTS")}];
  configuration = [dialogCopy configuration];
  context = [configuration context];
  [v7 setContext:context];

  dialogIdentifier2 = [dialogCopy dialogIdentifier];
  [v7 setDialogIdentifier:dialogIdentifier2];

  configuration2 = [dialogCopy configuration];
  gender = [configuration2 gender];
  [v7 setGender:gender];

  configuration3 = [dialogCopy configuration];
  languageCode = [configuration3 languageCode];
  [v7 setLanguageCode:languageCode];

  content = [dialogCopy content];
  speakableTextOverride = [content speakableTextOverride];
  if (speakableTextOverride)
  {
    [v7 setMessage:speakableTextOverride];
  }

  else
  {
    content2 = [dialogCopy content];
    text = [content2 text];
    [v7 setMessage:text];
  }

  metricsContext = [dialogCopy metricsContext];
  [v7 setMetricsContext:metricsContext];

  return v7;
}

+ (id)_addViewsForAddDialogs:(id)dialogs views:(id)views
{
  dialogsCopy = dialogs;
  viewsCopy = views;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    aceId = [dialogsCopy aceId];
    v20 = 136315394;
    v21 = "+[SRModeDialogTransformer _addViewsForAddDialogs:views:]";
    v22 = 2112;
    v23 = aceId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming AddDialog (aceId = %@) into an AddViews", &v20, 0x16u);
  }

  v10 = objc_alloc_init(SAUIAddViews);
  aceId2 = [dialogsCopy aceId];
  [v10 setAceId:aceId2];

  refId = [dialogsCopy refId];
  [v10 setRefId:refId];

  metricsContext = [dialogsCopy metricsContext];
  [v10 setMetricsContext:metricsContext];

  listenAfterSpeaking = [dialogsCopy listenAfterSpeaking];

  if (listenAfterSpeaking)
  {
    lastObject = [viewsCopy lastObject];
    listenAfterSpeaking2 = [dialogsCopy listenAfterSpeaking];
    [lastObject setListenAfterSpeaking:listenAfterSpeaking2];

    lastObject2 = [viewsCopy lastObject];
    listenAfterSpeakingBehavior = [dialogsCopy listenAfterSpeakingBehavior];
    [lastObject2 setListenAfterSpeakingBehavior:listenAfterSpeakingBehavior];
  }

  [v10 setViews:viewsCopy];

  return v10;
}

+ (void)_logModeComputationForAceCommand:(id)command mode:(unint64_t)mode
{
  commandCopy = command;
  aceId = [commandCopy aceId];

  if (aceId)
  {
    v7 = +[NSMutableDictionary dictionary];
    aceId2 = [commandCopy aceId];
    [v7 setObject:aceId2 forKey:@"aceId"];

    v9 = sub_100053F70(mode);
    [v7 setObject:v9 forKey:@"mode"];

    encodedClassName = [commandCopy encodedClassName];
    [v7 setObject:encodedClassName forKey:@"aceClass"];

    _analytics = [self _analytics];
    [_analytics logEventWithType:5602 context:v7];
  }
}

@end