@interface BICDescribedImageComparator
- (BOOL)isCandidate:(id)candidate smallerThan:(id)than;
- (BOOL)isMatching:(id)matching withCandidateImage:(id)image includeQuality:(BOOL)quality;
- (BOOL)isMatching:(id)matching withGenericImage:(id)image;
- (BOOL)isTransformableMatch:(id)match withCandidateImage:(id)image;
- (CGSize)_aspectMatchingSizeFrom:(id)from withCandidate:(id)candidate;
- (id)sortedBestMatchOf:(id)of toCandidateImages:(id)images;
- (unint64_t)differenceFromRequest:(id)request toCandidateImage:(id)image;
- (unint64_t)fullDifferenceFromRequest:(id)request toCandidateImage:(id)image;
@end

@implementation BICDescribedImageComparator

- (CGSize)_aspectMatchingSizeFrom:(id)from withCandidate:(id)candidate
{
  candidateCopy = candidate;
  fromCopy = from;
  [fromCopy imageSize];
  v8 = v7;
  v10 = v9;
  [candidateCopy imageSize];
  v12 = v11;
  v14 = v13;
  unknownAspectRatio = [fromCopy unknownAspectRatio];

  if (unknownAspectRatio && ([candidateCopy unknownAspectRatio] & 1) == 0)
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

- (BOOL)isMatching:(id)matching withGenericImage:(id)image
{
  matchingCopy = matching;
  imageCopy = image;
  if ([imageCopy quality] == 1 || (objc_msgSend(matchingCopy, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(imageCopy, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, !v10) || (v11 = objc_msgSend(matchingCopy, "processingOptions"), ((objc_msgSend(imageCopy, "processingOptions") ^ v11) & 0xFFFFFDFF) != 0) || !objc_msgSend(imageCopy, "isGeneric"))
  {
    v18 = 0;
  }

  else
  {
    [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:matchingCopy withCandidate:imageCopy];
    v13 = v12;
    v15 = v14;
    [imageCopy imageSize];
    v18 = v15 == v17 && v13 == v16;
    if (([matchingCopy requestOptions] & 0x30) != 0)
    {
      v18 = 1;
    }
  }

  return v18;
}

- (BOOL)isTransformableMatch:(id)match withCandidateImage:(id)image
{
  matchCopy = match;
  imageCopy = image;
  if ([imageCopy quality] == 1 || (objc_msgSend(matchCopy, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(imageCopy, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, !v9))
  {
    v19 = 0;
  }

  else
  {
    [matchCopy imageSize];
    v11 = v10;
    v13 = v12;
    [imageCopy imageSize];
    v15 = v14;
    v17 = v16;
    if ([imageCopy processingOptions])
    {
      v18 = 0;
    }

    else
    {
      v18 = [imageCopy quality] - 200 < 0xFFFFFF9C;
    }

    processingOptions = [imageCopy processingOptions];
    v21 = v13 == v17 && v11 == v15;
    v22 = processingOptions == 512 && v21;
    v19 = v18 || v22;
  }

  return v19;
}

- (BOOL)isMatching:(id)matching withCandidateImage:(id)image includeQuality:(BOOL)quality
{
  qualityCopy = quality;
  matchingCopy = matching;
  imageCopy = image;
  if ([imageCopy quality] != 1 && (objc_msgSend(matchingCopy, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(imageCopy, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v12) && (v13 = objc_msgSend(matchingCopy, "processingOptions"), v13 == objc_msgSend(imageCopy, "processingOptions")) && (!qualityCopy || (v14 = objc_msgSend(matchingCopy, "quality"), v14 == objc_msgSend(imageCopy, "quality"))))
  {
    [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:matchingCopy withCandidate:imageCopy];
    v16 = v15;
    v18 = v17;
    [imageCopy imageSize];
    v21 = v18 == v20 && v16 == v19;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)differenceFromRequest:(id)request toCandidateImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  quality = [imageCopy quality];
  identifier = [requestCopy identifier];
  identifier2 = [imageCopy identifier];
  v11 = [identifier isEqualToString:identifier2];

  v12 = -1;
  if (!v11 || quality == 1)
  {
    goto LABEL_28;
  }

  [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:requestCopy withCandidate:imageCopy];
  v14 = v13;
  v16 = v15;
  [imageCopy imageSize];
  v18 = v17;
  v20 = v19;
  processingOptions = [imageCopy processingOptions];
  processingOptions2 = [requestCopy processingOptions];
  requestOptions = [requestCopy requestOptions];
  quality2 = [imageCopy quality];
  v25 = v14 != v18;
  if (v16 != v20)
  {
    v25 = 1;
  }

  v26 = (requestOptions & 0x30) == 0 && v25;
  if (!v26 && processingOptions2 == processingOptions)
  {
    v12 = 0;
    goto LABEL_11;
  }

  if ((processingOptions & 0x200) != 0)
  {
    if (v26 || (v12 = 0x2000000, (processingOptions & 0xFFFFFDFF) != 0) && (processingOptions & 0xFFFFFDFF) != processingOptions2)
    {
      v12 = -1;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  v12 = -1;
  if (((processingOptions >> 5) & 1) == (processingOptions2 & 0x20) >> 5 && !processingOptions && quality2 - 100 >= 0x64 && (processingOptions2 & 0x20) == 0)
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

    v12 = processingOptions2 ? v30 + 0x1000000 : v30;
    if (v12 != -1)
    {
LABEL_11:
      if ([imageCopy isExpired])
      {
        v12 = -1;
      }
    }
  }

LABEL_28:

  return v12;
}

- (unint64_t)fullDifferenceFromRequest:(id)request toCandidateImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  identifier = [requestCopy identifier];
  identifier2 = [imageCopy identifier];
  v10 = [identifier isEqualToString:identifier2];

  if (!v10 || ([imageCopy isExpired] & 1) != 0)
  {
    goto LABEL_3;
  }

  [(BICDescribedImageComparator *)self _aspectMatchingSizeFrom:requestCopy withCandidate:imageCopy];
  v14 = v13;
  v16 = v15;
  [imageCopy imageSize];
  v18 = v17;
  v20 = v19;
  v21 = v16 == v19 && v14 == v17;
  processingOptions = [imageCopy processingOptions];
  processingOptions2 = [requestCopy processingOptions];
  v24 = processingOptions2;
  v25 = processingOptions2 != processingOptions && (processingOptions2 & 0x20) == 0;
  if (processingOptions2)
  {
    v26 = 0;
  }

  else
  {
    v26 = processingOptions == 0;
  }

  if (processingOptions2)
  {
    v27 = processingOptions2 == processingOptions;
  }

  else
  {
    v27 = 0;
  }

  v28 = processingOptions & 0xFDFF;
  v29 = (processingOptions & 0xFDFF) == 0 && v21;
  if (!processingOptions)
  {
    v29 = 1;
  }

  v30 = v25 & v29;
  quality = [requestCopy quality];
  quality2 = [imageCopy quality];
  if (quality)
  {
    v33 = quality == quality2;
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
    if (quality2 == 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v30;
    }

    if (v21 && (quality2 - 100) >= 0x64 && (v39 & 1) == 0)
    {
      if (v34)
      {
        v11 = 0;
      }

      else
      {
        v11 = 208 - quality2;
      }

      goto LABEL_4;
    }

    if ((v24 & 0x20) == 0)
    {
      v40 = 0;
      if (quality2 > 106)
      {
        if (quality2 <= 202)
        {
          if (quality2 <= 199)
          {
            if (quality2 == 107)
            {
              v40 = 201326592;
            }

            else if (quality2 == 108)
            {
              v40 = 0x4000000;
            }

            goto LABEL_110;
          }

          if (quality2 != 200)
          {
            if (quality2 == 201)
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
          if (quality2 <= 205)
          {
            if (quality2 == 203)
            {
              v40 = 301989888;
            }

            else if (quality2 == 204)
            {
              v40 = 234881024;
            }

            else
            {
              v40 = 167772160;
            }

            goto LABEL_110;
          }

          if (quality2 == 206)
          {
            v40 = 100663296;
            goto LABEL_110;
          }

          if (quality2 != 208)
          {
            if (quality2 == 207)
            {
              v40 = 0x2000000;
            }

            goto LABEL_110;
          }
        }
      }

      else
      {
        if (quality2 > 100)
        {
          if (quality2 > 103)
          {
            if (quality2 == 104)
            {
              v40 = 335544320;
            }

            else if (quality2 == 105)
            {
              v40 = 0x8000000;
            }

            else
            {
              v40 = 0x10000000;
            }
          }

          else if (quality2 == 101)
          {
            v40 = 503316480;
          }

          else if (quality2 == 102)
          {
            v40 = 469762048;
          }

          else
          {
            v40 = 402653184;
          }

          goto LABEL_110;
        }

        if (quality2 <= 1)
        {
          if (!quality2)
          {
            v40 = 0x20000000;
            goto LABEL_110;
          }

          if (quality2 != 1)
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (quality2 == 2)
          {
            v40 = 603979776;
            goto LABEL_110;
          }

          if (quality2 == 3)
          {
            v40 = 570425344;
            goto LABEL_110;
          }

          if (quality2 != 100)
          {
LABEL_110:
            v41 = v40 + v35;
            if (quality2 == 1)
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
  if (quality2 > 106)
  {
    if (quality2 <= 202)
    {
      if (quality2 > 199)
      {
        if (quality2 == 200)
        {
          goto LABEL_3;
        }

        if (quality2 != 201)
        {
          goto LABEL_117;
        }

        goto LABEL_121;
      }

      if (quality2 == 107)
      {
LABEL_124:
        v11 = 3;
        goto LABEL_4;
      }

      if (quality2 != 108)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (quality2 <= 205)
      {
        if (quality2 == 203)
        {
          goto LABEL_123;
        }

        if (quality2 == 204)
        {
LABEL_87:
          v11 = 4;
          goto LABEL_4;
        }

        goto LABEL_124;
      }

      if (quality2 == 206)
      {
        goto LABEL_122;
      }

      if (quality2 == 208)
      {
        goto LABEL_3;
      }

      if (quality2 != 207)
      {
        goto LABEL_4;
      }
    }

    v11 = 1;
    goto LABEL_4;
  }

  if (quality2 > 101)
  {
    if (quality2 > 103)
    {
      if (quality2 != 104)
      {
        if (quality2 != 105)
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

    if (quality2 != 102)
    {
LABEL_117:
      v11 = 6;
      goto LABEL_4;
    }

LABEL_121:
    v11 = 7;
    goto LABEL_4;
  }

  if (quality2 > 2)
  {
    switch(quality2)
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
    if (quality2 < 2)
    {
      goto LABEL_3;
    }

    if (quality2 == 2)
    {
      v11 = 10;
    }
  }

LABEL_4:

  return v11;
}

- (id)sortedBestMatchOf:(id)of toCandidateImages:(id)images
{
  ofCopy = of;
  imagesCopy = images;
  requestOptions = [ofCopy requestOptions];
  requestOptions2 = [ofCopy requestOptions];
  if ((requestOptions2 & 0x10) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = ([ofCopy requestOptions] >> 6) & 1;
  }

  v26 = v8;
  requestOptions3 = [ofCopy requestOptions];
  v23 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = imagesCopy;
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
        v14 = [(BICDescribedImageComparator *)self fullDifferenceFromRequest:ofCopy toCandidateImage:v13];
        if (v14 != -1)
        {
          v15 = v14;
          if ((requestOptions3 & 0x80) != 0)
          {
            v16 = [v13 quality] == 101 || objc_msgSend(v13, "quality") == 2 || -[BICDescribedImageComparator isCandidate:smallerThan:](self, "isCandidate:smallerThan:", v13, ofCopy);
          }

          else
          {
            v16 = 0;
          }

          v17 = !(requestOptions2 & 0x10 | requestOptions & 0x20) && [v13 quality] == 3;
          v18 = v26 ? [v13 requiresNetwork] : 0;
          v19 = (requestOptions2 & 0x10) != 0 && [v13 location] > 2;
          if ((requestOptions & 0x20) != 0 || ((v17 | v16 | v18 | v19) & 1) == 0)
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

- (BOOL)isCandidate:(id)candidate smallerThan:(id)than
{
  thanCopy = than;
  [candidate imageSize];
  v7 = v6;
  v9 = v8;
  [thanCopy imageSize];
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