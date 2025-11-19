@interface PDFCTLDDelegateForLines
- (PDFCTLDDelegateForLines)initWithPageLayout:(void *)a3 quadToPageTransform:(CGAffineTransform *)a4;
- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4;
@end

@implementation PDFCTLDDelegateForLines

- (int64_t)groupingConstraintForRegion1:(id)a3 region2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 boundingQuad];
  [v8 boundingBox];
  v9 = *&self->_quadToPageTransform.c;
  *&v68.a = *&self->_quadToPageTransform.a;
  *&v68.c = v9;
  *&v68.tx = *&self->_quadToPageTransform.tx;
  v70 = CGRectApplyAffineTransform(v69, &v68);
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;

  v14 = [v7 boundingQuad];
  [v14 boundingBox];
  v15 = *&self->_quadToPageTransform.c;
  *&v68.a = *&self->_quadToPageTransform.a;
  *&v68.c = v15;
  *&v68.tx = *&self->_quadToPageTransform.tx;
  v72 = CGRectApplyAffineTransform(v71, &v68);
  v66 = v72.origin.x;
  v67 = v72.origin.y;
  rect = v72.size.width;
  v16 = v72.size.height;

  v17 = height;
  v18 = y;
  v60 = height;
  v19 = fmin(width, height) < 0.0;
  v20 = v19;
  v21 = x;
  v22 = width;
  if (v19)
  {
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    *&v21 = CGRectStandardize(v73);
  }

  v23 = v21 + v22;
  v24 = rect;
  v25 = fmin(rect, v16);
  v26 = v25 < 0.0;
  v64 = v16;
  if (v25 >= 0.0)
  {
    v30 = v66;
    v75.origin.x = v66;
    if (v23 >= v66)
    {
LABEL_8:
      v23 = v75.origin.x + v24;
      v30 = x;
      if (v20)
      {
        v76.origin.x = x;
        v76.origin.y = y;
        v76.size.width = width;
        v76.size.height = height;
        *&v30 = CGRectStandardize(v76);
      }

      if (v23 >= v30)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v27 = v66;
    v28 = v67;
    v29 = v16;
    v30 = COERCE_DOUBLE(CGRectStandardize(*(&v24 - 2)));
    if (v23 >= v30)
    {
      v74.origin.x = v66;
      v74.origin.y = v67;
      v74.size.width = rect;
      v74.size.height = v16;
      *(&v24 - 2) = CGRectStandardize(v74);
      goto LABEL_8;
    }
  }

  layout = self->_layout;
  v32 = layout[65];
  if (v32)
  {
    v33 = (layout + 65);
    v34 = (layout + 65);
    do
    {
      v35 = v32[4];
      if (v35 >= v23)
      {
        v34 = v32;
      }

      v32 = *&v32[v35 < v23];
    }

    while (v32);
    if (v34 != v33)
    {
      v36 = 1;
      v61 = v30;
      v62 = v67 + v16;
      v37 = y + height;
      do
      {
        if (v34[4] >= v30)
        {
          break;
        }

        for (i = *(v34 + 6); i != v34 + 5; i = *(i + 8))
        {
          if (v20)
          {
            v77.origin.x = x;
            v77.origin.y = y;
            v77.size.width = width;
            v77.size.height = v17;
            v78 = CGRectStandardize(v77);
            v39 = *(i + 16);
            if (v39 > v78.origin.y + v78.size.height)
            {
              continue;
            }

            v79.origin.x = x;
            v79.origin.y = y;
            v79.size.width = width;
            v79.size.height = v17;
            v80 = CGRectStandardize(v79);
          }

          else
          {
            v39 = *(i + 16);
            v80.origin.y = y;
            if (v39 > v37)
            {
              continue;
            }
          }

          v40 = *(i + 24);
          if (v40 >= v80.origin.y)
          {
            if (v26)
            {
              v81.origin.x = v66;
              v81.origin.y = v67;
              v81.size.height = v64;
              v81.size.width = rect;
              v82 = CGRectStandardize(v81);
              if (v39 > v82.origin.y + v82.size.height)
              {
                continue;
              }

              v83.origin.x = v66;
              v83.origin.y = v67;
              v83.size.height = v64;
              v83.size.width = rect;
              v84 = CGRectStandardize(v83);
            }

            else
            {
              v84.origin.y = v67;
              if (v39 > v62)
              {
                continue;
              }
            }

            if (v40 >= v84.origin.y)
            {
              goto LABEL_75;
            }
          }
        }

        v41 = *(v34 + 1);
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = *(v34 + 2);
            v43 = *v42 == v34;
            v34 = v42;
          }

          while (!v43);
        }

        v34 = v42;
        v16 = v64;
        v30 = v61;
      }

      while (v42 != v33);
    }
  }

LABEL_38:
  v44 = y;
  v45 = v60;
  if (v20)
  {
    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = v17;
    *(&v44 - 1) = CGRectStandardize(v85);
  }

  v46 = v44 + v45;
  if (v26)
  {
    v86.origin.x = v66;
    v86.origin.y = v67;
    v86.size.width = rect;
    v86.size.height = v16;
    v87 = CGRectStandardize(v86);
    v63 = v87.origin.y;
    if (v46 >= v87.origin.y)
    {
      v88.origin.x = v66;
      v88.origin.y = v67;
      v88.size.width = rect;
      v88.size.height = v16;
      v89 = CGRectStandardize(v88);
      v16 = v89.size.height;
      goto LABEL_44;
    }
  }

  else
  {
    v89.origin.y = v67;
    v63 = v67;
    if (v46 >= v67)
    {
LABEL_44:
      v46 = v89.origin.y + v16;
      if (v20)
      {
        v90.origin.x = x;
        v90.origin.y = y;
        v90.size.width = width;
        v90.size.height = v17;
        v91 = CGRectStandardize(v90);
        y = v91.origin.y;
      }

      v63 = y;
      if (v46 >= y)
      {
        goto LABEL_74;
      }
    }
  }

  v47 = self->_layout;
  v48 = v47[62];
  if (v48)
  {
    v49 = (v47 + 62);
    v50 = (v47 + 62);
    do
    {
      v51 = v48[4];
      if (v51 >= v46)
      {
        v50 = v48;
      }

      v48 = *&v48[v51 < v46];
    }

    while (v48);
    if (v50 != v49)
    {
      v36 = 1;
      do
      {
        if (v50[4] >= v63)
        {
          break;
        }

        for (j = *(v50 + 6); j != v50 + 5; j = *(j + 8))
        {
          if (v20)
          {
            v92.origin.x = x;
            v92.origin.y = v18;
            v92.size.width = width;
            v92.size.height = v17;
            v93 = CGRectStandardize(v92);
            v53 = *(j + 16);
            if (v53 > v93.origin.x + v93.size.width)
            {
              continue;
            }

            v94.origin.x = x;
            v94.origin.y = v18;
            v94.size.width = width;
            v94.size.height = v17;
            *&v54 = CGRectStandardize(v94);
          }

          else
          {
            v53 = *(j + 16);
            v54 = x;
            if (v53 > x + width)
            {
              continue;
            }
          }

          v55 = *(j + 24);
          if (v55 >= v54)
          {
            if (v26)
            {
              v95.origin.x = v66;
              v95.origin.y = v67;
              v95.size.height = v64;
              v95.size.width = rect;
              v96 = CGRectStandardize(v95);
              if (v53 > v96.origin.x + v96.size.width)
              {
                continue;
              }

              v97.origin.x = v66;
              v97.origin.y = v67;
              v97.size.height = v64;
              v97.size.width = rect;
              *&v56 = CGRectStandardize(v97);
            }

            else
            {
              v56 = v66;
              if (v53 > v66 + rect)
              {
                continue;
              }
            }

            if (v55 >= v56)
            {
              goto LABEL_75;
            }
          }
        }

        v57 = *(v50 + 1);
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = *(v50 + 2);
            v43 = *v58 == v50;
            v50 = v58;
          }

          while (!v43);
        }

        v50 = v58;
      }

      while (v58 != v49);
    }
  }

LABEL_74:
  v36 = 0;
LABEL_75:

  return v36;
}

- (PDFCTLDDelegateForLines)initWithPageLayout:(void *)a3 quadToPageTransform:(CGAffineTransform *)a4
{
  v9.receiver = self;
  v9.super_class = PDFCTLDDelegateForLines;
  result = [(PDFCTLDDelegateForLines *)&v9 init];
  if (result)
  {
    result->_layout = a3;
    v7 = *&a4->a;
    v8 = *&a4->tx;
    *&result->_quadToPageTransform.c = *&a4->c;
    *&result->_quadToPageTransform.tx = v8;
    *&result->_quadToPageTransform.a = v7;
  }

  return result;
}

@end