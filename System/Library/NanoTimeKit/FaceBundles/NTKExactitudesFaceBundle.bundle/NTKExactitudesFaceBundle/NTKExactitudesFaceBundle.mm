void sub_2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2FB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2FC8(uint64_t a1, id a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a2;
  v7 = a3;
  [a2 UTF8String];
  v8 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  [v5 setObject:v7 forKey:v8];
}

void sub_4034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bounds];

  v5 = [v3 CGContext];
  CLKRectGetCenter();
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 40) * 0.5;
  v11 = [*(a1 + 32) colorA];
  v12 = [*(a1 + 32) colorB];
  v18[1] = v12;
  v13 = [*(a1 + 32) colorC];
  v18[2] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:3];

  v15 = 0;
  v16 = 3.66519143;
  do
  {
    v17 = [v14 objectAtIndexedSubscript:v15];
    [v17 setFill];
    CGContextMoveToPoint(v5, v7, v9);
    CGContextAddArc(v5, v7, v9, v10, v16, v16 + 2.0943951, 0);
    CGContextClosePath(v5);
    CGContextFillPath(v5);

    ++v15;
    v16 = v16 + 2.0943951;
  }

  while (v15 != 3);
}

id sub_4248(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_38198);
  if (qword_381A0)
  {
    v3 = qword_381A0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_381A8))
  {
    qword_381A0 = v2;
    qword_381A8 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_38190;
    qword_38190 = v5;
  }

  v7 = qword_38190;
  os_unfair_lock_unlock(&unk_38198);

  return v7;
}

void sub_43C4(id a1)
{
  v3[0] = &off_32038;
  v3[1] = &off_32050;
  v4[0] = @"backgroundOn";
  v4[1] = @"backgroundOff";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_381B0;
  qword_381B0 = v1;
}

void sub_46BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 3)
  {
    v10 = *(a1 + 48);
    v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v6 = v11;
    if (v10 == 1)
    {
      v15[0] = v11;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v15[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:1 zOrder:4000];
      v15[2] = v8;
      v9 = v15;
    }

    else
    {
      v14[0] = v11;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v14[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:1 zOrder:4000];
      v14[2] = v8;
      v9 = v14;
    }
  }

  else if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000, v6];
    v13[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:1 zOrder:4000];
    v13[2] = v8;
    v9 = v13;
  }

  else if (*(a1 + 48) == 1)
  {
    v6 = +[NTKFaceCurationPlacementValue placementWithWatchOS12Group:zOrder:](NTKFaceCurationPlacementValue, "placementWithWatchOS12Group:zOrder:", 1, [*(a1 + 32) _newFacesGroupZOrderForDevice:*(a1 + 40)]);
    v17[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v17[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v17[2] = v8;
    v9 = v17;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v16[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v16[1] = v7;
    v8 = +[NTKFaceCurationPlacementValue placementWithWatchOS12Group:zOrder:](NTKFaceCurationPlacementValue, "placementWithWatchOS12Group:zOrder:", 1, [*(a1 + 32) _newFacesGroupZOrderForDevice:*(a1 + 40)]);
    v16[2] = v8;
    v9 = v16;
  }

  v12 = [NSArray arrayWithObjects:v9 count:3];
  [v5 setCurationPlacements:v12];
}

id sub_4D1C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_381C8);
  if (qword_381D0)
  {
    v3 = qword_381D0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_381D8))
  {
    qword_381D0 = v2;
    qword_381D8 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_381C0;
    qword_381C0 = v5;
  }

  v7 = qword_381C0;
  os_unfair_lock_unlock(&unk_381C8);

  return v7;
}

void sub_4EA4(id a1)
{
  v3[0] = &off_32110;
  v3[1] = &off_32128;
  v4[0] = @"closed";
  v4[1] = @"expandedI";
  v3[2] = &off_32140;
  v4[2] = @"expandedII";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_381E0;
  qword_381E0 = v1;
}

void sub_5620(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5710;
  v5[3] = &unk_30A80;
  v5[4] = *(a1 + 32);
  v5[5] = a3;
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  v8 = a2[2];
  v4 = objc_retainBlock(v5);
  (v4[2])(v4, NTKComplicationSlotTopLeft);
  (v4[2])(v4, NTKComplicationSlotTopRight);
  (v4[2])(v4, NTKComplicationSlotBottomLeft);
  (v4[2])(v4, NTKComplicationSlotBottomRight);
}

void sub_5710(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v5;
  v6[2] = *(a1 + 80);
  [v4 setContentTransform:v6];
}

uint64_t sub_5784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  return v3(v2, v6, a2);
}

void sub_5CDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  [v4 setAlpha:*(a1 + 32)];
}

id sub_5D48(uint64_t a1)
{
  result = [*(a1 + 32) enumerateComplicationDisplayWrappersWithBlock:*(a1 + 40)];
  *(*(a1 + 32) + 120) = 1;
  return result;
}

void sub_5F24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  [v4 setAlpha:*(a1 + 32)];
}

void sub_605C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 display];
  [v4 setHidden:0];

  [v5 setAlpha:*(a1 + 32)];
}

void sub_78DC(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v2 = [v5 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 display];
    [v4 transitionToMonochromeWithFraction:1.0];
  }
}

void sub_83A4(id a1)
{
  qword_381F0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_83E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

double sub_85EC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_38208);
  if (qword_38210)
  {
    v3 = qword_38210 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_38218))
  {
    v5 = qword_38200;
  }

  else
  {
    qword_38210 = v2;
    qword_38218 = [v2 version];
    v5 = sub_869C(qword_38218, v2);
    qword_38200 = v5;
  }

  os_unfair_lock_unlock(&unk_38208);

  return *&v5;
}

double sub_869C(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:7];
  [v2 scaledValue:169.0];
  v4 = v3;

  return v4;
}

void sub_86F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_8710(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_8740()
{
  v1 = &v0[OBJC_IVAR___NTKExactitudesDialView_dialConfiguration];
  swift_beginAccess();
  v2 = v1[1] + v1[1];
  v3 = sub_CDD0();
  v4 = *&v0[OBJC_IVAR___NTKExactitudesDialView_rootLayer];
  [v4 setFrame:v3];
  v5 = [v0 layer];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  MidX = CGRectGetMidX(v32);
  v15 = [v0 layer];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v33.origin.x = v17;
  v33.origin.y = v19;
  v33.size.width = v21;
  v33.size.height = v23;
  [v4 setPosition:{MidX, CGRectGetMidY(v33)}];
  [v4 setContentsScale:v1[36]];
  v24 = [v0 layer];
  [v24 addSublayer:v4];

  sub_896C();
  v25 = *&v0[OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer];
  [v4 bounds];
  [v25 setFrame:?];
  [v4 addSublayer:v25];
  sub_8C40();
  sub_8D68(0);
  v26 = *(v1 + 16);
  v30[6] = *(v1 + 15);
  v30[7] = v26;
  v31 = *(v1 + 34);
  v27 = *(v1 + 12);
  v30[2] = *(v1 + 11);
  v30[3] = v27;
  v28 = *(v1 + 14);
  v30[4] = *(v1 + 13);
  v30[5] = v28;
  v29 = *(v1 + 10);
  v30[0] = *(v1 + 9);
  v30[1] = v29;
  if (sub_CDE4(v30) != 1)
  {
    sub_928C();
  }

  CALayer.disableLayerActionsRecursively()();
}

void sub_896C()
{
  v1 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_ringLayer);
  v2 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_rootLayer);
  [v2 bounds];
  [v1 setFrame:?];
  v3 = v0 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  [v1 setContentsScale:*(v3 + 288)];
  sub_E120(0);
  v8 = [objc_opt_self() bezierPathWithOvalInRect:{v4, v5, v6, v7}];
  v9 = [v8 CGPath];

  [v1 setPath:v9];
  v10 = objc_opt_self();
  v11 = [v10 clearColor];
  v12 = OBJC_IVAR___NTKExactitudesDialView_colors;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  v15 = *(v0 + v14);
  v16 = CLKUIInterpolateBetweenColors();

  if (v16)
  {
    v17 = [v16 CGColor];

    [v1 setStrokeColor:v17];
    [v1 setLineWidth:*(v3 + 280)];
    v18 = [v10 clearColor];
    v19 = [v18 CGColor];

    [v1 setBackgroundColor:v19];
    v20 = [v10 clearColor];
    v21 = [v20 CGColor];

    [v1 setFillColor:v21];
    [v2 addSublayer:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_8C40()
{
  v1 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >= 3)
  {
    goto LABEL_11;
  }

  v3 = qword_253D0[v2];
  v4 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_ticksSliceLayers);
  if ((v4 & 0xC000000000000001) == 0 && v3 > *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
LABEL_11:
    sub_2186C();
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = 0.0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_2177C();
    }

    else
    {
      v7 = *(v4 + 8 * v5 + 32);
    }

    v8 = v7;
    ++v5;
    sub_E2C4(v9);
    sub_99D8(v8, v9, v6);

    v6 = v6 + 1.04719755;
  }

  while (v3 != v5);
}

void sub_8D68(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  if (*v3 == 2)
  {
    sub_B7C0();
    return;
  }

  v4 = *(v3 + 88);
  v5 = *(v3 + 120);
  v61 = *(v3 + 104);
  v62 = v5;
  v63 = *(v3 + 136);
  v6 = *(v3 + 24);
  v7 = *(v3 + 56);
  v57 = *(v3 + 40);
  v58 = v7;
  v59 = *(v3 + 72);
  v60 = v4;
  v55 = *(v3 + 8);
  v56 = v6;
  v8 = *(v3 + 256);
  *&v64.m41 = *(v3 + 240);
  *&v64.m43 = v8;
  v65 = *(v3 + 272);
  v9 = *(v3 + 192);
  *&v64.m21 = *(v3 + 176);
  *&v64.m23 = v9;
  v10 = *(v3 + 224);
  *&v64.m31 = *(v3 + 208);
  *&v64.m33 = v10;
  v11 = *(v3 + 160);
  *&v64.m11 = *(v3 + 144);
  *&v64.m13 = v11;
  if (a1 == 1)
  {
    v12 = *(v3 + 256);
    *&v45.m41 = *(v3 + 240);
    *&v45.m43 = v12;
    v46 = *(v3 + 272);
    v13 = *(v3 + 192);
    *&v45.m21 = *(v3 + 176);
    *&v45.m23 = v13;
    v14 = *(v3 + 224);
    *&v45.m31 = *(v3 + 208);
    *&v45.m33 = v14;
    v15 = *(v3 + 160);
    *&v45.m11 = *(v3 + 144);
    *&v45.m13 = v15;
    if (sub_CDE4(&v45) != 1)
    {
      v16 = *(v1 + OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer);
      v43 = v64;
      v44 = v65;
      sub_CE24(&v43, v42);
      v52 = *&v45.m41;
      v53 = *&v45.m43;
      v54 = v46;
      v48 = *&v45.m21;
      v49 = *&v45.m23;
      v50 = *&v45.m31;
      v51 = *&v45.m33;
      v18 = *&v45.m11;
      v17 = *&v45.m13;
      goto LABEL_8;
    }

    __break(1u);
LABEL_27:
    *&v45.m11 = a1;
    sub_2186C();
    __break(1u);
    return;
  }

  if (a1)
  {
    goto LABEL_27;
  }

  v16 = *(v1 + OBJC_IVAR___NTKExactitudesDialView_numeralsLayer);
  sub_CE24(&v55, &v45);
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v48 = v57;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v18 = v55;
  v17 = v56;
LABEL_8:
  v47[0] = v18;
  v47[1] = v17;
  v19 = v54;
  if (!v54)
  {
    v23 = v16;
    sub_CE80(v47);
    if (qword_37A20 == -1)
    {
LABEL_21:
      v38 = sub_2161C();
      sub_CD94(v38, qword_38CE8);
      v39 = sub_215FC();
      v40 = sub_2173C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_0, v39, v40, "setupNumeralsLayer: no numerals found in dialMetrics", v41, 2u);
      }

      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_21;
  }

  v20 = *(v1 + OBJC_IVAR___NTKExactitudesDialView_rootLayer);
  v21 = v16;
  sub_CE24(v47, &v45);
  [v20 addSublayer:v21];
  [v20 bounds];
  MidX = CGRectGetMidX(v66);
  [v20 bounds];
  [v21 setPosition:{MidX, CGRectGetMidY(v67)}];
  [v21 setContentsScale:*(v3 + 288)];
  [v21 setMasksToBounds:0];
  v23 = *(v19 + 16);
  sub_CE80(v47);
  if (!v23)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (*(v19 + 16))
  {
    v24 = *v47 + *&v49 * -1.27;
    v25 = 6.28318531 / v23;
    v26 = (v19 + 40);
    v27 = v23 - 1;
    v28 = 1;
    v29 = v25;
    while (1)
    {
      v30 = v29 + -1.57079633;
      v31 = __sincos_stret(v29 + -1.57079633);
      v32 = *(v26 - 1);
      v33 = *v26;

      v34 = sub_BAA4();

      [v34 setPosition:{v24 * v31.__cosval, v24 * v31.__sinval}];
      v35 = 1.0;
      if (v30 > 0.0 && v30 < 3.14159265)
      {
        v36 = -1.57079633;
      }

      else
      {
        v35 = 0.0;
        v36 = 1.57079633;
      }

      [v34 setAnchorPoint:{0.5, v35}];
      CATransform3DMakeRotation(&v45, v30 + v36, 0.0, 0.0, 1.0);
      v43 = v45;
      [v34 setTransform:&v43];
      [v21 addSublayer:v34];

      if (!v27)
      {
        break;
      }

      v29 = v25 * (v28 + 1);
      v26 += 2;
      --v27;
      if (v28++ >= *(v19 + 16))
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }

  sub_CE80(v47);
}

void sub_928C()
{
  v1 = v0 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 256);
  v46[6] = *(v1 + 240);
  v46[7] = v2;
  v47 = *(v1 + 272);
  v3 = *(v1 + 192);
  v46[2] = *(v1 + 176);
  v46[3] = v3;
  v4 = *(v1 + 224);
  v46[4] = *(v1 + 208);
  v46[5] = v4;
  v5 = *(v1 + 160);
  v46[0] = *(v1 + 144);
  v46[1] = v5;
  if (sub_CDE4(v46) == 1)
  {
    if (qword_37A20 == -1)
    {
LABEL_3:
      v6 = sub_2161C();
      sub_CD94(v6, qword_38CE8);
      v7 = sub_215FC();
      v8 = sub_2171C();
      if (!os_log_type_enabled(v7, v8))
      {
LABEL_40:

        return;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "setUpHiddenExpandedLayers called but expandedDialMetrics is nil";
LABEL_39:
      _os_log_impl(&dword_0, v7, v8, v10, v9, 2u);

      goto LABEL_40;
    }

LABEL_46:
    swift_once();
    goto LABEL_3;
  }

  sub_8D68(1);
  sub_9780();
  v11 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
  swift_beginAccess();
  if (*(v0 + v11) != 0.0)
  {
    if (qword_37A20 != -1)
    {
      swift_once();
    }

    v33 = sub_2161C();
    sub_CD94(v33, qword_38CE8);
    v7 = sub_215FC();
    v8 = sub_2173C();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_40;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Dial initialized in expanded or transitioning state, expanded layers not hidden";
    goto LABEL_39;
  }

  [*(v0 + OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer) setHidden:1];
  v12 = [*(v0 + OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer) sublayers];
  if (v12)
  {
    v13 = v12;
    sub_CED4(0, &qword_37AC8, CALayer_ptr);
    v14 = sub_216BC();

    if (!(v14 >> 62))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_8:
      v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if (v15)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }
  }

  v15 = sub_217FC();
  if (v15)
  {
LABEL_9:
    v16 = 0;
    v17 = v14 & 0xC000000000000001;
    v34 = v14 & 0xFFFFFFFFFFFFFF8;
    v18 = &OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    while (1)
    {
      if (v17)
      {
        v19 = sub_2177C();
      }

      else
      {
        if (v16 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v19 = *(v14 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      type metadata accessor for ExactitudesDialSlice();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = *v18;
        swift_beginAccess();
        memmove(__dst, (v23 + v24), 0x172uLL);
        if (sub_CE08(__dst) == 1 || !v45)
        {
          v26 = v14;
          v27 = v15;
          v28 = v17;
          v29 = v18;
          v30 = *(v23 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTicksLayer);
          v31 = v20;
          v32 = v30;
          v18 = v29;
          v17 = v28;
          v15 = v27;
          v14 = v26;
          v21 = v16 + 1;
          [v32 setHidden:1];
        }

        else
        {
          v25 = v20;
        }

        memmove(v41, (v23 + v24), 0x172uLL);
        if (sub_CE08(v41) == 1 || (v43 & 1) != 0 || !v42)
        {
          [*(v23 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTicksLayer) setHidden:1];
        }

        memmove(v38, (v23 + v24), 0x172uLL);
        if (sub_CE08(v38) == 1 || (v40 & 1) != 0 || !v39)
        {
          [*(v23 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTicksLayer) setHidden:1];
        }

        memmove(v35, (v23 + v24), 0x172uLL);
        if (sub_CE08(v35) == 1 || (v37 & 1) != 0 || !v36)
        {
          [*(v23 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTicksLayer) setHidden:1];
        }
      }

      ++v16;
      if (v21 == v15)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_43:
}

id sub_9780()
{
  result = [*(v0 + OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer) sublayers];
  if (result)
  {
    v2 = result;
    sub_CED4(0, &qword_37AC8, CALayer_ptr);
    v3 = sub_216BC();

    if (v3 >> 62)
    {
      goto LABEL_34;
    }

    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
    v5 = v0 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
    swift_beginAccess();
    if (v4)
    {
      v6 = 0;
      v0 = v3 & 0xC000000000000001;
      do
      {
        if (v0)
        {
          v7 = sub_2177C();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_31;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v4 = sub_217FC();
          goto LABEL_4;
        }

        v10 = *(v5 + 256);
        v29[6] = *(v5 + 240);
        v29[7] = v10;
        v30 = *(v5 + 272);
        v11 = *(v5 + 192);
        v29[2] = *(v5 + 176);
        v29[3] = v11;
        v12 = *(v5 + 224);
        v29[4] = *(v5 + 208);
        v29[5] = v12;
        v13 = *(v5 + 160);
        v29[0] = *(v5 + 144);
        v29[1] = v13;
        if (sub_CDE4(v29) != 1 && (v14 = *(v5 + 272)) != 0 && (v15 = *(v5 + 136)) != 0 && (v16 = *(v14 + 16), v17 = *(v15 + 16), v16 >= v17))
        {
          if (!v17)
          {
            goto LABEL_32;
          }

          v18 = v16 / v17;
        }

        else
        {
          v18 = 1;
        }

        v19 = *(v5 + 256);
        v27[6] = *(v5 + 240);
        v27[7] = v19;
        v28 = *(v5 + 272);
        v20 = *(v5 + 192);
        v27[2] = *(v5 + 176);
        v27[3] = v20;
        v21 = *(v5 + 224);
        v27[4] = *(v5 + 208);
        v27[5] = v21;
        v22 = *(v5 + 160);
        v27[0] = *(v5 + 144);
        v27[1] = v22;
        if (sub_CDE4(v27) == 1)
        {
          goto LABEL_17;
        }

        v23 = *(v5 + 272);
        if (!v23)
        {
          goto LABEL_23;
        }

        v24 = *(v5 + 136);
        if (!v24 || (v25 = *(v23 + 16), v26 = *(v24 + 16), v25 < v26))
        {
LABEL_17:
          v23 = 0;
        }

        else
        {
          if (!v26)
          {
            goto LABEL_33;
          }

          v23 = v25 / v26 - 1;
        }

LABEL_23:
        if (v6 % v18 == v23)
        {
          [v8 setHidden:1];
        }

        ++v6;
      }

      while (v9 != v4);
    }
  }

  return result;
}

id sub_99D8(char *a1, const void *a2, CGFloat a3)
{
  v4 = v3;
  memcpy(__dst, a2, 0x171uLL);
  sub_CF90(__dst);
  v7 = &a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration];
  swift_beginAccess();
  memcpy(v7, __dst, 0x172uLL);
  memcpy(v46, __dst, 0x172uLL);
  if (sub_CE08(v46) == 1)
  {
LABEL_4:
    v10 = (v4 + OBJC_IVAR___NTKExactitudesDialView_colors);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
    swift_beginAccess();
    v14 = *(v4 + v13);
    result = CLKUIInterpolateBetweenColors();
    if (result)
    {
      v15 = result;
      v16 = sub_E86C();
      v17 = *v10;
      v18 = v10[1];
      v19 = *(v4 + v13);
      result = CLKUIInterpolateBetweenColors();
      if (result)
      {
        v20 = result;
        v21 = sub_11FD8(result);

        v22 = *v10;
        v23 = v10[1];
        v24 = *(v4 + v13);
        result = CLKUIInterpolateBetweenColors();
        if (result)
        {
          v25 = result;
          v26 = sub_11FD8(result);

          v27 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor];
          *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor] = v15;
          v28 = v15;

          v29 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor];
          *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor] = v16;
          v30 = v16;

          v31 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor];
          *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor] = v21;
          v32 = v21;

          v33 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor];
          *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor] = v26;
          v34 = v26;

          v35 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickLayer];
          v36 = [v28 CGColor];
          [v35 setBackgroundColor:v36];

          v37 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickLayer];
          v38 = [v30 CGColor];
          [v37 setBackgroundColor:v38];

          v39 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickLayer];
          v40 = [v32 CGColor];
          [v39 setBackgroundColor:v40];

          v41 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickLayer];
          v42 = [v34 CGColor];
          [v41 setBackgroundColor:v42];

          v43 = *(v4 + OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer);
          [v43 bounds];
          [a1 setFrame:?];
          CATransform3DMakeRotation(v44, a3, 0.0, 0.0, 1.0);
          [a1 setTransform:v44];
          return [v43 addSublayer:a1];
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *&a1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_rootLayer];
  memcpy(v44, v7, sizeof(v44));
  result = sub_CE08(v44);
  if (result != 1)
  {
    [v8 setFrame:{0.0, 0.0, v7[4], v7[5]}];
    sub_197E4(0);
    sub_197E4(1);
    sub_197E4(2);
    sub_197E4(3);
    CALayer.disableLayerActionsRecursively()();
    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_9DE8()
{
  v1 = *(*(sub_CA10(&qword_37C80, &qword_251F0) - 8) + 64);
  v2 = (__chkstk_darwin)();
  v154 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v155 = &v151 - v5;
  v6 = __chkstk_darwin(v4);
  v153 = &v151 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v151 - v9;
  v11 = __chkstk_darwin(v8);
  v156 = &v151 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v151 - v14;
  v16 = __chkstk_darwin(v13);
  v160 = &v151 - v17;
  v18 = __chkstk_darwin(v16);
  v158 = &v151 - v19;
  v20 = __chkstk_darwin(v18);
  v162 = &v151 - v21;
  v22 = __chkstk_darwin(v20);
  v159 = &v151 - v23;
  v24 = __chkstk_darwin(v22);
  v163 = &v151 - v25;
  v26 = __chkstk_darwin(v24);
  v161 = &v151 - v27;
  v28 = __chkstk_darwin(v26);
  v167 = &v151 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v151 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v151 - v34;
  __chkstk_darwin(v33);
  v37 = &v151 - v36;
  v38 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
  swift_beginAccess();
  sub_CA58(&v0[v38], v35);
  v39 = sub_215AC();
  v40 = *(v39 - 8);
  v171 = *(v40 + 48);
  v172 = v40 + 48;
  if (v171(v35, 1, v39) == 1)
  {
    v41 = [objc_opt_self() faceDate];
    if (!v41)
    {
      goto LABEL_141;
    }

    v43 = v41;
    sub_2159C();

    if (v171(v35, 1, v39) != 1)
    {
      sub_CF1C(v35, &qword_37C80, &qword_251F0);
    }
  }

  else
  {
    (*(v40 + 32))(v37, v35, v39);
  }

  v157 = v15;
  v152 = v10;
  v168 = v40;
  v169 = v39;
  v44 = *(v40 + 56);
  v165 = v40 + 56;
  v166 = v38;
  v164 = v44;
  v44(v37, 0, 1, v39);
  sub_10120(v37);
  v46 = v45;
  sub_CF1C(v37, &qword_37C80, &qword_251F0);
  v47 = sub_CD1C(v46);
  v48 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v170 = v48;
  v42 = *&v0[v48];
  if (v42 >= 3)
  {
    goto LABEL_149;
  }

  v49 = qword_253D0[v42];
  v173 = &_swiftEmptyArrayStorage;
  sub_CADC(0, v49, 0);
  v50 = v173;
  v51 = sub_216EC();
  do
  {
    sub_216DC();
    sub_216CC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v173 = v50;
    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    if (v53 >= v52 >> 1)
    {
      sub_CADC((v52 > 1), v53 + 1, 1);
      v50 = v173;
    }

    *(v50 + 2) = v53 + 1;
    v50[v53 + 32] = 0;
    --v49;
  }

  while (v49);
  if (v47 < 0.523598776 || v47 >= 1.57079633)
  {
    v54 = v0;
    if (v47 >= 1.57079633 && v47 < 2.61799388)
    {
      v57 = v168;
      if (qword_37A28 != -1)
      {
        goto LABEL_127;
      }

      goto LABEL_24;
    }

    if (v47 >= 2.61799388 && v47 < 3.66519143)
    {
      if (qword_37A28 != -1)
      {
        goto LABEL_130;
      }

      goto LABEL_32;
    }

    v51 = v168;
    if (v47 >= 3.66519143 && v47 < 4.71238898)
    {
      if (qword_37A28 != -1)
      {
        goto LABEL_133;
      }

      goto LABEL_40;
    }

    if (v47 >= -1.57079633 && v47 < -0.523598776)
    {
      if (qword_37A28 != -1)
      {
        goto LABEL_136;
      }

      goto LABEL_54;
    }

    if (v47 < -0.523598776 || v47 >= 0.523598776)
    {
      if (qword_37A28 != -1)
      {
LABEL_139:
        swift_once();
      }

      v123 = sub_2161C();
      sub_CD94(v123, qword_38D00);
      v124 = v54;
      v125 = sub_215FC();
      v126 = sub_2173C();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 134217984;
        v128 = v154;
        sub_CA58(&v54[v166], v154);
        v129 = v169;
        if (v171(v128, 1, v169) == 1)
        {
          v130 = [objc_opt_self() faceDate];
          v42 = &v174;
          v131 = v155;
          if (!v130)
          {
LABEL_148:
            __break(1u);
LABEL_149:
            v173 = v42;
LABEL_151:
            result = sub_2186C();
            __break(1u);
            return result;
          }

          v132 = v130;
          sub_2159C();

          v129 = v169;
          if (v171(v128, 1, v169) != 1)
          {
            sub_CF1C(v128, &qword_37C80, &qword_251F0);
          }
        }

        else
        {
          v131 = v155;
          (*(v51 + 4))(v155, v128, v129);
        }

        v164(v131, 0, 1, v129);
        sub_10120(v131);
        v140 = v139;
        sub_CF1C(v131, &qword_37C80, &qword_251F0);
        *(v127 + 4) = v140;
        _os_log_impl(&dword_0, v125, v126, "Angle %f did not match any slice range, show all slices", v127, 0xCu);
      }

      sub_B43C();
    }

    if (qword_37A28 != -1)
    {
      swift_once();
    }

    v111 = sub_2161C();
    sub_CD94(v111, qword_38D00);
    v112 = v0;
    v113 = sub_215FC();
    v114 = sub_2173C();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 134217984;
      v116 = v153;
      sub_CA58(&v54[v166], v153);
      v117 = v169;
      if (v171(v116, 1, v169) == 1)
      {
        v118 = [objc_opt_self() faceDate];
        if (!v118)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v119 = v118;
        v120 = v152;
        sub_2159C();

        v117 = v169;
        if (v171(v116, 1, v169) != 1)
        {
          sub_CF1C(v116, &qword_37C80, &qword_251F0);
        }
      }

      else
      {
        v142 = v116;
        v143 = v152;
        (*(v51 + 4))(v152, v142, v117);
        v120 = v143;
      }

      v164(v120, 0, 1, v117);
      sub_10120(v120);
      v145 = v144;
      sub_CF1C(v120, &qword_37C80, &qword_251F0);
      *(v115 + 4) = v145;
      _os_log_impl(&dword_0, v113, v114, "Slices 6 & 1 shown %f", v115, 0xCu);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_CAC8(v50);
    }

    v42 = *(v50 + 2);
    if (v42 >= 6)
    {
      v50[37] = 1;
      v50[32] = 1;
      goto LABEL_112;
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v54 = v0;
  if (qword_37A28 != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v55 = sub_2161C();
    sub_CD94(v55, qword_38D00);
    v51 = v54;
    v56 = sub_215FC();
    v57 = sub_2173C();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v169;
    v60 = v167;
    if (v58)
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      sub_CA58(&v54[v166], v60);
      if (v171(v60, 1, v59) == 1)
      {
        v62 = [objc_opt_self() faceDate];
        if (!v62)
        {
          goto LABEL_142;
        }

        v63 = v62;
        sub_2159C();

        if (v171(v60, 1, v59) != 1)
        {
          sub_CF1C(v60, &qword_37C80, &qword_251F0);
        }
      }

      else
      {
        (*(v168 + 32))(v32, v60, v59);
      }

      v164(v32, 0, 1, v59);
      sub_10120(v32);
      v97 = v96;
      sub_CF1C(v32, &qword_37C80, &qword_251F0);
      *(v61 + 4) = v97;
      _os_log_impl(&dword_0, v56, v57, "Slices 1 & 2 shown for %f", v61, 0xCu);
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v42 = *(v50 + 2);
      if (!v42)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v50 = sub_CAC8(v50);
      v42 = *(v50 + 2);
      if (!v42)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    v50[32] = 1;
    if (v42 != (&dword_0 + 1))
    {
      v50[33] = 1;
      goto LABEL_112;
    }

LABEL_126:
    __break(1u);
LABEL_127:
    swift_once();
LABEL_24:
    v64 = sub_2161C();
    sub_CD94(v64, qword_38D00);
    v65 = v54;
    v66 = sub_215FC();
    v67 = sub_2173C();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v163;
    if (v68)
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      sub_CA58(&v54[v166], v69);
      v70 = v169;
      if (v171(v69, 1, v169) == 1)
      {
        v71 = [objc_opt_self() faceDate];
        v72 = v161;
        if (!v71)
        {
          goto LABEL_143;
        }

        v73 = v71;
        sub_2159C();

        v70 = v169;
        if (v171(v69, 1, v169) != 1)
        {
          sub_CF1C(v69, &qword_37C80, &qword_251F0);
        }
      }

      else
      {
        v72 = v161;
        (*(v57 + 32))(v161, v69, v70);
      }

      v164(v72, 0, 1, v70);
      sub_10120(v72);
      v110 = v109;
      sub_CF1C(v72, &qword_37C80, &qword_251F0);
      *(v51 + 4) = v110;
      _os_log_impl(&dword_0, v66, v67, "Slices 2 & 3 shown %f", v51, 0xCu);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_CAC8(v50);
    }

    v42 = *(v50 + 2);
    if (v42 < 2)
    {
      __break(1u);
    }

    else
    {
      v50[33] = 1;
      if (v42 != (&dword_0 + 2))
      {
        v50[34] = 1;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_130:
    swift_once();
LABEL_32:
    v74 = sub_2161C();
    sub_CD94(v74, qword_38D00);
    v75 = v54;
    v76 = sub_215FC();
    v77 = sub_2173C();

    v78 = os_log_type_enabled(v76, v77);
    v79 = v162;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 134217984;
      sub_CA58(&v54[v166], v79);
      v81 = v169;
      if (v171(v79, 1, v169) == 1)
      {
        v82 = [objc_opt_self() faceDate];
        v42 = &v176;
        v83 = v159;
        if (!v82)
        {
          goto LABEL_144;
        }

        v84 = v82;
        sub_2159C();

        v81 = v169;
        if (v171(v79, 1, v169) != 1)
        {
          sub_CF1C(v79, &qword_37C80, &qword_251F0);
        }
      }

      else
      {
        v83 = v159;
        (*(v168 + 32))(v159, v79, v81);
      }

      v164(v83, 0, 1, v81);
      sub_10120(v83);
      v122 = v121;
      sub_CF1C(v83, &qword_37C80, &qword_251F0);
      *(v80 + 4) = v122;
      _os_log_impl(&dword_0, v76, v77, "Slices 3 & 4 shown %f", v80, 0xCu);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_CAC8(v50);
    }

    v42 = *(v50 + 2);
    if (v42 < 3)
    {
      __break(1u);
    }

    else
    {
      v50[34] = 1;
      if (v42 != (&dword_0 + 3))
      {
        v50[35] = 1;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_133:
    swift_once();
LABEL_40:
    v85 = sub_2161C();
    sub_CD94(v85, qword_38D00);
    v86 = v54;
    v87 = sub_215FC();
    v88 = sub_2173C();

    v89 = os_log_type_enabled(v87, v88);
    v90 = v160;
    if (v89)
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      sub_CA58(&v54[v166], v90);
      v92 = v169;
      if (v171(v90, 1, v169) == 1)
      {
        v93 = [objc_opt_self() faceDate];
        v42 = &v175;
        v94 = v158;
        if (!v93)
        {
          goto LABEL_145;
        }

        v95 = v93;
        sub_2159C();

        v92 = v169;
        if (v171(v90, 1, v169) != 1)
        {
          sub_CF1C(v90, &qword_37C80, &qword_251F0);
        }
      }

      else
      {
        v133 = *(v51 + 4);
        v51 += 32;
        v94 = v158;
        v133(v158, v90, v92);
      }

      v164(v94, 0, 1, v92);
      sub_10120(v94);
      v135 = v134;
      sub_CF1C(v94, &qword_37C80, &qword_251F0);
      *(v91 + 4) = v135;
      _os_log_impl(&dword_0, v87, v88, "Slices 4 & 5 shown %f", v91, 0xCu);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_CAC8(v50);
    }

    v42 = *(v50 + 2);
    if (v42 < 4)
    {
      __break(1u);
    }

    else
    {
      v50[35] = 1;
      if (v42 != &dword_4)
      {
        v50[36] = 1;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_136:
    swift_once();
LABEL_54:
    v98 = sub_2161C();
    sub_CD94(v98, qword_38D00);
    v99 = v54;
    v100 = sub_215FC();
    v101 = sub_2173C();

    v102 = os_log_type_enabled(v100, v101);
    v103 = v157;
    if (v102)
    {
      v104 = swift_slowAlloc();
      *v104 = 134217984;
      v105 = v156;
      sub_CA58(&v54[v166], v156);
      v106 = v169;
      if (v171(v105, 1, v169) == 1)
      {
        v107 = [objc_opt_self() faceDate];
        if (!v107)
        {
          goto LABEL_146;
        }

        v108 = v107;
        sub_2159C();

        v106 = v169;
        if (v171(v105, 1, v169) != 1)
        {
          sub_CF1C(v105, &qword_37C80, &qword_251F0);
        }
      }

      else
      {
        v136 = *(v51 + 4);
        v51 += 32;
        v136(v103, v105, v106);
      }

      v164(v103, 0, 1, v106);
      sub_10120(v103);
      v138 = v137;
      sub_CF1C(v103, &qword_37C80, &qword_251F0);
      *(v104 + 4) = v138;
      _os_log_impl(&dword_0, v100, v101, "Slices 5 & 6 shown %f", v104, 0xCu);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_CAC8(v50);
    }

    v42 = *(v50 + 2);
    if (v42 < 5)
    {
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v50[36] = 1;
    if (v42 == (&dword_4 + 1))
    {
      goto LABEL_138;
    }

    v50[37] = 1;
LABEL_112:
    v146 = *&v54[v170];
    if (v146 >= 3)
    {
      v173 = *&v54[v170];
      goto LABEL_151;
    }

    v32 = qword_253D0[v146];
    v147 = *&v54[OBJC_IVAR___NTKExactitudesDialView_ticksSliceLayers];
    if ((v147 & 0xC000000000000001) != 0 || v32 <= *(&dword_10 + (v147 & 0xFFFFFFFFFFFFFF8)))
    {
      break;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }

  if (v32 > v42)
  {
    __break(1u);
    goto LABEL_122;
  }

  v148 = 0;
  do
  {
    if ((v147 & 0xC000000000000001) != 0)
    {
      v149 = sub_2177C();
    }

    else
    {
      v149 = *(v147 + 8 * v148 + 32);
    }

    v150 = v149;
    [v149 setHidden:(v148[v50 + 32] & 1) == 0];

    ++v148;
  }

  while (v32 != v148);
}

void sub_B43C()
{
  v1 = [*(v0 + OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer) sublayers];
  if (v1)
  {
    v2 = v1;
    sub_CED4(0, &qword_37AC8, CALayer_ptr);
    v3 = sub_216BC();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (!v4)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  v4 = sub_217FC();
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_2177C();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    type metadata accessor for ExactitudesDialSlice();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      [v8 setHidden:0];
    }
  }

LABEL_14:
}

void sub_B640()
{
  v1 = v0;
  if (qword_37A28 != -1)
  {
    swift_once();
  }

  v2 = sub_2161C();
  sub_CD94(v2, qword_38D00);
  v3 = sub_215FC();
  v4 = sub_2171C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Starting timer to hide offscreen slices", v5, 2u);
  }

  sub_9DE8();
  v6 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  if (*(v1 + v6) == 1)
  {
    v7 = 300.0;
  }

  else
  {
    v7 = 5.0;
  }

  v8 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:"hideOffscreenSlices" selector:0 userInfo:1 repeats:v7];
  v9 = *(v1 + OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer);
  *(v1 + OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer) = v8;
}

void sub_B7C0()
{
  v1 = v0 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 136);
  v27 = v2;
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v26[6] = *(v1 + 104);
  v26[7] = v4;
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v26[2] = *(v1 + 40);
  v26[3] = v6;
  v26[4] = *(v1 + 72);
  v26[5] = v3;
  v26[0] = *(v1 + 8);
  v26[1] = v5;
  if (!v2)
  {
    if (qword_37A20 == -1)
    {
LABEL_9:
      v21 = sub_2161C();
      sub_CD94(v21, qword_38CE8);
      v22 = sub_215FC();
      v23 = sub_2173C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "setupHourNumeralsLayer: no numerals found in dialMetrics", v24, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_9;
  }

  v7 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_rootLayer);
  v8 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_numeralsLayer);
  sub_CE24(v26, &v25);
  [v7 addSublayer:v8];
  [v7 bounds];
  MidX = CGRectGetMidX(v28);
  [v7 bounds];
  [v8 setPosition:{MidX, CGRectGetMidY(v29)}];
  [v8 setContentsScale:*(v1 + 288)];
  [v8 setMasksToBounds:0];
  v10 = *(v2 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = 0;
  v12 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_metrics + 8);
  v13 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_metrics + 16);
  v14 = (v2 + 40);
  v15 = v10 - 1;
  v16 = 0.0;
  while (1)
  {
    v17 = __sincos_stret(v16);
    v18 = *(v14 - 1);
    v19 = *v14;

    v20 = sub_BAA4();

    [v20 setPosition:{v12 * v17.__cosval, v13 * v17.__sinval}];
    [v8 addSublayer:v20];

    if (v15 == v11)
    {
      break;
    }

    v16 = v16 + 1.57079633;
    v14 += 2;
    if (++v11 >= *(v2 + 16))
    {
      __break(1u);
      break;
    }
  }

  sub_CE80(v26);
}

id sub_BAA4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v3 = v0 + OBJC_IVAR___NTKExactitudesDialView_metrics;
  v4 = 48;
  if (*v2 == 2)
  {
    v4 = 40;
  }

  v5 = 32;
  if (*v2 == 2)
  {
    v5 = 24;
  }

  v6 = *(v3 + v5);
  v7 = *(v3 + v4);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  type metadata accessor for ExactitudesFontAttributes();
  inited = swift_initStackObject();
  *(inited + 16) = v7;
  *(inited + 24) = v7 * 0.9;
  *(inited + 32) = v8;
  *(inited + 40) = 0;
  *(inited + 48) = v9;
  *(inited + 56) = 0;
  v11 = objc_opt_self();
  sub_1EB88();
  sub_CED4(0, &qword_37AD0, NSNumber_ptr);
  isa = sub_2162C().super.isa;

  v13 = [v11 fontWithAttributes:isa size:v6];

  sub_CA10(&qword_37AD8, &qword_25208);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_25170;
  *(v14 + 32) = NSFontAttributeName;
  *(v14 + 64) = sub_CED4(0, &qword_37AE0, CLKFont_ptr);
  *(v14 + 40) = v13;
  v15 = NSFontAttributeName;
  v16 = v13;
  sub_1EFE0(v14);
  swift_setDeallocating();
  sub_CF1C(v14 + 32, &qword_37AE8, &qword_25210);
  v17 = objc_allocWithZone(NSAttributedString);
  v18 = sub_2163C();
  type metadata accessor for Key(0);
  sub_D02C(&qword_37AF0);
  v19 = sub_2162C().super.isa;

  v20 = [v17 initWithString:v18 attributes:v19];

  [v20 boundingRectWithSize:0 options:0 context:{0.0, 0.0}];
  v21 = v16;
  [v21 capHeight];
  v22 = [objc_allocWithZone(CATextLayer) init];
  v23 = [v20 string];
  if (!v23)
  {
    sub_2167C();
    v23 = sub_2163C();
  }

  [v22 setString:v23];

  v24 = v22;
  [v21 ascender];
  [v21 capHeight];
  [v24 setBounds:sub_CDD0()];
  [v24 setFont:v21];
  [v21 pointSize];
  v26 = v25;

  [v24 setFontSize:v26];
  [v24 setContentsScale:*(v2 + 288)];
  v27 = (v1 + OBJC_IVAR___NTKExactitudesDialView_colors);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  v31 = *(v1 + v30);
  result = CLKUIInterpolateBetweenColors();
  if (result)
  {
    v33 = result;
    v34 = [result CGColor];

    [v24 setForegroundColor:v34];
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t variable initialization expression of ExactitudesDialView.overrideDate@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_215AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of ExactitudesDialView.centerLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

id variable initialization expression of ExactitudesDialView.ringLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

void *variable initialization expression of ExactitudesDialView.ticksSliceLayers()
{
  sub_217BC();
  v0 = type metadata accessor for ExactitudesDialSlice();
  [objc_allocWithZone(v0) init];
  sub_2179C();
  v1 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v0) init];
  sub_2179C();
  v2 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v0) init];
  sub_2179C();
  v3 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v0) init];
  sub_2179C();
  v4 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v0) init];
  sub_2179C();
  v5 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v0) init];
  sub_2179C();
  v6 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  return _swiftEmptyArrayStorage;
}

double sub_C2B8(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 369) = 1;
  return result;
}

id variable initialization expression of ExactitudesDialSlice.primaryColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of ExactitudesDialSlice.primaryTicksLayer()
{
  v0 = objc_allocWithZone(CAReplicatorLayer);

  return [v0 init];
}

id _s24NTKExactitudesFaceBundle20ExactitudesDialSliceC16primaryTickLayerAA0dhI0Cvpfi_0()
{
  v0 = objc_allocWithZone(type metadata accessor for ExactitudesTickLayer());

  return [v0 init];
}

__n128 variable initialization expression of ExactitudesDialView.DialConfiguration.expandedMetrics@<Q0>(uint64_t a1@<X8>)
{
  sub_C428(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

double sub_C428(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

__n128 sub_C458(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_C478(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C498(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_C4D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_C4E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C504(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_C548(uint64_t a1, id *a2)
{
  result = sub_2165C();
  *a2 = 0;
  return result;
}

uint64_t sub_C5C0(uint64_t a1, id *a2)
{
  v3 = sub_2166C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_C640@<X0>(void *a1@<X8>)
{
  sub_2167C();
  v2 = sub_2163C();

  *a1 = v2;
  return result;
}

uint64_t sub_C684()
{
  v1 = *v0;
  sub_2167C();
  v2 = sub_216AC();

  return v2;
}

uint64_t sub_C6C0()
{
  v1 = *v0;
  sub_2167C();
  sub_2168C();
}

Swift::Int sub_C714()
{
  v1 = *v0;
  sub_2167C();
  sub_2188C();
  sub_2168C();
  v2 = sub_218AC();

  return v2;
}

uint64_t sub_C788(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2167C();
  v6 = v5;
  if (v4 == sub_2167C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2185C();
  }

  return v9 & 1;
}

uint64_t sub_C810@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2163C();

  *a2 = v5;
  return result;
}

uint64_t sub_C858@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2167C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_C884(uint64_t a1)
{
  v2 = sub_D02C(&qword_37AF0);
  v3 = sub_D02C(&qword_37B20);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_C91C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_CA10(&qword_37AB8, &qword_251F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_CA10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_CA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_CA10(&qword_37C80, &qword_251F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_CADC(char *a1, int64_t a2, char a3)
{
  result = sub_CB1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_CAFC(char *a1, int64_t a2, char a3)
{
  result = sub_CC10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_CB1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_CA10(&qword_37AB8, &qword_251F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_CC10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_CA10(&qword_37AC0, &qword_25200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_CD1C(double a1)
{
  result = a1 + 0.261799388;
  if (result < 0.0 || (v2 = 1.57079633, result >= 1.57079633))
  {
    v2 = 1.57079633;
    if (result < 1.57079633 || result >= 3.14159265)
    {
      if (result < 3.14159265 || result >= 4.71238898)
      {
        if (result >= 0.0)
        {
          return result;
        }
      }

      else
      {
        v2 = -4.71238898;
      }
    }
  }

  return result + v2;
}

uint64_t sub_CD94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_CDE4(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_CE08(uint64_t a1)
{
  if (*(a1 + 369))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_CED4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_CF1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_CA10(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_CFAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_D02C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_D2E0(id result)
{
  if (result)
  {
    v2 = result;
    v3 = objc_allocWithZone(CLKDeviceMetrics);
    v4 = v2;
    v5 = [v3 initWithDevice:v4 identitySizeClass:7];
    [v5 scaledValue:40.5];
    v7 = v6;
    [v5 scaledValue:64.5];
    v9 = v8;
    [v5 scaledValue:85.0];
    v11 = v10;
    [v5 scaledValue:2.5];
    v13 = v12;

    v14 = &v1[OBJC_IVAR____TtC24NTKExactitudesFaceBundle23NTKExactitudesHandsView_metrics];
    *v14 = v7;
    *(v14 + 1) = v9;
    *(v14 + 2) = v11;
    *(v14 + 3) = v13;
    v16.receiver = v1;
    v16.super_class = type metadata accessor for NTKExactitudesHandsView();
    v15 = objc_msgSendSuper2(&v16, "initForDevice:", v4);

    if (v15)
    {
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_D5A0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = sub_D668(a4);

  return v7;
}

id sub_D668(SEL *a1)
{
  result = [v1 *a1];
  if (result)
  {
    v3 = result;
    result = [v1 device];
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for NTKExactitudesHandView());
      v6 = v3;
      v7 = [v5 initWithConfiguration:v6 forDevice:v4 maskedShadow:0];

      v8 = objc_opt_self();
      v9 = v7;
      v10 = [v8 whiteColor];
      [v9 setColor:v10];

      [v9 anchorPointFromConfiguration];
      v12 = v11;
      v14 = v13;
      v15 = [v9 layer];
      [v15 setAnchorPoint:{v12, v14}];

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_D7CC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for NTKExactitudesHandsView();
  result = objc_msgSendSuper2(&v9, "hourHandConfiguration");
  if (result)
  {
    v2 = *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle23NTKExactitudesHandsView_metrics];
    v3 = result;
    [result pegRadius];
    v5 = v2 - v4;
    [v3 pegStrokeWidth];
    v7 = v5 - v6;
    [v3 armLength];
    [v3 setHandLength:v7 - v8];
    [v3 setOutlineOnly:1];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_D8AC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for NTKExactitudesHandsView();
  result = objc_msgSendSuper2(&v9, "minuteHandConfiguration");
  if (result)
  {
    v2 = *&v0[OBJC_IVAR____TtC24NTKExactitudesFaceBundle23NTKExactitudesHandsView_metrics + 8];
    v3 = result;
    [result pegRadius];
    v5 = v2 - v4;
    [v3 pegStrokeWidth];
    v7 = v5 - v6;
    [v3 armLength];
    [v3 setHandLength:v7 - v8];
    [v3 setOutlineOnly:1];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_D990(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = a4();

  return v7;
}

void sub_DB54(double a1)
{
  v3 = [v1 hourHandView];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NTKExactitudesHandView();
    v5 = swift_dynamicCastClass();
    if (v5 && (v6 = v5, (v7 = [v1 minuteHandView]) != 0))
    {
      v14 = v7;
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        v10 = *(v6 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha);
        *(v6 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha) = a1;
        v11 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha;
        v12 = *(v8 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha);

        *(v9 + v11) = a1;
      }

      else
      {
      }

      v13 = v14;
    }

    else
    {
      v13 = v4;
    }
  }
}

void sub_DDD0(uint64_t a1, uint64_t a2, void *a3, SEL *a4, double a5, double a6)
{
  v7 = v6;
  v13 = [v7 *a4];
  if (v13)
  {
    v20 = v13;
    type metadata accessor for NTKExactitudesHandView();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      [v14 setColor:a1];
      [v15 setInlayColor:a2];
      v16 = *&v15[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha];
      *&v15[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha] = a5;
      v17 = *&v15[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor];
      *&v15[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor] = a3;
      v18 = a3;

      [v15 _layoutInlayLayer];
      v19 = *&v15[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayAlpha];
      *&v15[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayAlpha] = a6;
    }
  }
}

void sub_DF84(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, void (*a9)(id, id, id, double, double))
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a1;
  a9(v16, v17, v18, a2, a3);
}

id sub_E0B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKExactitudesHandsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_E120(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 280);
  v5 = *(v3 + 256);
  v31[6] = *(v3 + 240);
  v31[7] = v5;
  v32 = *(v3 + 272);
  v6 = *(v3 + 192);
  v31[2] = *(v3 + 176);
  v31[3] = v6;
  v7 = *(v3 + 224);
  v31[4] = *(v3 + 208);
  v31[5] = v7;
  v8 = *(v3 + 160);
  v31[0] = *(v3 + 144);
  v31[1] = v8;
  if (sub_CDE4(v31) == 1)
  {
    v9 = *(v3 + 296);
    if (a1 != 1)
    {
      if (!a1)
      {
        v20 = *(v3 + 8);
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    v10 = *(v3 + 256);
    v28 = *(v3 + 240);
    v29 = v10;
    v30 = *(v3 + 272);
    v11 = *(v3 + 192);
    v24 = *(v3 + 176);
    v25 = v11;
    v12 = *(v3 + 224);
    v26 = *(v3 + 208);
    v27 = v12;
    v13 = *(v3 + 160);
    v22 = *(v3 + 144);
    v23 = v13;
    if (sub_CDE4(&v22) != 1)
    {
      v14 = *(v3 + 144);
LABEL_10:
      v33.origin.x = sub_119C0();
      CGRectInset(v33, v4 * 0.5 - v9, v4 * 0.5 - v9);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v15 = *(v3 + 256);
    v28 = *(v3 + 240);
    v29 = v15;
    v30 = *(v3 + 272);
    v16 = *(v3 + 192);
    v24 = *(v3 + 176);
    v25 = v16;
    v17 = *(v3 + 224);
    v26 = *(v3 + 208);
    v27 = v17;
    v18 = *(v3 + 160);
    v22 = *(v3 + 144);
    v23 = v18;
    if (sub_CDE4(&v22) == 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v19 = *(v3 + 144);
LABEL_13:
    v21 = v19 + *(v3 + 296) + v19 + *(v3 + 296) - v4;
    sub_119C0();
    return;
  }

  if (!a1)
  {
    v19 = *(v3 + 8);
    goto LABEL_13;
  }

LABEL_16:
  *&v22 = a1;
  sub_2186C();
  __break(1u);
}

uint64_t sub_E2C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  if (*v3 >= 3uLL)
  {
    *&v109[0] = *v3;
    result = sub_2186C();
    __break(1u);
  }

  else
  {
    v4 = dbl_25548[*v3];
    v91 = v4;
    v92 = *(v3 + 288);
    [*(v1 + OBJC_IVAR___NTKExactitudesDialView_rootLayer) bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v90 = *(v3 + 8);
    v13 = *(v3 + 256);
    v109[6] = *(v3 + 240);
    v109[7] = v13;
    v110 = *(v3 + 272);
    v14 = *(v3 + 192);
    v109[2] = *(v3 + 176);
    v109[3] = v14;
    v15 = *(v3 + 208);
    v109[5] = *(v3 + 224);
    v109[4] = v15;
    v16 = *(v3 + 144);
    v109[1] = *(v3 + 160);
    v109[0] = v16;
    v17 = 0;
    if (sub_CDE4(v109) != 1)
    {
      v17 = *(v3 + 144);
    }

    v18 = *(v3 + 296);
    v19 = *(v3 + 48);
    v20 = *(v3 + 56);
    v82 = *(v3 + 24);
    v83 = *(v3 + 72);
    v87 = *(v3 + 88);
    v86 = *(v3 + 96);
    v76 = *(v3 + 80);
    v77 = *(v3 + 104);
    v80 = *(v3 + 16);
    v81 = *(v3 + 32);
    v84 = *(v3 + 64);
    v85 = *(v3 + 40);
    v88 = *(v3 + 120);
    v89 = *(v3 + 112);
    v78 = *(v3 + 128);
    v21 = *(v3 + 144);
    v22 = *(v3 + 160);
    v23 = *(v3 + 176);
    v107[3] = *(v3 + 192);
    v107[2] = v23;
    v107[0] = v21;
    v107[1] = v22;
    v24 = *(v3 + 208);
    v25 = *(v3 + 224);
    v26 = *(v3 + 240);
    v27 = *(v3 + 256);
    v108 = *(v3 + 272);
    v107[7] = v27;
    v107[6] = v26;
    v107[4] = v24;
    v107[5] = v25;
    v75 = sub_CDE4(v107);
    if (v75 == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = *(v3 + 152);
    }

    v28 = *(v3 + 256);
    v105[6] = *(v3 + 240);
    v105[7] = v28;
    v106 = *(v3 + 272);
    v29 = *(v3 + 192);
    v105[2] = *(v3 + 176);
    v105[3] = v29;
    v30 = *(v3 + 208);
    v105[5] = *(v3 + 224);
    v105[4] = v30;
    v31 = *(v3 + 144);
    v105[1] = *(v3 + 160);
    v105[0] = v31;
    v32 = sub_CDE4(v105);
    if (v32 == 1)
    {
      v73 = 0;
      v74 = 0;
    }

    else
    {
      v73 = *(v3 + 192);
      v74 = *(v3 + 184);
    }

    v33 = *(v3 + 256);
    v103[6] = *(v3 + 240);
    v103[7] = v33;
    v104 = *(v3 + 272);
    v34 = *(v3 + 192);
    v103[2] = *(v3 + 176);
    v103[3] = v34;
    v35 = *(v3 + 208);
    v103[5] = *(v3 + 224);
    v103[4] = v35;
    v36 = *(v3 + 144);
    v103[1] = *(v3 + 160);
    v103[0] = v36;
    v37 = sub_CDE4(v103);
    if (v37 == 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = *(v3 + 160);
    }

    v38 = *(v3 + 256);
    v101[6] = *(v3 + 240);
    v101[7] = v38;
    v102 = *(v3 + 272);
    v39 = *(v3 + 192);
    v101[2] = *(v3 + 176);
    v101[3] = v39;
    v40 = *(v3 + 224);
    v101[4] = *(v3 + 208);
    v101[5] = v40;
    v41 = *(v3 + 160);
    v101[0] = *(v3 + 144);
    v101[1] = v41;
    if (sub_CDE4(v101) == 1)
    {
      v70 = 0;
      v71 = 0;
      v42 = 1;
    }

    else
    {
      v70 = *(v3 + 208);
      v71 = *(v3 + 200);
      v42 = *(v3 + 216);
    }

    v69 = v42;
    v43 = *(v3 + 256);
    v99[6] = *(v3 + 240);
    v99[7] = v43;
    v100 = *(v3 + 272);
    v44 = *(v3 + 192);
    v99[2] = *(v3 + 176);
    v99[3] = v44;
    v45 = *(v3 + 224);
    v99[4] = *(v3 + 208);
    v99[5] = v45;
    v46 = *(v3 + 160);
    v99[0] = *(v3 + 144);
    v99[1] = v46;
    v47 = sub_CDE4(v99);
    if (v47 == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(v3 + 168);
    }

    v48 = *(v3 + 256);
    v97[6] = *(v3 + 240);
    v97[7] = v48;
    v98 = *(v3 + 272);
    v49 = *(v3 + 192);
    v97[2] = *(v3 + 176);
    v97[3] = v49;
    v50 = *(v3 + 224);
    v97[4] = *(v3 + 208);
    v97[5] = v50;
    v51 = *(v3 + 160);
    v97[0] = *(v3 + 144);
    v97[1] = v51;
    if (sub_CDE4(v97) == 1)
    {
      v52 = 0;
      v53 = 0;
      v54 = 1;
    }

    else
    {
      v52 = *(v3 + 224);
      v53 = *(v3 + 232);
      v54 = *(v3 + 240);
    }

    v55 = *(v3 + 256);
    v95[6] = *(v3 + 240);
    v95[7] = v55;
    v96 = *(v3 + 272);
    v56 = *(v3 + 192);
    v95[2] = *(v3 + 176);
    v95[3] = v56;
    v57 = *(v3 + 224);
    v95[4] = *(v3 + 208);
    v95[5] = v57;
    v58 = *(v3 + 160);
    v95[0] = *(v3 + 144);
    v95[1] = v58;
    v59 = sub_CDE4(v95);
    if (v59 == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(v3 + 176);
    }

    v61 = *(v3 + 256);
    v93[6] = *(v3 + 240);
    v93[7] = v61;
    v94 = *(v3 + 272);
    v62 = *(v3 + 192);
    v93[2] = *(v3 + 176);
    v93[3] = v62;
    v63 = *(v3 + 224);
    v93[4] = *(v3 + 208);
    v93[5] = v63;
    v64 = *(v3 + 160);
    v93[0] = *(v3 + 144);
    v93[1] = v64;
    result = sub_CDE4(v93);
    if (result == 1)
    {
      v66 = 0uLL;
      v67 = 1;
    }

    else
    {
      v66 = *(v3 + 248);
      v67 = *(v3 + 264);
    }

    *a1 = 1.0 / v91;
    *(a1 + 8) = v92;
    *(a1 + 16) = v6;
    *(a1 + 24) = v8;
    *(a1 + 32) = v10;
    *(a1 + 40) = v12;
    *(a1 + 48) = v90;
    *(a1 + 56) = v17;
    *(a1 + 64) = v18;
    *(a1 + 72) = v80;
    *(a1 + 80) = v19;
    *(a1 + 88) = v20;
    *(a1 + 96) = v82;
    *(a1 + 104) = 0;
    *(a1 + 112) = v84;
    *(a1 + 120) = v83;
    *(a1 + 128) = v76;
    *(a1 + 136) = v81;
    *(a1 + 144) = 0;
    *(a1 + 152) = v87;
    *(a1 + 160) = v86;
    *(a1 + 168) = v77;
    *(a1 + 176) = v85;
    *(a1 + 184) = 0;
    *(a1 + 192) = v89;
    *(a1 + 200) = v88;
    *(a1 + 208) = v78;
    *(a1 + 216) = v79;
    *(a1 + 224) = v75 == 1;
    *(a1 + 232) = v74;
    *(a1 + 240) = v73;
    *(a1 + 248) = v32 == 1;
    *(a1 + 256) = v72;
    *(a1 + 264) = v37 == 1;
    *(a1 + 272) = v71;
    *(a1 + 280) = v70;
    *(a1 + 288) = v69;
    *(a1 + 296) = v68;
    *(a1 + 304) = v47 == 1;
    *(a1 + 312) = v52;
    *(a1 + 320) = v53;
    *(a1 + 328) = v54;
    *(a1 + 336) = v60;
    *(a1 + 344) = v59 == 1;
    *(a1 + 352) = v66;
    *(a1 + 368) = v67;
  }

  return result;
}

id sub_E86C()
{
  v1 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = (v0 + OBJC_IVAR___NTKExactitudesDialView_colors);
  if (v2 == 2)
  {
    swift_beginAccess();
    v5 = *v3;
    v4 = v3[1];
    v6 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
    swift_beginAccess();
    v7 = *(v0 + v6);
    result = CLKUIInterpolateBetweenColors();
    if (result)
    {
      v9 = result;
      v10 = sub_11FD8(result);

      return v10;
    }

    __break(1u);
    goto LABEL_7;
  }

  swift_beginAccess();
  v12 = *v3;
  v11 = v3[1];
  v13 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  v14 = *(v0 + v13);
  result = CLKUIInterpolateBetweenColors();
  if (!result)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *ExactitudesDialView.dialConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_EA04(__dst, v5);
  return memcpy(a1, __dst, 0x130uLL);
}

uint64_t ExactitudesDialView.dialConfiguration.setter(const void *a1)
{
  v3 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x130uLL);
  return sub_EAD4(__dst);
}

void *ExactitudesDialView.colors.getter()
{
  v1 = v0 + OBJC_IVAR___NTKExactitudesDialView_colors;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = v3;
  v5 = v2;
  return v3;
}

void ExactitudesDialView.colors.setter(void *a1, void *a2)
{
  v5 = v2 + OBJC_IVAR___NTKExactitudesDialView_colors;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2;
  v8 = a1;
  v9 = a2;

  sub_12410();
}

uint64_t (*ExactitudesDialView.colors.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_ECD0;
}

double ExactitudesDialView.backgroundStyleTransitionProgress.getter()
{
  v1 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

void ExactitudesDialView.backgroundStyleTransitionProgress.setter(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  *&v1[v4] = a1;
  sub_12410();
  if (qword_37A20 != -1)
  {
    swift_once();
  }

  v5 = sub_2161C();
  sub_CD94(v5, qword_38CE8);
  v6 = v1;
  v7 = sub_215FC();
  v8 = sub_2173C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *&v2[v4];
    _os_log_impl(&dword_0, v7, v8, "backgroundStyleTransitionProgress: %f", v9, 0xCu);
  }
}

void sub_EE98()
{
  sub_12410();
  if (qword_37A20 != -1)
  {
    swift_once();
  }

  v1 = sub_2161C();
  sub_CD94(v1, qword_38CE8);
  v2 = v0;
  oslog = sub_215FC();
  v3 = sub_2173C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    *(v5 + 4) = *&v2[v4];
    _os_log_impl(&dword_0, oslog, v3, "backgroundStyleTransitionProgress: %f", v5, 0xCu);
  }

  else
  {
  }
}

void (*ExactitudesDialView.backgroundStyleTransitionProgress.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_F06C;
}

void sub_F06C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    sub_12410();
    if (qword_37A20 != -1)
    {
      swift_once();
    }

    v5 = v3[3];
    v6 = sub_2161C();
    sub_CD94(v6, qword_38CE8);
    v7 = v5;
    v8 = sub_215FC();
    v9 = sub_2173C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v3[3];
      v10 = v3[4];
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v11 + v10);
      _os_log_impl(&dword_0, v8, v9, "backgroundStyleTransitionProgress: %f", v12, 0xCu);
    }
  }

  free(v3);
}

void sub_F1A0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___NTKExactitudesDialView__state) != a1)
  {
    if (qword_37A20 != -1)
    {
      swift_once();
    }

    v2 = sub_2161C();
    sub_CD94(v2, qword_38CE8);
    v3 = sub_215FC();
    v4 = sub_2173C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Dial state changed", v5, 2u);
    }

    sub_12764();
  }
}

void ExactitudesDialView.state.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___NTKExactitudesDialView__state);
  *(v1 + OBJC_IVAR___NTKExactitudesDialView__state) = a1;
  sub_F1A0(v2);
}

void (*ExactitudesDialView.state.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR___NTKExactitudesDialView__state;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_F480;
}

void sub_F480(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_F1A0(v4);
}

double sub_F4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);

  return v7;
}

double ExactitudesDialView.expansionTransitionProgress.getter()
{
  v1 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_F5F0(char *a1, double a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void))
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a5;
  swift_beginAccess();
  *&a1[v10] = a2;
  v11 = a1;
  a6();
}

id ExactitudesDialView.expansionTransitionProgress.setter(double a1)
{
  v3 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_F730();
}

id sub_F730()
{
  v1 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
  swift_beginAccess();
  v2 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer);
  if (*(v0 + v1) == 0.0)
  {
    [v2 setHidden:1];
    v3 = [*(v0 + OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer) sublayers];
    if (v3)
    {
      v4 = v3;
      sub_119D4();
      v41 = sub_216BC();
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    if (v41 >> 62)
    {
      goto LABEL_74;
    }

    for (i = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)); i; i = sub_217FC())
    {
      v39 = v1;
      v40 = v0;
      v1 = 0;
      v8 = v41 & 0xC000000000000001;
      v9 = &OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      while (1)
      {
        if (v8)
        {
          v10 = sub_2177C();
        }

        else
        {
          if (v1 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_72;
          }

          v10 = *(v41 + 8 * v1 + 32);
        }

        v11 = v10;
        v0 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        type metadata accessor for ExactitudesDialSlice();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = v12;
          v14 = *v9;
          swift_beginAccess();
          memmove(__dst, (v13 + v14), 0x172uLL);
          if (sub_CE08(__dst) == 1 || !v52)
          {
            v16 = v8;
            v17 = v9;
            v18 = *(v13 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTicksLayer);
            v19 = v11;
            v20 = v18;
            v9 = v17;
            v8 = v16;
            [v20 setHidden:1];
          }

          else
          {
            v15 = v11;
          }

          memmove(v48, (v13 + v14), 0x172uLL);
          if (sub_CE08(v48) == 1 || (v50 & 1) != 0 || !v49)
          {
            [*(v13 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTicksLayer) setHidden:1];
          }

          memmove(v45, (v13 + v14), 0x172uLL);
          if (sub_CE08(v45) == 1 || (v47 & 1) != 0 || !v46)
          {
            [*(v13 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTicksLayer) setHidden:1];
          }

          memmove(v42, (v13 + v14), 0x172uLL);
          if (sub_CE08(v42) == 1 || (v44 & 1) != 0 || !v43)
          {
            [*(v13 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTicksLayer) setHidden:1];
          }
        }

        ++v1;
        if (v0 == i)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }
  }

  else
  {
    [v2 setHidden:0];
    v5 = [*(v0 + OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer) sublayers];
    if (v5)
    {
      v6 = v5;
      sub_119D4();
      v41 = sub_216BC();
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    if (v41 >> 62)
    {
      v21 = sub_217FC();
      if (!v21)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v21 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
      if (!v21)
      {
        goto LABEL_65;
      }
    }

    v39 = v1;
    v40 = v0;
    v1 = 0;
    v22 = v41 & 0xC000000000000001;
    v23 = &OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    do
    {
      if (v22)
      {
        v24 = sub_2177C();
      }

      else
      {
        if (v1 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_73;
        }

        v24 = *(v41 + 8 * v1 + 32);
      }

      v25 = v24;
      v0 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_71;
      }

      type metadata accessor for ExactitudesDialSlice();
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v28 = *v23;
        swift_beginAccess();
        memmove(__dst, (v27 + v28), 0x172uLL);
        if (sub_CE08(__dst) == 1 || !v52)
        {
          v30 = v21;
          v31 = v22;
          v32 = v23;
          v33 = *(v27 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTicksLayer);
          v34 = v25;
          v35 = v33;
          v23 = v32;
          v22 = v31;
          v21 = v30;
          [v35 setHidden:0];
        }

        else
        {
          v29 = v25;
        }

        memmove(v48, (v27 + v28), 0x172uLL);
        if (sub_CE08(v48) == 1 || (v50 & 1) != 0 || !v49)
        {
          [*(v27 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTicksLayer) setHidden:0];
        }

        memmove(v45, (v27 + v28), 0x172uLL);
        if (sub_CE08(v45) == 1 || (v47 & 1) != 0 || !v46)
        {
          [*(v27 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTicksLayer) setHidden:0];
        }

        memmove(v42, (v27 + v28), 0x172uLL);
        if (sub_CE08(v42) == 1 || (v44 & 1) != 0 || !v43)
        {
          [*(v27 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTicksLayer) setHidden:0];
        }
      }

      ++v1;
    }

    while (v0 != v21);
LABEL_64:
    v1 = v39;
    v0 = v40;
  }

LABEL_65:

  v36 = *(v0 + v1);
  if (v36 < 1.0)
  {
    ExactitudesDialView.stopExpandedDialMovementAnimation()();
    v37 = *(v0 + OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer);
    if (v37)
    {
      [v37 invalidate];
    }

    sub_B43C();
    v36 = *(v0 + v1);
  }

  return ExactitudesDialView.updateDial(for:)(v36);
}

uint64_t (*ExactitudesDialView.expansionTransitionProgress.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_FD9C;
}

uint64_t sub_FDB4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

id sub_FDF8()
{
  v1 = sub_CA10(&qword_37C80, &qword_251F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v3);
  v7 = v26 - v6 + 16;
  v8 = sub_215AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v13 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
  swift_beginAccess();
  sub_CA58(&v0[v13], v7);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    result = [objc_opt_self() faceDate];
    if (!result)
    {
      goto LABEL_9;
    }

    v16 = result;
    sub_2159C();

    if (v14(v7, 1, v8) != 1)
    {
      sub_11958(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  [v0 center];
  (*(v9 + 16))(v5, v12, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  sub_10120(v5);
  v18 = v17;
  sub_11958(v5);
  v19 = &v0[OBJC_IVAR___NTKExactitudesDialView_dialConfiguration];
  swift_beginAccess();
  v20 = *(v19 + 16);
  v26[6] = *(v19 + 15);
  v26[7] = v20;
  v27 = *(v19 + 34);
  v21 = *(v19 + 12);
  v26[2] = *(v19 + 11);
  v26[3] = v21;
  v22 = *(v19 + 14);
  v26[4] = *(v19 + 13);
  v26[5] = v22;
  v23 = *(v19 + 9);
  v26[1] = *(v19 + 10);
  v26[0] = v23;
  result = sub_CDE4(v26);
  if (result != 1)
  {
    v24 = *(v19 + 18) - *(v19 + 1);
    __sincos_stret(v18);
    return (*(v9 + 8))(v12, v8);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_215DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_CA10(&qword_37C80, &qword_251F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = sub_215AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CA58(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_11958(v11);
  }

  (*(v13 + 32))(v16, v11, v12);
  v25 = 0.0;
  v26 = 0.0;
  v24 = 0.0;
  isa = sub_2158C().super.isa;
  v19 = [objc_opt_self() autoupdatingCurrentCalendar];
  sub_215CC();

  v20 = sub_215BC().super.isa;
  (*(v5 + 8))(v8, v4);
  NTKHourMinuteSecondAnglesForTime();

  v25 = v25 + -1.57079633;
  v26 = v26 + -1.57079633;
  v24 = v24 + -1.57079633;
  v21 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (v22 == 2 || v22 == 1 || !v22)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v23 = *(v2 + v21);
  result = sub_2186C();
  __break(1u);
  return result;
}

id ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(const void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress] = 0;
  *&v8[OBJC_IVAR___NTKExactitudesDialView__state] = 0;
  *&v8[OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress] = 0;
  *&v8[OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation] = 0;
  v16 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
  v17 = sub_215AC();
  (*(*(v17 - 8) + 56))(&v9[v16], 1, 1, v17);
  *&v9[OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer] = 0;
  v18 = OBJC_IVAR___NTKExactitudesDialView_rootLayer;
  *&v9[v18] = [objc_allocWithZone(CALayer) init];
  v19 = OBJC_IVAR___NTKExactitudesDialView_centerLayer;
  *&v9[v19] = [objc_allocWithZone(CALayer) init];
  v20 = OBJC_IVAR___NTKExactitudesDialView_ringLayer;
  *&v9[v20] = [objc_allocWithZone(CAShapeLayer) init];
  v21 = OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer;
  *&v9[v21] = [objc_allocWithZone(CALayer) init];
  v22 = OBJC_IVAR___NTKExactitudesDialView_ticksSliceLayers;
  *&v45[0] = _swiftEmptyArrayStorage;
  sub_217BC();
  v23 = type metadata accessor for ExactitudesDialSlice();
  [objc_allocWithZone(v23) init];
  sub_2179C();
  v24 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v23) init];
  sub_2179C();
  v25 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v23) init];
  sub_2179C();
  v26 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v23) init];
  sub_2179C();
  v27 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v23) init];
  sub_2179C();
  v28 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v23) init];
  sub_2179C();
  v29 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  *&v9[v22] = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR___NTKExactitudesDialView_numeralsLayer;
  *&v9[v30] = [objc_allocWithZone(CALayer) init];
  v31 = OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer;
  *&v9[v31] = [objc_allocWithZone(CALayer) init];
  v32 = a4;
  sub_11240(v32, v45);

  v33 = &v9[OBJC_IVAR___NTKExactitudesDialView_metrics];
  v34 = v45[3];
  *(v33 + 2) = v45[2];
  *(v33 + 3) = v34;
  *(v33 + 8) = v46;
  v35 = v45[1];
  *v33 = v45[0];
  *(v33 + 1) = v35;
  memcpy(&v9[OBJC_IVAR___NTKExactitudesDialView_dialConfiguration], a1, 0x130uLL);
  v36 = &v9[OBJC_IVAR___NTKExactitudesDialView_colors];
  *v36 = a2;
  *(v36 + 1) = a3;
  v44.receiver = v9;
  v44.super_class = ObjectType;
  v37 = a2;
  v38 = a3;
  v39 = objc_msgSendSuper2(&v44, "initWithFrame:", a5, a6, a7, a8);
  sub_8740();

  return v39;
}

id ExactitudesDialView.init(frame:dialConfiguration:colors:)(const void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesDialView__state] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation] = 0;
  v15 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
  v16 = sub_215AC();
  (*(*(v16 - 8) + 56))(&v8[v15], 1, 1, v16);
  *&v8[OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer] = 0;
  v17 = OBJC_IVAR___NTKExactitudesDialView_rootLayer;
  *&v8[v17] = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR___NTKExactitudesDialView_centerLayer;
  *&v8[v18] = [objc_allocWithZone(CALayer) init];
  v19 = OBJC_IVAR___NTKExactitudesDialView_ringLayer;
  *&v8[v19] = [objc_allocWithZone(CAShapeLayer) init];
  v20 = OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer;
  *&v8[v20] = [objc_allocWithZone(CALayer) init];
  v21 = OBJC_IVAR___NTKExactitudesDialView_ticksSliceLayers;
  v40 = _swiftEmptyArrayStorage;
  sub_217BC();
  v22 = type metadata accessor for ExactitudesDialSlice();
  [objc_allocWithZone(v22) init];
  sub_2179C();
  v23 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v22) init];
  sub_2179C();
  v24 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v22) init];
  sub_2179C();
  v25 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v22) init];
  sub_2179C();
  v26 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v22) init];
  sub_2179C();
  v27 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v22) init];
  sub_2179C();
  v28 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  *&v8[v21] = _swiftEmptyArrayStorage;
  v29 = OBJC_IVAR___NTKExactitudesDialView_numeralsLayer;
  *&v8[v29] = [objc_allocWithZone(CALayer) init];
  v30 = OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer;
  *&v8[v30] = [objc_allocWithZone(CALayer) init];
  v31 = &v8[OBJC_IVAR___NTKExactitudesDialView_metrics];
  *v31 = xmmword_25450;
  *(v31 + 1) = xmmword_25460;
  *(v31 + 2) = xmmword_25470;
  *(v31 + 3) = xmmword_25480;
  *(v31 + 8) = 0x4033000000000000;
  memcpy(&v8[OBJC_IVAR___NTKExactitudesDialView_dialConfiguration], a1, 0x130uLL);
  v32 = &v8[OBJC_IVAR___NTKExactitudesDialView_colors];
  *v32 = a2;
  *(v32 + 1) = a3;
  v39.receiver = v8;
  v39.super_class = ObjectType;
  v33 = a2;
  v34 = a3;
  v35 = objc_msgSendSuper2(&v39, "initWithFrame:", a4, a5, a6, a7);
  sub_8740();

  return v35;
}

id ExactitudesDialView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id sub_110F8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

double sub_11240@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = [objc_allocWithZone(CLKDeviceMetrics) initWithDevice:a1 identitySizeClass:7];
  [v3 scaledValue:1.0];
  v22 = v4;
  [v3 scaledValue:19.0];
  v6 = v5;
  [v3 scaledValue:21.5];
  v8 = v7;
  [v3 scaledValue:15.0];
  v10 = v9;
  [v3 scaledValue:13.0];
  v12 = v11;
  [v3 scaledValue:500.0];
  v14 = v13;
  [v3 scaledValue:540.0];
  v16 = v15;
  [v3 scaledValue:400.0];
  v18 = v17;
  [v3 scaledValue:19.0];
  v20 = v19;

  result = v22;
  *a2 = v22;
  *(a2 + 1) = v6;
  *(a2 + 2) = v8;
  *(a2 + 3) = v10;
  *(a2 + 4) = v12;
  *(a2 + 5) = v14;
  *(a2 + 6) = v16;
  *(a2 + 7) = v18;
  *(a2 + 8) = v20;
  return result;
}

uint64_t type metadata accessor for ExactitudesDialView()
{
  result = qword_37BB8;
  if (!qword_37BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_113F8()
{
  sub_114E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_114E8()
{
  if (!qword_37BC8)
  {
    sub_215AC();
    v0 = sub_2174C();
    if (!v1)
    {
      atomic_store(v0, &qword_37BC8);
    }
  }
}

__n128 sub_11540(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_11564(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11584(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

void sub_115D0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesDialView__state) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation) = 0;
  v2 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
  v3 = sub_215AC();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer) = 0;
  v4 = OBJC_IVAR___NTKExactitudesDialView_rootLayer;
  *(v1 + v4) = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR___NTKExactitudesDialView_centerLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  v6 = OBJC_IVAR___NTKExactitudesDialView_ringLayer;
  *(v1 + v6) = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer;
  *(v1 + v7) = [objc_allocWithZone(CALayer) init];
  v8 = OBJC_IVAR___NTKExactitudesDialView_ticksSliceLayers;
  sub_217BC();
  v9 = type metadata accessor for ExactitudesDialSlice();
  [objc_allocWithZone(v9) init];
  sub_2179C();
  v10 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v9) init];
  sub_2179C();
  v11 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v9) init];
  sub_2179C();
  v12 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v9) init];
  sub_2179C();
  v13 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v9) init];
  sub_2179C();
  v14 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  [objc_allocWithZone(v9) init];
  sub_2179C();
  v15 = _swiftEmptyArrayStorage[2];
  sub_217CC();
  sub_217DC();
  sub_217AC();
  *(v1 + v8) = _swiftEmptyArrayStorage;
  v16 = OBJC_IVAR___NTKExactitudesDialView_numeralsLayer;
  *(v1 + v16) = [objc_allocWithZone(CALayer) init];
  v17 = OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer;
  *(v1 + v17) = [objc_allocWithZone(CALayer) init];
  sub_217EC();
  __break(1u);
}

uint64_t sub_11958(uint64_t a1)
{
  v2 = sub_CA10(&qword_37C80, &qword_251F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_119D4()
{
  result = qword_37AC8;
  if (!qword_37AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_37AC8);
  }

  return result;
}

uint64_t sub_11A20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_11AB4(void *a1, void *a2, void *a3, void *a4)
{
  v5 = [*(v4 + OBJC_IVAR___NTKExactitudesDialView_ticksRootLayer) sublayers];
  if (v5)
  {
    v6 = v5;
    sub_119D4();
    v7 = sub_216BC();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }
  }

  result = sub_217FC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  v38 = result - 1;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  v37 = v7 & 0xC000000000000001;
  v32 = v7;
  if ((v7 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  for (i = sub_2177C(); ; i = *(v7 + 8 * v9 + 32))
  {
    v11 = i;
    type metadata accessor for ExactitudesDialSlice();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v12 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor);
      *(v12 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor) = a1;
      v14 = v12;
      v15 = v11;
      v16 = a1;

      v17 = *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor);
      *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor) = a2;
      v18 = a2;

      v19 = *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor);
      *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor) = a3;
      v20 = a3;

      v21 = *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor);
      *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor) = a4;
      v22 = a4;

      v23 = *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickLayer);
      v24 = [v16 CGColor];
      [v23 setBackgroundColor:v24];

      v25 = *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickLayer);
      v26 = [v18 CGColor];
      [v25 setBackgroundColor:v26];

      v27 = *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickLayer);
      v28 = [v20 CGColor];
      [v27 setBackgroundColor:v28];

      v29 = *(v14 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickLayer);
      v30 = [v22 CGColor];
      v31 = v29;
      v7 = v32;
      [v31 setBackgroundColor:v30];
    }

    else
    {
    }

    if (v38 == v9)
    {
      break;
    }

    ++v9;
    if (v37)
    {
      goto LABEL_6;
    }

LABEL_7:
    ;
  }

LABEL_16:
}

void sub_11DB8(CGColor *a1)
{
  v2 = sub_2170C();
  if (!v2)
  {
    if (qword_37A30 != -1)
    {
      swift_once();
    }

    v9 = sub_2161C();
    sub_CD94(v9, qword_38D18);
    v5 = sub_215FC();
    v6 = sub_2173C();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Could not get color components";
    goto LABEL_11;
  }

  v3 = v2;
  if (CGColorGetNumberOfComponents(a1) < 4)
  {

    if (qword_37A30 != -1)
    {
      swift_once();
    }

    v4 = sub_2161C();
    sub_CD94(v4, qword_38D18);
    v5 = sub_215FC();
    v6 = sub_2173C();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Not enough color components";
LABEL_11:
    _os_log_impl(&dword_0, v5, v6, v8, v7, 2u);

LABEL_12:

    __asm { FMOV            V0.4S, #1.0 }

    return;
  }

  v15 = *(v3 + 16);
  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v15 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15 < 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 == 3)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v16 = *(v3 + 32);
  *&v16 = *(v3 + 40);
  v17 = *(v3 + 48);

  CLKUIConvertRGBtoLAB();
}

id sub_11FD8(void *a1)
{
  v1 = [a1 CGColor];
  sub_11DB8(v1);

  __asm
  {
    FMOV            V2.2S, #30.0
    FMOV            V4.2S, #-30.0
  }

  CLKUIConvertLABtoRGB();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = objc_allocWithZone(UIColor);

  return [v16 initWithRed:v9 green:v11 blue:v13 alpha:v15];
}

void sub_120C8(void *a1, id a2)
{
  v3 = [a2 sublayers];
  if (v3)
  {
    v4 = v3;
    sub_119D4();
    v5 = sub_216BC();

    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_217FC())
    {
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v9 = v5 & 0xFFFFFFFFFFFFFF8;
      oslog = v5;
      while (1)
      {
        if (v8)
        {
          v13 = sub_2177C();
        }

        else
        {
          if (v7 >= *(v9 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(v5 + 8 * v7 + 32);
        }

        v12 = v13;
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v10 = v15;
          v11 = v12;
          v12 = [a1 CGColor];
          [v10 setForegroundColor:v12];
        }

        else
        {
          if (qword_37A20 != -1)
          {
            swift_once();
          }

          v16 = sub_2161C();
          sub_CD94(v16, qword_38CE8);
          v11 = sub_215FC();
          v17 = sub_2173C();
          if (os_log_type_enabled(v11, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_0, v11, v17, "updateNumeralColors: Found non-numeral layer", v18, 2u);
            v5 = oslog;
          }
        }

        ++v7;
        if (v14 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:
  }

  else
  {
    if (qword_37A20 != -1)
    {
      swift_once();
    }

    v19 = sub_2161C();
    sub_CD94(v19, qword_38CE8);
    osloga = sub_215FC();
    v20 = sub_2171C();
    if (os_log_type_enabled(osloga, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, osloga, v20, "No numerals sublayers", v21, 2u);
    }
  }
}

void sub_12410()
{
  if (qword_37A20 != -1)
  {
    swift_once();
  }

  v1 = sub_2161C();
  sub_CD94(v1, qword_38CE8);
  v2 = v0;
  v3 = sub_215FC();
  v4 = sub_2173C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
    swift_beginAccess();
    *(v5 + 4) = *&v2[v6];
    _os_log_impl(&dword_0, v3, v4, " transitioning colors with backgroundStyleTransitionProgress: %f", v5, 0xCu);
  }

  v7 = objc_opt_self();
  [v7 begin];
  [v7 setDisableActions:1];
  v8 = [objc_opt_self() clearColor];
  v9 = &v2[OBJC_IVAR___NTKExactitudesDialView_colors];
  swift_beginAccess();
  v10 = *v9;
  v11 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  v12 = *&v2[v11];
  v13 = CLKUIInterpolateBetweenColors();

  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *&v2[OBJC_IVAR___NTKExactitudesDialView_ringLayer];
  v15 = [v13 CGColor];
  [v14 setStrokeColor:v15];

  v16 = *v9;
  v17 = *(v9 + 1);
  v18 = *&v2[v11];
  v19 = CLKUIInterpolateBetweenColors();
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  sub_120C8(v19, *&v2[OBJC_IVAR___NTKExactitudesDialView_numeralsLayer]);
  sub_120C8(v20, *&v2[OBJC_IVAR___NTKExactitudesDialView_expandedNumeralsLayer]);

  v21 = *v9;
  v22 = *(v9 + 1);
  v23 = *&v2[v11];
  v24 = CLKUIInterpolateBetweenColors();
  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = v24;
  v26 = sub_E86C();
  v27 = *v9;
  v28 = *(v9 + 1);
  v29 = *&v2[v11];
  v30 = CLKUIInterpolateBetweenColors();
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  v32 = sub_11FD8(v30);

  v33 = *v9;
  v34 = *(v9 + 1);
  v35 = *&v2[v11];
  v36 = CLKUIInterpolateBetweenColors();
  if (v36)
  {
    v37 = v36;
    v38 = sub_11FD8(v36);

    sub_11AB4(v25, v26, v32, v38);
    [v7 commit];
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_12764()
{
  v1 = *&v0[OBJC_IVAR___NTKExactitudesDialView__state];
  if (v1)
  {
    if (v1 == 1)
    {

      ExactitudesDialView.startExpandedDialMovementAnimation()();
    }

    else
    {
      v7 = *&v0[OBJC_IVAR___NTKExactitudesDialView__state];
      sub_2186C();
      __break(1u);
    }
  }

  else
  {
    v2 = OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation;
    if (*&v0[OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation])
    {
      v3 = *&v0[OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer];
      if (v3)
      {
        [v3 invalidate];
      }

      sub_B43C();
      v4 = *&v0[OBJC_IVAR___NTKExactitudesDialView_rootLayer];
      v5 = sub_2163C();
      [v4 removeAnimationForKey:v5];

      v6 = *&v0[v2];
      *&v0[v2] = 0;

      [v0 setNeedsLayout];
    }
  }
}

Swift::Void __swiftcall ExactitudesDialView.stopExpandedDialMovementAnimation()()
{
  v1 = OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation;
  if (*&v0[OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation])
  {
    v2 = *&v0[OBJC_IVAR___NTKExactitudesDialView_hideSliceLayersTimer];
    if (v2)
    {
      [v2 invalidate];
    }

    sub_B43C();
    v3 = *&v0[OBJC_IVAR___NTKExactitudesDialView_rootLayer];
    v4 = sub_2163C();
    [v3 removeAnimationForKey:v4];

    v5 = *&v0[v1];
    *&v0[v1] = 0;

    [v0 setNeedsLayout];
  }
}

Swift::Void __swiftcall ExactitudesDialView.startExpandedDialMovementAnimation()()
{
  v1 = OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation;
  if (*&v0[OBJC_IVAR___NTKExactitudesDialView_expandedDialMovementAnimation])
  {
    ExactitudesDialView.stopExpandedDialMovementAnimation()();
  }

  v2 = sub_12A50();
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  v5 = *&v0[OBJC_IVAR___NTKExactitudesDialView_rootLayer];
  v6 = sub_2163C();
  [v5 addAnimation:v4 forKey:v6];

  [v0 setNeedsLayout];

  sub_B640();
}

uint64_t sub_12A50()
{
  v1 = sub_CA10(&qword_37C80, &qword_251F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v46 - v6;
  v8 = [v0 layer];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v47.origin.x = v10;
  v47.origin.y = v12;
  v47.size.width = v14;
  v47.size.height = v16;
  MidX = CGRectGetMidX(v47);
  v18 = [v0 layer];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v48.origin.x = v20;
  v48.origin.y = v22;
  v48.size.width = v24;
  v48.size.height = v26;
  MidY = CGRectGetMidY(v48);
  v28 = sub_12E78();
  v29 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
  swift_beginAccess();
  sub_CA58(&v0[v29], v5);
  v30 = sub_215AC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v5, 1, v30) == 1)
  {
    v33 = [objc_opt_self() faceDate];
    if (!v33)
    {
      __break(1u);
      goto LABEL_9;
    }

    v35 = v33;
    sub_2159C();

    if (v32(v5, 1, v30) != 1)
    {
      sub_11958(v5);
    }
  }

  else
  {
    (*(v31 + 32))(v7, v5, v30);
  }

  (*(v31 + 56))(v7, 0, 1, v30);
  sub_10120(v7);
  v37 = v36;
  sub_11958(v7);
  v38 = [objc_opt_self() bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v28 clockwise:{v37 + 3.14159265, v37 + 3.14159265 + 6.28318531}];
  v39 = sub_2163C();
  v40 = [objc_opt_self() animationWithKeyPath:v39];

  v41 = [v38 CGPath];
  [v40 setPath:v41];

  v42 = v40;
  [v42 setBeginTime:CACurrentMediaTime()];
  LODWORD(v43) = 2139095040;
  [v42 setRepeatCount:v43];
  v44 = OBJC_IVAR___NTKExactitudesDialView_dialConfiguration;
  swift_beginAccess();
  v34 = *&v0[v44];
  if (v34 < 3)
  {
    [v42 setDuration:dbl_25590[v34]];

    return v42;
  }

LABEL_9:
  v46[1] = v34;
  result = sub_2186C();
  __break(1u);
  return result;
}

double sub_12E78()
{
  [v0 center];
  v2 = v1;
  v4 = v3;
  v5 = [v0 layer];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  CGRectGetMidX(v26);
  v14 = [v0 layer];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  CGRectGetMidY(v27);
  sub_FDF8();
  CLKInterpolateBetweenPoints();
  return sqrt((v23 - v2) * (v23 - v2) + (v24 - v4) * (v24 - v4));
}

unint64_t ExactitudesDialView.DialType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_12FD0()
{
  v1 = *v0;
  sub_2188C();
  sub_2189C(v1);
  return sub_218AC();
}

Swift::Int sub_13044()
{
  v1 = *v0;
  sub_2188C();
  sub_2189C(v1);
  return sub_218AC();
}

uint64_t *sub_13088@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t ExactitudesFaceDialsView.style.getter()
{
  v1 = OBJC_IVAR___NTKExactitudesFaceDialsView_style;
  swift_beginAccess();
  return *(v0 + v1);
}

void ExactitudesFaceDialsView.style.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NTKExactitudesFaceDialsView_style;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1865C();
}

Swift::Void __swiftcall ExactitudesFaceDialsView.setDialsToCurrentStyleNoAnimation()()
{
  v1 = v0;
  if (qword_37A20 != -1)
  {
    swift_once();
  }

  v2 = sub_2161C();
  sub_CD94(v2, qword_38CE8);
  v3 = sub_215FC();
  v4 = sub_2171C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "SNEPO setDialsToCurrentStyleNoAnimation", v5, 2u);
  }

  v6 = OBJC_IVAR___NTKExactitudesFaceDialsView_style;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 <= 2)
  {
    v8 = qword_257B8[v7];
    sub_1562C(qword_257A0[v7]);
    sub_15884(v8);
  }
}

void (*ExactitudesFaceDialsView.style.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NTKExactitudesFaceDialsView_style;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_13494;
}

void sub_13494(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 32) + *(*a1 + 40)) = *(*a1 + 24);
  sub_1865C();

  free(v1);
}

uint64_t ExactitudesFaceDialsView.secondsDialExpanded.getter()
{
  v1 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ExactitudesFaceDialsView.secondsDialExpanded.setter(char a1)
{
  v3 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ExactitudesFaceDialsView.minutesDialExpanded.getter()
{
  v1 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ExactitudesFaceDialsView.minutesDialExpanded.setter(char a1)
{
  v3 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ExactitudesFaceDialsView.__allocating_init(frame:device:colorsWrapper:style:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial] = 0;
  v15 = &v14[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v14[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded] = 0;
  v14[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded] = 0;
  v14[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDialExpanded] = 0;
  v14[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDialExpanded] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_secondHandExpansionFactor] = 0x4014000000000000;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_minuteHandExpansionFactor] = 0x4014000000000000;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_miniClockScale] = 0x3FE07AE147AE147BLL;
  v14[OBJC_IVAR___NTKExactitudesFaceDialsView__isShowOverride] = 0;
  v14[OBJC_IVAR___NTKExactitudesFaceDialsView_isFrozen] = 0;
  v14[OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible] = 0;
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_device] = a1;
  v16 = a1;
  sub_1818C(v16, __src);
  memcpy(&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics], __src, 0x148uLL);
  v17 = &a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors];
  v18 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors];
  v19 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 8];
  v20 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 16];
  v21 = *(v17 + 3);
  v22 = *v15;
  v23 = *(v15 + 1);
  v24 = *(v15 + 2);
  v25 = *(v15 + 3);
  *v15 = v18;
  *(v15 + 1) = v19;
  *(v15 + 2) = v20;
  *(v15 + 3) = v21;
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  sub_18748(v22, v23, v24, v25);
  *&v14[OBJC_IVAR___NTKExactitudesFaceDialsView_style] = a3;
  v35.receiver = v14;
  v35.super_class = v33;
  v30 = objc_msgSendSuper2(&v35, "initWithFrame:", a4, a5, a6, a7);
  sub_13D54();
  sub_13FD0();
  sub_1445C();

  return v30;
}

id ExactitudesFaceDialsView.init(frame:device:colorsWrapper:style:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial] = 0;
  v14 = &v7[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v7[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded] = 0;
  v7[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded] = 0;
  v7[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDialExpanded] = 0;
  v7[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDialExpanded] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_secondHandExpansionFactor] = 0x4014000000000000;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_minuteHandExpansionFactor] = 0x4014000000000000;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_miniClockScale] = 0x3FE07AE147AE147BLL;
  v7[OBJC_IVAR___NTKExactitudesFaceDialsView__isShowOverride] = 0;
  v7[OBJC_IVAR___NTKExactitudesFaceDialsView_isFrozen] = 0;
  v7[OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible] = 0;
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_device] = a1;
  v15 = a1;
  sub_1818C(v15, __src);
  memcpy(&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics], __src, 0x148uLL);
  v16 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors];
  v17 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 8];
  v19 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 16];
  v18 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 24];
  v20 = *v14;
  v21 = *(v14 + 1);
  v22 = *(v14 + 2);
  v23 = *(v14 + 3);
  *v14 = v16;
  *(v14 + 1) = v17;
  *(v14 + 2) = v19;
  *(v14 + 3) = v18;
  v24 = v16;
  v25 = v17;
  v26 = v19;
  v27 = v18;
  sub_18748(v20, v21, v22, v23);
  *&v7[OBJC_IVAR___NTKExactitudesFaceDialsView_style] = a3;
  v33.receiver = v7;
  v33.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v33, "initWithFrame:", a4, a5, a6, a7);
  sub_13D54();
  sub_13FD0();
  sub_1445C();

  return v28;
}

uint64_t sub_13D2C(uint64_t a1)
{
  v3 = v1;

  return a1;
}

void sub_13D54()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics];
  v3 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 160];
  v4 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 48];
  v5 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 56];
  v6 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 64];
  v7 = sub_148E8(25637, 0xE200000000000000, &off_30EE0);
  __dst[320] = 0;
  __dst[312] = 0;
  __dst[304] = 1;
  v9 = *v2;
  v8 = *(v2 + 1);
  v10 = *(v2 + 31);
  sub_C428(v35);
  *&__src[0] = 2;
  *(&__src[0] + 1) = v8;
  __src[1] = xmmword_255B0;
  __src[2] = xmmword_255C0;
  *&__src[3] = v3;
  *(&__src[3] + 1) = v4;
  *&__src[4] = v3;
  *(&__src[4] + 1) = v5;
  LOBYTE(__src[5]) = 0;
  *(&__src[5] + 1) = v3;
  *&__src[6] = v6;
  BYTE8(__src[6]) = 0;
  __src[7] = 0uLL;
  LOBYTE(__src[8]) = 1;
  *(&__src[8] + 1) = v7;
  __src[15] = v35[6];
  __src[16] = v35[7];
  *&__src[17] = v36;
  __src[11] = v35[2];
  __src[12] = v35[3];
  __src[13] = v35[4];
  __src[14] = v35[5];
  __src[9] = v35[0];
  __src[10] = v35[1];
  *(&__src[17] + 1) = v8;
  *&__src[18] = v9;
  *(&__src[18] + 1) = v10;
  memcpy(__dst, __src, 0x130uLL);
  [v1 bounds];
  v15 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  if (v15)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_colors + 24];
    v21 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_device];
    v22 = objc_allocWithZone(type metadata accessor for ExactitudesDialView());
    v23 = v15;
    v24 = v20;
    v25 = v21;
    sub_EA04(__src, &v33);
    v26 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(__dst, v23, v24, v25, v16, v17, v18, v19);
    v27 = OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial;
    v28 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial];
    *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial] = v26;
    v29 = v26;

    [v1 addSubview:v29];
    v30 = *&v1[v27];
    if (v30)
    {
      v31 = v30;
      sub_EAD4(__src);
      [v1 bounds];
      MidX = CGRectGetMidX(v38);
      [v1 bounds];
      [v31 setPosition:{MidX, CGRectGetMidY(v39)}];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_13FD0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics];
  v3 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 160];
  v4 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 72];
  v5 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 80];
  v6 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 88];
  v8 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 96];
  v7 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 104];
  v9 = sub_148E8(1681010725, 0xE400000000000000, &off_30F20);
  v10 = v2[2];
  v77 = 0;
  v11 = 1;
  v76 = 1;
  v75 = 1;
  sub_CA10(&qword_37D48, &qword_25788);
  v12 = swift_allocObject();
  v13 = j__malloc_size(v12);
  v14 = v13 - 32;
  if (v13 < 32)
  {
    v14 = v13 - 25;
  }

  v12[2] = 60;
  v12[3] = 2 * (v14 >> 3);
  v15 = 4;
  do
  {
    if (v11 == 60)
    {
      v16 = 0;
    }

    else
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v12[v15] = v11;
    if (v15 == 63)
    {
      goto LABEL_11;
    }

    ++v15;
    v17 = v11 == 60;
    v11 = v16;
  }

  while (!v17);
  __break(1u);
LABEL_11:
  v18 = sub_148E8(1681010725, 0xE400000000000000, v12);
  v65[320] = 0;
  v19.n128_f64[0] = v10 * 5.0;
  v65[312] = 0;
  v65[304] = 0;
  *&v66[24] = xmmword_255E0;
  *&v66[8] = xmmword_255D0;
  *v66 = v10 * 5.0;
  *&v66[40] = v3;
  *&v67 = v4;
  *(&v67 + 1) = v3;
  *&v68 = v6;
  BYTE8(v68) = 0;
  *&v69 = v3;
  *(&v69 + 1) = v8;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = v3;
  *&v71 = v7;
  BYTE8(v71) = 0;
  v72 = v18;
  ExactitudesTickLayer.cornerRadius.setter(v19, COERCE_DOUBLE(12));
  v20 = *(v2 + 4);
  v21 = *v2;
  v22 = *(v2 + 31);
  *&__src[0] = 1;
  *(__src + 1) = v10;
  __src[1] = xmmword_255D0;
  __src[2] = 0uLL;
  *&__src[3] = v3;
  *(&__src[3] + 1) = v4;
  *&__src[4] = v3;
  *(&__src[4] + 1) = v5;
  LOBYTE(__src[5]) = v77;
  *&__src[6] = 0;
  *(&__src[5] + 1) = 0;
  BYTE8(__src[6]) = v76;
  __src[7] = 0uLL;
  LOBYTE(__src[8]) = v75;
  *(&__src[8] + 1) = v9;
  __src[15] = v70;
  __src[16] = v71;
  *&__src[17] = v72;
  __src[11] = *&v66[32];
  __src[12] = v67;
  __src[13] = v68;
  __src[14] = v69;
  __src[9] = *v66;
  __src[10] = *&v66[16];
  *(&__src[17] + 1) = v20;
  *&__src[18] = v21;
  *(&__src[18] + 1) = v22;
  memcpy(__dst, __src, sizeof(__dst));
  [v1 bounds];
  v27 = &v1[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  if (!*&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_colors])
  {
    goto LABEL_17;
  }

  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = *(v27 + 3);
  v33 = *(v27 + 1);
  v34 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_device];
  v35 = type metadata accessor for ExactitudesDialView();
  v36 = objc_allocWithZone(v35);
  v37 = v34;
  v38 = v33;
  v39 = v32;
  sub_EA04(__src, v65);
  v40 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(__dst, v38, v39, v37, v28, v29, v30, v31);
  v41 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial;
  v42 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial];
  *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial] = v40;
  v43 = v40;

  [v1 addSubview:v43];
  v44 = *&v1[v41];
  if (!v44)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = v44;
  [v1 bounds];
  MidX = CGRectGetMidX(v78);
  [v1 bounds];
  [v45 setPosition:{MidX, CGRectGetMidY(v79)}];

  [v1 bounds];
  if (!*v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  v55 = *(v27 + 3);
  v56 = *(v27 + 1);
  v57 = objc_allocWithZone(v35);
  sub_EA04(__src, v65);
  v58 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(__dst, v56, v55, v37, v51, v52, v53, v54);
  v59 = OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial;
  v60 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial];
  *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial] = v58;
  v61 = v58;

  [v1 addSubview:v61];
  v62 = *&v1[v59];
  if (v62)
  {
    v63 = v62;
    sub_EAD4(__src);

    [v1 bounds];
    v64 = CGRectGetMidX(v80);
    [v1 bounds];
    [v63 setPosition:{v64, CGRectGetMidY(v81)}];

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_1445C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics];
  v3 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 160];
  v4 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 112];
  v5 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 120];
  v66 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 128];
  v7 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 136];
  v6 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 144];
  v8 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 152];
  v9 = sub_148E8(1681010725, 0xE400000000000000, &off_30FA0);
  v10 = v2[3];
  v79 = 0;
  v78 = 0;
  v11 = 1;
  v77 = 1;
  sub_CA10(&qword_37D48, &qword_25788);
  v12 = swift_allocObject();
  v13 = j__malloc_size(v12);
  v14 = v13 - 32;
  if (v13 < 32)
  {
    v14 = v13 - 25;
  }

  v12[2] = 60;
  v12[3] = 2 * (v14 >> 3);
  v15 = 4;
  do
  {
    if (v11 == 60)
    {
      v16 = 0;
    }

    else
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v12[v15] = v11;
    if (v15 == 63)
    {
      goto LABEL_11;
    }

    ++v15;
    v17 = v11 == 60;
    v11 = v16;
  }

  while (!v17);
  __break(1u);
LABEL_11:
  v18 = sub_148E8(1681010725, 0xE400000000000000, v12);
  v67[320] = 0;
  v19.n128_f64[0] = v10 * 5.0;
  v67[312] = 0;
  v67[304] = 0;
  *&v68[24] = xmmword_255E0;
  *&v68[8] = xmmword_255D0;
  *v68 = v10 * 5.0;
  *&v68[40] = v3;
  *&v69 = v4;
  *(&v69 + 1) = v3;
  *&v70 = v7;
  BYTE8(v70) = 0;
  *&v71 = v3;
  *(&v71 + 1) = v6;
  LOBYTE(v72) = 0;
  *(&v72 + 1) = v3;
  *&v73 = v8;
  BYTE8(v73) = 0;
  v74 = v18;
  ExactitudesTickLayer.cornerRadius.setter(v19, COERCE_DOUBLE(12));
  v20 = *(v2 + 5);
  v21 = *v2;
  v22 = *(v2 + 31);
  *&__src[0] = 0;
  *(__src + 1) = v10;
  __src[1] = xmmword_255D0;
  __src[2] = xmmword_255F0;
  *&__src[3] = v3;
  *(&__src[3] + 1) = v4;
  *&__src[4] = v3;
  *(&__src[4] + 1) = v5;
  LOBYTE(__src[5]) = v79;
  *(&__src[5] + 1) = v3;
  *&__src[6] = v66;
  BYTE8(__src[6]) = v78;
  __src[7] = 0uLL;
  LOBYTE(__src[8]) = v77;
  *(&__src[8] + 1) = v9;
  __src[15] = v72;
  __src[16] = v73;
  *&__src[17] = v74;
  __src[11] = *&v68[32];
  __src[12] = v69;
  __src[13] = v70;
  __src[14] = v71;
  __src[9] = *v68;
  __src[10] = *&v68[16];
  *(&__src[17] + 1) = v20;
  *&__src[18] = v21;
  *(&__src[18] + 1) = v22;
  memcpy(__dst, __src, sizeof(__dst));
  [v1 bounds];
  v27 = &v1[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  if (!*&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_colors])
  {
    goto LABEL_17;
  }

  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = *(v27 + 2);
  v33 = *(v27 + 3);
  v34 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_device];
  v35 = type metadata accessor for ExactitudesDialView();
  v36 = objc_allocWithZone(v35);
  v37 = v34;
  v38 = v32;
  v39 = v33;
  sub_EA04(__src, v67);
  v40 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(__dst, v38, v39, v37, v28, v29, v30, v31);
  v41 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial;
  v42 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial];
  *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial] = v40;
  v43 = v40;

  [v1 addSubview:v43];
  v44 = *&v1[v41];
  if (!v44)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = v44;
  [v1 bounds];
  MidX = CGRectGetMidX(v80);
  [v1 bounds];
  [v45 setPosition:{MidX, CGRectGetMidY(v81)}];

  [v1 bounds];
  if (!*v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  v57 = v27 + 16;
  v55 = *(v27 + 2);
  v56 = v57[1];
  v58 = objc_allocWithZone(v35);
  sub_EA04(__src, v67);
  v59 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(__dst, v55, v56, v37, v51, v52, v53, v54);
  v60 = OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial;
  v61 = *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial];
  *&v1[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial] = v59;
  v62 = v59;

  [v1 addSubview:v62];
  v63 = *&v1[v60];
  if (v63)
  {
    v64 = v63;
    sub_EAD4(__src);

    [v1 bounds];
    v65 = CGRectGetMidX(v82);
    [v1 bounds];
    [v64 setPosition:{v65, CGRectGetMidY(v83)}];

    return;
  }

LABEL_20:
  __break(1u);
}

void *sub_148E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    sub_CAFC(0, v3, 0);
    v5 = (a3 + 32);
    do
    {
      v6 = *v5++;
      sub_CA10(&unk_37D50, &unk_25790);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25170;
      *(v7 + 56) = &type metadata for Int;
      *(v7 + 64) = &protocol witness table for Int;
      *(v7 + 32) = v6;
      v8 = sub_2164C();
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_CAFC((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

void ExactitudesFaceDialsView.allDialsSetBackgroundStyleTransitionProgress(progress:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial);
  if (!v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v3 = v1;
  v5 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  *&v2[v5] = a1;
  v6 = v2;
  sub_12410();
  if (qword_37A20 != -1)
  {
    swift_once();
  }

  v7 = sub_2161C();
  sub_CD94(v7, qword_38CE8);
  v8 = v6;
  v9 = sub_215FC();
  v10 = sub_2173C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *&v2[v5];
    _os_log_impl(&dword_0, v9, v10, "backgroundStyleTransitionProgress: %f", v11, 0xCu);
  }

  v12 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  *&v12[v13] = a1;
  v14 = v12;
  sub_12410();
  v15 = v14;
  v16 = sub_215FC();
  v17 = sub_2173C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *&v12[v13];
    _os_log_impl(&dword_0, v16, v17, "backgroundStyleTransitionProgress: %f", v18, 0xCu);
  }

  v19 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial);
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
  swift_beginAccess();
  *&v19[v20] = a1;
  v21 = v19;
  sub_12410();
  v22 = v21;
  v23 = sub_215FC();
  v24 = sub_2173C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *&v19[v20];
    _os_log_impl(&dword_0, v23, v24, "backgroundStyleTransitionProgress: %f", v25, 0xCu);
  }

  v26 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial);
  if (v26)
  {
    v27 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
    swift_beginAccess();
    *&v26[v27] = a1;
    v28 = v26;
    sub_12410();
    v29 = v28;
    v30 = sub_215FC();
    v31 = sub_2173C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = *&v26[v27];
      _os_log_impl(&dword_0, v30, v31, "backgroundStyleTransitionProgress: %f", v32, 0xCu);
    }
  }

  v33 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial);
  if (v33)
  {
    v34 = OBJC_IVAR___NTKExactitudesDialView_backgroundStyleTransitionProgress;
    swift_beginAccess();
    *&v33[v34] = a1;
    v35 = v33;
    sub_12410();
    v36 = v35;
    v37 = sub_215FC();
    v38 = sub_2173C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = *&v33[v34];
      _os_log_impl(&dword_0, v37, v38, "backgroundStyleTransitionProgress: %f", v39, 0xCu);
    }
  }
}

void ExactitudesFaceDialsView.setColorsWrapper(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors;
  v4 = *(a1 + OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors);
  v5 = *(a1 + OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 8);
  v6 = *(a1 + OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 16);
  v7 = *(a1 + OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 24);
  v8 = (v1 + OBJC_IVAR___NTKExactitudesFaceDialsView_colors);
  v9 = *(v1 + OBJC_IVAR___NTKExactitudesFaceDialsView_colors);
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  *v8 = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  sub_18748(v9, v10, v11, v12);
  v17 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial);
  if (!v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v81 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial;
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v20 = &v17[OBJC_IVAR___NTKExactitudesDialView_colors];
  swift_beginAccess();
  v21 = *v20;
  v22 = *(v20 + 1);
  *v20 = v18;
  *(v20 + 1) = v19;
  v23 = v18;
  v24 = v19;
  v25 = v23;
  v26 = v24;
  v27 = v17;

  sub_12410();
  v28 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial;
  v29 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial);
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = *(v3 + 8);
  v31 = *(v3 + 24);
  v32 = &v29[OBJC_IVAR___NTKExactitudesDialView_colors];
  swift_beginAccess();
  v34 = *v32;
  v33 = *(v32 + 1);
  *v32 = v30;
  *(v32 + 1) = v31;
  v35 = v30;
  v36 = v31;
  v37 = v35;
  v38 = v36;
  v39 = v29;

  sub_12410();
  v40 = OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial;
  v41 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial);
  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = *v3;
  v43 = *(v3 + 24);
  v44 = &v41[OBJC_IVAR___NTKExactitudesDialView_colors];
  swift_beginAccess();
  v45 = *v44;
  v46 = *(v44 + 1);
  *v44 = v42;
  *(v44 + 1) = v43;
  v47 = v42;
  v48 = v43;
  v49 = v47;
  v50 = v48;
  v51 = v41;

  sub_12410();
  v52 = *(v2 + v81);
  if (!v52)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v52 setNeedsDisplay];
  v53 = *(v2 + v28);
  if (!v53)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v53 setNeedsDisplay];
  v54 = *(v2 + v40);
  if (!v54)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v54 setNeedsDisplay];
  v55 = OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial;
  v56 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial);
  if (v56)
  {
    v57 = *(v3 + 16);
    v58 = *(v3 + 24);
    v59 = &v56[OBJC_IVAR___NTKExactitudesDialView_colors];
    swift_beginAccess();
    v60 = *v59;
    v61 = *(v59 + 1);
    *v59 = v57;
    *(v59 + 1) = v58;
    v62 = v57;
    v63 = v58;
    v64 = v62;
    v65 = v63;
    v66 = v56;

    sub_12410();
  }

  v67 = OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial;
  v68 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial);
  if (v68)
  {
    v69 = *(v3 + 8);
    v70 = *(v3 + 24);
    v71 = &v68[OBJC_IVAR___NTKExactitudesDialView_colors];
    swift_beginAccess();
    v72 = *v71;
    v73 = *(v71 + 1);
    *v71 = v69;
    *(v71 + 1) = v70;
    v74 = v69;
    v75 = v70;
    v76 = v74;
    v77 = v75;
    v78 = v68;

    sub_12410();
  }

  v79 = *(v2 + v55);
  if (v79)
  {
    [v79 setNeedsDisplay];
  }

  v80 = *(v2 + v67);
  if (v80)
  {
    [v80 setNeedsDisplay];
  }
}

void sub_15384(void *a1, double a2, uint64_t a3, uint64_t a4, void (*a5)(double))
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a2);
}

void sub_15484(void *a1, void *a2, void *a3, const char *a4, double a5)
{
  v6 = v5;
  *(v5 + *a1) = a5;
  v7 = *(v5 + *a2);
  if (v7)
  {
    v11 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
    swift_beginAccess();
    *&v7[v11] = a5;
    v12 = v7;
    sub_F730();

    v13 = *(v6 + *a3);
    if (v13)
    {
      v14 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
      swift_beginAccess();
      *&v13[v14] = a5;
      v15 = v13;
      sub_F730();
    }

    if (qword_37A20 != -1)
    {
      swift_once();
    }

    v16 = sub_2161C();
    sub_CD94(v16, qword_38CE8);
    v17 = sub_215FC();
    v18 = sub_2171C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a5;
      _os_log_impl(&dword_0, v17, v18, a4, v19, 0xCu);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1562C(uint64_t a1)
{
  v2 = v1;
  if (a1 == 1)
  {
    v4 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded;
    swift_beginAccess();
    if ((*(v1 + v4) & 1) == 0)
    {
      *(v1 + v4) = 1;
      *(v1 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDialExpanded) = 1;
      v5 = OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress;
      *(v1 + OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress) = 0x3FF0000000000000;
      v6 = *(v1 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial);
      if (!v6)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
      swift_beginAccess();
      *&v6[v7] = 0x3FF0000000000000;
      v8 = v6;
      sub_F730();

      v9 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial);
      if (v9)
      {
        v10 = *(v2 + v5);
        v11 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
        swift_beginAccess();
        *&v9[v11] = v10;
        v12 = v9;
        sub_F730();
      }
    }

    v13 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial);
    if (v13)
    {
LABEL_13:
      v24 = *&v13[OBJC_IVAR___NTKExactitudesDialView__state];
      *&v13[OBJC_IVAR___NTKExactitudesDialView__state] = a1;
      v25 = v13;
      sub_F1A0(v24);

      return;
    }

    __break(1u);
  }

  if (!a1)
  {
    v14 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded;
    swift_beginAccess();
    *(v2 + v14) = 0;
    *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDialExpanded) = 0;
    v15 = OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress;
    *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress) = 0;
    v16 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial;
    v17 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial);
    if (v17)
    {
      v18 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
      swift_beginAccess();
      *&v17[v18] = 0;
      v19 = v17;
      sub_F730();

      v20 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial);
      if (v20)
      {
        v21 = *(v2 + v15);
        v22 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
        swift_beginAccess();
        *&v20[v22] = v21;
        v23 = v20;
        sub_F730();
      }

      v13 = *(v2 + v16);
      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  sub_2186C();
  __break(1u);
}

void sub_15884(uint64_t a1)
{
  v2 = v1;
  if (a1 != 1)
  {
    if (a1)
    {
      return;
    }

    v4 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded;
    swift_beginAccess();
    *(v2 + v4) = 0;
    *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDialExpanded) = 0;
    v5 = OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress;
    *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress) = 0;
    v6 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial;
    v7 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial);
    if (!v7)
    {
      __break(1u);
      goto LABEL_16;
    }

    v8 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
    swift_beginAccess();
    *&v7[v8] = 0;
    v9 = v7;
    sub_F730();

    v10 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial);
    if (v10)
    {
      v11 = *(v2 + v5);
      v12 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
      swift_beginAccess();
      *&v10[v12] = v11;
      v13 = v10;
      sub_F730();
    }

    v14 = *(v2 + v6);
    if (v14)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v15 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded;
  swift_beginAccess();
  if ((*(v2 + v15) & 1) == 0)
  {
    *(v2 + v15) = 1;
    *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDialExpanded) = 1;
    v16 = OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress;
    *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress) = 0x3FF0000000000000;
    v17 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial);
    if (!v17)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v18 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
    swift_beginAccess();
    *&v17[v18] = 0x3FF0000000000000;
    v19 = v17;
    sub_F730();

    v20 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial);
    if (v20)
    {
      v21 = *(v2 + v16);
      v22 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
      swift_beginAccess();
      *&v20[v22] = v21;
      v23 = v20;
      sub_F730();
    }
  }

  v14 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial);
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_13:
  v24 = *&v14[OBJC_IVAR___NTKExactitudesDialView__state];
  *&v14[OBJC_IVAR___NTKExactitudesDialView__state] = a1;
  v25 = v14;
  sub_F1A0(v24);
}

void sub_15B08(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_15BEC(void (*a1)(void))
{
  v3 = v1;
  v4 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded;
  swift_beginAccess();
  if (*(v3 + v4) == 1)
  {
    v5 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial);
    if (!v5)
    {
      __break(1u);
      goto LABEL_9;
    }

    v6 = v5;
    a1();
  }

  v7 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded;
  swift_beginAccess();
  if (*(v3 + v7) != 1)
  {
    return;
  }

  v8 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  a1();
}

void ExactitudesFaceDialsView.setOverrideDate(_:duration:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_CA10(&qword_37C80, &qword_251F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24[-v8];
  v10 = sub_215AC();
  v11 = (*(*(v10 - 8) + 48))(a1, 1, v10);
  v12 = OBJC_IVAR___NTKExactitudesFaceDialsView__isShowOverride;
  if ((v11 != 1) != *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView__isShowOverride))
  {
    v13 = v11;
    if (v11 == 1)
    {
      v23 = OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible;
      if (*(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible) == 1)
      {
        sub_16730(0, 1, a2);
        sub_16730(0, 2, a2);
        *(v2 + v23) = 0;
      }
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial);
      if (v14)
      {
        sub_CA58(a1, v9);
        v15 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
        swift_beginAccess();
        v16 = v14;
        sub_187A0(v9, v14 + v15);
        swift_endAccess();
        v17 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
        swift_beginAccess();
        ExactitudesDialView.updateDial(for:)(*&v16[v17]);

        sub_11958(v9);
      }

      v18 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial);
      if (v18)
      {
        sub_CA58(a1, v9);
        v19 = OBJC_IVAR___NTKExactitudesDialView_overrideDate;
        swift_beginAccess();
        v20 = v18;
        sub_187A0(v9, v18 + v19);
        swift_endAccess();
        v21 = OBJC_IVAR___NTKExactitudesDialView_expansionTransitionProgress;
        swift_beginAccess();
        ExactitudesDialView.updateDial(for:)(*&v20[v21]);

        sub_11958(v9);
      }

      v22 = OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible;
      if ((*(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible) & 1) == 0)
      {
        sub_16730(1, 1, a2);
        sub_16730(1, 2, a2);
        *(v3 + v22) = 1;
      }
    }

    *(v3 + v12) = v13 != 1;
  }
}

uint64_t sub_161AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);

  return v7;
}

uint64_t ExactitudesFaceDialsView.isFrozen.getter()
{
  v1 = OBJC_IVAR___NTKExactitudesFaceDialsView_isFrozen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_162C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = a3;
}

uint64_t ExactitudesFaceDialsView.isFrozen.setter(char a1)
{
  v3 = OBJC_IVAR___NTKExactitudesFaceDialsView_isFrozen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall ExactitudesFaceDialsView.showInactiveDials()()
{
  v1 = OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible;
  if ((*(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible) & 1) == 0)
  {
    sub_16730(1, 1, 0.0);
    sub_16730(1, 2, 0.0);
    *(v0 + v1) = 1;
  }
}

Swift::Void __swiftcall ExactitudesFaceDialsView.hideInactiveDials()()
{
  v1 = OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible;
  if (*(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible) == 1)
  {
    sub_16730(0, 1, 0.0);
    sub_16730(0, 2, 0.0);
    *(v0 + v1) = 0;
  }
}

void sub_16730(char a1, char a2, double a3)
{
  if (!a2)
  {
    return;
  }

  if (a2 != 1)
  {
    v7 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial);
    if (v7)
    {
      v8 = &OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial;
      goto LABEL_7;
    }

LABEL_47:
    __break(1u);
    return;
  }

  v7 = *(v3 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial);
  if (!v7)
  {
    __break(1u);
    goto LABEL_47;
  }

  v8 = &OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial;
LABEL_7:
  v9 = *(v3 + *v8);
  v10 = v7;
  if (v9)
  {
    v52 = v10;
    v51 = v9;
    v11 = [v51 layer];
    if (v11)
    {
      v12 = v11;
      v13 = [v52 layer];
      if (a3 > 0.0)
      {
        v14 = sub_2163C();
        [v13 removeAnimationForKey:v14];

        v15 = sub_2163C();
        [v12 removeAnimationForKey:v15];

        v16 = sub_18BCC(a3);
        v17 = sub_18CD4(a3);
        v18 = v17;
        if (a1)
        {
          v19 = v17;
        }

        else
        {
          v19 = v16;
        }

        if (a1)
        {
          v20 = v16;
        }

        else
        {
          v20 = v17;
        }

        v21 = v20;
        v22 = v19;
        v23 = sub_2163C();
        [v12 addAnimation:v21 forKey:v23];

        if (a1)
        {
          if (a2 == 2)
          {
            v24 = OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded;
            swift_beginAccess();
            if ((*(v3 + v24) & 1) == 0)
            {
              v25 = OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDialExpanded;
              goto LABEL_36;
            }
          }

          else
          {
            v43 = OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded;
            swift_beginAccess();
            if ((*(v3 + v43) & 1) == 0)
            {
              v25 = OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDialExpanded;
LABEL_36:
              if ((*(v3 + v25) & 1) == 0)
              {
                v44 = v18;
                [v44 setBeginTime:CACurrentMediaTime() + a3];
                [v44 setDuration:0.0];
              }
            }
          }
        }

        v45 = sub_2163C();
        [v13 addAnimation:v22 forKey:v45];

        if (qword_37A38 != -1)
        {
          swift_once();
        }

        v46 = sub_2161C();
        sub_CD94(v46, qword_38D30);
        v36 = v13;
        v47 = sub_215FC();
        v48 = sub_2171C();

        if (!os_log_type_enabled(v47, v48))
        {

          goto LABEL_44;
        }

        v49 = swift_slowAlloc();
        *v49 = 134217984;
        [v36 opacity];
        *(v49 + 4) = v50;
        _os_log_impl(&dword_0, v47, v48, "Finish fade transition with active dial opacity: %f", v49, 0xCu);

LABEL_42:
LABEL_44:

        return;
      }

      if (a2 == 1)
      {
        v26 = 0x736574756E696DLL;
      }

      else
      {
        v26 = 0x73646E6F636573;
      }

      if (qword_37A38 != -1)
      {
        swift_once();
      }

      v27 = sub_2161C();
      sub_CD94(v27, qword_38D30);

      v28 = v13;
      v29 = sub_215FC();
      v30 = sub_2171C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v53[0] = v32;
        *v31 = 136315394;
        *(v31 + 4) = sub_17BE4(v26, 0xE700000000000000, v53);
        *(v31 + 12) = 2048;
        [v28 opacity];
        *(v31 + 14) = v33;
        _os_log_impl(&dword_0, v29, v30, "Begin instant transition for %s with active dial opacity: %f", v31, 0x16u);
        sub_18E28(v32);
      }

      v34 = sub_2163C();
      [v28 removeAnimationForKey:v34];

      [v28 setHidden:a1 & 1];
      v35 = sub_2163C();
      [v12 removeAnimationForKey:v35];

      [v12 setHidden:(a1 & 1) == 0];

      v36 = v28;
      v37 = sub_215FC();
      v38 = sub_2171C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v53[0] = v40;
        *v39 = 136315394;
        v41 = sub_17BE4(v26, 0xE700000000000000, v53);

        *(v39 + 4) = v41;
        *(v39 + 12) = 2048;
        [v36 opacity];
        *(v39 + 14) = v42;
        _os_log_impl(&dword_0, v37, v38, "Finish instant transition for %s with active dial opacity: %f", v39, 0x16u);
        sub_18E28(v40);

        goto LABEL_42;
      }
    }

    v10 = v51;
  }
}

id ExactitudesFaceDialsView.init(frame:device:colorsWrapper:)(void *a1, char *a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial] = 0;
  v13 = &v6[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v6[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded] = 0;
  v6[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded] = 0;
  v6[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDialExpanded] = 0;
  v6[OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDialExpanded] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_secondHandExpansionFactor] = 0x4014000000000000;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_minuteHandExpansionFactor] = 0x4014000000000000;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_miniClockScale] = 0x3FE07AE147AE147BLL;
  v6[OBJC_IVAR___NTKExactitudesFaceDialsView__isShowOverride] = 0;
  v6[OBJC_IVAR___NTKExactitudesFaceDialsView_isFrozen] = 0;
  v6[OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible] = 0;
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_device] = a1;
  v14 = a1;
  sub_1818C(v14, __src);
  memcpy(&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics], __src, 0x148uLL);
  v15 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors];
  v16 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 8];
  v18 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 16];
  v17 = *&a2[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors + 24];
  v19 = *v13;
  v20 = *(v13 + 1);
  v21 = *(v13 + 2);
  v22 = *(v13 + 3);
  *v13 = v15;
  *(v13 + 1) = v16;
  *(v13 + 2) = v18;
  *(v13 + 3) = v17;
  v23 = v15;
  v24 = v16;
  v25 = v18;
  v26 = v17;
  sub_18748(v19, v20, v21, v22);
  *&v6[OBJC_IVAR___NTKExactitudesFaceDialsView_style] = 0;
  v31.receiver = v6;
  v31.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a3, a4, a5, a6);
  sub_171DC();
  sub_173AC();
  sub_17580();

  return v27;
}

void sub_171DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 160];
  v3 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 304];
  v4 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 312];
  v5 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 272];
  v6 = v5 - *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 264];
  v31 = 0;
  v30 = 1;
  v29 = 1;
  v7 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics];
  v8 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 320];
  sub_C428(v32);
  LOBYTE(v26) = 0;
  LOBYTE(v27) = 1;
  LOBYTE(v28) = 1;
  [v0 bounds];
  v13 = &v0[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  if (*&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_colors])
  {
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = *(v13 + 2);
    v19 = *(v13 + 3);
    v20 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_device];
    v21 = objc_allocWithZone(type metadata accessor for ExactitudesDialView());
    v22 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(&v25, v18, v19, v20, v14, v15, v16, v17);
    v23 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial];
    *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial] = v22;
    v24 = v22;

    [v1 addSubview:v24];
  }

  else
  {
    __break(1u);
  }
}

void sub_173AC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 160];
  v3 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 304];
  v4 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 312];
  v5 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 264];
  v6 = v5 - *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 256];
  v31 = 0;
  v30 = 1;
  v29 = 1;
  v7 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics];
  v8 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 320];
  sub_C428(v32);
  LOBYTE(v26) = 0;
  LOBYTE(v27) = 1;
  LOBYTE(v28) = 1;
  [v0 bounds];
  v13 = &v0[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  if (*&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_colors])
  {
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = *(v13 + 3);
    v19 = *(v13 + 1);
    v20 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_device];
    v21 = objc_allocWithZone(type metadata accessor for ExactitudesDialView());
    v22 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(&v25, v19, v18, v20, v14, v15, v16, v17);
    v23 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial];
    *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial] = v22;
    v24 = v22;

    [v1 addSubview:v24];
  }

  else
  {
    __break(1u);
  }
}

void sub_17580()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 160];
  v3 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 280];
  v4 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 288];
  v5 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 296];
  v6 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 256];
  v30 = 0;
  v29 = 0;
  v28 = 1;
  v7 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics];
  v8 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_metrics + 320];
  sub_C428(v31);
  LOBYTE(v25) = 0;
  LOBYTE(v26) = 0;
  LOBYTE(v27) = 1;
  [v0 bounds];
  v13 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_colors];
  if (v13)
  {
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_colors + 24];
    v19 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_device];
    v20 = objc_allocWithZone(type metadata accessor for ExactitudesDialView());
    v21 = ExactitudesDialView.init(frame:dialConfiguration:colors:device:)(&v24, v13, v18, v19, v14, v15, v16, v17);
    v22 = *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial];
    *&v0[OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial] = v21;
    v23 = v21;

    [v1 addSubview:v23];
  }

  else
  {
    __break(1u);
  }
}

id ExactitudesTickLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id FaceDialColorsWrapper.__allocating_init(hourColor:minuteColor:secondColor:foregroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id FaceDialColorsWrapper.init(hourColor:minuteColor:secondColor:foregroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___NTKExactitudesFaceDialColorsWrapper_colors];
  *v5 = a1;
  *(v5 + 1) = a2;
  *(v5 + 2) = a3;
  *(v5 + 3) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for FaceDialColorsWrapper();
  return objc_msgSendSuper2(&v7, "init");
}

id ExactitudesTickLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FaceDialColorsWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceDialColorsWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_17BE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_17CB0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18E74(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_18E28(v11);
  return v7;
}

unint64_t sub_17CB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_17DBC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2178C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_17DBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_17E08(a1, a2);
  sub_17F38(&off_31020);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_17E08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_18024(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2178C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2169C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_18024(v10, 0);
        result = sub_2176C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_17F38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_18098(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18024(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_CA10(&qword_37D40, &qword_25780);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18098(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_CA10(&qword_37D40, &qword_25780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_1818C@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  v4 = [objc_allocWithZone(CLKDeviceMetrics) initWithDevice:a1 identitySizeClass:7];
  [a1 screenScale];
  v84 = v5;
  [v4 scaledValue:36.5];
  v83 = v6;
  [v4 scaledValue:60.5];
  v82 = v7;
  [v4 scaledValue:84.5];
  v81 = v8;
  [v4 scaledValue:24.0];
  v80 = v9;
  [v4 scaledValue:24.0];
  v79 = v10;
  [v4 scaledValue:7.0];
  v78 = v11;
  [v4 scaledValue:4.0];
  v77 = v12;
  [v4 scaledValue:2.0];
  v76 = v13;
  [v4 scaledValue:7.0];
  v75 = v14;
  [v4 scaledValue:3.0];
  v74 = v15;
  [v4 scaledValue:6.0];
  v73 = v16;
  [v4 scaledValue:4.0];
  v72 = v17;
  [v4 scaledValue:7.0];
  v71 = v18;
  [v4 scaledValue:4.0];
  v70 = v19;
  [v4 scaledValue:2.0];
  v69 = v20;
  [v4 scaledValue:6.0];
  v68 = v21;
  [v4 scaledValue:4.0];
  v67 = v22;
  [v4 scaledValue:1.0];
  v66 = v23;
  [v4 scaledValue:20.02];
  v25 = v24;
  v61 = v24;
  [v4 scaledValue:17.35];
  v27 = v26;
  v60 = v26;
  [v4 scaledValue:17.35];
  v29 = v28;
  v59 = v28;
  [v4 scaledValue:400.0];
  v65 = v30;
  [v4 scaledValue:500.0];
  v64 = v31;
  [v4 scaledValue:540.0];
  v63 = v32;
  [v4 scaledValue:540.0];
  v62 = v33;
  v34 = objc_opt_self();
  v35 = [v34 numericSoftFontOfSize:v25 weight:UIFontWeightRegular];
  v36 = [v34 numericSoftFontOfSize:v27 weight:UIFontWeightRegular];
  v37 = [v34 numericSoftFontOfSize:v29 weight:UIFontWeightRegular];
  [v4 scaledValue:3.0];
  v58 = v38;
  [v4 scaledValue:22.25];
  v57 = v39;
  [v4 scaledValue:31.75];
  v41 = v40;
  [v4 scaledValue:41.5];
  v43 = v42;
  [v4 scaledValue:5.5];
  v45 = v44;
  [v4 scaledValue:3.0];
  v47 = v46;
  [v4 scaledValue:1.5];
  v49 = v48;
  [v4 scaledValue:5.0];
  v51 = v50;
  [v4 scaledValue:2.5];
  v53 = v52;
  [v4 scaledValue:2.0];
  v55 = v54;

  *a2 = v84;
  *(a2 + 1) = v83;
  *(a2 + 2) = v82;
  *(a2 + 3) = v81;
  *(a2 + 4) = v80;
  *(a2 + 5) = v79;
  *(a2 + 6) = v78;
  *(a2 + 7) = v77;
  *(a2 + 8) = v76;
  *(a2 + 9) = v75;
  *(a2 + 10) = v74;
  *(a2 + 11) = v75;
  *(a2 + 12) = v73;
  *(a2 + 13) = v72;
  *(a2 + 14) = v71;
  *(a2 + 15) = v70;
  *(a2 + 16) = v69;
  *(a2 + 17) = v71;
  *(a2 + 18) = v68;
  *(a2 + 19) = v67;
  *(a2 + 20) = v66;
  a2[21] = v61;
  a2[22] = v60;
  a2[23] = v59;
  *(a2 + 24) = v65;
  *(a2 + 25) = v64;
  *(a2 + 26) = v63;
  *(a2 + 27) = v62;
  *(a2 + 28) = v35;
  *(a2 + 29) = v36;
  *(a2 + 30) = v37;
  result = v57;
  *(a2 + 31) = v58;
  a2[32] = v57;
  *(a2 + 33) = v41;
  *(a2 + 34) = v43;
  *(a2 + 35) = v45;
  *(a2 + 36) = v47;
  *(a2 + 37) = v49;
  *(a2 + 38) = v51;
  *(a2 + 39) = v53;
  *(a2 + 40) = v55;
  return result;
}

void sub_1865C()
{
  if (qword_37A20 != -1)
  {
    swift_once();
  }

  v0 = sub_2161C();
  sub_CD94(v0, qword_38CE8);
  v1 = sub_215FC();
  v2 = sub_2171C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SNEPO setStyle called", v3, 2u);
  }

  ExactitudesFaceDialsView.setDialsToCurrentStyleNoAnimation()();
}

void sub_18748(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_187A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_CA10(&qword_37C80, &qword_251F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_18838()
{
  result = qword_37C88;
  if (!qword_37C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37C88);
  }

  return result;
}

uint64_t sub_188B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 224);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_189A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 224) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18A4C()
{
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDial) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDial) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_hoursDial) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDial) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDial) = 0;
  v1 = (v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_colors);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondsDialExpanded) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_minutesDialExpanded) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveSecondsDialExpanded) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_inactiveMinutesDialExpanded) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView__secondsDialExpansionTransitionProgress) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView__minutesDialExpansionTransitionProgress) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_secondHandExpansionFactor) = 0x4014000000000000;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_minuteHandExpansionFactor) = 0x4014000000000000;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_miniClockScale) = 0x3FE07AE147AE147BLL;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView__isShowOverride) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView_isFrozen) = 0;
  *(v0 + OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible) = 0;
  sub_217EC();
  __break(1u);
}

id sub_18BCC(double a1)
{
  v2 = sub_2163C();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  v4 = v3;
  [v4 setDuration:a1];
  isa = sub_216FC().super.super.isa;
  [v4 setFromValue:isa];

  v6 = sub_216FC().super.super.isa;
  [v4 setToValue:v6];

  [v4 setRemovedOnCompletion:0];
  [v4 setFillMode:kCAFillModeForwards];

  return v4;
}

id sub_18CD4(double a1)
{
  v2 = sub_2163C();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  v4 = v3;
  [v4 setDuration:a1];
  isa = sub_216FC().super.super.isa;
  [v4 setFromValue:isa];

  v6 = sub_216FC().super.super.isa;
  [v4 setToValue:v6];

  v7 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
  [v4 setTimingFunction:v7];

  [v4 setRemovedOnCompletion:0];
  [v4 setFillMode:kCAFillModeForwards];

  return v4;
}

uint64_t sub_18E28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_18E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void ExactitudesDialSlice.configuration.setter(const void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration);
  swift_beginAccess();
  memcpy(v3, a1, 0x172uLL);
  memcpy(__dst, a1, 0x172uLL);
  if (sub_CE08(__dst) != 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_rootLayer);
    memcpy(v5, v3, 0x172uLL);
    if (sub_CE08(v5) == 1)
    {
      __break(1u);
    }

    else
    {
      [v4 setFrame:{0.0, 0.0, v3[4], v3[5]}];
      sub_197E4(0);
      sub_197E4(1);
      sub_197E4(2);
      sub_197E4(3);
      CALayer.disableLayerActionsRecursively()();
    }
  }
}

Swift::Void __swiftcall ExactitudesDialSlice.updateTickColors(primaryColor:secondaryColor:tertiaryColor:quaternaryColor:)(UIColor primaryColor, UIColor secondaryColor, UIColor tertiaryColor, UIColor quaternaryColor)
{
  v8 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor);
  *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor) = primaryColor;
  v9 = primaryColor.super.isa;

  v10 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor);
  *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor) = secondaryColor;
  v11 = secondaryColor.super.isa;

  v12 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor);
  *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor) = tertiaryColor;
  v13 = tertiaryColor.super.isa;

  v14 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor);
  *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor) = quaternaryColor;
  v15 = quaternaryColor.super.isa;

  v16 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickLayer);
  v17 = [(objc_class *)v9 CGColor];
  [v16 setBackgroundColor:v17];

  v18 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickLayer);
  v19 = [(objc_class *)v11 CGColor];
  [v18 setBackgroundColor:v19];

  v20 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickLayer);
  v21 = [(objc_class *)v13 CGColor];
  [v20 setBackgroundColor:v21];

  v22 = *(v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickLayer);
  v23 = [(objc_class *)v15 CGColor];
  [v22 setBackgroundColor:v23];
}

void *ExactitudesDialSlice.configuration.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  swift_beginAccess();
  return memcpy(a1, (v1 + v3), 0x172uLL);
}

void (*ExactitudesDialSlice.configuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x300uLL);
  }

  *a1 = v3;
  *(v3 + 752) = v1;
  *(v3 + 760) = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  swift_beginAccess();
  return sub_19264;
}

void sub_19264(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    v3 = v2[95];
    v4 = v2[94];
    swift_endAccess();
    memcpy(v2, (v4 + v3), 0x172uLL);
    if (sub_CE08(v2) != 1)
    {
      v5 = v2[94];
      v6 = *(v5 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_rootLayer);
      memcpy(v2 + 47, (v5 + v2[95]), 0x172uLL);
      if (sub_CE08((v2 + 47)) == 1)
      {
        __break(1u);
        return;
      }

      v7 = v2[94] + v2[95];
      [v6 setFrame:{0.0, 0.0, *(v7 + 32), *(v7 + 40)}];
      sub_197E4(0);
      sub_197E4(1);
      sub_197E4(2);
      sub_197E4(3);
      CALayer.disableLayerActionsRecursively()();
    }
  }

  free(v2);
}

NTKExactitudesFaceBundle::ExactitudesDialSlice::DialState_optional __swiftcall ExactitudesDialSlice.DialState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = NTKExactitudesFaceBundle_ExactitudesDialSlice_DialState_expanded;
  }

  else
  {
    v1.value = NTKExactitudesFaceBundle_ExactitudesDialSlice_DialState_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_193A0()
{
  v1 = *v0;
  sub_2188C();
  sub_2189C(v1);
  return sub_218AC();
}

Swift::Int sub_19414()
{
  v1 = *v0;
  sub_2188C();
  sub_2189C(v1);
  return sub_218AC();
}

void *sub_19458@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

char *ExactitudesDialSlice.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  sub_C2B8(__src);
  memcpy(&v0[v2], __src, 0x172uLL);
  v3 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor;
  v4 = objc_opt_self();
  *&v0[v3] = [v4 whiteColor];
  v5 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor;
  *&v0[v5] = [v4 whiteColor];
  v6 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor;
  *&v0[v6] = [v4 whiteColor];
  v7 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor;
  *&v0[v7] = [v4 whiteColor];
  v8 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_rootLayer;
  *&v0[v8] = [objc_allocWithZone(CALayer) init];
  v9 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickLayer;
  v10 = type metadata accessor for ExactitudesTickLayer();
  *&v0[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTicksLayer;
  *&v0[v11] = [objc_allocWithZone(CAReplicatorLayer) init];
  v12 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTicksSublayer;
  *&v0[v12] = [objc_allocWithZone(CAReplicatorLayer) init];
  v13 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickTransformLayer;
  *&v0[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickLayer;
  *&v0[v14] = [objc_allocWithZone(v10) init];
  v15 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTicksLayer;
  *&v0[v15] = [objc_allocWithZone(CAReplicatorLayer) init];
  v16 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTicksSublayer;
  *&v0[v16] = [objc_allocWithZone(CAReplicatorLayer) init];
  v17 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickTransformLayer;
  *&v0[v17] = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickLayer;
  *&v0[v18] = [objc_allocWithZone(v10) init];
  v19 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTicksLayer;
  *&v0[v19] = [objc_allocWithZone(CAReplicatorLayer) init];
  v20 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTicksSublayer;
  *&v0[v20] = [objc_allocWithZone(CAReplicatorLayer) init];
  v21 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickTransformLayer;
  *&v0[v21] = [objc_allocWithZone(CALayer) init];
  v22 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickLayer;
  *&v0[v22] = [objc_allocWithZone(v10) init];
  v23 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTicksLayer;
  *&v0[v23] = [objc_allocWithZone(CAReplicatorLayer) init];
  v24 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTicksSublayer;
  *&v0[v24] = [objc_allocWithZone(CAReplicatorLayer) init];
  v25 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickTransformLayer;
  *&v0[v25] = [objc_allocWithZone(CALayer) init];
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v28, "init");
  [v26 addSublayer:*&v26[OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_rootLayer]];
  return v26;
}

void sub_197E4(signed __int8 a1)
{
  v3 = sub_1A2B4(a1);
  v4 = sub_1A424(a1, v3).n128_f64[0];
  if (v4 == 0.0 && v5 == 0.0)
  {
    if (qword_37A20 != -1)
    {
      swift_once();
    }

    v6 = sub_2161C();
    sub_CD94(v6, qword_38CE8);
    oslog = sub_215FC();
    v7 = sub_2172C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, oslog, v7, "setUpTickLayer: tick size is zero", v8, 2u);
    }

    return;
  }

  v9 = v5;
  v10 = v4;
  v11 = *(v1 + *off_316D8[a1]);
  v12 = *(v1 + *off_316B8[a1]);
  v13 = *(v1 + *off_31698[a1]);
  v14 = *(v1 + *off_31678[a1]);
  v76 = v11;
  v77 = *(v1 + *off_316F8[a1]);
  if (v3)
  {
    v15 = sub_201F0(a1);
    v16 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v1 + v16), 0x172uLL);
    v17 = sub_CE08(__dst) == 1;
    if ((v17 | LOBYTE(__dst[28])))
    {
      v18 = 0;
    }

    else
    {
      v18 = __dst[27];
    }

    osloga = v18;
    memcpy(v84, (v1 + v16), 0x172uLL);
    v19 = sub_CE08(v84) == 1;
    if ((v19 | LOBYTE(v84[33])))
    {
      v20 = 0;
    }

    else
    {
      v20 = v84[32];
    }

    memcpy(v83, (v1 + v16), sizeof(v83));
    v21 = sub_CE08(v83) == 1;
    if ((v21 | v83[304]))
    {
      v22 = 0;
    }

    else
    {
      v22 = *&v83[296];
    }

    memcpy(v82, (v1 + v16), 0x172uLL);
    v23 = sub_CE08(v82) == 1;
    v24 = v82[42];
    v25 = v82[43];
  }

  else
  {
    v15 = sub_20078(a1);
    v26 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v1 + v26), 0x172uLL);
    v27 = sub_CE08(__dst);
    v28 = __dst[9];
    if (v27 == 1)
    {
      v28 = 0;
    }

    osloga = v28;
    memcpy(v84, (v1 + v26), 0x172uLL);
    v29 = sub_CE08(v84) == 1;
    if ((v29 | LOBYTE(v84[13])))
    {
      v20 = 0;
    }

    else
    {
      v20 = v84[12];
    }

    memcpy(v83, (v1 + v26), sizeof(v83));
    v30 = sub_CE08(v83) == 1;
    if ((v30 | v83[144]))
    {
      v22 = 0;
    }

    else
    {
      v22 = *&v83[136];
    }

    memcpy(v82, (v1 + v26), 0x172uLL);
    v23 = sub_CE08(v82) == 1;
    v24 = v82[22];
    v25 = v82[23];
  }

  if ((v23 | v25))
  {
    v31 = 0;
  }

  else
  {
    v31 = v24;
  }

  if (v15 >= 1)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        goto LABEL_65;
      }

      if (!v20 || !v22)
      {
        return;
      }

      v36 = v13;
      v13 = v12;
      if (v22 == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_112;
      }

      v12 = v22 / v20 - 1;
      if (__OFSUB__(v22 / v20, 1))
      {
        goto LABEL_103;
      }

      v38 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v38), 0x172uLL);
      v39 = sub_CE08(__dst);
      v40 = *__dst;
      if (v39 == 1)
      {
        v40 = 0.0;
      }

      v35 = v40 * v20;
      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_105;
      }

      if (v35 <= -9.22337204e18)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v75 = v15;
      if (v35 >= 9.22337204e18)
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      osloga = v20;
    }

    else
    {
      if (!a1)
      {
        v32 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
        swift_beginAccess();
        memcpy(__dst, (v1 + v32), 0x172uLL);
        v33 = sub_CE08(__dst);
        v34 = *__dst;
        if (v33 == 1)
        {
          v34 = 0.0;
        }

        v35 = v34 * osloga;
        if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v35 > -9.22337204e18)
        {
          v75 = v15;
          if (v35 < 9.22337204e18)
          {
            v36 = v13;
            v13 = v12;
            v37 = 1;
LABEL_77:
            v48 = v35;
            v74 = v14;
            v49 = v36;
            v50 = v13;
            v51 = v76;
            v78 = v77;
            [v50 setFillMode:kCAFillModeBoth];
            v52 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
            swift_beginAccess();
            memcpy(__dst, (v1 + v52), 0x172uLL);
            v53 = sub_CE08(__dst);
            v54.n128_f64[0] = *&__dst[6] + *&__dst[6];
            if (v53 == 1)
            {
              v54.n128_f64[0] = 0.0;
            }

            v55 = ExactitudesTickLayer.cornerRadius.setter(v54, v54.n128_f64[0]);
            [v50 setPosition:{v55 * 0.5, v56 * 0.5}];
            v57 = *(v1 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_rootLayer);
            [v57 bounds];
            [v50 setFrame:?];
            memcpy(v84, (v1 + v52), 0x172uLL);
            v58 = sub_CE08(v84);
            v59 = *&v84[1];
            if (v58 == 1)
            {
              v59 = 0.0;
            }

            [v50 setContentsScale:v59];
            [v50 setInstanceCount:v37];
            v60 = 6.28318531 / v75;
            CATransform3DMakeRotation(v83, v60, 0.0, 0.0, 1.0);
            [v50 setInstanceTransform:v83];
            if (v48 == 1)
            {
              p_type = (&stru_34FF0 + 16);
              if (a1)
              {
                CATransform3DMakeRotation(v83, v60, 0.0, 0.0, 1.0);
                [v50 setTransform:v83];
              }

              [v57 addSublayer:v50];
              v62 = v49;
              v63 = v78;
              v64 = v74;
            }

            else
            {
              v65 = v49;
              [v65 addSublayer:v50];
              [v65 setFillMode:kCAFillModeBoth];
              memcpy(v83, (v1 + v52), sizeof(v83));
              v66 = sub_CE08(v83);
              v67.n128_f64[0] = *&v83[48] + *&v83[48];
              if (v66 == 1)
              {
                v67.n128_f64[0] = 0.0;
              }

              v68 = ExactitudesTickLayer.cornerRadius.setter(v67, v67.n128_f64[0]);
              [v65 setPosition:{v68 * 0.5, v69 * 0.5}];
              [v57 bounds];
              [v65 setFrame:?];
              memcpy(v82, (v1 + v52), 0x172uLL);
              v70 = sub_CE08(v82);
              v71 = *&v82[1];
              if (v70 == 1)
              {
                v71 = 0.0;
              }

              p_type = &stru_34FF0.type;
              [v65 setContentsScale:v71];
              [v65 setInstanceCount:v48];
              CATransform3DMakeRotation(&v81, 6.28318531 / osloga, 0.0, 0.0, 1.0);
              [v65 setInstanceTransform:&v81];
              if (a1)
              {
                CATransform3DMakeRotation(&v81, v60, 0.0, 0.0, 1.0);
                [v65 setTransform:&v81];
              }

              [v57 addSublayer:v65];
              v62 = v49;
              v63 = v78;
              v64 = v74;
            }

            sub_1A6E4(v64, v63, v10, v9);
            [v51 addSublayer:v64];
            memcpy(v83, (v1 + v52), sizeof(v83));
            v72 = sub_CE08(v83);
            v73 = *&v83[8];
            if (v72 == 1)
            {
              v73 = 0.0;
            }

            [v51 p_type[468]];
            [v50 addSublayer:v51];

            return;
          }

          goto LABEL_98;
        }

        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (!v20)
      {
        return;
      }

      v22 = osloga;
      if (!osloga)
      {
        goto LABEL_99;
      }

      v36 = v13;
      v13 = v12;
      if (v20 == 0x8000000000000000 && osloga == -1)
      {
        goto LABEL_111;
      }

      v12 = v20 / osloga - 1;
      if (__OFSUB__(v20 / osloga, 1))
      {
        goto LABEL_100;
      }

      v41 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v41), 0x172uLL);
      v42 = sub_CE08(__dst);
      v43 = *__dst;
      if (v42 == 1)
      {
        v43 = 0.0;
      }

      v35 = v43 * osloga;
      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_101;
      }

      if (v35 <= -9.22337204e18)
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v75 = v15;
      v31 = 0x43E0000000000000;
      if (v35 >= 9.22337204e18)
      {
        __break(1u);
LABEL_65:
        if (!v22 || !v31)
        {
          return;
        }

        v36 = v13;
        v13 = v12;
        if (v31 == 0x8000000000000000 && v22 == -1)
        {
LABEL_113:
          __break(1u);
          return;
        }

        v44 = v31 / v22;
        v12 = v44 - 1;
        if (__OFSUB__(v44, 1))
        {
          goto LABEL_104;
        }

        v45 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
        swift_beginAccess();
        memcpy(__dst, (v1 + v45), 0x172uLL);
        v46 = sub_CE08(__dst);
        v47 = *__dst;
        if (v46 == 1)
        {
          v47 = 0.0;
        }

        v35 = v47 * v22;
        if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_106;
        }

        if (v35 <= -9.22337204e18)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v75 = v15;
        if (v35 >= 9.22337204e18)
        {
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        osloga = v22;
      }
    }

    v37 = v12;
    goto LABEL_77;
  }
}

BOOL sub_1A2B4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v4), 0x172uLL);
      if (sub_CE08(__dst) != 1 && (__dst[18] & 1) == 0)
      {
        v3 = __dst[17];
        return v3 == 0;
      }
    }

    else
    {
      v6 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v1 + v6), 0x172uLL);
      if (sub_CE08(__dst) != 1 && (__dst[23] & 1) == 0)
      {
        v3 = __dst[22];
        return v3 == 0;
      }
    }

LABEL_14:
    v3 = 0;
    return v3 == 0;
  }

  if (a1)
  {
    v5 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v1 + v5), 0x172uLL);
    if (sub_CE08(__dst) != 1 && (__dst[13] & 1) == 0)
    {
      v3 = __dst[12];
      return v3 == 0;
    }

    goto LABEL_14;
  }

  v2 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  swift_beginAccess();
  memcpy(__dst, (v1 + v2), 0x172uLL);
  if (sub_CE08(__dst) == 1)
  {
    goto LABEL_14;
  }

  v3 = __dst[9];
  return v3 == 0;
}

__n128 sub_1A424(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v6 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
        swift_beginAccess();
        memcpy(__dst, (v2 + v6), sizeof(__dst));
        if (sub_CE08(__dst) != 1 && (__dst[328] & 1) == 0)
        {
          return *&__dst[312];
        }
      }

      else
      {
        v10 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
        swift_beginAccess();
        memcpy(__dst, (v2 + v10), sizeof(__dst));
        if (sub_CE08(__dst) != 1 && (__dst[368] & 1) == 0)
        {
          return *&__dst[352];
        }
      }
    }

    else if (a1)
    {
      v8 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v2 + v8), sizeof(__dst));
      if (sub_CE08(__dst) != 1 && (__dst[288] & 1) == 0)
      {
        return *&__dst[272];
      }
    }

    else
    {
      v3 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v2 + v3), sizeof(__dst));
      if (sub_CE08(__dst) != 1 && (__dst[248] & 1) == 0)
      {
        return *&__dst[232];
      }
    }

    return 0;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v2 + v9), sizeof(__dst));
      if (sub_CE08(__dst) != 1 && (__dst[128] & 1) == 0)
      {
        return *&__dst[112];
      }
    }

    else
    {
      v5 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
      swift_beginAccess();
      memcpy(__dst, (v2 + v5), sizeof(__dst));
      if (sub_CE08(__dst) != 1)
      {
        return *&__dst[80];
      }
    }

    return 0;
  }

  if (a1 == 2)
  {
    v7 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
    swift_beginAccess();
    memcpy(__dst, (v2 + v7), sizeof(__dst));
    if (sub_CE08(__dst) != 1 && (__dst[168] & 1) == 0)
    {
      return *&__dst[152];
    }

    return 0;
  }

  v11 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  swift_beginAccess();
  memcpy(__dst, (v2 + v11), sizeof(__dst));
  if (sub_CE08(__dst) == 1 || (__dst[208] & 1) != 0)
  {
    return 0;
  }

  return *&__dst[192];
}

id sub_1A6E4(void *a1, void *a2, double a3, double a4)
{
  [a1 setFrame:{0.0, 0.0, a3, a4}];
  v7 = v4 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  swift_beginAccess();
  memcpy(__dst, v7, 0x172uLL);
  v8 = sub_CE08(__dst);
  v9 = *&__dst[1];
  if (v8 == 1)
  {
    v9 = 0.0;
  }

  [a1 setContentsScale:v9];
  v10 = [a2 CGColor];
  [a1 setBackgroundColor:v10];

  memcpy(v14, v7, 0x172uLL);
  result = sub_CE08(v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    MidX = CGRectGetMidX(*(v7 + 16));
    memcpy(v13, v7, 0x172uLL);
    result = sub_CE08(v13);
    if (result != 1)
    {
      CGRectGetMidY(*(v7 + 16));
      [a1 setAnchorPoint:{0.5, 0.0}];
      return [a1 setPosition:{MidX, 0.0}];
    }
  }

  __break(1u);
  return result;
}

void ExactitudesDialSlice.updateTicks(for:)()
{
  v1 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), 0x172uLL);
  v2 = sub_CE08(__dst);
  v3.n128_f64[0] = __dst[6] + __dst[6];
  if (v2 == 1)
  {
    v3.n128_f64[0] = 0.0;
  }

  ExactitudesTickLayer.cornerRadius.setter(v3, v3.n128_f64[0]);
  memcpy(v31, (v0 + v1), 0x172uLL);
  v4 = sub_CE08(v31);
  v5.n128_f64[0] = v31[7] + v31[7];
  if (v4 == 1)
  {
    v5.n128_f64[0] = 0.0;
  }

  ExactitudesTickLayer.cornerRadius.setter(v5, v5.n128_f64[0]);
  CLKInterpolateBetweenFloatsClipped();
  v6 = *(v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickTransformLayer);
  [v6 position];
  [v6 setPosition:?];
  v7 = *(v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickTransformLayer);
  [v7 position];
  [v7 setPosition:?];
  v8 = *(v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickTransformLayer);
  [v8 position];
  [v8 setPosition:?];
  v9 = *(v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickTransformLayer);
  [v9 position];
  [v9 setPosition:?];
  v10 = 0;
  v11 = (v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickLayer);
  v12 = (v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickLayer);
  v13 = (v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickLayer);
  v28 = (v0 + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickLayer);
  do
  {
    v18 = *(&off_30EB8 + v10 + 32);
    v19 = (v0 + v1);
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        memcpy(v30, v19, 0x172uLL);
        if (sub_CE08(v30) == 1 || (LOBYTE(v30[1].m13) & 1) != 0)
        {
          v14 = v12;
          goto LABEL_7;
        }

        if (!*&v30[1].m12)
        {
LABEL_25:
          if (v18 > 1)
          {
            v14 = v12;
            if (v18 != 2)
            {
LABEL_6:
              v14 = v11;
            }
          }

          else
          {
            v14 = v28;
            if (v18)
            {
LABEL_27:
              v14 = v13;
            }
          }

LABEL_7:
          v15 = *v14;
          CLKInterpolateBetweenFloatsClipped();
          [v15 setAlpha:?];
          CLKInterpolateBetweenFloatsClipped();
          v17 = v16;
LABEL_8:
          CGAffineTransformMakeScale(v30, v16, v17);
          *&m[0].a = *&v30[0].m11;
          *&m[0].c = *&v30[0].m13;
          *&m[0].tx = *&v30[0].m21;
          CATransform3DMakeAffineTransform(v30, m);
          m[1] = *&v30[0].m23;
          *&m[2].a = *&v30[0].m41;
          *&m[2].c = *&v30[0].m43;
          *&m[0].a = *&v30[0].m11;
          *&m[0].c = *&v30[0].m13;
          *&m[0].tx = *&v30[0].m21;
          [v15 setTransform:m];

          goto LABEL_9;
        }
      }

      else
      {
        memcpy(v30, v19, 0x172uLL);
        if (sub_CE08(v30) == 1 || (LOBYTE(v30[1].m24) & 1) != 0)
        {
          goto LABEL_6;
        }

        if (!*&v30[1].m23)
        {
          goto LABEL_25;
        }
      }
    }

    else if (*(&off_30EB8 + v10 + 32))
    {
      memcpy(v30, v19, 0x172uLL);
      if (sub_CE08(v30) == 1 || (LOBYTE(v30[0].m42) & 1) != 0)
      {
        goto LABEL_27;
      }

      if (!*&v30[0].m41)
      {
        goto LABEL_25;
      }
    }

    else
    {
      memcpy(v30, v19, 0x172uLL);
      if (sub_CE08(v30) == 1)
      {
        v14 = v28;
        goto LABEL_7;
      }

      if (!*&v30[0].m32)
      {
        goto LABEL_25;
      }
    }

    v20 = (v0 + v1);
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        memcpy(v30, v20, 0x172uLL);
        v23 = sub_CE08(v30) == 1;
        if ((v23 | LOBYTE(v30[1].m22)))
        {
          m21 = 0.0;
        }

        else
        {
          m21 = v30[1].m21;
        }

        memcpy(m, (v0 + v1), 0x172uLL);
        if (sub_CE08(m) == 1 || (LOBYTE(m[6].ty) & 1) != 0)
        {
          if (m21 != 0.0)
          {
            goto LABEL_76;
          }

          goto LABEL_9;
        }

        tx = m[6].tx;
        if (m21 == 0.0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        memcpy(v30, v20, 0x172uLL);
        v25 = sub_CE08(v30) == 1;
        if ((v25 | LOBYTE(v30[1].m33)))
        {
          m21 = 0.0;
        }

        else
        {
          m21 = v30[1].m32;
        }

        memcpy(m, (v0 + v1), 0x172uLL);
        if (sub_CE08(m) == 1 || (LOBYTE(m[7].tx) & 1) != 0)
        {
          if (m21 != 0.0)
          {
            goto LABEL_77;
          }

          goto LABEL_9;
        }

        tx = m[7].d;
        if (m21 == 0.0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_71;
    }

    if (v18)
    {
      memcpy(v30, v20, 0x172uLL);
      v24 = sub_CE08(v30) == 1;
      if ((v24 | LOBYTE(v30[1].m11)))
      {
        m21 = 0.0;
      }

      else
      {
        m21 = v30[0].m44;
      }

      memcpy(m, (v0 + v1), 0x172uLL);
      if (sub_CE08(m) != 1 && (LOBYTE(m[6].a) & 1) == 0)
      {
        tx = m[5].ty;
        if (m21 == 0.0)
        {
          goto LABEL_9;
        }

        goto LABEL_71;
      }

      if (m21 != 0.0)
      {
        v22 = v13;
        goto LABEL_78;
      }
    }

    else
    {
      memcpy(v30, v20, 0x172uLL);
      if (sub_CE08(v30) == 1)
      {
        m21 = 0.0;
      }

      else
      {
        m21 = v30[0].m34;
      }

      memcpy(m, (v0 + v1), 0x172uLL);
      if (sub_CE08(m) != 1 && (LOBYTE(m[5].b) & 1) == 0)
      {
        tx = m[5].a;
        if (m21 == 0.0)
        {
          goto LABEL_9;
        }

LABEL_71:
        if (m21 != tx)
        {
          if (v18 > 1)
          {
            if (v18 == 2)
            {
LABEL_76:
              v22 = v12;
            }

            else
            {
LABEL_77:
              v22 = v11;
            }
          }

          else
          {
            v22 = v28;
            if (v18)
            {
              v22 = v13;
            }
          }

          goto LABEL_78;
        }

        goto LABEL_9;
      }

      if (m21 != 0.0)
      {
        v22 = v28;
LABEL_78:
        v15 = *v22;
        CLKInterpolateBetweenFloatsClipped();
        v17 = v27;
        v16 = 1.0;
        goto LABEL_8;
      }
    }

LABEL_9:
    ++v10;
  }

  while (v10 != 4);
}

id ExactitudesTickLayer.__allocating_init(layer:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1AE9C(a1, a1[3]);
  v4 = [v3 initWithLayer:sub_2184C()];
  swift_unknownObjectRelease();
  sub_18E28(a1);
  return v4;
}

void *sub_1AE9C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1AF6C()
{
  result = qword_37E70;
  if (!qword_37E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_37E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExactitudesDialSlice.DialState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExactitudesDialSlice.DialState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1B2D0()
{
  v1 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_configuration;
  sub_C2B8(__src);
  memcpy((v0 + v1), __src, 0x172uLL);
  v2 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryColor;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 whiteColor];
  v4 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryColor;
  *(v0 + v4) = [v3 whiteColor];
  v5 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryColor;
  *(v0 + v5) = [v3 whiteColor];
  v6 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryColor;
  *(v0 + v6) = [v3 whiteColor];
  v7 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_rootLayer;
  *(v0 + v7) = [objc_allocWithZone(CALayer) init];
  v8 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickLayer;
  v9 = type metadata accessor for ExactitudesTickLayer();
  *(v0 + v8) = [objc_allocWithZone(v9) init];
  v10 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTicksLayer;
  *(v0 + v10) = [objc_allocWithZone(CAReplicatorLayer) init];
  v11 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTicksSublayer;
  *(v0 + v11) = [objc_allocWithZone(CAReplicatorLayer) init];
  v12 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_primaryTickTransformLayer;
  *(v0 + v12) = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickLayer;
  *(v0 + v13) = [objc_allocWithZone(v9) init];
  v14 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTicksLayer;
  *(v0 + v14) = [objc_allocWithZone(CAReplicatorLayer) init];
  v15 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTicksSublayer;
  *(v0 + v15) = [objc_allocWithZone(CAReplicatorLayer) init];
  v16 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_secondaryTickTransformLayer;
  *(v0 + v16) = [objc_allocWithZone(CALayer) init];
  v17 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickLayer;
  *(v0 + v17) = [objc_allocWithZone(v9) init];
  v18 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTicksLayer;
  *(v0 + v18) = [objc_allocWithZone(CAReplicatorLayer) init];
  v19 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTicksSublayer;
  *(v0 + v19) = [objc_allocWithZone(CAReplicatorLayer) init];
  v20 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_tertiaryTickTransformLayer;
  *(v0 + v20) = [objc_allocWithZone(CALayer) init];
  v21 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickLayer;
  *(v0 + v21) = [objc_allocWithZone(v9) init];
  v22 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTicksLayer;
  *(v0 + v22) = [objc_allocWithZone(CAReplicatorLayer) init];
  v23 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTicksSublayer;
  *(v0 + v23) = [objc_allocWithZone(CAReplicatorLayer) init];
  v24 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesDialSlice_quaternaryTickTransformLayer;
  *(v0 + v24) = [objc_allocWithZone(CALayer) init];
  sub_217EC();
  __break(1u);
}

Swift::Void __swiftcall CALayer.disableLayerActionsRecursively()()
{
  CALayer.disableLayerActions()();
  v1 = [v0 sublayers];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_119D4();
  v3 = sub_216BC();

  if (v3 >> 62)
  {
    v4 = sub_217FC();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_2177C();
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        CALayer.disableLayerActionsRecursively()();
      }
    }
  }
}

Swift::Void __swiftcall CALayer.disableLayerActions()()
{
  v0 = 23;
  v1 = &unk_30D50;
  do
  {
    v6 = *(v1 - 1);
    v5 = *v1;
    v7 = objc_allocWithZone(NSNull);

    v8 = [v7 init];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_1B910(v6, v5);
    v12 = _swiftEmptyDictionarySingleton[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_2187C();
      __break(1u);
      return;
    }

    v16 = v11;
    if (_swiftEmptyDictionarySingleton[3] < v15)
    {
      sub_1BBD8(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_1B910(v6, v5);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v16)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v21 = v10;
    sub_1C124();
    v10 = v21;
    if (v16)
    {
LABEL_2:
      v2 = v10;

      v3 = _swiftEmptyDictionarySingleton[7];
      v4 = *(v3 + 8 * v2);
      *(v3 + 8 * v2) = v8;
      swift_unknownObjectRelease();
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
    v18 = (_swiftEmptyDictionarySingleton[6] + 16 * v10);
    *v18 = v6;
    v18[1] = v5;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v8;
    v19 = _swiftEmptyDictionarySingleton[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_18;
    }

    _swiftEmptyDictionarySingleton[2] = v20;
LABEL_3:
    v1 += 2;
    --v0;
  }

  while (v0);
  swift_arrayDestroy();
  sub_CA10(&qword_37EA0, &qword_258A8);
  isa = sub_2162C().super.isa;

  [v22 setActions:isa];
}