@interface CPTextBoxMaker
+ (void)boxLayoutsIn:(id)in;
+ (void)promoteLayoutsIn:(id)in;
- (BOOL)layoutIsSliced:(id)sliced;
- (void)boxLayout:(id)layout;
- (void)boxLayoutsIn:(id)in;
- (void)makeBoxesWith:(id)with parent:(id)parent;
- (void)promoteLayoutsIn:(id)in;
- (void)promoteLayoutsInCertainRegions:(id)regions;
- (void)rotate:(id)rotate;
- (void)rotateTextBox:(id)box;
@end

@implementation CPTextBoxMaker

- (void)boxLayoutsIn:(id)in
{
  self->mainZone = in;
  v5 = objc_opt_class();

  [in mapSafely:sel_boxLayout_ target:self childrenOfClass:v5];
}

- (void)boxLayout:(id)layout
{
  v5 = objc_alloc_init(CPTextBox);
  if ([(CPZone *)self->mainZone hasRotatedCharacters])
  {
    [(CPZone *)self->mainZone rotationAngle];
    [(CPTextBox *)v5 setRotationAngle:?];
  }

  [(CPChunk *)v5 add:layout];
  [(CPChunk *)self->mainZone add:v5];
}

- (void)promoteLayoutsIn:(id)in
{
  self->bodyZone = in;
  v5 = objc_opt_class();

  [in map:sel_promoteLayoutsInCertainRegions_ target:self childrenOfClass:v5];
}

- (void)promoteLayoutsInCertainRegions:(id)regions
{
  if ([regions isGraphicalRegion])
  {
    [regions firstChild];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstChild = [regions firstChild];
      if ([firstChild count])
      {
        if (![firstChild isUprightRectangle] || -[CPTextBoxMaker layoutIsSliced:](self, "layoutIsSliced:", firstChild))
        {
          v6 = objc_alloc_init(CPTextBox);
          [(CPChunk *)v6 addChildrenOf:firstChild];
          [(CPChunk *)self->bodyZone add:v6];
        }
      }
    }
  }
}

- (BOOL)layoutIsSliced:(id)sliced
{
  v4 = [sliced count];
  if (v4)
  {
    firstChild = [sliced firstChild];
    zOrder = [firstChild zOrder];
    zOrder2 = [sliced zOrder];
    if (zOrder <= zOrder2)
    {
      v8 = zOrder2;
    }

    else
    {
      v8 = zOrder;
    }

    if (zOrder >= zOrder2)
    {
      v9 = zOrder2;
    }

    else
    {
      v9 = zOrder;
    }

    v10 = [objc_msgSend(firstChild "page")];
    v11 = [v10 count];
    v12 = v11;
    if (v11 < 1)
    {
      LODWORD(v13) = 0;
      v15 = 0;
    }

    else
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      while (1)
      {
        v15 = [objc_msgSend(v10 objectAtIndex:{v13), "zOrder"}];
        if (v9 < v15)
        {
          break;
        }

        if (v14 == ++v13)
        {
          LODWORD(v13) = v12;
          break;
        }
      }
    }

    if (v15 <= v8)
    {
      [sliced bounds];
      v41 = v17;
      v42 = v16;
      v39 = v19;
      v40 = v18;
      [firstChild bounds];
      if (v13 < v12)
      {
        v24 = v20;
        v25 = v21;
        v26 = v22;
        v27 = v23;
        for (i = v13; i < v12; ++i)
        {
          v29 = [v10 objectAtIndex:i];
          if (v8 < [v29 zOrder])
          {
            break;
          }

          [v29 bounds];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v43.origin.x = v24;
          v43.origin.y = v25;
          v43.size.width = v26;
          v43.size.height = v27;
          v45.origin.x = v31;
          v45.origin.y = v33;
          v45.size.width = v35;
          v45.size.height = v37;
          if (CGRectIntersectsRect(v43, v45))
          {
            v44.origin.y = v41;
            v44.origin.x = v42;
            v44.size.height = v39;
            v44.size.width = v40;
            v46.origin.x = v31;
            v46.origin.y = v33;
            v46.size.width = v35;
            v46.size.height = v37;
            if (CGRectIntersectsRect(v44, v46))
            {
              LOBYTE(v4) = 1;
              return v4;
            }
          }
        }
      }
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)rotate:(id)rotate
{
  v5 = objc_opt_class();

  [rotate map:sel_rotateTextBox_ target:self childrenOfClass:v5];
}

- (void)rotateTextBox:(id)box
{
  [box rotationAngle];
  v5 = v4;
  if (fabs(v4) > 2.0)
  {
    firstChild = [box firstChild];
    v7 = [firstChild count];
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = __sincos_stret(v5);
      v10 = 0;
      v16 = vmlaq_n_f64(vmulq_n_f64(xmmword_18439C780, v9.__sinval), xmmword_18439C630, v9.__cosval);
      v17 = vmlsq_lane_f64(vmulq_n_f64(xmmword_18439C780, v9.__cosval), xmmword_18439C630, v9.__sinval, 0);
      v11 = v16.f64[1];
      v12 = v17.f64[1];
      do
      {
        v13 = [firstChild childAtIndex:{v10, *&v16, *&v17}];
        [v13 bounds];
        [v13 setBounds:{v14 * v17.f64[0] + v16.f64[0] * v15 + 0.0, v14 * v12 + v11 * v15 + 0.0}];
        v10 = (v10 + 1);
      }

      while (v8 != v10);
    }
  }
}

- (void)makeBoxesWith:(id)with parent:(id)parent
{
  hasRotatedCharacters = [parent hasRotatedCharacters];
  v7 = 0.0;
  if (hasRotatedCharacters)
  {
    [parent rotationAngle];
    v7 = v8;
  }

  v9 = [with count];
  v10 = v9;
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = objc_alloc_init(CPTextBox);
      v13 = v12;
      if (hasRotatedCharacters)
      {
        [(CPTextBox *)v12 setRotationAngle:v7];
      }

      [parent add:v13];

      v14 = [with objectAtIndex:v11];
      v15 = objc_alloc_init(CPLayoutArea);
      [(CPChunk *)v13 add:v15];

      v16 = objc_alloc_init(CPColumn);
      [(CPChunk *)v15 add:v16];

      [(CPChunk *)v16 add:v14];
      ++v11;
    }

    while (v10 != v11);
  }
}

+ (void)boxLayoutsIn:(id)in
{
  v4 = objc_alloc_init(CPTextBoxMaker);
  [(CPTextBoxMaker *)v4 boxLayoutsIn:in];
}

+ (void)promoteLayoutsIn:(id)in
{
  v4 = objc_alloc_init(CPTextBoxMaker);
  [(CPTextBoxMaker *)v4 promoteLayoutsIn:in];
}

@end