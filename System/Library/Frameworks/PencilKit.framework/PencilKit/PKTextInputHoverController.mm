@interface PKTextInputHoverController
- (id)_cursorController;
- (id)_ibeamLayerCreateIfNecessary;
- (id)initWithDelegate:(id *)a1;
- (id)view;
- (uint64_t)performLineBreakAfterTapIfPossibleForElement:(double)a3 location:(CGFloat)a4;
- (void)didReceiveNormalTouch:(uint64_t *)a1;
- (void)hideIBeamLayer;
- (void)hoverController:(id)a3 didBegin:(id *)a4;
- (void)hoverController:(id)a3 didUpdate:(id *)a4;
- (void)hoverController:(id)a3 holdGestureMeanInputPoint:(id *)a4 latestInputPoint:(id *)a5;
- (void)hoverControllerDidEnd:(id)a3;
- (void)hoverControllerDidLift:(id)a3;
- (void)hoverControllerHoldGestureEnded:(id)a3;
- (void)set_hidePlaceholderElement:(uint64_t)a1;
- (void)unhidePlaceholderElementIfNecessary;
@end

@implementation PKTextInputHoverController

- (id)initWithDelegate:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = PKTextInputHoverController;
    v4 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      v5 = [v3 hoverControllerContainerView:a1];
      v6 = [[PKHoverController alloc] initWithDelegate:a1 view:v5];
      v7 = a1[3];
      a1[3] = v6;

      v8 = +[PKHoverSettings sharedSettings];
      v9 = [v8 showDebugLayer];
      v10 = a1[3];
      if (v10)
      {
        v10[432] = v9;
      }

      v11 = *(MEMORY[0x1E695F058] + 16);
      *(a1 + 10) = *MEMORY[0x1E695F058];
      *(a1 + 11) = v11;
    }
  }

  return a1;
}

- (void)didReceiveNormalTouch:(uint64_t *)a1
{
  if (a1)
  {
    v3 = MEMORY[0x1E69E58C0];
    v4 = a2;
    [v3 cancelPreviousPerformRequestsWithTarget:a1 selector:sel_unhidePlaceholderElementIfNecessary object:0];
    [a1 performSelector:sel_unhidePlaceholderElementIfNecessary withObject:0 afterDelay:1.0];
    [(PKHoverController *)a1[3] didReceiveNormalTouch:v4];
  }
}

- (id)view
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v1 = [WeakRetained hoverControllerContainerView:v1];
  }

  return v1;
}

- (id)_cursorController
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v1 = [WeakRetained hoverControllerCursorController:v1];
  }

  return v1;
}

- (void)hoverController:(id)a3 didBegin:(id *)a4
{
  v6 = a3;
  v7 = +[PKHoverSettings sharedSettings];
  v8 = [v7 showDebugLayer];
  if (!v6)
  {

    goto LABEL_11;
  }

  v6[432] = v8;

  if (v6[432] == 1)
  {
    if (self)
    {
      hoverDebugLayer = self->__hoverDebugLayer;
      if (hoverDebugLayer)
      {
LABEL_10:
        v18 = *&a4->var13;
        v22[6] = *&a4->var11;
        v22[7] = v18;
        var15 = a4->var15;
        v19 = *&a4->var5;
        v22[2] = *&a4->var3;
        v22[3] = v19;
        v20 = *&a4->var9;
        v22[4] = *&a4->var7;
        v22[5] = v20;
        v21 = *&a4->var1;
        v22[0] = a4->var0;
        v22[1] = v21;
        [(PKHoverController *)v6 updateShapeLayer:v22 inputPoint:?];
        goto LABEL_11;
      }

      v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v11 = self->__hoverDebugLayer;
      self->__hoverDebugLayer = v10;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
    }

    v12 = [MEMORY[0x1E69DC888] clearColor];
    v13 = [v12 CGColor];
    if (self)
    {
      [(CAShapeLayer *)self->__hoverDebugLayer setFillColor:v13];

      v14 = self->__hoverDebugLayer;
    }

    else
    {
      [0 setFillColor:v13];

      v14 = 0;
    }

    [(CAShapeLayer *)v14 setAllowsHitTesting:0];
    v15 = [(PKTextInputHoverController *)&self->super.isa view];
    v16 = [v15 layer];
    v17 = v16;
    if (self)
    {
      [v16 addSublayer:self->__hoverDebugLayer];

      hoverDebugLayer = self->__hoverDebugLayer;
    }

    else
    {
      [v16 addSublayer:0];

      hoverDebugLayer = 0;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)hoverController:(id)a3 didUpdate:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!self)
  {
    goto LABEL_61;
  }

  hoverDebugLayer = self->__hoverDebugLayer;
  if (hoverDebugLayer)
  {
    v9 = *&a4->var13;
    v240 = *&a4->var11;
    v241 = v9;
    var15 = a4->var15;
    v10 = *&a4->var5;
    v236 = *&a4->var3;
    v237 = v10;
    v11 = *&a4->var9;
    v238 = *&a4->var7;
    v239 = v11;
    v12 = *&a4->var1;
    *&rect[1] = a4->var0;
    *&rect[3] = v12;
    [(PKHoverController *)v6 updateShapeLayer:&rect[1] inputPoint:?];
  }

  hoverFlashElements = self->__hoverFlashElements;
  if (hoverFlashElements)
  {
    x = a4->var0.var0.x;
    y = a4->var0.var0.y;
    v16 = hoverFlashElements;
    if (![(NSArray *)v16 count])
    {
LABEL_23:

      goto LABEL_24;
    }

    v17 = self->__hoverFlashElements;
    v18 = [(NSArray *)v17 count];
    v19 = [(UIView *)self->__hoverFlashElementsView subviews];
    v20 = [v19 count];

    if (v18 == v20)
    {
      if ([(NSArray *)self->__hoverFlashElements count])
      {
        v225 = y;
        v228 = x;
        v16 = 0;
        v21 = 0;
        v22 = 0;
        rect[0] = 1.79769313e308;
        v222 = 1.79769313e308;
        do
        {
          v23 = [(NSArray *)self->__hoverFlashElements objectAtIndexedSubscript:v22];
          v24 = self->__hoverFlashElementsView;
          v25 = [(UIView *)v24 subviews];
          v26 = [v25 objectAtIndexedSubscript:v22];

          v27 = [(PKTextInputElement *)v23 frame];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v34 = [(PKTextInputElement *)v23 coordinateSpace];
          v35 = [(PKTextInputHoverController *)&self->super.isa view];
          v36 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v34, v35, v27, v29, v31, v33);
          v38 = v37;
          v40 = v39;
          v42 = v41;

          v249.origin.x = v36;
          v249.origin.y = v38;
          v249.size.width = v40;
          v249.size.height = v42;
          v250 = CGRectInset(v249, -4.0, -4.0);
          [v26 setFrame:{v250.origin.x, v250.origin.y, v250.size.width, v250.size.height}];
          v43 = [(PKTextInputElement *)v23 frame];
          v47 = [(PKTextInputElement *)v23 hitToleranceFrameFromElementFrame:v43, v44, v45, v46];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v54 = [(PKTextInputElement *)v23 coordinateSpace];
          v55 = [(PKTextInputHoverController *)&self->super.isa view];
          v56 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v54, v55, v47, v49, v51, v53);
          v58 = v57;
          v231 = v60;
          v233 = v59;

          distanceToRect(v228, v225, v36, v38, v40, v42);
          v62 = v61;
          if (v61 < rect[0])
          {
            distanceToRect(v228, v225, v56, v58, v233, v231);
            v222 = v63;
            v64 = v26;

            v65 = v23;
            v21 = v65;
            v16 = v64;
            rect[0] = v62;
          }

          ++v22;
        }

        while (v22 < [(NSArray *)self->__hoverFlashElements count]);
        if (v222 <= 0.0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v16 = 0;
        v21 = 0;
      }

      v21 = 0;
      v16 = 0;
LABEL_16:
      p_currentHoverFlashElementView = &self->__currentHoverFlashElementView;
      currentHoverFlashElementView = self->__currentHoverFlashElementView;
      if (v16 != currentHoverFlashElementView)
      {
        v68 = currentHoverFlashElementView;
        v69 = [(UIView *)v68 subviews];
        [v69 makeObjectsPerformSelector:sel_removeFromSuperview];

        v70 = [MEMORY[0x1E69DC888] clearColor];
        v71 = [v70 CGColor];
        v72 = [(UIView *)*p_currentHoverFlashElementView layer];
        [v72 setBorderColor:v71];

        v73 = [MEMORY[0x1E69DC888] clearColor];
        [(UIView *)*p_currentHoverFlashElementView setBackgroundColor:v73];

        objc_storeStrong(&self->__currentHoverFlashElementView, v16);
        if (v16)
        {
          v74 = [(PKTextInputElement *)v21 referenceView];
          v75 = [v74 tintColor];
          v76 = v75;
          if (v75)
          {
            v77 = v75;
          }

          else
          {
            v77 = [MEMORY[0x1E69DC888] systemBlueColor];
          }

          v78 = v77;

          v79 = [v78 colorWithAlphaComponent:0.2];

          v80 = [MEMORY[0x1E69DC888] labelColor];
          v81 = [v80 CGColor];
          v82 = [(NSArray *)v16 layer];
          [v82 setBorderColor:v81];

          v83 = [(PKTextInputHoverController *)&self->super.isa view];
          v84 = [v83 _screen];
          [v84 scale];
          v86 = 1.0 / v85;
          v87 = [(NSArray *)v16 layer];
          [v87 setBorderWidth:v86];

          v88 = MEMORY[0x1E69DD250];
          *&rect[1] = MEMORY[0x1E69E9820];
          *&rect[2] = 3221225472;
          *&rect[3] = __69__PKTextInputHoverController__updateFlashElementsForHoverInputPoint___block_invoke;
          *&rect[4] = &unk_1E82D6E70;
          v89 = v16;
          *&v236 = v89;
          *(&v236 + 1) = v79;
          v90 = v79;
          [v88 animateWithDuration:&rect[1] animations:0.2];
          v91 = dispatch_time(0, 500000000);
          block = MEMORY[0x1E69E9820];
          v244 = 3221225472;
          v245 = __69__PKTextInputHoverController__updateFlashElementsForHoverInputPoint___block_invoke_2;
          v246 = &unk_1E82D7148;
          v247 = v89;
          dispatch_after(v91, MEMORY[0x1E69E96A0], &block);
        }
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  if (self->__lineBreakTimestamp > 0.0)
  {
    self->__lineBreakPosition = a4->var0;
    if (!self->__lineBreakWaitingForElement)
    {
      v92 = CACurrentMediaTime();
      if (self->__lineBreakTimestamp + 0.1 <= v92)
      {
        self->__lineBreakWaitingForElement = 1;
        v93 = [(PKTextInputHoverController *)&self->super.isa view];
        v94 = [v93 window];
        v95 = [v94 windowScene];
        v96 = [v95 _visibleWindows];
        v97 = v96;
        v98 = MEMORY[0x1E695E0F0];
        if (v96)
        {
          v98 = v96;
        }

        v99 = v98;

        v100 = [(PKTextInputElementsFinder *)[PKTextInputSingleElementFinder alloc] initWithWindowsToSearch:v99];
        objc_initWeak(location, self);
        block = MEMORY[0x1E69E9820];
        v244 = 3221225472;
        v245 = __63__PKTextInputHoverController__checklineBreakGestureIfNecessary__block_invoke;
        v246 = &unk_1E82D69B8;
        objc_copyWeak(&v247, location);
        v101 = _Block_copy(&block);
        v102 = self->__lineBreakPosition.x;
        v103 = self->__lineBreakPosition.y;
        v104 = [(PKTextInputHoverController *)&self->super.isa view];
        *&rect[1] = MEMORY[0x1E69E9820];
        *&rect[2] = 3221225472;
        *&rect[3] = __63__PKTextInputHoverController__checklineBreakGestureIfNecessary__block_invoke_2;
        *&rect[4] = &unk_1E82DACA0;
        v105 = v100;
        *(&v237 + 1) = v102;
        *&v238 = v103;
        *&v236 = v105;
        *(&v236 + 1) = self;
        *(&v238 + 1) = v92;
        v106 = v101;
        *&v237 = v106;
        [v105 findSingleElementAtPosition:v104 coordinateSpace:&rect[1] completion:{v102, v103}];

        objc_destroyWeak(&v247);
        objc_destroyWeak(location);
      }
    }
  }

  if (self->__ibeamElement)
  {
    v107 = a4->var0.var0.x;
    v108 = a4->var0.var0.y;
    v109 = [(PKTextInputHoverController *)&self->super.isa view];
    v110 = [(PKTextInputElement *)self->__ibeamElement coordinateSpace];
    v111 = *MEMORY[0x1E695F060];
    v112 = *(MEMORY[0x1E695F060] + 8);
    v113 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v109, v110, v107, v108, *MEMORY[0x1E695F060], v112);
    v115 = v114;

    v116 = [(PKTextInputElement *)self->__ibeamElement frame];
    v120 = v116;
    v121 = v117;
    if (v113 >= v116)
    {
      v120 = v116 + v118;
      if (v113 <= v116 + v118)
      {
        v120 = v113;
      }
    }

    if (v115 >= v117)
    {
      v121 = v117 + v119;
      if (v115 <= v117 + v119)
      {
        v121 = v115;
      }
    }

    v122 = [(PKTextInputElement *)self->__ibeamElement coordinateSpace];
    v123 = [(PKTextInputHoverController *)&self->super.isa view];
    v124 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v122, v123, v120, v121, v111, v112);
    v126 = v125;

    v127 = self->__ibeamElementContent;
    v128 = [(PKTextInputHoverController *)&self->super.isa view];
    v129 = v128;
    if (v127)
    {
      v130 = [(PKTextInputElementContent *)&v127->super.isa characterIndexClosestToPoint:v128 inCoordinateSpace:1 forInsertingText:1 adjustForLastCharacter:v124, v126];

      if (v130 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_55;
      }
    }

    else
    {

      v130 = 0;
    }

    if ([(PKTextInputElementContent *)self->__ibeamElementContent contentLength])
    {
      v131 = self->__ibeamElementContent;
      v132 = [(PKTextInputHoverController *)&self->super.isa view];
      [(PKTextInputElementContent *)&v131->super.isa firstRectForRange:v130 inCoordinateSpace:1uLL, v132];
      v134 = v133;
      v136 = v135;
      v138 = v137;
      v140 = v139;

      DKDDistanceToRect(v124, v126, v134, v136, v138, v140);
      v232 = v126;
      v234 = v124;
      rect[0] = v134;
      if (v130 < 1)
      {
        v153 = v136;
        v156 = v141;
      }

      else
      {
        v142 = v141;
        v143 = self->__ibeamElementContent;
        v144 = [(PKTextInputHoverController *)&self->super.isa view];
        [(PKTextInputElementContent *)&v143->super.isa firstRectForRange:1uLL inCoordinateSpace:v144];
        v146 = v145;
        v226 = v147;
        v229 = v138;
        v149 = v148;
        v151 = v150;

        v152 = v124;
        v153 = v226;
        DKDDistanceToRect(v152, v126, v146, v226, v149, v151);
        v155 = v154 < v142;
        if (v154 < v142)
        {
          v156 = v154;
        }

        else
        {
          v156 = v142;
        }

        if (v154 < v142)
        {
          v140 = v151;
        }

        v138 = v229;
        if (v154 >= v142)
        {
          v153 = v136;
        }

        else
        {
          v138 = v149;
        }

        v157 = rect[0];
        if (v155)
        {
          v157 = v146;
        }

        rect[0] = v157;
        if (v155)
        {
          --v130;
        }
      }

      v158 = self->__ibeamElementContent;
      v159 = [(PKTextInputHoverController *)&self->super.isa view];
      v160 = [(PKTextInputElementContent *)v158 caretRectForCharacterIndex:v130 inCoordinateSpace:v159];
      v162 = v161;
      v164 = v163;
      v166 = v165;

      if (v156 > 20.0 || (v251.origin.x = v160, v251.origin.y = v162, v251.size.width = v164, v251.size.height = v166, CGRectIsNull(v251)) || (v167 = self->__ibeamElementContent, [(PKTextInputHoverController *)&self->super.isa view], v168 = objc_claimAutoreleasedReturnValue(), v169 = [(PKTextInputElementContent *)v167 hasLinkAtCharacterIndex:v130 location:v168 coordinateSpace:v234, v232], v167, v168, v169))
      {
        v170 = *(MEMORY[0x1E695F050] + 16);
        self->__ibeamFrame.origin = *MEMORY[0x1E695F050];
        self->__ibeamFrame.size = v170;
        v171 = [MEMORY[0x1E69DC888] clearColor];
        -[CALayer setBackgroundColor:](self->__ibeamLayer, "setBackgroundColor:", [v171 CGColor]);

        goto LABEL_61;
      }

      v172 = [(PKTextInputHoverController *)&self->super.isa _ibeamLayerCreateIfNecessary];
      v173 = [MEMORY[0x1E69DC888] grayColor];
      v174 = v130 == 0;
      v175 = [(PKTextInputElementContent *)self->__ibeamElementContent contentLength]- 1;
      v176 = v130 >= v175;
      v177 = v130 - 1;
      v230 = v162;
      if (v130 < 1)
      {
        v181 = v153;
        v183 = v232;
        v182 = v234;
LABEL_84:
        v254.origin.x = rect[0];
        v254.origin.y = v181;
        v254.size.width = v138;
        v254.size.height = v140;
        v255 = CGRectInset(v254, -1.0, 0.0);
        v210 = v255.origin.x;
        width = v255.size.width;
        v255.origin.y = v230;
        v255.size.height = v166;
        if (v183 <= CGRectGetMaxY(v255) || v182 >= v210 && (v256.origin.x = v210, v256.origin.y = v230, v256.size.width = width, v256.size.height = v166, v182 <= CGRectGetMaxX(v256)))
        {
          if (v210 >= v182)
          {
            v214 = v210;
          }

          else
          {
            v214 = v182;
          }

          if (v174)
          {
            v182 = v214;
          }

          if (v176)
          {
            v257.origin.x = v210;
            v215 = v230;
            v257.origin.y = v230;
            v257.size.width = width;
            v257.size.height = v166;
            MaxX = CGRectGetMaxX(v257);
            if (MaxX < v182)
            {
              v182 = MaxX;
            }
          }

          else
          {
            v215 = v230;
          }

          v258.origin.x = self->__ibeamFrame.origin.x;
          v217 = self->__ibeamFrame.origin.y;
          v258.size.width = self->__ibeamFrame.size.width;
          v258.size.height = self->__ibeamFrame.size.height;
          v258.origin.y = v217;
          IsEmpty = CGRectIsEmpty(v258);
          v219 = IsEmpty;
          if (IsEmpty)
          {
            v220 = v215;
          }

          else
          {
            v220 = (v215 + v217 * 3.0) * 0.25;
          }

          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setDisableActions:1];
          [v172 setFrame:{v182, v220, 2.0, v166}];
          if (v219)
          {
            [MEMORY[0x1E6979518] commit];
            if (!CGColorEqualToColor([v172 backgroundColor], objc_msgSend(v173, "CGColor")))
            {
              [v172 setBackgroundColor:{objc_msgSend(v173, "CGColor")}];
            }
          }

          else
          {
            if (!CGColorEqualToColor([v172 backgroundColor], objc_msgSend(v173, "CGColor")))
            {
              [v172 setBackgroundColor:{objc_msgSend(v173, "CGColor")}];
            }

            [MEMORY[0x1E6979518] commit];
          }

          self->__ibeamFrame.origin.x = v182;
          self->__ibeamFrame.origin.y = v220;
          self->__ibeamFrame.size.width = 2.0;
          self->__ibeamFrame.size.height = v166;
          self->__ibeamLastTimestamp = CACurrentMediaTime();
        }

        else
        {
          v212 = *(MEMORY[0x1E695F050] + 16);
          self->__ibeamFrame.origin = *MEMORY[0x1E695F050];
          self->__ibeamFrame.size = v212;
          v213 = [MEMORY[0x1E69DC888] clearColor];
          -[CALayer setBackgroundColor:](self->__ibeamLayer, "setBackgroundColor:", [v213 CGColor]);
        }

        goto LABEL_61;
      }

      v227 = v172;
      if (v130 >= [(PKTextInputElementContent *)self->__ibeamElementContent contentLength]- 1)
      {
LABEL_77:
        v181 = v153;
        v174 = 1;
        v196 = [(PKTextInputElementContent *)self->__ibeamElementContent stringInRange:1];
        v197 = [v196 characterAtIndex:0];
        v198 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        LOBYTE(v197) = [v198 characterIsMember:v197];

        v183 = v232;
        v182 = v234;
        if ((v197 & 1) == 0)
        {
          v221 = v140;
          v224 = v166;
          v199 = self->__ibeamElementContent;
          v200 = [(PKTextInputHoverController *)&self->super.isa view];
          [(PKTextInputElementContent *)&v199->super.isa firstRectForRange:v177 inCoordinateSpace:1uLL, v200];
          v202 = v201;
          v204 = v203;
          v206 = v205;
          v208 = v207;

          v253.origin.x = v202;
          v253.origin.y = v204;
          v253.size.width = v206;
          v253.size.height = v208;
          if (CGRectIsNull(v253))
          {
            v174 = 0;
            v140 = v221;
            v166 = v224;
          }

          else
          {
            v209 = v204 - v181;
            if (v204 - v181 < 0.0)
            {
              v209 = -(v204 - v181);
            }

            v140 = v221;
            v174 = v209 > v221 * 0.5;
            v166 = v224;
          }
        }

        v172 = v227;
        goto LABEL_84;
      }

      v178 = [(PKTextInputElementContent *)self->__ibeamElementContent stringInRange:1];
      if ([v178 length] == 1)
      {
        v179 = [v178 characterAtIndex:0];
        v180 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        LOBYTE(v179) = [v180 characterIsMember:v179];

        v176 = 1;
        if ((v179 & 1) != 0 || v130 >= v175)
        {
          goto LABEL_76;
        }
      }

      else if (v130 >= v175)
      {
        v176 = 1;
LABEL_76:

        goto LABEL_77;
      }

      v184 = v140;
      v223 = v166;
      v185 = self->__ibeamElementContent;
      v186 = [(PKTextInputHoverController *)&self->super.isa view];
      [(PKTextInputElementContent *)&v185->super.isa firstRectForRange:1uLL inCoordinateSpace:v186];
      v188 = v187;
      v190 = v189;
      v192 = v191;
      v194 = v193;

      v252.origin.x = v188;
      v252.origin.y = v190;
      v252.size.width = v192;
      v252.size.height = v194;
      if (CGRectIsNull(v252))
      {
        v176 = 0;
        v166 = v223;
        v140 = v184;
      }

      else
      {
        v195 = v190 - v153;
        if (v190 - v153 < 0.0)
        {
          v195 = -(v190 - v153);
        }

        v140 = v184;
        v176 = v195 > v184 * 0.5;
        v166 = v223;
      }

      goto LABEL_76;
    }

LABEL_55:
    [(PKTextInputHoverController *)self hideIBeamLayer];
  }

LABEL_61:
}

- (void)hoverControllerDidEnd:(id)a3
{
  [(PKTextInputHoverController *)self hideIBeamLayer];
  v4 = [(PKTextInputHoverController *)&self->super.isa _cursorController];
  [v4 setForceVisible:0];

  if (self)
  {
    self->__lineBreakTimestamp = 0.0;
    [(CAShapeLayer *)self->__hoverDebugLayer removeFromSuperlayer];
    objc_storeStrong(&self->__hoverDebugLayer, 0);
    [(UIView *)self->__hoverFlashElementsView removeFromSuperview];
    objc_storeStrong(&self->__hoverFlashElementsView, 0);
    objc_storeStrong(&self->__currentHoverFlashElementView, 0);
    self->__shouldMakeCursorStrong = 0;
  }

  else
  {
    [0 removeFromSuperlayer];
    [0 removeFromSuperview];
  }

  v5 = [(PKTextInputHoverController *)&self->super.isa _cursorController];
  v6 = [v5 forceStrong];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = dispatch_time(0, 2000000000);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PKTextInputHoverController_hoverControllerDidEnd___block_invoke;
    v8[3] = &unk_1E82D69B8;
    objc_copyWeak(&v9, &location);
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  if (self)
  {
    if (self->__hidePlaceholderElement)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_unhidePlaceholderElementIfNecessary object:0];
      [(PKTextInputHoverController *)self performSelector:sel_unhidePlaceholderElementIfNecessary withObject:0 afterDelay:1.0];
    }
  }
}

- (void)hideIBeamLayer
{
  if (a1)
  {
    v2 = *(MEMORY[0x1E695F050] + 16);
    *(a1 + 160) = *MEMORY[0x1E695F050];
    *(a1 + 176) = v2;
    v3 = *(a1 + 112);
    *(a1 + 112) = 0;

    v4 = *(a1 + 120);
    *(a1 + 120) = 0;

    [*(a1 + 128) removeFromSuperlayer];
    v5 = *(a1 + 128);
    *(a1 + 128) = 0;
  }
}

void __52__PKTextInputHoverController_hoverControllerDidEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [(PKTextInputHoverController *)WeakRetained _cursorController];
  [v1 setForceStrong:0];
}

- (void)unhidePlaceholderElementIfNecessary
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_unhidePlaceholderElementIfNecessary object:0];
  if (self)
  {
    hidePlaceholderElement = self->__hidePlaceholderElement;
    if (hidePlaceholderElement)
    {
      hoverController = self->__hoverController;
      if (hoverController && LOBYTE(hoverController->_waitingForHoverHoldTimestamp) == 1)
      {
        v5 = [(PKTextInputHoverController *)&self->super.isa view];
        v6 = [v5 window];
        v7 = [v6 windowScene];
        v8 = [v7 _visibleWindows];
        v9 = v8;
        v10 = MEMORY[0x1E695E0F0];
        if (v8)
        {
          v10 = v8;
        }

        v11 = v10;

        v12 = [(PKTextInputElementsFinder *)[PKTextInputSingleElementFinder alloc] initWithWindowsToSearch:v11];
        v13 = self->__hoverController;
        if (v13)
        {
          end = v13->_inputPoints.__end_;
          cap = v13->_inputPoints.__cap_;
          p_y = &v13->_cachedLatestInputPoint.var0.point.y;
          p_force = &v13->_cachedLatestInputPoint.force;
          if (cap == end)
          {
            v18 = p_y;
          }

          else
          {
            p_force = (end + 8);
            v18 = end;
          }

          v19 = *v18;
          v20 = *p_force;
        }

        else
        {
          v19 = 0.0;
          v20 = 0.0;
        }

        v21 = [(PKTextInputHoverController *)&self->super.isa view];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __65__PKTextInputHoverController_unhidePlaceholderElementIfNecessary__block_invoke;
        v23[3] = &unk_1E82D6E70;
        v24 = v12;
        v25 = self;
        v22 = v12;
        [v22 findSingleElementAtPosition:v21 coordinateSpace:v23 completion:{v19, v20}];
      }

      else
      {
        [(PKTextInputElement *)hidePlaceholderElement endSuppressingPlaceholderIfNecessary];

        [(PKTextInputHoverController *)self set_hidePlaceholderElement:?];
      }
    }
  }
}

void __65__PKTextInputHoverController_unhidePlaceholderElementIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foundElement];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 104);
    if (v4)
    {
      v8 = v2;
      v5 = [(PKTextInputElement *)v2 isEquivalentToElement:v4];
      v6 = *(a1 + 40);
      if (v5)
      {
        v2 = v8;
        if (!v6)
        {
          goto LABEL_10;
        }

        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v6 selector:sel_unhidePlaceholderElementIfNecessary object:0];
        [v6 performSelector:sel_unhidePlaceholderElementIfNecessary withObject:0 afterDelay:1.0];
      }

      else
      {
        if (v6)
        {
          v7 = v6[13];
        }

        else
        {
          v7 = 0;
        }

        [v7 endSuppressingPlaceholderIfNecessary];
        [(PKTextInputHoverController *)*(a1 + 40) set_hidePlaceholderElement:?];
      }

      v2 = v8;
    }
  }

LABEL_10:
}

- (void)set_hidePlaceholderElement:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

- (void)hoverControllerDidLift:(id)a3
{
  v6 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained hoverControllerDidLift:self];

    hidePlaceholderElement = self->__hidePlaceholderElement;
    if (hidePlaceholderElement)
    {
      [(PKTextInputElement *)hidePlaceholderElement endSuppressingPlaceholderIfNecessary];
      [(PKTextInputHoverController *)self set_hidePlaceholderElement:?];
    }
  }

  else
  {
    [0 hoverControllerDidLift:0];
  }
}

- (void)hoverController:(id)a3 holdGestureMeanInputPoint:(id *)a4 latestInputPoint:(id *)a5
{
  v8 = a3;
  if (self)
  {
    x = a4->var0.var0.x;
    y = a4->var0.var0.y;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained hoverController:self topLevelHitViewAt:{x, y}];
  }

  else
  {
    v12 = 0;
  }

  v13 = off_1E82D4000;
  v14 = [PKTextInputElementsFinder isResponderEditableTextInput:v12];
  v15 = +[PKHoverSettings sharedSettings];
  v16 = [v15 tooltipsActive];

  v61 = v8;
  if (v16)
  {
    v17 = [v12 pk_hoverLabelAttributedString];
    if (!v17)
    {
      v60 = MEMORY[0x1E69DD250];
      v18 = v12;
      v19 = v18;
      if (self)
      {
        v20 = [v18 window];
        v21 = [(PKTextInputHoverController *)&self->super.isa view];
        v22 = [v21 window];

        if (v20 == v22)
        {
          v23 = [v19 accessibilityLabel];
          v13 = off_1E82D4000;
          if (!v23)
          {
            v23 = [v19 accessibilityHint];
          }
        }

        else
        {
          v23 = 0;
          v13 = off_1E82D4000;
        }
      }

      else
      {
        v23 = 0;
      }

      v17 = [v60 pk_hoverAttributedStringFromString:v23];

      v8 = v61;
    }

    if ([v17 length])
    {
      [(PKHoverController *)self->__hoverController showAttributedLabel:v17 atLocation:a5->var0.var0.x, a5->var0.var0.y];
    }
  }

  v24 = [(PKHoverController *)v8 hoverDebugLayerColor];
  v25 = [v24 CGColor];
  if (self)
  {
    hoverDebugLayer = self->__hoverDebugLayer;
  }

  else
  {
    hoverDebugLayer = 0;
  }

  [(CAShapeLayer *)hoverDebugLayer setFillColor:v25];

  v27 = +[PKHoverSettings sharedSettings];
  v28 = [v27 scribbleLineBreakHandling] & v14;

  if (v28 == 1)
  {
    if (self)
    {
      if (!self->__lineBreakWaitingForElement && self->__lineBreakTimestamp == 0.0)
      {
        self->__lineBreakTimestamp = CACurrentMediaTime();
        self->__lineBreakPosition = a4->var0;
      }
    }

    else
    {
      CACurrentMediaTime();
    }
  }

  else
  {
    v29 = +[PKHoverSettings sharedSettings];
    v30 = [v29 scribbleFlashCursorActive];

    if (v30)
    {
      v31 = [(PKTextInputHoverController *)&self->super.isa _cursorController];
      [v31 flashCursor];
    }
  }

  v32 = +[PKHoverSettings sharedSettings];
  v33 = [v32 scribbleIBeamActive];
  v34 = MEMORY[0x1E695E0F0];
  if (!v33)
  {

    goto LABEL_30;
  }

  v35 = [(PKTextInputElementsFinder *)v13[389] isResponderNonEditableTextInput:v12];

  if (!v35)
  {
    goto LABEL_30;
  }

  if (!self)
  {
LABEL_37:
    v48 = [(PKTextInputHoverController *)&self->super.isa view];
    v49 = [v48 window];
    v50 = [v49 windowScene];
    v51 = [v50 _visibleWindows];
    v52 = v51;
    v53 = MEMORY[0x1E695E0F0];
    if (v51)
    {
      v53 = v51;
    }

    v54 = v53;

    v55 = [(PKTextInputElementsFinder *)[PKTextInputSingleElementFinder alloc] initWithWindowsToSearch:v54];
    if (v55)
    {
      v55[4] = 257;
    }

    v56 = a5->var0.var0.x;
    v57 = a5->var0.var0.y;
    v58 = [(PKTextInputHoverController *)&self->super.isa view];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __89__PKTextInputHoverController_hoverController_holdGestureMeanInputPoint_latestInputPoint___block_invoke;
    v70[3] = &unk_1E82D9F20;
    v73 = v56;
    v74 = v57;
    v71 = v55;
    v72 = self;
    v59 = v55;
    [v59 findSingleElementAtPosition:v58 coordinateSpace:v70 completion:{v56, v57}];

    v34 = MEMORY[0x1E695E0F0];
LABEL_30:
    v36 = a5->var0.var0.x;
    v37 = a5->var0.var0.y;
    v66 = *&a5->var9;
    v67 = *&a5->var11;
    v68 = *&a5->var13;
    var15 = a5->var15;
    v62 = *&a5->var1;
    v63 = *&a5->var3;
    v64 = *&a5->var5;
    v65 = *&a5->var7;
    if (!self)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  if (!self->__iBeamWaitingForElement && !self->__ibeamElement)
  {
    self->__iBeamWaitingForElement = 1;
    goto LABEL_37;
  }

  v36 = a5->var0.var0.x;
  v37 = a5->var0.var0.y;
  v66 = *&a5->var9;
  v67 = *&a5->var11;
  v68 = *&a5->var13;
  var15 = a5->var15;
  v62 = *&a5->var1;
  v63 = *&a5->var3;
  v64 = *&a5->var5;
  v65 = *&a5->var7;
LABEL_31:
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_unhidePlaceholderElementIfNecessary object:0];
  [(PKTextInputHoverController *)self performSelector:sel_unhidePlaceholderElementIfNecessary withObject:0 afterDelay:1.0];
  v38 = [(PKTextInputHoverController *)&self->super.isa view];
  v39 = [v38 window];
  v40 = [v39 windowScene];
  v41 = [v40 _visibleWindows];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v34;
  }

  v44 = v43;

  v45 = [(PKTextInputElementsFinder *)[PKTextInputSingleElementFinder alloc] initWithWindowsToSearch:v44];
  v46 = [(PKTextInputHoverController *)&self->super.isa view];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __47__PKTextInputHoverController__handleHoverHold___block_invoke;
  v75[3] = &unk_1E82DAC50;
  v76 = v45;
  v77 = self;
  v78 = v36;
  v79 = v37;
  v84 = v66;
  v85 = v67;
  v86 = v68;
  v87 = var15;
  v80 = v62;
  v81 = v63;
  v82 = v64;
  v83 = v65;
  v47 = v45;
  [v47 findSingleElementAtPosition:v46 coordinateSpace:v75 completion:{v36, v37}];

LABEL_35:
}

void __89__PKTextInputHoverController_hoverController_holdGestureMeanInputPoint_latestInputPoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foundElement];
  if (v2)
  {
    v3 = [(PKTextInputHoverController *)*(a1 + 40) view];
    v4 = [(PKTextInputElement *)v2 containsPoint:v3 inCoordinateSpace:*(a1 + 48), *(a1 + 56)];

    if (v4)
    {
      if (([(PKTextInputElement *)v2 isEditableElement]& 1) == 0)
      {
        v5 = [(PKTextInputElement *)v2 coordinateSpace];
        v6 = [(PKTextInputHoverController *)*(a1 + 40) view];
        [v5 convertPoint:v6 fromCoordinateSpace:{*(a1 + 48), *(a1 + 56)}];
        v8 = v7;
        v10 = v9;

        v11 = [(PKTextInputElement *)v2 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __89__PKTextInputHoverController_hoverController_holdGestureMeanInputPoint_latestInputPoint___block_invoke_2;
        v19[3] = &unk_1E82DABB0;
        v19[4] = *(a1 + 40);
        v2 = v2;
        v20 = v2;
        [(PKTextInputElement *)v2 loadContentFocusingIfNeededWithReferencePoint:v19 alwaysSetSelectionFromReferencePoint:v8 rectOfInterest:v10 completion:v11, v13, v15, v17];

        goto LABEL_8;
      }
    }

    else
    {

      v2 = 0;
    }
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    *(v18 + 12) = 0;
  }

LABEL_8:
}

void __89__PKTextInputHoverController_hoverController_holdGestureMeanInputPoint_latestInputPoint___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  if (v5)
  {
    objc_storeStrong((v5 + 112), v4);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong((v7 + 120), a2);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(v8 + 12) = 0;
  }
}

- (void)hoverControllerHoldGestureEnded:(id)a3
{
  if (self)
  {
    self->__shouldMakeCursorStrong = 0;
  }

  [(PKSqueezePaletteViewContext *)self setSelectedColor:?];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [v4 CGColor];
  if (self)
  {
    hoverDebugLayer = self->__hoverDebugLayer;
  }

  else
  {
    hoverDebugLayer = 0;
  }

  [(CAShapeLayer *)hoverDebugLayer setFillColor:v5];

  [(PKHoverController *)self->__hoverController hideLabel];
  self->__shouldHoverFlashElements = 0;
}

void __52__PKTextInputHoverController__flashElementsForHover__block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v43 = a2;
  if (*(a1 + 32))
  {
    if ([v43 count])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      if (WeakRetained)
      {
        v4 = WeakRetained[8];

        if (v4 == 1)
        {
          v5 = objc_loadWeakRetained((a1 + 40));
          if (v5)
          {
            v6 = [v43 allObjects];
            *(v5 + 8) = 0;
            objc_storeStrong(v5 + 7, v6);
            v7 = [(PKTextInputHoverController *)v5 view];
            [v7 bounds];
            v9 = v8;
            v11 = v10;
            v13 = v12;
            v15 = v14;

            v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v11, v13, v15}];
            [v16 setUserInteractionEnabled:0];
            v17 = [(PKTextInputHoverController *)v5 view];
            [v17 addSubview:v16];

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v18 = v6;
            v19 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v45;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v45 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v44 + 1) + 8 * i);
                  v24 = [(PKTextInputElement *)v23 frame];
                  v26 = v25;
                  v28 = v27;
                  v30 = v29;
                  v31 = [(PKTextInputElement *)v23 coordinateSpace];
                  v32 = [(PKTextInputHoverController *)v5 view];
                  v33 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v31, v32, v24, v26, v28, v30);
                  v35 = v34;
                  v37 = v36;
                  v39 = v38;

                  v51.origin.x = v33;
                  v51.origin.y = v35;
                  v51.size.width = v37;
                  v51.size.height = v39;
                  v52 = CGRectInset(v51, -4.0, -4.0);
                  v40 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v52.origin.x, v52.origin.y, v52.size.width, v52.size.height}];
                  v41 = [MEMORY[0x1E69DC888] clearColor];
                  [v40 setBackgroundColor:v41];

                  [v40 _setContinuousCornerRadius:4.0];
                  [v40 setClipsToBounds:1];
                  [v40 setUserInteractionEnabled:0];
                  [v16 addSubview:v40];
                }

                v20 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
              }

              while (v20);
            }

            v42 = *(v5 + 6);
            *(v5 + 6) = v16;
          }
        }
      }
    }
  }
}

void __47__PKTextInputHoverController__handleHoverHold___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foundElement];
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        if (*(v4 + 56) == 1)
        {
          v5 = *(v3 + 104);
          if (v5)
          {
            v6 = v5;
            v7 = *(a1 + 40);
            v8 = v7 ? *(v7 + 104) : 0;
            v9 = [(PKTextInputElement *)v8 isEquivalentToElement:v2];

            if ((v9 & 1) == 0)
            {
              [*(a1 + 40) unhidePlaceholderElementIfNecessary];
            }
          }

          [(PKTextInputHoverController *)*(a1 + 40) set_hidePlaceholderElement:v2];
          v10 = *(a1 + 40);
          if (v10)
          {
            v11 = *(v10 + 104);
          }

          else
          {
            v11 = 0;
          }

          [v11 beginSuppressingPlaceholderIfNecessary];
          v12 = +[PKHoverSettings sharedSettings];
          v13 = [v12 scribbleShowWritableElementsActive];

          if (v13)
          {
            v14 = *(a1 + 40);
            if (v14)
            {
              v15 = +[PKHoverSettings sharedSettings];
              v16 = [v15 scribbleShowWritableElementsActive];

              if (v16)
              {
                v17 = *(v14 + 48);
                if (v17)
                {
                }

                else if ((*(v14 + 8) & 1) == 0)
                {
                  *(v14 + 8) = 1;
                  v18 = [(PKTextInputHoverController *)v14 view];
                  v19 = [v18 window];
                  v20 = [v19 windowScene];
                  v21 = [v20 _visibleWindows];
                  v22 = v21;
                  v23 = MEMORY[0x1E695E0F0];
                  if (v21)
                  {
                    v23 = v21;
                  }

                  v24 = v23;

                  v25 = [[PKTextInputElementsFinder alloc] initWithWindowsToSearch:v24];
                  v26 = [(PKTextInputHoverController *)v14 view];
                  [v26 bounds];
                  v28 = v27;
                  v30 = v29;
                  v32 = v31;
                  v34 = v33;

                  objc_initWeak(&location, v14);
                  v35 = [(PKTextInputHoverController *)v14 view];
                  v83.origin.x = v28;
                  v83.origin.y = v30;
                  v83.size.width = v32;
                  v83.size.height = v34;
                  MidX = CGRectGetMidX(v83);
                  v84.origin.x = v28;
                  v84.origin.y = v30;
                  v84.size.width = v32;
                  v84.size.height = v34;
                  MidY = CGRectGetMidY(v84);
                  from[0] = MEMORY[0x1E69E9820];
                  from[1] = 3221225472;
                  from[2] = __52__PKTextInputHoverController__flashElementsForHover__block_invoke;
                  from[3] = &unk_1E82DABD8;
                  v38 = v25;
                  v80 = v38;
                  objc_copyWeak(&v81, &location);
                  if (v38)
                  {
                    [(PKTextInputElementsFinder *)v38 _findAvailableTextInputElementsWithReusableElements:v35 referenceHitPoint:0 referenceSearchArea:from referenceCoordSpace:MidX nearPointOnly:MidY completion:v28, v30, v32, v34];
                  }

                  objc_destroyWeak(&v81);
                  objc_destroyWeak(&location);
                }
              }
            }
          }

          if (([(PKTextInputElement *)v2 isFocused]& 1) != 0 || ![(PKTextInputElement *)v2 shouldPostponeFocusing])
          {
            if ([(PKTextInputElement *)v2 isFocused])
            {
              v55 = +[PKHoverSettings sharedSettings];
              if ([v55 scribbleHoverStrongActive])
              {
                v56 = [(PKTextInputHoverController *)*(a1 + 40) _cursorController];
                if (![v56 forceStrong])
                {
                  v57 = *(a1 + 40);
                  if (v57)
                  {
                    v58 = *(v57 + 9);

                    if (v58)
                    {
                      goto LABEL_42;
                    }
                  }

                  else
                  {
                  }

                  v59 = *(a1 + 40);
                  if (v59)
                  {
                    v60 = *(v59 + 24);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  [(PKHoverController *)v60 showLabel:*(a1 + 48) atLocation:*(a1 + 56)];
                  v61 = *(a1 + 40);
                  if (v61)
                  {
                    *(v61 + 9) = 1;
                    v62 = *(a1 + 40);
                  }

                  else
                  {
                    v62 = 0;
                  }

                  objc_initWeak(from, v62);
                  v63 = +[PKHoverSettings sharedSettings];
                  [v63 hoverAndHoldActionTimeInterval];
                  v65 = dispatch_time(0, (v64 * 1000000000.0));
                  v66[0] = MEMORY[0x1E69E9820];
                  v66[1] = 3221225472;
                  v66[2] = __47__PKTextInputHoverController__handleHoverHold___block_invoke_4;
                  v66[3] = &unk_1E82D69B8;
                  objc_copyWeak(&v67, from);
                  dispatch_after(v65, MEMORY[0x1E69E96A0], v66);

                  v54 = &v67;
                  goto LABEL_41;
                }
              }
            }
          }

          else
          {
            v39 = +[PKHoverSettings sharedSettings];
            v40 = [v39 scribbleFocusActive];

            if (v40)
            {
              [(PKSqueezePaletteViewContext *)*(a1 + 40) setSelectedColor:v2];
              v41 = *(a1 + 40);
              if (v41)
              {
                v42 = *(v41 + 24);
              }

              else
              {
                v42 = 0;
              }

              v44 = *(a1 + 48);
              v45 = *(a1 + 56);
              v43 = (a1 + 48);
              [(PKHoverController *)v42 showLabel:v44 atLocation:v45];
              objc_initWeak(from, *(v43 - 1));
              v46 = +[PKHoverSettings sharedSettings];
              [v46 hoverAndHoldActionTimeInterval];
              v48 = dispatch_time(0, (v47 * 1000000000.0));
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __47__PKTextInputHoverController__handleHoverHold___block_invoke_2;
              block[3] = &unk_1E82DAC28;
              objc_copyWeak(&v69, from);
              v49 = *(v43 + 4);
              v75 = *(v43 + 5);
              v50 = *(v43 + 7);
              v76 = *(v43 + 6);
              v77 = v50;
              v51 = *v43;
              v52 = *(v43 + 2);
              v53 = *(v43 + 3);
              v71 = *(v43 + 1);
              v72 = v52;
              v73 = v53;
              v74 = v49;
              v78 = v43[16];
              v70 = v51;
              dispatch_after(v48, MEMORY[0x1E69E96A0], block);

              v54 = &v69;
LABEL_41:
              objc_destroyWeak(v54);
              objc_destroyWeak(from);
            }
          }
        }
      }
    }
  }

LABEL_42:
}

void __47__PKTextInputHoverController__handleHoverHold___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[3];
  }

  [WeakRetained hideLabel];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PKTextInputHoverController__handleHoverHold___block_invoke_3;
  v8[3] = &unk_1E82DAC00;
  objc_copyWeak(&v9, (a1 + 32));
  [(PKTextInputElement *)v7 focusElementIfNeededWithReferencePoint:v8 alwaysSetSelectionFromReferencePoint:*(a1 + 40) completion:*(a1 + 48)];

  objc_destroyWeak(&v9);
}

void __47__PKTextInputHoverController__handleHoverHold___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [(PKTextInputHoverController *)WeakRetained _cursorController];
  [v1 flashCursor];
}

void __47__PKTextInputHoverController__handleHoverHold___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[3];
  }

  [WeakRetained hideLabel];

  v4 = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    v5 = v4[9];

    if (v5 == 1)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v6 = [(PKTextInputHoverController *)v7 _cursorController];
      [v6 setForceStrong:1];
    }
  }
}

void __69__PKTextInputHoverController__updateFlashElementsForHoverInputPoint___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] clearColor];
  v3 = [v2 CGColor];
  v4 = [*(a1 + 32) layer];
  [v4 setBorderColor:v3];

  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKTextInputHoverController__updateFlashElementsForHoverInputPoint___block_invoke_3;
  v7[3] = &unk_1E82D7148;
  v8 = *(a1 + 32);
  [v5 animateWithDuration:v7 animations:0.2];
  v6 = [*(a1 + 32) subviews];
  [v6 makeObjectsPerformSelector:sel_removeFromSuperview];
}

void __69__PKTextInputHoverController__updateFlashElementsForHoverInputPoint___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] clearColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

void __63__PKTextInputHoverController__checklineBreakGestureIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[12])
  {
    v3 = WeakRetained;
    [(PKTextInputHoverController *)WeakRetained hideIBeamLayer];
    v2 = [(PKTextInputHoverController *)v3 _cursorController];
    [v2 setForceVisible:0];

    WeakRetained = v3;
    *(v3 + 11) = 0;
    v3[9] = 0;
  }
}

void __63__PKTextInputHoverController__checklineBreakGestureIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) foundElement];
  v3 = v2;
  if (v2 && [(PKTextInputElement *)v2 isFocused])
  {
    v4 = [(PKTextInputElement *)v3 coordinateSpace];
    v5 = [(PKTextInputHoverController *)*(a1 + 40) view];
    [v4 convertPoint:v5 fromCoordinateSpace:{*(a1 + 56), *(a1 + 64)}];
    v7 = v6;
    v9 = v8;

    v10 = [(PKTextInputHoverController *)*(a1 + 40) _cursorController];
    LOBYTE(v5) = [v10 isCursorWeak];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKTextInputHoverController__checklineBreakGestureIfNecessary__block_invoke_3;
    v12[3] = &unk_1E82DAC78;
    v12[4] = *(a1 + 40);
    v13 = v3;
    v15 = *(a1 + 72);
    v16 = *(a1 + 56);
    v14 = *(a1 + 48);
    [(PKTextInputElement *)v13 evaluateLineBreakForTapAtLocation:v5 weakCursor:1 allowTrailingWhitespace:v12 completion:v7, v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v11 = *(a1 + 40);
    if (v11)
    {
      *(v11 + 10) = 0;
    }
  }
}

void __63__PKTextInputHoverController__checklineBreakGestureIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v4 + 10) = 0;
  }

  v108 = v3;
  if (!v3 || [(PKTextInputElementContent *)v3 contentLength]< 1)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_64;
  }

  v5 = *(a1 + 32);
  if (v5 && (objc_storeStrong((v5 + 96), *(a1 + 40)), (v6 = *(a1 + 32)) != 0) && (*(v6 + 11) = 1, (v7 = *(a1 + 32)) != 0))
  {
    *(v7 + 88) = *(a1 + 56);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PKTextInputHoverController *)v8 _cursorController];
  v10 = [v9 isCursorWeak];

  if (v10)
  {
    v11 = [(PKTextInputHoverController *)*(a1 + 32) _cursorController];
    [v11 setForceVisible:1];
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    *(v12 + 80) = 1;
  }

  v13 = +[PKHoverSettings sharedSettings];
  if (([v13 scribbleLineBreakMultiLineEnabled] & 1) == 0)
  {

    goto LABEL_64;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0.0;
  }

  v16 = *(a1 + 56) - v15;
  v17 = +[PKHoverSettings sharedSettings];
  [v17 scribbleLineBreakMultiLineDelay];
  v19 = v18;

  if (v16 <= v19)
  {
    goto LABEL_64;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = v108;
  v24 = v23;
  if (v20)
  {
    v25 = v23[1];
    v26 = [(PKTextInputHoverController *)v20 view];
    v27 = [(PKTextInputElement *)v25 coordinateSpace];
    v28 = *MEMORY[0x1E695F060];
    v29 = *(MEMORY[0x1E695F060] + 8);
    v30 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v26, v27, v21, v22, *MEMORY[0x1E695F060], v29);
    v32 = v31;

    v33 = [(PKTextInputElement *)v25 frame];
    v37 = v33;
    v38 = v34;
    if (v30 >= v33)
    {
      v37 = v33 + v35;
      if (v30 <= v33 + v35)
      {
        v37 = v30;
      }
    }

    if (v32 >= v34)
    {
      v38 = v34 + v36;
      if (v32 <= v34 + v36)
      {
        v38 = v32;
      }
    }

    v39 = [(PKTextInputElement *)v25 coordinateSpace];
    v40 = [(PKTextInputHoverController *)v20 view];
    v41 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v39, v40, v37, v38, v28, v29);
    v43 = v42;

    NonWhitespace = [(PKTextInputElementContent *)v24 indexOfLastNonWhitespaceCharacter];
    v45 = [(PKTextInputHoverController *)v20 view];
    v46 = [(PKTextInputElementContent *)v24 characterIndexClosestToPoint:v45 inCoordinateSpace:1 forInsertingText:0 adjustForLastCharacter:v41, v43];

    if (NonWhitespace != 0x7FFFFFFFFFFFFFFFLL && v46 != 0x7FFFFFFFFFFFFFFFLL && v46 < [(PKTextInputElementContent *)v24 contentLength]&& v46 > NonWhitespace)
    {
      v47 = [(PKTextInputHoverController *)v20 view];
      v48 = [(PKTextInputElementContent *)v24 caretRectForCharacterIndex:v46 inCoordinateSpace:v47];
      v50 = v49;
      v52 = v51;
      v54 = v53;

      *(v20 + 80) = 0;
LABEL_52:
      v69 = [(PKTextInputHoverController *)v20 _ibeamLayerCreateIfNecessary];
      v93 = [MEMORY[0x1E69DC888] grayColor];
      v94 = [v93 colorWithAlphaComponent:0.5];

      v119.origin.x = *(v20 + 160);
      v95 = *(v20 + 168);
      v119.size.width = *(v20 + 176);
      v119.size.height = *(v20 + 184);
      v119.origin.y = v95;
      IsEmpty = CGRectIsEmpty(v119);
      v97 = IsEmpty;
      if (IsEmpty)
      {
        v98 = v50;
      }

      else
      {
        v98 = (v50 + v95 * 3.0) * 0.25;
      }

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v69 setFrame:{v48, v98, v52, v54}];
      if (v97)
      {
        [MEMORY[0x1E6979518] commit];
        if (!CGColorEqualToColor([v69 backgroundColor], objc_msgSend(v94, "CGColor")))
        {
          [v69 setBackgroundColor:{objc_msgSend(v94, "CGColor")}];
        }
      }

      else
      {
        if (!CGColorEqualToColor([v69 backgroundColor], objc_msgSend(v94, "CGColor")))
        {
          [v69 setBackgroundColor:{objc_msgSend(v94, "CGColor")}];
        }

        [MEMORY[0x1E6979518] commit];
      }

      *(v20 + 160) = v48;
      *(v20 + 168) = v98;
      *(v20 + 176) = v52;
      *(v20 + 184) = v54;
      *(v20 + 136) = CACurrentMediaTime();
      v99 = [(PKTextInputHoverController *)v20 _cursorController];
      v100 = [v99 isCursorWeak];
      v101 = [(PKTextInputHoverController *)v20 _cursorController];
      [v101 setForceVisible:v100];

LABEL_62:
      goto LABEL_63;
    }

    if ([(PKTextInputElementContent *)v24 contentLength]< 1)
    {
      v55 = [(PKTextInputElementContent *)v24 selectedRange];
    }

    else
    {
      v55 = [(PKTextInputElementContent *)v24 contentLength];
    }

    v56 = v55;
    v57 = [(PKTextInputHoverController *)v20 view];
    v58 = [(PKTextInputElementContent *)v24 caretRectForCharacterIndex:v56 inCoordinateSpace:v57];
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v111.origin.x = v58;
    v111.origin.y = v60;
    v111.size.width = v62;
    v111.size.height = v64;
    if (CGRectIsNull(v111))
    {
      CGRectIsNull(*MEMORY[0x1E695F050]);
    }

    else
    {
      v109 = 0;
      v70 = [(PKTextInputHoverController *)v20 view];
      v71 = [(PKTextInputElementContent *)v24 caretRectForStartOfLineFromCharacterIndex:v56 coordinateSpace:v70 outCharacterIndex:&v109];
      v50 = v72;
      v74 = v73;
      v54 = v75;

      v48 = v71;
      v112.origin.x = v71;
      v112.origin.y = v50;
      v52 = v74;
      v112.size.width = v74;
      v112.size.height = v54;
      v76 = fmax(CGRectGetHeight(v112), 1.0);
      v77 = v109 - 1;
      if (v109 >= 1)
      {
        v78 = [(PKTextInputHoverController *)v20 view];
        v79 = [(PKTextInputElementContent *)v24 caretRectForStartOfLineFromCharacterIndex:v77 coordinateSpace:v78 outCharacterIndex:&v109];
        v81 = v80;
        v106 = v52;
        v107 = v43;
        v82 = v54;
        v83 = v48;
        v85 = v84;
        v87 = v86;

        v104 = v81;
        v105 = v79;
        v113.origin.x = v79;
        v113.origin.y = v81;
        v113.size.width = v85;
        v54 = v82;
        v43 = v107;
        width = v113.size.width;
        v103 = v87;
        v113.size.height = v87;
        Height = CGRectGetHeight(v113);
        v48 = v83;
        v114.origin.x = v83;
        v114.origin.y = v50;
        v52 = v106;
        v114.size.width = v106;
        v114.size.height = v54;
        if (vabdd_f64(Height, CGRectGetHeight(v114)) < 0.00999999978)
        {
          v115.origin.x = v48;
          v115.origin.y = v50;
          v115.size.width = v106;
          v115.size.height = v54;
          MinY = CGRectGetMinY(v115);
          v116.origin.y = v81;
          v116.origin.x = v105;
          v116.size.width = width;
          v116.size.height = v103;
          v76 = MinY - CGRectGetMinY(v116);
        }
      }

      v117.origin.x = v48;
      v117.origin.y = v50;
      v117.size.width = v52;
      v117.size.height = v54;
      if (!CGRectIsNull(v117) && v76 > 0.0)
      {
        v90 = +[PKHoverSettings sharedSettings];
        v91 = [v90 scribbleLineBreakMultiLineMaxLines];

        if (v91 < 1)
        {
          v92 = 0;
        }

        else
        {
          v92 = 0;
          while (1)
          {
            v118.origin.x = v48;
            v118.origin.y = v50;
            v118.size.width = v52;
            v118.size.height = v54;
            if (v43 <= CGRectGetMaxY(v118))
            {
              break;
            }

            v50 = v76 + v50;
            if (v91 == ++v92)
            {
              v92 = v91;
              break;
            }
          }
        }

        *(v20 + 80) = v92;
        goto LABEL_52;
      }
    }

    v65 = *(v20 + 128);
    if (v65)
    {
      v66 = [v65 backgroundColor];
      v67 = [MEMORY[0x1E69DC888] clearColor];
      LOBYTE(v66) = CGColorEqualToColor(v66, [v67 CGColor]);

      if ((v66 & 1) == 0)
      {
        v68 = [MEMORY[0x1E69DC888] clearColor];
        [*(v20 + 128) setBackgroundColor:{objc_msgSend(v68, "CGColor")}];
      }
    }

    *(v20 + 80) = 0;
    v69 = [(PKTextInputHoverController *)v20 _cursorController];
    [v69 setForceVisible:0];
    goto LABEL_62;
  }

LABEL_63:

LABEL_64:
}

- (uint64_t)performLineBreakAfterTapIfPossibleForElement:(double)a3 location:(CGFloat)a4
{
  v7 = a2;
  if (a1)
  {
    v8 = *(a1 + 96);
    v9 = *(a1 + 11);
    v10 = *(a1 + 80);
    v11 = *(a1 + 96);
    *(a1 + 96) = 0;

    *(a1 + 11) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    [(PKTextInputHoverController *)a1 hideIBeamLayer];
    v12 = [(PKTextInputElement *)v8 isEquivalentToElement:v7]& v9;
    if (v10 > 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      v14 = [(PKTextInputHoverController *)a1 _cursorController];
      v15 = [v14 isCursorWeak];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __84__PKTextInputHoverController_performLineBreakAfterTapIfPossibleForElement_location___block_invoke;
      v17[3] = &__block_descriptor_40_e35_v16__0__PKTextInputElementContent_8l;
      v17[4] = v10;
      [(PKTextInputElement *)v7 evaluateLineBreakForTapAtLocation:v15 weakCursor:0 allowTrailingWhitespace:v17 completion:a3, a4];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __84__PKTextInputHoverController_performLineBreakAfterTapIfPossibleForElement_location___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [(PKTextInputElementContent *)v3 contentLength];
    v6 = objc_opt_new();
    if (*(a1 + 32) >= 1)
    {
      v7 = 0;
      do
      {
        [v6 appendString:@"\n"];
        ++v7;
      }

      while (v7 < *(a1 + 32));
    }

    v9[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(PKTextInputElementContent *)v4 insertTextsToCommit:v8 withAlternatives:&unk_1F47C1D78 activePreviewText:0 replacingRange:v5 completion:0, &__block_literal_global_62];
  }
}

- (id)_ibeamLayerCreateIfNecessary
{
  v2 = a1 + 16;
  v3 = a1[16];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v3 setAllowsHitTesting:0];
    [v3 setCornerRadius:1.0];
    v4 = [(PKTextInputHoverController *)a1 view];
    v5 = [v4 layer];
    [v5 addSublayer:v3];

    objc_storeStrong(v2, v3);
  }

  return v3;
}

@end