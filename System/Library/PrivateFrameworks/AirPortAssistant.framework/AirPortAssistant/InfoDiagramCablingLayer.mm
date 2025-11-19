@interface InfoDiagramCablingLayer
- (id)initNoWANLinkFirstFrame;
- (id)initNoWANLinkLastFrame;
- (void)commonInit;
- (void)createPathForSublayer:(id)a3;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setIsCompactWidth:(BOOL)a3;
@end

@implementation InfoDiagramCablingLayer

- (void)commonInit
{
  v129[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_setFrame_(self, a2, v2, 0.0, 0.0, 10.0, 10.0);
  v6 = objc_msgSend_layer(MEMORY[0x277CD9F90], v4, v5);
  objc_msgSend_setInternetOuterLineLayer_(self, v7, v6);
  objc_msgSend_frame(self, v8, v9);
  objc_msgSend_setFrame_(self->internetOuterLineLayer, v10, v11);
  v12 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->internetOuterLineLayer, v13, v12);
  objc_msgSend_setName_(self->internetOuterLineLayer, v14, @"Internet");
  objc_msgSend_setDelegate_(self->internetOuterLineLayer, v15, self);
  v16 = *MEMORY[0x277CDA780];
  objc_msgSend_setLineCap_(self->internetOuterLineLayer, v17, *MEMORY[0x277CDA780]);
  objc_msgSend_setFillColor_(self->internetOuterLineLayer, v18, 0);
  objc_msgSend_addSublayer_(self, v19, self->internetOuterLineLayer);
  v22 = objc_msgSend_layer(MEMORY[0x277CD9F90], v20, v21);
  objc_msgSend_setInternetInnerLineLayer_(self, v23, v22);
  objc_msgSend_frame(self, v24, v25);
  objc_msgSend_setFrame_(self->internetInnerLineLayer, v26, v27);
  v28 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->internetInnerLineLayer, v29, v28);
  objc_msgSend_setName_(self->internetInnerLineLayer, v30, @"Internet");
  objc_msgSend_setDelegate_(self->internetInnerLineLayer, v31, self);
  objc_msgSend_setLineCap_(self->internetInnerLineLayer, v32, v16);
  objc_msgSend_setFillColor_(self->internetInnerLineLayer, v33, 0);
  objc_msgSend_addSublayer_(self, v34, self->internetInnerLineLayer);
  v37 = objc_msgSend_layer(MEMORY[0x277CD9EB0], v35, v36);
  objc_msgSend_setInternetGradientLayer_(self, v38, v37);
  objc_msgSend_frame(self, v39, v40);
  objc_msgSend_setFrame_(self->internetGradientLayer, v41, v42);
  objc_msgSend_setName_(self->internetGradientLayer, v43, @"Gradient");
  v46 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v44, v45, 0.0, 0.0);
  v49 = objc_msgSend_CGColor(v46, v47, v48);
  v52 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v50, v51, 0.0, 1.0);
  v129[0] = v49;
  v129[1] = objc_msgSend_CGColor(v52, v53, v54);
  v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v55, v129, 2);
  objc_msgSend_setColors_(self->internetGradientLayer, v57, v56);
  objc_msgSend_setStartPoint_(self->internetGradientLayer, v58, v59, 0.0, 0.5);
  objc_msgSend_setEndPoint_(self->internetGradientLayer, v60, v61, 0.5, 0.5);
  objc_msgSend_setLocations_(self->internetGradientLayer, v62, &unk_2851566C0);
  objc_msgSend_frame(self, v63, v64);
  objc_msgSend_setBounds_(self->internetGradientLayer, v65, v66);
  v69 = objc_msgSend_layer(MEMORY[0x277CD9F90], v67, v68);
  objc_msgSend_setBroadbandToWANOuterLineLayer_(self, v70, v69);
  objc_msgSend_frame(self, v71, v72);
  objc_msgSend_setFrame_(self->broadbandToWANOuterLineLayer, v73, v74);
  v75 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->broadbandToWANOuterLineLayer, v76, v75);
  objc_msgSend_setName_(self->broadbandToWANOuterLineLayer, v77, @"BroadbandToWAN");
  objc_msgSend_setDelegate_(self->broadbandToWANOuterLineLayer, v78, self);
  objc_msgSend_setLineCap_(self->broadbandToWANOuterLineLayer, v79, v16);
  objc_msgSend_setFillColor_(self->broadbandToWANOuterLineLayer, v80, 0);
  objc_msgSend_addSublayer_(self, v81, self->broadbandToWANOuterLineLayer);
  v84 = objc_msgSend_layer(MEMORY[0x277CD9F90], v82, v83);
  objc_msgSend_setBroadbandToWANInnerLineLayer_(self, v85, v84);
  objc_msgSend_frame(self, v86, v87);
  objc_msgSend_setFrame_(self->broadbandToWANInnerLineLayer, v88, v89);
  v90 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->broadbandToWANInnerLineLayer, v91, v90);
  objc_msgSend_setName_(self->broadbandToWANInnerLineLayer, v92, @"BroadbandToWAN");
  objc_msgSend_setDelegate_(self->broadbandToWANInnerLineLayer, v93, self);
  objc_msgSend_setLineCap_(self->broadbandToWANInnerLineLayer, v94, v16);
  objc_msgSend_setFillColor_(self->broadbandToWANInnerLineLayer, v95, 0);
  objc_msgSend_addSublayer_(self, v96, self->broadbandToWANInnerLineLayer);
  v99 = objc_msgSend_layer(MEMORY[0x277CD9F90], v97, v98);
  objc_msgSend_setSwapArcLineLayer_(self, v100, v99);
  objc_msgSend_frame(self, v101, v102);
  objc_msgSend_setFrame_(self->swapArcLineLayer, v103, v104);
  v105 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->swapArcLineLayer, v106, v105);
  objc_msgSend_setName_(self->swapArcLineLayer, v107, @"SwapArcLine");
  objc_msgSend_setDelegate_(self->swapArcLineLayer, v108, self);
  v109 = *MEMORY[0x277CDA788];
  objc_msgSend_setLineCap_(self->swapArcLineLayer, v110, *MEMORY[0x277CDA788]);
  objc_msgSend_setFillColor_(self->swapArcLineLayer, v111, 0);
  objc_msgSend_addSublayer_(self, v112, self->swapArcLineLayer);
  v115 = objc_msgSend_layer(MEMORY[0x277CD9F90], v113, v114);
  objc_msgSend_setSwapArcArrowLayer_(self, v116, v115);
  objc_msgSend_frame(self, v117, v118);
  objc_msgSend_setFrame_(self->swapArcArrowLayer, v119, v120);
  v121 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->swapArcArrowLayer, v122, v121);
  objc_msgSend_setName_(self->swapArcArrowLayer, v123, @"SwapArcArrow");
  objc_msgSend_setDelegate_(self->swapArcArrowLayer, v124, self);
  objc_msgSend_setLineCap_(self->swapArcArrowLayer, v125, v109);
  objc_msgSend_setLineJoin_(self->swapArcArrowLayer, v126, *MEMORY[0x277CDA798]);
  objc_msgSend_setFillColor_(self->swapArcArrowLayer, v127, 0);
  objc_msgSend_addSublayer_(self, v128, self->swapArcArrowLayer);
}

- (id)initNoWANLinkFirstFrame
{
  NSLog(&cfstr_S.isa, a2, "[InfoDiagramCablingLayer initNoWANLinkFirstFrame]");
  v14.receiver = self;
  v14.super_class = InfoDiagramCablingLayer;
  v3 = [(InfoDiagramCablingLayer *)&v14 init];
  p_isa = &v3->super.super.isa;
  if (v3)
  {
    objc_msgSend_commonInit(v3, v4, v5);
    v7 = sub_23EBFD680(0.556862745, 0.556862745, 0.576470588, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[9], v8, v7);
    objc_msgSend_setStrokeColor_(p_isa[12], v9, v7);
    CGColorRelease(v7);
    v10 = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[8], v11, v10);
    objc_msgSend_setStrokeColor_(p_isa[11], v12, v10);
    CGColorRelease(v10);
  }

  return p_isa;
}

- (id)initNoWANLinkLastFrame
{
  NSLog(&cfstr_S.isa, a2, "[InfoDiagramCablingLayer initNoWANLinkLastFrame]");
  v20.receiver = self;
  v20.super_class = InfoDiagramCablingLayer;
  v3 = [(InfoDiagramCablingLayer *)&v20 init];
  p_isa = &v3->super.super.isa;
  if (v3)
  {
    objc_msgSend_commonInit(v3, v4, v5);
    v7 = sub_23EBFD680(0.556862745, 0.556862745, 0.576470588, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[9], v8, v7);
    CGColorRelease(v7);
    v9 = sub_23EBFD680(0.0, 0.501960784, 0.992156863, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[12], v10, v9);
    CGColorRelease(v9);
    v11 = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[8], v12, v11);
    CGColorRelease(v11);
    v13 = sub_23EBFD680(0.549019608, 0.77254902, 0.992156863, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[11], v14, v13);
    CGColorRelease(v13);
    v15 = sub_23EBFD680(0.992156863, 0.223529412, 0.207843137, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[13], v16, v15);
    objc_msgSend_setStrokeColor_(p_isa[14], v17, v15);
    objc_msgSend_setFillColor_(p_isa[14], v18, v15);
    CGColorRelease(v15);
  }

  return p_isa;
}

- (void)setIsCompactWidth:(BOOL)a3
{
  internetOuterLineLayer = self->internetOuterLineLayer;
  if (a3)
  {
    v6 = 4.0;
  }

  else
  {
    v6 = 5.0;
  }

  if (a3)
  {
    v7 = 2.0;
  }

  else
  {
    v7 = 3.0;
  }

  objc_msgSend_setLineWidth_(internetOuterLineLayer, a2, a3, v6);
  objc_msgSend_setLineWidth_(self->internetInnerLineLayer, v8, v9, v7);
  objc_msgSend_setLineWidth_(self->broadbandToWANOuterLineLayer, v10, v11, v6);
  objc_msgSend_setLineWidth_(self->broadbandToWANInnerLineLayer, v12, v13, v7);
  objc_msgSend_setLineWidth_(self->swapArcLineLayer, v14, v15, v6);
  objc_msgSend_setLineWidth_(self->swapArcArrowLayer, v16, v17, 4.0);
  self->isCompactWidth = a3;
}

- (void)dealloc
{
  objc_msgSend_setDelegate_(self->internetInnerLineLayer, a2, 0);
  objc_msgSend_setInternetInnerLineLayer_(self, v3, 0);
  objc_msgSend_setDelegate_(self->internetOuterLineLayer, v4, 0);
  objc_msgSend_setInternetOuterLineLayer_(self, v5, 0);
  objc_msgSend_setDelegate_(self->internetGradientLayer, v6, 0);
  objc_msgSend_setInternetGradientLayer_(self, v7, 0);
  objc_msgSend_setDelegate_(self->broadbandToWANInnerLineLayer, v8, 0);
  objc_msgSend_setBroadbandToWANInnerLineLayer_(self, v9, 0);
  objc_msgSend_setDelegate_(self->broadbandToWANOuterLineLayer, v10, 0);
  objc_msgSend_setBroadbandToWANOuterLineLayer_(self, v11, 0);
  objc_msgSend_setDelegate_(self->swapArcLineLayer, v12, 0);
  objc_msgSend_setSwapArcLineLayer_(self, v13, 0);
  objc_msgSend_setDelegate_(self->swapArcArrowLayer, v14, 0);
  objc_msgSend_setSwapArcArrowLayer_(self, v15, 0);
  v16.receiver = self;
  v16.super_class = InfoDiagramCablingLayer;
  [(InfoDiagramCablingLayer *)&v16 dealloc];
}

- (void)layoutSublayers
{
  objc_msgSend_bounds(self, a2, v2);
  NSLog(&cfstr_S.isa, "[InfoDiagramCablingLayer layoutSublayers]");
  objc_msgSend_frame(self->internetInnerLineLayer, v4, v5);
  objc_msgSend_createPathForSublayer_(self, v6, self->internetInnerLineLayer);
  objc_msgSend_setNeedsDisplay(self->internetInnerLineLayer, v7, v8);
  objc_msgSend_frame(self->internetOuterLineLayer, v9, v10);
  objc_msgSend_createPathForSublayer_(self, v11, self->internetOuterLineLayer);
  objc_msgSend_setNeedsDisplay(self->internetOuterLineLayer, v12, v13);
  objc_msgSend_frame(self->internetGradientLayer, v14, v15);
  objc_msgSend_frame(self->broadbandToWANInnerLineLayer, v16, v17);
  objc_msgSend_createPathForSublayer_(self, v18, self->broadbandToWANInnerLineLayer);
  objc_msgSend_setNeedsDisplay(self->broadbandToWANInnerLineLayer, v19, v20);
  objc_msgSend_frame(self->broadbandToWANOuterLineLayer, v21, v22);
  objc_msgSend_createPathForSublayer_(self, v23, self->broadbandToWANOuterLineLayer);
  objc_msgSend_setNeedsDisplay(self->broadbandToWANOuterLineLayer, v24, v25);
  if (self->swapCabling)
  {
    objc_msgSend_frame(self->swapArcLineLayer, v26, v27);
    objc_msgSend_createPathForSublayer_(self, v28, self->swapArcLineLayer);
    objc_msgSend_frame(self->swapArcArrowLayer, v29, v30);
    objc_msgSend_createPathForSublayer_(self, v31, self->swapArcArrowLayer);
    objc_msgSend_setNeedsDisplay(self->swapArcLineLayer, v32, v33);
    swapArcArrowLayer = self->swapArcArrowLayer;

    objc_msgSend_setNeedsDisplay(swapArcArrowLayer, v34, v35);
  }
}

- (void)createPathForSublayer:(id)a3
{
  if (objc_msgSend_path(a3, a2, a3))
  {
    return;
  }

  v7 = objc_msgSend_name(a3, v5, v6);
  NSLog(&cfstr_SLayerNameIs.isa, "[InfoDiagramCablingLayer createPathForSublayer:]", v7);
  Mutable = CGPathCreateMutable();
  v11 = objc_msgSend_name(a3, v9, v10);
  if (objc_msgSend_isEqualToString_(v11, v12, @"Internet"))
  {
    v15 = objc_msgSend_internetPoint(self->diagramAnchorPointDelegate, v13, v14);
    v19 = sub_23EB7BE9C(v18, v15, v16, v17);
    v21 = v20;
    v24 = objc_msgSend_broadbandInPoint(self->diagramAnchorPointDelegate, v22, v23);
    v28 = sub_23EB7BE9C(v27, v24, v25, v26);
    v30 = v29;
    CGPathMoveToPoint(Mutable, 0, v19, v21);
    CGPathAddLineToPoint(Mutable, 0, v28, v21);
    v31 = Mutable;
    v32 = v28;
    v33 = v30;
  }

  else
  {
    v34 = objc_msgSend_name(a3, v13, v14);
    if (!objc_msgSend_isEqualToString_(v34, v35, @"BroadbandToWAN"))
    {
      if (self->swapCabling)
      {
        v63 = objc_msgSend_name(a3, v36, v37);
        if (objc_msgSend_isEqualToString_(v63, v64, @"SwapArcArrow"))
        {
          objc_msgSend_swapArcLineEndPoint(self->diagramAnchorPointDelegate, v36, v65);
          v67 = v66;
          v69 = v68;
          v70 = CGPathCreateMutable();
          CGPathMoveToPoint(v70, 0, v67 + -3.0, v69 + -3.0);
          CGPathAddLineToPoint(v70, 0, v67 + 2.5, v69 + 4.0);
          CGPathAddLineToPoint(v70, 0, v67 + 5.5, v69 + -3.0);
          CGPathCloseSubpath(v70);
          CGPathAddPath(Mutable, 0, v70);
          CGPathRelease(v70);
        }

        else if (self->swapCabling)
        {
          v71 = objc_msgSend_name(a3, v36, v65);
          if (objc_msgSend_isEqualToString_(v71, v72, @"SwapArcLine"))
          {
            objc_msgSend_swapArcLineStartPoint(self->diagramAnchorPointDelegate, v36, v73);
            v75 = v74;
            v77 = v76;
            objc_msgSend_swapArcLineEndPoint(self->diagramAnchorPointDelegate, v78, v79);
            v81 = v80;
            v83 = v82;
            objc_msgSend_swapArcControlPoint1(self->diagramAnchorPointDelegate, v84, v85);
            v87 = v86;
            v89 = v88;
            objc_msgSend_swapArcControlPoint2(self->diagramAnchorPointDelegate, v90, v91);
            v93 = v92;
            v95 = v94;
            if (v75 != v81 || v77 != v83)
            {
              CGPathMoveToPoint(Mutable, 0, v75, v77);
              CGPathAddCurveToPoint(Mutable, 0, v87, v89, v93, v95, v81 + 4.0, v83);
            }
          }
        }
      }

      goto LABEL_7;
    }

    v38 = objc_msgSend_internetPoint(self->diagramAnchorPointDelegate, v36, v37);
    v42 = sub_23EB7BE9C(v41, v38, v39, v40);
    v44 = v43;
    v47 = objc_msgSend_broadbandOutPoint(self->diagramAnchorPointDelegate, v45, v46, v42);
    v51 = sub_23EB7BE9C(v50, v47, v48, v49);
    v53 = v52;
    v56 = objc_msgSend_wanConnectedBaseWANPoint(self->diagramAnchorPointDelegate, v54, v55);
    v60 = sub_23EB7BE9C(v59, v56, v57, v58);
    v62 = v61;
    CGPathMoveToPoint(Mutable, 0, v51, v53);
    CGPathAddLineToPoint(Mutable, 0, v51, v44);
    CGPathAddLineToPoint(Mutable, 0, v60, v44);
    v31 = Mutable;
    v32 = v60;
    v33 = v62;
  }

  CGPathAddLineToPoint(v31, 0, v32, v33);
LABEL_7:
  objc_msgSend_setPath_(a3, v36, Mutable);

  CGPathRelease(Mutable);
}

@end