@interface PKTextInputSingleElementFinder
- (void)_finishSingleElementSearchIfReadyAtPosition:(CGPoint)a3 coordinateSpace:(id)a4 candidates:(id)a5 completion:(id)a6;
- (void)findSingleElementAtPosition:(CGPoint)a3 coordinateSpace:(id)a4 completion:(id)a5;
- (void)findSingleElementCloseToPosition:(CGPoint)a3 coordinateSpace:(id)a4 completion:(id)a5;
@end

@implementation PKTextInputSingleElementFinder

- (void)findSingleElementCloseToPosition:(CGPoint)a3 coordinateSpace:(id)a4 completion:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PKTextInputSingleElementFinder_findSingleElementCloseToPosition_coordinateSpace_completion___block_invoke;
  v18[3] = &unk_1E82D7BB0;
  v21 = x;
  v22 = y;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  v15 = v10;
  v16 = v9;
  [(PKTextInputElementsFinder *)self _findAvailableTextInputElementsWithReusableElements:v16 referenceHitPoint:1u referenceSearchArea:v18 referenceCoordSpace:x nearPointOnly:y completion:v11, v12, v13, v14];
  if (self)
  {
    foundElements = self->super.__foundElements;
  }

  else
  {
    foundElements = 0;
  }

  [(PKTextInputSingleElementFinder *)self _finishSingleElementSearchIfReadyAtPosition:v16 coordinateSpace:foundElements candidates:v15 completion:x, y];
}

_BYTE *__94__PKTextInputSingleElementFinder_findSingleElementCloseToPosition_coordinateSpace_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[64] & 1) == 0)
  {
    return [result _finishSingleElementSearchIfReadyAtPosition:*(a1 + 40) coordinateSpace:a2 candidates:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64)}];
  }

  return result;
}

- (void)findSingleElementAtPosition:(CGPoint)a3 coordinateSpace:(id)a4 completion:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PKTextInputSingleElementFinder_findSingleElementAtPosition_coordinateSpace_completion___block_invoke;
  v13[3] = &unk_1E82D7BD8;
  v16 = x;
  v17 = y;
  v13[4] = self;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [(PKTextInputSingleElementFinder *)self findSingleElementCloseToPosition:v12 coordinateSpace:v13 completion:x, y];
}

void __89__PKTextInputSingleElementFinder_findSingleElementAtPosition_coordinateSpace_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foundElement];
  v3 = v2;
  v19 = v2;
  if (v2)
  {
    v4 = [(PKTextInputElement *)v2 referenceView];
    v5 = [v4 window];

    if (v5)
    {
      v6 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(*(a1 + 40), v5, *(a1 + 56), *(a1 + 64), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
      v8 = v7;
      if ([(PKTextInputElement *)v19 containsPoint:v5 inCoordinateSpace:v6, v7])
      {
        v9 = [v5 hitTest:0 withEvent:{v6, v8}];
        if (!v9)
        {
LABEL_11:

          v3 = v19;
          goto LABEL_12;
        }

        v10 = v9;
        v11 = [(PKTextInputElement *)v19 referenceView];
        v12 = v11;
        if (v10 == v11)
        {

          goto LABEL_10;
        }

        v13 = [(PKTextInputElement *)v19 referenceView];
        if ([v10 isDescendantOfView:v13] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v18 = [PKTextInputElementsFinder shouldAvoidElementWithHitView:v10];

          if (!v18)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }
      }
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 72);
    *(v14 + 72) = 0;

    v16 = *(a1 + 32);
    v10 = *(v16 + 80);
    *(v16 + 80) = 0;
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
    v3 = v19;
  }
}

- (void)_finishSingleElementSearchIfReadyAtPosition:(CGPoint)a3 coordinateSpace:(id)a4 candidates:(id)a5 completion:(id)a6
{
  y = a3.y;
  x = a3.x;
  v58 = *MEMORY[0x1E69E9840];
  v11 = a4;
  obj = a5;
  v12 = a5;
  v50 = a6;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v54;
    v51 = *(MEMORY[0x1E695F060] + 8);
    v52 = *MEMORY[0x1E695F060];
    v17 = 1.79769313e308;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        v20 = [(PKTextInputElement *)v19 coordinateSpace];
        if (v20)
        {
          v21 = [(PKTextInputElement *)v19 frame];
          v25 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v20, v11, v21, v22, v23, v24);
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v60.origin.x = [(PKTextInputElement *)v19 hitToleranceFrameFromElementFrame:v25, v26, v28, v30];
          v59.x = x;
          v59.y = y;
          if (CGRectContainsPoint(v60, v59))
          {
            if (x >= v25)
            {
              v32 = v25 + v29;
              v33 = x <= v25 + v29;
              v25 = x;
              if (!v33)
              {
                v25 = v32;
              }
            }

            if (y >= v27)
            {
              v34 = v27 + v31;
              v33 = y <= v27 + v31;
              v27 = y;
              if (!v33)
              {
                v27 = v34;
              }
            }

            v35 = (y - v27) * (y - v27) + (x - v25) * (x - v25);
            if (v15)
            {
              v36 = vabdd_f64(v35, v17);
              v37 = v36 < 0.00999999978;
              if (v35 >= v17 && v36 >= 0.00999999978)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v37 = 0;
            }

            v38 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v11, v20, x, y, v52, v51);
            v40 = [(PKTextInputElement *)v19 shouldBeginAtLocation:v38, v39];
            if (!v15 || !v40 || !v37)
            {
              if (!v40)
              {
                goto LABEL_26;
              }

LABEL_25:
              v41 = v19;

              v15 = v41;
              v17 = v35;
              goto LABEL_26;
            }

            if (([(PKTextInputElement *)v19 isInFrontOfElement:v15]& 1) != 0)
            {
              goto LABEL_25;
            }
          }
        }

LABEL_26:
      }

      v14 = [v12 countByEnumeratingWithState:&v53 objects:v57 count:{16, obj}];
      if (!v14)
      {
        if (self)
        {
          goto LABEL_29;
        }

LABEL_40:
        pendingElementContainerReplies = 0;
        goto LABEL_30;
      }
    }
  }

  v15 = 0;
  if (!self)
  {
    goto LABEL_40;
  }

LABEL_29:
  pendingElementContainerReplies = self->super.__pendingElementContainerReplies;
LABEL_30:
  v43 = [(NSMutableSet *)pendingElementContainerReplies count];
  v44 = [(PKTextInputElement *)v15 referenceView];
  v45 = [v44 window];

  if (!v43 && v15 && v45)
  {
    v46 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v11, v45, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    if ([(PKTextInputElementsFinder *)v46 _anyOtherWindowAboveWindow:v47 position:PKTextInputElementsFinder, v45])
    {

      v15 = 0;
    }
  }

  else if (v43)
  {
    goto LABEL_38;
  }

  objc_storeStrong(&self->_candidateElements, obja);
  objc_storeStrong(&self->_foundElement, v15);
  self->_finished = 1;
  if (v50)
  {
    v50[2](v50);
  }

LABEL_38:
}

@end