@interface HUCCSmartGridLayout
+ (id)layoutGeometry;
+ (id)layoutGeometryIsPortrait:(BOOL)portrait;
+ (id)layoutOptionsForViewSize:(CGSize)size andMosaicSize:(unint64_t)mosaicSize;
+ (unint64_t)mosaicType;
@end

@implementation HUCCSmartGridLayout

+ (id)layoutGeometry
{
  v3 = CCUIIsPortrait();

  return objc_msgSend_layoutGeometryIsPortrait_(HUCCSmartGridLayout, v2, v3);
}

+ (id)layoutGeometryIsPortrait:(BOOL)portrait
{
  v6 = objc_alloc_init(MEMORY[0x29EDC54E8]);
  if (portrait)
  {
    v7 = 1;
    objc_msgSend_setGridSize_(v6, v4, 2, 4);
  }

  else
  {
    v9 = objc_msgSend_currentDevice(MEMORY[0x29EDC7A58], v4, v5);
    v12 = objc_msgSend_userInterfaceIdiom(v9, v10, v11);

    v7 = v12 == 1;
    if (v12 == 1)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v12 == 1)
    {
      objc_msgSend_setGridSize_(v6, v13, 2, v14);
    }

    else
    {
      objc_msgSend_setGridSize_(v6, v13, 3, v14);
    }
  }

  objc_msgSend_setIsPortrait_(v6, v8, v7);
  objc_msgSend_cellSize(HUCCSmartGridLayout, v15, v16);
  objc_msgSend_setCellSize_(v6, v17, v18);
  objc_msgSend_cellSpacing(HUCCSmartGridLayout, v19, v20);
  objc_msgSend_setCellSpacing_(v6, v21, v22);

  return v6;
}

+ (unint64_t)mosaicType
{
  v3 = objc_msgSend_currentDevice(MEMORY[0x29EDC7A58], a2, v2);
  v6 = objc_msgSend_userInterfaceIdiom(v3, v4, v5);

  if (v6 == 1)
  {
    return 0;
  }

  else
  {
    return CCUIIsPortrait() ^ 1;
  }
}

+ (id)layoutOptionsForViewSize:(CGSize)size andMosaicSize:(unint64_t)mosaicSize
{
  v66 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_defaultOptionsForViewSize_(MEMORY[0x29EDC54C8], a2, mosaicSize, size.width, size.height);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = objc_msgSend_serviceCellOptions(v5, v6, v7, 0);
  v64[0] = v8;
  v11 = objc_msgSend_sceneCellOptions(v5, v9, v10);
  v64[1] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v12, v64, 2);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v60, v65, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v61;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend_backgroundDisplayOptions(*(*(&v60 + 1) + 8 * i), v16, v17);
        objc_msgSend_setDisplayStyle_(v21, v22, 3);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v60, v65, 16);
    }

    while (v18);
  }

  v25 = objc_msgSend_sceneCellOptions(v5, v23, v24);
  v28 = objc_msgSend_font(v25, v26, v27);
  objc_msgSend_setDescriptionFont_(v25, v29, v28);

  objc_msgSend_setSceneCellOptions_(v5, v30, v25);
  v33 = objc_msgSend_serviceCellOptions(v5, v31, v32);
  v36 = v33;
  if (mosaicSize == 1)
  {
    v37 = objc_msgSend_font(v33, v34, v35);
    v40 = objc_msgSend_fontWithSize_(v37, v38, v39, 11.0);
    objc_msgSend_setFont_(v36, v41, v40);

    HUDefaultSizeForIconSize();
    objc_msgSend_setIconSize_(v36, v42, v43, v44);
    objc_msgSend_setLineSpacing_(v36, v45, v46, 0.0);
    objc_msgSend_setShowDescription_(v36, v47, 0);
    objc_msgSend_setIconToTitleSpacing_(v36, v48, v49, 4.0);
  }

  else
  {
    HUDefaultSizeForIconSize();
    objc_msgSend_setIconSize_(v36, v51, v52, v53);
    objc_msgSend_setCellInnerMargin_(v36, v54, v55, 16.0);
    objc_msgSend_setIconToTitleSpacing_(v36, v56, v57, 12.0);
  }

  objc_msgSend_setServiceCellOptions_(v5, v50, v36);

  v58 = *MEMORY[0x29EDCA608];

  return v5;
}

@end