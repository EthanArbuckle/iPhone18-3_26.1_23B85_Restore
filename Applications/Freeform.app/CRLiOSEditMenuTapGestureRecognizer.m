@interface CRLiOSEditMenuTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSEditMenuTapGestureRecognizer

- (void)reset
{
  self->_ignoreTargetAction = 0;
  touchedRep = self->_touchedRep;
  self->_touchedRep = 0;

  self->_touchTypeForTap = 0;
  v4.receiver = self;
  v4.super_class = CRLiOSEditMenuTapGestureRecognizer;
  [(CRLiOSEditMenuTapGestureRecognizer *)&v4 reset];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSEditMenuTapGestureRecognizer *)self delegate];
  v15 = sub_10030361C(v8, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLUIKitInteractionHost);

  v16 = [v15 interactiveCanvasController];
  if (([(CRLiOSEditMenuTapGestureRecognizer *)self modifierFlags]& 0x120000) == 0)
  {
    if ([(CRLiOSEditMenuTapGestureRecognizer *)self numberOfTouches])
    {
      goto LABEL_19;
    }

    v17 = [v7 allTouches];
    if ([v17 count] != 1)
    {
      goto LABEL_18;
    }

    v18 = [v16 currentlyScrolling];

    if (v18)
    {
      goto LABEL_19;
    }

    v19 = [v6 anyObject];
    v17 = v19;
    if (!v19 || [v19 tapCount] != 1)
    {
LABEL_18:

LABEL_19:
      if (self->_touchedRep)
      {
        goto LABEL_20;
      }

      goto LABEL_2;
    }

    v20 = [(CRLiOSEditMenuTapGestureRecognizer *)self view];
    [v17 locationInView:v20];
    v22 = v21;
    v24 = v23;

    [v16 convertBoundsToUnscaledPoint:{v22, v24}];
    v26 = v25;
    v28 = v27;
    v42 = 0;
    v29 = [v16 hitKnobAtPoint:sub_10042B6C0(objc_msgSend(v17 inputType:"type")) returningRep:{&v42, v25, v27}];
    v30 = v42;
    v31 = v30;
    if (!v29 || ![v30 wantsEditMenuForTapAtPoint:v29 onKnob:{v26, v28}] || (v32 = v31) == 0)
    {
      v40 = v31;
      v33 = [v16 hitRep:{v26, v28}];
      v32 = [v33 repForSelecting];

      if (!v32 || ([v32 info], (v34 = objc_claimAutoreleasedReturnValue()) == 0) || (v35 = v34, objc_msgSend(v16, "layerHost"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "asUIKitHost"), v39 = v29, v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "shouldSelectAndShowEditMenuOnFirstTapForRep:", v32), v36, v29 = v39, v38, v35, (v37 & 1) == 0))
      {

        v32 = 0;
        v31 = v40;
        goto LABEL_17;
      }

      v31 = v40;
    }

    objc_storeStrong(&self->_touchedRep, v32);
    self->_ignoreTargetAction = 0;
    self->_touchTypeForTap = [v17 type];
    v41.receiver = self;
    v41.super_class = CRLiOSEditMenuTapGestureRecognizer;
    [(CRLiOSEditMenuTapGestureRecognizer *)&v41 touchesBegan:v6 withEvent:v7];
LABEL_17:

    goto LABEL_18;
  }

LABEL_2:
  [(CRLiOSEditMenuTapGestureRecognizer *)self setState:5];
LABEL_20:
}

@end