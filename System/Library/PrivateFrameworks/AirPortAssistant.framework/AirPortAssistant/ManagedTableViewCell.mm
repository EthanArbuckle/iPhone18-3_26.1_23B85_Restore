@interface ManagedTableViewCell
- (ManagedTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)calculateFrameSizeForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index withRemainingContentWidth:(double)width;
- (double)edgeInsetValue:(id)value;
- (double)horizontalSpacingForView:(id)view withItem:(id)item;
- (double)leftInsetForView:(id)view withItem:(id)item;
- (double)rightInsetForView:(id)view withItem:(id)item;
- (double)usableContentWidthForItem:(id)item withVerticalNeighborView:(id)view;
- (double)verticalInset;
- (double)verticalSpacingForView:(id)view withItem:(id)item;
- (id)accessibilityValue;
- (void)calculatePositionForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)repositionView:(id)view ifOverlapsPreviousView:(id)previousView;
- (void)setCellDict:(id)dict;
@end

@implementation ManagedTableViewCell

- (ManagedTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = ManagedTableViewCell;
  return [(ManagedTableViewCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)prepareForReuse
{
  v55 = *MEMORY[0x277D85DE8];
  if (dword_27E382F68 <= 800)
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      v4 = objc_msgSend_currentIndexPath(self, a2, v2);
      objc_msgSend_section(v4, v5, v6);
      v9 = objc_msgSend_currentIndexPath(self, v7, v8);
      objc_msgSend_row(v9, v10, v11);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell prepareForReuse]", 800, "cell %@ section %d row %d\n", v12, v13, v14, v15, self);
    }

    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      v16 = objc_msgSend_parentTableManager(self, a2, v2);
      v19 = objc_msgSend_managedTableView(v16, v17, v18);
      v22 = objc_msgSend_visibleCells(v19, v20, v21);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell prepareForReuse]", 800, "visible cells %@\n", v23, v24, v25, v26, v22);
    }
  }

  objc_msgSend_setTag_(self, a2, 0);
  self->_cellXEdgeInset = 0.0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v29 = objc_msgSend_cellDict(self, v27, v28);
  v31 = objc_msgSend_objectForKey_(v29, v30, @"items");
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v50, v54, 16);
  if (v33)
  {
    v35 = v33;
    v36 = *v51;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = objc_msgSend_objectForKey_(*(*(&v50 + 1) + 8 * i), v34, @"cachedView");
        v41 = objc_msgSend_superview(v38, v39, v40);
        if (v41 == objc_msgSend_contentView(self, v42, v43))
        {
          if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
          {
            sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell prepareForReuse]", 800, "removing view %@ from superview\n", v45, v46, v47, v48, v38);
          }

          objc_msgSend_removeFromSuperview(v38, v34, v44);
        }
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v50, v54, 16);
    }

    while (v35);
  }

  v49.receiver = self;
  v49.super_class = ManagedTableViewCell;
  [(ManagedTableViewCell *)&v49 prepareForReuse];
}

- (void)dealloc
{
  self->_cellDict = 0;

  self->_currentIndexPath = 0;
  v3.receiver = self;
  v3.super_class = ManagedTableViewCell;
  [(ManagedTableViewCell *)&v3 dealloc];
}

- (void)setCellDict:(id)dict
{
  if (self->_cellDict != dict)
  {
    dictCopy = dict;

    self->_cellDict = dict;
    if (dict)
    {

      objc_msgSend_setNeedsLayout(self, v6, v7);
    }
  }
}

- (double)edgeInsetValue:(id)value
{
  v3 = objc_msgSend_objectForKey_(value, a2, @"edgeInset");
  if (!v3)
  {
    return 10.0;
  }

  objc_msgSend_floatValue(v3, v4, v5);
  return v6;
}

- (double)horizontalSpacingForView:(id)view withItem:(id)item
{
  objc_msgSend_frame(view, a2, view);
  if (v7 == 0.0)
  {
    return 0.0;
  }

  objc_msgSend_edgeInsetValue_(self, v6, item);
  return result;
}

- (double)verticalSpacingForView:(id)view withItem:(id)item
{
  objc_msgSend_frame(view, a2, view);
  result = 0.0;
  if (v7 > 0.0)
  {
    v8 = objc_msgSend_valueForKey_(item, v5, @"itemType", 0.0);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"labelView");
    result = 5.0;
    if (isEqualToString)
    {
      return 2.0;
    }
  }

  return result;
}

- (double)verticalInset
{
  if (sub_23EC132F8(self, a2, v2))
  {
    return 12.0;
  }

  objc_msgSend_edgeInsetValue_(self, v4, 0);
  return result;
}

- (double)leftInsetForView:(id)view withItem:(id)item
{
  if (sub_23EC132F8(self, a2, view))
  {
    return 15.0;
  }

  objc_msgSend_edgeInsetValue_(self, v6, item);
  return result;
}

- (double)rightInsetForView:(id)view withItem:(id)item
{
  if (sub_23EC132F8(self, a2, view))
  {
    if (!objc_msgSend_objectForKey_(item, v7, @"edgeInset"))
    {
      v10 = objc_msgSend_cellDict(self, v7, v9);
      v12 = objc_msgSend_valueForKey_(v10, v11, @"accessory");
      result = 0.0;
      if (!v12)
      {
        return 15.0;
      }

      return result;
    }
  }

  else if (view)
  {
    objc_msgSend_frame(view, v7, v8);
    result = 0.0;
    if (v14 <= 0.0)
    {
      return result;
    }
  }

  objc_msgSend_edgeInsetValue_(self, v7, item);
  return result;
}

- (double)usableContentWidthForItem:(id)item withVerticalNeighborView:(id)view
{
  width = self->_modifiedContentViewFrame.size.width;
  if (item)
  {
    objc_msgSend_rightInsetForView_withItem_(self, a2, 0, item);
    v9 = v8;
    isEqualToString = objc_msgSend_objectForKey_(item, v10, @"position");
    if (!view)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = sub_23EC132F8(self, a2, 0);
    isEqualToString = 0;
    if (v14)
    {
      v9 = 15.0;
    }

    else
    {
      v9 = 10.0;
    }

    if (!view)
    {
      goto LABEL_9;
    }
  }

  isEqualToString = objc_msgSend_isEqualToString_(isEqualToString, v12, @"bottom");
  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_frame(view, v12, v13);
    return width - (v9 + v22);
  }

LABEL_9:
  if (!sub_23EC132F8(isEqualToString, v12, v13))
  {
    return width + v9 * -2.0;
  }

  v17 = width - v9;
  v18 = objc_msgSend_cellDict(self, v15, v16);
  v20 = objc_msgSend_valueForKey_(v18, v19, @"accessory");
  result = v17 - v9;
  if (v20)
  {
    return v17;
  }

  return result;
}

- (void)calculatePositionForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index
{
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "\n", index, v5, v6, v7, v108);
  }

  v11 = objc_msgSend_objectForKey_(item, a2, @"neighbor");
  v13 = objc_msgSend_edgeInsetValue_(self, v12, item);
  v109 = v16;
  if (v11)
  {
    v17 = objc_msgSend_objectForKey_(v11, v14, @"cachedView");
    objc_msgSend_frame(v17, v18, v19);
    forcedRightmostEditTextInset = v21;
    y = v23;
    width = v25;
    v28 = v27;
    v29 = v17 == 0;
  }

  else
  {
    if (sub_23EC132F8(v13, v14, v15))
    {
      y = self->_modifiedContentViewFrame.origin.y;
      objc_msgSend_usableContentWidth(self, v30, v31);
      width = v32;
      forcedRightmostEditTextInset = 15.0;
    }

    else
    {
      forcedRightmostEditTextInset = 10.0;
      v110 = CGRectInset(self->_modifiedContentViewFrame, 10.0, 0.0);
      y = v110.origin.y;
      width = v110.size.width;
    }

    v29 = 1;
    v28 = 44.0;
  }

  v33 = objc_msgSend_objectForKey_(item, v20, @"position");
  if (v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = @"left";
  }

  if (dword_27E382F68 <= 800)
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "itemInfo position '%@'\n", v36, v37, v38, v39, v40);
    }

    if (dword_27E382F68 <= 800)
    {
      if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
      {
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "itemInfo neighbor '%@'\n", v36, v37, v38, v39, v11);
      }

      if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "neighbor frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v36, v37, v38, v39, *&forcedRightmostEditTextInset);
      }
    }
  }

  objc_msgSend_frame(view, v34, v35);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v51 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v49, v50);
  if (objc_msgSend_userInterfaceLayoutDirection(v51, v52, v53) == 1)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v40, v54, @"left");
    v56 = @"right";
    if ((isEqualToString & 1) == 0)
    {
      v57 = objc_msgSend_isEqualToString_(v40, v54, @"right");
      v56 = @"left";
      if ((v57 & 1) == 0)
      {
        v58 = objc_msgSend_isEqualToString_(v40, v54, @"topLeft");
        v56 = @"topRight";
        if ((v58 & 1) == 0)
        {
          v59 = objc_msgSend_isEqualToString_(v40, v54, @"topRight");
          v56 = @"topLeft";
          if ((v59 & 1) == 0)
          {
            v60 = objc_msgSend_isEqualToString_(v40, v54, @"bottomLeft");
            v56 = @"bottomRight";
            if ((v60 & 1) == 0)
            {
              if (objc_msgSend_isEqualToString_(v40, v54, @"bottomRight"))
              {
                v56 = @"bottomLeft";
              }

              else
              {
                v56 = 0;
              }
            }
          }
        }
      }
    }

    if (v56)
    {
      v40 = v56;
    }
  }

  v61 = objc_msgSend_isEqualToString_(v40, v54, @"center");
  if (v61)
  {
    if (v29)
    {
      if (sub_23EC132F8(v61, v62, v63))
      {
        v64 = objc_msgSend_contentView(self, v62, v63);
        objc_msgSend_bounds(v64, v65, v66);
        width = v67;
      }

      v68 = 0.5;
      v69 = (width - v46) * 0.5;
      v70 = floorf(v69);
      if (v70 <= 0.0)
      {
        v70 = 0.0;
      }

      forcedRightmostEditTextInset = v70;
      goto LABEL_44;
    }

LABEL_73:
    forcedRightmostEditTextInset = v42;
    goto LABEL_74;
  }

  if (objc_msgSend_isEqualToString_(v40, v62, @"top"))
  {
    if (!v29)
    {
      goto LABEL_73;
    }

    v73 = (width - v46) * 0.5;
    forcedRightmostEditTextInset = floorf(v73);
LABEL_49:
    v44 = v109;
    goto LABEL_74;
  }

  if (!objc_msgSend_isEqualToString_(v40, v62, @"left"))
  {
    if (objc_msgSend_isEqualToString_(v40, v74, @"right"))
    {
      v77 = width + forcedRightmostEditTextInset;
      if (!v29)
      {
        objc_msgSend_horizontalSpacingForView_withItem_(self, v62, view, item);
        forcedRightmostEditTextInset = v77 + v80;
        *&v80 = (v28 - v48) * 0.5;
        v44 = y + floorf(*&v80);
        goto LABEL_74;
      }

      forcedRightmostEditTextInset = v77 - v46;
      v71 = v28 - v48;
      v68 = 0.5;
      goto LABEL_45;
    }

    if (objc_msgSend_isEqualToString_(v40, v62, @"bottom"))
    {
      if (v29)
      {
        v68 = 0.5;
        v79 = (width - v46) * 0.5;
        forcedRightmostEditTextInset = forcedRightmostEditTextInset + floorf(v79);
LABEL_44:
        v71 = v28 - v48;
LABEL_45:
        v72 = v71 * v68;
        v44 = floorf(v72);
        goto LABEL_74;
      }

      v82 = objc_msgSend_contentView(self, v62, v63);
      objc_msgSend_frame(v82, v83, v84);
      v86 = (v85 - v46) * 0.5;
      forcedRightmostEditTextInset = floorf(v86);
    }

    else
    {
      if (objc_msgSend_isEqualToString_(v40, v62, @"topLeft"))
      {
        if (!v29)
        {
          goto LABEL_73;
        }

        objc_msgSend_leftInsetForView_withItem_(self, v62, view, item);
        forcedRightmostEditTextInset = v81;
        goto LABEL_49;
      }

      if (objc_msgSend_isEqualToString_(v40, v62, @"topRight"))
      {
        if (v29)
        {
          goto LABEL_73;
        }

        objc_msgSend_horizontalSpacingForView_withItem_(self, v62, view, item);
        forcedRightmostEditTextInset = width + forcedRightmostEditTextInset + v87;
        goto LABEL_49;
      }

      if (objc_msgSend_isEqualToString_(v40, v62, @"bottomLeft"))
      {
        if (!v29)
        {
          objc_msgSend_verticalSpacingForView_withItem_(self, v62, view, item);
          v44 = v28 + y + v88;
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if ((v29 | objc_msgSend_isEqualToString_(v40, v62, @"bottomRight") ^ 1))
      {
        goto LABEL_73;
      }

      objc_msgSend_horizontalSpacingForView_withItem_(self, v62, view, item);
      forcedRightmostEditTextInset = width + forcedRightmostEditTextInset + v107;
    }

    v44 = v109 + v28 + y;
    goto LABEL_74;
  }

  v75 = (v28 - v48) * 0.5;
  v44 = floorf(v75);
  if (v29)
  {
    objc_msgSend_leftInsetForView_withItem_(self, v74, view, item);
    forcedRightmostEditTextInset = v76;
  }

  else
  {
    forcedRightmostEditTextInset = forcedRightmostEditTextInset - v46;
    objc_msgSend_horizontalSpacingForView_withItem_(self, v74, view, item);
    v46 = v46 - v78;
  }

LABEL_74:
  v89 = objc_msgSend_reuseIdentifier(self, v62, v63);
  if ((objc_msgSend_isEqualToString_(v89, v90, @"NoBackgroundTypeCellID") & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_frame(view, v91, v92);
      if (forcedRightmostEditTextInset < v109 && v95 > 0.0)
      {
        forcedRightmostEditTextInset = v109;
      }

      objc_msgSend_frame(view, v93, v94);
      if (v99 > 0.0)
      {
        objc_msgSend_verticalInset(self, v97, v98);
        if (v44 < v100)
        {
          v44 = v100;
        }
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (forcedRightmostEditTextInset > self->_computedRightmostEditTextInset)
    {
      self->_computedRightmostEditTextInset = forcedRightmostEditTextInset;
    }

    v46 = v46 - (self->_forcedRightmostEditTextInset - forcedRightmostEditTextInset);
    forcedRightmostEditTextInset = self->_forcedRightmostEditTextInset;
  }

  objc_msgSend_setFrame_(view, v101, v102, forcedRightmostEditTextInset, v44, v46, v48);
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculatePositionForView:forItem:atItemIndex:]", 800, "view.frame set to frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v103, v104, v105, v106, *&forcedRightmostEditTextInset);
  }
}

- (double)calculateFrameSizeForView:(id)view forItem:(id)item atItemIndex:(unint64_t)index withRemainingContentWidth:(double)width
{
  v185[1] = *MEMORY[0x277D85DE8];
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "\n", index, v6, v7, v8, v180);
  }

  v14 = objc_msgSend_objectForKey_(item, a2, @"position");
  objc_msgSend_edgeInsetValue_(self, v15, item);
  if ((objc_msgSend_isEqualToString_(v14, v16, @"bottomLeft") & 1) != 0 || objc_msgSend_isEqualToString_(v14, v17, @"bottom"))
  {
    v19 = objc_msgSend_objectForKey_(item, v17, @"neighbor");
    if (v19)
    {
      v21 = objc_msgSend_objectForKey_(v19, v20, @"cachedView");
      objc_msgSend_usableContentWidthForItem_withVerticalNeighborView_(self, v22, item, v21);
    }

    else
    {
      objc_msgSend_usableContentWidthForItem_withVerticalNeighborView_(self, v20, item, 0);
    }

    width = v23;
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_msgSend_cellDict(self, v17, v18);
  v27 = objc_msgSend_objectForKey_(v25, v26, @"items");
  if (objc_msgSend_count(v27, v28, v29) - 1 == index)
  {
    v34 = 1;
  }

  else
  {
    v34 = v24;
  }

  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    v35 = "NO";
    if (v34)
    {
      v35 = "YES";
    }

    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "isLastItem = %s\n", v30, v31, v32, v33, v35);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_frame(view, v36, v37);
    v39 = v38;
    v41 = v40;
    widthCopy = v42;
    v45 = v44;
    if (!objc_msgSend_text(view, v46, v47))
    {
      goto LABEL_54;
    }

    if (objc_msgSend_numberOfLines(view, v48, v49) == 1)
    {
      v52 = objc_msgSend_text(view, v50, v51);
      v184 = *MEMORY[0x277D740A8];
      v185[0] = objc_msgSend_font(view, v53, v54);
      v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, v185, &v184, 1);
      objc_msgSend_boundingRectWithSize_options_attributes_context_(v52, v57, 32, v56, 0, width, 1.79769313e308);
    }

    else
    {
      if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
      {
        objc_msgSend_numberOfLines(view, v50, v51);
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "laying out UILabel to width = %.1f (number of lines %d)\n", v121, v122, v123, v124, *&width);
      }

      v125 = objc_msgSend_text(view, v50, v51);
      v182 = *MEMORY[0x277D740A8];
      v183 = objc_msgSend_font(view, v126, v127);
      v129 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v128, &v183, &v182, 1);
      objc_msgSend_boundingRectWithSize_options_attributes_context_(v125, v130, 1, v129, 0, width, 1.79769313e308);
    }

    v39 = v58;
    v41 = v59;
    v131 = v60;
    v132 = ceilf(v131);
    widthCopy = v132;
    v133 = v61;
    v134 = ceilf(v133);
    if (v132 == 0.0)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v134;
    }

    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      v186.origin.x = v39;
      v186.origin.y = v41;
      v186.size.width = widthCopy;
      v186.size.height = v45;
      v135 = NSStringFromCGRect(v186);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "computed text rect = %@ (remainingContentWidth %.3f)\n", v136, v137, v138, v139, v135);
    }

    if (v34)
    {
      widthCopy = width;
      objc_msgSend_setFrame_(view, v48, v49, v39, v41, width, v45);
    }

    else
    {
LABEL_54:
      objc_msgSend_setFrame_(view, v48, v49, v39, v41, widthCopy, v45);
    }

    width = width - widthCopy;
    if (dword_27E382F68 <= 800)
    {
      if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
      {
        objc_msgSend_frame(view, v140, v141);
        v143 = v142;
        objc_msgSend_frame(view, v144, v145);
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "UILabel size set to=(w = %.1f, h = %.1f)\n", v146, v147, v148, v149, v143);
      }

LABEL_59:
      if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "returning remainingContentWidth of %.1f\n", v96, v97, v98, v99, *&width);
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_sizeToFit(view, v108, v109);
        if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
        {
          objc_msgSend_frame(view, v110, v111);
          v113 = v112;
          objc_msgSend_frame(view, v114, v115);
          sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "UIButton size set to=(w = %.1f, h = %.1f)\n", v116, v117, v118, v119, v113);
        }

        objc_msgSend_frame(view, v110, v111);
        width = width - v120;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          if (sub_23EC132F8(isKindOfClass, v152, v153))
          {
            v156 = objc_msgSend_contentView(self, v154, v155);
            objc_msgSend_frame(v156, v157, v158);
            v160 = v159;
            v162 = v161;
            v164 = v163;
            v166 = v165;
            v169 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v167, v168);
            objc_msgSend_scale(v169, v170, v171);
            if (v172 == 2.0)
            {
              v173 = 7.5;
            }

            else
            {
              v173 = 7.0;
            }

            v187.origin.x = v160;
            v187.origin.y = v162;
            v187.size.width = v164;
            v187.size.height = v166;
            modifiedContentViewFrame = CGRectInset(v187, 5.0, v173);
          }

          else
          {
            modifiedContentViewFrame = self->_modifiedContentViewFrame;
          }

          objc_msgSend_setFrame_(view, v154, v155, modifiedContentViewFrame.origin.x, modifiedContentViewFrame.origin.y, modifiedContentViewFrame.size.width, modifiedContentViewFrame.size.height);
        }

        else
        {
          objc_msgSend_frame(view, v152, v153);
          width = width - v174;
          if (dword_27E382F68 > 800)
          {
            return width;
          }

          if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
          {
            v175 = objc_opt_class();
            v181 = NSStringFromClass(v175);
            sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "size calculation for this class %@ is not yet supported\n", v176, v177, v178, v179, v181);
          }
        }
      }

      goto LABEL_59;
    }

    v64 = MEMORY[0x277D74300];
    objc_msgSend_labelFontSize(MEMORY[0x277D74300], v62, v63);
    v67 = objc_msgSend_systemFontOfSize_(v64, v65, v66);
    v70 = objc_msgSend_font(view, v68, v69);
    objc_msgSend_pointSize(v70, v71, v72);
    v74 = v73;
    objc_msgSend_pointSize(v67, v75, v76);
    if (v74 > v79)
    {
      v67 = objc_msgSend_font(view, v77, v78);
    }

    objc_msgSend_frame(view, v77, v78);
    v81 = v80;
    v83 = v82;
    objc_msgSend_lineHeight(v67, v84, v85);
    widthCopy2 = width;
    v90 = width * 0.5;
    v91 = floorf(v90);
    if (!v34)
    {
      widthCopy2 = v91;
    }

    v92 = ceilf(widthCopy2);
    v93 = v88;
    objc_msgSend_setFrame_(view, v86, v87, v81, v83, v92, ceilf(v93));
    width = width - v92;
    if (dword_27E382F68 <= 800)
    {
      if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
      {
        objc_msgSend_frame(view, v94, v95);
        v101 = v100;
        objc_msgSend_frame(view, v102, v103);
        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell calculateFrameSizeForView:forItem:atItemIndex:withRemainingContentWidth:]", 800, "UITextField size set to=(w = %.1f, h = %.1f)\n", v104, v105, v106, v107, v101);
      }

      goto LABEL_59;
    }
  }

  return width;
}

- (void)repositionView:(id)view ifOverlapsPreviousView:(id)previousView
{
  objc_msgSend_frame(view, a2, view);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_msgSend_frame(previousView, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v40.origin.x = v7;
  v40.origin.y = v9;
  v40.size.width = v11;
  v40.size.height = v13;
  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  if (CGRectIntersectsRect(v40, v45))
  {
    v38 = v13;
    v28 = v11;
    v29 = v9;
    v30 = v7;
    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell repositionView:ifOverlapsPreviousView:]", 800, "view %@ collides with %@\n", v24, v25, v26, v27, view);
    }

    v41.origin.x = v17;
    v41.origin.y = v19;
    v41.size.width = v21;
    v41.size.height = v23;
    MinX = CGRectGetMinX(v41);
    v42.origin.x = v30;
    v42.origin.y = v29;
    v42.size.width = v28;
    v42.size.height = v38;
    if (MinX < CGRectGetMinX(v42))
    {
      v43.origin.x = v17;
      v43.origin.y = v19;
      v43.size.width = v21;
      v43.size.height = v23;
      MaxX = CGRectGetMaxX(v43);
      v33 = v30;
      v34 = MaxX;
      v44.origin.x = v33;
      v44.origin.y = v29;
      v44.size.width = v28;
      v44.size.height = v38;
      v37 = v21 - (v34 - (CGRectGetMinX(v44) + -10.0));

      objc_msgSend_setFrame_(previousView, v35, v36, v17, v19, v37, v23);
    }
  }
}

- (void)layoutSubviews
{
  v177 = *MEMORY[0x277D85DE8];
  if (dword_27E382F68 <= 800)
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      v8 = objc_msgSend_currentIndexPath(self, a2, v2);
      objc_msgSend_section(v8, v9, v10);
      v13 = objc_msgSend_currentIndexPath(self, v11, v12);
      objc_msgSend_row(v13, v14, v15);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "cell %@ section %d row %d\n", v16, v17, v18, v19, self);
    }

    if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "current forced max edit text inset = %.1f\n", v4, v5, v6, v7, *&self->_forcedRightmostEditTextInset);
    }
  }

  v175.receiver = self;
  v175.super_class = ManagedTableViewCell;
  [(ManagedTableViewCell *)&v175 layoutSubviews];
  v22 = objc_msgSend_reuseIdentifier(self, v20, v21);
  isEqualToString = objc_msgSend_isEqualToString_(v22, v23, @"NoBackgroundTypeCellID");
  self->_computedRightmostEditTextInset = 0.0;
  objc_msgSend_verticalInset(self, v25, v26);
  v30 = v29;
  if (isEqualToString)
  {
    objc_msgSend_setBackgroundView_(self, v27, 0);
  }

  v31 = objc_msgSend_contentView(self, v27, v28);
  v34 = objc_msgSend_frame(v31, v32, v33);
  v39 = v37;
  if (self->_cellXEdgeInset != v37)
  {
    v40 = v38;
    self->_cellXEdgeInset = v37;
    v41 = objc_msgSend_parentTableManager(self, v35, v36);
    v34 = objc_msgSend_informOfNewCellLeftEdge_andWidth_(v41, v42, v43, v39, v40);
  }

  if (sub_23EC132F8(v34, v35, v36))
  {
    if (objc_msgSend_isEditing(self, v44, v45) && objc_msgSend_accessoryType(self, v46, v47))
    {
      objc_msgSend_frame(self, v46, v47);
      p_modifiedContentViewFrame = &self->_modifiedContentViewFrame;
      v55 = v54 + -33.0;
      goto LABEL_22;
    }
  }

  else
  {
    v56 = objc_msgSend_parentTableManager(self, v44, v45);
    v59 = objc_msgSend_managedTableView(v56, v57, v58);
    if (objc_msgSend_style(v59, v60, v61) == 1)
    {
      v62 = objc_msgSend_contentView(self, v46, v47);
      objc_msgSend_frame(v62, v63, v64);
      v66 = v65;
      objc_msgSend_frame(self, v67, v68);
      if (v66 == v69)
      {
        p_modifiedContentViewFrame = &self->_modifiedContentViewFrame;
        v70 = objc_msgSend_contentView(self, v46, v47);
        objc_msgSend_frame(v70, v71, v72);
        *&v50 = CGRectInset(v178, 10.0, 0.0);
        goto LABEL_22;
      }
    }
  }

  p_modifiedContentViewFrame = &self->_modifiedContentViewFrame;
  v73 = objc_msgSend_contentView(self, v46, v47);
  objc_msgSend_frame(v73, v74, v75);
LABEL_22:
  p_modifiedContentViewFrame->origin.x = v50;
  p_modifiedContentViewFrame->origin.y = v51;
  p_modifiedContentViewFrame->size.width = v55;
  p_modifiedContentViewFrame->size.height = v52;
  objc_msgSend_usableContentWidth(self, v48, v49);
  v83 = v82;
  v169 = isEqualToString;
  if (dword_27E382F68 >= 801)
  {
    p_neededContentHeight = &self->_neededContentHeight;
    self->_neededContentHeight = 44.0;
  }

  else
  {
    if (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u))
    {
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "initial content width = %.1f\n", v78, v79, v80, v81, *&v83);
    }

    v84 = dword_27E382F68;
    p_neededContentHeight = &self->_neededContentHeight;
    self->_neededContentHeight = 44.0;
    if (v84 <= 800 && (v84 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
    {
      v86 = objc_msgSend_contentView(self, v76, v77);
      sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "contentView %@\n", v87, v88, v89, v90, v86);
    }
  }

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v91 = objc_msgSend_cellDict(self, v76, v77);
  obj = objc_msgSend_objectForKey_(v91, v92, @"items");
  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, &v171, v176, 16);
  if (v94)
  {
    v102 = v94;
    v103 = 0;
    v104 = 0;
    v105 = *v172;
    do
    {
      v106 = 0;
      v107 = v103;
      do
      {
        if (*v172 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v108 = *(*(&v171 + 1) + 8 * v106);
        v103 = objc_msgSend_objectForKey_(v108, v95, @"cachedView");
        if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
        {
          sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "item index %d cached view %@\n", v110, v111, v112, v113, v104);
        }

        objc_msgSend_calculateFrameSizeForView_forItem_atItemIndex_withRemainingContentWidth_(self, v109, v103, v108, v104, v83);
        v115 = v114;
        objc_msgSend_calculatePositionForView_forItem_atItemIndex_(self, v116, v103, v108, v104);
        if (v107)
        {
          objc_msgSend_repositionView_ifOverlapsPreviousView_(self, v117, v103, v107);
        }

        v119 = objc_msgSend_contentView(self, v117, v118);
        objc_msgSend_addSubview_(v119, v120, v103);
        objc_msgSend_horizontalSpacingForView_withItem_(self, v121, v103, v108);
        v123 = v122;
        if (objc_msgSend_objectForKey_(v108, v124, @"edgeInset"))
        {
          objc_msgSend_edgeInsetValue_(self, v125, v108);
          v30 = v131;
        }

        v83 = v115 - v123;
        if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
        {
          sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "remaining content width = %.1f\n", v127, v128, v129, v130, *&v83);
        }

        objc_msgSend_frame(v103, v125, v126);
        MaxY = CGRectGetMaxY(v179);
        if (MaxY > *p_neededContentHeight)
        {
          *p_neededContentHeight = MaxY;
          if (dword_27E382F68 <= 800)
          {
            if (dword_27E382F68 == -1)
            {
              if (!sub_23EB74AC8(&dword_27E382F68, 0x320u))
              {
                goto LABEL_54;
              }

              MaxY = *p_neededContentHeight;
            }

            sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "adjusted _neededContentHeight to %.1f\n", v132, v133, v134, v135, *&MaxY);
          }
        }

LABEL_54:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setIsAccessibilityElement_(v103, v95, 0);
          v139 = objc_msgSend_accessibilityTraits(v103, v137, v138);
          objc_msgSend_setAccessibilityTraits_(self, v140, v139);
          objc_msgSend_accessibilityActivationPoint(v103, v141, v142);
          objc_msgSend_setAccessibilityActivationPoint_(self, v143, v144);
        }

        ++v104;
        ++v106;
        v107 = v103;
      }

      while (v102 != v106);
      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v95, &v171, v176, 16);
    }

    while (v102);
  }

  if ((v169 & 1) == 0)
  {
    v101 = *p_neededContentHeight;
    if (*p_neededContentHeight > 44.0)
    {
      v101 = v30 + v101;
      *p_neededContentHeight = v101;
      if (dword_27E382F68 <= 800)
      {
        if (dword_27E382F68 == -1)
        {
          if (!sub_23EB74AC8(&dword_27E382F68, 0x320u))
          {
            goto LABEL_65;
          }

          v101 = *p_neededContentHeight;
        }

        sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "adjusted _neededContentHeight by kStandardEdgeInset to %.1f\n", v97, v98, v99, v100, *&v101);
      }
    }
  }

LABEL_65:
  v145 = objc_msgSend_cellDict(self, v95, v96, v101);
  v149 = objc_msgSend_objectForKey_(v145, v146, @"cachedHeight");
  if (!v149)
  {
    v149 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v147, v148);
    v152 = objc_msgSend_cellDict(self, v150, v151);
    objc_msgSend_setObject_forKey_(v152, v153, v149, @"cachedHeight");
  }

  v154 = *p_neededContentHeight;
  *&v154 = *p_neededContentHeight;
  v155 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v147, v148, v154);
  v156 = MEMORY[0x277CCABB0];
  objc_msgSend_bounds(self, v157, v158);
  *&v160 = v159;
  v163 = objc_msgSend_numberWithFloat_(v156, v161, v162, v160);
  objc_msgSend_setObject_forKey_(v149, v164, v155, v163);
  if (dword_27E382F68 <= 800 && (dword_27E382F68 != -1 || sub_23EB74AC8(&dword_27E382F68, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F68, "[ManagedTableViewCell layoutSubviews]", 800, "final _neededContentHeight = %.1f\n", v165, v166, v167, v168, *p_neededContentHeight);
  }
}

- (id)accessibilityValue
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = objc_msgSend_cellDict(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"items");
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v31, v35, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v32;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = objc_msgSend_objectForKey_(*(*(&v31 + 1) + 8 * v13), v9, @"cachedView");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v31, v35, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!v14)
    {
      goto LABEL_12;
    }

    return objc_msgSend_accessibilityValue(v14, v9, v10);
  }

  else
  {
LABEL_12:
    v16 = objc_msgSend_parentTableManager(self, v9, v10);
    v19 = objc_msgSend_currentIndexPath(self, v17, v18);
    ValueForFirstItemOfType_inCellAtIndexPath = objc_msgSend_getValueForFirstItemOfType_inCellAtIndexPath_(v16, v20, @"unreadBubbleCount", v19);
    if (ValueForFirstItemOfType_inCellAtIndexPath)
    {
      v22 = ValueForFirstItemOfType_inCellAtIndexPath;
      v23 = sub_23EB6CD3C(@"status.alerts.plural", @"AirportAccessibility");
      if (objc_msgSend_integerValue(v22, v24, v25) == 1)
      {
        v23 = sub_23EB6CD3C(@"status.alerts.singular", @"AirportAccessibility");
      }

      v27 = MEMORY[0x277CCACA8];
      v28 = objc_msgSend_localizedStringFromNumber_numberStyle_(MEMORY[0x277CCABB8], v26, v22, 0);
      return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v27, v29, v23, @"%@", 0, v28);
    }

    else
    {
      v30.receiver = self;
      v30.super_class = ManagedTableViewCell;
      return [(ManagedTableViewCell *)&v30 accessibilityValue];
    }
  }
}

@end