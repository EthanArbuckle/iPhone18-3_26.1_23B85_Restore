@interface NetTopoAirPortDeviceLayer
- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations;
- (NetTopoAirPortDeviceLayer)initWithUIStyle:(int)style andOwningView:(id)view;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)initNetTopoAirPortDeviceLayerCommonWithStyle:(int)style andOwningView:(id)view;
- (void)layoutSublayers;
- (void)pickCorrectImagesForContentsScale:(double)scale;
- (void)setAssociatedNode:(id)node;
@end

@implementation NetTopoAirPortDeviceLayer

- (void)initNetTopoAirPortDeviceLayerCommonWithStyle:(int)style andOwningView:(id)view
{
  if (dword_27E3830F8 <= 800 && (dword_27E3830F8 != -1 || sub_23EB74AC8(&dword_27E3830F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3830F8, "[NetTopoAirPortDeviceLayer initNetTopoAirPortDeviceLayerCommonWithStyle:andOwningView:]", 800, "%@\n", v4, v5, v6, v7, self);
  }
}

- (NetTopoAirPortDeviceLayer)initWithUIStyle:(int)style andOwningView:(id)view
{
  v5 = *&style;
  v10.receiver = self;
  v10.super_class = NetTopoAirPortDeviceLayer;
  v6 = [NetTopoObjectLayer initWithUIStyle:sel_initWithUIStyle_andOwningView_ andOwningView:?];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_initNetTopoAirPortDeviceLayerCommonWithStyle_andOwningView_(v6, v7, v5, view);
  }

  return v8;
}

- (void)dealloc
{
  if (dword_27E3830F8 <= 800 && (dword_27E3830F8 != -1 || sub_23EB74AC8(&dword_27E3830F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3830F8, "[NetTopoAirPortDeviceLayer dealloc]", 800, "%@\n", v2, v3, v4, v5, self);
  }

  v7.receiver = self;
  v7.super_class = NetTopoAirPortDeviceLayer;
  [(NetTopoObjectLayer *)&v7 dealloc];
}

- (id)description
{
  v4 = objc_msgSend_associatedNode(self, a2, v2);
  v7 = objc_msgSend_info(v4, v5, v6);
  v9 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v8, &stru_285145FE8);
  v10 = objc_opt_class();
  Name = class_getName(v10);
  v14 = objc_msgSend_retainCount(self, v12, v13);
  v16 = objc_msgSend_objectForKey_(v7, v15, @"name");
  v19 = objc_msgSend_row(self, v17, v18);
  v22 = objc_msgSend_column(self, v20, v21);
  objc_msgSend_appendFormat_(v9, v23, @"<%s: %p retains %d> ('%@' row=%d col=%d)", Name, self, v14, v16, v19, v22);
  return v9;
}

- (id)debugDescription
{
  v4 = objc_msgSend_description(self, a2, v2);
  if (objc_msgSend_parent(self, v5, v6))
  {
    v9 = objc_msgSend_parent(self, v7, v8);
    objc_msgSend_appendFormat_(v4, v10, @" connected upstream through %@", v9);
    v13 = objc_msgSend_parent(self, v11, v12);
    if (objc_msgSend_parent(v13, v14, v15))
    {
      v18 = objc_msgSend_parent(self, v16, v17);
      v21 = objc_msgSend_parent(v18, v19, v20);
      objc_msgSend_appendFormat_(v4, v22, @" to device %@\n", v21);
    }
  }

  return v4;
}

- (void)layoutSublayers
{
  v2.receiver = self;
  v2.super_class = NetTopoAirPortDeviceLayer;
  [(NetTopoObjectLayer *)&v2 layoutSublayers];
}

- (void)pickCorrectImagesForContentsScale:(double)scale
{
  if (!self->super._topoStyle)
  {
    v6 = objc_msgSend_associatedNode(self, a2, v3);
    v9 = objc_msgSend_info(v6, v7, v8);
    v17 = sub_23EB6A2C0(v9, v10, v11, v12, v13, v14, v15, v16);
    v25 = sub_23EB6B128(v9, v18, v19, v20, v21, v22, v23, v24);
    v33 = sub_23EB6A294(v9, v26, v27, v28, v29, v30, v31, v32);
    v35 = objc_msgSend_imageForBaseStationWithProductID_subProductID_deviceKind_small_cropped_threeDee_(ImageStore, v34, v17, v25, v33, 0, 1, 1);
    v37 = objc_msgSend_cgImageFromImage_forContentsScale_(ImageStore, v36, v35, scale);
    objc_msgSend_setObjectImage_(self, v38, v37);
  }

  v39.receiver = self;
  v39.super_class = NetTopoAirPortDeviceLayer;
  [(NetTopoObjectLayer *)&v39 pickCorrectImagesForContentsScale:scale];
}

- (void)setAssociatedNode:(id)node
{
  if (self->super._associatedNode != node)
  {
    nodeCopy = node;

    self->super._associatedNode = node;
  }

  if (node)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_msgSend_info(node, a2, node);
    v9 = objc_msgSend_objectForKey_(v7, v8, @"name");
    v11 = objc_msgSend_stringWithFormat_(v6, v10, @"%@", v9);
    objc_msgSend_setLabel_(self, v12, v11);
    if (objc_msgSend_configReadStatus(node, v13, v14) != 1)
    {
      v17 = objc_msgSend_info(node, v15, v16);
      v19 = objc_msgSend_objectForKey_(v17, v18, @"syAP");
      v22 = objc_msgSend_integerValue(v19, v20, v21);
      v25 = objc_msgSend_info(node, v23, v24);
      v33 = sub_23EB6A294(v25, v26, v27, v28, v29, v30, v31, v32);
      v34 = sub_23EB6CEE0(v22, v33, 0);
      objc_msgSend_setSecondaryLabel_(self, v35, v34);
    }

    objc_msgSend_contentsScale(self, v15, v16);
    objc_msgSend_pickCorrectImagesForContentsScale_(self, v36, v37);
  }

  objc_msgSend_setNeedsLayout(self, a2, node);
}

- ($E32549A47AE6FE03C4AA404FAEB37148)getConnectionAttachmentLocations
{
  objc_msgSend_layoutSublayers(self, a3, v3);
  v6.receiver = self;
  v6.super_class = NetTopoAirPortDeviceLayer;
  return [($E32549A47AE6FE03C4AA404FAEB37148 *)&v6 getConnectionAttachmentLocations];
}

@end