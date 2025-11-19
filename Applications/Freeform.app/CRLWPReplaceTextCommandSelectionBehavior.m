@interface CRLWPReplaceTextCommandSelectionBehavior
- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)a3;
@end

@implementation CRLWPReplaceTextCommandSelectionBehavior

- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  p_info = CRLMovieRenderingOperation.info;
  if ([v5 isEqual:objc_opt_class()])
  {
    v7 = objc_opt_class();
    v8 = [(CRLCommandSelectionBehavior *)self commitSelectionPath];
    v9 = [v8 mostSpecificSelectionOfClass:objc_opt_class()];
    v10 = sub_100013F00(v7, v9);

    v11 = objc_opt_class();
    v12 = [v4 commitSelectionPath];
    v13 = [v12 mostSpecificSelectionOfClass:objc_opt_class()];
    v14 = sub_100013F00(v11, v13);

    v15 = [v10 boardItems];
    v16 = [v14 boardItems];
    LODWORD(v13) = [v15 isEqual:v16];

    if (v13)
    {
      v17 = [_TtC8Freeform25CRLSelectionPathValidator alloc];
      v18 = [v10 boardItems];
      v19 = [v18 anyObject];
      v20 = [v19 parentBoard];
      v21 = objc_opt_new();
      v22 = [(CRLSelectionPathValidator *)v17 initWithBoard:v20 translator:v21];

      v23 = [(CRLCommandSelectionBehavior *)self persistableForwardSelectionPath];
      v24 = v22;
      v47 = v22;
      v25 = [(CRLSelectionPathValidator *)v22 selectionPathFromPersistableSelectionPath:v23];

      v26 = objc_opt_class();
      v48 = v25;
      v27 = [v25 mostSpecificSelectionOfClass:objc_opt_class()];
      v28 = sub_100013F00(v26, v27);

      [CRLWPSelection selectionFromWPSelection:v28];
      v29 = v49 = v4;
      [v29 setTailCursorAffinity:2];
      v46 = [v25 selectionPathReplacingMostSpecificLocationOfSelection:v28 withSelection:v29];
      v50 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v46];
      v30 = [(CRLCommandSelectionBehavior *)self persistableReverseSelectionPath];
      v31 = [(CRLSelectionPathValidator *)v24 selectionPathFromPersistableSelectionPath:v30];

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

      v39 = v50;
      v4 = v49;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v40 = objc_alloc((p_info + 206));
    if (v39)
    {
      v41 = 0;
      v51 = v39;
      goto LABEL_9;
    }
  }

  else
  {
    v40 = [CRLWPReplaceTextCommandSelectionBehavior alloc];
    v38 = 0;
  }

  v39 = [v4 persistableForwardSelectionPath];
  v51 = 0;
  v41 = 1;
LABEL_9:
  v42 = v38;
  if (!v38)
  {
    v42 = [v4 persistableReverseSelectionPath];
  }

  v43 = [(CRLCommandSelectionBehavior *)self commitSelectionPath];
  v44 = -[CRLCommandSelectionBehavior initWithPersistableForwardSelectionPath:persistableReverseSelectionPath:commitSelectionPath:selectionFlags:commitSelectionFlags:forwardSelectionFlags:reverseSelectionFlags:](v40, "initWithPersistableForwardSelectionPath:persistableReverseSelectionPath:commitSelectionPath:selectionFlags:commitSelectionFlags:forwardSelectionFlags:reverseSelectionFlags:", v39, v42, v43, -[CRLCommandSelectionBehavior selectionFlags](self, "selectionFlags"), 0, [v4 additionalForwardSelectionFlags], -[CRLCommandSelectionBehavior additionalReverseSelectionFlags](self, "additionalReverseSelectionFlags"));

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