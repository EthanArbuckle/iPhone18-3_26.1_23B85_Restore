@interface GAXRectangleShapeRecognizer
+ (id)smoothPathForFingerPath:(id)a3 probabilityOfMatch:(double *)a4;
+ (void)_copyRectanglePointsContextsFromPath:(id)a3;
@end

@implementation GAXRectangleShapeRecognizer

+ (void)_copyRectanglePointsContextsFromPath:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 boundsCenter];
  v13 = v12;
  v62 = v14;
  v75.origin.x = v5;
  v75.origin.y = v7;
  v75.size.width = v9;
  v75.size.height = v11;
  MinX = CGRectGetMinX(v75);
  v76.origin.x = v5;
  v76.origin.y = v7;
  v76.size.width = v9;
  v76.size.height = v11;
  MaxX = CGRectGetMaxX(v76);
  v77.origin.x = v5;
  v77.origin.y = v7;
  v77.size.width = v9;
  v77.size.height = v11;
  MinY = CGRectGetMinY(v77);
  v78.origin.x = v5;
  v78.origin.y = v7;
  v78.size.width = v9;
  v78.size.height = v11;
  MaxY = CGRectGetMaxY(v78);
  GAX_CGPointGetAngleFormedBySegmentToPoint(v13, v62, MinX);
  v61 = v19;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v13, v62, MaxX);
  v21 = v20;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v13, v62, MaxX);
  v23 = v22;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v13, v62, MinX);
  v24 = 1;
  v74[0] = 1;
  v74[1] = v61;
  v74[2] = v21;
  v74[3] = 2;
  v74[4] = v21;
  v74[5] = v23;
  v74[6] = 3;
  v74[7] = v23;
  v74[8] = v25;
  v74[9] = 4;
  v74[10] = v25;
  v74[11] = 0x400921FB54442D18;
  v74[12] = 4;
  v74[13] = 0xC00921FB54442D18;
  v74[14] = v61;
  v72 = 0;
  v73[0] = 1;
  *&v73[1] = MinX;
  *&v73[2] = MinY;
  *&v73[3] = MaxX;
  *&v73[4] = MinY;
  v73[5] = 2;
  *&v73[6] = MaxX;
  *&v73[7] = MinY;
  *&v73[8] = MaxX;
  *&v73[9] = MaxY;
  v73[10] = 3;
  *&v73[11] = MaxX;
  *&v73[12] = MaxY;
  *&v73[13] = MinX;
  *&v73[14] = MaxY;
  v73[15] = 4;
  *&v73[16] = MinX;
  *&v73[17] = MaxY;
  *&v73[18] = MinX;
  *&v73[19] = MinY;
  v69 = 0;
  v71 = 0u;
  if (AXCArrayCreate())
  {
    v26 = 0;
    do
    {
      v27 = v26;
      if (v26 == 3)
      {
        break;
      }

      v28 = qword_42000[v26 + 1];
      v29 = AXCArrayCreate();
      *(&v69 + v28) = v29;
      v26 = v27 + 1;
    }

    while (v29);
    v24 = v27 < 3;
  }

  v30 = AXCArrayCreate();
  v31 = v30;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 1;
  v60 = v3;
  if (!v24 && v30)
  {
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1DD08;
    v64[3] = &unk_5D970;
    *&v64[5] = v13;
    *&v64[6] = v62;
    v64[7] = 5;
    v64[8] = v74;
    v64[4] = &v65;
    v64[9] = &v69;
    v64[10] = v30;
    [v3 enumerateElementsUsingBlock:v64];
    v32 = *(&v69 + v66[3]);
    Count = AXCArrayGetCount();
    if (Count)
    {
      v34 = 0;
      for (i = 0; i != Count; ++i)
      {
        if (i >= AXCArrayGetCount())
        {
          AXCArrayGetCount();
          _AXAssert();
        }

        v63 = *(_AXCArrayGetUnderlyingArray() + v34);
        v36 = AXCArrayGetCount();
        _AXCArrayPrepareForInsertingElementAtIndex();
        *(_AXCArrayGetUnderlyingArray() + 16 * v36) = v63;
        v34 += 16;
      }
    }

    if (v32)
    {
      CFRelease(v32);
    }

    v37 = 0;
    v38 = v66[3];
    *(&v69 + v38) = v31;
    do
    {
      if (v38 == qword_42000[v37])
      {
        goto LABEL_19;
      }

      ++v37;
    }

    while (v37 != 4);
    LOBYTE(v37) = 0;
LABEL_19:
    v31 = 0;
    v39 = 0;
    while (1)
    {
      v40 = qword_42000[(v39 + v37) & 3];
      v41 = AXCArrayGetCount();
      if (v41)
      {
        if (!AXCArrayGetCount())
        {
          AXCArrayGetCount();
          _AXAssert();
        }

        _AXCArrayGetUnderlyingArray();
        v42 = v73;
        v43 = 4;
        do
        {
          if (v40 == *v42)
          {
            break;
          }

          v42 += 5;
          --v43;
        }

        while (v43);
        AX_CGPointGetDistanceToPoint();
        AX_CGPointGetDistanceToPoint();
        AX_CGPointGetDistanceToPoint();
        v45 = v44;
        if (v44 > 0.0)
        {
          v46 = 0;
          v47 = 0;
          while (1)
          {
            if (v47 >= AXCArrayGetCount())
            {
              AXCArrayGetCount();
              _AXAssert();
            }

            UnderlyingArray = _AXCArrayGetUnderlyingArray();
            v49 = *(UnderlyingArray + v46);
            v50 = *(UnderlyingArray + v46 + 8);
            AX_CGPointGetDistanceToPoint();
            v52 = v51;
            if (!v31)
            {
              v31 = AXCArrayCreate();
              if (!v31)
              {
                goto LABEL_41;
              }
            }

            v53 = AXCArrayGetCount();
            _AXCArrayPrepareForInsertingElementAtIndex();
            v54 = _AXCArrayGetUnderlyingArray() + 32 * v53;
            *v54 = v49;
            *(v54 + 8) = v50;
            ++v47;
            *(v54 + 16) = v40;
            *(v54 + 24) = v52 / v45;
            v46 += 16;
            if (v47 >= v41)
            {
              goto LABEL_35;
            }
          }
        }

        if (v31)
        {
          CFRelease(v31);
          goto LABEL_40;
        }
      }

LABEL_35:
      if (v39++ > 2)
      {
        goto LABEL_41;
      }
    }
  }

  if (v30)
  {
    CFRelease(v30);
LABEL_40:
    v31 = 0;
  }

LABEL_41:
  for (j = 0; j != 4; ++j)
  {
    v57 = qword_42000[j];
    v58 = *(&v69 + v57);
    if (v58)
    {
      CFRelease(v58);
      *(&v69 + v57) = 0;
    }
  }

  _Block_object_dispose(&v65, 8);

  return v31;
}

+ (id)smoothPathForFingerPath:(id)a3 probabilityOfMatch:(double *)a4
{
  v6 = a3;
  v7 = [a1 _copyRectanglePointsContextsFromPath:v6];
  if (v7)
  {
    v8 = v7;
    v54 = a4;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    Count = AXCArrayGetCount();
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if (Count)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        if (v16 >= AXCArrayGetCount())
        {
          v49 = AXCArrayGetCount();
          v50 = v16;
          v48 = v8;
          _AXAssert();
        }

        UnderlyingArray = _AXCArrayGetUnderlyingArray();
        v18 = (UnderlyingArray + v15);
        v19 = *(UnderlyingArray + v15 + 16);
        v20 = *(UnderlyingArray + v15 + 24);
        if (v19 > 2)
        {
          if (v19 == 3)
          {
LABEL_14:
            v18 = (UnderlyingArray + 32 * v16 + 8);
            goto LABEL_15;
          }

          if (v19 != 4)
          {
LABEL_12:
            v21 = 0.0;
            if ((v19 - 1) >= 4)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }

        else
        {
          if (v19 == 1)
          {
            goto LABEL_14;
          }

          if (v19 != 2)
          {
            goto LABEL_12;
          }
        }

LABEL_15:
        v21 = *v18;
LABEL_16:
        v22 = (&v55 + v19);
        v23 = *v22 + v21 * v20;
        v24 = v20 + v22[1];
        *v22 = v23;
        v22[1] = v24;
LABEL_17:
        ++v16;
        v15 += 32;
        if (Count == v16)
        {
          v14 = *(&v56 + 1);
          v13 = *(&v57 + 1);
          v12 = *(&v58 + 1);
          v11 = *(&v59 + 1);
          break;
        }
      }
    }

    v25 = 0;
    if (v14 > 0.0 && v13 > 0.0 && v12 > 0.0 && v11 > 0.0)
    {
      v25 = 0;
      v26 = *&v57 / v13;
      v27 = *&v59 / v11;
      if (v26 > *&v59 / v11)
      {
        v28 = *&v56 / v14;
        v29 = *&v58 / v12;
        if (v29 > *&v56 / v14)
        {
          v30 = v26 - v27;
          v31 = v29 - v28;
          v61.origin.x = *&v59 / v11;
          v61.origin.y = *&v56 / v14;
          v61.size.width = v26 - v27;
          v61.size.height = v31;
          CGRectGetMinX(v61);
          v62.origin.x = v27;
          v62.origin.y = v28;
          v62.size.width = v30;
          v62.size.height = v31;
          CGRectGetMaxX(v62);
          v63.origin.x = v27;
          v63.origin.y = v28;
          v63.size.width = v30;
          v63.size.height = v31;
          CGRectGetMinY(v63);
          v64.origin.x = v27;
          v64.origin.y = v28;
          v64.size.width = v30;
          v64.size.height = v31;
          CGRectGetMaxY(v64);
          v65.origin.x = v27;
          v65.origin.y = v28;
          v65.size.width = v30;
          v65.size.height = v31;
          Width = CGRectGetWidth(v65);
          v52 = v28;
          v53 = v27;
          v66.origin.x = v27;
          v66.origin.y = v28;
          v51 = v30;
          v66.size.width = v30;
          v66.size.height = v31;
          Height = CGRectGetHeight(v66);
          v34 = 0.0;
          if (Count)
          {
            v35 = Height;
            v36 = 0;
            for (i = 0; i != Count; ++i)
            {
              if (i >= AXCArrayGetCount())
              {
                v49 = AXCArrayGetCount();
                v50 = i;
                v48 = v8;
                _AXAssert();
              }

              v38 = _AXCArrayGetUnderlyingArray();
              v39 = *(v38 + v36 + 16);
              v40 = *(v38 + v36 + 24);
              if (v39 == 4)
              {
                v41 = v35;
              }

              else
              {
                v41 = 0.0;
              }

              if (v39 == 3)
              {
                v41 = Width;
              }

              if (v39 == 2)
              {
                v42 = v35;
              }

              else
              {
                v42 = 0.0;
              }

              if (v39 == 1)
              {
                v42 = Width;
              }

              if (v39 <= 2)
              {
                v43 = v42;
              }

              else
              {
                v43 = v41;
              }

              AX_CGPointGetDistanceToPoint();
              Height = v44 / v43;
              v34 = v34 + Height * v40;
              v36 += 32;
            }
          }

          [a1 _maximumMarginOfErrorForPath:{v6, Height, v48, v49, v50}];
          v25 = 0;
          if (v45 <= 0.0)
          {
            v10 = 0.0;
          }

          else
          {
            v46 = v45;
            v10 = 0.0;
            if (v34 < v45)
            {
              v25 = [UIBezierPath bezierPathWithRect:v53, v52, v51, v31];
              v10 = 1.0 - v34 / v46;
            }
          }
        }
      }
    }

    CFRelease(v8);
    a4 = v54;
    if (v54)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v25 = 0;
    v10 = 0.0;
    if (a4)
    {
LABEL_50:
      *a4 = v10;
    }
  }

  return v25;
}

@end