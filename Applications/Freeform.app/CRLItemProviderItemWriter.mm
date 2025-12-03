@interface CRLItemProviderItemWriter
+ (id)generateJsonDataFrom:(id)from version:(id)version error:(id *)error;
- (id)createItemProviderWithCopyOfBoardItems:(id)items fromInteractiveCanvasController:(id)controller outCopiedBoardItems:(id *)boardItems;
- (id)itemProviderWithStorage:(id)storage selection:(id)selection boardItems:(id)items styleProvider:(id)provider inIsSmart:(BOOL)smart pasteboardController:(id)controller;
- (void)writeContentDescription:(id)description toItemProvider:(id)provider pasteboardController:(id)controller;
@end

@implementation CRLItemProviderItemWriter

- (id)createItemProviderWithCopyOfBoardItems:(id)items fromInteractiveCanvasController:(id)controller outCopiedBoardItems:(id *)boardItems
{
  itemsCopy = items;
  controllerCopy = controller;
  v78 = itemsCopy;
  if (![itemsCopy count])
  {
    v84 = 0;
    goto LABEL_92;
  }

  v84 = objc_alloc_init(NSItemProvider);
  v79 = controllerCopy;
  editingCoordinator = [controllerCopy editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];

  board = [v79 board];
  v76 = board;
  if (!board)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013183A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013183B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318448();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101318470(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLItemProviderItemWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:36 isFatal:0 description:"invalid nil value for '%{public}s'", "board"];

    board = 0;
  }

  store = [board store];
  v14 = [_TtC8Freeform19CRLPasteboardObject alloc];
  crdtContext = [store crdtContext];
  v75 = [(CRLPasteboardObject *)v14 initWithContext:crdtContext];

  v16 = [_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant alloc];
  crdtContext2 = [store crdtContext];
  v74 = [(CRLPasteboardObjectItemProviderWriteAssistant *)v16 initWithStore:store context:crdtContext2];

  if (!v74)
  {
    goto LABEL_41;
  }

  v71 = [CRLPasteboardController boardItemsForCopyByFixingUpBoardItems:itemsCopy boardItemFactory:boardItemFactory board:v76];
  v82 = [boardItemFactory makeDuplicateOfBoardItems:v71];
  if (!v82)
  {

LABEL_41:
    if (qword_101AD5A08 != -1)
    {
      sub_1013186B4();
    }

    v39 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013186DC(v39);
    }

    goto LABEL_45;
  }

  if (v79)
  {
    v18 = [itemsCopy count];
    if (v18 != [v82 count])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101318520();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101318548();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013185DC();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101318604(v19);
      }

      v20 = [NSString stringWithUTF8String:"[CRLItemProviderItemWriter createItemProviderWithCopyOfBoardItems:fromInteractiveCanvasController:outCopiedBoardItems:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLItemProviderItemWriter.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:56 isFatal:0 description:"Somehow didn't end up with the same number of board items"];
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v22 = itemsCopy;
    v23 = [v22 countByEnumeratingWithState:&v117 objects:v124 count:16];
    if (v23)
    {
      v24 = 0;
      v25 = *v118;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v118 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v117 + 1) + 8 * i);
          v28 = [v82 objectAtIndexedSubscript:v24];
          v29 = [v79 layoutForInfo:v27];
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          parent = [v29 parent];
          geometryInRoot = [parent geometryInRoot];
          v32 = geometryInRoot;
          if (geometryInRoot)
          {
            [geometryInRoot transform];
          }

          else
          {
            v115 = 0u;
            v116 = 0u;
            v114 = 0u;
          }

          v111 = v114;
          v112 = v115;
          v113 = v116;
          [v29 transferLayoutGeometryToInfo:v28 withAdditionalTransform:&v111 assertIfInDocument:1];

          ++v24;
        }

        v23 = [v22 countByEnumeratingWithState:&v117 objects:v124 count:16];
      }

      while (v23);
    }
  }

  [(CRLPasteboardObject *)v75 setBoardItems:v82];
  if (boardItems)
  {
    v33 = v82;
    *boardItems = v82;
  }

  v34 = objc_alloc_init(CRLContentDescriptionTranslator);
  v35 = [(CRLContentDescriptionTranslator *)v34 contentDescriptionForBoardItems:v78];
  canvasEditor = [v79 canvasEditor];
  pasteboardController = [canvasEditor pasteboardController];
  [(CRLItemProviderItemWriter *)self writeContentDescription:v35 toItemProvider:v84 pasteboardController:pasteboardController];

  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_10011D548;
  v109[3] = &unk_10183E0C0;
  v38 = dispatch_semaphore_create(0);
  v110 = v38;
  [(CRLPasteboardObjectItemProviderWriteAssistant *)v74 writePasteboardObject:v75 to:v84 completionHandler:v109];
  dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);

LABEL_45:
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled]&& [_TtC8Freeform36CRLCLCanvasObjectArrayExporterHelper isExportable:v78])
  {
    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_10011D594;
    v108[3] = &unk_10183E170;
    v108[4] = v75;
    v108[5] = self;
    v40 = objc_retainBlock(v108);
    v41 = +[_TtC8Freeform20CRLCLCopyPasteHelper canvasObjectVersionsToExport];
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v104 objects:v123 count:16];
    if (v42)
    {
      v43 = *v105;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v105 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v104 + 1) + 8 * j);
          v46 = [_TtC8Freeform20CRLCLCopyPasteHelper canvasObjectTypeIdentifierForVersion:v45];
          v47 = (v40[2])(v40, v45);
          [v84 registerDataRepresentationForTypeIdentifier:v46 visibility:0 loadHandler:v47];
        }

        v42 = [v41 countByEnumeratingWithState:&v104 objects:v123 count:16];
      }

      while (v42);
    }

    v48 = [_TtC8Freeform20CRLCLCopyPasteHelper metaTypeIdentifiersForBoardItems:v78];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v49 = [v48 countByEnumeratingWithState:&v100 objects:v122 count:16];
    if (v49)
    {
      v50 = *v101;
      do
      {
        for (k = 0; k != v49; k = k + 1)
        {
          if (*v101 != v50)
          {
            objc_enumerationMutation(v48);
          }

          [v84 registerDataRepresentationForTypeIdentifier:*(*(&v100 + 1) + 8 * k) visibility:0 loadHandler:&stru_10183E1B0];
        }

        v49 = [v48 countByEnumeratingWithState:&v100 objects:v122 count:16];
      }

      while (v49);
    }
  }

  if ([v78 count] == 1)
  {
    firstObject = [v78 firstObject];
    promisedStringForCopy = [firstObject promisedStringForCopy];
  }

  else
  {
    promisedStringForCopy = 0;
  }

  if ([v78 count] == 1)
  {
    firstObject2 = [v78 firstObject];
    customPublicTypesToPromiseWhenCopyingSingleBoardItem = [firstObject2 customPublicTypesToPromiseWhenCopyingSingleBoardItem];
    v54 = [customPublicTypesToPromiseWhenCopyingSingleBoardItem count];
    v72 = v54 != 0;
    if (v54)
    {
      suggestedNameWhenDraggingSingleBoardItem = [firstObject2 suggestedNameWhenDraggingSingleBoardItem];
      if (suggestedNameWhenDraggingSingleBoardItem)
      {
        [v84 setSuggestedName:suggestedNameWhenDraggingSingleBoardItem];
      }
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v56 = customPublicTypesToPromiseWhenCopyingSingleBoardItem;
    v57 = [v56 countByEnumeratingWithState:&v96 objects:v121 count:16];
    if (v57)
    {
      v58 = *v97;
      do
      {
        for (m = 0; m != v57; m = m + 1)
        {
          if (*v97 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = *(*(&v96 + 1) + 8 * m);
          identifier = [UTTypePlainText identifier];
          if ([v60 crl_conformsToUTI:identifier])
          {
            v62 = [promisedStringForCopy length] == 0;

            if (!v62)
            {
              continue;
            }
          }

          else
          {
          }

          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_10011D984;
          v94[3] = &unk_10183E258;
          v94[4] = v60;
          v95 = firstObject2;
          [v84 registerDataRepresentationForTypeIdentifier:v60 visibility:0 loadHandler:v94];
        }

        v57 = [v56 countByEnumeratingWithState:&v96 objects:v121 count:16];
      }

      while (v57);
    }
  }

  else
  {
    v72 = 0;
  }

  if ([promisedStringForCopy length])
  {
    v63 = 1;
  }

  else
  {
    v63 = v72;
  }

  if ((v63 & 1) == 0)
  {
    *&v114 = 0;
    *(&v114 + 1) = &v114;
    v115 = 0x2020000000uLL;
    *&v111 = 0;
    *(&v111 + 1) = &v111;
    *&v112 = 0x2020000000;
    BYTE8(v112) = 0;
    v64 = dispatch_semaphore_create(0);
    v65 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011DE00;
    block[3] = &unk_10183E2C0;
    block[4] = v76;
    block[5] = v75;
    v92 = &v111;
    v93 = &v114;
    v66 = v64;
    v91 = v66;
    dispatch_async(v65, block);
    identifier2 = [UTTypePNG identifier];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_10011E0BC;
    v86[3] = &unk_10183E2E8;
    v68 = v66;
    v87 = v68;
    v88 = &v114;
    v89 = &v111;
    [v84 registerDataRepresentationForTypeIdentifier:identifier2 visibility:0 loadHandler:v86];

    _Block_object_dispose(&v111, 8);
    _Block_object_dispose(&v114, 8);
  }

  if ([promisedStringForCopy length])
  {
    identifier3 = [UTTypeUTF8PlainText identifier];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10011E2E4;
    v85[3] = &unk_10183E350;
    v85[4] = promisedStringForCopy;
    [v84 registerDataRepresentationForTypeIdentifier:identifier3 visibility:0 loadHandler:v85];
  }

  controllerCopy = v79;
LABEL_92:

  return v84;
}

- (id)itemProviderWithStorage:(id)storage selection:(id)selection boardItems:(id)items styleProvider:(id)provider inIsSmart:(BOOL)smart pasteboardController:(id)controller
{
  smartCopy = smart;
  storageCopy = storage;
  selectionCopy = selection;
  itemsCopy = items;
  controllerCopy = controller;
  if ([selectionCopy isRange])
  {
    v43 = itemsCopy;
    range = [selectionCopy range];
    v19 = v18;
    v20 = objc_alloc_init(NSItemProvider);
    if (v19)
    {
      v21 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:storageCopy withRange:range, v19];
      if ([v21 length])
      {
        [controllerCopy delegate];
        v22 = v41 = range;
        v42 = [v22 sourceContextForPasteboardController:controllerCopy];

        v23 = [_TtC8Freeform19CRLPasteboardObject alloc];
        sourceContext = [v42 sourceContext];
        v39 = [(CRLPasteboardObject *)v23 initWithContext:sourceContext];

        [(CRLPasteboardObject *)v39 copyTextFrom:v21];
        [(CRLPasteboardObject *)v39 setIsSmartCopyPaste:smartCopy];
        v25 = objc_alloc_init(CRLContentDescriptionTranslator);
        v40 = v25;
        range2 = [v21 range];
        if (v43)
        {
          v28 = v43;
        }

        else
        {
          v28 = &__NSArray0__struct;
        }

        v38 = [(CRLContentDescriptionTranslator *)v25 contentDescriptionForTextStorage:v21 range:range2 boardItems:v26, v28];
        [(CRLItemProviderItemWriter *)self writeContentDescription:v38 toItemProvider:v20 pasteboardController:controllerCopy];
        v29 = [_TtC8Freeform45CRLPasteboardObjectItemProviderWriteAssistant alloc];
        sourceStore = [v42 sourceStore];
        sourceContext2 = [v42 sourceContext];
        v32 = [(CRLPasteboardObjectItemProviderWriteAssistant *)v29 initWithStore:sourceStore context:sourceContext2];

        range = v41;
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10011E848;
        v44[3] = &unk_10183E0C0;
        v33 = dispatch_semaphore_create(0);
        v45 = v33;
        [(CRLPasteboardObjectItemProviderWriteAssistant *)v32 writePasteboardObject:v39 to:v20 completionHandler:v44];
        dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    coreTextAttributedString = [storageCopy coreTextAttributedString];
    v35 = [coreTextAttributedString attributedSubstringFromRange:{range, v19}];

    if ([v35 length])
    {
      [v20 registerObject:v35 visibility:0];
    }

    v36 = [storageCopy substringWithRange:{range, v19}];
    if ([v36 length])
    {
      [v20 registerObject:v36 visibility:0];
    }

    itemsCopy = v43;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)writeContentDescription:(id)description toItemProvider:(id)provider pasteboardController:(id)controller
{
  descriptionCopy = description;
  providerCopy = provider;
  controllerCopy = controller;
  v10 = objc_opt_new();
  [controllerCopy distillPasteboardContentDescription:descriptionCopy intoPasteboardStateTypes:v10];
  v11 = [NSKeyedArchiver crl_securelyArchiveRoot:v10];
  [providerCopy setTeamData:v11];
}

+ (id)generateJsonDataFrom:(id)from version:(id)version error:(id *)error
{
  type metadata accessor for CRLBoardItem(0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  versionCopy = version;
  v8 = sub_101076280(v6);
  v10 = v9;

  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002640C(v8, v10);

  return v11.super.isa;
}

@end