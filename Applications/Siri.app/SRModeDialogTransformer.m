@interface SRModeDialogTransformer
+ (BOOL)_alwaysPrintSiriResponse;
+ (BOOL)supportsTransformationForAceCommand:(id)a3;
+ (id)_addViewsForAddDialogs:(id)a3 views:(id)a4;
+ (id)_configurationDictionary;
+ (id)_firstSnippetInViews:(id)a3;
+ (id)_redundantDUCIds;
+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_removeSpeakableTextFromAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_removeUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_sayItForDialog:(id)a3;
+ (id)_speakableTextForDialog:(id)a3 mode:(unint64_t)a4;
+ (id)_transformDialogAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_transformLegacyAddViews:(id)a3 forMode:(unint64_t)a4;
+ (id)_utteranceViewForDialog:(id)a3 mode:(unint64_t)a4 printedOnly:(BOOL)a5;
+ (id)transformAddDialogs:(id)a3 forMode:(unint64_t)a4;
+ (id)transformAddViews:(id)a3 forMode:(unint64_t)a4;
+ (unint64_t)_typeOfAddViews:(id)a3;
+ (void)_logModeComputationForAceCommand:(id)a3 mode:(unint64_t)a4;
@end

@implementation SRModeDialogTransformer

+ (id)transformAddViews:(id)a3 forMode:(unint64_t)a4
{
  v7 = a3;
  [a1 _logModeComputationForAceCommand:v7 mode:a4];
  v8 = [a1 _typeOfAddViews:v7];
  if (v8 == 2)
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF638(v16, v7);
    }

    v4 = [v7 copy];
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
        v15 = [v7 aceId];
        v18 = 136315394;
        v19 = "+[SRModeDialogTransformer transformAddViews:forMode:]";
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Found dialog AddViews (aceId = %@)", &v18, 0x16u);
      }

      v12 = [a1 _transformDialogAddViews:v7 forMode:a4];
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
        v11 = [v7 aceId];
        v18 = 136315394;
        v19 = "+[SRModeDialogTransformer transformAddViews:forMode:]";
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Found legacy AddViews (aceId = %@)", &v18, 0x16u);
      }

      v12 = [a1 _transformLegacyAddViews:v7 forMode:a4];
    }

    v4 = v12;
  }

LABEL_14:

  return v4;
}

+ (id)transformAddDialogs:(id)a3 forMode:(unint64_t)a4
{
  v6 = a3;
  [a1 _logModeComputationForAceCommand:v6 mode:a4];
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 aceId];
    v10 = [v6 dialogs];
    *buf = 136315650;
    v39 = "+[SRModeDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = v9;
    v42 = 2048;
    v43 = [v10 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) contains %lu dialogs", buf, 0x20u);
  }

  v33 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [a1 _alwaysPrintSiriResponse];
  if (v12)
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
  v14 = [v6 dialogs];
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        if ((v12 | [v19 spokenOnly] ^ 1) == 1)
        {
          [a1 _utteranceViewForDialog:v19 mode:a4 printedOnly:1];
          v21 = v20 = v11;
          [v33 addObject:v21];

          v11 = v20;
        }

        v22 = [v19 printedOnly];
        if (a4 <= 1 && (v22 & 1) == 0)
        {
          v23 = [a1 _sayItForDialog:v19];
          [v11 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v16);
  }

  v24 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v32 aceId];
    v27 = [v33 count];
    v28 = [v11 count];
    *buf = 136315906;
    v39 = "+[SRModeDialogTransformer transformAddDialogs:forMode:]";
    v40 = 2112;
    v41 = v26;
    v42 = 2048;
    v43 = v27;
    v44 = 2048;
    v45 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) transformed into %lu utterance views and %lu sayIts.", buf, 0x2Au);
  }

  v29 = objc_alloc_init(NSMutableArray);
  if ([v33 count])
  {
    v30 = [a1 _addViewsForAddDialogs:v32 views:v33];
    [v29 addObject:v30];
  }

  if ([v11 count])
  {
    [v29 addObjectsFromArray:v11];
  }

  return v29;
}

+ (BOOL)supportsTransformationForAceCommand:(id)a3
{
  v3 = a3;
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

+ (unint64_t)_typeOfAddViews:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 views];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        v7 |= objc_opt_isKindOfClass();
        v12 = [v11 dialog];
        LODWORD(v11) = v12 != 0;

        v8 |= v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)_transformLegacyAddViews:(id)a3 forMode:(unint64_t)a4
{
  v6 = a3;
  if (([a1 _shouldTransformLegacyAddViews] & 1) == 0)
  {
    goto LABEL_6;
  }

  if (a4 < 2)
  {
    if (![a1 _alwaysPrintSiriResponse])
    {
      v8 = [a1 _removeUtteranceViewsFromAddViews:v6 forMode:a4];
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
    v8 = v6;
LABEL_7:
    a4 = v8;
    goto LABEL_8;
  }

  if (a4 == 2)
  {
    if ([a1 _alwaysPrintSiriResponse])
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "+[SRModeDialogTransformer _transformLegacyAddViews:forMode:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v13, 0xCu);
      }

      v11 = v6;
    }

    else
    {
      v11 = [a1 _removeRedundantUtteranceViewsFromAddViews:v6 forMode:2];
    }

    v12 = v11;
    a4 = [a1 _removeSpeakableTextFromAddViews:v11 forMode:2];
  }

LABEL_8:

  return a4;
}

+ (id)_configurationDictionary
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FABC;
  block[3] = &unk_100167A30;
  block[4] = a1;
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
  block[4] = a1;
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
  v3 = [v2 siriResponseShouldAlwaysPrint];

  return v3;
}

+ (id)_firstSnippetInViews:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 views];
  v7 = [a1 _firstSnippetInViews:v6];

  if (v7)
  {
    v27 = v7;
    v29 = [a1 _redundantDUCIds];
    v8 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [v5 views];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v15 dialogIdentifier];
            v17 = v16;
            v18 = &stru_10016AE90;
            if (v16)
            {
              v18 = v16;
            }

            v19 = v18;

            v20 = [(__CFString *)v19 lowercaseString];
            v21 = [v29 containsObject:v20];

            if (v21)
            {
              v22 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
              {
                v23 = v22;
                v24 = sub_100053A1C(a4);
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

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v11);
    }

    v25 = [v5 copy];
    [v25 setViews:v8];

    v7 = v27;
  }

  else
  {
    v25 = v5;
  }

  return v25;
}

+ (id)_removeSpeakableTextFromAddViews:(id)a3 forMode:(unint64_t)a4
{
  v54 = a3;
  [v54 views];
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
        v9 = [v8 speakableText];

        if (v9)
        {
          v10 = [v8 speakableText];
          v11 = [v10 length];

          if (v11)
          {
            v12 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
              v14 = [v8 speakableText];
              v15 = [v8 aceId];
              v16 = sub_100053A1C(a4);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = v14;
              v74 = 2112;
              v75 = v15;
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
          v18 = [v17 speakableSuffix];
          v19 = [v18 length];

          if (v19)
          {
            v20 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              v22 = [v17 speakableSuffix];
              v23 = [v17 aceId];
              v24 = sub_100053A1C(a4);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = v22;
              v74 = 2112;
              v75 = v23;
              v76 = 2112;
              v77 = v24;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableSuffix '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v17 setSpeakableSuffix:0];
          v25 = [v17 speakableDelimiter];
          v26 = [v25 length];

          if (v26)
          {
            v27 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
              v29 = [v17 speakableDelimiter];
              v30 = [v17 aceId];
              v31 = sub_100053A1C(a4);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = v29;
              v74 = 2112;
              v75 = v30;
              v76 = 2112;
              v77 = v31;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          v59 = v7;
          [v17 setSpeakableDelimiter:0];
          v32 = [v17 speakableFinalDelimiter];
          v33 = [v32 length];

          if (v33)
          {
            v34 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v34;
              v36 = [v17 speakableFinalDelimiter];
              v37 = [v17 aceId];
              v38 = sub_100053A1C(a4);
              *buf = 136315906;
              v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = v36;
              v74 = 2112;
              v75 = v37;
              v76 = 2112;
              v77 = v38;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableFinalDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v17 setSpeakableFinalDelimiter:0];
          v58 = v17;
          v39 = [v17 items];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v40 = [v39 countByEnumeratingWithState:&v61 objects:v69 count:16];
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
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v61 + 1) + 8 * i);
                v45 = [v44 speakableText];
                v46 = [v45 length];

                if (v46)
                {
                  v47 = AFSiriLogContextConnection;
                  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = v47;
                    v49 = [v44 speakableText];
                    v50 = [v44 aceId];
                    v51 = sub_100053A1C(a4);
                    *buf = 136315906;
                    v71 = "+[SRModeDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
                    v72 = 2112;
                    v73 = v49;
                    v74 = 2112;
                    v75 = v50;
                    v76 = 2112;
                    v77 = v51;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from SAUIListItem %@ for current mode: %@", buf, 0x2Au);
                  }
                }

                [v44 setSpeakableText:0];
              }

              v41 = [v39 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v41);
          }

          [v58 setItems:v39];

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

  v52 = [v54 copy];
  [v52 setViews:obj];

  return v52;
}

+ (id)_removeUtteranceViewsFromAddViews:(id)a3 forMode:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 views];
  v7 = [a1 _firstSnippetInViews:v6];
  v8 = v7;
  if (v7)
  {
    v40 = a1;
    v42 = v7;
    v44 = v5;
    v9 = objc_alloc_init(NSMutableArray);
    v47 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = v6;
    v11 = v6;
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
            v20 = [v19 speakableText];

            if (v20)
            {
              v21 = [v19 speakableText];
              [v9 addObject:v21];

              v15 = v15 & [v19 canUseServerTTS];
            }

            v22 = [v19 dialogIdentifier];

            if (v22)
            {
              v23 = [v19 dialogIdentifier];
              [v47 addObject:v23];
            }

            v24 = *v16;
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              [v19 dialogIdentifier];
              v27 = v26 = v9;
              sub_100053A1C(a4);
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
    v34 = [v42 speakableText];

    v5 = v44;
    if (v34)
    {
      v35 = [v42 speakableText];
      [v9 addObject:v35];
    }

    v6 = v43;
    if ([v9 count])
    {
      v36 = [v9 componentsJoinedByString:@"\n"];
      [v42 setSpeakableText:v36];
      [v42 setCanUseServerTTS:v15 & 1];
    }

    v37 = [v41 _instrumentation];
    v38 = [v42 aceId];
    [v37 setDialogIdentifiers:v47 forAceViewSpeakableTextWithIdentifier:v38];

    v33 = [v44 copy];
    [v33 setViews:v10];
  }

  else
  {
    v33 = v5;
  }

  return v33;
}

+ (id)_transformDialogAddViews:(id)a3 forMode:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = v6;
  v8 = [v6 views];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v31 = v8;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [v13 dialog];
        if (!v14)
        {
          [v7 addObject:v13];
          goto LABEL_16;
        }

        if ([a1 _alwaysPrintSiriResponse])
        {
          v15 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v40 = "+[SRModeDialogTransformer _transformDialogAddViews:forMode:]";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
          }

          v16 = [a1 _utteranceViewForDialog:v14 mode:a4 printedOnly:{objc_msgSend(v14, "printedOnly")}];
          v44[0] = v16;
          v44[1] = v13;
          v17 = v44;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [a1 _utteranceViewForDialog:v14 mode:a4 printedOnly:0];
          v43[0] = v16;
          v43[1] = v13;
          v17 = v43;
LABEL_15:
          v18 = [NSArray arrayWithObjects:v17 count:2];
          [v7 addObjectsFromArray:v18];

          goto LABEL_16;
        }

        if (a4 < 2)
        {
          if ([v14 printedOnly])
          {
            v19 = v13;
            v20 = [a1 _utteranceViewForDialog:v14 mode:a4 printedOnly:1];
            [v7 addObject:v20];
          }

          else
          {
            v19 = [v13 copy];
            v24 = [a1 _speakableTextForDialog:v14 mode:a4];
            [v19 setSpeakableText:v24];

            v33 = [a1 _instrumentation];
            v32 = [v14 dialogIdentifier];
            v38 = v32;
            v25 = [NSArray arrayWithObjects:&v38 count:1];
            v26 = [v19 aceId];
            [v33 setDialogIdentifiers:v25 forAceViewSpeakableTextWithIdentifier:v26];

            v8 = v31;
          }

          goto LABEL_30;
        }

        if (a4 == 2)
        {
          if ([v14 spokenOnly])
          {
            v21 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v21;
              v23 = [v14 dialogIdentifier];
              *buf = 136315394;
              v40 = "+[SRModeDialogTransformer _transformDialogAddViews:forMode:]";
              v41 = 2112;
              v42 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) for Silent Mode since it is Spoken Only", buf, 0x16u);

              v8 = v31;
              goto LABEL_28;
            }
          }

          else
          {
            v22 = [a1 _utteranceViewForDialog:v14 mode:2 printedOnly:0];
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
      v27 = [v8 countByEnumeratingWithState:&v34 objects:v45 count:16];
      v10 = v27;
    }

    while (v27);
  }

  v28 = [v30 copy];
  [v28 setViews:v7];

  return v28;
}

+ (id)_utteranceViewForDialog:(id)a3 mode:(unint64_t)a4 printedOnly:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 dialogIdentifier];
    v12 = sub_100053A1C(a4);
    v51 = 136315650;
    v52 = "+[SRModeDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
    v53 = 2112;
    v54 = v11;
    v55 = 2112;
    v56 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into an Utterance View for current mode: %@", &v51, 0x20u);
  }

  v13 = objc_alloc_init(SAUIAssistantUtteranceView);
  v14 = [v8 aceId];
  [v13 setAceId:v14];

  v15 = [v8 refId];
  [v13 setRefId:v15];

  [v13 setCanUseServerTTS:{objc_msgSend(v8, "canUseServerTTS")}];
  v16 = [v8 configuration];
  v17 = [v16 context];
  [v13 setContext:v17];

  v18 = [v8 dialogIdentifier];
  [v13 setDialogIdentifier:v18];

  v19 = [v8 metricsContext];
  [v13 setMetricsContext:v19];

  v20 = +[AFAccessibilityObserver sharedObserver];
  v21 = [v20 state];
  v22 = [v21 isVoiceOverTouchEnabled];

  if (a4 != 2 || v22 != 2)
  {
    if (v5)
    {
      v27 = [v8 content];
      v26 = [v27 text];

      v28 = AFSiriLogContextConnection;
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:
        v36 = 0;
        goto LABEL_31;
      }

      v29 = v28;
      v30 = [v8 dialogIdentifier];
      v51 = 136315394;
      v52 = "+[SRModeDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
      v53 = 2112;
      v54 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) when printedOnly is true", &v51, 0x16u);
LABEL_29:

      goto LABEL_30;
    }

    if (a4)
    {
      if (a4 != 1)
      {
        if (a4 != 2)
        {
          v36 = 0;
          v26 = 0;
          goto LABEL_31;
        }

        v29 = [v8 caption];
        v31 = [v29 text];
        v30 = v31;
        if (v31)
        {
          v26 = v31;
        }

        else
        {
          v49 = [v8 content];
          v26 = [v49 text];
        }

        goto LABEL_29;
      }

      v41 = [v8 caption];
      v42 = [v41 text];
      v43 = v42;
      if (v42)
      {
        v26 = v42;
      }

      else
      {
        v48 = [v8 content];
        v26 = [v48 text];
      }

      v45 = a1;
      v46 = v8;
      v47 = 1;
    }

    else
    {
      v44 = [v8 content];
      v26 = [v44 text];

      v45 = a1;
      v46 = v8;
      v47 = 0;
    }

    v36 = [v45 _speakableTextForDialog:v46 mode:v47];
    goto LABEL_31;
  }

  v23 = [v8 caption];
  v24 = [v23 text];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v32 = [v8 content];
    v26 = [v32 text];
  }

  v33 = [v8 content];
  v34 = [v33 speakableTextOverride];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v37 = [v8 content];
    v36 = [v37 text];
  }

  v38 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    v40 = [v8 dialogIdentifier];
    v51 = 136315394;
    v52 = "+[SRModeDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
    v53 = 2112;
    v54 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) CONTENT into speakable text for Voice Over", &v51, 0x16u);
  }

LABEL_31:
  [v13 setText:v26];
  [v13 setSpeakableText:v36];

  return v13;
}

+ (id)_speakableTextForDialog:(id)a3 mode:(unint64_t)a4
{
  v5 = a3;
  v6 = +[AFAccessibilityObserver sharedObserver];
  v7 = [v6 state];
  v8 = [v7 isVoiceOverTouchEnabled];

  switch(a4)
  {
    case 0uLL:
      v16 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v16;
        v14 = [v5 dialogIdentifier];
        *v27 = 136315394;
        *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
        *&v27[12] = 2112;
        *&v27[14] = v14;
        v15 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for Voice Mode";
        goto LABEL_12;
      }

LABEL_13:
      v17 = [v5 content];
      v18 = [v17 speakableTextOverride];
      if (v18)
      {
LABEL_14:
        v8 = v18;
LABEL_17:

        break;
      }

      v19 = [v5 content];
LABEL_16:
      v20 = v19;
      v8 = [v19 text];

      goto LABEL_17;
    case 1uLL:
      if (v8 == 2)
      {
        v12 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v5 dialogIdentifier];
          *v27 = 136315394;
          *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
          *&v27[12] = 2112;
          *&v27[14] = v14;
          v15 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for Mixed Mode with Voice Over";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, v27, 0x16u);

          goto LABEL_13;
        }
      }

      else
      {
        v22 = [v5 caption];

        v23 = AFSiriLogContextConnection;
        v24 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v24)
          {
            v25 = v23;
            v26 = [v5 dialogIdentifier];
            *v27 = 136315394;
            *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
            *&v27[12] = 2112;
            *&v27[14] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) CAPTION into speakable text for Mixed Mode", v27, 0x16u);
          }

          v17 = [v5 caption];
          v18 = [v17 speakableTextOverride];
          if (v18)
          {
            goto LABEL_14;
          }

          v19 = [v5 caption];
          goto LABEL_16;
        }

        if (v24)
        {
          v13 = v23;
          v14 = [v5 dialogIdentifier];
          *v27 = 136315394;
          *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
          *&v27[12] = 2112;
          *&v27[14] = v14;
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
        v11 = [v5 dialogIdentifier];
        *v27 = 136315394;
        *&v27[4] = "+[SRModeDialogTransformer _speakableTextForDialog:mode:]";
        *&v27[12] = 2112;
        *&v27[14] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) speakable text for Silent Mode", v27, 0x16u);
      }

      v8 = 0;
      break;
  }

  return v8;
}

+ (id)_sayItForDialog:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 dialogIdentifier];
    v23 = 136315394;
    v24 = "+[SRModeDialogTransformer _sayItForDialog:]";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into a SayIt", &v23, 0x16u);
  }

  v7 = objc_alloc_init(SAUISayIt);
  v8 = [v3 aceId];
  [v7 setAceId:v8];

  v9 = [v3 refId];
  [v7 setRefId:v9];

  [v7 setCanUseServerTTS:{objc_msgSend(v3, "canUseServerTTS")}];
  v10 = [v3 configuration];
  v11 = [v10 context];
  [v7 setContext:v11];

  v12 = [v3 dialogIdentifier];
  [v7 setDialogIdentifier:v12];

  v13 = [v3 configuration];
  v14 = [v13 gender];
  [v7 setGender:v14];

  v15 = [v3 configuration];
  v16 = [v15 languageCode];
  [v7 setLanguageCode:v16];

  v17 = [v3 content];
  v18 = [v17 speakableTextOverride];
  if (v18)
  {
    [v7 setMessage:v18];
  }

  else
  {
    v19 = [v3 content];
    v20 = [v19 text];
    [v7 setMessage:v20];
  }

  v21 = [v3 metricsContext];
  [v7 setMetricsContext:v21];

  return v7;
}

+ (id)_addViewsForAddDialogs:(id)a3 views:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 aceId];
    v20 = 136315394;
    v21 = "+[SRModeDialogTransformer _addViewsForAddDialogs:views:]";
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming AddDialog (aceId = %@) into an AddViews", &v20, 0x16u);
  }

  v10 = objc_alloc_init(SAUIAddViews);
  v11 = [v5 aceId];
  [v10 setAceId:v11];

  v12 = [v5 refId];
  [v10 setRefId:v12];

  v13 = [v5 metricsContext];
  [v10 setMetricsContext:v13];

  v14 = [v5 listenAfterSpeaking];

  if (v14)
  {
    v15 = [v6 lastObject];
    v16 = [v5 listenAfterSpeaking];
    [v15 setListenAfterSpeaking:v16];

    v17 = [v6 lastObject];
    v18 = [v5 listenAfterSpeakingBehavior];
    [v17 setListenAfterSpeakingBehavior:v18];
  }

  [v10 setViews:v6];

  return v10;
}

+ (void)_logModeComputationForAceCommand:(id)a3 mode:(unint64_t)a4
{
  v12 = a3;
  v6 = [v12 aceId];

  if (v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = [v12 aceId];
    [v7 setObject:v8 forKey:@"aceId"];

    v9 = sub_100053F70(a4);
    [v7 setObject:v9 forKey:@"mode"];

    v10 = [v12 encodedClassName];
    [v7 setObject:v10 forKey:@"aceClass"];

    v11 = [a1 _analytics];
    [v11 logEventWithType:5602 context:v7];
  }
}

@end