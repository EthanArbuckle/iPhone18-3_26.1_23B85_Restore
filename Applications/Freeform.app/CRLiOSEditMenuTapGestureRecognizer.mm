@interface CRLiOSEditMenuTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  delegate = [(CRLiOSEditMenuTapGestureRecognizer *)self delegate];
  v15 = sub_10030361C(delegate, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLUIKitInteractionHost);

  interactiveCanvasController = [v15 interactiveCanvasController];
  if (([(CRLiOSEditMenuTapGestureRecognizer *)self modifierFlags]& 0x120000) == 0)
  {
    if ([(CRLiOSEditMenuTapGestureRecognizer *)self numberOfTouches])
    {
      goto LABEL_19;
    }

    allTouches = [eventCopy allTouches];
    if ([allTouches count] != 1)
    {
      goto LABEL_18;
    }

    currentlyScrolling = [interactiveCanvasController currentlyScrolling];

    if (currentlyScrolling)
    {
      goto LABEL_19;
    }

    anyObject = [beganCopy anyObject];
    allTouches = anyObject;
    if (!anyObject || [anyObject tapCount] != 1)
    {
LABEL_18:

LABEL_19:
      if (self->_touchedRep)
      {
        goto LABEL_20;
      }

      goto LABEL_2;
    }

    view = [(CRLiOSEditMenuTapGestureRecognizer *)self view];
    [allTouches locationInView:view];
    v22 = v21;
    v24 = v23;

    [interactiveCanvasController convertBoundsToUnscaledPoint:{v22, v24}];
    v26 = v25;
    v28 = v27;
    v42 = 0;
    v29 = [interactiveCanvasController hitKnobAtPoint:sub_10042B6C0(objc_msgSend(allTouches inputType:"type")) returningRep:{&v42, v25, v27}];
    v30 = v42;
    v31 = v30;
    if (!v29 || ![v30 wantsEditMenuForTapAtPoint:v29 onKnob:{v26, v28}] || (repForSelecting = v31) == 0)
    {
      v40 = v31;
      v33 = [interactiveCanvasController hitRep:{v26, v28}];
      repForSelecting = [v33 repForSelecting];

      if (!repForSelecting || ([repForSelecting info], (v34 = objc_claimAutoreleasedReturnValue()) == 0) || (v35 = v34, objc_msgSend(interactiveCanvasController, "layerHost"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "asUIKitHost"), v39 = v29, v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "shouldSelectAndShowEditMenuOnFirstTapForRep:", repForSelecting), v36, v29 = v39, v38, v35, (v37 & 1) == 0))
      {

        repForSelecting = 0;
        v31 = v40;
        goto LABEL_17;
      }

      v31 = v40;
    }

    objc_storeStrong(&self->_touchedRep, repForSelecting);
    self->_ignoreTargetAction = 0;
    self->_touchTypeForTap = [allTouches type];
    v41.receiver = self;
    v41.super_class = CRLiOSEditMenuTapGestureRecognizer;
    [(CRLiOSEditMenuTapGestureRecognizer *)&v41 touchesBegan:beganCopy withEvent:eventCopy];
LABEL_17:

    goto LABEL_18;
  }

LABEL_2:
  [(CRLiOSEditMenuTapGestureRecognizer *)self setState:5];
LABEL_20:
}

@end