@interface AXElementNamesView
- (AXElementNamesView)initWithFrame:(CGRect)a3;
- (CGRect)boundsForLastReload;
- (void)_adjustLabelPositionForView:(id)a3 toAvoidCollidingWithView:(id)a4;
- (void)_arrangeNameViews:(id)a3 withinContainer:(id)a4;
- (void)_reloadViews;
- (void)layoutSubviews;
- (void)setItems:(id)a3;
@end

@implementation AXElementNamesView

- (AXElementNamesView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = AXElementNamesView;
  v3 = [(AXElementNamesView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(v3 + 58);
    *(v3 + 58) = v4;

    v6 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 472) = *MEMORY[0x1E695F050];
    *(v3 + 488) = v6;
    v7 = AXLogCommon();
    v8 = *(v3 + 56);
    *(v3 + 56) = v7;
  }

  return v3;
}

- (void)setItems:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = [(AXElementNamesView *)self loggingFacility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(AXElementNamesView *)a2 setItems:v7];
    }
  }

  if (self->_items != v6)
  {
    objc_storeStrong(&self->_items, a3);
    [(AXElementNamesView *)self setDidUpdateItems:1];
    [(AXElementNamesView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = AXElementNamesView;
  [(AXElementNamesView *)&v15 layoutSubviews];
  [(AXElementNamesView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AXElementNamesView *)self boundsForLastReload];
  v17.origin.x = v11;
  v17.origin.y = v12;
  v17.size.width = v13;
  v17.size.height = v14;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  if (!CGRectEqualToRect(v16, v17) || [(AXElementNamesView *)self didUpdateItems])
  {
    [(AXElementNamesView *)self setDidUpdateItems:0];
    [(AXElementNamesView *)self bounds];
    [(AXElementNamesView *)self setBoundsForLastReload:?];
    [(AXElementNamesView *)self _reloadViews];
  }
}

- (void)_reloadViews
{
  v98 = *MEMORY[0x1E69E9840];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v3 = [(AXElementNamesView *)self containers];
  v4 = [v3 countByEnumeratingWithState:&v87 objects:v97 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v88;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v88 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v87 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v87 objects:v97 count:16];
    }

    while (v5);
  }

  v8 = [(AXElementNamesView *)self containers];
  [v8 removeAllObjects];

  [(AXCyclingView *)self endCycling];
  v9 = [MEMORY[0x1E695DF70] array];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v10 = [(AXElementNamesView *)self items];
  v11 = [v10 countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v84;
    *&v12 = 138412290;
    v70 = v12;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v84 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v83 + 1) + 8 * j);
        v17 = [v16 elementName];
        v18 = [v17 length];

        if (v18)
        {
          [(AXElementNamesView *)self bounds];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [(AXElementNamesView *)self safeAreaInsets];
          v28 = v20 + v27;
          v30 = v22 + v29;
          v32 = v24 - (v27 + v31);
          v34 = v26 - (v29 + v33);
          v35 = [AXElementNamesItemView alloc];
          v36 = [v16 elementName];
          [v16 elementFrame];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v45 = [(AXElementNamesView *)self styleProvider];
          v46 = -[AXElementNamesItemView initWithName:elementFrame:availableBounds:styleProvider:isSpacer:](v35, "initWithName:elementFrame:availableBounds:styleProvider:isSpacer:", v36, v45, [v16 isSpacer], v38, v40, v42, v44, v28, v30, v32, v34);

          [v16 elementLabelContainerSize];
          [v46 setForcedLabelContainerSize:?];
          [v9 addObject:v46];
        }

        else
        {
          v46 = [(AXElementNamesView *)self loggingFacility];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = v70;
            v95 = v16;
            _os_log_impl(&dword_1C0DFB000, v46, OS_LOG_TYPE_INFO, "Found element with no name: %@", buf, 0xCu);
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v13);
  }

  while (1)
  {

    if (![v9 count])
    {
      break;
    }

    v47 = objc_alloc(MEMORY[0x1E69DD250]);
    [(AXElementNamesView *)self bounds];
    v10 = [v47 initWithFrame:?];
    [(AXElementNamesView *)self _arrangeNameViews:v9 withinContainer:v10];
    v48 = [v10 subviews];
    v49 = [v48 count];

    if (!v49)
    {

      break;
    }

    v50 = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v51 = [v10 subviews];
    v52 = [v51 countByEnumeratingWithState:&v79 objects:v93 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = *v80;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v80 != v55)
          {
            objc_enumerationMutation(v51);
          }

          v57 = *(*(&v79 + 1) + 8 * k);
          if ([v57 isSpacer])
          {
            [v50 addObject:v57];
          }

          else
          {
            [v9 removeObject:v57];
            ++v54;
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v79 objects:v93 count:16];
      }

      while (v53);
      v58 = v54 == 0;
    }

    else
    {
      v58 = 1;
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v59 = v50;
    v60 = [v59 countByEnumeratingWithState:&v75 objects:v92 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v76;
      do
      {
        for (m = 0; m != v61; ++m)
        {
          if (*v76 != v62)
          {
            objc_enumerationMutation(v59);
          }

          [*(*(&v75 + 1) + 8 * m) removeFromSuperview];
        }

        v61 = [v59 countByEnumeratingWithState:&v75 objects:v92 count:16];
      }

      while (v61);
    }

    if (v58)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v64 = v59;
      v65 = [v64 countByEnumeratingWithState:&v71 objects:v91 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v72;
        do
        {
          for (n = 0; n != v66; ++n)
          {
            if (*v72 != v67)
            {
              objc_enumerationMutation(v64);
            }

            [v9 removeObject:*(*(&v71 + 1) + 8 * n)];
          }

          v66 = [v64 countByEnumeratingWithState:&v71 objects:v91 count:16];
        }

        while (v66);
      }
    }

    else
    {
      v69 = [(AXElementNamesView *)self containers];
      [v69 addObject:v10];

      [(AXElementNamesView *)self addSubview:v10];
    }
  }

  [(AXCyclingView *)self beginCycling];
}

- (void)_adjustLabelPositionForView:(id)a3 toAvoidCollidingWithView:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  while (1)
  {
    [v6 labelContainerFrame];
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    if (!CGRectEqualToRect(v17, v18) && ![v6 collidesWithView:v7])
    {
      break;
    }

    if ([v6 labelPosition] == 4)
    {
      v12 = [(AXElementNamesView *)self loggingFacility];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v6 name];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_1C0DFB000, v12, OS_LOG_TYPE_INFO, "Could not find a non-colliding position for label for %@", &v14, 0xCu);
      }

      [v6 removeFromSuperview];
      break;
    }

    [v6 setLabelPosition:{objc_msgSend(v6, "labelPosition") + 1}];
  }
}

- (void)_arrangeNameViews:(id)a3 withinContainer:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [v21 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v14 = [v21 objectAtIndexedSubscript:v9];
      if ([v14 isSpacer])
      {
        [v14 setLabelPosition:4];
        [v6 addSubview:v14];
      }

      else
      {
        [v14 setLabelPosition:0];
        [v6 addSubview:v14];
        while ([v14 labelPosition] != 4)
        {
          [v14 labelContainerFrame];
          v24.origin.x = v10;
          v24.origin.y = v11;
          v24.size.width = v12;
          v24.size.height = v13;
          if (!CGRectEqualToRect(v23, v24))
          {
            break;
          }

          [v14 setLabelPosition:{objc_msgSend(v14, "labelPosition") + 1}];
        }

        if (v9)
        {
          v15 = 0;
          do
          {
            while (1)
            {
              v16 = [v21 objectAtIndexedSubscript:v15];
              v17 = [v16 superview];

              if (v17 == v6)
              {
                v18 = [v14 labelPosition];
                [(AXElementNamesView *)self _adjustLabelPositionForView:v14 toAvoidCollidingWithView:v16];
                if (v18 != [v14 labelPosition])
                {
                  break;
                }
              }

              if (++v15 == v9)
              {
                goto LABEL_16;
              }
            }

            v19 = [v14 superview];

            v15 = 0;
          }

          while (v19);
        }

LABEL_16:
        if ([v14 hasExtendedArrow])
        {
          v20 = [v14 superview];

          if (v20 == v6)
          {
            [v14 removeFromSuperview];
            [v6 insertSubview:v14 atIndex:0];
          }
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }
}

- (CGRect)boundsForLastReload
{
  x = self->_boundsForLastReload.origin.x;
  y = self->_boundsForLastReload.origin.y;
  width = self->_boundsForLastReload.size.width;
  height = self->_boundsForLastReload.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setItems:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_FAULT, "[AXElementNamesView %@] called off the main thread!", &v4, 0xCu);
}

@end