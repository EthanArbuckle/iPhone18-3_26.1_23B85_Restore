@interface CRLiOSCanvasPointerInteractionDelegate
- (CRLiOSCanvasPointerInteractionDelegate)initWithInteractiveCanvasController:(id)controller;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation CRLiOSCanvasPointerInteractionDelegate

- (CRLiOSCanvasPointerInteractionDelegate)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLiOSCanvasPointerInteractionDelegate;
  v5 = [(CRLiOSCanvasPointerInteractionDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, controllerCopy);
  }

  return v6;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [requestCopy location];
  if (([asiOSCVC i_allowCanvasInteraction:interactionCopy atPoint:?] & 1) == 0)
  {
    lastCursor = self->_lastCursor;
    self->_lastCursor = 0;

    v34 = 0;
    goto LABEL_40;
  }

  v108 = [CRLCursorPlatformObject cursorPlatformObjectWithPointerRegionRequest:requestCopy];
  v14 = objc_loadWeakRetained(&self->_icc);
  [requestCopy location];
  [v14 convertBoundsToUnscaledPoint:?];
  v16 = v15;
  v18 = v17;

  if (([asiOSCVC currentlyTrackingIndirectPointerTouch] & 1) == 0)
  {
    lastCursorUpdatingSource = self->_lastCursorUpdatingSource;
    self->_lastCursorUpdatingSource = 0;

    v36 = objc_loadWeakRetained(&self->_icc);
    v113 = 0;
    v37 = [v36 hitKnobAtPoint:0 inputType:&v113 returningRep:{v16, v18}];
    v38 = v113;

    v39 = CRLMetalContext;
    v106 = v38;
    if (v37 && ([v38 convertNaturalPointFromUnscaledCanvas:{v16, v18}], objc_msgSend(v38, "cursorAtPoint:forKnob:withCursorPlatformObject:", v37, v108), (v40 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v41 = v40;
      v42 = v38;
      v105 = v37;
      reverseObjectEnumerator = v41;
      v44 = v42;
      v39 = CRLMetalContext;
      v51 = sub_1003035DC(v44, 1, v45, v46, v47, v48, v49, v50, &OBJC_PROTOCOL___CRLiOSCursorUpdatingSource);
      v52 = self->_lastCursorUpdatingSource;
      self->_lastCursorUpdatingSource = v51;

      v53 = reverseObjectEnumerator;
    }

    else
    {
      delegate = [asiOSCVC delegate];
      if (objc_opt_respondsToSelector())
      {
        currentDocumentMode = [delegate currentDocumentMode];
        v53 = [currentDocumentMode cursorAtPoint:v108 withCursorPlatformObject:{v16, v18}];

        if (v53)
        {
          v105 = 0;
LABEL_32:
          defaultCursor = [&v39[88] defaultCursor];
          if (v53 == defaultCursor)
          {
            v85 = 0;
          }

          else
          {
            v85 = v53;
          }

          objc_storeStrong(&self->_lastCursor, v85);

          v86 = self->_lastCursor;
          if (v86)
          {
            identifierSuffix = [(CRLCursor *)v86 identifierSuffix];
            v88 = v105;
            v89 = [NSString stringWithFormat:@"%p-%@", v105, identifierSuffix];

            [(CRLCursor *)self->_lastCursor activeScaledRect];
            v34 = [UIPointerRegion regionWithRect:v89 identifier:?];
          }

          else
          {
            v34 = 0;
            v88 = v105;
          }

          goto LABEL_39;
        }
      }

      else
      {
      }

      v102 = v37;
      v103 = interactionCopy;
      v104 = regionCopy;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v56 = objc_loadWeakRetained(&self->_icc);
      editorController = [v56 editorController];
      currentEditors = [editorController currentEditors];
      reverseObjectEnumerator = [currentEditors reverseObjectEnumerator];

      v59 = [reverseObjectEnumerator countByEnumeratingWithState:&v109 objects:v114 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v110;
        while (2)
        {
          for (i = 0; i != v60; i = i + 1)
          {
            if (*v110 != v61)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v63 = *(*(&v109 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v64 = [v63 cursorAtPoint:v108 withCursorPlatformObject:{v16, v18}];
              if (v64)
              {
                v53 = v64;
                v105 = v63;
                v82 = sub_1003035DC(v105, 1, v76, v77, v78, v79, v80, v81, &OBJC_PROTOCOL___CRLiOSCursorUpdatingSource);
                v83 = self->_lastCursorUpdatingSource;
                self->_lastCursorUpdatingSource = v82;

                interactionCopy = v103;
                regionCopy = v104;
                v37 = v102;
                v39 = CRLMetalContext;
                goto LABEL_31;
              }
            }
          }

          v60 = [reverseObjectEnumerator countByEnumeratingWithState:&v109 objects:v114 count:16];
          if (v60)
          {
            continue;
          }

          break;
        }
      }

      v65 = objc_loadWeakRetained(&self->_icc);
      v66 = [v65 hitRep:1 withPrecision:{v16, v18}];

      [v66 convertNaturalPointFromUnscaledCanvas:{v16, v18}];
      v53 = [v66 cursorAtPoint:0 forKnob:v108 withCursorPlatformObject:?];
      if (!v53)
      {
        v105 = 0;
        v106 = v66;
        interactionCopy = v103;
        regionCopy = v104;
        v37 = v102;
        v39 = CRLMetalContext;
        goto LABEL_32;
      }

      v39 = CRLMetalContext;
      v67 = +[CRLCursor defaultCursor];

      interactionCopy = v103;
      regionCopy = v104;
      v37 = v102;
      if (v53 == v67)
      {
        v105 = 0;
        v106 = v66;
        goto LABEL_32;
      }

      v68 = v66;
      v75 = sub_1003035DC(v68, 1, v69, v70, v71, v72, v73, v74, &OBJC_PROTOCOL___CRLiOSCursorUpdatingSource);
      reverseObjectEnumerator = self->_lastCursorUpdatingSource;
      self->_lastCursorUpdatingSource = v75;
      v105 = v68;
      v106 = v68;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (self->_lastCursor)
  {
    p_lastCursorUpdatingSource = &self->_lastCursorUpdatingSource;
    v19 = self->_lastCursorUpdatingSource;
    if (v19 && [(CRLiOSCursorUpdatingSource *)v19 wantsOpportunityToUpdateCursorDuringDrag])
    {
      v21 = interactionCopy;
      v22 = objc_opt_class();
      v23 = sub_100014370(v22, *p_lastCursorUpdatingSource);
      v30 = sub_1003035DC(*p_lastCursorUpdatingSource, 1, v24, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLEditor);
      v31 = v30;
      if (v23)
      {
        [v23 convertNaturalPointFromUnscaledCanvas:{v16, v18}];
        v32 = [v23 cursorAtPoint:0 forKnob:v108 withCursorPlatformObject:?];
      }

      else
      {
        if (!v30)
        {
          v107 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101330AC8();
          }

          v97 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101330ADC(&self->_lastCursorUpdatingSource, v107, v97);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101330B9C();
          }

          v98 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130EFC0(v98);
          }

          v99 = [NSString stringWithUTF8String:"[CRLiOSCanvasPointerInteractionDelegate pointerInteraction:regionForRequest:defaultRegion:]"];
          v100 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasPointerInteractionDelegate.m"];
          [CRLAssertionHandler handleFailureInFunction:v99 file:v100 lineNumber:126 isFatal:0 description:"Unexpected lastCursorUpdatingSource type! %@", *p_lastCursorUpdatingSource];

          goto LABEL_46;
        }

        v32 = [v30 cursorAtPoint:v108 withCursorPlatformObject:{v16, v18}];
      }

      v91 = self->_lastCursor;
      self->_lastCursor = v32;

LABEL_46:
      v92 = self->_lastCursor;
      if (v92)
      {
        v93 = regionCopy;
        v94 = self->_lastCursorUpdatingSource;
        identifierSuffix2 = [(CRLCursor *)v92 identifierSuffix];
        v101 = v94;
        regionCopy = v93;
        v96 = [NSString stringWithFormat:@"%p-%@", v101, identifierSuffix2];

        [(CRLCursor *)self->_lastCursor activeScaledRect];
        v34 = [UIPointerRegion regionWithRect:v96 identifier:?];
      }

      else
      {
        v34 = 0;
      }

      interactionCopy = v21;
      goto LABEL_39;
    }

    v34 = regionCopy;
    [(CRLCursor *)self->_lastCursor setConstrainedAxes:0];
  }

  else
  {
    v34 = 0;
  }

LABEL_39:

LABEL_40:

  return v34;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(CRLCursor *)self->_lastCursor effect:interaction];

  if (v5)
  {
    effect = [(CRLCursor *)self->_lastCursor effect];
    v7 = [UIPointerStyle styleWithEffect:effect shape:0];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  shape = [(CRLCursor *)self->_lastCursor shape];

  if (shape)
  {
    effect = [(CRLCursor *)self->_lastCursor shape];
    v7 = [UIPointerStyle styleWithShape:effect constrainedAxes:[(CRLCursor *)self->_lastCursor constrainedAxes]];
    goto LABEL_5;
  }

  v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101330BC4();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101330BD8(v11, v12);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101330C84();
  }

  v13 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v13);
  }

  v14 = [NSString stringWithUTF8String:"[CRLiOSCanvasPointerInteractionDelegate pointerInteraction:styleForRegion:]"];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasPointerInteractionDelegate.m"];
  [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:152 isFatal:0 description:"Invalid cursor without any data!"];

  v9 = 0;
LABEL_6:

  return v9;
}

@end