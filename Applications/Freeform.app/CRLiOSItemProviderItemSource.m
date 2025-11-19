@interface CRLiOSItemProviderItemSource
+ (id)jsonBoardItemProvidersFrom:(id)a3 withBoardItemFactory:(id)a4 error:(id *)a5;
- (BOOL)canLoadItemsOfClass:(Class)a3;
- (BOOL)canProduceBoardItems;
- (BOOL)hasContentLanguageDrawablesType;
- (BOOL)hasImportableBoardItemsDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4;
- (BOOL)hasImportableImages;
- (BOOL)hasImportableRichText;
- (BOOL)hasImportableText;
- (BOOL)hasNativeBoardItems;
- (BOOL)hasNativeTypes;
- (BOOL)hasTeamDataType:(id)a3;
- (BOOL)p_containsAnyUTIFromList:(id)a3;
- (CRLiOSItemProviderItemSource)init;
- (CRLiOSItemProviderItemSource)initWithItemProviders:(id)a3;
- (NSString)defaultTextFileName;
- (id)loadImportedImagesForAssetOwner:(id)a3 compatibilityAlertPresenter:(id)a4 withHandler:(id)a5;
- (id)loadImportedRichTextStringWithHandler:(id)a3;
- (id)loadImportedTextStringWithHandler:(id)a3;
- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)a3 maximumStringLength:(unint64_t)a4 WithLoadHandler:(id)a5;
- (id)loadProvidersForNativeBoardItemsWithBoardItemFactory:(id)a3 loadHandler:(id)a4;
- (id)loadTextStorageUsingBoardItemFactory:(id)a3 forTargetContext:(id)a4 targetStorage:(id)a5 loadHandler:(id)a6;
- (id)p_progressWithChildren:(id)a3;
- (id)p_sourceMetadata;
- (id)p_unrecognizedTypeErrorForItemProvider:(id)a3;
- (id)richTextBoardItemProvidersFor:(id)a3 factory:(id)a4 uti:(id)a5 maximumCharacterLimit:(int64_t)a6 completion:(id)a7;
- (unint64_t)preferredImportableDataTypeDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4;
@end

@implementation CRLiOSItemProviderItemSource

- (CRLiOSItemProviderItemSource)initWithItemProviders:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134FE78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134FE8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134FF1C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource initWithItemProviders:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:52 isFatal:0 description:"Should create item source with at least one item provider!"];
  }

  v43.receiver = self;
  v43.super_class = CRLiOSItemProviderItemSource;
  v8 = [(CRLiOSItemProviderItemSource *)&v43 init];
  if (v8)
  {
    v9 = [v4 copy];
    itemProviders = v8->_itemProviders;
    v8->_itemProviders = v9;

    v11 = +[NSMutableOrderedSet orderedSet];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = v8->_itemProviders;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v39 + 1) + 8 * i) registeredTypeIdentifiers];
          [v11 addObjectsFromArray:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    supportedUTIs = v8->_supportedUTIs;
    v8->_supportedUTIs = v18;

    v20 = objc_alloc_init(CRLOnce);
    oncePreferredImportableDataType = v8->_oncePreferredImportableDataType;
    v8->_oncePreferredImportableDataType = v20;

    v22 = objc_alloc_init(CRLOnce);
    onceHasImportableImages = v8->_onceHasImportableImages;
    v8->_onceHasImportableImages = v22;

    v24 = objc_alloc_init(CRLOnce);
    onceHasImportableDrawables = v8->_onceHasImportableDrawables;
    v8->_onceHasImportableDrawables = v24;

    v26 = objc_alloc_init(CRLOnce);
    onceHasImportableText = v8->_onceHasImportableText;
    v8->_onceHasImportableText = v26;

    v28 = objc_alloc_init(CRLOnce);
    onceHasImportableRichText = v8->_onceHasImportableRichText;
    v8->_onceHasImportableRichText = v28;

    v30 = objc_alloc_init(CRLOnce);
    onceHasNativeTypes = v8->_onceHasNativeTypes;
    v8->_onceHasNativeTypes = v30;

    v32 = objc_alloc_init(CRLOnce);
    onceSourceMetadata = v8->_onceSourceMetadata;
    v8->_onceSourceMetadata = v32;

    v34 = objc_alloc_init(CRLOnce);
    onceHasContentLanguageDrawablesType = v8->_onceHasContentLanguageDrawablesType;
    v8->_onceHasContentLanguageDrawablesType = v34;

    v36 = dispatch_queue_create("com.apple.freeform.itemProviderItemSourceClassDictionary", 0);
    lockingQueueForClassDictionary = v8->_lockingQueueForClassDictionary;
    v8->_lockingQueueForClassDictionary = v36;
  }

  return v8;
}

- (CRLiOSItemProviderItemSource)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018546A8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLiOSItemProviderItemSource init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m";
    v18 = 1024;
    v19 = 75;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018546C8);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:75 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLiOSItemProviderItemSource init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)p_containsAnyUTIFromList:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_supportedUTIs;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) crl_conformsToAnyUTI:{v4, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)p_progressWithChildren:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(NSProgress);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v8 += [v11 totalUnitCount];
          [v4 addChild:v11 withPendingUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    [v4 setTotalUnitCount:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_unrecognizedTypeErrorForItemProvider:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"The data is not a recognized type." value:0 table:0];

  v6 = [v3 suggestedName];
  v7 = [v6 length];

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"The data “%@” couldn’t be inserted." value:0 table:0];
    v10 = [v3 suggestedName];
    v11 = [NSString stringWithFormat:v9, v10];

    v5 = v11;
  }

  v15[0] = NSLocalizedDescriptionKey;
  v15[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
  v16[0] = v5;
  v16[1] = &off_1018E2958;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:103 userInfo:v12];

  return v13;
}

- (BOOL)canLoadItemsOfClass:(Class)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___NSItemProviderReading])
  {
    lockingQueueForClassDictionary = self->_lockingQueueForClassDictionary;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002FCE7C;
    block[3] = &unk_1018546F0;
    block[4] = self;
    block[5] = &v9;
    block[6] = a3;
    dispatch_sync(lockingQueueForClassDictionary, block);
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (unint64_t)preferredImportableDataTypeDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4
{
  oncePreferredImportableDataType = self->_oncePreferredImportableDataType;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002FD0C4;
  v7[3] = &unk_10183AB38;
  v7[4] = self;
  [(CRLOnce *)oncePreferredImportableDataType performBlockOnce:v7, a4];
  return self->_preferredImportableDataType;
}

- (BOOL)hasImportableImages
{
  onceHasImportableImages = self->_onceHasImportableImages;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FD2E0;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)onceHasImportableImages performBlockOnce:v5];
  return self->_hasImportableImages;
}

- (id)loadImportedImagesForAssetOwner:(id)a3 compatibilityAlertPresenter:(id)a4 withHandler:(id)a5
{
  v48 = a3;
  v47 = a4;
  v41 = a5;
  v42 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_itemProviders count]];
  v8 = +[CRLIngestionTypes supportedImageTypes];
  group = dispatch_group_create();
  v45 = +[NSMutableDictionary dictionary];
  v50 = +[NSMutableDictionary dictionary];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v43 = self;
  obj = self->_itemProviders;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v49 = *v67;
    do
    {
      v12 = 0;
      do
      {
        if (*v67 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v66 + 1) + 8 * v12);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v14 = [v13 registeredTypeIdentifiers];
        v15 = [v14 countByEnumeratingWithState:&v62 objects:v73 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v63;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v63 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v62 + 1) + 8 * i);
              if ([v19 crl_conformsToAnyUTI:v8])
              {
                dispatch_group_enter(group);
                v55[0] = _NSConcreteStackBlock;
                v55[1] = 3221225472;
                v55[2] = sub_1002FDA90;
                v55[3] = &unk_101854808;
                v55[4] = v19;
                v56 = v48;
                v57 = v47;
                v58 = v45;
                v61 = v11;
                v59 = v50;
                v60 = group;
                v22 = [v13 loadDataRepresentationForTypeIdentifier:v19 completionHandler:v55];
                if (v22)
                {
                  [v42 addObject:v22];
                }

                else
                {
                  v23 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                  if (qword_101AD5A10 != -1)
                  {
                    sub_10134FF44();
                  }

                  v24 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67110146;
                    *v71 = v23;
                    *&v71[4] = 2082;
                    *&v71[6] = "[CRLiOSItemProviderItemSource loadImportedImagesForAssetOwner:compatibilityAlertPresenter:withHandler:]";
                    *&v71[14] = 2082;
                    *&v71[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m";
                    *&v71[24] = 1024;
                    *&v71[26] = 233;
                    LOWORD(v72[0]) = 2112;
                    *(v72 + 2) = v19;
                    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No progress provided for UTI %@", buf, 0x2Cu);
                  }

                  if (qword_101AD5A10 != -1)
                  {
                    sub_10134FF6C();
                  }

                  v25 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    v33 = v25;
                    v34 = +[CRLAssertionHandler packedBacktraceString];
                    *buf = 67109378;
                    *v71 = v23;
                    *&v71[4] = 2114;
                    *&v71[6] = v34;
                    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                  }

                  v26 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadImportedImagesForAssetOwner:compatibilityAlertPresenter:withHandler:]"];
                  v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
                  [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:233 isFatal:0 description:"No progress provided for UTI %@", v19];
                }

                goto LABEL_31;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v62 objects:v73 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v14 = [(CRLiOSItemProviderItemSource *)v43 p_unrecognizedTypeErrorForItemProvider:v13];
        if (qword_101AD5A08 != -1)
        {
          sub_10134FF94();
        }

        v20 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          v28 = v20;
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [v14 domain];
          v32 = [v14 code];
          *buf = 138544130;
          *v71 = v30;
          *&v71[8] = 2114;
          *&v71[10] = v31;
          *&v71[18] = 2048;
          *&v71[20] = v32;
          *&v71[28] = 2112;
          v72[0] = v14;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Error loading image data. Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x2Au);
        }

        v21 = [NSNumber numberWithUnsignedInteger:v11];
        [v50 setObject:v14 forKey:v21];

LABEL_31:
        ++v11;
        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v10);
  }

  v35 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FE244;
  block[3] = &unk_101842CD8;
  v52 = v45;
  v53 = v50;
  v54 = v41;
  v36 = v41;
  v37 = v50;
  v38 = v45;
  dispatch_group_notify(group, v35, block);

  v39 = [(CRLiOSItemProviderItemSource *)v43 p_progressWithChildren:v42];

  return v39;
}

- (BOOL)hasImportableBoardItemsDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4
{
  onceHasImportableDrawables = self->_onceHasImportableDrawables;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002FE520;
  v7[3] = &unk_10183AB38;
  v7[4] = self;
  [(CRLOnce *)onceHasImportableDrawables performBlockOnce:v7, a4];
  return self->_hasImportableDrawables;
}

- (BOOL)hasImportableText
{
  onceHasImportableText = self->_onceHasImportableText;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FE6C0;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)onceHasImportableText performBlockOnce:v5];
  return self->_hasImportableText;
}

- (BOOL)hasImportableRichText
{
  onceHasImportableRichText = self->_onceHasImportableRichText;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FE858;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)onceHasImportableRichText performBlockOnce:v5];
  return self->_hasImportableRichText;
}

- (id)loadImportedRichTextStringWithHandler:(id)a3
{
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->_itemProviders;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v26 = v5;
    v27 = v4;
    v24 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v25 = v10;
        v11 = [v10 registeredTypeIdentifiers];
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * i);
              v17 = +[CRLIngestionTypes supportedRichTextTypes];
              v18 = [v16 crl_conformsToAnyUTI:v17];

              if (v18)
              {
                v20 = [UTTypeRTFD identifier];
                v21 = [v16 isEqualToString:v20];

                if (v21)
                {
                  v30[0] = _NSConcreteStackBlock;
                  v30[1] = 3221225472;
                  v30[2] = sub_1002FEBDC;
                  v30[3] = &unk_1018548F0;
                  v4 = v27;
                  v31 = v27;
                  v19 = [v25 loadFileRepresentationForTypeIdentifier:v16 completionHandler:v30];
                  v22 = v31;
                }

                else
                {
                  v28[0] = _NSConcreteStackBlock;
                  v28[1] = 3221225472;
                  v28[2] = sub_1002FEF64;
                  v28[3] = &unk_101854978;
                  v28[4] = v16;
                  v4 = v27;
                  v29 = v27;
                  v19 = [v25 loadDataRepresentationForTypeIdentifier:v16 completionHandler:v28];
                  v22 = v29;
                }

                v5 = v26;
                goto LABEL_22;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v9 = v9 + 1;
        v5 = v26;
        v4 = v27;
        v8 = v24;
      }

      while (v9 != v7);
      v7 = [(NSArray *)v26 countByEnumeratingWithState:&v36 objects:v41 count:16];
      v19 = 0;
    }

    while (v7);
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (id)loadImportedTextStringWithHandler:(id)a3
{
  v18 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_itemProviders;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v8 registeredTypeIdentifiers];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            if ([CRLIngestionTypes isValidPlainTextUTI:v14])
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_1002FF4CC;
          v19[3] = &unk_101854978;
          v19[4] = v14;
          v20 = v18;
          v15 = [v8 loadDataRepresentationForTypeIdentifier:v14 completionHandler:v19];

          if (v15)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)p_sourceMetadata
{
  onceSourceMetadata = self->_onceSourceMetadata;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FF8B4;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)onceSourceMetadata performBlockOnce:v5];
  return self->_sourceMetadata;
}

- (BOOL)hasNativeTypes
{
  onceHasNativeTypes = self->_onceHasNativeTypes;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FFB5C;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)onceHasNativeTypes performBlockOnce:v5];
  return self->_hasNativeTypes;
}

- (BOOL)hasNativeBoardItems
{
  v2 = [(CRLiOSItemProviderItemSource *)self p_sourceMetadata];
  v3 = [v2 containsObject:@"com.apple.freeform.pasteboardState.hasNativeBoardItems"];

  return v3;
}

- (BOOL)hasContentLanguageDrawablesType
{
  onceHasContentLanguageDrawablesType = self->_onceHasContentLanguageDrawablesType;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FFCD0;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)onceHasContentLanguageDrawablesType performBlockOnce:v5];
  return self->_hasContentLanguageDrawablesType;
}

- (BOOL)canProduceBoardItems
{
  if ([(CRLiOSItemProviderItemSource *)self hasNativeBoardItems]|| [(CRLiOSItemProviderItemSource *)self hasNativeTextStorages]|| [(CRLiOSItemProviderItemSource *)self hasImportableRichText]|| [(CRLiOSItemProviderItemSource *)self hasImportableText]|| [(CRLiOSItemProviderItemSource *)self hasContentLanguageDrawablesType])
  {
    return 1;
  }

  return [(CRLiOSItemProviderItemSource *)self hasImportableBoardItemsDetectingImportableURLsInText:1];
}

- (id)loadProvidersForNativeBoardItemsWithBoardItemFactory:(id)a3 loadHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_itemProviders count]!= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013509C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013509DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101350A6C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForNativeBoardItemsWithBoardItemFactory:loadHandler:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:530 isFatal:0 description:"Unexpected number of item providers!"];
  }

  v11 = [_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant alloc];
  v12 = [v6 store];
  v13 = [v6 store];
  v14 = [v13 crdtContext];
  v15 = [(CRLPasteboardObjectItemProviderReadAssistant *)v11 initWithStore:v12 context:v14];

  v16 = [(NSArray *)self->_itemProviders firstObject];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100300268;
  v27 = &unk_101854AE0;
  v28 = self;
  v17 = v6;
  v29 = v17;
  v18 = v7;
  v30 = v18;
  v19 = [(CRLPasteboardObjectItemProviderReadAssistant *)v15 readPasteboardObjectFrom:v16 completion:&v24];

  if (!v19)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101350A94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101350ABC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101350B58();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForNativeBoardItemsWithBoardItemFactory:loadHandler:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:557 isFatal:0 description:"invalid nil value for '%{public}s'", "progress", v24, v25, v26, v27, v28, v29];
  }

  return v19;
}

- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)a3 maximumStringLength:(unint64_t)a4 WithLoadHandler:(id)a5
{
  v74 = a3;
  v71 = a5;
  v90 = self;
  v75 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_itemProviders count]];
  v76 = dispatch_group_create();
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x3032000000;
  v142[3] = sub_100301848;
  v142[4] = sub_100301858;
  v143 = +[NSMutableArray array];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = self->_itemProviders;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v138 objects:v148 count:16];
  if (v7)
  {
    v73 = *v139;
    do
    {
      v81 = 0;
      v77 = v7;
      do
      {
        if (*v139 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v138 + 1) + 8 * v81);
        v134 = 0;
        v135 = &v134;
        v136 = 0x2020000000;
        v137 = 0;
        v130 = 0;
        v131 = &v130;
        v132 = 0x2020000000;
        v133 = 0;
        v9 = [v8 registeredTypeIdentifiers];
        v80 = [NSSet setWithArray:v9];

        v10 = +[CRLIngestionTypes highEfficiencyImageTypes];
        v11 = [NSSet setWithArray:v10];
        v87 = [v80 intersectsSet:v11];

        v121[0] = _NSConcreteStackBlock;
        v121[1] = 3221225472;
        v121[2] = sub_100301860;
        v121[3] = &unk_101854C50;
        v127 = &v134;
        v12 = v76;
        v122 = v12;
        v123 = v8;
        v128 = v142;
        v129 = a4;
        v86 = v74;
        v124 = v86;
        v125 = v90;
        v13 = v75;
        v126 = v13;
        v83 = objc_retainBlock(v121);
        v115[0] = _NSConcreteStackBlock;
        v115[1] = 3221225472;
        v115[2] = sub_100302154;
        v115[3] = &unk_101854D80;
        v119 = &v134;
        group = v12;
        v116 = group;
        v117 = v8;
        v120 = v142;
        v84 = v13;
        v118 = v84;
        v78 = objc_retainBlock(v115);
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v14 = [v8 registeredTypeIdentifiers];
        v15 = [v14 countByEnumeratingWithState:&v111 objects:v147 count:16];
        if (!v15)
        {
LABEL_73:

          goto LABEL_74;
        }

        v16 = 0;
        v79 = 0;
        v88 = v14;
        v89 = *v112;
        do
        {
          v17 = 0;
          do
          {
            if (*v112 != v89)
            {
              objc_enumerationMutation(v88);
            }

            v18 = *(*(&v111 + 1) + 8 * v17);
            if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
            {
              v19 = [v8 registeredTypeIdentifiers];
              v20 = [_TtC8Freeform20CRLCLCopyPasteHelper canvasObjectTypeIdentifierToUseFromTypeIdentifiers:v19];

              if ([(CRLiOSItemProviderItemSource *)v90 hasContentLanguageDrawablesType])
              {
                *(v135 + 24) = 1;
                dispatch_group_enter(group);
                v107[0] = _NSConcreteStackBlock;
                v107[1] = 3221225472;
                v107[2] = sub_1003028C4;
                v107[3] = &unk_101854D18;
                v107[4] = v90;
                v108 = v86;
                v110 = v142;
                v109 = group;
                v21 = [v8 loadDataRepresentationForTypeIdentifier:v20 completionHandler:v107];
                if (v21)
                {
                  [v84 addObject:v21];
                }

                else
                {
                  v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                  if (qword_101AD5A10 != -1)
                  {
                    sub_101350D64();
                  }

                  v23 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67110146;
                    *v145 = v22;
                    *&v145[4] = 2082;
                    *&v145[6] = "[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]";
                    *&v145[14] = 2082;
                    *&v145[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m";
                    *&v145[24] = 1024;
                    *&v145[26] = 675;
                    LOWORD(v146[0]) = 2112;
                    *(v146 + 2) = v20;
                    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No progress provided for UTI %@", buf, 0x2Cu);
                  }

                  if (qword_101AD5A10 != -1)
                  {
                    sub_101350D8C();
                  }

                  v24 = off_1019EDA68;
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    v57 = +[CRLAssertionHandler packedBacktraceString];
                    *buf = 67109378;
                    *v145 = v22;
                    *&v145[4] = 2114;
                    *&v145[6] = v57;
                    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                  }

                  v25 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]"];
                  v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
                  [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:675 isFatal:0 description:"No progress provided for UTI %@", v20];
                }
              }
            }

            v27 = sub_1000ECE78();
            v28 = [v27 identifier];
            v29 = [v18 isEqualToString:v28];

            v16 |= v29;
            if ([CRLIngestionTypes isValidPlainTextUTI:v18])
            {
              if ([v18 isEqualToString:@"public.file-url"] & v87)
              {
                goto LABEL_53;
              }

              v30 = [UTTypeURL identifier];
              v31 = [v18 isEqualToString:v30];

              if (v31)
              {
                v79 = 1;
                if (v16)
                {
                  goto LABEL_70;
                }

                v16 = 0;
              }

              else
              {
                (v83[2])(v83, v18);
              }

              goto LABEL_51;
            }

            v32 = +[CRLIngestionTypes supportedRichTextTypes];
            v33 = [v18 crl_conformsToAnyUTI:v32];

            if (v33)
            {
              *(v135 + 24) = 1;
              dispatch_group_enter(group);
              v104[0] = _NSConcreteStackBlock;
              v104[1] = 3221225472;
              v104[2] = sub_100302A80;
              v104[3] = &unk_101854E08;
              v106 = v142;
              v105 = group;
              v34 = [(CRLiOSItemProviderItemSource *)v90 richTextBoardItemProvidersFor:v8 factory:v86 uti:v18 maximumCharacterLimit:a4 completion:v104];
              if (v34)
              {
                [v84 addObject:v34];
              }

              else
              {
                v43 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_101350E04();
                }

                v44 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67110146;
                  *v145 = v43;
                  *&v145[4] = 2082;
                  *&v145[6] = "[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]";
                  *&v145[14] = 2082;
                  *&v145[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m";
                  *&v145[24] = 1024;
                  *&v145[26] = 720;
                  LOWORD(v146[0]) = 2112;
                  *(v146 + 2) = v18;
                  _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No progress provided for UTI %@", buf, 0x2Cu);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101350E2C();
                }

                v45 = off_1019EDA68;
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  v58 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  *v145 = v43;
                  *&v145[4] = 2114;
                  *&v145[6] = v58;
                  _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v46 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]"];
                v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
                [CRLAssertionHandler handleFailureInFunction:v46 file:v47 lineNumber:720 isFatal:0 description:"No progress provided for UTI %@", v18];
              }

              goto LABEL_51;
            }

            v35 = sub_1000EEB38();
            v36 = [v35 identifier];
            v37 = [v18 isEqualToString:v36];

            if (v37)
            {
              v16 = 1;
              goto LABEL_51;
            }

            if (![CRLInfoImporterBoardItemProvider canInitWithType:v18])
            {
              goto LABEL_51;
            }

            v38 = [UTTypeVCard identifier];
            if ([v18 isEqualToString:v38])
            {
              v39 = [v8 registeredTypeIdentifiers];
              v40 = sub_1000EEB38();
              v41 = [v40 identifier];
              v42 = [v39 containsObject:v41];

              if (v42)
              {
                goto LABEL_53;
              }
            }

            else
            {
            }

            v48 = [UTTypeJPEG identifier];
            v49 = [v18 isEqualToString:v48];

            if ((v49 & v87 & 1) == 0)
            {
              *(v135 + 24) = 1;
              dispatch_group_enter(group);
              v99[0] = _NSConcreteStackBlock;
              v99[1] = 3221225472;
              v99[2] = sub_100302B50;
              v99[3] = &unk_101854E90;
              v102 = &v130;
              v99[4] = v18;
              v100 = v86;
              v103 = v142;
              v50 = group;
              v101 = v50;
              v51 = [v8 loadFileRepresentationForTypeIdentifier:v18 completionHandler:v99];
              v94[0] = _NSConcreteStackBlock;
              v94[1] = 3221225472;
              v94[2] = sub_100302C7C;
              v94[3] = &unk_101854EB8;
              v97 = &v134;
              v98 = &v130;
              v95 = v50;
              v96 = v90;
              [v51 setCancellationHandler:v94];
              if (v51)
              {
                [v84 addObject:v51];
              }

              else
              {
                v52 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_101350DB4();
                }

                v53 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67110146;
                  *v145 = v52;
                  *&v145[4] = 2082;
                  *&v145[6] = "[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]";
                  *&v145[14] = 2082;
                  *&v145[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m";
                  *&v145[24] = 1024;
                  *&v145[26] = 761;
                  LOWORD(v146[0]) = 2112;
                  *(v146 + 2) = v18;
                  _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No progress provided for UTI %@", buf, 0x2Cu);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101350DDC();
                }

                v54 = off_1019EDA68;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v59 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  *v145 = v52;
                  *&v145[4] = 2114;
                  *&v145[6] = v59;
                  _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v55 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:maximumStringLength:WithLoadHandler:]"];
                v56 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
                [CRLAssertionHandler handleFailureInFunction:v55 file:v56 lineNumber:761 isFatal:0 description:"No progress provided for UTI %@", v18];
              }

LABEL_51:
              if (v135[3] & 1) != 0 || (v131[3])
              {
                goto LABEL_70;
              }
            }

LABEL_53:
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v60 = [v88 countByEnumeratingWithState:&v111 objects:v147 count:16];
          v15 = v60;
        }

        while (v60);
LABEL_70:

        if ((v135[3] & 1) == 0 && ((v79 ^ 1) & 1) == 0)
        {
          v14 = [UTTypeURL identifier];
          (v78[2])(v78, v14);
          goto LABEL_73;
        }

LABEL_74:
        if ((v135[3] & 1) == 0 && (v131[3] & 1) == 0)
        {
          v61 = [(CRLiOSItemProviderItemSource *)v90 p_unrecognizedTypeErrorForItemProvider:v8];
          if (qword_101AD5A08 != -1)
          {
            sub_101350E54();
          }

          v62 = off_1019EDA60;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = objc_opt_class();
            v64 = NSStringFromClass(v63);
            v65 = [v61 domain];
            v66 = [v61 code];
            *buf = 138544130;
            *v145 = v64;
            *&v145[8] = 2114;
            *&v145[10] = v65;
            *&v145[18] = 2048;
            *&v145[20] = v66;
            *&v145[28] = 2112;
            v146[0] = v61;
            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Error loading importable data. Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x2Au);
          }
        }

        _Block_object_dispose(&v130, 8);
        _Block_object_dispose(&v134, 8);
        v81 = v81 + 1;
      }

      while (v81 != v77);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v138 objects:v148 count:16];
    }

    while (v7);
  }

  v67 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100302DEC;
  block[3] = &unk_101847590;
  v68 = v71;
  v92 = v68;
  v93 = v142;
  dispatch_group_notify(v76, v67, block);

  v69 = [(CRLiOSItemProviderItemSource *)v90 p_progressWithChildren:v75];

  _Block_object_dispose(v142, 8);

  return v69;
}

- (id)loadTextStorageUsingBoardItemFactory:(id)a3 forTargetContext:(id)a4 targetStorage:(id)a5 loadHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  itemProviders = self->_itemProviders;
  v12 = a4;
  if ([(NSArray *)itemProviders count]!= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101351748();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135175C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013517EC();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadTextStorageUsingBoardItemFactory:forTargetContext:targetStorage:loadHandler:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:793 isFatal:0 description:"Unexpected number of item providers!"];
  }

  v16 = [(NSArray *)self->_itemProviders firstObject];
  v17 = [_TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant alloc];
  v18 = [v12 sourceStore];
  v19 = [v12 sourceStore];

  v20 = [v19 crdtContext];
  v21 = [(CRLPasteboardObjectItemProviderReadAssistant *)v17 initWithStore:v18 context:v20];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10030316C;
  v26[3] = &unk_101854FA0;
  v27 = v9;
  v28 = v10;
  v22 = v10;
  v23 = v9;
  v24 = [(CRLPasteboardObjectItemProviderReadAssistant *)v21 readPasteboardObjectFrom:v16 completion:v26];

  return v24;
}

- (BOOL)hasTeamDataType:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CRLiOSItemProviderItemSource *)self p_sourceMetadata];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isEqualToString:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (NSString)defaultTextFileName
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (id)richTextBoardItemProvidersFor:(id)a3 factory:(id)a4 uti:(id)a5 maximumCharacterLimit:(int64_t)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v11);
  v15 = a3;
  v16 = a4;
  v17 = self;
  v18 = sub_1006B5364(v15, v16, v12, v14, a6, v17, v11);
  _Block_release(v11);
  _Block_release(v11);

  return v18;
}

+ (id)jsonBoardItemProvidersFrom:(id)a3 withBoardItemFactory:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1006B5C94(v8, v10, v7);
  sub_10002640C(v8, v10);
  type metadata accessor for CRLContentLanguageBoardItemProvider();
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

@end