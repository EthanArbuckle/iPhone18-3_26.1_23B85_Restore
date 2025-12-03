@interface CRLWPReplaceTextCommandSelectionBehavior
- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)behavior;
@end

@implementation CRLWPReplaceTextCommandSelectionBehavior

- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = objc_opt_class();
  p_info = CRLMovieRenderingOperation.info;
  if ([v5 isEqual:objc_opt_class()])
  {
    v7 = objc_opt_class();
    commitSelectionPath = [(CRLCommandSelectionBehavior *)self commitSelectionPath];
    v9 = [commitSelectionPath mostSpecificSelectionOfClass:objc_opt_class()];
    v10 = sub_100013F00(v7, v9);

    v11 = objc_opt_class();
    commitSelectionPath2 = [behaviorCopy commitSelectionPath];
    v13 = [commitSelectionPath2 mostSpecificSelectionOfClass:objc_opt_class()];
    v14 = sub_100013F00(v11, v13);

    boardItems = [v10 boardItems];
    boardItems2 = [v14 boardItems];
    LODWORD(v13) = [boardItems isEqual:boardItems2];

    if (v13)
    {
      v17 = [_TtC8Freeform25CRLSelectionPathValidator alloc];
      boardItems3 = [v10 boardItems];
      anyObject = [boardItems3 anyObject];
      parentBoard = [anyObject parentBoard];
      v21 = objc_opt_new();
      v22 = [(CRLSelectionPathValidator *)v17 initWithBoard:parentBoard translator:v21];

      persistableForwardSelectionPath = [(CRLCommandSelectionBehavior *)self persistableForwardSelectionPath];
      v24 = v22;
      v47 = v22;
      v25 = [(CRLSelectionPathValidator *)v22 selectionPathFromPersistableSelectionPath:persistableForwardSelectionPath];

      v26 = objc_opt_class();
      v48 = v25;
      v27 = [v25 mostSpecificSelectionOfClass:objc_opt_class()];
      v28 = sub_100013F00(v26, v27);

      [CRLWPSelection selectionFromWPSelection:v28];
      v29 = v49 = behaviorCopy;
      [v29 setTailCursorAffinity:2];
      v46 = [v25 selectionPathReplacingMostSpecificLocationOfSelection:v28 withSelection:v29];
      v50 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v46];
      persistableReverseSelectionPath = [(CRLCommandSelectionBehavior *)self persistableReverseSelectionPath];
      v31 = [(CRLSelectionPathValidator *)v24 selectionPathFromPersistableSelectionPath:persistableReverseSelectionPath];

      v32 = objc_opt_class();
      [v31 mostSpecificSelectionOfClass:objc_opt_class()];
      v34 = v33 = v10;
      v35 = sub_100013F00(v32, v34);

      v36 = [CRLWPSelection selectionFromWPSelection:v35];
      [v36 setTailCursorAffinity:2];
      v37 = [v31 selectionPathReplacingMostSpecificLocationOfSelection:v35 withSelection:v36];
      v38 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v37];

      v10 = v33;
      p_info = (CRLMovieRenderingOperation + 32);

      persistableForwardSelectionPath2 = v50;
      behaviorCopy = v49;
    }

    else
    {
      v38 = 0;
      persistableForwardSelectionPath2 = 0;
    }

    v40 = objc_alloc((p_info + 206));
    if (persistableForwardSelectionPath2)
    {
      v41 = 0;
      v51 = persistableForwardSelectionPath2;
      goto LABEL_9;
    }
  }

  else
  {
    v40 = [CRLWPReplaceTextCommandSelectionBehavior alloc];
    v38 = 0;
  }

  persistableForwardSelectionPath2 = [behaviorCopy persistableForwardSelectionPath];
  v51 = 0;
  v41 = 1;
LABEL_9:
  persistableReverseSelectionPath2 = v38;
  if (!v38)
  {
    persistableReverseSelectionPath2 = [behaviorCopy persistableReverseSelectionPath];
  }

  commitSelectionPath3 = [(CRLCommandSelectionBehavior *)self commitSelectionPath];
  v44 = -[CRLCommandSelectionBehavior initWithPersistableForwardSelectionPath:persistableReverseSelectionPath:commitSelectionPath:selectionFlags:commitSelectionFlags:forwardSelectionFlags:reverseSelectionFlags:](v40, "initWithPersistableForwardSelectionPath:persistableReverseSelectionPath:commitSelectionPath:selectionFlags:commitSelectionFlags:forwardSelectionFlags:reverseSelectionFlags:", persistableForwardSelectionPath2, persistableReverseSelectionPath2, commitSelectionPath3, -[CRLCommandSelectionBehavior selectionFlags](self, "selectionFlags"), 0, [behaviorCopy additionalForwardSelectionFlags], -[CRLCommandSelectionBehavior additionalReverseSelectionFlags](self, "additionalReverseSelectionFlags"));

  if (v38)
  {
    if (!v41)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v41)
  {
LABEL_13:
  }

LABEL_14:

  return v44;
}

@end