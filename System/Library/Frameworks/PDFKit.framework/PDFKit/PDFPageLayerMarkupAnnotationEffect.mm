@interface PDFPageLayerMarkupAnnotationEffect
- (id)UUID;
- (id)annotation;
- (void)_updateNoteLayer;
- (void)removeFromSuperlayer;
- (void)update;
@end

@implementation PDFPageLayerMarkupAnnotationEffect

- (id)annotation
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);

  return WeakRetained;
}

- (id)UUID
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);
  pdfAnnotationUUID = [WeakRetained pdfAnnotationUUID];

  return pdfAnnotationUUID;
}

- (void)update
{
  v65 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = self;
    [WeakRetained bounds];
    v6 = v5;
    v8 = v7;
    quadrilateralPoints = [v4 quadrilateralPoints];
    markupType = [v4 markupType];
    v11 = [quadrilateralPoints count];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v11 >= 4)
    {
      v13 = 0;
      v55 = *(MEMORY[0x1E695F058] + 8);
      v56 = *MEMORY[0x1E695F058];
      v53 = *(MEMORY[0x1E695F058] + 24);
      v54 = *(MEMORY[0x1E695F058] + 16);
      v14 = (v11 >> 2) & 0x1FFFFFFF;
      v15 = MEMORY[0x1E695EFD0];
      do
      {
        v16 = [quadrilateralPoints objectAtIndex:4 * v13];
        [v16 PDFKitPDFPointValue];
        v58.f64[0] = v17;
        v58.f64[1] = v18;

        v19 = [quadrilateralPoints objectAtIndex:(4 * v13) | 1];
        [v19 PDFKitPDFPointValue];
        v59 = v20;
        v60 = v21;

        v22 = [quadrilateralPoints objectAtIndex:(4 * v13) | 2];
        [v22 PDFKitPDFPointValue];
        v61 = v23;
        v62 = v24;

        v25 = [quadrilateralPoints objectAtIndex:(4 * v13) | 3];
        [v25 PDFKitPDFPointValue];
        v63 = v26;
        v64 = v27;

        v28 = 0;
        while (1)
        {
          v29 = v58.f64[v28];
          v30 = v58.f64[v28 + 1];
          v31 = fabs(v30) != INFINITY;
          if (fabs(v29) == INFINITY || !v31)
          {
            break;
          }

          v58.f64[v28] = v6 + v29;
          v58.f64[v28 + 1] = v8 + v30;
          v28 += 2;
          if (v28 == 8)
          {
            v33 = v58;
            v34 = 16;
            v35 = v58;
            do
            {
              v36 = *(&v58 + v34);
              v35 = vbslq_s8(vcgtq_f64(v36, v35), v36, v35);
              v33 = vbslq_s8(vcgtq_f64(v36, v33), v33, v36);
              v34 += 16;
            }

            while (v34 != 64);
            if (markupType)
            {
              if (markupType == 1)
              {
                height = fmax((v35.f64[1] - v33.f64[1]) * 0.08, 1.0);
                y = height * -0.5 + (v35.f64[1] + v33.f64[1]) * 0.5;
LABEL_17:
                width = v35.f64[0] - v33.f64[0];
                x = v33.f64[0];
              }

              else
              {
                height = v53;
                width = v54;
                y = v55;
                x = v56;
                if (markupType == 2)
                {
                  y = v33.f64[1];
                  height = fmax((v35.f64[1] - v33.f64[1]) * 0.08, 1.0);
                  goto LABEL_17;
                }
              }
            }

            else
            {
              v41 = v35.f64[0] - v33.f64[0];
              v42 = v33.f64[1];
              v43 = v35.f64[1] - v33.f64[1];
              v66 = CGRectInset(*v33.f64, -0.8, -0.8);
              x = v66.origin.x;
              y = v66.origin.y;
              width = v66.size.width;
              height = v66.size.height;
            }

            v44 = objc_alloc_init(SelectionRectInfo);
            v44->rect.origin.x = x;
            v44->rect.origin.y = y;
            v44->rect.size.width = width;
            v44->rect.size.height = height;
            v45 = v15[1];
            *&v44->transform.a = *v15;
            *&v44->transform.c = v45;
            *&v44->transform.tx = v15[2];
            [v12 addObject:v44];

            break;
          }
        }

        ++v13;
      }

      while (v13 != v14);
    }

    if (!selfCopy->super._private->markupEffectLayers)
    {
      v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v47 = selfCopy->super._private;
      markupEffectLayers = v47->markupEffectLayers;
      v47->markupEffectLayers = v46;
    }

    color = [v4 color];
    cGColor = [color CGColor];

    v51 = selfCopy->super._private->markupEffectLayers;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __44__PDFPageLayerMarkupAnnotationEffect_update__block_invoke;
    v57[3] = &unk_1E8151C08;
    v57[4] = selfCopy;
    v57[5] = cGColor;
    UpdateRectTransformDictionary(v51, v12, cGColor, v57, &__block_literal_global_14);
    [(PDFPageLayerMarkupAnnotationEffect *)selfCopy _updateNoteLayer];
  }
}

id __44__PDFPageLayerMarkupAnnotationEffect_update__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6979398];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];

  [v5 setFrame:{v6, v7, v8, v9}];
  [v5 setBackgroundColor:*(a1 + 40)];
  [v5 setNeedsDisplay];
  [*(a1 + 32) addSublayer:v5];

  return v5;
}

- (void)_updateNoteLayer
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->pageLayer);
  v3 = objc_loadWeakRetained(&self->super._private->annotation);
  contents = [v3 contents];
  noteLayer = self->super._private->noteLayer;
  if (contents)
  {
    if (noteLayer)
    {
      uUID = [(PDFPageLayerEffect *)noteLayer UUID];
      [WeakRetained updatePageLayerEffectForID:uUID];
    }

    else
    {
      v9 = [PDFPageLayerEffect createPDFNoteLayerEffectForAnnotation:v3 withLayer:WeakRetained];
      v10 = self->super._private;
      uUID = v10->noteLayer;
      v10->noteLayer = v9;
    }
  }

  else
  {
    uUID2 = [(PDFPageLayerEffect *)noteLayer UUID];
    [WeakRetained removePageLayerEffectForID:uUID2];

    v8 = self->super._private;
    uUID = v8->noteLayer;
    v8->noteLayer = 0;
  }
}

- (void)removeFromSuperlayer
{
  v5.receiver = self;
  v5.super_class = PDFPageLayerMarkupAnnotationEffect;
  [(PDFPageLayerMarkupAnnotationEffect *)&v5 removeFromSuperlayer];
  WeakRetained = objc_loadWeakRetained(&self->super._private->pageLayer);
  uUID = [(PDFPageLayerEffect *)self->super._private->noteLayer UUID];
  [WeakRetained removePageLayerEffectForID:uUID];
}

@end