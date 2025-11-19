@interface BICDescribedImageComparator
- (BOOL)isCandidate:(id)a3 smallerThan:(id)a4;
- (BOOL)isMatching:(id)a3 withCandidateImage:(id)a4 includeQuality:(BOOL)a5;
- (BOOL)isMatching:(id)a3 withGenericImage:(id)a4;
- (BOOL)isTransformableMatch:(id)a3 withCandidateImage:(id)a4;
- (CGSize)_aspectMatchingSizeFrom:(id)a3 withCandidate:(id)a4;
- (id)sortedBestMatchOf:(id)a3 toCandidateImages:(id)a4;
- (unint64_t)differenceFromRequest:(id)a3 toCandidateImage:(id)a4;
- (unint64_t)fullDifferenceFromRequest:(id)a3 toCandidateImage:(id)a4;
@end

@implementation BICDescribedImageComparator

- (CGSize)_aspectMatchingSizeFrom:(id)a3 withCandidate:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 imageSize];
  v8 = v7;
  v10 = v9;
  [v5 imageSize];
  v12 = v11;
  v14 = v13;
  v15 = [v6 unknownAspectRatio];

  if (v15 && ([v5 unknownAspectRatio] & 1) == 0)
  {
    height = CGSizeZero.height;
    if ((v8 != CGSizeZero.width || v10 != height) && (v12 != CGSizeZero.width || v14 != height))
    {
      v19 = v12 / v14;
      if (v8 / v10 >= v12 / v14)
      {
        if (v8 / v10 > v12 / v14)
        {
          v8 = round(v10 * v19);
        }
      }

      else
      {
        v10 = round(v8 / v19);
      }
    }
  }

  v20 = v8;
  v21 = v10;
  result.height = v21;
  result.width = v20;
  return result;
}

- (BOOL)isMatching:(id)a3 withGenericImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 quality] == 1 || (objc_msgSend(v6, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, !v10) || (v11 = objc_msgSend(v6, "processingOptions"), ((objc_msgSend(v7, "processingOptions") ^ v11) & 0xFFFFFDFF) != 0) || !objc_msgSend(v7, "isGeneric"))
  {
    v18 = 0;
  }

  else
  {
    [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:v6 withCandidate:v7];
    v13 = v12;
    v15 = v14;
    [v7 imageSize];
    v18 = v15 == v17 && v13 == v16;
    if (([v6 requestOptions] & 0x30) != 0)
    {
      v18 = 1;
    }
  }

  return v18;
}

- (BOOL)isTransformableMatch:(id)a3 withCandidateImage:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 quality] == 1 || (objc_msgSend(v5, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, !v9))
  {
    v19 = 0;
  }

  else
  {
    [v5 imageSize];
    v11 = v10;
    v13 = v12;
    [v6 imageSize];
    v15 = v14;
    v17 = v16;
    if ([v6 processingOptions])
    {
      v18 = 0;
    }

    else
    {
      v18 = [v6 quality] - 200 < 0xFFFFFF9C;
    }

    v20 = [v6 processingOptions];
    v21 = v13 == v17 && v11 == v15;
    v22 = v20 == 512 && v21;
    v19 = v18 || v22;
  }

  return v19;
}

- (BOOL)isMatching:(id)a3 withCandidateImage:(id)a4 includeQuality:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v9 quality] != 1 && (objc_msgSend(v8, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v12) && (v13 = objc_msgSend(v8, "processingOptions"), v13 == objc_msgSend(v9, "processingOptions")) && (!v5 || (v14 = objc_msgSend(v8, "quality"), v14 == objc_msgSend(v9, "quality"))))
  {
    [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:v8 withCandidate:v9];
    v16 = v15;
    v18 = v17;
    [v9 imageSize];
    v21 = v18 == v20 && v16 == v19;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)differenceFromRequest:(id)a3 toCandidateImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 quality];
  v9 = [v6 identifier];
  v10 = [v7 identifier];
  v11 = [v9 isEqualToString:v10];

  v12 = -1;
  if (!v11 || v8 == 1)
  {
    goto LABEL_28;
  }

  [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:v6 withCandidate:v7];
  v14 = v13;
  v16 = v15;
  [v7 imageSize];
  v18 = v17;
  v20 = v19;
  v21 = [v7 processingOptions];
  v22 = [v6 processingOptions];
  v23 = [v6 requestOptions];
  v24 = [v7 quality];
  v25 = v14 != v18;
  if (v16 != v20)
  {
    v25 = 1;
  }

  v26 = (v23 & 0x30) == 0 && v25;
  if (!v26 && v22 == v21)
  {
    v12 = 0;
    goto LABEL_11;
  }

  if ((v21 & 0x200) != 0)
  {
    if (v26 || (v12 = 0x2000000, (v21 & 0xFFFFFDFF) != 0) && (v21 & 0xFFFFFDFF) != v22)
    {
      v12 = -1;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  v12 = -1;
  if (((v21 >> 5) & 1) == (v22 & 0x20) >> 5 && !v21 && v24 - 100 >= 0x64 && (v22 & 0x20) == 0)
  {
    if (v25)
    {
      v27 = (v18 * v20);
      if (v27)
      {
        v28 = (v14 * v16);
        v29 = v27 < v28;
        v30 = v27 - v28;
        if (v29)
        {
          v30 = 0x1000000 - v30;
        }
      }

      else
      {
        v30 = 33554433;
      }
    }

    else
    {
      v30 = 0;
    }

    v12 = v22 ? v30 + 0x1000000 : v30;
    if (v12 != -1)
    {
LABEL_11:
      if ([v7 isExpired])
      {
        v12 = -1;
      }
    }
  }

LABEL_28:

  return v12;
}

- (unint64_t)fullDifferenceFromRequest:(id)a3 toCandidateImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  if (!v10 || ([v7 isExpired] & 1) != 0)
  {
    goto LABEL_3;
  }

  [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:v6 withCandidate:v7];
  v14 = v13;
  v16 = v15;
  [v7 imageSize];
  v18 = v17;
  v20 = v19;
  v21 = v16 == v19 && v14 == v17;
  v22 = [v7 processingOptions];
  v23 = [v6 processingOptions];
  v24 = v23;
  v25 = v23 != v22 && (v23 & 0x20) == 0;
  if (v23)
  {
    v26 = 0;
  }

  else
  {
    v26 = v22 == 0;
  }

  if (v23)
  {
    v27 = v23 == v22;
  }

  else
  {
    v27 = 0;
  }

  v28 = v22 & 0xFDFF;
  v29 = (v22 & 0xFDFF) == 0 && v21;
  if (!v22)
  {
    v29 = 1;
  }

  v30 = v25 & v29;
  v31 = [v6 quality];
  v32 = [v7 quality];
  if (v31)
  {
    v33 = v31 == v32;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;
  if (v21)
  {
    v35 = 0;
  }

  else
  {
    v36 = (v18 * v20);
    v37 = (v14 * v16);
    if (v36)
    {
      v38 = v36 - v37;
      if (v36 < v37)
      {
        v38 = 0x1000000 - (v36 - v37);
      }

      if (v36 == v37)
      {
        v35 = 0;
      }

      else
      {
        v35 = v38;
      }
    }

    else
    {
      v35 = ((v37 * 0.9) + 16777000.0);
    }
  }

  if ((v26 | v30) == 1)
  {
    if (v32 == 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v30;
    }

    if (v21 && (v32 - 100) >= 0x64 && (v39 & 1) == 0)
    {
      if (v34)
      {
        v11 = 0;
      }

      else
      {
        v11 = 208 - v32;
      }

      goto LABEL_4;
    }

    if ((v24 & 0x20) == 0)
    {
      v40 = 0;
      if (v32 > 106)
      {
        if (v32 <= 202)
        {
          if (v32 <= 199)
          {
            if (v32 == 107)
            {
              v40 = 201326592;
            }

            else if (v32 == 108)
            {
              v40 = 0x4000000;
            }

            goto LABEL_110;
          }

          if (v32 != 200)
          {
            if (v32 == 201)
            {
              v40 = 436207616;
            }

            else
            {
              v40 = 369098752;
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v32 <= 205)
          {
            if (v32 == 203)
            {
              v40 = 301989888;
            }

            else if (v32 == 204)
            {
              v40 = 234881024;
            }

            else
            {
              v40 = 167772160;
            }

            goto LABEL_110;
          }

          if (v32 == 206)
          {
            v40 = 100663296;
            goto LABEL_110;
          }

          if (v32 != 208)
          {
            if (v32 == 207)
            {
              v40 = 0x2000000;
            }

            goto LABEL_110;
          }
        }
      }

      else
      {
        if (v32 > 100)
        {
          if (v32 > 103)
          {
            if (v32 == 104)
            {
              v40 = 335544320;
            }

            else if (v32 == 105)
            {
              v40 = 0x8000000;
            }

            else
            {
              v40 = 0x10000000;
            }
          }

          else if (v32 == 101)
          {
            v40 = 503316480;
          }

          else if (v32 == 102)
          {
            v40 = 469762048;
          }

          else
          {
            v40 = 402653184;
          }

          goto LABEL_110;
        }

        if (v32 <= 1)
        {
          if (!v32)
          {
            v40 = 0x20000000;
            goto LABEL_110;
          }

          if (v32 != 1)
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (v32 == 2)
          {
            v40 = 603979776;
            goto LABEL_110;
          }

          if (v32 == 3)
          {
            v40 = 570425344;
            goto LABEL_110;
          }

          if (v32 != 100)
          {
LABEL_110:
            v41 = v40 + v35;
            if (v32 == 1)
            {
              v11 = -1;
            }

            else
            {
              v11 = v41;
            }

            goto LABEL_4;
          }
        }
      }

      v40 = 637534208;
      goto LABEL_110;
    }

LABEL_3:
    v11 = -1;
    goto LABEL_4;
  }

  if (!v27)
  {
    if (v28 == v24 && v21)
    {
      v11 = -2;
    }

    else
    {
      v11 = -1;
    }

    goto LABEL_4;
  }

  if (!v21)
  {
    goto LABEL_3;
  }

  v11 = 0;
  if (v32 > 106)
  {
    if (v32 <= 202)
    {
      if (v32 > 199)
      {
        if (v32 == 200)
        {
          goto LABEL_3;
        }

        if (v32 != 201)
        {
          goto LABEL_117;
        }

        goto LABEL_121;
      }

      if (v32 == 107)
      {
LABEL_124:
        v11 = 3;
        goto LABEL_4;
      }

      if (v32 != 108)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v32 <= 205)
      {
        if (v32 == 203)
        {
          goto LABEL_123;
        }

        if (v32 == 204)
        {
LABEL_87:
          v11 = 4;
          goto LABEL_4;
        }

        goto LABEL_124;
      }

      if (v32 == 206)
      {
        goto LABEL_122;
      }

      if (v32 == 208)
      {
        goto LABEL_3;
      }

      if (v32 != 207)
      {
        goto LABEL_4;
      }
    }

    v11 = 1;
    goto LABEL_4;
  }

  if (v32 > 101)
  {
    if (v32 > 103)
    {
      if (v32 != 104)
      {
        if (v32 != 105)
        {
          goto LABEL_87;
        }

LABEL_122:
        v11 = 2;
        goto LABEL_4;
      }

LABEL_123:
      v11 = 5;
      goto LABEL_4;
    }

    if (v32 != 102)
    {
LABEL_117:
      v11 = 6;
      goto LABEL_4;
    }

LABEL_121:
    v11 = 7;
    goto LABEL_4;
  }

  if (v32 > 2)
  {
    switch(v32)
    {
      case 3:
        v11 = 9;
        break;
      case 100:
        goto LABEL_3;
      case 101:
        v11 = 8;
        break;
    }
  }

  else
  {
    if (v32 < 2)
    {
      goto LABEL_3;
    }

    if (v32 == 2)
    {
      v11 = 10;
    }
  }

LABEL_4:

  return v11;
}

- (id)sortedBestMatchOf:(id)a3 toCandidateImages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = [v6 requestOptions];
  v27 = [v6 requestOptions];
  if ((v27 & 0x10) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = ([v6 requestOptions] >> 6) & 1;
  }

  v26 = v8;
  v25 = [v6 requestOptions];
  v23 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [(BICDescribedImageComparator *)self fullDifferenceFromRequest:v6 toCandidateImage:v13];
        if (v14 != -1)
        {
          v15 = v14;
          if ((v25 & 0x80) != 0)
          {
            v16 = [v13 quality] == 101 || objc_msgSend(v13, "quality") == 2 || -[BICDescribedImageComparator isCandidate:smallerThan:](self, "isCandidate:smallerThan:", v13, v6);
          }

          else
          {
            v16 = 0;
          }

          v17 = !(v27 & 0x10 | v28 & 0x20) && [v13 quality] == 3;
          v18 = v26 ? [v13 requiresNetwork] : 0;
          v19 = (v27 & 0x10) != 0 && [v13 location] > 2;
          if ((v28 & 0x20) != 0 || ((v17 | v16 | v18 | v19) & 1) == 0)
          {
            v20 = objc_alloc_init(BICDescribedImageWithScore);
            [(BICDescribedImageWithScore *)v20 setScore:v15];
            [(BICDescribedImageWithScore *)v20 setImage:v13];
            [v13 setMatchScore:{-[BICDescribedImageWithScore score](v20, "score")}];
            [v23 addObject:v20];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  [v23 sortUsingSelector:"compare:"];
  v21 = [v23 valueForKey:@"image"];

  return v21;
}

- (BOOL)isCandidate:(id)a3 smallerThan:(id)a4
{
  v5 = a4;
  [a3 imageSize];
  v7 = v6;
  v9 = v8;
  [v5 imageSize];
  v11 = v10;
  v13 = v12;

  if (CGSizeZero.width == v7 && CGSizeZero.height == v9)
  {
    return 0;
  }

  if (v9 < v13)
  {
    return 1;
  }

  return v7 < v11;
}

@end