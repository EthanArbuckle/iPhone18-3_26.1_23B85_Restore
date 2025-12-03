@interface PDFIconsView
- (CGRect)contentRect;
- (CGSize)_iconsLayoutSize;
- (id)currentPage;
- (id)initFromThumbnailView:(id)view;
- (int)_iconsLayoutIconCount;
- (void)_configureIcons;
- (void)_updateScrubberAtViewLocation:(CGPoint)location;
- (void)_updateScrubberForPageIndex:(int)index goToPage:(BOOL)page;
- (void)currentPageChanged:(id)changed;
- (void)documentMutated:(id)mutated;
- (void)layoutSubviews;
- (void)pageChanged:(id)changed;
- (void)setIconConfigurationHandler:(id)handler;
- (void)setPrefersIconOverlaySelection:(BOOL)selection;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)updateIconsImages;
@end

@implementation PDFIconsView

- (id)initFromThumbnailView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = PDFIconsView;
  v5 = [(PDFIconsView *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_thumbnailView, viewCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    icons = v6->_icons;
    v6->_icons = v7;

    v9 = *(MEMORY[0x1E695F050] + 16);
    v6->_contentRect.origin = *MEMORY[0x1E695F050];
    v6->_contentRect.size = v9;
    v6->_iconScale = 1.333;
    iconConfigurationHandler = v6->_iconConfigurationHandler;
    v6->_iconConfigurationHandler = 0;

    v6->_prefersIconOverlaySelection = 0;
    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(PDFIconsView *)v6 setBackgroundColor:tertiarySystemBackgroundColor];
  }

  return v6;
}

- (void)updateIconsImages
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_icons;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setNeedsUpdate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)currentPage
{
  if (([(PDFPageIconLayer *)self->_activeIcon isHidden]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    document = [(PDFPageIconLayer *)self->_activeIcon document];
    v3 = [document pageAtIndex:{-[PDFPageIconLayer pageIndex](self->_activeIcon, "pageIndex")}];
  }

  return v3;
}

- (void)documentMutated:(id)mutated
{
  [(PDFIconsView *)self updateIconsImages];

  [(PDFIconsView *)self setNeedsLayout];
}

- (void)currentPageChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  currentPage = [pDFView currentPage];

  document = [currentPage document];
  v7 = [document indexForPage:currentPage];

  [(PDFIconsView *)self _updateScrubberForPageIndex:v7 goToPage:0];
}

- (void)pageChanged:(id)changed
{
  v19 = *MEMORY[0x1E69E9840];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"page"];
  document = [v5 document];
  v7 = [document indexForPage:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_icons;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 pageIndex] == v7)
        {
          [v13 setNeedsUpdate];

          [(PDFIconsView *)self setNeedsLayout];
          goto LABEL_11;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  if ([(PDFPageIconLayer *)self->_activeIcon pageIndex]== v7)
  {
    [(PDFPageIconLayer *)self->_activeIcon setNeedsUpdate];
    [(PDFPageIconLayer *)self->_activeIcon updateAsPageIndex:v7 forDocument:document];
  }
}

- (void)layoutSubviews
{
  v100 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  layoutMode = [WeakRetained layoutMode];
  _iconsLayoutIconCount = [(PDFIconsView *)self _iconsLayoutIconCount];
  v7 = _iconsLayoutIconCount;
  v8 = [(NSMutableArray *)self->_icons count];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v89 = WeakRetained;
  [WeakRetained thumbnailSize];
  v93 = v10;
  v94 = v9;
  v11 = _iconsLayoutIconCount - v8;
  if (_iconsLayoutIconCount != v8)
  {
    if (v11 >= 0)
    {
      v12 = _iconsLayoutIconCount - v8;
    }

    else
    {
      v12 = v8 - _iconsLayoutIconCount;
    }

    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    do
    {
      if (v11 < 0)
      {
        v14 = [(NSMutableArray *)self->_icons objectAtIndex:0];
        [(PDFPageIconLayer *)v14 removeFromSuperlayer];
        [(NSMutableArray *)self->_icons removeObjectAtIndex:0];
      }

      else
      {
        v14 = [[PDFPageIconLayer alloc] initWithSize:v94, v93];
        layer = [(PDFIconsView *)self layer];
        [layer addSublayer:v14];

        [(NSMutableArray *)self->_icons addObject:v14];
      }

      --v13;
    }

    while (v13);
  }

  [(PDFIconsView *)self _configureIcons];
  [(PDFIconsView *)self bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [WeakRetained contentInset];
  v25 = v17 + v24;
  v27 = v19 + v26;
  v29 = v21 - (v24 + v28);
  v31 = v23 - (v26 + v30);
  v101.origin.x = v17 + v24;
  v101.origin.y = v27;
  v101.size.width = v29;
  v101.size.height = v31;
  MidX = CGRectGetMidX(v101);
  v102.origin.x = v25;
  v102.origin.y = v27;
  v102.size.width = v29;
  v102.size.height = v31;
  MidY = CGRectGetMidY(v102);
  [(PDFIconsView *)self _iconsLayoutSize];
  if (v7 >= 1)
  {
    v36 = 0;
    v91 = v94 + 2.0;
    v92 = MidX - v34 * 0.5 + 1.0;
    v90 = MidY - v35 * 0.5 + 1.0;
    do
    {
      if (layoutMode)
      {
        v37 = v90;
      }

      else
      {
        v37 = v90 + v36 * (v93 + 2.0);
      }

      if (layoutMode)
      {
        v38 = v92 + v36 * v91;
      }

      else
      {
        v38 = v92;
      }

      pageCount = [document pageCount];
      v40 = pageCount;
      v41 = pageCount - 1;
      v42 = llroundf((v36 / (v7 - 1)) * (pageCount - 1));
      v43 = v42 & ~(v42 >> 31);
      if (v43 < pageCount)
      {
        v41 = v43;
      }

      if (v7 == pageCount)
      {
        v44 = v36;
      }

      else
      {
        v44 = v41;
      }

      if (layoutMode == 1)
      {
        if ([pDFView displaysRTL])
        {
          v44 = (~v44 + v40);
        }

        else
        {
          v44 = v44;
        }
      }

      v45 = [document pageAtIndex:v44];
      [v45 boundsForBox:1];
      v50 = PDFRectFromCGRect(v46, v47, v48, v49);
      v52 = PDFRectRotate([v45 rotation], v50, v51);
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v59.n128_u64[0] = 0;
      v60.n128_u64[0] = 0;
      v61 = PDFRectMake(v59, v60, v94, v93);
      v65 = PDFScaleRectToRect(v52, v54, v56, v58, v61, v62, v63, v64);
      v66 = PDFRectScale(v52, v54, v56, v58, v65);
      v68 = v67;
      v70 = v69;
      v71 = [(NSMutableArray *)self->_icons objectAtIndex:v36, v66];
      v103.size.width = v68;
      v103.size.height = v70;
      v103.origin.x = v38 - (v68 - v94) * 0.5;
      [v71 setFrame:{COERCE_DOUBLE(CGRectIntegral(v103)), v37 - (v70 - v93) * 0.5, v68, v70}];
      [v71 updateAsPageIndex:v44 forDocument:document];

      ++v36;
    }

    while (v7 != v36);
  }

  [MEMORY[0x1E6979518] commit];
  currentPage = [pDFView currentPage];
  v73 = [document indexForPage:currentPage];

  [(PDFIconsView *)self _updateScrubberForPageIndex:v73 goToPage:1];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v78 = self->_icons;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v95 objects:v99 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v96;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v96 != v81)
        {
          objc_enumerationMutation(v78);
        }

        [*(*(&v95 + 1) + 8 * i) frame];
        v106.origin.x = v83;
        v106.origin.y = v84;
        v106.size.width = v85;
        v106.size.height = v86;
        v104.origin.x = x;
        v104.origin.y = y;
        v104.size.width = width;
        v104.size.height = height;
        v105 = CGRectUnion(v104, v106);
        x = v105.origin.x;
        y = v105.origin.y;
        width = v105.size.width;
        height = v105.size.height;
      }

      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v95 objects:v99 count:16];
    }

    while (v80);
  }

  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = width;
  v107.size.height = height;
  if (!CGRectEqualToRect(self->_contentRect, v107))
  {
    self->_contentRect.origin.x = x;
    self->_contentRect.origin.y = y;
    self->_contentRect.size.width = width;
    self->_contentRect.size.height = height;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFThumbnailIconsViewContentRectDidChangeNotification" object:self userInfo:0];
  }
}

- (int)_iconsLayoutIconCount
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  layoutMode = [WeakRetained layoutMode];
  if (pDFView)
  {
    v7 = document == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (v8 = layoutMode, ([document isLocked] & 1) != 0) || !objc_msgSend(document, "pageCount"))
  {
    pageCount = 0;
  }

  else
  {
    [(PDFIconsView *)self bounds];
    v10 = v9;
    v12 = v11;
    [WeakRetained contentInset];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [WeakRetained thumbnailSize];
    if (v8)
    {
      v23 = v10 - (v16 + v20);
    }

    else
    {
      v21 = v22;
      v23 = v12 - (v14 + v18);
    }

    pageCount = vcvtmd_s64_f64(v23 / (v21 + 2.0));
    if ([document pageCount] < pageCount)
    {
      pageCount = [document pageCount];
    }
  }

  return pageCount;
}

- (CGSize)_iconsLayoutSize
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  layoutMode = [WeakRetained layoutMode];
  [WeakRetained thumbnailSize];
  v6 = v5;
  v8 = v7;
  _iconsLayoutIconCount = [(PDFIconsView *)self _iconsLayoutIconCount];
  if (layoutMode)
  {
    v10 = (v6 + 2.0) * _iconsLayoutIconCount;
  }

  else
  {
    v10 = v6 + 2.0;
  }

  if (layoutMode)
  {
    v11 = v8 + 2.0;
  }

  else
  {
    v11 = (v8 + 2.0) * _iconsLayoutIconCount;
  }

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  anyObject = [began anyObject];
  [anyObject locationInView:self];
  [(PDFIconsView *)self _updateScrubberAtViewLocation:?];
}

- (void)_updateScrubberAtViewLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  layoutMode = [WeakRetained layoutMode];
  if (document)
  {
    v9 = layoutMode;
    [(PDFIconsView *)self bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [WeakRetained contentInset];
    v19 = v11 + v18;
    v21 = v13 + v20;
    v23 = v15 - (v18 + v22);
    v25 = v17 - (v20 + v24);
    v39.origin.x = v19;
    v39.origin.y = v21;
    v39.size.width = v23;
    v39.size.height = v25;
    MidX = CGRectGetMidX(v39);
    v40.origin.x = v19;
    v40.origin.y = v21;
    v40.size.width = v23;
    v40.size.height = v25;
    MidY = CGRectGetMidY(v40);
    [(PDFIconsView *)self _iconsLayoutSize];
    if (v9)
    {
      v30 = MidX;
    }

    else
    {
      v28 = v29;
      v30 = MidY;
    }

    v31 = v9 ? x : y;
    v32 = (v31 - (v30 - v28 * 0.5)) / (v30 + v28 * 0.5 - (v30 - v28 * 0.5));
    if (v32 >= -0.1 && v32 <= 1.1)
    {
      v33 = CGFloatClamp(v32, 0.0, 1.0);
      pageCount = [document pageCount];
      v35 = vcvtmd_s64_f64(v33 * pageCount);
      if (v35 >= pageCount)
      {
        v36 = (pageCount - 1);
      }

      else
      {
        v36 = v35;
      }

      if (v9 == 1)
      {
        if ([pDFView displaysRTL])
        {
          v36 = (~v36 + pageCount);
        }

        else
        {
          v36 = v36;
        }
      }

      [(PDFIconsView *)self _updateScrubberForPageIndex:v36 goToPage:1];
    }
  }
}

- (void)_updateScrubberForPageIndex:(int)index goToPage:(BOOL)page
{
  pageCopy = page;
  v5 = *&index;
  v92 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  pDFView = [WeakRetained PDFView];
  document = [pDFView document];
  layoutMode = [WeakRetained layoutMode];
  pageCount = [document pageCount];
  if (pDFView)
  {
    v12 = document == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (v14 = pageCount, v15 = [document isLocked], (v15 & 1) != 0 || v14 <= 0))
  {
    [(PDFPageIconLayer *)self->_activeIcon removeFromSuperlayer];
    activeIcon = self->_activeIcon;
    self->_activeIcon = 0;
  }

  else
  {
    [(PDFIconsView *)self _iconsLayoutSize];
    v17 = v16;
    v19 = v18;
    _iconsLayoutIconCount = [(PDFIconsView *)self _iconsLayoutIconCount];
    [WeakRetained thumbnailSize];
    v23 = v22;
    v24 = 2.0;
    v84 = v19;
    if (_iconsLayoutIconCount >= v14)
    {
      v83 = v21;
    }

    else
    {
      v25 = v14;
      if (layoutMode)
      {
        v83 = v21;
        v23 = (v17 + -2.0 - v23) / v25;
      }

      else
      {
        v83 = (v19 + -2.0 - v21) / v25;
      }

      v24 = 0.0;
    }

    [(PDFIconsView *)self bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [WeakRetained contentInset];
    v35 = v27 + v34;
    v37 = v29 + v36;
    v39 = v31 - (v34 + v38);
    v41 = v33 - (v36 + v40);
    v93.origin.x = v35;
    v93.origin.y = v37;
    v93.size.width = v39;
    v93.size.height = v41;
    MidX = CGRectGetMidX(v93);
    v94.origin.x = v35;
    v94.origin.y = v37;
    v94.size.width = v39;
    v94.size.height = v41;
    MidY = CGRectGetMidY(v94);
    v44 = MidY;
    v86 = pageCopy;
    if (layoutMode)
    {
      displaysRTL = [pDFView displaysRTL];
      v46 = v14 + ~v5;
      if (!displaysRTL)
      {
        v46 = v5;
      }

      v47 = MidX - v17 * 0.5 + 1.0 + v46 * (v24 + v23);
      v48 = v44 - v84 * 0.5 + 1.0;
    }

    else
    {
      v47 = MidX - v17 * 0.5 + 1.0;
      v48 = MidY - v84 * 0.5 + 1.0 + v5 * (v24 + v83);
    }

    [WeakRetained thumbnailSize];
    iconScale = self->_iconScale;
    v51 = v50 * iconScale;
    v53 = v52 * iconScale;
    v54 = v47 - (v50 * iconScale - v50) * 0.5;
    v55 = v48 - (v52 * iconScale - v52) * 0.5;
    v85 = [document pageAtIndex:?];
    [(PDFPageIconLayer *)v85 boundsForBox:1];
    v57 = v56;
    v59 = v58;
    v62 = PDFScaleRectToRect(v60, v61, v56, v58, v54, v55, v51, v53);
    v63 = v62 * v57;
    v64 = v62 * v59;
    v65 = v54 + (v51 - v62 * v57) * 0.5;
    if (v51 > v63)
    {
      v66 = v63;
    }

    else
    {
      v65 = v54;
      v66 = v51;
    }

    v67 = v55 + (v53 - v64) * 0.5;
    if (v53 <= v64)
    {
      v67 = v55;
      v64 = v53;
    }

    v95 = CGRectIntegral(*&v65);
    x = v95.origin.x;
    y = v95.origin.y;
    width = v95.size.width;
    height = v95.size.height;
    if (!self->_activeIcon)
    {
      v72 = [[PDFPageIconLayer alloc] initWithSize:v95.size.width, v95.size.height];
      v73 = self->_activeIcon;
      self->_activeIcon = v72;

      [(PDFPageIconLayer *)self->_activeIcon setZPosition:1.0];
      [(PDFPageIconLayer *)self->_activeIcon setSelected:1];
      layer = [(PDFIconsView *)self layer];
      [layer addSublayer:self->_activeIcon];
    }

    [(PDFIconsView *)self _configureIcons];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(PDFPageIconLayer *)self->_activeIcon setFrame:x, y, width, height];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v75 = self->_icons;
    v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v87 objects:v91 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v88;
      while (2)
      {
        for (i = 0; i != v77; ++i)
        {
          if (*v88 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v80 = *(*(&v87 + 1) + 8 * i);
          if ([v80 pageIndex] == v5)
          {
            contents = [v80 contents];

            if (contents)
            {
              [(PDFPageIconLayer *)self->_activeIcon setContents:contents];
            }

            goto LABEL_38;
          }
        }

        v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v87 objects:v91 count:16];
        if (v77)
        {
          continue;
        }

        break;
      }
    }

LABEL_38:
    [MEMORY[0x1E6979518] commit];
    [(PDFPageIconLayer *)self->_activeIcon updateAsPageIndex:v5 forDocument:document];
    if (v86)
    {
      v82 = [document pageAtIndex:v5];
      [pDFView goToPage:v82];
    }

    activeIcon = v85;
  }
}

- (void)setIconConfigurationHandler:(id)handler
{
  if (self->_iconConfigurationHandler != handler)
  {
    v4 = [handler copy];
    iconConfigurationHandler = self->_iconConfigurationHandler;
    self->_iconConfigurationHandler = v4;

    [(PDFIconsView *)self _configureIcons];
  }
}

- (void)setPrefersIconOverlaySelection:(BOOL)selection
{
  if (self->_prefersIconOverlaySelection != selection)
  {
    self->_prefersIconOverlaySelection = selection;
    [(PDFIconsView *)self _configureIcons];
  }
}

- (void)_configureIcons
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _Block_copy(self->_iconConfigurationHandler);
  v4 = v3;
  if (v3 && self->_activeIcon)
  {
    (*(v3 + 2))(v3);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_icons;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v4)
        {
          v4[2](v4, *(*(&v11 + 1) + 8 * v9));
        }

        [v10 setPrefersOverlaySelection:{self->_prefersIconOverlaySelection, v11}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end