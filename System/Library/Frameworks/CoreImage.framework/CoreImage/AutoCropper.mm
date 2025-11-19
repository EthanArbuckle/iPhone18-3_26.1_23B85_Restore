@interface AutoCropper
- (AutoCropper)init;
- (CGRect)computeClippingWithinSize:(CGSize)a3 andImportantRect:(CGRect)a4;
- (CGRect)computeClippingWithinSize:(CGSize)a3 andImportantRects:(id)a4;
- (CGRect)computeClippingWithinSize:(CGSize)a3 forImportantRect:(CGRect)a4 andType:(int)a5 restrictRect:(CGRect)a6;
- (CGRect)computeClippingWithinSize:(CGSize)a3 forMultipleRects:(id)a4;
- (CGRect)expandRect:(CGRect)result toContainRect:(CGRect)a4;
- (CGRect)rectContainingRect:(CGRect)result andOtherRect:(CGRect)a4;
- (CGRect)rectWithSize:(CGSize)a3 andPoint:(CGPoint)a4 inPosition:(int)a5 fromOriginalSize:(CGSize)a6;
- (CGRect)scaleRect:(CGRect)a3 byScale:(double)a4;
- (CGRect)scaleRect:(CGRect)a3 toFitSize:(CGSize)a4 withAnchorPoint:(CGPoint)a5;
- (CGSize)originalImageSize;
- (id)clusterRects:(id)a3;
- (int)determineBestPositionWithinSize:(CGSize)a3 forImportantRect:(CGRect)a4 restrictRect:(CGRect)a5;
- (int)getRatioOfSize:(CGSize)a3;
@end

@implementation AutoCropper

- (AutoCropper)init
{
  v5.receiver = self;
  v5.super_class = AutoCropper;
  v2 = [(AutoCropper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AutoCropper *)v2 setShouldFavorTop:0];
    [(AutoCropper *)v3 setShouldFavorBottom:0];
    v3->originalImageSize.width = 0.0;
    v3->originalImageSize.height = 0.0;
  }

  return v3;
}

- (CGRect)scaleRect:(CGRect)a3 byScale:(double)a4
{
  v4 = a3.origin.x + a3.size.width * 0.5;
  v5 = a3.origin.y + a3.size.height * 0.5;
  v6 = a3.size.height * a4;
  v7 = a3.size.width * a4;
  v8 = v4 - v7 * 0.5;
  v9 = v5 - v6 * 0.5;
  result.size.height = v6;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)expandRect:(CGRect)result toContainRect:(CGRect)a4
{
  v4 = a4.origin.y + a4.size.height;
  v5 = a4.origin.x + a4.size.width;
  if (result.origin.y + result.size.height < v4)
  {
    result.size.height = v4 - result.origin.y;
  }

  if (result.origin.x + result.size.width < v5)
  {
    result.size.width = v5 - result.origin.x;
  }

  if (result.origin.y > a4.origin.y)
  {
    result.size.height = result.origin.y - a4.origin.y + result.size.height;
    result.origin.y = a4.origin.y;
  }

  if (result.origin.x > a4.origin.x)
  {
    result.size.width = result.origin.x - a4.origin.x + result.size.width;
    result.origin.x = a4.origin.x;
  }

  return result;
}

- (CGRect)computeClippingWithinSize:(CGSize)a3 andImportantRect:(CGRect)a4
{
  height = a3.height;
  v5 = a4.origin.x + a4.size.width * 0.5;
  v6 = a4.origin.y + a4.size.height * 0.5;
  if (v6 >= height * 0.5)
  {
    if (v6 > (height + height) / 3.0)
    {
      if (!self->shouldFavorBottom)
      {
        v11 = (height - v6) * 3.0;
        v10 = height - v11;
        height = v11;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    shouldFavorTop = self->shouldFavorTop;
    v7 = 1.5;
LABEL_11:
    v13 = v6 * v7;
    if (!shouldFavorTop)
    {
      height = v13;
    }

LABEL_13:
    v10 = 0.0;
    goto LABEL_14;
  }

  v7 = 3.0;
  if (v6 <= height / 3.0)
  {
    shouldFavorTop = self->shouldFavorTop;
    goto LABEL_11;
  }

  v8 = (height - v6) * 1.5;
  v9 = height - v8;
  if (self->shouldFavorBottom)
  {
    v10 = 0.0;
  }

  else
  {
    height = v8;
    v10 = v9;
  }

LABEL_14:
  if (v5 >= a3.width * 0.5)
  {
    v15 = 3.0;
    if (v5 > (a3.width + a3.width) / 3.0)
    {
      v14 = a3.width - v5;
      goto LABEL_19;
    }

    v16 = v5 * 1.5;
LABEL_22:
    v17 = 0.0;
    goto LABEL_23;
  }

  if (v5 <= a3.width / 3.0)
  {
    v16 = v5 * 3.0;
    goto LABEL_22;
  }

  v14 = a3.width - v5;
  v15 = 1.5;
LABEL_19:
  v16 = v14 * v15;
  v17 = a3.width - v16;
LABEL_23:
  v18 = height;
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v10;
  result.origin.x = v17;
  return result;
}

- (int)getRatioOfSize:(CGSize)a3
{
  if (a3.height * 4.0 == a3.width * 3.0)
  {
    return 1;
  }

  if (a3.height * 3.0 == a3.width + a3.width)
  {
    return 2;
  }

  if (a3.height * 16.0 == a3.width * 9.0)
  {
    return 3;
  }

  if (a3.height == a3.width)
  {
    return 4;
  }

  v4 = a3.height * 5.0;
  if (v4 == a3.width * 3.0)
  {
    return 5;
  }

  if (v4 == a3.width * 4.0)
  {
    return 6;
  }

  return 7;
}

- (CGRect)scaleRect:(CGRect)a3 toFitSize:(CGSize)a4 withAnchorPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v15 = a3.size.height;
  v16 = a3.size.width;
  v17 = a3.origin.y;
  v18 = a3.origin.x;
  acLog("scaleRect:inner=(%.3f,%.3f,%.3f,%.3f), size=(%.3f,%.3f), anchor=(%.3f,%.3f)\n", a2, v5, v6, v7, v8, v9, v10, SLOBYTE(a3.origin.x));
  if (v17 <= y && v17 + v16 >= y && v18 + v16 >= x && v18 <= x)
  {
    v29 = v15 - (y - v17);
    v30 = x - v18;
    v31 = v16 - (x - v18);
    v32 = y / (y - v17);
    if ((height - y) / v29 < v32)
    {
      v32 = (height - y) / v29;
    }

    if (x / v30 < v32)
    {
      v32 = x / v30;
    }

    if ((width - x) / v31 < v32)
    {
      v32 = (width - x) / v31;
    }

    v33 = (y - v17) * v32;
    v34 = v30 * v32;
    v18 = x - v34;
    v17 = y - v33;
    v16 = v34 + v31 * v32;
    v15 = v33 + v29 * v32;
  }

  else
  {
    acLog("ERROR <AutoCropper>: Point should be within rect", v19, v20, v21, v22, v23, v24, v25, v39);
  }

  v35 = v18;
  v36 = v17;
  v37 = v16;
  v38 = v15;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)rectWithSize:(CGSize)a3 andPoint:(CGPoint)a4 inPosition:(int)a5 fromOriginalSize:(CGSize)a6
{
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v9 = 0.0;
  if (a5 > 0xD)
  {
    v10 = 0.0;
    goto LABEL_15;
  }

  if (((1 << a5) & 0x854) != 0)
  {
    v12 = (a3.width - x) * 0.5;
    if (x < v12)
    {
      v12 = x;
    }

    v10 = x - v12;
    goto LABEL_14;
  }

  if (((1 << a5) & 0x10A8) != 0)
  {
    v12 = a3.width - x;
    if (a3.width - x >= x * 0.5)
    {
      v12 = x * 0.5;
    }

    v10 = x + v12 * -2.0;
LABEL_14:
    width = v12 * 3.0;
    goto LABEL_15;
  }

  v10 = 0.0;
  if (((1 << a5) & 0x2700) != 0)
  {
    v11 = a3.width - x;
    if (x < a3.width - x)
    {
      v11 = x;
    }

    v10 = x - v11;
    width = v11 + v11;
  }

LABEL_15:
  if (a5 > 0xE)
  {
    v13 = height;
    goto LABEL_31;
  }

  if (((1 << a5) & 0x231) != 0)
  {
    if (a4.y >= (height - a4.y) * 0.5)
    {
      y = (height - a4.y) * 0.5;
    }

    else
    {
      y = a4.y;
    }

    v9 = a4.y - y;
LABEL_30:
    v13 = y * 3.0;
    goto LABEL_31;
  }

  if (((1 << a5) & 0x4C2) != 0)
  {
    y = a4.y * 0.5;
    if (height - a4.y < a4.y * 0.5)
    {
      y = height - a4.y;
    }

    v9 = a4.y + y * -2.0;
    goto LABEL_30;
  }

  v13 = height;
  if (((1 << a5) & 0x5900) != 0)
  {
    if (a4.y >= height - a4.y)
    {
      v14 = height - a4.y;
    }

    else
    {
      v14 = a4.y;
    }

    v9 = a4.y - v14;
    v13 = v14 + v14;
  }

LABEL_31:
  v16 = height / a3.width;
  if (v13 / width >= v16)
  {
    if (v13 / width > v16)
    {
      v18 = -(a4.y - v9) / v13;
      v13 = v16 * width;
      v9 = a4.y + v18 * (v16 * width);
    }
  }

  else
  {
    v17 = v13 / v16;
    v10 = x + -(x - v10) / width * v17;
    width = v17;
  }

  v19 = v10;
  v20 = v13;
  result.size.height = v20;
  result.size.width = width;
  result.origin.y = v9;
  result.origin.x = v19;
  return result;
}

- (CGRect)rectContainingRect:(CGRect)result andOtherRect:(CGRect)a4
{
  v4 = result.origin.x + result.size.width;
  v5 = a4.origin.x + a4.size.width;
  if (v4 <= v5)
  {
    v4 = v5;
  }

  v6 = result.origin.y + result.size.height;
  if (v6 <= a4.origin.y + a4.size.height)
  {
    v6 = a4.origin.y + a4.size.height;
  }

  if (result.origin.x >= a4.origin.x)
  {
    result.origin.x = a4.origin.x;
  }

  v7 = v4 - result.origin.x;
  if (result.origin.y >= a4.origin.y)
  {
    result.origin.y = a4.origin.y;
  }

  v8 = v6 - result.origin.y;
  result.size.height = v8;
  result.size.width = v7;
  return result;
}

- (id)clusterRects:(id)a3
{
  v3 = a3;
  if ([a3 count] != 1)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
    if ([v3 count] != 1)
    {
      while (2)
      {
        v5 = [v3 count];
        v19 = 0u;
        v20 = 0u;
        if (v5 >= 2)
        {
          v6 = 0;
          v7 = (v5 - 1);
          v8 = v5 & 0x7FFFFFFF;
          v9 = 1;
LABEL_5:
          memset(&v18, 0, sizeof(v18));
          [objc_msgSend(v3 objectAtIndex:{v6), "getValue:", &v18}];
          v10 = v6 + 1;
          v11 = v9;
          while (1)
          {
            [objc_msgSend(v3 objectAtIndex:{v11, 0, 0, 0, 0), "getValue:", &v17}];
            if (CGRectIntersectsRect(v18, v17))
            {
              break;
            }

            if (v8 == ++v11)
            {
              ++v9;
              ++v6;
              if (v10 != v7)
              {
                goto LABEL_5;
              }

              return v3;
            }
          }

          [(AutoCropper *)self rectContainingRect:*&v17.origin andOtherRect:*&v17.size, *&v18.origin, *&v18.size];
          *&v19 = v12;
          *(&v19 + 1) = v13;
          *&v20 = v14;
          *(&v20 + 1) = v15;
          [v3 replaceObjectAtIndex:v6 withObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", &v19, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
          [v3 removeObjectAtIndex:v11];
          if ([v3 count] != 1)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  return v3;
}

- (CGRect)computeClippingWithinSize:(CGSize)a3 andImportantRects:(id)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [objc_msgSend(v6 valueForKey:{@"AspectRatioCutoff", "floatValue"}];
  v76 = v7;
  [objc_msgSend(v6 valueForKey:{@"MinimumCroppedArea", "floatValue"}];
  v9 = v8;
  [objc_msgSend(v6 valueForKey:{@"ProximityToCenter", "floatValue"}];
  v11 = v10;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v12 = [a4 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v12)
  {
    v20 = v12;
    v21 = *v83;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v83 != v21)
        {
          objc_enumerationMutation(a4);
        }

        v27 = *(*(&v82 + 1) + 8 * i);
        v80 = 0u;
        v81 = 0u;
        [v27 getValue:&v80];
        if (*(&v81 + 1) * *&v81 > v22 * v23)
        {
          v24 = *(&v80 + 1);
          v25 = *&v80;
          v22 = *(&v81 + 1);
          v23 = *&v81;
        }
      }

      v20 = [a4 countByEnumeratingWithState:&v82 objects:v86 count:{16, *(&v81 + 1), *&v81, *(&v81 + 1) * *&v81}];
    }

    while (v20);
  }

  else
  {
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
  }

  v28 = v23 * 0.5 + v25;
  v29 = v22 * 0.5 + v24;
  v30 = v22 * v23;
  acLog("Face area is %f, Total is %f\n", v13, v14, v15, v16, v17, v18, v19, SLOBYTE(v30));
  v78 = a3.width * a3.height;
  if (v30 * 1.1 < a3.width * a3.height / 9.0 || (acLog("Large Face!\n", v31, v32, v33, v34, v35, v36, v37, v72), v38 = 0.0, (a3.height * a3.height + a3.width * a3.width) * v11 <= (v29 - a3.height * 0.5) * (v29 - a3.height * 0.5) + (v28 - a3.width * 0.5) * (v28 - a3.width * 0.5)))
  {
    v40 = 0;
    v73 = *(MEMORY[0x1E695F058] + 8);
    v74 = *MEMORY[0x1E695F058];
    v41 = a3.width * a3.height;
    v42 = v76 + 1.0;
    v75 = *(MEMORY[0x1E695F058] + 16);
    v77 = *(MEMORY[0x1E695F058] + 24);
    v43 = v42;
    v44 = 7;
    do
    {
      height = 9.0;
      if (v40 == 5)
      {
        v46 = 9.0;
      }

      else
      {
        v46 = 12.0;
      }

      v47 = 48.0;
      if (v40 != 3)
      {
        v47 = 20.0;
      }

      v48 = 27.0;
      if (v40 != 3)
      {
        v48 = 20.0;
      }

      if (v40 <= 4)
      {
        v46 = v48;
      }

      else
      {
        v47 = 15.0;
      }

      if (v40 == 1)
      {
        width = 12.0;
      }

      else
      {
        width = 9.0;
      }

      if (v40 != 1)
      {
        height = 6.0;
      }

      if (!v40)
      {
        width = a3.width;
        height = a3.height;
      }

      if (v40 <= 2)
      {
        v50 = width;
      }

      else
      {
        v50 = v47;
      }

      if (v40 <= 2)
      {
        v51 = height;
      }

      else
      {
        v51 = v46;
      }

      v52 = 4;
      do
      {
        [(AutoCropper *)self rectWithSize:v52 andPoint:v50 inPosition:v51 fromOriginalSize:v28, v29, a3.width, a3.height];
        [AutoCropper scaleRect:"scaleRect:toFitSize:withAnchorPoint:" toFitSize:? withAnchorPoint:?];
        if ((v78 - v62 * v63) * v43 < v41 || v44 == 7)
        {
          v41 = v78 - v62 * v63;
          v75 = v62;
          v77 = v63;
          v44 = v40;
          v73 = v61;
          v74 = v60;
        }

        v52 = (v52 + 1);
      }

      while (v52 != 8);
      ++v40;
    }

    while (v40 != 7);
    v66 = v75;
    v65 = v77;
    if (v77 * v75 < v78 * v9)
    {
      v38 = 0.0;
      v67 = "No Crop. Reduces area too much\n";
      v39 = 0.0;
      v66 = a3.width;
      v65 = a3.height;
LABEL_50:
      acLog(v67, v53, v54, v55, v56, v57, v58, v59, v72);
      a3.width = v66;
      a3.height = v65;
      goto LABEL_51;
    }

    if (v44 <= 2)
    {
      v39 = v73;
      v38 = v74;
      switch(v44)
      {
        case 0:
          v67 = "Clipping to original aspect ratio\n";
          goto LABEL_50;
        case 1:
          v67 = "Clipping to aspect ratio 4:3\n";
          goto LABEL_50;
        case 2:
          v67 = "Clipping to aspect ratio 3:2\n";
          goto LABEL_50;
      }
    }

    else
    {
      v39 = v73;
      v38 = v74;
      if (v44 <= 4)
      {
        if (v44 == 3)
        {
          v67 = "Clipping to aspect ratio 16:9\n";
        }

        else
        {
          v67 = "Clipping to square\n";
        }

        goto LABEL_50;
      }

      if (v44 == 5)
      {
        v67 = "Clipping to aspect ratio 5:3\n";
        goto LABEL_50;
      }

      if (v44 == 6)
      {
        v67 = "Clipping to aspect ratio 5:4\n";
        goto LABEL_50;
      }
    }

    v67 = "ERROR <AutoCropper>: unrecognized aspect ratio\n";
    goto LABEL_50;
  }

  v39 = 0.0;
LABEL_51:
  v68 = v38;
  v69 = v39;
  v70 = a3.width;
  v71 = a3.height;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (int)determineBestPositionWithinSize:(CGSize)a3 forImportantRect:(CGRect)a4 restrictRect:(CGRect)a5
{
  height = a3.height;
  width = a3.width;
  v88 = *MEMORY[0x1E69E9840];
  v8 = a4.origin.x + a4.size.width * 0.5;
  v9 = a4.origin.y + a4.size.height * 0.5;
  v10 = (getCFPreferenceNumber(@"MinCropPercentage", @"com.apple.mobileslideshow", 75) / 100.0);
  acLog("determineBestPositionWithinSize:size=%.3f,%.3f, center=%.3f,%.3f, minPercentage=%.3f, restrict=%.3f,%.3f,%.3f,%.3f\n", v11, v12, v13, v14, v15, v16, v17, SLOBYTE(width));
  if (self->originalImageSize.height * self->originalImageSize.width == 0.0)
  {
    v25 = height * width;
  }

  else
  {
    v25 = self->originalImageSize.height * self->originalImageSize.width;
  }

  acLog("originalArea = %.2f\n", v18, v19, v20, v21, v22, v23, v24, SLOBYTE(v25));
  v26 = 0;
  v27 = 0.0;
  v28 = 15;
  do
  {
    [(AutoCropper *)self rectWithSize:v26 andPoint:width inPosition:height fromOriginalSize:v8, v9, width, height];
    v31 = v30 * v29;
    acLog("pos = %d, rect=(%.2f,%.2f,%.2f,%.2f), area=%.2f\n", v32, v33, v34, v35, v36, v37, v38, v26);
    v78[v26] = v31;
    if (v31 > v27)
    {
      v27 = v31;
      v28 = v26;
    }

    ++v26;
  }

  while (v26 != 15);
  if (v27 / v25 < v10)
  {
    return 15;
  }

  v47 = v25 * v10;
  if (v28 <= 2)
  {
    if (v28)
    {
      if (v28 != 1)
      {
        if (v28 != 2)
        {
          return v28;
        }

        v48 = v81;
        v49 = v79;
        v50 = v86;
        if (v81 > v79)
        {
          if (v81 <= v86)
          {
LABEL_55:
            v73 = v86 / v25;
            acLog("    leftcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v73));
            if (v50 <= v47)
            {
              return v28;
            }

            return 11;
          }

          goto LABEL_35;
        }

        if (v79 <= v86)
        {
          goto LABEL_55;
        }

        v71 = v79 / v25;
        acLog("    topleft=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v71));
        if (v49 <= v47)
        {
          return v28;
        }

        return 4;
      }

      v48 = v81;
      v59 = v82;
      v60 = v85;
      if (v81 > v82)
      {
        if (v81 > v85)
        {
LABEL_35:
          v66 = v48 / v25;
          acLog("    bottomleft=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v66));
          if (v48 > v47)
          {
            return 6;
          }

          return v28;
        }

        goto LABEL_65;
      }

      if (v82 <= v85)
      {
LABEL_65:
        v77 = v85 / v25;
        acLog("    bottomcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v77));
        if (v60 <= v47)
        {
          return v28;
        }

        return 10;
      }

      v74 = v82 / v25;
      acLog("    bottomright=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v74));
      if (v59 <= v47)
      {
        return v28;
      }

      return 7;
    }

    v54 = v79;
    v55 = v80;
    v56 = v84;
    if (v79 > v80)
    {
      if (v79 > v84)
      {
        v64 = v79 / v25;
        acLog("    topleft=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v64));
        if (v54 <= v47)
        {
          return v28;
        }

        return 4;
      }

      goto LABEL_42;
    }

    if (v80 <= v84)
    {
LABEL_42:
      v68 = v84 / v25;
      acLog("    topcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v68));
      if (v56 <= v47)
      {
        return v28;
      }

      return 9;
    }

    goto LABEL_45;
  }

  if (v28 == 3)
  {
    v57 = v82;
    v55 = v80;
    v58 = v87;
    if (v82 <= v80)
    {
      if (v80 > v87)
      {
LABEL_45:
        v69 = v55 / v25;
        acLog("    topright=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v69));
        if (v55 > v47)
        {
          return 5;
        }

        return v28;
      }
    }

    else if (v82 > v87)
    {
      v65 = v82 / v25;
      acLog("    bottomright=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v65));
      if (v57 <= v47)
      {
        return v28;
      }

      return 7;
    }

    v70 = v87 / v25;
    acLog("    rightcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v70));
    if (v58 <= v47)
    {
      return v28;
    }

    return 12;
  }

  if (v28 == 13)
  {
    v62 = v84;
    v61 = v85;
    v53 = v83;
    if (v85 <= v84)
    {
      if (v84 > v83)
      {
        v75 = v84 / v25;
        acLog("    topcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v75));
        if (v62 <= v47)
        {
          return v28;
        }

        return 9;
      }
    }

    else if (v85 > v83)
    {
      v67 = v85 / v25;
      acLog("    bottomcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v67));
      if (v61 <= v47)
      {
        return v28;
      }

      return 10;
    }

    goto LABEL_63;
  }

  if (v28 != 14)
  {
    return v28;
  }

  v52 = v86;
  v51 = v87;
  v53 = v83;
  if (v86 > v87)
  {
    if (v86 > v83)
    {
      v63 = v86 / v25;
      acLog("    leftcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v63));
      if (v52 <= v47)
      {
        return v28;
      }

      return 11;
    }

    goto LABEL_63;
  }

  if (v87 > v83)
  {
    v72 = v87 / v25;
    acLog("    rightcenter=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v72));
    if (v51 <= v47)
    {
      return v28;
    }

    return 12;
  }

LABEL_63:
  v76 = v53 / v25;
  acLog("    center=%.2f\n", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v76));
  if (v53 > v47)
  {
    return 8;
  }

  return v28;
}

- (CGRect)computeClippingWithinSize:(CGSize)a3 forImportantRect:(CGRect)a4 andType:(int)a5 restrictRect:(CGRect)a6
{
  height = a3.height;
  width = a3.width;
  v9 = a4.origin.x + a4.size.width * 0.5;
  v10 = a4.origin.y + a4.size.height * 0.5;
  v11 = [(AutoCropper *)self determineBestPositionWithinSize:*&a5 forImportantRect:a3.width restrictRect:a3.height, *&a6.origin.x, *&a6.origin.y, *&a6.size.width, *&a6.size.height];
  acLog("Best is %d\n", v12, v13, v14, v15, v16, v17, v18, v11);
  [(AutoCropper *)self rectWithSize:v11 andPoint:width inPosition:height fromOriginalSize:v9, v10, width, height];

  [AutoCropper scaleRect:"scaleRect:toFitSize:withAnchorPoint:" toFitSize:? withAnchorPoint:?];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)computeClippingWithinSize:(CGSize)a3 forMultipleRects:(id)a4
{
  height = a3.height;
  width = a3.width;
  v44 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v7 = a3.height;
  v41 = 0u;
  v42 = 0u;
  v8 = [a4 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v16 = v8;
    v17 = *v40;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(a4);
        }

        v20 = *(*(&v39 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        [v20 getValue:&v37];
        if (*(&v37 + 1) < v7)
        {
          v7 = *(&v37 + 1);
        }

        if (*(&v37 + 1) + *(&v38 + 1) > v18)
        {
          v18 = *(&v37 + 1) + *(&v38 + 1);
        }
      }

      v16 = [a4 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 0.0;
  }

  if (v18 <= v7)
  {
    v28 = 0.0;
    goto LABEL_24;
  }

  v21 = height / 3.0;
  v22 = height * 0.5;
  v24 = (v7 + v18) * 0.5;
  v25 = vabds_f32(v21, v24);
  v26 = vabds_f32(v22, v24);
  v27 = vabds_f32(v21 + v21, v24);
  v28 = 0.0;
  if (v25 >= v26)
  {
    if (v26 < v27)
    {
LABEL_22:
      v32 = 0.0;
      v33 = width;
      v31 = height;
      goto LABEL_23;
    }

LABEL_21:
    acLog("Want bottom\n", v9, v10, v11, v12, v13, v14, v15, v37);
    v28 = 0.0;
    goto LABEL_22;
  }

  if (v25 >= v27)
  {
    goto LABEL_21;
  }

  v29 = width / height;
  if (v24 <= v21)
  {
    v36 = v24 * 3.0;
    v33 = ((v24 * 3.0) * v29);
    v31 = v36;
    v28 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v30 = (height - v24) * 3.0 * 0.5;
    v31 = v30;
    v32 = height - v30;
    v33 = (v29 * v30);
    v28 = 0.0;
  }

LABEL_23:
  v23 = width * height;
  if (v33 * v31 / v23 >= 0.8)
  {
    height = v31;
    width = v33;
    goto LABEL_26;
  }

LABEL_24:
  v32 = 0.0;
LABEL_26:
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v32;
  result.origin.x = v28;
  return result;
}

- (CGSize)originalImageSize
{
  width = self->originalImageSize.width;
  height = self->originalImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end