@interface NetTopoMiniStaticLayout
- (CGImage)imageForDeviceSpec:(id)a3 wantSmall:(BOOL)a4 forContentsScale:(double)a5;
- (NetTopoMiniStaticLayout)initWithContainerLayer:(id)a3 andOptions:(int)a4;
- (void)createLayoutForDevices:(id)a3;
- (void)dealloc;
- (void)destroyDeviceLayers;
- (void)performLayout;
- (void)setContainerLayer:(id)a3;
- (void)setOwningView:(id)a3;
@end

@implementation NetTopoMiniStaticLayout

- (NetTopoMiniStaticLayout)initWithContainerLayer:(id)a3 andOptions:(int)a4
{
  v13.receiver = self;
  v13.super_class = NetTopoMiniStaticLayout;
  v10 = [(NetTopoMiniStaticLayout *)&v13 init];
  if (v10)
  {
    if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
    {
      sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout initWithContainerLayer:andOptions:]", 800, "containerLayer = %@, options = %d\n", v6, v7, v8, v9, a3);
    }

    v10->_containerLayer = a3;
    v10->_layoutOptions = a4;
    objc_msgSend_setMasksToBounds_(a3, v11, 1);
    v10->_topoDeviceLayers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10->_connectionLayers = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v10;
}

- (void)destroyDeviceLayers
{
  v31 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_topoDeviceLayers, a2, v2))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    topoDeviceLayers = self->_topoDeviceLayers;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v4, &v25, v30, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(topoDeviceLayers);
          }

          objc_msgSend_removeFromSuperlayer(*(*(&v25 + 1) + 8 * i), v8, v9);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v8, &v25, v30, 16);
      }

      while (v10);
    }

    objc_msgSend_removeAllObjects(self->_topoDeviceLayers, v8, v9);
  }

  if (objc_msgSend_count(self->_connectionLayers, v4, v5))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    connectionLayers = self->_connectionLayers;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v13, &v21, v29, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v22;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(connectionLayers);
          }

          objc_msgSend_removeFromSuperlayer(*(*(&v21 + 1) + 8 * j), v16, v17);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v16, &v21, v29, 16);
      }

      while (v18);
    }

    objc_msgSend_removeAllObjects(self->_connectionLayers, v16, v17);
  }
}

- (void)dealloc
{
  objc_msgSend_destroyDeviceLayers(self, a2, v2);

  v4.receiver = self;
  v4.super_class = NetTopoMiniStaticLayout;
  [(NetTopoMiniStaticLayout *)&v4 dealloc];
}

- (void)setContainerLayer:(id)a3
{
  if (self->_containerLayer != a3)
  {
    if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
    {
      sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout setContainerLayer:]", 800, "containerLayer = %@\n", v3, v4, v5, v6, a3);
    }

    objc_msgSend_destroyDeviceLayers(self, a2, a3);
    v9 = a3;

    self->_containerLayer = a3;
  }
}

- (void)setOwningView:(id)a3
{
  if (self->_owningView != a3)
  {
    if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
    {
      sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout setOwningView:]", 800, "owningView = %@\n", v3, v4, v5, v6, a3);
    }

    v9 = a3;

    self->_owningView = a3;
  }
}

- (CGImage)imageForDeviceSpec:(id)a3 wantSmall:(BOOL)a4 forContentsScale:(double)a5
{
  v6 = a4;
  v9 = objc_msgSend_objectForKey_(a3, a2, off_27E3830A8[0]);
  if (!objc_msgSend_isEqualToString_(v9, v10, off_27E3830B0[0]))
  {
    return 0;
  }

  v13 = objc_msgSend_layoutOptions(self, v11, v12);
  v15 = objc_msgSend_objectForKey_(a3, v14, off_27E3830B8[0]);
  v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);
  v20 = objc_msgSend_objectForKey_(a3, v19, off_27E3830C0[0]);
  v23 = objc_msgSend_unsignedIntegerValue(v20, v21, v22);
  v25 = objc_msgSend_imageForBaseStationWithProductID_subProductID_deviceKind_small_cropped_threeDee_(ImageStore, v24, v18, 0, v23, 0, v13 & 1, 0);
  v27 = objc_msgSend_cgImageFromImage_forContentsScale_(ImageStore, v26, v25, a5);
  v28 = v27;
  if (v6)
  {
    v28 = sub_23EBFD790(v27, 75.0);
    v29 = v28;
  }

  return v28;
}

- (void)performLayout
{
  v154 = *MEMORY[0x277D85DE8];
  if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
  {
    sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout performLayout]", 800, "self = %@\n", v3, v4, v5, v6, self);
  }

  v8 = objc_msgSend_layoutOptions(self, a2, v2);
  v11 = v8;
  if ((v8 & 2) != 0)
  {
    v12 = 28.0;
  }

  else
  {
    v12 = 35.0;
  }

  if ((v8 & 2) != 0)
  {
    v13 = 66.6666667;
  }

  else
  {
    v13 = 100.0;
  }

  if ((v8 & 2) != 0)
  {
    v14 = 5.0;
  }

  else
  {
    v14 = 10.0;
  }

  if (objc_msgSend_layoutOptions(self, v9, v10))
  {
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    topoDeviceLayers = self->_topoDeviceLayers;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v15, &v147, v153, 16);
    if (v41)
    {
      v43 = v41;
      v44 = 0;
      v45 = *v148;
      v46 = dbl_23EC22120[(v11 & 2) == 0];
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v148 != v45)
          {
            objc_enumerationMutation(topoDeviceLayers);
          }

          v48 = *(*(&v147 + 1) + 8 * i);
          v49 = objc_msgSend_containerLayer(self, v17, v42);
          objc_msgSend_frame(v49, v50, v51);
          v53 = v52;
          v56 = objc_msgSend_containerLayer(self, v54, v55);
          objc_msgSend_bounds(v56, v57, v58);
          v60 = (v59 - v53) * 0.5;
          v61 = v46 * v44;
          objc_msgSend_setFrame_(v48, v62, v63, floorf(v60), floorf(v61), v53, v13);
          ++v44;
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v17, &v147, v153, 16);
      }

      while (v43);
    }
  }

  else if ((objc_msgSend_layoutOptions(self, v15, v16) & 1) == 0)
  {
    v19 = objc_msgSend_count(self->_topoDeviceLayers, v17, v18);
    v22 = objc_msgSend_containerLayer(self, v20, v21);
    objc_msgSend_bounds(v22, v23, v24);
    Width = CGRectGetWidth(v155);
    v30 = 0.0;
    if ((objc_msgSend_layoutOptions(self, v26, v27) & 8) == 0)
    {
      v31 = objc_msgSend_layoutOptions(self, v28, v29);
      v34 = objc_msgSend_containerLayer(self, v32, v33);
      objc_msgSend_bounds(v34, v35, v36);
      v38 = v37 - v13;
      if ((v31 & 4) != 0)
      {
        v30 = v38 + -7.0;
      }

      else
      {
        v39 = v38 * 0.5;
        v30 = floorf(v39);
      }
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v64 = self->_topoDeviceLayers;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v28, &v143, v152, 16);
    if (v65)
    {
      v67 = v65;
      v68 = 0;
      v69 = (Width + -20.0 - (v19 - 1) * v14) / v19;
      v70 = floorf(v69);
      v71 = *v144;
      v72 = v14 + v70;
      do
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v144 != v71)
          {
            objc_enumerationMutation(v64);
          }

          v74 = *(*(&v143 + 1) + 8 * j);
          v75 = objc_msgSend_containerLayer(self, v17, v66);
          objc_msgSend_bounds(v75, v76, v77);
          v79 = v78;
          v80 = v72 * v68;
          v81 = floorf(v80) + 10.0;
          v84 = objc_msgSend_containerLayer(self, v82, v83);
          objc_msgSend_bounds(v84, v85, v86);
          v88 = v87 - v79 - v30;
          objc_msgSend_setFrame_(v74, v89, v90, v81, floorf(v88), v70, v79);
          objc_msgSend_setLabelPinnedHeight_(v74, v91, v92, v12);
          objc_msgSend_setBoundsSizeConstraint_(v74, v93, v94, v70, v79);
          ++v68;
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v17, &v143, v152, 16);
      }

      while (v67);
    }
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  connectionLayers = self->_connectionLayers;
  v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v17, &v139, v151, 16);
  if (v96)
  {
    v99 = v96;
    v100 = *v140;
    do
    {
      for (k = 0; k != v99; ++k)
      {
        if (*v140 != v100)
        {
          objc_enumerationMutation(connectionLayers);
        }

        v102 = *(*(&v139 + 1) + 8 * k);
        if (objc_msgSend_layoutOptions(self, v97, v98))
        {
          objc_msgSend_setUpstreamDeviceSpatialRelationship_(v102, v103, 4);
          v121 = objc_msgSend_parent(v102, v119, v120);
          v109 = 0.0;
          v124 = 0.0;
          v111 = 0.0;
          if (v121)
          {
            objc_msgSend_getConnectionAttachmentLocations(v121, v122, v123);
            v111 = v137;
            v124 = v138;
          }

          v125 = objc_msgSend_childAtIndex_(v102, v122, 0);
          v115 = 0.0;
          if (v125)
          {
            objc_msgSend_getConnectionAttachmentLocations(v125, v126, v127);
            v115 = v135;
            v109 = v136;
          }

          v110 = v124;
          v116 = 2;
          objc_msgSend_setFrame_(v102, v126, v127, v111, v124, 24.0, v109 - v124);
        }

        else
        {
          objc_msgSend_setUpstreamDeviceSpatialRelationship_(v102, v103, 1);
          v106 = objc_msgSend_parent(v102, v104, v105);
          v109 = 0.0;
          v110 = 0.0;
          v111 = 0.0;
          if (v106)
          {
            objc_msgSend_getConnectionAttachmentLocations(v106, v107, v108);
            v111 = v133;
            v110 = v134;
          }

          v112 = objc_msgSend_childAtIndex_(v102, v107, 0);
          v115 = 0.0;
          if (v112)
          {
            objc_msgSend_getConnectionAttachmentLocations(v112, v113, v114);
            v115 = v131;
            v109 = v132;
          }

          v116 = 3;
          objc_msgSend_setFrame_(v102, v113, v114, v111, v110 + -12.0, v115 - v111, 24.0);
        }

        objc_msgSend_setUpstreamConnectionPoint_(v102, v117, v118, v111, v110);
        objc_msgSend_setUpstreamConnectionSide_(v102, v128, v116);
        objc_msgSend_setDownstreamConnectionPoint_(v102, v129, v130, v115, v109);
      }

      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v97, &v139, v151, 16);
    }

    while (v99);
  }
}

- (void)createLayoutForDevices:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
  {
    sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout createLayoutForDevices:]", 800, "self = %@\n", v3, v4, v5, v6, self);
  }

  v8 = objc_msgSend_layoutOptions(self, a2, a3);
  objc_msgSend_setTopoDevicesDescriptor_(self, v9, a3);
  objc_msgSend_destroyDeviceLayers(self, v10, v11);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v12, &v80, v84, 16);
  if (v13)
  {
    v16 = v13;
    v17 = 0;
    v18 = (v8 >> 1) & 1;
    v79 = *v81;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v81 != v79)
        {
          objc_enumerationMutation(a3);
        }

        v20 = *(*(&v80 + 1) + 8 * i);
        v21 = [NetTopoAirPortDeviceLayer alloc];
        v24 = objc_msgSend_owningView(self, v22, v23);
        v26 = objc_msgSend_initWithUIStyle_andOwningView_(v21, v25, 1, v24);
        objc_msgSend_contentsScale(v26, v27, v28);
        v30 = objc_msgSend_imageForDeviceSpec_wantSmall_forContentsScale_(self, v29, v20, v18);
        objc_msgSend_setObjectImage_(v26, v31, v30);
        objc_msgSend_setSmallSize_(v26, v32, v18);
        objc_msgSend_setSelectable_(v26, v33, 0);
        v35 = objc_msgSend_objectForKey_(v20, v34, off_27E3830C8[0]);
        v37 = objc_msgSend_objectForKey_(v20, v36, off_27E3830D0[0]);
        if (objc_msgSend_length(v35, v38, v39))
        {
          objc_msgSend_setLabel_(v26, v40, v35);
        }

        if (objc_msgSend_length(v37, v40, v41))
        {
          if (objc_msgSend_length(v35, v42, v43))
          {
            objc_msgSend_setSecondaryLabel_(v26, v44, v37);
          }

          else
          {
            objc_msgSend_setLabel_(v26, v44, v37);
          }
        }

        v45 = objc_msgSend_containerLayer(self, v42, v43);
        objc_msgSend_addSublayer_(v45, v46, v26);
        objc_msgSend_setNeedsDisplay(v26, v47, v48);
        objc_msgSend_addObject_(self->_topoDeviceLayers, v49, v26);
        v51 = objc_msgSend_objectForKey_(v20, v50, off_27E3830D8[0]);
        if (v51 && v17)
        {
          v53 = v51;
          if (objc_msgSend_isEqualToString_(v51, v52, off_27E3830E8[0]))
          {
            v55 = 1;
          }

          else if (objc_msgSend_isEqualToString_(v53, v54, off_27E3830F0))
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          v56 = [NetTopoDeviceConnectionLayer alloc];
          v59 = objc_msgSend_owningView(self, v57, v58);
          v61 = objc_msgSend_initWithUIStyle_andOwningView_(v56, v60, 1, v59);
          objc_msgSend_setSmallSize_(v61, v62, v18);
          objc_msgSend_setSelectable_(v61, v63, 0);
          objc_msgSend_setConnectionMediumFallback_(v61, v64, v55);
          if (objc_msgSend_isEqualToString_(v53, v65, off_27E3830F0))
          {
            objc_msgSend_setConnectionStyle_(v61, v66, 5);
          }

          else
          {
            objc_msgSend_setConnectionStyle_(v61, v66, 1);
          }

          v69 = objc_msgSend_containerLayer(self, v67, v68);
          objc_msgSend_addSublayer_(v69, v70, v61);
          objc_msgSend_setNeedsDisplay(v61, v71, v72);
          v74 = objc_msgSend_objectAtIndex_(self->_topoDeviceLayers, v73, v17 - 1);
          objc_msgSend_setParent_(v61, v75, v74);
          objc_msgSend_addChild_(v61, v76, v26);
          objc_msgSend_addObject_(self->_connectionLayers, v77, v61);
        }

        ++v17;
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v52, &v80, v84, 16);
    }

    while (v16);
  }

  objc_msgSend_performLayout(self, v14, v15);
}

@end