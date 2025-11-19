@interface CRLMediaReplacingHelper
- (CGPoint)p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:(id)a3 withOldLayout:(id)a4 withNewInfo:(id)a5 forLineEnd:(unint64_t)a6;
- (CRLMediaReplacingHelper)initWithEditor:(id)a3;
- (id)p_commandsToSwapConnectionsFromInfo:(id)a3 infoMap:(id)a4;
- (void)boardItemImporter:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6;
- (void)p_replaceCanvasElementInfo:(id)a3 withFileAtURL:(id)a4 interactively:(BOOL)a5 allowedTypes:(id)a6 actionString:(id)a7 queue:(id)a8 completion:(id)a9;
- (void)p_replaceCanvasElementInfo:(id)a3 withInfoFromInfoImporter:(id)a4 interactively:(BOOL)a5 allowedTypes:(id)a6 actionString:(id)a7 queue:(id)a8 completion:(id)a9;
- (void)replaceCanvasElementInfo:(id)a3 withFilesAtURLs:(id)a4 allowedTypes:(id)a5 actionString:(id)a6 completion:(id)a7;
- (void)replaceSelectedMediaWithData:(id)a3;
- (void)replaceSelectedMediaWithData:(id)a3 actionString:(id)a4 completion:(id)a5;
- (void)showMediaReplaceUI:(id)a3;
@end

@implementation CRLMediaReplacingHelper

- (CRLMediaReplacingHelper)initWithEditor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLMediaReplacingHelper;
  v6 = [(CRLMediaReplacingHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editor, a3);
  }

  return v7;
}

- (void)showMediaReplaceUI:(id)a3
{
  v4 = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  if ([v4 hasSelectedInfosInMultipleContainers])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356E00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356E14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356E9C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMediaReplacingHelper showMediaReplaceUI:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:58 isFatal:0 description:"Cannot show media replace UI with cross-container selection!"];
  }

  [v4 endEditing];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100341630;
  v12[3] = &unk_10183AE28;
  v12[4] = self;
  v8 = v4;
  v13 = v8;
  v9 = objc_retainBlock(v12);
  if (+[CRLiOSKeyboardMonitor keyboardIsVisibleAndDocked])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003418A4;
    v10[3] = &unk_10183D168;
    v11 = v9;
    [CRLiOSKeyboardMonitor afterKeyboardAnimationPerformBlock:v10];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (id)p_commandsToSwapConnectionsFromInfo:(id)a3 infoMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  v9 = [v8 repForInfo:v6];
  v10 = objc_opt_class();
  v54 = v7;
  v11 = [v7 objectForKeyedSubscript:v6];
  v12 = sub_100013F00(v10, v11);

  v51 = +[NSMutableArray array];
  v53 = v12;
  if (v12)
  {
    v13 = [v9 layout];
    v14 = [v13 connectedLayouts];
    v15 = [v14 count];

    if (v15)
    {
      v49 = v8;
      v50 = v6;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v16 = [v9 layout];
      v17 = [v16 connectedLayouts];

      obj = v17;
      v56 = [v17 countByEnumeratingWithState:&v58 objects:v64 count:16];
      v18 = 0;
      if (!v56)
      {
        goto LABEL_21;
      }

      v55 = *v59;
      v57 = v9;
      while (1)
      {
        for (i = 0; i != v56; i = i + 1)
        {
          if (*v59 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v58 + 1) + 8 * i);
          v21 = [v20 connectionLineInfo];
          v22 = [(CRLMediaReplacingHelper *)self editingCoordinator];
          v23 = [v22 mainBoard];
          v24 = [v21 getConnectedFromWithBoardItemOwner:v23];

          v25 = [(CRLMediaReplacingHelper *)self editingCoordinator];
          v26 = [v25 mainBoard];
          v27 = [v21 getConnectedToWithBoardItemOwner:v26];

          v28 = [v21 connectionLinePathSource];
          v29 = [v9 info];

          if (v24 == v29)
          {
            v31 = [v54 objectForKeyedSubscript:v27];

            if (!v31)
            {
              v31 = v27;
            }

            v41 = [v57 layout];
            [(CRLMediaReplacingHelper *)self p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:v20 withOldLayout:v41 withNewInfo:v53 forLineEnd:10];
            v43 = v42;
            v45 = v44;
            v46 = [v28 tailMagnet];
            [v46 setMagnetNormalizedPosition:{v43, v45}];

            v38 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v21 connectedItem:v53 chirality:0 pathSource:v28];
            v39 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v21 connectedItem:v31 chirality:1 pathSource:v28];
            v63[0] = v38;
            v63[1] = v39;
            v40 = v63;
          }

          else
          {
            v30 = [v9 info];

            if (v27 != v30)
            {
              goto LABEL_19;
            }

            v31 = [v54 objectForKeyedSubscript:v24];

            if (!v31)
            {
              v31 = v24;
            }

            v32 = [v57 layout];
            [(CRLMediaReplacingHelper *)self p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:v20 withOldLayout:v32 withNewInfo:v53 forLineEnd:11];
            v34 = v33;
            v36 = v35;
            v37 = [v28 headMagnet];
            [v37 setMagnetNormalizedPosition:{v34, v36}];

            v38 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v21 connectedItem:v31 chirality:0 pathSource:v28];
            v39 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v21 connectedItem:v53 chirality:1 pathSource:v28];
            v62[0] = v38;
            v62[1] = v39;
            v40 = v62;
          }

          v18 = v31;
          v47 = [NSArray arrayWithObjects:v40 count:2];

          if (v47)
          {
            [v51 addObjectsFromArray:v47];
          }

          v9 = v57;
LABEL_19:
        }

        v56 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
        if (!v56)
        {
LABEL_21:

          v8 = v49;
          v6 = v50;
          goto LABEL_23;
        }
      }
    }
  }

  v18 = 0;
LABEL_23:

  return v51;
}

- (CGPoint)p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:(id)a3 withOldLayout:(id)a4 withNewInfo:(id)a5 forLineEnd:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6 == 11)
  {
    v12 = [v9 headMagnetType];
  }

  else
  {
    v12 = [v9 tailMagnetType];
  }

  v13 = v12;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3010000000;
  v36 = 0;
  v37 = 0;
  v35[3] = &unk_1016A8115;
  if (a6 == 11)
  {
    [v9 headMagnetCanvasPosition];
  }

  else
  {
    [v9 tailMagnetCanvasPosition];
  }

  v36 = v14;
  v37 = v15;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v33 = 0;
  v34 = 0;
  v32 = &unk_1016A8115;
  if (a6 == 11)
  {
    [v9 headMagnetNormalizedPosition];
  }

  else
  {
    [v9 tailMagnetNormalizedPosition];
  }

  v33 = v16;
  v34 = v17;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100341F78;
  v23[3] = &unk_101852AA8;
  v27 = v13;
  v25 = v35;
  v18 = v9;
  v28 = a6;
  v24 = v18;
  v26 = &v29;
  [v11 withTemporaryLayoutPerform:v23];
  v19 = v30[4];
  v20 = v30[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  v21 = v19;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)replaceCanvasElementInfo:(id)a3 withFilesAtURLs:(id)a4 allowedTypes:(id)a5 actionString:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v13 count] != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356F88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356F9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101357024();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLMediaReplacingHelper replaceCanvasElementInfo:withFilesAtURLs:allowedTypes:actionString:completion:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:181 isFatal:0 description:"The URL array must only contain one object."];
  }

  v20 = [v13 firstObject];
  if (v20)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100342350;
    v21[3] = &unk_101857430;
    v22 = v16;
    [(CRLMediaReplacingHelper *)self p_replaceCanvasElementInfo:v12 withFileAtURL:v20 interactively:1 allowedTypes:v14 actionString:v15 queue:&_dispatch_main_q completion:v21];
  }

  else if (v16)
  {
    v16[2](v16);
  }
}

- (void)replaceSelectedMediaWithData:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];

  [(CRLMediaReplacingHelper *)self replaceSelectedMediaWithData:v5 actionString:0 completion:0, v6];
}

- (void)replaceSelectedMediaWithData:(id)a3 actionString:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135704C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101357060();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013570E8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLMediaReplacingHelper replaceSelectedMediaWithData:actionString:completion:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:199 isFatal:0 description:"The data array must only contain one object."];
  }

  v14 = [v8 firstObject];
  if (v14)
  {
    v15 = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
    v16 = [v15 editingCoordinator];
    v17 = [v16 boardItemFactory];

    v18 = [CRLBoardItemImporter alloc];
    v19 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    v20 = [v17 assetOwner];
    v21 = [(CRLPreinsertionAssetWrapper *)v19 initWithAlreadyInsertedAsset:v14 owner:v20];
    v22 = [(CRLBoardItemImporter *)v18 initWithData:v21 boardItemFactory:v17];

    if (v22)
    {
      [(CRLBoardItemImporter *)v22 setDelegate:self];
      v23 = v22;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10034284C;
      v25[3] = &unk_101857430;
      v26 = v10;
      if (self)
      {
        [(CRLMediaReplacingHelper *)self p_replaceCanvasElementInfo:0 withInfoFromInfoImporter:v23 interactively:1 allowedTypes:0 actionString:v9 queue:&_dispatch_main_q completion:v25];
      }

      else
      {
      }

      v24 = v26;
    }

    else
    {
      if (!v10)
      {
LABEL_22:

        goto LABEL_23;
      }

      v24 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
      (*(v10 + 2))(v10, 0, v24);
    }

    goto LABEL_22;
  }

  if (v10)
  {
    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
    (*(v10 + 2))(v10, 0, v15);
LABEL_23:
  }
}

- (void)p_replaceCanvasElementInfo:(id)a3 withFileAtURL:(id)a4 interactively:(BOOL)a5 allowedTypes:(id)a6 actionString:(id)a7 queue:(id)a8 completion:(id)a9
{
  v12 = a5;
  v36 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v35 = v12;
  if (v12 && v18 != &_dispatch_main_q)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101357110();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101357124();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013571AC();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLMediaReplacingHelper p_replaceCanvasElementInfo:withFileAtURL:interactively:allowedTypes:actionString:queue:completion:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:229 isFatal:0 description:"Can't replace media interactively without running completion blocks on the main queue."];
  }

  if (v16)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v16;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      while (2)
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          if ([v15 crl_conformsToUTI:*(*(&v37 + 1) + 8 * i)])
          {

            goto LABEL_23;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v28 = 0;
  }

  else
  {
LABEL_23:
    v29 = [CRLBoardItemImporter alloc];
    v30 = [(CRLMediaReplacingHelper *)self editingCoordinator];
    v31 = [v30 boardItemFactory];
    v28 = [(CRLBoardItemImporter *)v29 initWithURL:v15 boardItemFactory:v31];

    [(CRLBoardItemImporter *)v28 setDelegate:self];
  }

  v32 = v28;
  v33 = v32;
  if (self)
  {
    v34 = v36;
    [(CRLMediaReplacingHelper *)self p_replaceCanvasElementInfo:v36 withInfoFromInfoImporter:v32 interactively:v35 allowedTypes:v16 actionString:v17 queue:v18 completion:v19];
  }

  else
  {

    v34 = v36;
  }
}

- (void)p_replaceCanvasElementInfo:(id)a3 withInfoFromInfoImporter:(id)a4 interactively:(BOOL)a5 allowedTypes:(id)a6 actionString:(id)a7 queue:(id)a8 completion:(id)a9
{
  v41 = a5;
  v14 = a3;
  v40 = a6;
  v42 = a7;
  queue = a8;
  v15 = a9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(CRLMediaReplacingHelper *)self boardItems];
    v17 = [v16 containsObject:v14];

    if ((v17 & 1) == 0)
    {
      v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013571D4();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013571E8(v14, v18, v19);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013572A4();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013572CC(v20, v18);
      }

      v21 = [NSString stringWithUTF8String:"[CRLMediaReplacingHelper p_replaceCanvasElementInfo:withInfoFromInfoImporter:interactively:allowedTypes:actionString:queue:completion:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaReplacingHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:256 isFatal:0 description:"Invalid single info to replace: %@", v14];
    }
  }

  v23 = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  v24 = v23;
  if (a4)
  {
    v82[0] = 0;
    v82[1] = v82;
    v82[2] = 0x2810000000;
    v82[3] = &unk_1016A8115;
    v83 = 0;
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v81 = 0;
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v79 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_100343404;
    v76 = sub_100343414;
    v77 = 0;
    if (v41)
    {
      v25 = [v23 layerHost];
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"Replacing Media…" value:0 table:0];
      v28 = [a4 progress];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10034341C;
      v63[3] = &unk_101857560;
      v68 = v78;
      v64 = a4;
      v69 = v82;
      v67 = v15;
      v70 = v80;
      v65 = queue;
      v71 = &v72;
      v66 = v24;
      v29 = [v25 beginModalOperationWithLocalizedMessage:v27 progress:v28 cancelHandler:v63];
      v30 = v73[5];
      v73[5] = v29;
    }

    v31 = [v24 editingCoordinator];
    [v31 suspendCollaborationWithReason:@"Importing media for replacement"];

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100343674;
    v49[3] = &unk_1018576F0;
    v50 = queue;
    v58 = v82;
    v59 = &v72;
    v60 = v80;
    v51 = v24;
    v52 = a4;
    v53 = self;
    v62 = v41;
    v57 = v15;
    v61 = v78;
    v54 = v14;
    v55 = v42;
    v56 = @"Importing media for replacement";
    [v52 importBoardItemWithCompletionHandler:v49];

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(v80, 8);
    _Block_object_dispose(v82, 8);
  }

  else if (v15)
  {
    v32 = [NSError alloc];
    v84[0] = NSLocalizedDescriptionKey;
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Couldn’t Add Media File" value:0 table:0];
    v85[0] = v34;
    v84[1] = NSLocalizedRecoverySuggestionErrorKey;
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"Your media file wasn’t added because it’s an unsupported format." value:0 table:0];
    v85[1] = v36;
    v84[2] = @"CRLBoardItemImporterErrorMediaTypeKey";
    v85[2] = &off_1018E2B98;
    v37 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:3];
    v38 = [v32 initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:103 userInfo:v37];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003448D8;
    block[3] = &unk_101853A08;
    v48 = v41;
    v45 = v24;
    v46 = v38;
    v47 = v15;
    v39 = v38;
    dispatch_async(queue, block);
  }
}

- (void)boardItemImporter:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  v13 = [v12 layerHost];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100344AD8;
  v16[3] = &unk_101857738;
  v17 = v10;
  v18 = v11;
  v14 = v11;
  v15 = v10;
  [v13 presentMediaCompatibilityAlertWithReasons:a4 forMediaType:a5 forSingleMediaObject:1 completionHandler:v16];
}

@end