@interface TUIVStack
- ($E297CC25127479E857BE23A4F8632EA4)computedHeight;
- (CGSize)computedSize;
- (TUIGuideLayoutController)guideLayoutController;
- (TUILayout)layout;
- (TUIVStack)initWithLayout:(id)a3 children:(id)a4;
- (void)computeLayoutWithOffset:(CGPoint)a3;
- (void)dealloc;
- (void)guideLayoutController:(id)a3 changedPhase:(unint64_t)a4;
- (void)setGuideLayoutController:(id)a3;
@end

@implementation TUIVStack

- (TUIVStack)initWithLayout:(id)a3 children:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TUIVStack;
  v8 = [(TUIVStack *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_layout, v6);
    v10 = [v7 copy];
    children = v9->_children;
    v9->_children = v10;

    v9->_flexedHeight = NAN;
    *&v9->_specifiedHeight.value = TUILengthNull;
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_guideLayoutController);
  [WeakRetained removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUIVStack;
  [(TUIVStack *)&v4 dealloc];
}

- (void)setGuideLayoutController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_guideLayoutController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_guideLayoutController);
    [v6 removeObserver:self];

    v7 = objc_storeWeak(&self->_guideLayoutController, obj);
    [obj addObserver:self];

    v5 = obj;
  }
}

- (void)guideLayoutController:(id)a3 changedPhase:(unint64_t)a4
{
  v11 = a3;
  if (self->_guideTop)
  {
    guideBottom = self->_guideBottom;
    if (guideBottom)
    {
      if (a4 == 1)
      {
        [(TUIGuide *)guideBottom guideOffset];
        v8 = v7;
        [(TUIGuide *)self->_guideTop guideOffset];
        if (v8 - v9 == self->_computedSize.width)
        {
          goto LABEL_8;
        }
      }

      else if (a4)
      {
        goto LABEL_8;
      }

      WeakRetained = objc_loadWeakRetained(&self->_layout);
      [WeakRetained invalidateLayout];
    }
  }

LABEL_8:
}

- (void)computeLayoutWithOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  width = self->_width;
  WeakRetained = objc_loadWeakRetained(&self->_layout);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v6 = [(TUIVStack *)self children];
  v7 = [v6 countByEnumeratingWithState:&v92 objects:v99 count:16];
  if (!v7)
  {
    v79 = 0;
    goto LABEL_44;
  }

  v79 = 0;
  v8 = *v93;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v93 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v92 + 1) + 8 * i);
      [WeakRetained flexedWidth];
      [v11 setFlexedWidth:?];
      [v11 setFlexedHeight:NAN];
      [v11 setContainingWidth:width];
      [v11 validateLayout];
      [v11 computedTransformedSize];
      v13 = v12;
      v14 = [v11 computedHeight];
      v16 = v15;
      v17 = v6;
      if ((v15 & 0x8000000000000) != 0 || ([v11 box], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "vcompressed") == 0, v18, !v19))
      {
        if (!v79)
        {
          v79 = +[TUIFlexibleLayoutController newHeightController];
        }

        v20 = [v11 box];
        [v79 addLayout:v11 length:v14 compressed:{v16, objc_msgSend(v20, "vcompressed")}];
      }

      v9 = v9 + v13;
      v6 = v17;
    }

    v7 = [v17 countByEnumeratingWithState:&v92 objects:v99 count:16];
  }

  while (v7);

  if (!v79)
  {
    v79 = 0;
    goto LABEL_46;
  }

  [(TUIVStack *)self specifiedHeight];
  if ((v21 & 0x7000000000000uLL) <= 0x2000000000000)
  {
    [(TUIVStack *)self flexedHeight];
  }

  v22 = [(TUIVStack *)self specifiedHeight];
  v24 = v23;
  [(TUIVStack *)self specifiedHeight];
  if ((v25 & 0x7000000000000uLL) < 0x2000000000001 || ([(TUIVStack *)self specifiedHeight], (v26 & 0x7000000000000) == 0x4000000000000))
  {
    [(TUIVStack *)self flexedHeight];
    [(TUIVStack *)self flexedHeight];
    if (v27 <= -3.40282347e38)
    {
      v29 = 4286578687;
    }

    else
    {
      if (v27 < 3.40282347e38)
      {
        *&v28 = v27;
        v22 = (v28 | 0x7FC0000000000000);
LABEL_26:
        v24 = 2143289344;
        goto LABEL_27;
      }

      v29 = 2139095039;
    }

    v22 = (v29 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
    goto LABEL_26;
  }

LABEL_27:
  [v79 computeWithMeasured:v22 desired:{v24, v9}];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v30 = [v79 layouts];
  v31 = [v30 countByEnumeratingWithState:&v88 objects:v98 count:16];
  if (v31)
  {
    v32 = *v89;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v89 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v88 + 1) + 8 * j);
        [v79 adjustedLengthForLayout:v34];
        [v34 setFlexedHeight:?];
        [v34 validateLayout];
      }

      v31 = [v30 countByEnumeratingWithState:&v88 objects:v98 count:16];
    }

    while (v31);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v6 = [(TUIVStack *)self children];
  v35 = [v6 countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v35)
  {
    v36 = *v85;
    v9 = 0.0;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v85 != v36)
        {
          objc_enumerationMutation(v6);
        }

        v38 = *(*(&v84 + 1) + 8 * k);
        if (([v38 hidden] & 1) == 0)
        {
          [v38 computedTransformedSize];
          v9 = v9 + v39;
        }
      }

      v35 = [v6 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v35);
    goto LABEL_45;
  }

LABEL_44:
  v9 = 0.0;
LABEL_45:

LABEL_46:
  LODWORD(v40) = [(TUIVStack *)self specifiedHeight];
  v41 = COERCE_FLOAT([(TUIVStack *)self specifiedHeight]);
  [(TUIVStack *)self specifiedHeight];
  LODWORD(v43) = v42;
  [(TUIVStack *)self specifiedHeight];
  v45 = fmin(v41, v44);
  LODWORD(v46) = [(TUIVStack *)self specifiedHeight]>> 32;
  v47 = fmax(v45, COERCE_FLOAT([(TUIVStack *)self specifiedHeight]>> 32));
  [(TUIVStack *)self flexedHeight];
  [(TUIVStack *)self flexedHeight];
  v49 = fmax(v47, v48);
  [(TUIVStack *)self specifiedHeight];
  if ((v50 & 0x7000000000000) == 0x4000000000000)
  {
    [(TUIVStack *)self flexedHeight];
    [(TUIVStack *)self flexedHeight];
    v49 = v51;
  }

  v52 = objc_loadWeakRetained(&self->_guideLayoutController);
  if (v52)
  {

    v53 = 0.0;
  }

  else
  {
    v54 = objc_loadWeakRetained(&self->_layout);
    v55 = [v54 layoutAncestor];
    v56 = [v55 isVerticallyAligningChildren];

    v53 = 0.0;
    if ((v56 & 1) == 0)
    {
      v57 = objc_loadWeakRetained(&self->_layout);
      v58 = [v57 box];
      v59 = [v58 valign];

      if (v59 == (&dword_0 + 1) || v59 == (&dword_0 + 3))
      {
        v53 = v49 - v9;
      }

      else if (v59 == &dword_4)
      {
        v53 = (v49 - v9) * 0.5;
      }
    }
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v60 = [(TUIVStack *)self children];
  v61 = [v60 countByEnumeratingWithState:&v80 objects:v96 count:16];
  if (v61)
  {
    v62 = *v81;
    do
    {
      for (m = 0; m != v61; m = m + 1)
      {
        if (*v81 != v62)
        {
          objc_enumerationMutation(v60);
        }

        v64 = *(*(&v80 + 1) + 8 * m);
        if (([v64 hidden] & 1) == 0)
        {
          v65 = objc_loadWeakRetained(&self->_layout);
          v66 = [v65 computedLayoutDirection];

          v67 = [v64 box];
          v68 = [v67 halign];

          if (v68 < 2)
          {
            if (v66 == &dword_0 + 2)
            {
              [v64 computedTransformedSize];
              v72 = v71;
              [v64 computedLeadingEdge];
              v69 = width - v72 + v73;
            }

            else
            {
              [v64 computedLeadingEdge];
LABEL_71:
              v69 = -v70;
            }
          }

          else if (v68 == &dword_0 + 2)
          {
            [v64 computedHorizontalCenter];
            v69 = -(v74 - width * 0.5);
          }

          else
          {
            v69 = 0.0;
            if (v68 == &dword_0 + 3)
            {
              if (v66 == &dword_0 + 2)
              {
                [v64 computedTrailingEdge];
                goto LABEL_71;
              }

              [v64 computedTrailingEdge];
              v69 = width - v75;
            }
          }

          [v64 setComputedOrigin:{x + v69, y + v53}];
          [v64 computedTransformedSize];
          v53 = v53 + v76;
          continue;
        }
      }

      v61 = [v60 countByEnumeratingWithState:&v80 objects:v96 count:16];
    }

    while (v61);
  }

  *&self->_specifiedHeight._flags = width;
  self->_computedSize.width = v49;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedHeight
{
  __p = 0;
  v26 = 0;
  v27 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(TUIVStack *)self children];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v21 + 1) + 8 * i) computedHeight];
        v9 = v8;
        v10 = v26;
        if (v26 >= v27)
        {
          v12 = (v26 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_4050();
          }

          v14 = v27 - __p;
          if ((v27 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_21464(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = v7;
          v16[1] = v9;
          v11 = 16 * v12 + 16;
          v17 = (16 * v12 - (v26 - __p));
          memcpy(v17, __p, v26 - __p);
          v18 = __p;
          __p = v17;
          v26 = v11;
          v27 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v26 = v7;
          *(v10 + 1) = v8;
          v11 = (v10 + 16);
        }

        v26 = v11;
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v4);
  }

  v19 = TUILengthSum(__p, (v26 - __p) >> 4);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v19;
}

- (TUILayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (TUIGuideLayoutController)guideLayoutController
{
  WeakRetained = objc_loadWeakRetained(&self->_guideLayoutController);

  return WeakRetained;
}

- (CGSize)computedSize
{
  v2 = *&self->_specifiedHeight._flags;
  width = self->_computedSize.width;
  result.height = width;
  result.width = v2;
  return result;
}

@end