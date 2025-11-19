void sub_1264(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:17 zOrder:4000];
    v10 = v6;
    v7 = &v10;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:17 zOrder:6000];
    v11 = v6;
    v7 = &v11;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
  v7[1] = v8;
  v9 = [NSArray arrayWithObjects:v7 count:2];
  [(NTKFace *)v5 setCurationPlacements:v9];
}

void sub_1364(uint64_t a1, void *a2)
{
  v3 = [a2 unityFacesForDevice:*(a1 + 32)];
  if ([v3 count])
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

uint64_t sub_13C8(uint64_t a1, void *a2)
{
  v3 = [a2 face];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_1744(id a1)
{
  v3[0] = &off_10A80;
  v3[1] = &off_10A98;
  v4[0] = @"black-black";
  v4[1] = @"red-black-green";
  v3[2] = &off_10AB0;
  v4[2] = @"red-black-green-gold";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_16C80;
  qword_16C80 = v1;
}

void sub_1FAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v3 CGContext];
  CGContextTranslateCTM(v13, v10 * 0.5, v12 * 0.5);
  CGContextRotateCTM(v13, -0.785398163);
  CGContextTranslateCTM(v13, -(v10 * 0.5), -(v12 * 0.5));
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  CGContextAddEllipseInRect(v13, v29);
  CGContextClip(v13);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [v20 color];
        [v20 height];
        v23 = v22;
        [v21 setFill];
        v30.origin.x = 0.0;
        v30.origin.y = v18;
        v30.size.width = v10;
        v30.size.height = v23;
        CGContextFillRect(v13, v30);
        v18 = v18 + v23;
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }
}

void sub_41E4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 display];
  [v4 _applyComplicationStyleToView:v6 forSlot:v5];
}

void sub_444C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:NTKComplicationSlotDate])
  {
    v6 = [*(a1 + 32) dateComplicationLabelColor];
    v7 = [*(a1 + 40) dateComplicationLabelColor];
LABEL_5:
    v8 = v7;
    v9 = NTKInterpolateBetweenColors();

    goto LABEL_7;
  }

  if ([v13 isEqualToString:NTKComplicationSlotBottom])
  {
    v6 = [*(a1 + 32) bottomComplicationLabelColor];
    v7 = [*(a1 + 40) bottomComplicationLabelColor];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  v10 = [v5 display];
  v11 = [v10 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView];

  if (v11)
  {
    v12 = [v5 display];
    [v12 setAccentColor:v9];
    [v12 setForegroundColor:v9];
  }
}

void sub_4D5C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) defaultLayoutRuleForState:a2];
  [v4 setVerticalLayout:3];
  [v4 setHorizontalLayout:1];
  [*(a1 + 32) setDefaultLayoutRule:v4 forState:a2];
  if (*(a1 + 48) > 0.0)
  {
    [v4 referenceFrame];
    CLKRectCenteredXInRectForDevice();
    [v4 setReferenceFrame:?];
  }
}

void sub_543C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_16CC8);
  if (qword_16CD0)
  {
    v3 = qword_16CD0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_16CD8))
  {
    qword_16CD0 = v6;
    qword_16CD8 = [v6 version];
    sub_5528(v6, v7);
    xmmword_16C90 = v7[0];
    unk_16CA0 = v7[1];
    xmmword_16CB0 = v7[2];
    qword_16CC0 = v8;
  }

  v5 = unk_16CA0;
  *a2 = xmmword_16C90;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_16CB0;
  *(a2 + 48) = qword_16CC0;
  os_unfair_lock_unlock(&unk_16CC8);
}

void sub_5528(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v3 setScale:3 forSizeClass:1.13580247];
  v18[0] = &off_10B58;
  v18[1] = &off_10B70;
  v19[0] = &off_10CE8;
  v19[1] = &off_10CE8;
  v4 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v3 scaledValue:v4 withOverrides:29.0];
  a2[2] = v5;

  v16[0] = &off_10B58;
  v16[1] = &off_10B70;
  v17[0] = &off_10CF8;
  v17[1] = &off_10CF8;
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v3 scaledValue:v6 withOverrides:16.0];
  *a2 = v7;

  v14[0] = &off_10B88;
  v14[1] = &off_10B70;
  v15[0] = &off_10D08;
  v15[1] = &off_10D18;
  v14[2] = &off_10BA0;
  v15[2] = &off_10D18;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v3 constantValue:v8 withOverrides:0.0];
  a2[3] = v9;

  [v3 scaledValue:0 withOverride:13.5 forSizeClass:12.5];
  a2[1] = v10;
  [v3 scaledValue:111.0];
  a2[4] = v11;
  [v3 scaledValue:87.5];
  a2[5] = v12;
  [v3 scaledValue:181.5];
  a2[6] = v13;
}

id NTKRenegadeQuiltPieceBezierPath(void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v19 = a4;
  v20 = a3;
  v21 = a2;
  v22 = a1;
  v23 = +[UIBezierPath bezierPath];
  v24 = NTKRenegadeOrderedKeysForValues(v20);
  v25 = [v24 firstObject];
  v26 = [v20 objectForKey:v25];
  [v25 floatValue];
  v28 = v27;
  [v26 floatValue];
  v30 = NTKRenegadeTangentialPointFromLine(a11, a12, a7, a8, v28, v29);
  v32 = v31;
  [v23 moveToPoint:?];
  NTKRenegadeBezierPathAddValues(v23, v20, a11, a12, a7, a8);

  NTKRenegadeBezierPathAddValues(v23, v21, a7, a8, a5, a6);
  NTKRenegadeBezierPathAddValues(v23, v19, a5, a6, a9, a10);

  NTKRenegadeBezierPathAddValues(v23, v22, a9, a10, a11, a12);
  [v23 addQuadCurveToPoint:v30 controlPoint:{v32, a11, a12}];
  [v23 closePath];

  return v23;
}

id NTKRenegadeOrderedKeysForValues(void *a1)
{
  v1 = [a1 allKeys];
  v2 = [v1 sortedArrayUsingComparator:&stru_10638];

  return v2;
}

double NTKRenegadeTangentialPointFromLine(double a1, double a2, double a3, double a4, double a5, double a6)
{
  CLKInterpolateBetweenPoints();
  v12 = v11;
  v13 = -1.0 / ((a4 - a2) / (a3 - a1));
  *&v11 = v13;
  v14 = atanf(*&v11);
  if (v13 <= 0.0)
  {
    v14 = -v14;
  }

  return v12 - a6 * __sincosf_stret(v14).__cosval;
}

double NTKRenegadeBezierPathAddValues(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = NTKRenegadeOrderedKeysForValues(v12);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3010000000;
  v43 = 0;
  v44 = 0;
  v42 = &unk_E625;
  if (CLKPointEqualsPoint())
  {
    v14 = 0;
    v15 = v40;
    v40[4] = a3;
    v15[5] = a4;
  }

  else
  {
    v16 = [v13 firstObject];
    v17 = [v12 objectForKey:v16];
    [v16 floatValue];
    v19 = v18;
    [v17 floatValue];
    v21 = NTKRenegadeTangentialPointFromLine(a3, a4, a5, a6, v19, v20);
    v22 = v40;
    v40[4] = v21;
    *(v22 + 5) = v23;
    [v11 addQuadCurveToPoint:? controlPoint:?];

    v14 = 1;
  }

  if ([v13 count])
  {
    v24 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v14, [v13 count] - v14);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_62D0;
    v27[3] = &unk_10660;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v28 = v12;
    v30 = v38;
    v31 = v37;
    v29 = v11;
    v32 = &v39;
    [v13 enumerateObjectsAtIndexes:v24 options:0 usingBlock:v27];

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v38, 8);
  }

  v25 = v40[4];
  _Block_object_dispose(&v39, 8);

  return v25;
}

void sub_62D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v21 = [v3 objectForKey:v4];
  [v4 floatValue];
  v6 = v5;

  v7 = v6;
  [v21 floatValue];
  v9 = v8;
  v10 = NTKRenegadeTangentialPointFromLine(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v7, v8);
  v12 = v11;
  v13 = (*(*(*(a1 + 48) + 8) + 24) + v7) * 0.5;
  v14 = NTKRenegadeTangentialPointFromLine(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v13, *(*(*(a1 + 56) + 8) + 24));
  v16 = v15;
  v17 = NTKRenegadeTangentialPointFromLine(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v13, v9);
  v19 = v18;
  [*(a1 + 40) currentPoint];
  if ((CLKPointEqualsPoint() & 1) == 0)
  {
    [*(a1 + 40) addCurveToPoint:v10 controlPoint1:v12 controlPoint2:{v14, v16, v17, v19}];
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
  *(*(*(a1 + 56) + 8) + 24) = v9;
  v20 = *(*(a1 + 64) + 8);
  *(v20 + 32) = v10;
  *(v20 + 40) = v12;
}

double NTKRenegadeLengthBetweenPoints(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  v5 = a2 - a4;
  return sqrtf((v4 * v4) + (v5 * v5));
}

id NTKRenegadeBezierPathFromSVGDataAsset(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [a1 data];

  CGSVGDocumentCreateFromData();
  CGSVGDocumentGetCanvasSize();
  v10 = v9;
  CGSVGDocumentGetRootNode();
  CGSVGNodeGetChildAtIndex();
  CGSVGShapeNodeGetPath();
  CGPath = CGSVGPathCreateCGPath();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  Width = CGRectGetWidth(v24);
  v13 = *&CGAffineTransformIdentity.c;
  *&transform.a = *&CGAffineTransformIdentity.a;
  *&transform.c = v13;
  *&transform.tx = *&CGAffineTransformIdentity.tx;
  v14 = Width / v10;
  *&v21.a = *&transform.a;
  *&v21.c = v13;
  *&v21.tx = *&transform.tx;
  CGAffineTransformScale(&transform, &v21, v14, v14);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  v15 = CGRectGetMinX(v25) / v14;
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MinY = CGRectGetMinY(v26);
  v20 = transform;
  CGAffineTransformTranslate(&v21, &v20, v15, MinY / v14);
  transform = v21;
  v17 = CGPathCreateCopyByTransformingPath(CGPath, &transform);
  v18 = [UIBezierPath bezierPathWithCGPath:v17];
  CGSVGDocumentRelease();
  CGPathRelease(CGPath);
  CGPathRelease(v17);

  return v18;
}

CGFloat NTKRenegadeHorizontallyCenteredFrameWithEdgeInsets(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  v11 = (a5 + a7) * (CGRectGetWidth(*&a1) * 0.5);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  return a1 + v11 / CGRectGetHeight(v13);
}

void sub_7B30(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) layer];
  [v2 setFrozen:1];

  v3 = [*(*(a1 + 32) + 64) layer];
  [v3 setFrozen:1];
}

double sub_7EF4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16D00);
  if (qword_16D08)
  {
    v3 = qword_16D08 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16D10))
  {
    v5 = qword_16CE0;
  }

  else
  {
    qword_16D08 = v2;
    qword_16D10 = [v2 version];
    v5 = sub_7FF4(qword_16D10, v2);
    qword_16CE0 = v5;
    qword_16CE8 = v6;
    qword_16CF0 = v7;
    qword_16CF8 = v8;
  }

  os_unfair_lock_unlock(&unk_16D00);

  return *&v5;
}

double sub_7FF4(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 setScale:3 forSizeClass:1.13580247];
  [v2 scaledValue:111.0];
  v4 = v3;
  v13[0] = &off_10BB8;
  v13[1] = &off_10BD0;
  v14[0] = &off_10D28;
  v14[1] = &off_10D28;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v2 scaledValue:v5 withOverrides:83.0];

  v11[0] = &off_10BE8;
  v11[1] = &off_10C00;
  v12[0] = &off_10D38;
  v12[1] = &off_10D48;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v2 scaledValue:v6 withOverrides:114.0];

  v9[0] = &off_10BE8;
  v9[1] = &off_10C00;
  v10[0] = &off_10D58;
  v10[1] = &off_10D68;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 scaledValue:v7 withOverrides:114.0];

  return v4;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}