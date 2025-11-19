@interface GAXShapeSimplifier
+ (id)smoothPathForFingerPath:(id)a3;
@end

@implementation GAXShapeSimplifier

+ (id)smoothPathForFingerPath:(id)a3
{
  v3 = [a3 copyBezierPathPointsExcludingControlPoints];
  Count = AXCArrayGetCount();
  if (Count < 3)
  {
    v5 = 0;
    goto LABEL_86;
  }

  v6 = Count;
  v7 = 0;
  v8 = 0;
  v9 = 1.79769313e308;
  v10 = 1.79769313e308;
  do
  {
    if (v8 >= AXCArrayGetCount())
    {
      v79 = AXCArrayGetCount();
      v80 = v8;
      v78 = v3;
      _AXAssert();
    }

    UnderlyingArray = _AXCArrayGetUnderlyingArray();
    v12 = *(UnderlyingArray + v7 + 8);
    if (v12 < v10 || (v12 == v10 ? (v13 = *(UnderlyingArray + v7) < v9) : (v13 = 0), v13))
    {
      v10 = *(UnderlyingArray + v7 + 8);
      v9 = *(UnderlyingArray + v7);
    }

    ++v8;
    v7 += 16;
  }

  while (v6 != v8);
  v14 = AXCArrayCreate();
  v15 = 0;
  v16 = 0;
  for (i = 0; i != v6; ++i)
  {
    if (i >= AXCArrayGetCount())
    {
      v79 = AXCArrayGetCount();
      v80 = i;
      v78 = v3;
      _AXAssert();
    }

    v18 = _AXCArrayGetUnderlyingArray();
    v19 = *(v18 + v15);
    v20 = *(v18 + v15 + 8);
    if (v20 - v10 == 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = atan2(v20 - v10, v19 - v9);
    }

    _AXCArrayPrepareForInsertingElementAtIndex();
    v22 = _AXCArrayGetUnderlyingArray() + v16;
    *v22 = v21;
    *(v22 + 8) = v19;
    *(v22 + 16) = v20;
    v16 += 24;
    v15 += 16;
  }

  CFRelease(v3);
  AXCArraySort();
  v23 = AXCArrayCreate();
  if (!AXCArrayGetCount())
  {
    v79 = AXCArrayGetCount();
    v80 = 0;
    v78 = v14;
    _AXAssert();
  }

  v24 = _AXCArrayGetUnderlyingArray();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  _AXCArrayPrepareForInsertingElementAtIndex();
  v28 = _AXCArrayGetUnderlyingArray();
  *v28 = v25;
  *(v28 + 8) = v26;
  *(v28 + 16) = v27;
  if (v26 != v9 || v27 != v10)
  {
    _AXAssert();
  }

  v29 = AXCArrayGetCount();
  v30 = 0;
  for (j = 0; j != v6; ++j)
  {
    if (j >= AXCArrayGetCount())
    {
      v79 = AXCArrayGetCount();
      v80 = j;
      v78 = v14;
      _AXAssert();
    }

    v32 = _AXCArrayGetUnderlyingArray();
    v34 = *(v32 + v30);
    v33 = *(v32 + v30 + 8);
    v35 = *(v32 + v30 + 16);
    v36 = v29 - 1;
    if (v29 - 1 >= AXCArrayGetCount())
    {
      v79 = AXCArrayGetCount();
      v80 = v29 - 1;
      v78 = v23;
      _AXAssert();
    }

    v37 = (_AXCArrayGetUnderlyingArray() + 24 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = v37[2];
    if (v29 > 1)
    {
      if (v34 != v39)
      {
        goto LABEL_42;
      }

      if (sqrt((v9 - v33) * (v9 - v33) + (v10 - v35) * (v10 - v35)) > sqrt((v9 - v38) * (v9 - v38) + (v10 - v40) * (v10 - v40)))
      {
        _AXCArrayPrepareForInsertingElementAtIndex();
        v44 = (_AXCArrayGetUnderlyingArray() + 24 * v36);
        *v44 = v34;
        v44[1] = v33;
        v44[2] = v35;
      }
    }

    else if (v34 != v39 || v33 != v38 || v35 != v40)
    {
LABEL_42:
      _AXCArrayPrepareForInsertingElementAtIndex();
      v43 = (_AXCArrayGetUnderlyingArray() + 24 * v29);
      *v43 = v34;
      v43[1] = v33;
      v43[2] = v35;
      ++v29;
    }

    v30 += 24;
  }

  CFRelease(v14);
  if (v29 >= 3)
  {
    v3 = AXCArrayCreate();
    v45 = 0;
    v46 = 0;
    for (k = 0; k != 3; ++k)
    {
      if (k >= AXCArrayGetCount())
      {
        v79 = AXCArrayGetCount();
        v80 = k;
        v78 = v23;
        _AXAssert();
      }

      v48 = _AXCArrayGetUnderlyingArray();
      v49 = *(v48 + v45 + 8);
      v50 = *(v48 + v45 + 16);
      _AXCArrayPrepareForInsertingElementAtIndex();
      v51 = (_AXCArrayGetUnderlyingArray() + v46);
      *v51 = v49;
      v51[1] = v50;
      v46 += 16;
      v45 += 24;
    }

    v52 = AXCArrayGetCount();
    v53 = v52;
    if (v52 >= v29)
    {
      v54 = v52;
    }

    else
    {
      v54 = v52;
      do
      {
        if (v54 - 2 >= AXCArrayGetCount())
        {
          v79 = AXCArrayGetCount();
          v80 = v54 - 2;
          v78 = v3;
          _AXAssert();
        }

        v55 = (_AXCArrayGetUnderlyingArray() + 16 * (v54 - 2));
        v56 = *v55;
        v57 = v55[1];
        if (v54 - 1 >= AXCArrayGetCount())
        {
          v79 = AXCArrayGetCount();
          v80 = v54 - 1;
          v78 = v3;
          _AXAssert();
        }

        v58 = (_AXCArrayGetUnderlyingArray() + 16 * (v54 - 1));
        v60 = *v58;
        v59 = v58[1];
        if (v53 >= AXCArrayGetCount())
        {
          v79 = AXCArrayGetCount();
          v80 = v53;
          v78 = v23;
          _AXAssert();
        }

        v61 = _AXCArrayGetUnderlyingArray() + 24 * v53;
        v62 = *(v61 + 8);
        v63 = *(v61 + 16);
        if ((v60 - v56) * (v63 - v57) - (v59 - v57) * (v62 - v56) <= 0.0 && v54 >= 3)
        {
          v65 = 16 * v54 - 24;
          do
          {
            if (v54 - 3 >= AXCArrayGetCount())
            {
              v79 = AXCArrayGetCount();
              v80 = v54 - 3;
              v78 = v3;
              _AXAssert();
            }

            v66 = _AXCArrayGetUnderlyingArray();
            v67 = *(v66 + v65 - 24);
            v68 = *(v66 + v65 - 16);
            if (v54 - 2 >= AXCArrayGetCount())
            {
              v79 = AXCArrayGetCount();
              v80 = v54 - 2;
              v78 = v3;
              _AXAssert();
            }

            --v54;
            v69 = _AXCArrayGetUnderlyingArray();
            v70 = (*(v69 + v65 - 8) - v67) * (v63 - v68) - (*(v69 + v65) - v68) * (v62 - v67);
            v65 -= 16;
          }

          while (v70 <= 0.0 && v54 > 2);
        }

        _AXCArrayPrepareForInsertingElementAtIndex();
        v72 = (_AXCArrayGetUnderlyingArray() + 16 * v54);
        *v72 = v62;
        v72[1] = v63;
        ++v54;
        ++v53;
      }

      while (v53 != v29);
    }

    CFRelease(v23);
    v5 = objc_opt_new();
    if (!AXCArrayGetCount())
    {
      v79 = AXCArrayGetCount();
      v80 = 0;
      v78 = v3;
      _AXAssert();
    }

    v73 = _AXCArrayGetUnderlyingArray();
    [v5 moveToPoint:{*v73, v73[1]}];
    if (v54 >= 2)
    {
      v74 = 0;
      for (m = 1; m != v54; ++m)
      {
        if (m >= AXCArrayGetCount())
        {
          v79 = AXCArrayGetCount();
          v80 = m;
          v78 = v3;
          _AXAssert();
        }

        v76 = _AXCArrayGetUnderlyingArray();
        [v5 addLineToPoint:{*(v76 + v74 + 16), *(v76 + v74 + 24)}];
        v74 += 16;
      }
    }

    [v5 closePath];
  }

  else
  {
    v5 = 0;
    v3 = v23;
  }

LABEL_86:
  CFRelease(v3);

  return v5;
}

@end