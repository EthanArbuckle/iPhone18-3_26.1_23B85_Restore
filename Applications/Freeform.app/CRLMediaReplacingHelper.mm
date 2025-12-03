@interface CRLMediaReplacingHelper
- (CGPoint)p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:(id)line withOldLayout:(id)layout withNewInfo:(id)info forLineEnd:(unint64_t)end;
- (CRLMediaReplacingHelper)initWithEditor:(id)editor;
- (id)p_commandsToSwapConnectionsFromInfo:(id)info infoMap:(id)map;
- (void)boardItemImporter:(id)importer needsMediaCompatibilityFeedbackWithReasons:(int64_t)reasons forMediaType:(int64_t)type usingBlock:(id)block;
- (void)p_replaceCanvasElementInfo:(id)info withFileAtURL:(id)l interactively:(BOOL)interactively allowedTypes:(id)types actionString:(id)string queue:(id)queue completion:(id)completion;
- (void)p_replaceCanvasElementInfo:(id)info withInfoFromInfoImporter:(id)importer interactively:(BOOL)interactively allowedTypes:(id)types actionString:(id)string queue:(id)queue completion:(id)completion;
- (void)replaceCanvasElementInfo:(id)info withFilesAtURLs:(id)ls allowedTypes:(id)types actionString:(id)string completion:(id)completion;
- (void)replaceSelectedMediaWithData:(id)data;
- (void)replaceSelectedMediaWithData:(id)data actionString:(id)string completion:(id)completion;
- (void)showMediaReplaceUI:(id)i;
@end

@implementation CRLMediaReplacingHelper

- (CRLMediaReplacingHelper)initWithEditor:(id)editor
{
  editorCopy = editor;
  v9.receiver = self;
  v9.super_class = CRLMediaReplacingHelper;
  v6 = [(CRLMediaReplacingHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editor, editor);
  }

  return v7;
}

- (void)showMediaReplaceUI:(id)i
{
  interactiveCanvasController = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  if ([interactiveCanvasController hasSelectedInfosInMultipleContainers])
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

  [interactiveCanvasController endEditing];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100341630;
  v12[3] = &unk_10183AE28;
  v12[4] = self;
  v8 = interactiveCanvasController;
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

- (id)p_commandsToSwapConnectionsFromInfo:(id)info infoMap:(id)map
{
  infoCopy = info;
  mapCopy = map;
  interactiveCanvasController = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  v9 = [interactiveCanvasController repForInfo:infoCopy];
  v10 = objc_opt_class();
  v54 = mapCopy;
  v11 = [mapCopy objectForKeyedSubscript:infoCopy];
  v12 = sub_100013F00(v10, v11);

  v51 = +[NSMutableArray array];
  v53 = v12;
  if (v12)
  {
    layout = [v9 layout];
    connectedLayouts = [layout connectedLayouts];
    v15 = [connectedLayouts count];

    if (v15)
    {
      v49 = interactiveCanvasController;
      v50 = infoCopy;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      layout2 = [v9 layout];
      connectedLayouts2 = [layout2 connectedLayouts];

      obj = connectedLayouts2;
      v56 = [connectedLayouts2 countByEnumeratingWithState:&v58 objects:v64 count:16];
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
          connectionLineInfo = [v20 connectionLineInfo];
          editingCoordinator = [(CRLMediaReplacingHelper *)self editingCoordinator];
          mainBoard = [editingCoordinator mainBoard];
          v24 = [connectionLineInfo getConnectedFromWithBoardItemOwner:mainBoard];

          editingCoordinator2 = [(CRLMediaReplacingHelper *)self editingCoordinator];
          mainBoard2 = [editingCoordinator2 mainBoard];
          v27 = [connectionLineInfo getConnectedToWithBoardItemOwner:mainBoard2];

          connectionLinePathSource = [connectionLineInfo connectionLinePathSource];
          info = [v9 info];

          if (v24 == info)
          {
            v31 = [v54 objectForKeyedSubscript:v27];

            if (!v31)
            {
              v31 = v27;
            }

            layout3 = [v57 layout];
            [(CRLMediaReplacingHelper *)self p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:v20 withOldLayout:layout3 withNewInfo:v53 forLineEnd:10];
            v43 = v42;
            v45 = v44;
            tailMagnet = [connectionLinePathSource tailMagnet];
            [tailMagnet setMagnetNormalizedPosition:{v43, v45}];

            v38 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:v53 chirality:0 pathSource:connectionLinePathSource];
            v39 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:v31 chirality:1 pathSource:connectionLinePathSource];
            v63[0] = v38;
            v63[1] = v39;
            v40 = v63;
          }

          else
          {
            info2 = [v9 info];

            if (v27 != info2)
            {
              goto LABEL_19;
            }

            v31 = [v54 objectForKeyedSubscript:v24];

            if (!v31)
            {
              v31 = v24;
            }

            layout4 = [v57 layout];
            [(CRLMediaReplacingHelper *)self p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:v20 withOldLayout:layout4 withNewInfo:v53 forLineEnd:11];
            v34 = v33;
            v36 = v35;
            headMagnet = [connectionLinePathSource headMagnet];
            [headMagnet setMagnetNormalizedPosition:{v34, v36}];

            v38 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:v31 chirality:0 pathSource:connectionLinePathSource];
            v39 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:v53 chirality:1 pathSource:connectionLinePathSource];
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

          interactiveCanvasController = v49;
          infoCopy = v50;
          goto LABEL_23;
        }
      }
    }
  }

  v18 = 0;
LABEL_23:

  return v51;
}

- (CGPoint)p_getNewMagnetNormalizedPositionAfterReplacingMediaWithConnectionLine:(id)line withOldLayout:(id)layout withNewInfo:(id)info forLineEnd:(unint64_t)end
{
  lineCopy = line;
  layoutCopy = layout;
  infoCopy = info;
  if (end == 11)
  {
    headMagnetType = [lineCopy headMagnetType];
  }

  else
  {
    headMagnetType = [lineCopy tailMagnetType];
  }

  v13 = headMagnetType;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3010000000;
  v36 = 0;
  v37 = 0;
  v35[3] = &unk_1016A8115;
  if (end == 11)
  {
    [lineCopy headMagnetCanvasPosition];
  }

  else
  {
    [lineCopy tailMagnetCanvasPosition];
  }

  v36 = v14;
  v37 = v15;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v33 = 0;
  v34 = 0;
  v32 = &unk_1016A8115;
  if (end == 11)
  {
    [lineCopy headMagnetNormalizedPosition];
  }

  else
  {
    [lineCopy tailMagnetNormalizedPosition];
  }

  v33 = v16;
  v34 = v17;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100341F78;
  v23[3] = &unk_101852AA8;
  v27 = v13;
  v25 = v35;
  v18 = lineCopy;
  endCopy = end;
  v24 = v18;
  v26 = &v29;
  [infoCopy withTemporaryLayoutPerform:v23];
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

- (void)replaceCanvasElementInfo:(id)info withFilesAtURLs:(id)ls allowedTypes:(id)types actionString:(id)string completion:(id)completion
{
  infoCopy = info;
  lsCopy = ls;
  typesCopy = types;
  stringCopy = string;
  completionCopy = completion;
  if ([lsCopy count] != 1)
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

  firstObject = [lsCopy firstObject];
  if (firstObject)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100342350;
    v21[3] = &unk_101857430;
    v22 = completionCopy;
    [(CRLMediaReplacingHelper *)self p_replaceCanvasElementInfo:infoCopy withFileAtURL:firstObject interactively:1 allowedTypes:typesCopy actionString:stringCopy queue:&_dispatch_main_q completion:v21];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)replaceSelectedMediaWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  v5 = [NSArray arrayWithObjects:&dataCopy count:1];

  [(CRLMediaReplacingHelper *)self replaceSelectedMediaWithData:v5 actionString:0 completion:0, dataCopy];
}

- (void)replaceSelectedMediaWithData:(id)data actionString:(id)string completion:(id)completion
{
  dataCopy = data;
  stringCopy = string;
  completionCopy = completion;
  if ([dataCopy count] != 1)
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

  firstObject = [dataCopy firstObject];
  if (firstObject)
  {
    interactiveCanvasController = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    boardItemFactory = [editingCoordinator boardItemFactory];

    v18 = [CRLBoardItemImporter alloc];
    v19 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    assetOwner = [boardItemFactory assetOwner];
    v21 = [(CRLPreinsertionAssetWrapper *)v19 initWithAlreadyInsertedAsset:firstObject owner:assetOwner];
    v22 = [(CRLBoardItemImporter *)v18 initWithData:v21 boardItemFactory:boardItemFactory];

    if (v22)
    {
      [(CRLBoardItemImporter *)v22 setDelegate:self];
      v23 = v22;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10034284C;
      v25[3] = &unk_101857430;
      v26 = completionCopy;
      if (self)
      {
        [(CRLMediaReplacingHelper *)self p_replaceCanvasElementInfo:0 withInfoFromInfoImporter:v23 interactively:1 allowedTypes:0 actionString:stringCopy queue:&_dispatch_main_q completion:v25];
      }

      else
      {
      }

      v24 = v26;
    }

    else
    {
      if (!completionCopy)
      {
LABEL_22:

        goto LABEL_23;
      }

      v24 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v24);
    }

    goto LABEL_22;
  }

  if (completionCopy)
  {
    interactiveCanvasController = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, interactiveCanvasController);
LABEL_23:
  }
}

- (void)p_replaceCanvasElementInfo:(id)info withFileAtURL:(id)l interactively:(BOOL)interactively allowedTypes:(id)types actionString:(id)string queue:(id)queue completion:(id)completion
{
  interactivelyCopy = interactively;
  infoCopy = info;
  lCopy = l;
  typesCopy = types;
  stringCopy = string;
  queueCopy = queue;
  completionCopy = completion;
  v35 = interactivelyCopy;
  if (interactivelyCopy && queueCopy != &_dispatch_main_q)
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

  if (typesCopy)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = typesCopy;
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

          if ([lCopy crl_conformsToUTI:*(*(&v37 + 1) + 8 * i)])
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
    editingCoordinator = [(CRLMediaReplacingHelper *)self editingCoordinator];
    boardItemFactory = [editingCoordinator boardItemFactory];
    v28 = [(CRLBoardItemImporter *)v29 initWithURL:lCopy boardItemFactory:boardItemFactory];

    [(CRLBoardItemImporter *)v28 setDelegate:self];
  }

  v32 = v28;
  v33 = v32;
  if (self)
  {
    v34 = infoCopy;
    [(CRLMediaReplacingHelper *)self p_replaceCanvasElementInfo:infoCopy withInfoFromInfoImporter:v32 interactively:v35 allowedTypes:typesCopy actionString:stringCopy queue:queueCopy completion:completionCopy];
  }

  else
  {

    v34 = infoCopy;
  }
}

- (void)p_replaceCanvasElementInfo:(id)info withInfoFromInfoImporter:(id)importer interactively:(BOOL)interactively allowedTypes:(id)types actionString:(id)string queue:(id)queue completion:(id)completion
{
  interactivelyCopy = interactively;
  infoCopy = info;
  typesCopy = types;
  stringCopy = string;
  queue = queue;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    boardItems = [(CRLMediaReplacingHelper *)self boardItems];
    v17 = [boardItems containsObject:infoCopy];

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
        sub_1013571E8(infoCopy, v18, v19);
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
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:256 isFatal:0 description:"Invalid single info to replace: %@", infoCopy];
    }
  }

  interactiveCanvasController = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  v24 = interactiveCanvasController;
  if (importer)
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
    if (interactivelyCopy)
    {
      layerHost = [interactiveCanvasController layerHost];
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"Replacing Media…" value:0 table:0];
      progress = [importer progress];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10034341C;
      v63[3] = &unk_101857560;
      v68 = v78;
      importerCopy = importer;
      v69 = v82;
      v67 = completionCopy;
      v70 = v80;
      queueCopy = queue;
      v71 = &v72;
      v66 = v24;
      v29 = [layerHost beginModalOperationWithLocalizedMessage:v27 progress:progress cancelHandler:v63];
      v30 = v73[5];
      v73[5] = v29;
    }

    editingCoordinator = [v24 editingCoordinator];
    [editingCoordinator suspendCollaborationWithReason:@"Importing media for replacement"];

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100343674;
    v49[3] = &unk_1018576F0;
    queueCopy2 = queue;
    v58 = v82;
    v59 = &v72;
    v60 = v80;
    v51 = v24;
    importerCopy2 = importer;
    selfCopy = self;
    v62 = interactivelyCopy;
    v57 = completionCopy;
    v61 = v78;
    v54 = infoCopy;
    v55 = stringCopy;
    v56 = @"Importing media for replacement";
    [importerCopy2 importBoardItemWithCompletionHandler:v49];

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(v80, 8);
    _Block_object_dispose(v82, 8);
  }

  else if (completionCopy)
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
    v48 = interactivelyCopy;
    v45 = v24;
    v46 = v38;
    v47 = completionCopy;
    v39 = v38;
    dispatch_async(queue, block);
  }
}

- (void)boardItemImporter:(id)importer needsMediaCompatibilityFeedbackWithReasons:(int64_t)reasons forMediaType:(int64_t)type usingBlock:(id)block
{
  importerCopy = importer;
  blockCopy = block;
  interactiveCanvasController = [(CRLMediaReplacingHelper *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100344AD8;
  v16[3] = &unk_101857738;
  v17 = importerCopy;
  v18 = blockCopy;
  v14 = blockCopy;
  v15 = importerCopy;
  [layerHost presentMediaCompatibilityAlertWithReasons:reasons forMediaType:type forSingleMediaObject:1 completionHandler:v16];
}

@end