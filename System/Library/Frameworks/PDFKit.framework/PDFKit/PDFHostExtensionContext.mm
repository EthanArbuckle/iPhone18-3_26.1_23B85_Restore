@interface PDFHostExtensionContext
- (PDFHostViewController)hostViewController;
- (void)extensionSnapshotToHost:(id)host scale:(double)scale;
- (void)extensionToHost:(id)host;
@end

@implementation PDFHostExtensionContext

- (void)extensionToHost:(id)host
{
  hostCopy = host;
  v5 = [hostCopy objectForKey:@"function"];
  v6 = v5;
  if (v5 && [v5 length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PDFHostExtensionContext_extensionToHost___block_invoke;
    block[3] = &unk_1E8151480;
    block[4] = self;
    v8 = v6;
    v9 = hostCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __43__PDFHostExtensionContext_extensionToHost___block_invoke(id *a1)
{
  v187 = [a1[4] hostViewController];
  if ([a1[5] isEqualToString:@"setupDocumentViewSize"])
  {
    v2 = [a1[6] objectForKey:@"documentViewSize"];
    if ([v2 count] == 2)
    {
      v3 = [v2 objectAtIndex:0];
      [v3 floatValue];
      v5 = v4;
      v6 = [v2 objectAtIndex:1];
      v7 = [v6 floatValue];
      v9 = PDFSizeMake(v7, v5, v8);
      v11 = v10;

      [v187 setupDocumentViewSize:{v9, v11}];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"updateDocumentViewSize"])
  {
    [v187 updateDocumentViewSize];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"documentIsLocked"])
  {
    v12 = [a1[6] objectForKey:@"isLocked"];
    v13 = [v12 BOOLValue];

    [v187 documentIsLocked:v13];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"updateDocumentIsLocked"])
  {
    v14 = [a1[6] objectForKey:@"isLocked"];
    v15 = [v14 BOOLValue];

    [v187 updateDocumentIsLocked:v15];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"findStringUpdate"])
  {
    v16 = [a1[6] objectForKey:@"numFound"];
    v17 = [v16 integerValue];

    v18 = [a1[6] objectForKey:@"done"];
    v19 = [v18 BOOLValue];

    [v187 findStringUpdate:v17 done:v19];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"goToPage"])
  {
    v20 = [a1[6] objectForKey:@"pageIndex"];
    v21 = [v20 integerValue];

    v2 = [a1[6] objectForKey:@"pageFrame"];
    if ([v2 count] == 4)
    {
      v22 = [v2 objectAtIndex:0];
      [v22 floatValue];
      v24 = v23;

      v25 = [v2 objectAtIndex:1];
      [v25 floatValue];
      v27 = v26;

      v28 = [v2 objectAtIndex:2];
      [v28 floatValue];
      v30 = v29;

      v31 = [v2 objectAtIndex:3];
      [v31 floatValue];
      v33 = v32;

      v34.n128_f64[0] = v24;
      v35.n128_f64[0] = v27;
      [v187 goToPageIndex:v21 pageFrame:{PDFRectMake(v34, v35, v30, v33)}];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"goToDestination"])
  {
    v36 = [a1[6] objectForKey:@"pageIndex"];
    v37 = [v36 integerValue];

    v2 = [a1[6] objectForKey:@"point"];
    if ([v2 count] == 2)
    {
      v38 = [v2 objectAtIndex:0];
      [v38 floatValue];
      v40 = v39;

      v41 = [v2 objectAtIndex:1];
      [v41 floatValue];
      v43 = v42;

      [v187 goToDestination:v37 point:{PDFPointMake(v40, v43)}];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"zoomToRect"])
  {
    v2 = [a1[6] objectForKey:@"visibleRect"];
    if ([v2 count] == 4)
    {
      v44 = [v2 objectAtIndex:0];
      [v44 floatValue];
      v46 = v45;

      v47 = [v2 objectAtIndex:1];
      [v47 floatValue];
      v49 = v48;

      v50 = [v2 objectAtIndex:2];
      [v50 floatValue];
      v52 = v51;

      v53 = [v2 objectAtIndex:3];
      [v53 floatValue];
      v55 = v54;

      v56.n128_f64[0] = v46;
      v57.n128_f64[0] = v49;
      [v187 zoomToRect:{PDFRectMake(v56, v57, v52, v55)}];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"showSelectionRect"])
  {
    v2 = [a1[6] objectForKey:@"selectionRect"];
    if ([v2 count] == 4)
    {
      v58 = [v2 objectAtIndex:0];
      [v58 floatValue];
      v60 = v59;

      v61 = [v2 objectAtIndex:1];
      [v61 floatValue];
      v63 = v62;

      v64 = [v2 objectAtIndex:2];
      [v64 floatValue];
      v66 = v65;

      v67 = [v2 objectAtIndex:3];
      [v67 floatValue];
      v69 = v68;

      v70.n128_f64[0] = v60;
      v71.n128_f64[0] = v63;
      [v187 showSelectionRect:{PDFRectMake(v70, v71, v66, v69)}];
    }

    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"updateCurrentPageIndex"])
  {
    v72 = [a1[6] objectForKey:@"pageIndex"];
    v73 = [v72 integerValue];

    [v187 updateCurrentPageIndex:v73];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"updatePageCount"])
  {
    v74 = [a1[6] objectForKey:@"pageCount"];
    v75 = [v74 integerValue];

    [v187 updatePageCount:v75];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"setHasSelection"])
  {
    v76 = [a1[6] objectForKey:@"hasSelection"];
    v77 = [v76 BOOLValue];

    [v187 setHasSelection:v77];
    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"setTextSelectionPoints"])
  {
    v78 = *MEMORY[0x1E695EFF8];
    v79 = *(MEMORY[0x1E695EFF8] + 8);
    v80 = [a1[6] objectForKey:@"topLeftSelectionPoint"];
    v81 = v79;
    v82 = v78;
    if ([v80 count] == 2)
    {
      v83 = [v80 objectAtIndex:0];
      [v83 floatValue];
      v85 = v84;

      v86 = [v80 objectAtIndex:1];
      [v86 floatValue];
      v88 = v87;

      v82 = PDFPointMake(v85, v88);
      v81 = v89;
    }

    v90 = [a1[6] objectForKey:@"bottomRightSelectionPoint"];
    if ([v90 count] == 2)
    {
      v91 = [v90 objectAtIndex:0];
      [v91 floatValue];
      v93 = v92;

      v94 = [v90 objectAtIndex:1];
      [v94 floatValue];
      v96 = v95;

      v78 = PDFPointMake(v93, v96);
      v79 = v97;
    }

    [v187 setTextSelectionPoints:v82 right:{v81, v78, v79}];
    goto LABEL_40;
  }

  if ([a1[5] isEqualToString:@"showTextSelectionMenu"])
  {
    v98 = [a1[6] objectForKey:@"visible"];
    v99 = [v98 BOOLValue];

    v2 = [a1[6] objectForKey:@"selectionRect"];
    if ([v2 count] == 4)
    {
      v100 = [v2 objectAtIndex:0];
      [v100 floatValue];
      v102 = v101;

      v103 = [v2 objectAtIndex:1];
      [v103 floatValue];
      v105 = v104;

      v106 = [v2 objectAtIndex:2];
      [v106 floatValue];
      v108 = v107;

      v109 = [v2 objectAtIndex:3];
      [v109 floatValue];
      v111 = v110;

      v112.n128_f64[0] = v102;
      v113.n128_f64[0] = v105;
      v114 = PDFRectMake(v112, v113, v108, v111);
    }

    else
    {
      v114 = *MEMORY[0x1E695F058];
      v115 = *(MEMORY[0x1E695F058] + 8);
      v116 = *(MEMORY[0x1E695F058] + 16);
      v117 = *(MEMORY[0x1E695F058] + 24);
    }

    [v187 showTextSelectionMenu:v99 selectionRect:{v114, v115, v116, v117}];
    goto LABEL_4;
  }

  if ([a1[5] isEqualToString:@"didCopy"])
  {
    v2 = [a1[6] objectForKey:@"items"];
    [v187 didCopy:v2];
LABEL_4:

    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"goToURL"])
  {
    v80 = [a1[6] objectForKey:@"location"];
    if ([v80 count] != 2)
    {
      goto LABEL_41;
    }

    v118 = [v80 objectAtIndex:0];
    [v118 floatValue];
    v120 = v119;

    v121 = [v80 objectAtIndex:1];
    [v121 floatValue];
    v123 = v122;

    v124 = PDFPointMake(v120, v123);
    v126 = v125;
    v90 = [a1[6] objectForKey:@"urlString"];
    v127 = [MEMORY[0x1E695DFF8] URLWithString:v90];
    [v187 goToURL:v127 atLocation:{v124, v126}];
    goto LABEL_64;
  }

  if ([a1[5] isEqualToString:@"didLongPressLink"])
  {
    v80 = [a1[6] objectForKey:@"location"];
    v128 = [a1[6] objectForKey:@"annotationRect"];
    if ([v80 count] == 2 && objc_msgSend(v128, "count") == 4)
    {
      v129 = [v80 objectAtIndex:0];
      [v129 floatValue];
      v131 = v130;

      v132 = [v80 objectAtIndex:1];
      [v132 floatValue];
      v134 = v133;

      v135 = PDFPointMake(v131, v134);
      v137 = v136;
      v138 = [v128 objectAtIndex:0];
      [v138 floatValue];
      v140 = v139;

      v141 = [v128 objectAtIndex:1];
      [v141 floatValue];
      v143 = v142;

      v144 = [v128 objectAtIndex:2];
      [v144 floatValue];
      v146 = v145;

      v147 = [v128 objectAtIndex:3];
      [v147 floatValue];
      v149 = v148;

      v150.n128_f64[0] = v140;
      v151.n128_f64[0] = v143;
      v152 = PDFRectMake(v150, v151, v146, v149);
      v154 = v153;
      v156 = v155;
      v158 = v157;
      v159 = [a1[6] objectForKey:@"urlString"];

      v160 = a1[6];
      if (v159)
      {
        v161 = [v160 objectForKey:@"urlString"];
        v162 = [MEMORY[0x1E695DFF8] URLWithString:v161];
        [v187 didLongPressURL:v162 atLocation:v135 withAnnotationRect:{v137, v152, v154, v156, v158}];
      }

      else
      {
        v184 = [v160 objectForKey:@"pageIndex"];

        if (v184)
        {
          v185 = [a1[6] objectForKey:@"pageIndex"];
          v186 = [v185 integerValue];

          [v187 didLongPressPageIndex:v186 atLocation:v135 withAnnotationRect:{v137, v152, v154, v156, v158}];
        }
      }
    }

    goto LABEL_41;
  }

  if ([a1[5] isEqualToString:@"pointerRegionForLocation"])
  {
    v80 = [a1[6] objectForKey:@"regionRect"];
    if ([v80 count] == 4)
    {
      v163 = [v80 objectAtIndex:0];
      [v163 floatValue];
      v165 = v164;

      v166 = [v80 objectAtIndex:1];
      [v166 floatValue];
      v168 = v167;

      v169 = [v80 objectAtIndex:2];
      [v169 floatValue];
      v171 = v170;

      v172 = [v80 objectAtIndex:3];
      [v172 floatValue];
      v174 = v173;

      v175.n128_f64[0] = v165;
      v176.n128_f64[0] = v168;
      v177 = PDFRectMake(v175, v176, v171, v174);
      v179 = v178;
      v181 = v180;
      v183 = v182;
    }

    else
    {
      v177 = *MEMORY[0x1E695F058];
      v179 = *(MEMORY[0x1E695F058] + 8);
      v181 = *(MEMORY[0x1E695F058] + 16);
      v183 = *(MEMORY[0x1E695F058] + 24);
    }

    v90 = [a1[6] objectForKey:@"regionIdentifier"];
    v127 = [[PDFPointerRegion alloc] initWithRect:v90 identifier:v177, v179, v181, v183];
    [v187 completePointerInteractionRegionForRequest:v127];
LABEL_64:

LABEL_40:
LABEL_41:

    goto LABEL_13;
  }

  if ([a1[5] isEqualToString:@"killExtensionProcess"])
  {
    [v187 killExtensionProcess];
  }

  else
  {
    NSLog(&cfstr_UnsuportedExte.isa, a1[5]);
  }

LABEL_13:
}

- (void)extensionSnapshotToHost:(id)host scale:(double)scale
{
  hostCopy = host;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PDFHostExtensionContext_extensionSnapshotToHost_scale___block_invoke;
  block[3] = &unk_1E8152188;
  scaleCopy = scale;
  v9 = hostCopy;
  selfCopy = self;
  v7 = hostCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PDFHostExtensionContext_extensionSnapshotToHost_scale___block_invoke(uint64_t a1)
{
  v2 = CGImageCreateFromIOSurface();
  if (v2)
  {
    v3 = v2;
    v5 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v2 scale:0 orientation:*(a1 + 48)];
    CGImageRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  v4 = [*(a1 + 40) hostViewController];
  [v4 recievedSnapshotViewRect:v5];
}

- (PDFHostViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end