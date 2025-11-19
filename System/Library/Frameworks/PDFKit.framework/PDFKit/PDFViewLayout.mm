@interface PDFViewLayout
- (CGPoint)convertPoint:(CGPoint)a3 fromPage:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromPage:(id)a4 forScaleFactor:(double)a5;
- (CGPoint)convertPoint:(CGPoint)a3 toPage:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toPage:(id)a4 forScaleFactor:(double)a5;
- (CGRect)boundsForPage:(id)a3;
- (CGRect)convertRect:(CGRect)a3 fromPage:(id)a4 forScaleFactor:(double)a5;
- (CGRect)normalizedBoundsForPageAtIndex:(unint64_t)a3;
- (CGSize)contentSizeWithCurrentPage:(id)a3;
- (PDFDocument)document;
- (PDFViewLayout)init;
- (_NSRange)visiblePageRangeInBounds:(CGRect)a3 currentPage:(id)a4;
- (const)boundsForPageAtIndex:(unint64_t)a3;
- (id)delegate;
- (id)facingPageForPage:(id)a3;
- (id)pageNearestPoint:(CGPoint)a3 currentPage:(id)a4;
- (id)visiblePagesInBounds:(CGRect)a3 currentPage:(id)a4;
- (int64_t)functionalDisplayMode;
- (void)generateInternalDocumentGeometry;
- (void)invalidateInternalDocumentGeometry;
- (void)setDelegate:(id)a3;
- (void)setDocument:(id)a3;
@end

@implementation PDFViewLayout

- (PDFViewLayout)init
{
  v10.receiver = self;
  v10.super_class = PDFViewLayout;
  v2 = [(PDFViewLayout *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(PDFViewLayoutPrivate);
    v4 = v2->_private;
    v2->_private = v3;

    objc_storeWeak(&v2->_private->delegate, 0);
    v2->_private->delegateKnowsMargins = 0;
    v2->_private->delegateKnowsDisplayMode = 0;
    v2->_private->delegateKnowsDisplayAsBook = 0;
    v2->_private->delegateKnowsDisplayBox = 0;
    v2->_private->delegateKnowsDisplayRTL = 0;
    v2->_private->delegateKnowsDisplaysDirection = 0;
    v2->_private->delegateKnowsDocumentMargins = 0;
    v2->_private->delegateKnowsIsUsingPageViewController = 0;
    objc_storeWeak(&v2->_private->document, 0);
    v2->_private->pageCount = 0;
    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v6 = v2->_private;
    pageLayoutLock = v6->pageLayoutLock;
    v6->pageLayoutLock = v5;

    v8 = *MEMORY[0x1E695F060];
    v2->_private->singlePageContinuousSize = *MEMORY[0x1E695F060];
    v2->_private->twoUpContinousSize = v8;
    v2->_private->cachedContinuousSizeDisplayDirection = 0;
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_private->delegate, obj);
    self->_private->delegateKnowsMargins = objc_opt_respondsToSelector() & 1;
    self->_private->delegateKnowsDisplayMode = objc_opt_respondsToSelector() & 1;
    self->_private->delegateKnowsDisplayAsBook = objc_opt_respondsToSelector() & 1;
    self->_private->delegateKnowsDisplayBox = objc_opt_respondsToSelector() & 1;
    self->_private->delegateKnowsDisplayRTL = objc_opt_respondsToSelector() & 1;
    self->_private->delegateKnowsDisplaysDirection = objc_opt_respondsToSelector() & 1;
    self->_private->delegateKnowsDocumentMargins = objc_opt_respondsToSelector() & 1;
    self->_private->delegateKnowsIsUsingPageViewController = objc_opt_respondsToSelector() & 1;
    [(PDFViewLayout *)self invalidateInternalDocumentGeometry];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);

  return WeakRetained;
}

- (void)setDocument:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->document);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_private->document, obj);
    self->_private->pageCount = [obj pageCount];
    [(PDFViewLayout *)self invalidateInternalDocumentGeometry];
  }
}

- (PDFDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);

  return WeakRetained;
}

- (CGSize)contentSizeWithCurrentPage:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  v8 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_private->delegate);
    v10 = v9;
    v11 = MEMORY[0x1E69DDCE0];
    v12 = self->_private;
    if (v12->delegateKnowsMargins)
    {
      [v9 pageBreakMargins];
      v84 = v13;
      v86 = v14;
      v16 = v15;
      v18 = v17;
      v19 = *v11;
      v20 = v11[1];
      v22 = v11[2];
      v21 = v11[3];
      v12 = self->_private;
    }

    else
    {
      v19 = *MEMORY[0x1E69DDCE0];
      v20 = *(MEMORY[0x1E69DDCE0] + 8);
      v22 = *(MEMORY[0x1E69DDCE0] + 16);
      v21 = *(MEMORY[0x1E69DDCE0] + 24);
      v84 = *MEMORY[0x1E69DDCE0];
      v86 = v21;
      v16 = v20;
      v18 = v22;
    }

    if (v12->delegateKnowsDocumentMargins)
    {
      [v10 documentMargins];
      v19 = v23;
      v20 = v24;
      v22 = v25;
      v21 = v26;
      v12 = self->_private;
    }

    if (v12->delegateKnowsDisplaysDirection)
    {
      v27 = [v10 displayDirection];
      v12 = self->_private;
    }

    else
    {
      v27 = 0;
    }

    [(NSLock *)v12->pageLayoutLock lock];
    v28 = self->_private;
    if (v28->pageLayoutBounds.__begin_ == v28->pageLayoutBounds.__end_ || (pageCount = v28->pageCount, pageCount != [v8 pageCount]))
    {
      [(PDFViewLayout *)self generateInternalDocumentGeometry];
    }

    v30 = [v4 document];
    v31 = [v30 indexForPage:v4];

    v32 = self->_private;
    if (v31 == 0x7FFFFFFFFFFFFFFFLL || !v32->pageCount)
    {
      goto LABEL_41;
    }

    v33 = [(PDFViewLayout *)self functionalDisplayMode];
    v34 = v16 + v86 + v20 + v21;
    v35 = v85 + v18 + v19 + v22;
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v45 = &self->_private->pageLayoutBounds.__begin_[v31];
        x = v45->origin.x;
        y = v45->origin.y;
        width = v45->size.width;
        height = v45->size.height;
        MaxX = PDFRectGetMaxX(v45->origin.x, y, width);
        MaxY = PDFRectGetMaxY(x, y, width, height);
        v52 = [(PDFViewLayout *)self facingPageForPage:v4];
        v53 = v52;
        v5 = v34 + MaxX;
        v6 = v35 + MaxY;
        if (v52)
        {
          v87 = v35;
          v54 = [v52 document];
          v55 = [v54 indexForPage:v53];

          v56 = &self->_private->pageLayoutBounds.__begin_[v55];
          v57 = v56->origin.x;
          v58 = v56->origin.y;
          v59 = v56->size.width;
          v60 = v56->size.height;
          v5 = fmax(v5, v34 + PDFRectGetMaxX(v56->origin.x, v58, v59));
          v6 = fmax(v6, v87 + PDFRectGetMaxY(v57, v58, v59, v60));
        }

        goto LABEL_40;
      }

      if (v33 == 3)
      {
        v37 = self->_private;
        v5 = v37->twoUpContinousSize.width;
        if (v5 > 0.0 && v37->cachedContinuousSizeDisplayDirection == v27)
        {
          v6 = v37->twoUpContinousSize.height;
          goto LABEL_40;
        }

        v77 = PDFRectGetMaxY(v37->pageLayoutBounds.__begin_->origin.x, v37->pageLayoutBounds.__begin_->origin.y, v37->pageLayoutBounds.__begin_->size.width, v37->pageLayoutBounds.__begin_->size.height);
        v78 = PDFRectGetMaxY(self->_private->pageLayoutBounds.__begin_[1].origin.x, self->_private->pageLayoutBounds.__begin_[1].origin.y, self->_private->pageLayoutBounds.__begin_[1].size.width, self->_private->pageLayoutBounds.__begin_[1].size.height);
        v5 = v86 + PDFRectGetMaxX(self->_private->pageLayoutBounds.__begin_->origin.x, self->_private->pageLayoutBounds.__begin_->origin.y, self->_private->pageLayoutBounds.__begin_->size.width);
        v79 = self->_private;
        if (v79->pageCount >= 2)
        {
          v80 = 0;
          v81 = 1;
          do
          {
            v5 = fmax(v5, v86 + PDFRectGetMaxX(v79->pageLayoutBounds.__begin_[v80 + 1].origin.x, v79->pageLayoutBounds.__begin_[v80 + 1].origin.y, v79->pageLayoutBounds.__begin_[v80 + 1].size.width));
            ++v81;
            v79 = self->_private;
            ++v80;
          }

          while (v79->pageCount > v81);
        }

        v6 = fmax(v35 + v77, v35 + v78);
        v79->twoUpContinousSize.width = v5;
        v79->twoUpContinousSize.height = v6;
        goto LABEL_39;
      }
    }

    else
    {
      if (!v33)
      {
        v38 = &self->_private->pageLayoutBounds.__begin_[v31];
        v39 = v38->origin.x;
        v40 = v38->origin.y;
        v41 = v38->size.width;
        v42 = v38->size.height;
        v43 = PDFRectGetMaxX(v38->origin.x, v40, v41);
        v44 = PDFRectGetMaxY(v39, v40, v41, v42);
        v5 = v34 + v43;
        v6 = v35 + v44;
        goto LABEL_40;
      }

      if (v33 == 1)
      {
        v36 = self->_private;
        v5 = v36->singlePageContinuousSize.width;
        if (v5 > 0.0 && v36->cachedContinuousSizeDisplayDirection == v27)
        {
          v6 = v36->singlePageContinuousSize.height;
          goto LABEL_40;
        }

        v62 = PDFRectToCGRect(1);
        v65 = v64;
        v67 = v66;
        if ((self->_private->pageLayoutBounds.__end_ - self->_private->pageLayoutBounds.__begin_) >= 0x21)
        {
          v68 = v62;
          v69 = v63;
          v70 = 0;
          v71 = 1;
          do
          {
            v91.origin.x = PDFRectToCGRect(v61);
            v91.origin.y = v72;
            v91.size.width = v73;
            v91.size.height = v74;
            v89.origin.x = v68;
            v89.origin.y = v69;
            v89.size.width = v65;
            v89.size.height = v67;
            v90 = CGRectUnion(v89, v91);
            v68 = v90.origin.x;
            v69 = v90.origin.y;
            v65 = v90.size.width;
            v67 = v90.size.height;
            ++v71;
            v70 += 32;
          }

          while (v71 < self->_private->pageLayoutBounds.__end_ - self->_private->pageLayoutBounds.__begin_);
        }

        v5 = PDFSizeFromCGSize(v34 + v65, v35 + v67);
        v6 = v75;
        v76 = self->_private;
        v76->singlePageContinuousSize.width = v5;
        v76->singlePageContinuousSize.height = v75;
LABEL_39:
        self->_private->cachedContinuousSizeDisplayDirection = v27;
      }
    }

LABEL_40:
    v5 = ceil(v5);
    v6 = ceil(v6);
    v32 = self->_private;
LABEL_41:
    [(NSLock *)v32->pageLayoutLock unlock];
  }

  v82 = v5;
  v83 = v6;
  result.height = v83;
  result.width = v82;
  return result;
}

- (_NSRange)visiblePageRangeInBounds:(CGRect)a3 currentPage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  v11 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v9 || !self->_private->pageCount)
  {
    goto LABEL_38;
  }

  v13 = [(PDFViewLayout *)self functionalDisplayMode];
  v11 = 0;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 != 3)
      {
        goto LABEL_38;
      }

      MaxY = PDFRectGetMaxY(x, y, width, height);
      v21 = [(PDFViewLayout *)self pageNearestPoint:v9 currentPage:PDFPointMake(0.0, MaxY)];
      v16 = [WeakRetained indexForPage:v21];
      v22 = [(PDFViewLayout *)self facingPageForPage:v21];

      if (v22)
      {
        v23 = [WeakRetained indexForPage:v9];
        if (v23 < v16)
        {
          v16 = v23;
        }
      }

      MinY = PDFRectGetMinY(x, y, width, height);
      v25 = [(PDFViewLayout *)self pageNearestPoint:v9 currentPage:PDFPointMake(0.0, MinY)];

      v26 = [WeakRetained indexForPage:v25];
      v18 = [(PDFViewLayout *)self facingPageForPage:v25];

      if (v18)
      {
        v27 = [WeakRetained indexForPage:v18];
        if (v27 > v26)
        {
          v26 = v27;
        }
      }

      goto LABEL_20;
    }

    v16 = [WeakRetained indexForPage:v9];
    v18 = [(PDFViewLayout *)self facingPageForPage:v9];
    if (!v18)
    {
      v26 = v16;
      goto LABEL_20;
    }

    v19 = [WeakRetained indexForPage:v18];
LABEL_19:
    v26 = v19;
LABEL_20:

    goto LABEL_21;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_38;
    }

    v14 = PDFRectGetMaxY(x, y, width, height);
    v15 = [(PDFViewLayout *)self pageNearestPoint:v9 currentPage:PDFPointMake(0.0, v14)];
    v16 = [WeakRetained indexForPage:v15];

    v17 = PDFRectGetMinY(x, y, width, height);
    v18 = [(PDFViewLayout *)self pageNearestPoint:v9 currentPage:PDFPointMake(0.0, v17)];
    v19 = [WeakRetained indexForPage:v18];
    goto LABEL_19;
  }

  v26 = [WeakRetained indexForPage:v9];
  v16 = v26;
LABEL_21:
  if (v26 <= v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = v26;
  }

  if (v26 >= v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = v26;
  }

  v30 = v28 - v29;
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30 + 1;
  }

  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v32 = v16 == 0x7FFFFFFFFFFFFFFFLL;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v31;
  }

  if (v32)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v29;
  }

LABEL_38:

  v33 = v12;
  v34 = v11;
  result.length = v34;
  result.location = v33;
  return result;
}

- (id)visiblePagesInBounds:(CGRect)a3 currentPage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(PDFViewLayout *)self visiblePageRangeInBounds:v9 currentPage:x, y, width, height];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_private->document);
    if (v12 < v12 + v13)
    {
      do
      {
        v15 = [WeakRetained pageAtIndex:v12];
        if (v15)
        {
          [v10 addObject:v15];
        }

        ++v12;
        --v13;
      }

      while (v13);
    }
  }

  return v10;
}

- (CGRect)boundsForPage:(id)a3
{
  v4 = a3;
  v15 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 16);
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  if (WeakRetained)
  {
    pageCount = self->_private->pageCount;

    if (pageCount)
    {
      [(NSLock *)self->_private->pageLayoutLock lock];
      if (self->_private->pageLayoutBounds.__begin_ == self->_private->pageLayoutBounds.__end_)
      {
        [(PDFViewLayout *)self generateInternalDocumentGeometry];
      }

      v7 = [v4 document];
      v8 = [v7 indexForPage:v4];

      v9 = self->_private;
      if (v4 && v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = &v9->pageLayoutBounds.__begin_[v8];
        v16 = *v10;
        v18 = v10[1];
      }

      [(NSLock *)v9->pageLayoutLock unlock:v16];
    }
  }

  v11 = *&v15;
  v12 = *&v17;
  v13 = *(&v15 + 1);
  v14 = *(&v17 + 1);
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v13;
  result.origin.x = v11;
  return result;
}

- (const)boundsForPageAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  if (WeakRetained)
  {
    pageCount = self->_private->pageCount;

    if (pageCount)
    {
      v7 = self->_private;
      begin = v7->pageLayoutBounds.__begin_;
      end = v7->pageLayoutBounds.__end_;
      if (begin == end)
      {
        [(PDFViewLayout *)self generateInternalDocumentGeometry];
        begin = self->_private->pageLayoutBounds.__begin_;
        end = self->_private->pageLayoutBounds.__end_;
      }

      if (a3 < end - begin)
      {
        return &begin[a3];
      }

      NSLog(&cfstr_InvalidIndex.isa);
    }
  }

  return MEMORY[0x1E695F058];
}

- (id)pageNearestPoint:(CGPoint)a3 currentPage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!v7)
  {
    v22 = 0;
    goto LABEL_49;
  }

  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  v9 = objc_loadWeakRetained(&self->_private->delegate);
  v10 = v9;
  v11 = MEMORY[0x1E69DDCE0];
  v12 = self->_private;
  if (v12->delegateKnowsMargins)
  {
    [v9 pageBreakMargins];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v11[1];
    v19 = v11[2];
    v21 = v11[3];
    v12 = self->_private;
  }

  else
  {
    v20 = *(MEMORY[0x1E69DDCE0] + 8);
    v19 = *(MEMORY[0x1E69DDCE0] + 16);
    v21 = *(MEMORY[0x1E69DDCE0] + 24);
    v14 = v20;
    v16 = v19;
    v18 = v21;
  }

  if (v12->delegateKnowsDocumentMargins)
  {
    [v10 documentMargins];
    v20 = v23;
    v19 = v24;
    v21 = v25;
    v12 = self->_private;
  }

  if (v12->delegateKnowsDisplaysDirection)
  {
    v26 = [v10 displayDirection] == 0;
    v12 = self->_private;
  }

  else
  {
    v26 = 1;
  }

  [(NSLock *)v12->pageLayoutLock lock];
  v27 = self->_private;
  if (v27->pageLayoutBounds.__begin_ == v27->pageLayoutBounds.__end_)
  {
    [(PDFViewLayout *)self generateInternalDocumentGeometry];
    v27 = self->_private;
  }

  if (!v27->pageCount)
  {
    v22 = 0;
    goto LABEL_48;
  }

  v28 = [(PDFViewLayout *)self functionalDisplayMode];
  v29 = v28;
  if (!v28)
  {
    v22 = v7;
    goto LABEL_48;
  }

  if (v28 != 1)
  {
    v39 = 0;
    goto LABEL_30;
  }

  v30 = self->_private;
  pageCount = v30->pageCount;
  if (!pageCount)
  {
    goto LABEL_29;
  }

  v32 = 0;
  v33 = 0;
  v34 = v14 + v20;
  while (1)
  {
    v35 = &v30->pageLayoutBounds.__begin_[v32];
    v36 = v35->origin.x;
    v37 = v35->origin.y;
    width = v35->size.width;
    if (!v26)
    {
      break;
    }

    if (PDFRectGetMinY(v36, v37, width, v35->size.height) - (v16 + v19) < y)
    {
      goto LABEL_27;
    }

LABEL_22:
    ++v33;
    v30 = self->_private;
    pageCount = v30->pageCount;
    ++v32;
    if (pageCount <= v33)
    {
      goto LABEL_29;
    }
  }

  if (PDFRectGetMaxX(v36, v37, width) - v34 <= x)
  {
    goto LABEL_22;
  }

LABEL_27:
  v39 = [WeakRetained pageAtIndex:v33];
  if (!v39)
  {
    pageCount = self->_private->pageCount;
LABEL_29:
    v39 = [WeakRetained pageAtIndex:pageCount - 1];
  }

LABEL_30:
  if (v29 == 2)
  {
    v22 = v7;

    v45 = [(PDFViewLayout *)self facingPageForPage:v22];
    if (v45)
    {
      v46 = [WeakRetained indexForPage:v22];
      v47 = [WeakRetained indexForPage:v45];
      v48 = &self->_private->pageLayoutBounds.__begin_[v46];
      MaxX = PDFRectGetMaxX(v48->origin.x, v48->origin.y, v48->size.width);
      v50 = &self->_private->pageLayoutBounds.__begin_[v47];
      v51 = PDFRectGetMaxX(v50->origin.x, v50->origin.y, v50->size.width);
      if (MaxX >= v51)
      {
        v52 = v47;
      }

      else
      {
        v52 = v46;
      }

      v53 = &self->_private->pageLayoutBounds.__begin_[v52];
      if (MaxX < v51 != x < v18 + v21 + PDFRectGetMaxX(v53->origin.x, v53->origin.y, v53->size.width))
      {
        v54 = v45;
      }

      else
      {
        v54 = v22;
      }

      v55 = v54;
LABEL_46:
      v56 = v55;

      v22 = v56;
    }

LABEL_47:
  }

  else
  {
    if (v29 == 3)
    {
      v40 = self->_private;
      if (v40->pageCount)
      {
        v41 = 0;
        v42 = 0;
        v43 = v16 + v19;
        while (1)
        {
          MinY = PDFRectGetMinY(v40->pageLayoutBounds.__begin_[v41].origin.x, v40->pageLayoutBounds.__begin_[v41].origin.y, v40->pageLayoutBounds.__begin_[v41].size.width, v40->pageLayoutBounds.__begin_[v41].size.height);
          v22 = [WeakRetained pageAtIndex:v42];

          if (MinY - v43 < y)
          {
            break;
          }

          ++v42;
          v40 = self->_private;
          ++v41;
          v39 = v22;
          if (v40->pageCount <= v42)
          {
            goto LABEL_48;
          }
        }

        v45 = [(PDFViewLayout *)self facingPageForPage:v22];
        if (v45)
        {
          v58 = [WeakRetained indexForPage:v22];
          v59 = [WeakRetained indexForPage:v45];
          v60 = &self->_private->pageLayoutBounds.__begin_[v58];
          v61 = PDFRectGetMaxX(v60->origin.x, v60->origin.y, v60->size.width);
          v62 = &self->_private->pageLayoutBounds.__begin_[v59];
          v63 = PDFRectGetMaxX(v62->origin.x, v62->origin.y, v62->size.width);
          begin = self->_private->pageLayoutBounds.__begin_;
          if (v61 >= v63)
          {
            if (x < v18 + v21 + PDFRectGetMaxX(begin[v59].origin.x, begin[v59].origin.y, begin[v59].size.width))
            {
              goto LABEL_57;
            }
          }

          else if (x >= v18 + v21 + PDFRectGetMaxX(begin[v58].origin.x, begin[v58].origin.y, begin[v58].size.width))
          {
LABEL_57:
            v55 = v45;
            goto LABEL_46;
          }
        }

        goto LABEL_47;
      }
    }

    v22 = v39;
  }

LABEL_48:
  [(NSLock *)self->_private->pageLayoutLock unlock];

LABEL_49:

  return v22;
}

- (CGPoint)convertPoint:(CGPoint)a3 toPage:(id)a4 forScaleFactor:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  if (v9)
  {
    [(NSLock *)self->_private->pageLayoutLock lock];
    v10 = self->_private;
    if (v10->pageLayoutBounds.__begin_ == v10->pageLayoutBounds.__end_)
    {
      [(PDFViewLayout *)self generateInternalDocumentGeometry];
      v10 = self->_private;
    }

    if (!v10->pageCount)
    {
      goto LABEL_20;
    }

    v12 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    v13 = [v9 document];
    v14 = [v13 indexForPage:v9];

    v15 = self->_private;
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      p_x = &v15->pageLayoutBounds.__begin_[v14].origin.x;
      v12 = *p_x;
      v11 = p_x[1];
    }

    if (v15->delegateKnowsDisplayBox)
    {
      WeakRetained = objc_loadWeakRetained(&v15->delegate);
      [v9 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
      tx = v18;
      v20 = v19;
      v22 = v21;
      v24 = v23;
    }

    else
    {
      [v9 boundsForBox:1];
      v22 = v25;
      v24 = v26;
      tx = v27;
      v20 = v28;
    }

    v29 = [v9 rotation];
    x = x / a5 - v12;
    y = y / a5 - v11;
    v30 = *(MEMORY[0x1E695EFD0] + 8);
    v32 = *(MEMORY[0x1E695EFD0] + 16);
    v31 = *(MEMORY[0x1E695EFD0] + 24);
    v34 = *(MEMORY[0x1E695EFD0] + 32);
    v33 = *(MEMORY[0x1E695EFD0] + 40);
    if (v29 > 179)
    {
      if (v29 == 180)
      {
        v75.a = *MEMORY[0x1E695EFD0];
        v75.b = v30;
        v75.c = v32;
        v75.d = v31;
        v75.tx = v34;
        v75.ty = v33;
        v63 = PDFDegToRad(180.0);
        CGAffineTransformRotate(&v76, &v75, v63);
        v75 = v76;
        CGAffineTransformTranslate(&v76, &v75, -v22 - v20, -v24 - tx);
        a = v76.a;
        b = v76.b;
        c = v76.c;
        d = v76.d;
        v69 = v76.tx;
        ty = v76.ty;
        v70 = PDFPointToCGPoint(x, y);
        v44 = PDFPointFromCGPoint(v69 + c * v71 + a * v70, ty + d * v71 + b * v70);
        goto LABEL_19;
      }

      if (v29 == 270)
      {
        v75.a = *MEMORY[0x1E695EFD0];
        v75.b = v30;
        v75.c = v32;
        v75.d = v31;
        v75.tx = v34;
        v75.ty = v33;
        v46 = PDFDegToRad(270.0);
        CGAffineTransformRotate(&v76, &v75, v46);
        v75 = v76;
        CGAffineTransformTranslate(&v76, &v75, -v24 - tx, v20);
        v48 = v76.a;
        v47 = v76.b;
        v50 = v76.c;
        v49 = v76.d;
        v52 = v76.tx;
        v51 = v76.ty;
        v53 = PDFPointToCGPoint(x, y);
        v44 = PDFPointFromCGPoint(v52 + v50 * v54 + v48 * v53, v51 + v49 * v54 + v47 * v53);
        goto LABEL_19;
      }
    }

    else
    {
      if (!v29)
      {
        v75.a = *MEMORY[0x1E695EFD0];
        v75.b = v30;
        v75.c = v32;
        v75.d = v31;
        v75.tx = v34;
        v75.ty = v33;
        CGAffineTransformTranslate(&v76, &v75, v20, tx);
        v56 = v76.a;
        v55 = v76.b;
        v58 = v76.c;
        v57 = v76.d;
        v60 = v76.tx;
        v59 = v76.ty;
        v61 = PDFPointToCGPoint(x, y);
        v44 = PDFPointFromCGPoint(v60 + v58 * v62 + v56 * v61, v59 + v57 * v62 + v55 * v61);
        goto LABEL_19;
      }

      if (v29 == 90)
      {
        v75.a = *MEMORY[0x1E695EFD0];
        v75.b = v30;
        v75.c = v32;
        v75.d = v31;
        v75.tx = v34;
        v75.ty = v33;
        v35 = PDFDegToRad(90.0);
        CGAffineTransformRotate(&v76, &v75, v35);
        v75 = v76;
        CGAffineTransformTranslate(&v76, &v75, tx, -v22 - v20);
        v37 = v76.a;
        v36 = v76.b;
        v39 = v76.c;
        v38 = v76.d;
        v41 = v76.tx;
        v40 = v76.ty;
        v42 = PDFPointToCGPoint(x, y);
        v44 = PDFPointFromCGPoint(v41 + v39 * v43 + v37 * v42, v40 + v38 * v43 + v36 * v42);
LABEL_19:
        x = v44;
        y = v45;
      }
    }

LABEL_20:
    [(NSLock *)self->_private->pageLayoutLock unlock];
  }

  v72 = x;
  v73 = y;
  result.y = v73;
  result.x = v72;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toPage:(id)a4
{
  [(PDFViewLayout *)self convertPoint:a4 toPage:a3.x forScaleFactor:a3.y, 1.0];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromPage:(id)a4 forScaleFactor:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  if (v9)
  {
    [(NSLock *)self->_private->pageLayoutLock lock];
    v10 = self->_private;
    if (v10->pageLayoutBounds.__begin_ == v10->pageLayoutBounds.__end_)
    {
      [(PDFViewLayout *)self generateInternalDocumentGeometry];
      v10 = self->_private;
    }

    if (!v10->pageCount)
    {
      goto LABEL_22;
    }

    if (v10->delegateKnowsDisplayBox)
    {
      WeakRetained = objc_loadWeakRetained(&v10->delegate);
      [v9 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
    }

    else
    {
      [v9 boundsForBox:1];
      v13 = v20;
      v15 = v21;
      v17 = v22;
      v19 = v23;
    }

    v24 = [v9 rotation];
    v25 = *(MEMORY[0x1E695EFD0] + 8);
    v27 = *(MEMORY[0x1E695EFD0] + 16);
    v26 = *(MEMORY[0x1E695EFD0] + 24);
    v29 = *(MEMORY[0x1E695EFD0] + 32);
    v28 = *(MEMORY[0x1E695EFD0] + 40);
    if (v24 > 179)
    {
      if (v24 == 180)
      {
        v72 = a5;
        v73.a = *MEMORY[0x1E695EFD0];
        v73.b = v25;
        v73.c = v27;
        v73.d = v26;
        v73.tx = v29;
        v73.ty = v28;
        CGAffineTransformTranslate(&v74, &v73, v17 + v13, v19 + v15);
        v73 = v74;
        v58 = PDFDegToRad(180.0);
        CGAffineTransformRotate(&v74, &v73, v58);
        a = v74.a;
        b = v74.b;
        c = v74.c;
        d = v74.d;
        tx = v74.tx;
        ty = v74.ty;
        v65 = PDFPointToCGPoint(x, y);
        v39 = PDFPointFromCGPoint(tx + c * v66 + a * v65, ty + d * v66 + b * v65);
      }

      else
      {
        if (v24 != 270)
        {
          goto LABEL_18;
        }

        v72 = a5;
        v73.a = *MEMORY[0x1E695EFD0];
        v73.b = v25;
        v73.c = v27;
        v73.d = v26;
        v73.tx = v29;
        v73.ty = v28;
        CGAffineTransformTranslate(&v74, &v73, v19 + v15, -v13);
        v73 = v74;
        v41 = PDFDegToRad(90.0);
        CGAffineTransformRotate(&v74, &v73, v41);
        v43 = v74.a;
        v42 = v74.b;
        v44 = v74.c;
        v45 = v74.d;
        v47 = v74.tx;
        v46 = v74.ty;
        v48 = PDFPointToCGPoint(x, y);
        v39 = PDFPointFromCGPoint(v47 + v44 * v49 + v43 * v48, v46 + v45 * v49 + v42 * v48);
      }
    }

    else if (v24)
    {
      if (v24 != 90)
      {
        goto LABEL_18;
      }

      v72 = a5;
      v73.a = *MEMORY[0x1E695EFD0];
      v73.b = v25;
      v73.c = v27;
      v73.d = v26;
      v73.tx = v29;
      v73.ty = v28;
      CGAffineTransformTranslate(&v74, &v73, -v15, v17 + v13);
      v73 = v74;
      v30 = PDFDegToRad(270.0);
      CGAffineTransformRotate(&v74, &v73, v30);
      v32 = v74.a;
      v31 = v74.b;
      v33 = v74.c;
      v34 = v74.d;
      v36 = v74.tx;
      v35 = v74.ty;
      v37 = PDFPointToCGPoint(x, y);
      v39 = PDFPointFromCGPoint(v36 + v33 * v38 + v32 * v37, v35 + v34 * v38 + v31 * v37);
    }

    else
    {
      v72 = a5;
      v73.a = *MEMORY[0x1E695EFD0];
      v73.b = v25;
      v73.c = v27;
      v73.d = v26;
      v73.tx = v29;
      v73.ty = v28;
      CGAffineTransformTranslate(&v74, &v73, -v13, -v15);
      v51 = v74.a;
      v50 = v74.b;
      v53 = v74.c;
      v52 = v74.d;
      v54 = v74.tx;
      v55 = v74.ty;
      v56 = PDFPointToCGPoint(x, y);
      v39 = PDFPointFromCGPoint(v54 + v53 * v57 + v51 * v56, v55 + v52 * v57 + v50 * v56);
    }

    x = v39;
    y = v40;
    a5 = v72;
LABEL_18:
    v67 = [v9 document];
    v68 = [v67 indexForPage:v9];

    v10 = self->_private;
    if (v68 != 0x7FFFFFFFFFFFFFFFLL && v68 < v10->pageCount)
    {
      p_x = &v10->pageLayoutBounds.__begin_[v68].origin.x;
      x = x + *p_x;
      y = y + p_x[1];
    }

    x = x * a5;
    y = y * a5;
LABEL_22:
    [(NSLock *)v10->pageLayoutLock unlock];
  }

  v70 = x;
  v71 = y;
  result.y = v71;
  result.x = v70;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromPage:(id)a4 forScaleFactor:(double)a5
{
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PDFViewLayout *)self convertPoint:v9 fromPage:x forScaleFactor:y, a5];
  v12 = v11;
  v14 = v13;
  v33.origin.x = PDFRectToCGRect(v10);
  v15 = v33.origin.x;
  v16 = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  MaxX = CGRectGetMaxX(v33);
  v34.origin.x = v15;
  v34.origin.y = v16;
  v34.size.width = width;
  v34.size.height = height;
  MaxY = CGRectGetMaxY(v34);
  [(PDFViewLayout *)self convertPoint:v9 fromPage:PDFPointMake(MaxX forScaleFactor:MaxY)];
  v22 = PDFRectFromPDFPoints(v12, v14, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromPage:(id)a4
{
  [(PDFViewLayout *)self convertPoint:a4 fromPage:a3.x forScaleFactor:a3.y, 1.0];
  result.y = v5;
  result.x = v4;
  return result;
}

- (int64_t)functionalDisplayMode
{
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
  v4 = WeakRetained;
  v5 = self->_private;
  if (v5->delegateKnowsDisplayMode)
  {
    v6 = [WeakRetained displayMode];
    v5 = self->_private;
  }

  else
  {
    v6 = 1;
  }

  v7 = objc_loadWeakRetained(&v5->document);

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = self->_private;
  pageCount = v8->pageCount;
  if (pageCount == 1)
  {
    v6 &= 1u;
    goto LABEL_27;
  }

  if (pageCount == 2 && v6 == 2)
  {
    if (v8->delegateKnowsDisplayAsBook)
    {
      if ([v4 displaysAsBook])
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }

      goto LABEL_27;
    }

LABEL_26:
    v6 = 2;
    goto LABEL_27;
  }

  if (pageCount == 2 && v6 == 3)
  {
    if (v8->delegateKnowsDisplayAsBook && ([v4 displaysAsBook] & 1) != 0)
    {
      v6 = 1;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v8->delegateKnowsIsUsingPageViewController && [v4 isUsingPageViewController])
  {
    v6 = 0;
  }

LABEL_27:

  return v6;
}

- (void)invalidateInternalDocumentGeometry
{
  [(NSLock *)self->_private->pageLayoutLock lock];
  self->_private->pageLayoutBounds.__end_ = self->_private->pageLayoutBounds.__begin_;
  v3 = *MEMORY[0x1E695F060];
  self->_private->singlePageContinuousSize = *MEMORY[0x1E695F060];
  self->_private->twoUpContinousSize = v3;
  pageLayoutLock = self->_private->pageLayoutLock;

  [(NSLock *)pageLayoutLock unlock];
}

- (id)facingPageForPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  if (!v4 || ([v4 document], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != WeakRetained) || -[PDFViewLayout functionalDisplayMode](self, "functionalDisplayMode") < 2)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v9 = objc_loadWeakRetained(&self->_private->delegate);
  v10 = [WeakRetained indexForPage:v4];
  if (self->_private->delegateKnowsDisplayAsBook && [v9 displaysAsBook])
  {
    if (!v10)
    {
LABEL_18:
      v7 = 0;
      goto LABEL_19;
    }

    v11 = v10 & 0x8000000000000001;
    if ((v10 & 0x8000000000000001) != 1)
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = -1;
    if ((v10 & 0x8000000000000001) != 1)
    {
      v11 = 1;
    }
  }

  if (v10 + v11 >= self->_private->pageCount)
  {
    goto LABEL_18;
  }

  v7 = [WeakRetained pageAtIndex:?];
LABEL_19:

LABEL_5:

  return v7;
}

- (void)generateInternalDocumentGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  if (WeakRetained)
  {
    self->_private->pageCount = [WeakRetained pageCount];
    std::vector<CGRect>::resize(&self->_private->pageLayoutBounds.__begin_, self->_private->pageCount, MEMORY[0x1E695F058]);
    v3 = self->_private;
    if (v3->pageCount)
    {
      v4 = objc_loadWeakRetained(&v3->delegate);
      v5 = v4;
      v6 = MEMORY[0x1E69DDCE0];
      v7 = self->_private;
      if (v7->delegateKnowsMargins)
      {
        [v4 pageBreakMargins];
        v115 = v8;
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = *v6;
        v15 = v6[1];
        v17 = v6[2];
        v18 = v6[3];
        v7 = self->_private;
      }

      else
      {
        v16 = *MEMORY[0x1E69DDCE0];
        v15 = *(MEMORY[0x1E69DDCE0] + 8);
        v17 = *(MEMORY[0x1E69DDCE0] + 16);
        v18 = *(MEMORY[0x1E69DDCE0] + 24);
        v10 = *MEMORY[0x1E69DDCE0];
        v12 = v15;
        v14 = v17;
        v115 = v18;
      }

      if (v7->delegateKnowsDocumentMargins)
      {
        [v5 documentMargins];
        v16 = v19;
        v15 = v20;
        v17 = v21;
        v18 = v22;
        v7 = self->_private;
      }

      if (v7->delegateKnowsDisplaysDirection)
      {
        v23 = [v5 displayDirection] == 0;
        v7 = self->_private;
      }

      else
      {
        v23 = 1;
      }

      if (v7->delegateKnowsDisplayAsBook)
      {
        v24 = [v5 displaysAsBook];
        v7 = self->_private;
      }

      else
      {
        v24 = 0;
      }

      if (v7->delegateKnowsDisplayRTL)
      {
        v25 = [v5 displaysRTL];
      }

      else
      {
        v25 = 0;
      }

      v26 = [(PDFViewLayout *)self functionalDisplayMode];
      v27 = v12 + v116 + v15 + v18;
      v28 = v10 + v14 + v16 + v17;
      if (v26 <= 1)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            [WeakRetained beginBatchPageChanges];
            pageCount = self->_private->pageCount;
            if (pageCount)
            {
              v30 = 0;
              v31 = 0;
              v32 = v12 + v15;
              v33 = 0.0;
              v34 = -1;
              v35 = 0.0;
              while (1)
              {
                if (v23)
                {
                  v36 = pageCount + v34;
                }

                else
                {
                  v36 = v31;
                }

                [(PDFViewLayout *)self normalizedBoundsForPageAtIndex:v36];
                v37 = &self->_private->pageLayoutBounds.__begin_[v36];
                v37->origin.x = v38;
                v37->origin.y = v39;
                v37->size.width = v40;
                v37->size.height = v41;
                v42 = &self->_private->pageLayoutBounds.__begin_[v36];
                v43 = fmax(v33, v42->size.width);
                v44 = fmax(v35, v42->size.height);
                if (v23)
                {
                  v33 = v43;
                }

                else
                {
                  v35 = v44;
                }

                y = v42->origin.y;
                v42->origin.x = v32 + v42->origin.x;
                v42->origin.y = v14 + y;
                if (v31)
                {
                  v46 = self->_private;
                  if (!v23)
                  {
                    v42->origin.x = v12 + PDFRectGetMaxX(v46->pageLayoutBounds.__begin_[v30 - 1].origin.x, v46->pageLayoutBounds.__begin_[v30 - 1].origin.y, v46->pageLayoutBounds.__begin_[v30 - 1].size.width) + v42->origin.x;
                    goto LABEL_34;
                  }

                  p_x = &v46->pageLayoutBounds.__begin_[pageCount + v34].origin.x;
                  v48 = v10 + PDFRectGetMaxY(p_x[4], p_x[5], p_x[6], p_x[7]) + v42->origin.y;
                }

                else
                {
                  v48 = v17 + v14 + y;
                }

                v42->origin.y = v48;
LABEL_34:
                ++v31;
                pageCount = self->_private->pageCount;
                --v34;
                ++v30;
                if (v31 >= pageCount)
                {
                  goto LABEL_88;
                }
              }
            }

            v35 = 0.0;
            v33 = 0.0;
LABEL_88:
            [WeakRetained endBatchPageChanges];
            v110 = self->_private;
            begin = v110->pageLayoutBounds.__begin_;
            for (i = v110->pageLayoutBounds.__end_; begin != i; ++begin)
            {
              if (v23)
              {
                v113 = floor((v33 - begin->size.width) * 0.5);
                p_y = &begin->origin.x;
              }

              else
              {
                v113 = floor((v35 - begin->size.height) * 0.5);
                p_y = &begin->origin.y;
              }

              *p_y = *p_y + v113;
            }
          }
        }

        else if (self->_private->pageCount)
        {
          v81 = 0;
          v82 = 0;
          do
          {
            [(PDFViewLayout *)self normalizedBoundsForPageAtIndex:v82];
            v83 = &self->_private->pageLayoutBounds.__begin_[v81];
            v83->origin.x = v84;
            v83->origin.y = v85;
            v83->size.width = v86;
            v83->size.height = v87;
            v88 = &self->_private->pageLayoutBounds.__begin_[v81];
            v89 = v28 + v88->origin.y;
            v88->origin.x = v27 + v88->origin.x;
            v88->origin.y = v89;
            ++v82;
            ++v81;
          }

          while (v82 < self->_private->pageCount);
        }

        goto LABEL_93;
      }

      if (v26 == 2)
      {
        if (self->_private->pageCount)
        {
          v90 = 0;
          v91 = 0x7FFFFFFFFFFFFFFLL;
          do
          {
            [(PDFViewLayout *)self normalizedBoundsForPageAtIndex:v90];
            v92 = &self->_private->pageLayoutBounds.__begin_[v91];
            v92[1].origin.x = v93;
            v92[1].origin.y = v94;
            v92[1].size.width = v95;
            v92[1].size.height = v96;
            v97 = self->_private->pageLayoutBounds.__begin_;
            v98 = &v97[v91];
            v99 = &v97[v91 + 1];
            *v99 = v27 + *v99;
            v100 = v28 + v97[v91 + 1].origin.y;
            v97[v91 + 1].origin.y = v100;
            if (v90 && ((v24 ^ v90) & 1) != 0)
            {
              height = v97[v91 + 1].size.height;
              v102 = &self->_private->pageLayoutBounds.__begin_[v91];
              v103 = height - v102->size.height;
              v104 = v103 * 0.5;
              if (v103 <= 0.0)
              {
                v98[1].origin.y = v100 - v104;
              }

              else
              {
                v102->origin.y = v104 + v102->origin.y;
              }

              width = self->_private->pageLayoutBounds.__begin_[v91].size.width;
              *v99 = v27 + width + PDFScreenGetBackingScaleFactor() * -0.5 + *v99;
              if (v25)
              {
                v106 = &self->_private->pageLayoutBounds.__begin_[v91];
                origin = v106->origin;
                size = v106->size;
                v109 = *(v99 + 16);
                v106->origin = *v99;
                v106->size = v109;
                *v99 = origin;
                *(v99 + 16) = size;
              }
            }

            ++v90;
            ++v91;
          }

          while (v90 < self->_private->pageCount);
        }

        goto LABEL_93;
      }

      if (v26 != 3 || (v49 = self->_private->pageCount) == 0)
      {
LABEL_93:

        goto LABEL_94;
      }

      v50 = 0;
      v51 = 0;
      v52 = v12 + v15;
      v53 = v14 + v17;
      v54 = 0.0;
      v55 = 0.0;
      while (1)
      {
        v56 = v49 + v50 - 1;
        [(PDFViewLayout *)self normalizedBoundsForPageAtIndex:v56];
        v57 = &self->_private->pageLayoutBounds.__begin_[v56];
        v57->origin.x = v58;
        v57->origin.y = v59;
        v57->size.width = v60;
        v57->size.height = v61;
        v62 = self->_private->pageLayoutBounds.__begin_;
        v63 = &v62[v56];
        v64 = v63->size.width;
        v65 = v52 + v63->origin.x;
        v66 = v53 + v63->origin.y;
        v63->origin.x = v65;
        v63->origin.y = v66;
        if (v51)
        {
          if (v49 - 1 == v51)
          {
            v67 = v24;
          }

          else
          {
            v67 = 0;
          }

          if ((v67 & 1) != 0 || ((v24 ^ v56) & 1) == 0)
          {
            v68 = &v62[v49 + v50].origin.x;
            if (v54 > 0.0)
            {
              v66 = v54 + v66;
              v63->origin.y = v66;
              if (((v49 - 1 == v51) & v24) == 0)
              {
                v68[1] = v54 + v68[1];
              }
            }

            MaxY = PDFRectGetMaxY(v65, v66, v64, v63->size.height);
            v54 = fmax(v10 + MaxY, v10 + PDFRectGetMaxY(*v68, v68[1], v68[2], v68[3]));
          }

          goto LABEL_55;
        }

        v70 = v10 + v66;
        v63->origin.y = v70;
        v71 = self->_private->pageCount;
        if (v24)
        {
          break;
        }

        if (v71)
        {
          goto LABEL_54;
        }

LABEL_55:
        v55 = fmax(v55, v64);
        ++v51;
        v72 = self->_private;
        v49 = v72->pageCount;
        --v50;
        if (v51 >= v49)
        {
          if (v49)
          {
            v73 = 0;
            v74 = 0;
            while (1)
            {
              v75 = v72->pageLayoutBounds.__begin_;
              if (v24)
              {
                if (!v74 || v74 == v49 - 1 && (v49 & 1) == 0)
                {
                  goto LABEL_66;
                }

                v76 = v75[v73].origin.x + (v55 - v75[v73].size.width) * 0.5;
                v75[v73].origin.x = v76;
                if ((v74 & 1) == 0)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                if (v74 == v49 - 1 && (v49 & 1) != 0)
                {
LABEL_66:
                  v75[v73].origin.x = v12 + floor(-(v116 + v12 + v75[v73].size.width - (v116 + v12 + v55) * 2.0) * 0.5);
                  goto LABEL_67;
                }

                v76 = v75[v73].origin.x + (v55 - v75[v73].size.width) * 0.5;
                v75[v73].origin.x = v76;
                if (v74)
                {
LABEL_70:
                  v75[v73].origin.x = v12 + v116 + v55 + v76;
                  if (v25)
                  {
                    v77 = &self->_private->pageLayoutBounds.__begin_[v73];
                    v79 = v77->origin;
                    v78 = v77->size;
                    v80 = v77[-1].size;
                    v77->origin = v77[-1].origin;
                    v77->size = v80;
                    v77[-1].origin = v79;
                    v77[-1].size = v78;
                  }
                }
              }

LABEL_67:
              ++v74;
              v72 = self->_private;
              v49 = v72->pageCount;
              ++v73;
              if (v74 >= v49)
              {
                goto LABEL_93;
              }
            }
          }

          goto LABEL_93;
        }
      }

      if (v71)
      {
        goto LABEL_55;
      }

LABEL_54:
      v54 = v10 + PDFRectGetMaxY(v65, v70, v64, v63->size.height);
      goto LABEL_55;
    }
  }

LABEL_94:
}

- (CGRect)normalizedBoundsForPageAtIndex:(unint64_t)a3
{
  v4 = self->_private;
  if (v4->delegateKnowsDisplayBox)
  {
    WeakRetained = objc_loadWeakRetained(&v4->delegate);
    v7 = [WeakRetained displayBox];

    v4 = self->_private;
  }

  else
  {
    v7 = 1;
  }

  v8 = objc_loadWeakRetained(&v4->document);
  [v8 normalizedBoundsForBox:v7 ofPageAtIndex:a3];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end