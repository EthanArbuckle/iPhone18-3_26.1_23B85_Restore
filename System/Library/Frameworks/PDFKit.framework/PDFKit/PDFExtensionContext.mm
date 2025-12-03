@interface PDFExtensionContext
+ (void)initialize;
- (PDFExtensionViewController)extensionViewController;
- (void)hostToExtension:(id)extension;
@end

@implementation PDFExtensionContext

+ (void)initialize
{
  _CFPrefsSetDirectModeEnabled();

  MEMORY[0x1EEDB8498](1);
}

- (void)hostToExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [extensionCopy objectForKey:@"function"];
  v6 = v5;
  if (v5 && [v5 length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PDFExtensionContext_hostToExtension___block_invoke;
    block[3] = &unk_1E8151480;
    block[4] = self;
    v8 = v6;
    v9 = extensionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __39__PDFExtensionContext_hostToExtension___block_invoke(id *a1)
{
  v125 = [a1[4] extensionViewController];
  if ([a1[5] isEqualToString:@"setDocumentData"])
  {
    v2 = [a1[6] objectForKey:@"data"];
    [v125 setDocumentData:v2];
LABEL_3:

    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"findString"])
  {
    v3 = [a1[6] objectForKey:@"string"];
    v4 = [a1[6] objectForKey:@"options"];
    [v125 findString:v3 withOptions:{objc_msgSend(v4, "unsignedIntegerValue")}];

LABEL_6:
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"cancelFindString"])
  {
    [v125 cancelFindString];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"cancelFindStringWithHighlightsCleared"])
  {
    v5 = [a1[6] objectForKey:@"clearHighlights"];
    v6 = [v5 BOOLValue];

    [v125 cancelFindStringWithHighlightsCleared:v6];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"focusOnSearchResultAtIndex"])
  {
    v7 = [a1[6] objectForKey:@"searchIndex"];
    v8 = [v7 integerValue];

    [v125 focusOnSearchResultAtIndex:v8];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"clearSearchHighlights"])
  {
    [v125 clearSearchHighlights];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"goToPageIndex"])
  {
    v9 = [a1[6] objectForKey:@"pageIndex"];
    v10 = [v9 integerValue];

    [v125 goToPageIndex:v10];
    goto LABEL_17;
  }

  if ([a1[5] isEqualToString:@"updatePDFViewLayout"])
  {
    v3 = [a1[6] objectForKey:@"boundsInDocument"];
    v11 = [a1[6] objectForKey:@"scrollViewFrame"];
    v12 = [a1[6] objectForKey:@"safeAreaInsets"];
    if ([v3 count] == 4 && objc_msgSend(v11, "count") == 4 && objc_msgSend(v12, "count") == 4)
    {
      v13 = [v3 objectAtIndex:0];
      [v13 floatValue];
      v15 = v14;

      v16 = [v3 objectAtIndex:1];
      [v16 floatValue];
      v18 = v17;

      v19 = [v3 objectAtIndex:2];
      [v19 floatValue];
      v21 = v20;

      v22 = [v3 objectAtIndex:3];
      [v22 floatValue];
      v24 = v23;

      v25.n128_f64[0] = v15;
      v26.n128_f64[0] = v18;
      v27 = PDFRectMake(v25, v26, v21, v24);
      v123 = v28;
      v124 = v27;
      v121 = v30;
      v122 = v29;
      v31 = [v11 objectAtIndex:0];
      [v31 floatValue];
      v33 = v32;

      v34 = [v11 objectAtIndex:1];
      [v34 floatValue];
      v36 = v35;

      v37 = [v11 objectAtIndex:2];
      [v37 floatValue];
      v39 = v38;

      v40 = [v11 objectAtIndex:3];
      [v40 floatValue];
      v42 = v41;

      v43.n128_f64[0] = v33;
      v44.n128_f64[0] = v36;
      v120 = PDFRectMake(v43, v44, v39, v42);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = [v12 objectAtIndex:0];
      [v51 floatValue];
      v53 = v52;

      v54 = [v12 objectAtIndex:1];
      [v54 floatValue];
      v56 = v55;

      v57 = [v12 objectAtIndex:2];
      [v57 floatValue];
      v59 = v58;

      v60 = [v12 objectAtIndex:3];
      [v60 floatValue];
      v62 = v61;

      v63 = [a1[6] objectForKey:@"zoomScale"];
      [v63 floatValue];
      v65 = v64;

      [v125 updatePDFViewLayout:v124 scrollViewFrame:v123 safeAreaInsets:v122 zoomScale:{v121, v120, v46, v48, v50, *&v53, *&v56, *&v59, *&v62, *&v65}];
    }

    goto LABEL_26;
  }

  if ([a1[5] isEqualToString:@"setMinimumZoomScale"])
  {
    v66 = [a1[6] objectForKey:@"minimumZoomScale"];
    [v66 floatValue];
    v68 = v67;

    [v125 setMinimumZoomScale:v68];
  }

  else if ([a1[5] isEqualToString:@"setMaximumZoomScale"])
  {
    v69 = [a1[6] objectForKey:@"maximumZoomScale"];
    [v69 floatValue];
    v71 = v70;

    [v125 setMaximumZoomScale:v71];
  }

  else if ([a1[5] isEqualToString:@"handleGesture"])
  {
    v72 = [a1[6] objectForKey:@"gestureType"];
    v73 = [v72 integerValue];

    v74 = [a1[6] objectForKey:@"state"];
    v75 = [v74 integerValue];

    v76 = *MEMORY[0x1E695EFF8];
    v77 = *(MEMORY[0x1E695EFF8] + 8);
    v78 = [a1[6] objectForKey:@"location"];
    v79 = v77;
    v80 = v76;
    if ([v78 count] == 2)
    {
      v81 = [v78 objectAtIndex:0];
      [v81 floatValue];
      v83 = v82;

      v84 = [v78 objectAtIndex:1];
      [v84 floatValue];
      v86 = v85;

      v80 = PDFPointMake(v83, v86);
      v79 = v87;
    }

    v88 = [a1[6] objectForKey:@"locationOfFirstTouch"];
    if ([v88 count] == 2)
    {
      v89 = [v88 objectAtIndex:0];
      [v89 floatValue];
      v91 = v90;

      v92 = [v88 objectAtIndex:1];
      [v92 floatValue];
      v94 = v93;

      v76 = PDFPointMake(v91, v94);
      v77 = v95;
    }

    v96 = [a1[6] objectForKey:@"isIndirectTouch"];
    v97 = [v96 BOOLValue];

    [v125 handleGesture:v73 state:v75 location:v97 locationOfFirstTouch:v80 isIndirectTouch:{v79, v76, v77}];
  }

  else
  {
    if ([a1[5] isEqualToString:@"snapshotViewRect"])
    {
      v3 = [a1[6] objectForKey:@"rect"];
      v98 = [v3 objectAtIndex:0];
      [v98 floatValue];
      v100 = v99;
      v101 = [v3 objectAtIndex:1];
      [v101 floatValue];
      v103 = v102;
      v104 = [v3 objectAtIndex:2];
      [v104 floatValue];
      v106 = v105;
      v107 = [v3 objectAtIndex:3];
      [v107 floatValue];
      v109 = v108;

      v11 = [a1[6] objectForKey:@"width"];
      v110 = [a1[6] objectForKey:@"afterScreenUpdates"];
      [v11 floatValue];
      [v125 snapshotViewRect:objc_msgSend(v110 forWidth:"BOOLValue") afterScreenUpdates:{v100, v103, v106, v109, v111}];

LABEL_26:
      goto LABEL_6;
    }

    if ([a1[5] isEqualToString:@"copy"])
    {
      [v125 copy];
    }

    else if ([a1[5] isEqualToString:@"selectAll"])
    {
      [v125 selectAll];
    }

    else
    {
      if ([a1[5] isEqualToString:@"unlockWithPassword"])
      {
        v2 = [a1[6] objectForKey:@"password"];
        [v125 unlockWithPassword:v2];
        goto LABEL_3;
      }

      if ([a1[5] isEqualToString:@"teardown"])
      {
        [a1[4] completeRequestReturningItems:0 completionHandler:0];
      }

      else
      {
        if ([a1[5] isEqualToString:@"pointerRegionForLocation"])
        {
          v2 = [a1[6] objectForKey:@"location"];
          if ([v2 count] == 2)
          {
            v112 = [v2 objectAtIndex:0];
            [v112 floatValue];
            v114 = v113;

            v115 = [v2 objectAtIndex:1];
            [v115 floatValue];
            v117 = v116;

            v118 = PDFPointMake(v114, v117);
          }

          else
          {
            v118 = *MEMORY[0x1E695EFF8];
            v119 = *(MEMORY[0x1E695EFF8] + 8);
          }

          [v125 pointerRegionForLocation:{v118, v119}];
          goto LABEL_3;
        }

        if ([a1[5] isEqualToString:@"setUseIOSurfaceForTiles"])
        {
          v2 = [a1[6] objectForKey:@"value"];
          +[PDFView setUseIOSurfaceForTiles:](PDFView, "setUseIOSurfaceForTiles:", [v2 BOOLValue]);
          goto LABEL_3;
        }

        NSLog(&cfstr_UnsuportedHost.isa, a1[5]);
      }
    }
  }

LABEL_17:
}

- (PDFExtensionViewController)extensionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionViewController);

  return WeakRetained;
}

@end