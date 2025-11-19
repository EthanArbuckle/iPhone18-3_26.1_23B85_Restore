@interface PKMathContextMenuController
+ (PKMathContextMenuController)controllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 view:(uint64_t)a5 delegate:(void *)a6;
+ (id)insertGraphControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 alsoShowAddToExisiting:(uint64_t)a5 view:(void *)a6 delegate:(char)a7;
+ (id)mathCopyControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 view:(uint64_t)a5 delegate:(void *)a6;
+ (id)mathResultControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 view:(uint64_t)a5 delegate:(void *)a6;
+ (id)mathSolvingControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 supportCopy:(uint64_t)a5 view:(void *)a6 delegate:(char)a7;
+ (void)mathErrorControllerForItem:(CGFloat)a3 token:(CGFloat)a4 tapBounds:(uint64_t)a5 errorString:(void *)a6 errorReasonString:(void *)a7 view:(void *)a8 delegate:(void *)a9;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)drawing;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation PKMathContextMenuController

+ (PKMathContextMenuController)controllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 view:(uint64_t)a5 delegate:(void *)a6
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  objc_opt_self();
  v18 = objc_alloc_init(PKMathContextMenuController);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_mathItem, a6);
    v19->_tapBounds.origin.x = a1;
    v19->_tapBounds.origin.y = a2;
    v19->_tapBounds.size.width = a3;
    v19->_tapBounds.size.height = a4;
    objc_storeWeak(&v19->_view, v16);
    objc_storeWeak(&v19->_delegate, v17);
  }

  v20 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v19];
  if (v19)
  {
    objc_storeStrong(&v19->_interaction, v20);
  }

  if ([(PKMathRecognitionItem *)v15 hasAnyTrignometry])
  {
    v21 = _PencilKitBundle();
    v23 = [v21 localizedStringForKey:@"Math Notes uses radians if no units are specified. Use ‘°’ value:‘deg’ or ‘degrees’ to specify degrees table:{for example: sin(45°) or sin(45 deg)", @"Math Notes uses radians if no units are specified. Use ‘°’, ‘deg’ or ‘degrees’ to specify degrees, for example: sin(45°) or sin(45 deg)", @"Localizable"}];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v22, v23, 64);
    }
  }

  if (v19)
  {
    interaction = v19->_interaction;
  }

  else
  {
    interaction = 0;
  }

  [v16 addInteraction:interaction];

  return v19;
}

+ (id)mathResultControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 view:(uint64_t)a5 delegate:(void *)a6
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = objc_opt_self();
  v18 = [(PKMathContextMenuController *)a1 controllerForItem:a2 tapBounds:a3 view:a4 delegate:v17, v16, v15, v14];

  if (v18)
  {
    *(v18 + 56) = 0;
    *(v18 + 8) = 1;
  }

  return v18;
}

+ (id)mathSolvingControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 supportCopy:(uint64_t)a5 view:(void *)a6 delegate:(char)a7
{
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = objc_opt_self();
  v20 = [(PKMathContextMenuController *)a1 controllerForItem:a2 tapBounds:a3 view:a4 delegate:v19, v18, v17, v16];

  if (v20)
  {
    *(v20 + 56) = 1;
    *(v20 + 8) = a7;
  }

  return v20;
}

+ (id)mathCopyControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 view:(uint64_t)a5 delegate:(void *)a6
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = objc_opt_self();
  v18 = [(PKMathContextMenuController *)a1 controllerForItem:a2 tapBounds:a3 view:a4 delegate:v17, v16, v15, v14];

  if (v18)
  {
    *(v18 + 56) = 2;
    *(v18 + 8) = 1;
  }

  return v18;
}

+ (void)mathErrorControllerForItem:(CGFloat)a3 token:(CGFloat)a4 tapBounds:(uint64_t)a5 errorString:(void *)a6 errorReasonString:(void *)a7 view:(void *)a8 delegate:(void *)a9
{
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  v24 = a10;
  v25 = a6;
  v26 = objc_opt_self();
  v27 = [(PKMathContextMenuController *)a1 controllerForItem:a2 tapBounds:a3 view:a4 delegate:v26, v25, v24, v23];

  if (v27)
  {
    v27[7] = 3;
    objc_setProperty_nonatomic_copy(v27, v28, v21, 72);
    objc_setProperty_nonatomic_copy(v27, v29, v22, 80);
  }

  [(PKMathResultAttribution *)v27 setDate:v20];

  return v27;
}

+ (id)insertGraphControllerForItem:(CGFloat)a3 tapBounds:(CGFloat)a4 alsoShowAddToExisiting:(uint64_t)a5 view:(void *)a6 delegate:(char)a7
{
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = objc_opt_self();
  v20 = [(PKMathContextMenuController *)a1 controllerForItem:a2 tapBounds:a3 view:a4 delegate:v19, v18, v17, v16];

  if (v20)
  {
    *(v20 + 56) = 4;
    *(v20 + 9) = a7;
  }

  return v20;
}

- (id)drawing
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v1 = [WeakRetained contextMenuControllerDrawing:v1];
  }

  return v1;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  if (self && (v6 = self->_mathItem) != 0)
  {
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [(PKMathRecognitionItem *)v7 uuid];
    v10 = [WeakRetained contextMenuController:self resultForItemUUID:v9];

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [(PKMathRecognitionItem *)v7 uuid];
    v13 = [v11 contextMenuController:self resultDrawingForItemUUID:v12];

    v14 = MEMORY[0x1E6997BF8];
    v15 = [(PKMathRecognitionItem *)v7 expression];
    v16 = [v14 textTranscriptionForLatex:v15];

    v17 = [(PKMathRecognitionItem *)v7 strokes];
    v18 = self->_mathToken;
    objc_initWeak(&location, self);
    v19 = MEMORY[0x1E69DC8D8];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v28[3] = &unk_1E82D7F88;
    objc_copyWeak(&v36, &location);
    v20 = v17;
    v29 = v20;
    v21 = v16;
    v30 = v21;
    v31 = self;
    v22 = v13;
    v32 = v22;
    v23 = v10;
    v33 = v23;
    v24 = v7;
    v34 = v24;
    v25 = v18;
    v35 = v25;
    v26 = [v19 configurationWithIdentifier:0 previewProvider:0 actionProvider:v28];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v154[1] = *MEMORY[0x1E69E9840];
  v96 = a2;
  v101 = [MEMORY[0x1E695DF70] array];
  v100 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
  v2 = _PencilKitBundle();
  v97 = [v2 localizedStringForKey:@"Copy" value:@"Copy" table:@"Localizable"];

  v3 = _PencilKitBundle();
  v99 = [v3 localizedStringForKey:@"Copy Expression" value:@"Copy Expression" table:@"Localizable"];

  v4 = MEMORY[0x1E69DC628];
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v143[3] = &unk_1E82D7F38;
  objc_copyWeak(&v146, (a1 + 88));
  v144 = *(a1 + 32);
  v145 = *(a1 + 40);
  v5 = [v4 actionWithTitle:v99 image:v100 identifier:0 handler:v143];
  v6 = v5;
  v7 = *(a1 + 48);
  if (!v7)
  {
LABEL_13:
    v95 = v5;
    v11 = _PencilKitBundle();
    v98 = [v11 localizedStringForKey:@"Remove Result" value:@"Remove Result" table:@"Localizable"];

    v12 = _PencilKitBundle();
    v104 = [v12 localizedStringForKey:@"Copy Result" value:@"Copy Result" table:@"Localizable"];

    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v14 = MEMORY[0x1E69DC628];
    v140[0] = MEMORY[0x1E69E9820];
    v140[1] = 3221225472;
    v140[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
    v140[3] = &unk_1E82D7DB0;
    v141 = *(a1 + 56);
    v142 = *(a1 + 64);
    v15 = [v14 actionWithTitle:v104 image:v100 identifier:0 handler:v140];
    v16 = MEMORY[0x1E69DC628];
    v137[0] = MEMORY[0x1E69E9820];
    v137[1] = 3221225472;
    v137[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
    v137[3] = &unk_1E82D7F60;
    objc_copyWeak(&v139, (a1 + 88));
    v138 = *(a1 + 72);
    v17 = [v16 actionWithTitle:v98 image:v13 identifier:0 handler:v137];
    [v17 setAttributes:2];
    v18 = MEMORY[0x1E69DCC60];
    v154[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
    v20 = [v18 menuWithTitle:&stru_1F476BD20 image:0 identifier:0 options:1 children:v19];

    v21 = MEMORY[0x1E69DCC60];
    v153[0] = v95;
    v153[1] = v15;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
    v23 = [v21 menuWithTitle:v97 image:v100 identifier:0 options:0 children:v22];

    [v101 addObject:v23];
    [v101 addObject:v20];

    objc_destroyWeak(&v139);
    goto LABEL_66;
  }

  v8 = *(v7 + 56);
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_67;
      }

      v95 = v5;
      if (_UISolariumEnabled())
      {
        v98 = 0;
      }

      else
      {
        v27 = *(a1 + 48);
        if (v27)
        {
          WeakRetained = objc_loadWeakRetained((v27 + 40));
        }

        else
        {
          WeakRetained = 0;
        }

        v98 = [WeakRetained tintColor];
      }

      v29 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"equal.circle"];
      v104 = [v29 imageWithTintColor:v98 renderingMode:1];

      v30 = _PencilKitBundle();
      v31 = [v30 localizedStringForKey:@"Solve" value:@"Solve" table:@"Localizable"];

      v32 = MEMORY[0x1E69DC628];
      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 3221225472;
      v134[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5;
      v134[3] = &unk_1E82D7F60;
      objc_copyWeak(&v136, (a1 + 88));
      v33 = a1;
      v135 = *(a1 + 72);
      v34 = [v32 actionWithTitle:v31 image:v104 identifier:0 handler:v134];
      if (v98)
      {
        v151 = *MEMORY[0x1E69DB650];
        v152 = v98;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
        v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v31 attributes:v35];
        [v34 setAttributedTitle:v36];

        v33 = a1;
      }

      [v101 addObject:v34];
      v37 = objc_loadWeakRetained((v33 + 88));
      if (v37)
      {
        v38 = v37[8];

        if (v38)
        {
          v39 = MEMORY[0x1E69DCC60];
          v150 = v95;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
          v41 = [v39 menuWithTitle:&stru_1F476BD20 image:0 identifier:0 options:1 children:v40];

          [v101 addObject:v41];
        }
      }

      objc_destroyWeak(&v136);
      goto LABEL_66;
    }

    goto LABEL_13;
  }

  if (v8 == 2)
  {
    [v101 addObject:v5];
    goto LABEL_67;
  }

  if (v8 != 3)
  {
    if (v8 != 4)
    {
      goto LABEL_67;
    }

    v9 = *(a1 + 72);
    v95 = v5;
    if (v9 && ([*(v9 + 144) expressionFeatures] & 2) != 0)
    {
      v10 = _PencilKitBundle();
      v98 = [v10 localizedStringForKey:@"Insert 3D Graph" value:@"Insert 3D Graph" table:@"Localizable"];
    }

    else
    {
      v10 = _PencilKitBundle();
      v98 = [v10 localizedStringForKey:@"Insert Graph" value:@"Insert Graph" table:@"Localizable"];
    }

    v42 = *(a1 + 72);
    v43 = @"graph.2d";
    if (v42 && ([*(v42 + 144) expressionFeatures] & 2) != 0)
    {
      v43 = @"graph.3d";
    }

    v104 = [MEMORY[0x1E69DCAB8] systemImageNamed:v43];
    v44 = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
    if ([v44 count] == 1)
    {
      v45 = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
      v94 = [v45 objectAtIndexedSubscript:0];
    }

    else
    {
      v94 = 0;
    }

    v46 = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
    if ([v46 count] >= 2 && (v47 = *(a1 + 72)) != 0)
    {
      v48 = ([*(v47 + 144) expressionFeatures] & 1) == 0;

      if (!v48)
      {
        v49 = MEMORY[0x1E695DF70];
        v50 = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
        v51 = [v49 arrayWithCapacity:{objc_msgSend(v50, "count")}];

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        obj = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
        v52 = [obj countByEnumeratingWithState:&v126 objects:v149 count:16];
        if (v52)
        {
          v53 = *v127;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v127 != v53)
              {
                objc_enumerationMutation(obj);
              }

              v55 = *(*(&v126 + 1) + 8 * i);
              v56 = MEMORY[0x1E696AEC0];
              v57 = _PencilKitBundle();
              v58 = [v57 localizedStringForKey:@"%@ on x-axis" value:@"%@ on x-axis" table:@"Localizable"];
              v59 = [v56 localizedStringWithFormat:v58, v55];

              v60 = MEMORY[0x1E69DC628];
              v122[0] = MEMORY[0x1E69E9820];
              v122[1] = 3221225472;
              v122[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_7;
              v122[3] = &unk_1E82D7F38;
              objc_copyWeak(&v125, (a1 + 88));
              v123 = *(a1 + 72);
              v124 = v55;
              v61 = [v60 actionWithTitle:v59 image:v104 identifier:0 handler:v122];
              [v51 addObject:v61];

              objc_destroyWeak(&v125);
            }

            v52 = [obj countByEnumeratingWithState:&v126 objects:v149 count:16];
          }

          while (v52);
        }

        v62 = [MEMORY[0x1E69DCC60] menuWithTitle:v98 image:v104 identifier:0 options:0 children:v51];
        [v101 addObject:v62];

LABEL_45:
        v65 = objc_loadWeakRetained((a1 + 88));
        if (!v65)
        {
          goto LABEL_65;
        }

        v66 = v65[9];

        if ((v66 & 1) == 0)
        {
          goto LABEL_65;
        }

        v67 = *(a1 + 72);
        if (v67 && ([*(v67 + 144) expressionFeatures] & 2) != 0)
        {
          v68 = _PencilKitBundle();
          v93 = [v68 localizedStringForKey:@"Add to Existing 3D Graph" value:@"Add to Existing 3D Graph" table:@"Localizable"];
        }

        else
        {
          v68 = _PencilKitBundle();
          v93 = [v68 localizedStringForKey:@"Add to Existing Graph" value:@"Add to Existing Graph" table:@"Localizable"];
        }

        v69 = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
        if ([v69 count] >= 2 && (v70 = *(a1 + 72)) != 0)
        {
          v71 = ([*(v70 + 144) expressionFeatures] & 1) == 0;

          if (!v71)
          {
            v72 = MEMORY[0x1E695DF70];
            v73 = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
            v74 = [v72 arrayWithCapacity:{objc_msgSend(v73, "count")}];

            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            obja = [(PKMathRecognitionItem *)*(a1 + 72) graphableVariables];
            v75 = [obja countByEnumeratingWithState:&v114 objects:v148 count:16];
            if (v75)
            {
              v76 = *v115;
              do
              {
                for (j = 0; j != v75; ++j)
                {
                  if (*v115 != v76)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v78 = *(*(&v114 + 1) + 8 * j);
                  v79 = MEMORY[0x1E696AEC0];
                  v80 = _PencilKitBundle();
                  v81 = [v80 localizedStringForKey:@"%@ on x-axis" value:@"%@ on x-axis" table:@"Localizable"];
                  v82 = [v79 localizedStringWithFormat:v81, v78];

                  v83 = MEMORY[0x1E69DC628];
                  v110[0] = MEMORY[0x1E69E9820];
                  v110[1] = 3221225472;
                  v110[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_9;
                  v110[3] = &unk_1E82D7F38;
                  objc_copyWeak(&v113, (a1 + 88));
                  v111 = *(a1 + 72);
                  v112 = v78;
                  v84 = [v83 actionWithTitle:v82 image:v104 identifier:0 handler:v110];
                  [v74 addObject:v84];

                  objc_destroyWeak(&v113);
                }

                v75 = [obja countByEnumeratingWithState:&v114 objects:v148 count:16];
              }

              while (v75);
            }

            v85 = [MEMORY[0x1E69DCC60] menuWithTitle:v93 image:v104 identifier:0 options:0 children:v74];
            [v101 addObject:v85];

            goto LABEL_64;
          }
        }

        else
        {
        }

        v86 = MEMORY[0x1E69DC628];
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_10;
        v106[3] = &unk_1E82D7F38;
        objc_copyWeak(&v109, (a1 + 88));
        v107 = *(a1 + 72);
        v108 = v94;
        v87 = [v86 actionWithTitle:v93 image:v104 identifier:0 handler:v106];
        [v101 addObject:v87];

        objc_destroyWeak(&v109);
LABEL_64:

LABEL_65:
        v88 = MEMORY[0x1E69DCC60];
        v147 = v95;
        v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
        v90 = [v88 menuWithTitle:&stru_1F476BD20 image:0 identifier:0 options:1 children:v89];

        [v101 addObject:v90];
        goto LABEL_66;
      }
    }

    else
    {
    }

    v63 = MEMORY[0x1E69DC628];
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_8;
    v118[3] = &unk_1E82D7F38;
    objc_copyWeak(&v121, (a1 + 88));
    v119 = *(a1 + 72);
    v120 = v94;
    v64 = [v63 actionWithTitle:v98 image:v104 identifier:0 handler:v118];
    [v101 addObject:v64];

    objc_destroyWeak(&v121);
    goto LABEL_45;
  }

  v95 = v5;
  v24 = _PencilKitBundle();
  v98 = [v24 localizedStringForKey:@"Dismiss Error" value:@"Dismiss Error" table:@"Localizable"];

  v104 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
  v25 = MEMORY[0x1E69DC628];
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_6;
  v130[3] = &unk_1E82D7F38;
  objc_copyWeak(&v133, (a1 + 88));
  v131 = *(a1 + 72);
  v132 = *(a1 + 80);
  v26 = [v25 actionWithTitle:v98 image:v104 identifier:0 handler:v130];
  [v101 addObject:v26];

  objc_destroyWeak(&v133);
LABEL_66:

  v6 = v95;
LABEL_67:
  v91 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F476BD20 image:0 identifier:0 options:1 children:v101];

  objc_destroyWeak(&v146);

  return v91;
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(id *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [(PKMathContextMenuController *)WeakRetained drawing];

  if ([a1[4] count])
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithStrokes:a1[4] fromDrawing:v4];
    v7 = [v6 serializeTransiently];
    [v2 setObject:v7 forKeyedSubscript:@"com.apple.drawing"];
  }

  if ([a1[5] length])
  {
    v8 = [a1[5] dataUsingEncoding:4];
    v9 = [*MEMORY[0x1E6983060] identifier];
    [v2 setObject:v8 forKeyedSubscript:v9];
  }

  if ([v2 count])
  {
    v10 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v12[0] = v2;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v10 setItems:v11];
  }
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 serializeTransiently];
    [v2 setObject:v4 forKeyedSubscript:@"com.apple.drawing"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [v5 dataUsingEncoding:4];
    v7 = [*MEMORY[0x1E6983060] identifier];
    [v2 setObject:v6 forKeyedSubscript:v7];
  }

  if ([v2 count])
  {
    v8 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v10[0] = v2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v8 setItems:v9];
  }
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) uuid];
  [v3 contextMenuController:v4 removeResultForItemUUID:v5];
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) uuid];
  [v3 contextMenuController:v4 solveItemUUID:v5];
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v3 contextMenuController:v4 dismissErrorForItem:*(a1 + 32) token:*(a1 + 40)];
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) uuid];
  [v3 contextMenuController:v4 addGraphForItemUUID:v5 addToExisting:0 graphableVariable:*(a1 + 40)];
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) uuid];
  [v3 contextMenuController:v4 addGraphForItemUUID:v5 addToExisting:0 graphableVariable:*(a1 + 40)];
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) uuid];
  [v3 contextMenuController:v4 addGraphForItemUUID:v5 addToExisting:1 graphableVariable:*(a1 + 40)];
}

void __85__PKMathContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) uuid];
  [v3 contextMenuController:v4 addGraphForItemUUID:v5 addToExisting:1 graphableVariable:*(a1 + 40)];
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v164[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self)
  {
    v11 = 0;
    goto LABEL_63;
  }

  v11 = self->_mathItem;
  if (!v11 || ([(PKMathContextMenuController *)&self->super.isa drawing], v12 = objc_claimAutoreleasedReturnValue(), v13 = [(PKMathRecognitionItem *)v11 isValidForDrawing:v12], v12, !v13))
  {
    self = 0;
    goto LABEL_63;
  }

  v14 = self->_errorString;
  if (v14)
  {
  }

  else if (self->_explanationString)
  {
    v19 = [MEMORY[0x1E695E000] standardUserDefaults];
    v20 = [v19 integerForKey:@"PKTrigonometryHintCounterUserDefaultsName"];

    if (v20 < 3)
    {
      v146 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v146 setInteger:v20 + 1 forKey:@"PKTrigonometryHintCounterUserDefaultsName"];
    }

    else
    {
      objc_setProperty_nonatomic_copy(self, v21, 0, 64);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [(PKMathRecognitionItem *)v11 uuid];
  v17 = [WeakRetained contextMenuController:self imageForItemUUID:v16];

  v18 = self->_errorString;
  v154 = v9;
  v155 = v8;
  v156 = v17;
  if (v18)
  {

    goto LABEL_13;
  }

  if (self->_explanationString)
  {
LABEL_13:
    v150 = v10;
    v22 = *MEMORY[0x1E69DB648];
    v163[0] = *MEMORY[0x1E69DB648];
    v23 = +[PKMathContextMenuPreviewView footnoteBoldFont];
    v164[0] = v23;
    v24 = *MEMORY[0x1E69DB650];
    v163[1] = *MEMORY[0x1E69DB650];
    v25 = 0x1E69DC000uLL;
    v26 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v164[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v164 forKeys:v163 count:2];

    v28 = objc_alloc_init(MEMORY[0x1E696AD40]);
    errorString = self->_errorString;
    v30 = 0x1E696A000uLL;
    v152 = v27;
    if (errorString)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", errorString];
      v32 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle"];
      [MEMORY[0x1E69DC888] secondaryLabelColor];
      v34 = v148 = v24;
      [v33 imageWithTintColor:v34 renderingMode:1];
      v36 = v35 = v22;
      [v32 setImage:v36];

      v37 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v32];
      [v28 appendAttributedString:v37];
      v38 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v31 attributes:v27];
      [v28 appendAttributedString:v38];

      v22 = v35;
      v25 = 0x1E69DC000;

      v24 = v148;
      v30 = 0x1E696A000;
    }

    else
    {
      if (!self->_explanationString)
      {
LABEL_18:
        v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        [v39 setAttributedText:v28];
        [v39 setTextAlignment:1];
        [v39 setNumberOfLines:1];
        v40 = self->_errorReasonString;
        if (v40 && (v41 = v40, [*(v30 + 3776) stringWithFormat:@"\n%@", v40], v42 = objc_claimAutoreleasedReturnValue(), v41, objc_msgSend(MEMORY[0x1E69DB878], "preferredFontForTextStyle:", *MEMORY[0x1E69DDD28]), v43 = objc_claimAutoreleasedReturnValue(), v161[1] = v24, v162[0] = v43, v161[0] = v22, objc_msgSend(*(v25 + 2184), "secondaryLabelColor"), v44 = objc_claimAutoreleasedReturnValue(), v162[1] = v44, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v162, v161, 2), v45 = objc_claimAutoreleasedReturnValue(), v44, v46 = objc_msgSend(objc_alloc(MEMORY[0x1E696AAB0]), "initWithString:attributes:", v42, v45), objc_msgSend(v28, "appendAttributedString:", v46), v46, objc_msgSend(v39, "setAttributedText:", v28), v45, v43, v42))
        {
          [v39 setNumberOfLines:0];

          v47 = 480.0;
        }

        else
        {
          if (!self->_explanationString)
          {
            [v39 sizeToFit];
            v10 = v150;
            v48 = v152;
            goto LABEL_25;
          }

          [v39 setNumberOfLines:0];
          v47 = 360.0;
        }

        v10 = v150;
        v48 = v152;
        [v39 sizeThatFits:{v47, 100000.0}];
        [v39 setFrame:{0.0, 0.0, v49, v50}];
LABEL_25:

        v17 = v156;
        goto LABEL_26;
      }

      v31 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_explanationString attributes:v27];
      [v28 appendAttributedString:v31];
    }

    goto LABEL_18;
  }

  v39 = 0;
LABEL_26:
  v51 = self->_errorString;
  if (v51)
  {
    v52 = v51;
    v53 = 0;
  }

  else
  {
    if ((self->_mode | 2) != 2)
    {
      v53 = 0;
      goto LABEL_31;
    }

    v52 = objc_loadWeakRetained(&self->_delegate);
    v54 = [(PKMathRecognitionItem *)v11 uuid];
    v53 = [v52 contextMenuController:self resultAttributionForItemUUID:v54];
  }

LABEL_31:
  v55 = objc_loadWeakRetained(&self->_view);
  v56 = [v55 traitCollection];
  v57 = [v56 userInterfaceStyle];

  if (v53)
  {
    v58 = 1;
    if (v57 == 2)
    {
      v58 = 2;
    }

    v59 = v53[v58];
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;
  v61 = [PKMathContextMenuPreviewView alloc];
  if (v53)
  {
    v62 = v53[4];
  }

  else
  {
    v62 = 0;
  }

  v63 = [(PKMathContextMenuPreviewView *)v61 initWithImage:v17 label:v39 attributionImage:v60 lastRefreshDate:v62];
  v64 = v63;
  if (v63)
  {
    [(PKMathContextMenuPreviewView *)v63 bounds];
    v66 = v65;
    v68 = v67;
    memset(&v160, 0, sizeof(v160));
    v69 = objc_loadWeakRetained(&self->_delegate);
    v70 = v69;
    if (v69)
    {
      [v69 contextMenuControllerDrawingTransform:self];
    }

    else
    {
      memset(&v160, 0, sizeof(v160));
    }

    v149 = v68;
    v151 = v66;
    v153 = v60;

    x = self->_tapBounds.origin.x;
    y = self->_tapBounds.origin.y;
    width = self->_tapBounds.size.width;
    height = self->_tapBounds.size.height;
    v166.origin.x = x;
    v166.origin.y = y;
    v166.size.width = width;
    v166.size.height = height;
    if (CGRectIsNull(v166))
    {
      [(PKMathRecognitionItem *)v11 bounds];
      x = v75;
      y = v76;
      width = v77;
      height = v78;
    }

    v147.origin.x = x;
    v147.origin.y = y;
    v147.size.width = width;
    v147.size.height = height;
    [(PKMathRecognitionItem *)v11 bounds];
    v79 = v167.origin.x;
    v80 = v167.origin.y;
    v81 = v167.size.width;
    v82 = v167.size.height;
    v159 = v160;
    v168 = CGRectApplyAffineTransform(v167, &v159);
    v83 = v168.origin.x;
    v84 = v168.origin.y;
    v85 = v168.size.width;
    v86 = v168.size.height;
    v87 = objc_loadWeakRetained(&self->_view);
    [v87 convertRect:0 toView:{v83, v84, v85, v86}];
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;

    v96 = [(PKMathRecognitionItem *)v11 isVerticalExpression];
    v97 = v89;
    v98 = v91;
    v99 = v93;
    v100 = v95;
    if (v96)
    {
      MidX = CGRectGetMidX(*&v97);
      v102 = objc_loadWeakRetained(&self->_view);
      v103 = [v102 window];
      [v103 bounds];
      v105 = v104 * 0.5;

      v106 = v79;
      v107 = v80;
      v108 = v81;
      v109 = v82;
      if (MidX <= v105)
      {
        MaxX = CGRectGetMaxX(*&v106);
        v111 = 1.0;
      }

      else
      {
        MaxX = CGRectGetMinX(*&v106);
        v111 = -1.0;
      }

      v124 = v149;
      v125 = v151;
      MidY = CGRectGetMidY(v147);
      v127 = v160.tx + MidY * v160.c + v160.a * MaxX;
      v128 = v160.ty + MidY * v160.d + v160.b * MaxX;
      v129 = v127 + v111 * 8.0;
      if (MidX <= v105)
      {
        v130 = v129;
      }

      else
      {
        v130 = v129 - v151;
      }

      v131 = v128 + v149 * -0.5;
    }

    else
    {
      v112 = CGRectGetMidY(*&v97);
      v113 = objc_loadWeakRetained(&self->_view);
      v114 = [v113 window];
      [v114 bounds];
      v116 = v115 * 0.5;

      v117 = CGRectGetMidX(v147);
      v118 = v79;
      v119 = v80;
      v120 = v81;
      v121 = v82;
      if (v112 < v116)
      {
        MaxY = CGRectGetMaxY(*&v118);
        v123 = 1.0;
      }

      else
      {
        MaxY = CGRectGetMinY(*&v118);
        v123 = -1.0;
      }

      v125 = v151;
      v132 = v160.tx + MaxY * v160.c + v160.a * v117;
      v133 = v160.ty + MaxY * v160.d + v160.b * v117 + v123 * 8.0;
      v130 = v132 + v151 * -0.5;
      v134 = 0.0;
      if (v112 >= v116)
      {
        v134 = -1.0;
      }

      v124 = v149;
      v131 = v133 + v149 * v134;
    }

    [(PKMathContextMenuPreviewView *)v64 setFrame:v130, v131, v125, v124];
    v169.origin.x = v130;
    v169.origin.y = v131;
    v169.size.width = v125;
    v169.size.height = v124;
    v135 = CGRectGetMidX(v169);
    v170.origin.x = v130;
    v170.origin.y = v131;
    v170.size.width = v125;
    v170.size.height = v124;
    v136 = CGRectGetMidY(v170);
    memset(&v159, 0, sizeof(v159));
    v137 = objc_loadWeakRetained(&self->_view);
    v138 = v137;
    v139 = v10;
    if (v137)
    {
      [v137 transform];
    }

    else
    {
      memset(&v158, 0, sizeof(v158));
    }

    CGAffineTransformInvert(&v159, &v158);

    memset(&v158, 0, sizeof(v158));
    CGAffineTransformMakeScale(&v158, v159.a, v159.d);
    v140 = objc_alloc(MEMORY[0x1E69DD070]);
    v141 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v142 = objc_alloc(MEMORY[0x1E69DCE38]);
    v143 = objc_loadWeakRetained(&self->_view);
    v157 = v158;
    v144 = [v142 initWithContainer:v143 center:&v157 transform:{v135, v136}];
    self = [v140 initWithView:v64 parameters:v141 target:v144];

    v10 = v139;
    v17 = v156;
    v60 = v153;
  }

  else
  {
    self = 0;
  }

  v9 = v154;
  v8 = v155;
LABEL_63:

  return self;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PKMathContextMenuController_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v9[3] = &unk_1E82D6E70;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [a5 addCompletion:v9];
}

void __87__PKMathContextMenuController_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeInteraction:*(a1 + 32)];

  v3 = *(a1 + 40);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 48));
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
    WeakRetained = 0;
  }

  v6 = WeakRetained;
  [WeakRetained contextMenuControllerDidFinish:v5];
}

@end