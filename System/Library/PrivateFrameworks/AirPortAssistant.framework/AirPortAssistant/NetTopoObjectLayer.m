@interface NetTopoObjectLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations;
- (CGPoint)layoutOrigin;
- (CGRect)getFrameContainingAllSublayers;
- (CGRect)getUserInteractionBounds;
- (CGSize)boundsSizeConstraint;
- (NetTopoObjectLayer)init;
- (NetTopoObjectLayer)initWithUIStyle:(int)a3 andOwningView:(id)a4;
- (NetTopoObjectLayer)parentDevice;
- (id)childAtIndex:(unint64_t)a3;
- (id)debugDescription;
- (id)describeOne:(id)a3 uiLayer:(id)a4 indent:(unint64_t)a5;
- (id)firstChild;
- (id)lastChild;
- (void)addChild:(id)a3;
- (void)dealloc;
- (void)deallocStatusImages;
- (void)drawInContext:(CGContext *)a3;
- (void)initNetTopoObjectLayerCommonWithStyle:(int)a3 andOwningView:(id)a4;
- (void)insertChild:(id)a3 atIndex:(unint64_t)a4;
- (void)layoutSublayers;
- (void)loadStatusImagesForScale:(double)a3;
- (void)pickCorrectImagesForContentsScale:(double)a3;
- (void)removeChild:(id)a3;
- (void)setBoundsSizeConstraint:(CGSize)a3;
- (void)setLabel:(id)a3;
- (void)setOwningView:(id)a3;
- (void)setSecondaryLabel:(id)a3;
- (void)setStatusBadgeImage:(id)a3;
- (void)setStatusBadgeImagePriv:(id)a3;
- (void)setStatusLightMode:(unsigned int)a3;
- (void)setStatusLightStateFromMode;
- (void)setTopoBadgeNumber:(unint64_t)a3;
- (void)setTopoProgressValue:(float)a3;
- (void)statusLightUpdateTimer:(id)a3;
@end

@implementation NetTopoObjectLayer

- (void)initNetTopoObjectLayerCommonWithStyle:(int)a3 andOwningView:(id)a4
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer initNetTopoObjectLayerCommonWithStyle:andOwningView:]", 800, "%@\n", v4, v5, v6, v7, self);
  }

  self->_topoStyle = a3;
  objc_msgSend_setOwningView_(self, a2, a4);
  objc_msgSend_setEdgeAntialiasingMask_(self, v11, 0);
  self->_layoutScale = 1.0;
  self->_isExpanded = 1;
  self->_smallSize = 0;
  self->_selectable = 1;
  self->_boundsSizeConstraint = *MEMORY[0x277CBF3A8];
  self->_parent = 0;
  self->_children = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  self->_imageFrame.origin = *MEMORY[0x277CBF3A0];
  self->_imageFrame.size = v13;
  self->_imageSelectionFrame.origin = v12;
  self->_imageSelectionFrame.size = v13;
  self->_selectionColor = sub_23EBFD680(0.0, 0.0, 0.0, 0.3);
  v16 = sub_23EC13544(a4, v14, v15);
  v17 = 20.0;
  v18 = 14.0;
  if (v16 == 1)
  {
    v17 = 14.0;
    v18 = 10.0;
  }

  self->_selectionCornerRadius = v17;
  self->_selectionRectOutset = v18;
  self->_labelUnselectedFillColor = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  self->_labelSelectedFillColor = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  v19 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  self->_labelSelectedFillColor2 = v19;
  if (sub_23EC132F8(v19, v20, v21))
  {
    v24 = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v22, v23);
    v27 = objc_msgSend_CGColor(v24, v25, v26);
    v28 = CGColorRetain(v27);
  }

  else
  {
    v28 = sub_23EBFD680(0.305882353, 0.337254902, 0.423529412, 1.0);
  }

  self->_labelUnselectedTextColor = v28;
  v31 = objc_msgSend__tertiaryLabelColor(MEMORY[0x277D75348], v29, v30);
  v34 = objc_msgSend_CGColor(v31, v32, v33);
  self->_secondaryLabelUnselectedTextColor = CGColorRetain(v34);
  self->_secondaryLabelSelectedTextColor = sub_23EBFD680(0.4, 0.4, 0.4, 1.0);
  self->_labelSelectedTextColor = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
  objc_msgSend_contentsScale(self, v35, v36);
  objc_msgSend_loadStatusImagesForScale_(self, v37, v38);
  objc_msgSend_setZPosition_(self, v39, v40, 1000.0);
  v43 = sub_23EC13544(a4, v41, v42);
  if (v43 == 2)
  {
    v46 = 292.0;
  }

  else
  {
    v46 = 144.0;
  }

  if (v43 == 2)
  {
    v47 = 292.0;
  }

  else
  {
    v47 = 124.0;
  }

  objc_msgSend_setFrame_(self, v44, v45, 0.0, 0.0, v47, v46);
}

- (NetTopoObjectLayer)initWithUIStyle:(int)a3 andOwningView:(id)a4
{
  v9 = *&a3;
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer initWithUIStyle:andOwningView:]", 800, "\n", v4, v5, v6, v7, v15.receiver);
  }

  v15.receiver = self;
  v15.super_class = NetTopoObjectLayer;
  v11 = [(NetTopoObjectLayer *)&v15 init];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_initNetTopoObjectLayerCommonWithStyle_andOwningView_(v11, v12, v9, a4);
  }

  return v13;
}

- (NetTopoObjectLayer)init
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer init]", 800, "\n", v2, v3, v4, v5, v11.receiver);
  }

  v11.receiver = self;
  v11.super_class = NetTopoObjectLayer;
  v7 = [(NetTopoObjectLayer *)&v11 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_initNetTopoObjectLayerCommonWithStyle_andOwningView_(v7, v8, 0, 0);
  }

  return v9;
}

- (void)dealloc
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer dealloc]", 800, "%@\n", v2, v3, v4, v5, self);
  }

  objc_msgSend_setObjectImage_(self, v7, 0);
  objc_msgSend_deallocStatusImages(self, v8, v9);

  CGColorRelease(self->_selectionColor);
  CGColorRelease(self->_labelUnselectedFillColor);
  CGColorRelease(self->_labelSelectedFillColor);
  CGColorRelease(self->_labelUnselectedTextColor);
  CGColorRelease(self->_labelSelectedTextColor);
  CGColorRelease(self->_labelSelectedFillColor2);
  CGColorRelease(self->_secondaryLabelUnselectedTextColor);
  CGColorRelease(self->_secondaryLabelSelectedTextColor);
  v10.receiver = self;
  v10.super_class = NetTopoObjectLayer;
  [(NetTopoObjectLayer *)&v10 dealloc];
}

- (void)pickCorrectImagesForContentsScale:(double)a3
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer pickCorrectImagesForContentsScale:]", 800, "scale = %.1f\n", v4, v5, v6, v7, *&a3);
  }

  objc_msgSend_loadStatusImagesForScale_(self, a2, v3, a3);
  v13 = objc_msgSend_statusLightMode(self, v10, v11);

  objc_msgSend_setStatusLightMode_(self, v12, v13);
}

- (NetTopoObjectLayer)parentDevice
{
  if (!objc_msgSend_parent(self, a2, v2))
  {
    return 0;
  }

  objc_msgSend_parent(self, v4, v5);
  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    return 0;
  }

  v10 = objc_msgSend_parent(self, v7, v8);

  return objc_msgSend_parent(v10, v11, v12);
}

- (id)childAtIndex:(unint64_t)a3
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer childAtIndex:]", 800, "index %d  _children %@\n", v3, v4, v5, v6, a3);
  }

  if (objc_msgSend_count(self->_children, a2, a3) <= a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_objectAtIndex_(self->_children, v9, a3);
  }

  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer childAtIndex:]", 800, "returning foundChild %@\n", v10, v11, v12, v13, v14);
  }

  return v14;
}

- (id)firstChild
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer firstChild]", 800, "getting first child for %@\n", v2, v3, v4, v5, self);
  }

  v11 = objc_msgSend_childAtIndex_(self, a2, 0);
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer firstChild]", 800, "returning firstChild %@\n", v7, v8, v9, v10, v11);
  }

  return v11;
}

- (id)lastChild
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer lastChild]", 800, "getting last child for %@\n", v3, v4, v5, v6, self);
  }

  v8 = objc_msgSend_count(self->_children, a2, v2);
  if (v8)
  {
    v14 = objc_msgSend_childAtIndex_(self, v9, v8 - 1);
  }

  else
  {
    v14 = 0;
  }

  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer lastChild]", 800, "returning lastChild %@\n", v10, v11, v12, v13, v14);
  }

  return v14;
}

- (void)insertChild:(id)a3 atIndex:(unint64_t)a4
{
  if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer insertChild:atIndex:]", 800, "inserting child %@ at index %d\n", v4, v5, v6, v7, a3);
  }

  if (objc_msgSend_count(self->_children, a2, a3) <= a4)
  {
    if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
    {
      sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer insertChild:atIndex:]", 800, "growing child array\n", v12, v13, v14, v15, v22);
    }

    objc_msgSend_addChild_(self, v11, a3);
  }

  else
  {
    if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
    {
      v16 = objc_msgSend_objectAtIndex_(self->_children, v11, a4);
      sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer insertChild:atIndex:]", 800, "replacing existing object %@\n", v17, v18, v19, v20, v16);
    }

    objc_msgSend_replaceObjectAtIndex_withObject_(self->_children, v11, a4, a3);

    objc_msgSend_setParent_(a3, v21, self);
  }
}

- (void)addChild:(id)a3
{
  if (objc_msgSend_indexOfObjectIdenticalTo_(self->_children, a2, a3) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_addObject_(self->_children, v5, a3);

    objc_msgSend_setParent_(a3, v10, self);
  }

  else if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer addChild:]", 800, "new child %@ is already in the child array\n", v6, v7, v8, v9, a3);
  }
}

- (void)removeChild:(id)a3
{
  if (a3 && objc_msgSend_containsObject_(self->_children, a2, a3))
  {
    objc_msgSend_setParent_(a3, v9, 0);
    children = self->_children;

    objc_msgSend_removeObject_(children, v10, a3);
  }

  else if (dword_27E382FE8 <= 800 && (dword_27E382FE8 != -1 || sub_23EB74AC8(&dword_27E382FE8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FE8, "[NetTopoObjectLayer removeChild:]", 800, "attempting to remove child %@ that's not in the child array\n", v3, v4, v5, v6, a3);
  }
}

- (void)setBoundsSizeConstraint:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setBoundsSizeConstraint:]", 800, "constraint = (w = %.2f h = %.2f)\n", v4, v5, v6, v7, *&width);
  }

  self->_boundsSizeConstraint.width = width;
  self->_boundsSizeConstraint.height = height;
  objc_msgSend_setBoundsSizeConstraint_(self->_labelLayer, a2, v3, width, height);
  objc_msgSend_setBoundsSizeConstraint_(self->_secondaryLabelLayer, v11, v12, width, height);

  objc_msgSend_setNeedsLayout(self, v13, v14);
}

- (CGSize)boundsSizeConstraint
{
  width = self->_boundsSizeConstraint.width;
  height = self->_boundsSizeConstraint.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setOwningView:(id)a3
{
  self->_owningView = a3;
  v4 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, a3);
  objc_msgSend_scale(v4, v5, v6);

  MEMORY[0x2821F9670](self, sel_setContentsScale_, v7);
}

- (void)setLabel:(id)a3
{
  if (!self->_labelLayer)
  {
    v5 = [BubbleTextLayer alloc];
    v8 = objc_msgSend_owningView(self, v6, v7);
    self->_labelLayer = objc_msgSend_initWithOwningView_(v5, v9, v8);
    if (objc_msgSend_smallSize(self, v10, v11))
    {
      v14 = objc_msgSend_setFontSize_(self->_labelLayer, v12, v13, 13.0);
    }

    else
    {
      topoStyle = self->_topoStyle;
      if (topoStyle != 1)
      {
        if (topoStyle)
        {
LABEL_13:
          objc_msgSend_setForegroundColor_(self->_labelLayer, v12, self->_labelUnselectedTextColor);
          objc_msgSend_addSublayer_(self, v35, self->_labelLayer);
          goto LABEL_14;
        }

        objc_msgSend_setStatusLightMode_(self, v12, 0);
        v20 = objc_msgSend_setFontSize_(self->_labelLayer, v18, v19, 17.0);
        if (!sub_23EC132F8(v20, v21, v22))
        {
          objc_msgSend_setFont_(self->_labelLayer, v23, @"Helvetica-Bold");
          goto LABEL_13;
        }

        v25 = MEMORY[0x277D74300];
        objc_msgSend_fontSize(self->_labelLayer, v23, v24);
        v28 = objc_msgSend_boldSystemFontOfSize_(v25, v26, v27);
LABEL_11:
        objc_msgSend_setFont_(self->_labelLayer, v29, v28);
        goto LABEL_13;
      }

      v14 = objc_msgSend_setFontSize_(self->_labelLayer, v12, v13, 15.0);
    }

    if (!sub_23EC132F8(v14, v15, v16))
    {
      objc_msgSend_setFont_(self->_labelLayer, v30, @"Helvetica");
      goto LABEL_13;
    }

    v32 = MEMORY[0x277D74300];
    objc_msgSend_fontSize(self->_labelLayer, v30, v31);
    v28 = objc_msgSend_systemFontOfSize_(v32, v33, v34);
    goto LABEL_11;
  }

LABEL_14:
  v36 = a3;

  self->_labelString = a3;
  objc_msgSend_setString_(self->_labelLayer, v37, a3);
  objc_msgSend_setNeedsLayout(self->_labelLayer, v38, v39);

  objc_msgSend_layoutSublayers(self, v40, v41);
}

- (void)setSecondaryLabel:(id)a3
{
  if (!self->_secondaryLabelLayer)
  {
    v5 = [BubbleTextLayer alloc];
    v8 = objc_msgSend_owningView(self, v6, v7);
    self->_secondaryLabelLayer = objc_msgSend_initWithOwningView_(v5, v9, v8);
    if (objc_msgSend_smallSize(self, v10, v11))
    {
      v14 = objc_msgSend_setFontSize_(self->_secondaryLabelLayer, v12, v13, 11.0);
    }

    else
    {
      v14 = objc_msgSend_setFontSize_(self->_secondaryLabelLayer, v12, v13, 14.0);
    }

    if (sub_23EC132F8(v14, v15, v16))
    {
      v19 = MEMORY[0x277D74300];
      objc_msgSend_fontSize(self->_secondaryLabelLayer, v17, v18);
      v22 = objc_msgSend_systemFontOfSize_(v19, v20, v21);
      objc_msgSend_setFont_(self->_secondaryLabelLayer, v23, v22);
    }

    else
    {
      objc_msgSend_setFont_(self->_secondaryLabelLayer, v17, @"Helvetica");
    }

    objc_msgSend_setForegroundColor_(self->_secondaryLabelLayer, v24, self->_secondaryLabelUnselectedTextColor);
    objc_msgSend_addSublayer_(self, v25, self->_secondaryLabelLayer);
  }

  v26 = a3;

  self->_secondaryLabelString = a3;
  objc_msgSend_setString_(self->_secondaryLabelLayer, v27, a3);
  objc_msgSend_setNeedsLayout(self->_secondaryLabelLayer, v28, v29);

  objc_msgSend_layoutSublayers(self, v30, v31);
}

- (void)setTopoProgressValue:(float)a3
{
  topoProgressBar = self->_topoProgressBar;
  if (!topoProgressBar)
  {
    v7 = [TopoProgressBar alloc];
    v10 = objc_msgSend_owningView(self, v8, v9);
    v12 = objc_msgSend_initWithOwningView_(v7, v11, v10);
    self->_topoProgressBar = v12;
    objc_msgSend_addSublayer_(self, v13, v12);
    topoProgressBar = self->_topoProgressBar;
  }

  *&v14 = a3;
  objc_msgSend_setProgressValue_(topoProgressBar, a2, v3, v14);

  objc_msgSend_layoutSublayers(self, v15, v16);
}

- (void)setTopoBadgeNumber:(unint64_t)a3
{
  topoNumberBadge = self->_topoNumberBadge;
  if (!topoNumberBadge)
  {
    v6 = [TopoNumberBadge alloc];
    v9 = objc_msgSend_owningView(self, v7, v8);
    topoNumberBadge = objc_msgSend_initWithOwningView_(v6, v10, v9);
    self->_topoNumberBadge = topoNumberBadge;
  }

  objc_msgSend_setCount_(topoNumberBadge, a2, a3);
  self->_topoBadgeNumber = a3;
  v11 = self->_topoNumberBadge;
  labelLayer = self->_labelLayer;

  MEMORY[0x2821F9670](labelLayer, sel_setRightAccessoryLayer_, v11);
}

- (void)loadStatusImagesForScale:(double)a3
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer loadStatusImagesForScale:]", 800, "\n", v3, v4, v5, v6, v28);
  }

  if (!self->_statusLights[0])
  {
    v8 = MEMORY[0x277CCA8D8];
    v9 = objc_opt_class();
    v11 = objc_msgSend_bundleForClass_(v8, v10, v9);
    self->_statusLights[0] = objc_msgSend_imageNamed_inBundle_(ImageStore, v12, @"StatusLightGrayOff.png", v11);
  }

  if (!self->_statusLights[1])
  {
    v13 = MEMORY[0x277CCA8D8];
    v14 = objc_opt_class();
    v16 = objc_msgSend_bundleForClass_(v13, v15, v14);
    self->_statusLights[1] = objc_msgSend_imageNamed_inBundle_(ImageStore, v17, @"StatusLightAmberOn.png", v16);
  }

  if (!self->_statusLights[2])
  {
    v18 = MEMORY[0x277CCA8D8];
    v19 = objc_opt_class();
    v21 = objc_msgSend_bundleForClass_(v18, v20, v19);
    self->_statusLights[2] = objc_msgSend_imageNamed_inBundle_(ImageStore, v22, @"StatusLightBlueOn.png", v21);
  }

  if (!self->_statusLights[3])
  {
    v23 = MEMORY[0x277CCA8D8];
    v24 = objc_opt_class();
    v26 = objc_msgSend_bundleForClass_(v23, v25, v24);
    self->_statusLights[3] = objc_msgSend_imageNamed_inBundle_(ImageStore, v27, @"StatusLightGreenOn.png", v26);
  }
}

- (void)deallocStatusImages
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer deallocStatusImages]", 800, "\n", v3, v4, v5, v6, v10);
  }

  statusLightTimer = self->_statusLightTimer;
  if (statusLightTimer)
  {
    objc_msgSend_invalidate(statusLightTimer, a2, v2);
    self->_statusLightTimer = 0;
  }

  statusLights = self->_statusLights;

  *statusLights = 0;
  statusLights[1] = 0;

  statusLights[2] = 0;
  statusLights[3] = 0;
}

- (void)setStatusBadgeImagePriv:(id)a3
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusBadgeImagePriv:]", 800, "\n", v3, v4, v5, v6, v27);
  }

  if (!a3)
  {
    if (!objc_msgSend_image(self->_labelLayer, a2, a3))
    {
      return;
    }

    objc_msgSend_setImage_(self->_labelLayer, v21, 0);
    goto LABEL_15;
  }

  objc_msgSend_contentsScale(self, a2, a3);
  v10 = objc_msgSend_cgImageFromImage_forContentsScale_(ImageStore, v9, a3);
  if (objc_msgSend_image(self->_labelLayer, v11, v12))
  {
    v15 = objc_msgSend_image(self->_labelLayer, v13, v14);
    Width = CGImageGetWidth(v15);
    v19 = objc_msgSend_image(self->_labelLayer, v17, v18);
    Height = CGImageGetHeight(v19);
  }

  else
  {
    Width = *MEMORY[0x277CBF3A8];
    Height = *(MEMORY[0x277CBF3A8] + 8);
  }

  objc_msgSend_setImage_(self->_labelLayer, v13, v10);
  v24 = CGImageGetWidth(v10);
  v25 = CGImageGetHeight(v10);
  if (Width != v24 || Height != v25)
  {
LABEL_15:

    objc_msgSend_setNeedsLayout(self, v22, v23);
  }
}

- (void)setStatusBadgeImage:(id)a3
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusBadgeImage:]", 800, "\n", v3, v4, v5, v6, v11);
  }

  v9 = a3;

  self->_statusBadgeImage = a3;

  objc_msgSend_setStatusLightMode_(self, v10, 1);
}

- (void)setStatusLightStateFromMode
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusLightStateFromMode]", 800, "entered with _statusLightMode = %d\n", v2, v3, v4, v5, self->_statusLightMode);
  }

  statusLightMode = self->_statusLightMode;
  if (statusLightMode > 4)
  {
    if (statusLightMode == 5)
    {
      if (self->_statusLightState)
      {
        v8 = 0;
      }

      else
      {
        v8 = 3;
      }

      goto LABEL_23;
    }

    if (statusLightMode != 6)
    {
      if (statusLightMode == 7)
      {
        if (self->_statusLightState == 1)
        {
          v8 = 3;
        }

        else
        {
          v8 = 1;
        }

        goto LABEL_23;
      }

LABEL_20:
      v8 = 0;
      goto LABEL_23;
    }

    v8 = 2;
  }

  else
  {
    if (statusLightMode == 2)
    {
      v8 = 1;
      goto LABEL_23;
    }

    if (statusLightMode != 3)
    {
      if (statusLightMode == 4)
      {
        v8 = 3;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v8 = self->_statusLightState == 0;
  }

LABEL_23:
  self->_statusLightState = v8;
  if (self->_statusLightMode == 1)
  {
    p_statusBadgeImage = &self->_statusBadgeImage;
  }

  else
  {
    p_statusBadgeImage = &self->_statusLights[v8];
  }

  v10 = *p_statusBadgeImage;

  MEMORY[0x2821F9670](self, sel_setStatusBadgeImagePriv_, v10);
}

- (void)statusLightUpdateTimer:(id)a3
{
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer statusLightUpdateTimer:]", 800, "\n", v3, v4, v5, v6, v8);
  }

  MEMORY[0x2821F9670](self, sel_setStatusLightStateFromMode, a3);
}

- (void)setStatusLightMode:(unsigned int)a3
{
  v7 = *&a3;
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer setStatusLightMode:]", 800, "entered with mode = %d\n", v3, v4, v5, v6, v7);
  }

  statusLightTimer = self->_statusLightTimer;
  if (statusLightTimer)
  {
    objc_msgSend_invalidate(statusLightTimer, a2, *&a3);
    self->_statusLightTimer = 0;
  }

  self->_statusLightMode = v7;
  if (v7 <= 7)
  {
    if (((1 << v7) & 0x57) == 0)
    {
      v10 = *"333?";
      if (v7 != 7)
      {
        v10 = 1.0;
      }

      self->_statusLightInterval = v10;
      self->_statusLightTimer = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], a2, self, sel_statusLightUpdateTimer_, 0, 1, v10);
    }

    MEMORY[0x2821F9670](self, sel_setStatusLightStateFromMode, *&a3);
  }
}

- (void)layoutSublayers
{
  if (dword_27E383028 <= 800 && (dword_27E383028 != -1 || sub_23EB74AC8(&dword_27E383028, 0x320u)))
  {
    sub_23EB75374(&dword_27E383028, "[NetTopoObjectLayer layoutSublayers]", 800, "entered %@\n", v3, v4, v5, v6, self);
  }

  p_labelLayer = &self->_labelLayer;
  if (self->_labelLayer || self->_secondaryLabelLayer)
  {
    objc_msgSend_bounds(self, a2, v2);
    if (!CGRectIsEmpty(v121))
    {
      secondaryLabelLayer = self->_secondaryLabelLayer;
      if (secondaryLabelLayer)
      {
        objc_msgSend_preferredFrameSize(secondaryLabelLayer, a2, v2);
        v11 = v10;
        v13 = v12;
        objc_msgSend_textBaselineOffset(self->_secondaryLabelLayer, v14, v15);
        v17 = v16;
        objc_msgSend_bounds(self, v18, v19);
        v20 = (CGRectGetWidth(v122) - v11) * 0.5;
        v21 = ceilf(v20);
        objc_msgSend_bounds(self, v22, v23);
        v24 = CGRectGetMaxY(v123) - v13;
        objc_msgSend_setFrame_(self->_secondaryLabelLayer, v25, v26, v21, ceilf(v24), v11, v13);
        topoProgressBar = self->_topoProgressBar;
        if (topoProgressBar)
        {
          objc_msgSend_preferredFrameSize(topoProgressBar, a2, v2);
          v29 = v28;
          v31 = v30;
          objc_msgSend_bounds(self, v32, v33);
          v34 = (CGRectGetWidth(v124) - v29) * 0.5;
          v35 = ceilf(v34);
          objc_msgSend_bounds(self, v36, v37);
          MaxY = CGRectGetMaxY(v125);
          objc_msgSend_setFrame_(self->_topoProgressBar, v39, v40, v35, ceilf(MaxY), v29, v31);
        }
      }

      else
      {
        v13 = *(MEMORY[0x277CBF3A8] + 8);
        v17 = 0.0;
      }

      if (*p_labelLayer)
      {
        objc_msgSend_preferredFrameSize(*p_labelLayer, a2, v2);
        v42 = v41;
        v44 = v43;
        objc_msgSend_labelPinnedHeight(self, v45, v46);
        if (v49 != 0.0)
        {
          objc_msgSend_labelPinnedHeight(self, v47, v48);
          v44 = v50;
        }

        objc_msgSend_textBaselineOffset(*p_labelLayer, v47, v48);
        v52 = v51;
        objc_msgSend_bounds(self, v53, v54);
        v57 = (CGRectGetWidth(v126) - v42) * 0.5;
        v58 = ceilf(v57);
        v59 = 0.0;
        if (v17 > 0.0)
        {
          v60 = objc_msgSend_smallSize(self, v55, v56);
          v61 = v17 + v44 - v52;
          v62 = 23.0 - v61;
          v63 = 13.0 - v61;
          if (v60)
          {
            v59 = v63;
          }

          else
          {
            v59 = v62;
          }
        }

        objc_msgSend_bounds(self, v55, v56);
        v64 = CGRectGetMaxY(v127) - v44 - v13 - v59;
        objc_msgSend_setFrame_(*p_labelLayer, v65, v66, v58, ceilf(v64), v42, v44);
      }
    }
  }

  v67 = objc_msgSend_objectImage(self, a2, v2);
  if (v67)
  {
    v74 = v67;
    if (*p_labelLayer || (p_labelLayer = &self->_secondaryLabelLayer, self->_secondaryLabelLayer))
    {
      objc_msgSend_bounds(self, v68, v69);
      v76 = v75;
      objc_msgSend_frame(*p_labelLayer, v77, v78);
      self->_imageFrame.origin.y = v76 - v79;
    }

    Width = CGImageGetWidth(v74);
    objc_msgSend_contentsScale(self, v81, v82);
    v84 = Width / v83;
    Height = CGImageGetHeight(v74);
    objc_msgSend_contentsScale(self, v86, v87);
    topoStyle = self->_topoStyle;
    v92 = Height / v91;
    if (topoStyle)
    {
      if (topoStyle == 1)
      {
        objc_msgSend_bounds(self, v88, v89);
        v93 = (CGRectGetWidth(v128) - v84) * 0.5;
        self->_imageFrame.origin.x = ceilf(v93);
        self->_imageFrame.size.width = v84;
        self->_imageFrame.size.height = v92;
        size = self->_imageFrame.size;
        self->_imageCoreFrame.origin = self->_imageFrame.origin;
        self->_imageCoreFrame.size = size;
        v95 = self->_imageFrame.size;
        self->_imageSelectionFrame.origin = self->_imageFrame.origin;
        self->_imageSelectionFrame.size = v95;
      }
    }

    else
    {
      v96 = v84 + -60.0;
      v97 = v92 + -60.0;
      objc_msgSend_bounds(self, v88, v89);
      v99 = v98 + (self->_selectionRectOutset + 2.0) * -2.0;
      v102 = sub_23EC13544(self->_owningView, v100, v101);
      v109 = 100.0;
      if (v102 == 2)
      {
        v109 = 260.0;
      }

      v110 = v99 / v109;
      if (dword_27E383028 <= 800 && (dword_27E383028 != -1 || sub_23EB74AC8(&dword_27E383028, 0x320u)))
      {
        sub_23EB75374(&dword_27E383028, "[NetTopoObjectLayer layoutSublayers]", 800, "image scale set to %.4f)\n", v105, v106, v107, v108, COERCE__INT64(v110));
      }

      v111 = v96 * v110;
      v112 = floorf(v111);
      v113 = v97 * v110;
      v114 = floorf(v113);
      objc_msgSend_bounds(self, v103, v104);
      v115 = (CGRectGetWidth(v129) - v112) * 0.5;
      self->_imageFrame.origin.x = ceilf(v115);
      self->_imageFrame.origin.y = self->_selectionRectOutset + self->_imageFrame.origin.y;
      self->_imageFrame.size.width = v112;
      self->_imageFrame.size.height = v114;
      v116 = self->_imageFrame.size;
      self->_imageCoreFrame.origin = self->_imageFrame.origin;
      self->_imageCoreFrame.size = v116;
      x = self->_imageFrame.origin.x;
      v116.width = self->_imageFrame.origin.y;
      v118 = self->_imageFrame.size.width;
      v119 = self->_imageFrame.size.height;
      self->_imageSelectionFrame = CGRectInset(*(&v116 - 8), -self->_selectionRectOutset, -self->_selectionRectOutset);
      v120 = ceilf(v110 * -30.0);
      self->_imageFrame = CGRectInset(self->_imageFrame, v120, v120);
    }
  }

  if (dword_27E383028 <= 800 && (dword_27E383028 != -1 || sub_23EB74AC8(&dword_27E383028, 0x320u)))
  {
    sub_23EB75374(&dword_27E383028, "[NetTopoObjectLayer layoutSublayers]", 800, "done %@\n", v70, v71, v72, v73, self);
  }
}

- (void)drawInContext:(CGContext *)a3
{
  v27.receiver = self;
  v27.super_class = NetTopoObjectLayer;
  [(NetTopoObjectLayer *)&v27 drawInContext:?];
  CGContextSaveGState(a3);
  if (!objc_msgSend_objectImage(self, v5, v6))
  {
    goto LABEL_16;
  }

  CGContextScaleCTM(a3, 1.0, -1.0);
  objc_msgSend_bounds(self, v7, v8);
  CGContextTranslateCTM(a3, 0.0, -v9);
  if (objc_msgSend_isSelectable(self, v10, v11) && objc_msgSend_isSelected(self, v12, v13))
  {
    sub_23EBFDA80(a3, self->_imageSelectionFrame.origin.x, self->_imageSelectionFrame.origin.y, self->_imageSelectionFrame.size.width, self->_imageSelectionFrame.size.height, self->_selectionCornerRadius);
    CGContextClosePath(a3);
    CGContextSetFillColorWithColor(a3, self->_selectionColor);
    CGContextDrawPath(a3, kCGPathFill);
    CGContextSetStrokeColorWithColor(a3, self->_secondaryLabelUnselectedTextColor);
    sub_23EBFDA80(a3, self->_imageSelectionFrame.origin.x, self->_imageSelectionFrame.origin.y, self->_imageSelectionFrame.size.width, self->_imageSelectionFrame.size.height, self->_selectionCornerRadius);
    CGContextSetLineWidth(a3, 2.0);
    CGContextClosePath(a3);
    CGContextStrokePath(a3);
    labelLayer = self->_labelLayer;
    if (labelLayer)
    {
      objc_msgSend_setForegroundColor_(labelLayer, v12, self->_labelSelectedTextColor);
      objc_msgSend_setFillColor_(self->_labelLayer, v15, self->_labelSelectedFillColor);
      objc_msgSend_setFillColor2_(self->_labelLayer, v16, self->_labelSelectedFillColor2);
    }

    secondaryLabelLayer = self->_secondaryLabelLayer;
    if (!secondaryLabelLayer)
    {
      goto LABEL_13;
    }

    v18 = &OBJC_IVAR___NetTopoObjectLayer__secondaryLabelSelectedTextColor;
  }

  else
  {
    v19 = self->_labelLayer;
    if (v19)
    {
      objc_msgSend_setForegroundColor_(v19, v12, self->_labelUnselectedTextColor);
      objc_msgSend_setFillColor_(self->_labelLayer, v20, self->_labelUnselectedFillColor);
      objc_msgSend_setFillColor2_(self->_labelLayer, v21, 0);
    }

    secondaryLabelLayer = self->_secondaryLabelLayer;
    if (!secondaryLabelLayer)
    {
      goto LABEL_13;
    }

    v18 = &OBJC_IVAR___NetTopoObjectLayer__secondaryLabelUnselectedTextColor;
  }

  objc_msgSend_setForegroundColor_(secondaryLabelLayer, v12, *(&self->super.super.isa + *v18));
LABEL_13:
  isGhosted = objc_msgSend_isGhosted(self, v12, v13);
  v23 = 0.3;
  if (!isGhosted)
  {
    v23 = 1.0;
  }

  CGContextSetAlpha(a3, v23);
  v26 = objc_msgSend_objectImage(self, v24, v25);
  CGContextDrawImage(a3, self->_imageFrame, v26);
LABEL_16:
  CGContextRestoreGState(a3);
}

- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations
{
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  p_imageSelectionFrame = &self->_imageSelectionFrame;
  x = self->_imageSelectionFrame.origin.x;
  y = self->_imageSelectionFrame.origin.y;
  width = self->_imageSelectionFrame.size.width;
  height = self->_imageSelectionFrame.size.height;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  result = CGRectIsNull(v54);
  if (result)
  {
    v11 = *MEMORY[0x277CBF348];
    retstr->var0 = *MEMORY[0x277CBF348];
    retstr->var1 = v11;
    retstr->var2 = v11;
    retstr->var3 = v11;
  }

  else
  {
    MinX = CGRectGetMinX(*p_imageSelectionFrame);
    retstr->var0.x = MinX;
    objc_msgSend_bounds(self, v13, v14);
    MaxY = CGRectGetMaxY(v55);
    MidY = CGRectGetMidY(*p_imageSelectionFrame);
    v17 = MaxY - floorf(MidY);
    v53 = MinX + CGRectGetWidth(*p_imageSelectionFrame);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    MidX = CGRectGetMidX(v56);
    v19 = floorf(MidX);
    objc_msgSend_bounds(self, v20, v21);
    v22 = CGRectGetMaxY(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v25 = v22 - CGRectGetMaxY(v58) + -6.0;
    if (self->_labelLayer || self->_secondaryLabelLayer)
    {
      objc_msgSend_bounds(self, v23, v24);
      v28 = CGRectGetMaxY(v59);
    }

    else
    {
      objc_msgSend_bounds(self, v23, v24);
      v52 = CGRectGetMaxY(v60);
      v28 = v52 - CGRectGetMinY(*p_imageSelectionFrame);
    }

    v29 = v28 + 4.0;
    v30 = objc_msgSend_superlayer(self, v26, v27);
    objc_msgSend_convertPoint_toLayer_(self, v31, v30, MinX, v17);
    retstr->var0.x = v32;
    retstr->var0.y = v33;
    v36 = objc_msgSend_superlayer(self, v34, v35);
    objc_msgSend_convertPoint_toLayer_(self, v37, v36, v53, v17);
    retstr->var1.x = v38;
    retstr->var1.y = v39;
    v42 = objc_msgSend_superlayer(self, v40, v41);
    objc_msgSend_convertPoint_toLayer_(self, v43, v42, v19, v25);
    retstr->var2.x = v44;
    retstr->var2.y = v45;
    v48 = objc_msgSend_superlayer(self, v46, v47);
    result = objc_msgSend_convertPoint_toLayer_(self, v49, v48, v19, v29);
    retstr->var3.x = v50;
    retstr->var3.y = v51;
  }

  return result;
}

- (CGRect)getUserInteractionBounds
{
  x = self->_imageCoreFrame.origin.x;
  y = self->_imageCoreFrame.origin.y;
  width = self->_imageCoreFrame.size.width;
  height = self->_imageCoreFrame.size.height;
  objc_msgSend_bounds(self, a2, v2);
  v8 = v7 - height - y;
  v9 = x;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (CGRect)getFrameContainingAllSublayers
{
  objc_msgSend_frame(self, a2, v2);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "topo frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", v6, v7, v8, v9, *&v11);
  }

  labelLayer = self->_labelLayer;
  if (labelLayer)
  {
    objc_msgSend_frame(labelLayer, v4, v5);
    x = v19;
    y = v21;
    width = v23;
    height = v25;
    if (dword_27E382FA8 <= 800 && (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
    {
      sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "label frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", v6, v7, v8, v9, *&x);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  secondaryLabelLayer = self->_secondaryLabelLayer;
  if (secondaryLabelLayer)
  {
    objc_msgSend_frame(secondaryLabelLayer, v4, v5);
    v43.origin.x = v28;
    v43.origin.y = v29;
    v43.size.width = v30;
    v43.size.height = v31;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectUnion(v38, v43);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v32 = dword_27E382FA8;
    if (dword_27E382FA8 > 800)
    {
      goto LABEL_17;
    }

    if (dword_27E382FA8 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u))
    {
      sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "label frame unioned with secondary frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", v6, v7, v8, v9, *&x);
    }
  }

  v32 = dword_27E382FA8;
LABEL_17:
  if (x < 0.0)
  {
    if (v32 <= 800 && (v32 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
    {
      sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "label origin outside parent frame\n", v6, v7, v8, v9, v37);
    }

    v40.origin.x = v11 + x;
    v40.origin.y = v13 + y;
    v40.size.width = width;
    v40.size.height = height;
    v44.origin.x = v11;
    v44.origin.y = v13;
    v44.size.width = v15;
    v44.size.height = v17;
    v41 = CGRectUnion(v40, v44);
    v11 = v41.origin.x;
    v13 = v41.origin.y;
    v15 = v41.size.width;
    v17 = v41.size.height;
    v32 = dword_27E382FA8;
  }

  if (v32 <= 800 && (v32 != -1 || sub_23EB74AC8(&dword_27E382FA8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382FA8, "[NetTopoObjectLayer getFrameContainingAllSublayers]", 800, "final basic frame =(x = %.2f y = %.2f w = %.2f h = %.2f)\n", v6, v7, v8, v9, *&v11);
  }

  v33 = v11;
  v34 = v13;
  v35 = v15;
  v36 = v17;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  if (objc_msgSend_isEqualToString_(a3, a2, @"objectImage") & 1) != 0 || (objc_msgSend_isEqualToString_(a3, v5, @"selected") & 1) != 0 || (objc_msgSend_isEqualToString_(a3, v6, @"ghosted"))
  {
    return 1;
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___NetTopoObjectLayer;
  return objc_msgSendSuper2(&v8, sel_needsDisplayForKey_, a3);
}

- (id)describeOne:(id)a3 uiLayer:(id)a4 indent:(unint64_t)a5
{
  v7 = objc_opt_class();
  Name = class_getName(v7);
  v11 = objc_msgSend_retainCount(a4, v9, v10);
  v14 = objc_msgSend_row(a4, v12, v13);
  v17 = objc_msgSend_column(a4, v15, v16);
  objc_msgSend_appendFormat_(a3, v18, @"<%s: %p retains %d> (row=%d col=%d)", Name, a4, v11, v14, v17);
  return a3;
}

- (id)debugDescription
{
  v3 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, &stru_285145FE8);
  objc_msgSend_describeOne_uiLayer_indent_(self, v4, v3, self, 0);
  return v3;
}

- (CGPoint)layoutOrigin
{
  x = self->_layoutOrigin.x;
  y = self->_layoutOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end