uint64_t sub_1004C1AC8()
{
  v1 = vcvtq_f64_s64(*(v0 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange));
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v1, 1), v1))).u8[0])
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_10047DA80();
  result = sub_1007A2064();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

id ScrubberMarkerController.init()()
{
  *&v0[OBJC_IVAR____TtC5Books24ScrubberMarkerController_pageCount] = 1;
  *&v0[OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange] = vdupq_n_s64(1uLL);
  *&v0[OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerCurrentPage] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubberMarkerController();
  return objc_msgSendSuper2(&v2, "init");
}

id ScrubberMarkerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubberMarkerController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004C1D14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v7 setUnitsStyle:a2];
  [v7 setAllowedUnits:a3];
  [v7 setMaximumUnitCount:2];
  result = [v7 setFormattingContext:5];
  *a4 = v7;
  return result;
}

uint64_t sub_1004C1DB0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = sub_1004C20D8(a1 & 1, *&v4, *&v4, v4, *&v4);

  return v2;
}

unint64_t sub_1004C1F3C(unint64_t result, uint64_t a2, double a3)
{
  v5 = result;
  if (result >> 62)
  {
    result = sub_1007A38D4();
    v6 = result;
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v6 - a2;
  if (v6 <= a2)
  {
    return result;
  }

  v8 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_29;
  }

  v9 = sub_1007A3784();
LABEL_8:
  v10 = *(v9 + 32);

  v11 = v10 - a3;
  v12 = a2 + 1;
  if (v6 <= a2 + 1)
  {
    return result;
  }

  v13 = v6 - 1;
  if (!v8)
  {
    if (a2 < -1)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v16)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    v15 = v11 + *(*(v5 + 8 * v12 + 32) + 32);
    if (v12 == v13)
    {
      return result;
    }

    if (v12 < v13)
    {
      if (a2 + 2 >= v16 || v13 >= v16)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = *(sub_1007A3784() + 32);
  result = swift_unknownObjectRelease();
  v15 = v11 + v14;
  if (v12 != v13)
  {
    if (v12 >= v13)
    {
      goto LABEL_29;
    }

LABEL_19:
    v17 = v7 - 3;
    for (i = a2 + 6; ; ++i)
    {
      if (v8)
      {
        v19 = *(sub_1007A3784() + 32);
        result = swift_unknownObjectRelease();
        v15 = v15 + v19;
        if (!v17)
        {
          return result;
        }
      }

      else
      {
        v15 = v15 + *(*(v5 + 8 * i) + 32);
        if (!v17)
        {
          return result;
        }
      }

      --v17;
    }
  }

  return result;
}

uint64_t sub_1004C20D8(int a1, unint64_t a2, uint64_t a3, double a4, float a5)
{
  v54 = a2;
  v55 = a3;
  v48 = a1;
  v7 = sub_100796CF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v14 = sub_1007A21D4();
  v53 = *(v14 - 8);
  v15 = v53;
  v16 = __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v15 + 16);
  v47(v18, v20, v14);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = objc_opt_self();
  v46 = ObjCClassFromMetadata;
  v22 = [v45 bundleForClass:ObjCClassFromMetadata];
  v44 = *(v8 + 16);
  v44(v11, v13, v7);
  v49 = v18;
  v51 = v11;
  sub_1007A22D4();
  v56 = v23;
  v24 = *(v8 + 8);
  v52 = v7;
  v50 = v8 + 8;
  v43 = v24;
  v24(v13, v7);
  v25 = *(v53 + 8);
  v25(v20, v14);
  sub_1004C1F3C(v54, v55, a4);
  v27 = v26;
  if (a5 > 0.0)
  {
    v27 = v26 / a5;
  }

  if (v27 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v27;
  }

  if (v26 == -1.0)
  {
    goto LABEL_7;
  }

  if (v28 <= 0.0)
  {

    sub_1007A2154();
    sub_100796C94();
    v42 = v14;
    v47(v49, v20, v14);
    v31 = [v45 bundleForClass:v46];
    v32 = v52;
    v44(v51, v13, v52);
    v33 = sub_1007A22D4();
    v43(v13, v32);
    v25(v20, v42);
    return v33;
  }

  else
  {
    if (v28 >= 60.0)
    {
      if (v48)
      {
        if (qword_100AD1750 != -1)
        {
          swift_once();
        }

        v30 = &qword_100AE6DC0;
      }

      else
      {
        if (qword_100AD1740 != -1)
        {
          swift_once();
        }

        v30 = &qword_100AE6DB0;
      }
    }

    else if (v48)
    {
      if (qword_100AD1758 != -1)
      {
        swift_once();
      }

      v30 = &qword_100AE6DC8;
    }

    else
    {
      if (qword_100AD1748 != -1)
      {
        swift_once();
      }

      v30 = &qword_100AE6DB8;
    }

    v34 = *v30;
    v35 = [v34 stringFromTimeInterval:v28];
    if (!v35)
    {

LABEL_7:

      return 0;
    }

    v36 = v35;
    v37 = sub_1007A2254();
    v39 = v38;

    sub_1001F1160(&unk_100AD5090);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10080B690;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_10000E4C4();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    v41 = sub_1007A2284();

    return v41;
  }
}

uint64_t sub_1004C26AC()
{
  result = sub_1007A3454();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004C2740(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v39 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000AE20(*(a1 + 56) + 32 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_10000AE20(&v35, &v28);
    if (v29)
    {
      sub_1000076D4(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_1000076D4(v33, v30);
      v17 = v2[2];
      if (v2[3] <= v17)
      {

        sub_1003D4168(v17 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
      v19 = v2 + 8;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~v2[(v21 >> 6) + 8]) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = v19[v22];
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~v2[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v2[6] + 16 * v23) = v18;
      sub_1000076D4(v30, (v2[7] + 32 * v23));
      ++v2[2];
      v10 = v32;
    }

    else
    {

      sub_100007840(&v34, &qword_100ADA270);
      v10 = &v28;
    }

    result = sub_100007840(v10, &unk_100AD5B40);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1004C2A0C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE6DD0);
  sub_100008B98(v0, qword_100AE6DD0);
  return sub_10079ACD4();
}

void sub_1004C2A8C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v42 = a1;
  v44 = sub_100796CF4();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_1007A2154();
  sub_100796C94();
  v41 = *(v9 + 16);
  v15 = v11;
  v16 = v8;
  v41(v15, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = ObjCClassFromMetadata;
  v39 = objc_opt_self();
  v18 = [v39 bundleForClass:ObjCClassFromMetadata];
  v38 = *(v2 + 16);
  v33 = v4;
  v19 = v4;
  v20 = v44;
  v38(v19, v7, v44);
  sub_1007A22D4();
  v21 = *(v2 + 8);
  v36 = v2 + 8;
  v37 = v21;
  v21(v7, v20);
  v22 = *(v9 + 8);
  v34 = v9 + 8;
  v35 = v22;
  v22(v14, v16);
  v23 = sub_1007A2214();

  v24 = sub_1007A2214();
  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  sub_1007A2154();
  sub_100796C94();
  v41(v45, v14, v16);
  v26 = [v39 bundleForClass:v40];
  v27 = v44;
  v38(v33, v7, v44);
  sub_1007A22D4();
  v37(v7, v27);
  v35(v14, v16);
  v28 = sub_1007A2214();

  v29 = [objc_opt_self() actionWithTitle:v28 style:0 handler:0];

  [v25 addAction:v29];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    [Strong presentViewController:v25 animated:1 completion:0];
  }
}

void sub_1004C2F10(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

uint64_t sub_1004C2F90()
{
  v1 = *(*v0 + 88);
  v2 = sub_1007A3454();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C3068(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AE6FE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v18[-v7 - 8];
  v9 = sub_1007978B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100009864(a2, v18);

  sub_1007978A4();
  v13 = sub_10079C0E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v8, 1, 1, v13);
  (*(v14 + 104))(v5, enum case for DynamicTypeSize.accessibility3(_:), v13);
  v15(v5, 0, 1, v13);
  sub_1004C6A6C();
  sub_10079D604();
  sub_100007840(v5, &qword_100AE6FE8);
  sub_100007840(v8, &qword_100AE6FE8);
  return (*(v10 + 8))(v12, v9);
}

id sub_1004C32E0()
{
  v0 = sub_100797304();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 windowManager];

    sub_1001F1160(&unk_100AE0AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    sub_1007A2254();
    sub_1007A36B4();
    *(inited + 96) = swift_getObjectType();
    *(inited + 72) = v1;
    swift_unknownObjectRetain();
    sub_100013740(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100AD1E50);
    isa = sub_1007A2024().super.isa;

    v6 = [v3 windowFromOptions:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 windowManager];

    sub_100013740(_swiftEmptyArrayStorage);
    v9 = sub_1007A2024().super.isa;

    v6 = [v8 windowFromOptions:v9];
  }

  return v6;
}

id sub_1004C3510()
{
  v0 = sub_1004C32E0();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 rootViewController];
  if (v2)
  {
    v8 = &OBJC_PROTOCOL___BKRootViewControllerContaining;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      do
      {
        v2 = [v4 rootViewController];
        swift_unknownObjectRelease();
        v7 = &OBJC_PROTOCOL___BKRootViewControllerContaining;
        v4 = swift_dynamicCastObjCProtocolConditional();
      }

      while (v4);
    }
  }

  return v2;
}

uint64_t sub_1004C35EC()
{
  v0 = sub_1004C3510();
  if (!v0)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_10:
    sub_100007840(&v6, &unk_100AD5B40);
    return 0;
  }

  v1 = v0;
  v2 = [v0 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUILibraryCollectionUIProvider];

  if (v2)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_10;
  }

  sub_1001F1160(&qword_100AE6FE0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C36E0(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  sub_1007A26F4();
  v2[33] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[34] = v4;
  v2[35] = v3;

  return _swift_task_switch(sub_1004C3778, v4, v3);
}

uint64_t sub_1004C3778()
{
  v1 = *(v0[32] + 32);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___BKEngagementManager_manager);
    v3 = sub_1007999E4();

    if (v3)
    {
      type metadata accessor for SessionDonor();
      v4 = swift_dynamicCastClass();
      if (v4 && (v4[OBJC_IVAR___BKSessionDonor_previewButtonUsed] & 1) == 0)
      {
        v4[OBJC_IVAR___BKSessionDonor_previewButtonUsed] = 1;
        [v4 propertyDidChange:v4 propertyConfiguration:*&v4[OBJC_IVAR___BKSessionDonor_previewButtonUsedConfig]];
      }

      swift_unknownObjectRelease();
    }
  }

  v5 = *(v0[32] + 24);
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1004C3940;
  v6 = swift_continuation_init();
  v0[25] = sub_1001F1160(&qword_100AE7EF0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1003807B4;
  v0[21] = &unk_100A1F698;
  v0[22] = v6;
  [v5 requestPrimaryScene:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C3940()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return _swift_task_switch(sub_1004C3A48, v2, v1);
}

uint64_t sub_1004C3A48()
{
  v1 = v0[29];
  v0[36] = v1;
  v2 = [v1 newShowAssetTransaction];
  v0[37] = v2;
  v3 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0);
  if (v3)
  {
    v4 = v3;
    v5 = v0[31];
    swift_unknownObjectRetain();
    sub_100013740(_swiftEmptyArrayStorage);
    isa = sub_1007A2024().super.isa;

    [v4 showStoreAsset:v2 asset:v5 options:isa];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  v7 = [objc_opt_self() delegate];
  v8 = [v7 libraryAssetProvider];
  v0[38] = v8;

  v9 = [v8 collectionController];
  v0[39] = v9;
  sub_100799574();
  v10 = sub_1007A2214();
  v0[40] = v10;

  v11 = kBKCollectionDefaultIDSamples;
  v0[41] = kBKCollectionDefaultIDSamples;
  v0[10] = v0;
  v0[15] = v0 + 29;
  v0[11] = sub_1004C3CCC;
  v12 = swift_continuation_init();
  v0[25] = sub_1001F1160(&unk_100AE6E70);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1005EB504;
  v0[21] = &unk_100A1F6C0;
  v0[22] = v12;
  [v9 addStoreID:v10 toCollectionID:v11 forceToTop:0 completion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1004C3CCC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_1004C3F6C;
  }

  else
  {
    v5 = sub_1004C3DFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004C3DFC()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  v3 = *(v0 + 232);
  swift_unknownObjectRelease();

  if (v3)
  {
    v4 = *(v0 + 288);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1760 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE6DD0);
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();
    v8 = os_log_type_enabled(v6, v7);
    v4 = *(v0 + 288);
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to add preview to samples", v9, 2u);
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1004C3F6C()
{
  v16 = v0;
  v1 = v0[41];
  v2 = v0[40];

  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_100AD1760 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AE6DD0);
  swift_errorRetain();
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1007A3B84();
    v12 = sub_1000070F4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to add preview to samples: %s", v8, 0xCu);
    sub_1000074E0(v9);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  v13 = v0[1];

  return v13();
}

void sub_1004C4190(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  v38 = a3;
  v40 = sub_100796CF4();
  v5 = *(v40 - 8);
  v6 = __chkstk_darwin(v40);
  v39 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v36 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v36 - v15;
  v17 = v4;
  v41 = sub_1004C35EC();
  if (v41)
  {
    isa = sub_1007A25D4().super.isa;
    sub_10023A724();
    v19 = sub_1007A25D4().super.isa;
    v20 = [v41 libraryCollectionListViewControllerWithAssetIDs:isa knownAssetTypes:v19 knownStoreAssetIDs:v38 containsSeriesContainer:v37 & 1];

    v36[1] = v17;
    Strong = swift_unknownObjectWeakLoadStrong();
    v22 = [Strong ba_analyticsTracker];

    [v20 ba_setOverrideParentAnalyticsTracker:v22];
    sub_1007A2154();
    sub_100796C94();
    (*(v11 + 16))(v14, v16, v10);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v25 = v40;
    (*(v5 + 16))(v39, v9, v40);
    sub_1007A22D4();
    (*(v5 + 8))(v9, v25);
    (*(v11 + 8))(v16, v10);
    v26 = sub_1007A2214();

    [v20 setTitle:v26];

    v27 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v20 action:"doneButtonPressed"];
    v28 = [v20 navigationItem];
    [v28 setRightBarButtonItem:v27 animated:0];

    v29 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v20];
    [v29 setModalPresentationStyle:2];
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      [v30 presentViewController:v29 animated:1 completion:0];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1760 != -1)
    {
      swift_once();
    }

    v32 = sub_10079ACE4();
    sub_100008B98(v32, qword_100AE6DD0);
    v41 = sub_10079ACC4();
    v33 = sub_1007A29B4();
    if (os_log_type_enabled(v41, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v41, v33, "Unable to find libraryCollectionPresenter to present the collection list", v34, 2u);
    }

    v35 = v41;
  }
}

uint64_t sub_1004C46BC()
{
  v0 = sub_1004C32E0();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  v2 = [v0 rootViewController];
  if (!v2)
  {

LABEL_10:
    v15 = 0u;
    v16 = 0u;
    return sub_100007840(&v15, &unk_100AD5B40);
  }

  v3 = v2;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v3 = [v5 rootViewController];
      swift_unknownObjectRelease();
      v5 = swift_dynamicCastObjCProtocolConditional();
    }

    while (v5);
  }

  v7 = [v3 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
  if (v7)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    return sub_100007840(&v15, &unk_100AD5B40);
  }

  sub_1001F1160(&qword_100AE6EE8);
  result = swift_dynamicCast();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return swift_unknownObjectRelease();
    }

    v10 = Strong;
    v11 = [objc_opt_self() sceneControllerForViewController:Strong];

    if (!v11)
    {
      return swift_unknownObjectRelease();
    }

    v12 = [v11 newShowURLTransaction];
    if ([objc_opt_self() isOffline])
    {
      [v13 displayInternetReachabilityErrorAlert:1 transaction:v12];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    [v13 displayBookUnavailableInStorefrontErrorWithTransaction:v12];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004C4920(void *a1, uint64_t *a2)
{
  v4 = sub_1004C3510();
  v5 = v4;
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_7:
    sub_100007840(&v13, &unk_100AD5B40);
    return 0;
  }

  v6 = v4;
  do
  {
    v7 = v6;

    v6 = [v6 presentedViewController];
    v8 = v6;
    v4 = v7;
  }

  while (v6);
  v9 = [v7 im_ancestorFlowControllerConformingToProtocol:*a1];

  if (v9)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_7;
  }

  sub_1001F1160(a2);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C4A70(uint64_t a1, uint64_t a2)
{
  v3[124] = v2;
  v3[123] = a2;
  v3[122] = a1;
  sub_1007A26F4();
  v3[125] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[126] = v5;
  v3[127] = v4;

  return _swift_task_switch(sub_1004C4B14, v5, v4);
}

uint64_t sub_1004C4B14()
{
  v91 = v0;
  aBlock = (v0 + 784);
  v1 = *(v0 + 992);
  v2 = *(v0 + 976);
  sub_10000E3E8(v2, v2[3]);
  v3 = sub_100797674();
  v5 = v4;
  v6 = *(v1 + 80);
  sub_1001F1160(&unk_100AE0B30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;

  isa = sub_1007A25D4().super.isa;

  [v6 addProductProfileIDs:isa priority:6];

  v9 = *(v1 + 32);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR___BKEngagementManager_manager);
    v11 = sub_1007999E4();

    if (v11)
    {
      type metadata accessor for SessionDonor();
      v12 = swift_dynamicCastClass();
      if (v12 && (v12[OBJC_IVAR___BKSessionDonor_sampleButtonUsed] & 1) == 0)
      {
        v12[OBJC_IVAR___BKSessionDonor_sampleButtonUsed] = 1;
        [v12 propertyDidChange:v12 propertyConfiguration:*&v12[OBJC_IVAR___BKSessionDonor_sampleButtonUsedConfig]];
      }

      swift_unknownObjectRelease();
    }
  }

  v13 = (v0 + 968);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  sub_1003DD044(*(v0 + 992), v0 + 696);
  sub_1002B0670(v15, v0 + 872);
  v16 = swift_allocObject();
  *(v0 + 1024) = v16;
  sub_1003DDA00(v0 + 696, v16 + 16);
  sub_1001FF7C8((v0 + 872), (v16 + 104));
  *(v16 + 152) = v14;
  v17 = v14;
  swift_asyncLet_begin();
  v18 = sub_1004C5C20();
  *(v0 + 968) = v18;
  sub_10000E3E8(v15, v2[3]);
  v19 = sub_100797604();
  if (v19)
  {
    v20 = v19;
    v21 = sub_1004C4920(&protocolRef_BSUIItemPresenting, &qword_100AE6F68);
    if (v21)
    {
      v22 = v21;
      if ([objc_opt_self() hasMultiWindowEnabled])
      {
        v23 = *(*(v0 + 992) + 24);
        v24 = sub_1007A2214();

        v25 = [v23 newBookSceneControllerProviderWithRequestAssetID:v24];

        v26 = [objc_opt_self() currentSceneController];
        if (v26)
        {
          v27 = [v26 newShowAssetTransactionWithTargetSceneDescriptor:v25];
          swift_unknownObjectRelease();
          v28 = sub_1007A2254();
          v30 = v29;
          v31 = [v20 title];
          if (v31)
          {
            aBlocka = v28;
            v32 = v31;
            v33 = sub_1007A2254();
            v35 = v34;

            *&v88 = v33;
            *(&v88 + 1) = v35;
            v89 = &type metadata for String;
            v36 = *v13;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90 = v36;
            sub_1002F4E24(&v88, aBlocka, v30, isUniquelyReferenced_nonNull_native);

            v38 = v90;
            *v13 = v90;
          }

          else
          {
            sub_1002EEC98(v28, v30, aBlock);

            sub_100007840(aBlock, &unk_100AE6F50);
            v38 = *v13;
          }

          v67 = sub_1007A2254();
          v69 = v68;
          ObjectType = swift_getObjectType();
          *&v88 = v27;
          v89 = ObjectType;
          swift_unknownObjectRetain();
          v71 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v38;
          sub_1002F4E24(&v88, v67, v69, v71);

          v18 = v90;
        }

        else
        {
          v27 = 0;
        }

        v72 = v20;
        v73 = sub_1004C2740(v18);

        sub_10058096C(v73);

        v74 = sub_1007A2024().super.isa;

        [v22 presentItem:v72 transaction:v27 host:0 source:0 options:v74];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

      v54 = [objc_opt_self() currentSceneController];
      if (v54)
      {
        v55 = *(v0 + 992);
        v56 = [v54 newShowAssetTransaction];
        swift_unknownObjectRelease();
        v57 = *(v55 + 24);
        v58 = swift_allocObject();
        v58[2] = v22;
        v58[3] = v20;
        v58[4] = v56;
        v58[5] = v18;
        *(v0 + 816) = sub_1004C6A60;
        *(v0 + 824) = v58;
        *(v0 + 784) = _NSConcreteStackBlock;
        *(v0 + 792) = 1107296256;
        *(v0 + 800) = sub_1003323D0;
        *(v0 + 808) = &unk_100A1F800;
        v59 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v60 = v20;
        swift_unknownObjectRetain();

        [v57 forceTransaction:v56 ontoPrimarySceneWithContinuation:v59];

        swift_unknownObjectRelease();
LABEL_22:
        _Block_release(v59);
        swift_unknownObjectRelease();
LABEL_38:

        return _swift_asyncLet_get_throwing(v0 + 16, v66, sub_1004C5640, v0 + 656);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if ([objc_opt_self() hasMultiWindowEnabled])
    {
      v39 = *(*(v0 + 992) + 24);
      v40 = sub_1007A2214();
      v41 = [v39 newBookSceneControllerProviderWithRequestAssetID:v40];

      v42 = [objc_opt_self() currentSceneController];
      if (v42)
      {
        v43 = *(v0 + 976);
        v44 = [v42 newShowAssetTransactionWithTargetSceneDescriptor:v41];
        swift_unknownObjectRelease();
        v45 = sub_1007A2254();
        v47 = v46;
        sub_10000E3E8(v43, v2[3]);
        v48 = sub_100797664();
        if (v49)
        {
          *&v88 = v48;
          *(&v88 + 1) = v49;
          v89 = &type metadata for String;
          v50 = *v13;
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v50;
          sub_1002F4E24(&v88, v45, v47, v51);

          v52 = v90;
          *v13 = v90;
        }

        else
        {
          sub_1002EEC98(v45, v47, aBlock);

          sub_100007840(aBlock, &unk_100AE6F50);
          v52 = *v13;
        }

        v75 = sub_1007A2254();
        v77 = v76;
        v78 = swift_getObjectType();
        *&v88 = v44;
        v89 = v78;
        swift_unknownObjectRetain();
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v90 = v52;
        sub_1002F4E24(&v88, v75, v77, v79);

        v18 = v90;
      }

      else
      {
        v44 = 0;
      }

      v80 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0);
      if (v80)
      {
        v81 = v80;
        v82 = sub_1007A2214();

        v83 = sub_1004C2740(v18);

        sub_10058096C(v83);

        v84 = sub_1007A2024().super.isa;

        [v81 showAssetWithTransaction:v44 storeID:v82 options:v84];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      goto LABEL_38;
    }

    v61 = [objc_opt_self() currentSceneController];
    if (v61)
    {
      v62 = *(v0 + 992);
      v63 = [v61 newShowAssetTransaction];
      swift_unknownObjectRelease();
      v64 = *(v62 + 24);
      sub_1003DD044(v62, aBlock);
      v65 = swift_allocObject();
      sub_1003DDA00(aBlock, (v65 + 2));
      v65[13] = v63;
      v65[14] = v3;
      v65[15] = v5;
      v65[16] = v18;
      *(v0 + 952) = sub_1004C6A50;
      *(v0 + 960) = v65;
      *(v0 + 920) = _NSConcreteStackBlock;
      *(v0 + 928) = 1107296256;
      *(v0 + 936) = sub_1003323D0;
      *(v0 + 944) = &unk_100A1F7B0;
      v59 = _Block_copy((v0 + 920));
      swift_unknownObjectRetain();

      [v64 forceTransaction:v63 ontoPrimarySceneWithContinuation:v59];
      goto LABEL_22;
    }
  }

  return _swift_asyncLet_finish(v0 + 16, v53, sub_1004C5624, v0 + 656);
}

uint64_t sub_1004C5640()
{
  v1[129] = v0;
  if (v0)
  {
    v2 = sub_1004C571C;
  }

  else
  {
    v2 = sub_1004C5678;
  }

  return _swift_task_switch(v2, v1[126], v1[127]);
}

uint64_t sub_1004C56B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C5754()
{
  v15 = v0;

  if (qword_100AD1760 != -1)
  {
    swift_once();
  }

  v1 = v0[122];
  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AE6DD0);
  sub_1002B0670(v1, (v0 + 2));
  v3 = sub_10079ACC4();
  v4 = sub_1007A29B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    sub_10000E3E8(v0 + 2, v0[5]);
    v7 = sub_1007976A4();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    sub_1000074E0((v0 + 2));
    v11 = sub_1000070F4(v9, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to download the sample with storeID %s", v5, 0xCu);
    sub_1000074E0(v6);
  }

  else
  {

    sub_1000074E0((v0 + 2));
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004C5958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  return _swift_task_switch(sub_1004C597C, 0, 0);
}

uint64_t sub_1004C597C()
{
  v1 = v0[7];
  v2 = sub_10000E3E8((v1 + 40), *(v1 + 64));
  v0[5] = &type metadata for ContextMenuPresentationContext;
  v0[6] = sub_1003DD65C();
  v3 = swift_allocObject();
  v0[2] = v3;
  sub_1003DD044(v1, v3 + 16);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1004C5A80;
  v9 = v0[8];
  v8 = v0[9];

  return sub_1002B7D74(v9, (v0 + 2), v8, v4, v5, v6);
}

uint64_t sub_1004C5A80()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004C5BBC, 0, 0);
  }

  else
  {
    sub_1000074E0(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004C5BBC()
{
  sub_1000074E0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1004C5C20()
{
  sub_1001F1160(&qword_100AE6F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = sub_1007A2254();
  *(inited + 40) = v1;
  v2 = sub_100797314();
  if (v3)
  {
    v4 = &type metadata for String;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = sub_1007A2254();
  *(inited + 88) = v5;
  v6 = sub_100797324();
  if (v7)
  {
    v8 = &type metadata for String;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 120) = v8;
  *(inited + 128) = sub_1007A2254();
  *(inited + 136) = v9;
  v10 = sub_1007973B4();
  if (v11)
  {
    v12 = &type metadata for String;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v10;
  *(inited + 152) = v11;
  *(inited + 168) = v12;
  v13 = sub_1001EF0D0(inited);
  swift_setDeallocating();
  sub_1001F1160(&qword_100AD35C0);
  swift_arrayDestroy();
  return v13;
}

void sub_1004C5D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1004C2740(a4);
  sub_10058096C(v7);

  isa = sub_1007A2024().super.isa;

  [a1 presentItem:a2 transaction:a3 host:0 source:0 options:isa];
}

uint64_t sub_1004C5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0);
  if (result)
  {
    v8 = result;
    v9 = sub_1007A2214();
    v10 = sub_1004C2740(a5);
    sub_10058096C(v10);

    isa = sub_1007A2024().super.isa;

    [v8 showAssetWithTransaction:a2 storeID:v9 options:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004C5F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  sub_1007A26F4();
  v5[32] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[33] = v7;
  v5[34] = v6;

  return _swift_task_switch(sub_1004C5FFC, v7, v6);
}

uint64_t sub_1004C5FFC()
{
  v33 = v0;
  v1 = v0[31];
  if ([objc_opt_self() hasMultiWindowEnabled])
  {

    v2 = *(v1 + 24);
    v3 = sub_1007A2214();
    v4 = [v2 newBookSceneControllerProviderWithRequestAssetID:v3];

    v5 = [objc_opt_self() currentSceneController];
    if (v5)
    {
      v6 = [v5 newShowAssetTransactionWithTargetSceneDescriptor:v4];
      swift_unknownObjectRelease();
      v7 = sub_1004C5C20();
      if (v6)
      {
        v8 = v0[30];
        v9 = sub_1007A2254();
        v11 = v9;
        v12 = v10;
        if (v8)
        {
          v13 = v0[30];
          *&v30 = v0[29];
          *(&v30 + 1) = v13;
          v31 = &type metadata for String;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v7;
          sub_1002F4E24(&v30, v11, v12, isUniquelyReferenced_nonNull_native);

          v15 = v32;
        }

        else
        {
          sub_1002EEC98(v9, v10, (v0 + 10));

          sub_100007840((v0 + 10), &unk_100AE6F50);
          v15 = v7;
        }

        v18 = sub_1007A2254();
        v20 = v19;
        ObjectType = swift_getObjectType();
        *&v30 = v6;
        v31 = ObjectType;
        swift_unknownObjectRetain();
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v32 = v15;
        sub_1002F4E24(&v30, v18, v20, v22);

        v7 = v32;
      }
    }

    else
    {
      v7 = sub_1004C5C20();
      v6 = 0;
    }

    v23 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0);
    if (v23)
    {
      v24 = v23;
      v25 = sub_1007A2214();
      v26 = sub_1004C2740(v7);

      sub_10058096C(v26);

      isa = sub_1007A2024().super.isa;

      [v24 showAssetWithTransaction:v6 assetID:v25 location:0 options:isa completion:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v28 = v0[1];

    return v28();
  }

  else
  {
    v16 = *(v1 + 24);
    v0[35] = v16;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1004C6420;
    v17 = swift_continuation_init();
    v0[17] = sub_1001F1160(&qword_100AE7EF0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003807B4;
    v0[13] = &unk_100A1F6E8;
    v0[14] = v17;
    [v16 requestPrimaryScene:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1004C6420()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return _swift_task_switch(sub_1004C6528, v2, v1);
}

uint64_t sub_1004C6528()
{
  v1 = v0[35];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];

  v5 = v0[21];
  v6 = [v5 newShowAssetTransaction];
  sub_1003DD044(v2, (v0 + 10));
  v7 = swift_allocObject();
  sub_1003DDA00((v0 + 10), (v7 + 2));
  v7[13] = v6;
  v7[14] = v4;
  v7[15] = v3;
  v0[25] = sub_1004C6978;
  v0[26] = v7;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = sub_1003323D0;
  v0[24] = &unk_100A1F738;
  v8 = _Block_copy(v0 + 21);
  swift_unknownObjectRetain();

  [v1 forceTransaction:v6 ontoPrimarySceneWithContinuation:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004C66A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004C5C20();
  v4 = sub_1004C4920(&protocolRef_BKBookPresenting_0, &qword_100AE6EE0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1007A2214();
    v7 = sub_1004C2740(v3);

    sub_10058096C(v7);

    isa = sub_1007A2024().super.isa;

    [v5 showAssetWithTransaction:a2 assetID:v6 location:0 options:isa completion:0];

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1004C67EC(char a1)
{
  v2 = objc_opt_self();
  sub_1003DD65C();
  sub_100796EF4();
  isa = sub_1007A2024().super.isa;

  [v2 presentNoticeForNoSampleAvailable:a1 & 1 options:isa];
}

uint64_t sub_1004C68B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C68F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004C6988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004C69A0(uint64_t a1)
{
  v4 = *(v1 + 152);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_1004C5958(a1, v1 + 16, v1 + 104, v4);
}

unint64_t sub_1004C6A6C()
{
  result = qword_100AE6FF0;
  if (!qword_100AE6FF0)
  {
    sub_1007978B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6FF0);
  }

  return result;
}

uint64_t static Logger.sidebar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1768 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  v3 = sub_100008B98(v2, qword_100AE7000);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1004C6BB8(void *a1)
{
  v1 = a1;
  sub_1004C7684(&selRef_viewDidLoad);
}

id sub_1004C6C0C(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "viewWillAppear:", a1 & 1);
}

void sub_1004C6C54(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1004C6C0C(a3);
}

uint64_t sub_1004C6CA8(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewWillDisappear:", a1 & 1);
  return sub_1004C6CFC(0, a1);
}

uint64_t sub_1004C6CFC(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_isaMask & *v2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setEditing:animated:", a1 & 1, a2 & 1);
  (*(*(v6 + qword_100AE70A0 + 32) + 24))(*(v6 + qword_100AE70A0));
  sub_10079B8C4();
}

void sub_1004C6E20(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1004C6CA8(a3);
}

void sub_1004C6E74(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_1004C6CFC(a3, a4);
}

id sub_1004C6EFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    return 0;
  }

  sub_10000AE20(a2, v16);
  v7 = v17;
  if (v17)
  {
    v8 = sub_10000E3E8(v16, v17);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1007A3AA4();
    (*(v9 + 8))(v12, v7);
    sub_1000074E0(v16);
  }

  else
  {
    v13 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v13);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1004C7094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_1004C6EFC(a3, v10);

  sub_1000230BC(v10);
  return v8 & 1;
}

uint64_t sub_1004C711C()
{
  v1 = swift_isaMask & *v0;
  (*(*(*(v1 + qword_100AE70A0) - 8) + 8))(&v0[*(v1 + qword_100AE70A0 + 64)]);
  (*(*(*(v1 + qword_100AE70A0 + 16) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AE70A0 + 72)]);
  (*(*(*(v1 + qword_100AE70A0 + 8) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AE70A0 + 80)]);
  (*(*(*(v1 + qword_100AE70A0 + 24) - 8) + 8))(&v0[*((swift_isaMask & *v0) + qword_100AE70A0 + 88)]);
}

uint64_t sub_1004C7388(char *a1)
{
  v2 = swift_isaMask & *a1;
  (*(*(*(v2 + qword_100AE70A0) - 8) + 8))(&a1[*(v2 + qword_100AE70A0 + 64)]);
  (*(*(*(v2 + qword_100AE70A0 + 16) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AE70A0 + 72)]);
  (*(*(*(v2 + qword_100AE70A0 + 8) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AE70A0 + 80)]);
  (*(*(*(v2 + qword_100AE70A0 + 24) - 8) + 8))(&a1[*((swift_isaMask & *a1) + qword_100AE70A0 + 88)]);
}

id sub_1004C7684(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_1004C76C4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7000);
  sub_100008B98(v0, qword_100AE7000);
  return sub_10079ACD4();
}

uint64_t sub_1004C7770()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_1004C790C()
{
  v1 = *((swift_isaMask & *v0) + qword_100AE70A0 + 96);
  *(v0 + v1) = [objc_allocWithZone(_UIScrollPocketCollectorInteraction) init];
  *(v0 + *((swift_isaMask & *v0) + qword_100AE70A0 + 104)) = &_swiftEmptySetSingleton;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_1004C7A78(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_10079BE84();
  sub_10079D694();
}

uint64_t sub_1004C7B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004CEF3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1004C7BE8()
{
  sub_1004C7CB8();
  sub_10079C834();
  return v1;
}

uint64_t sub_1004C7C28()
{
  sub_1004C7C64();
  sub_10079C834();
  return v1;
}

unint64_t sub_1004C7C64()
{
  result = qword_100AE7130;
  if (!qword_100AE7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7130);
  }

  return result;
}

unint64_t sub_1004C7CB8()
{
  result = qword_100AE7138;
  if (!qword_100AE7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7138);
  }

  return result;
}

uint64_t sub_1004C7D48(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1004C7D60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1004C7D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C7DD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004C7E4C()
{
  result = qword_100AE7140;
  if (!qword_100AE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7140);
  }

  return result;
}

uint64_t sub_1004C7EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004C7E4C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1004C7F20()
{
  v10 = *(v0 + 136);
  v11 = *(v0 + 128);
  sub_1001F1160(&qword_100AE7148);
  sub_10079DFF4();
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  type metadata accessor for ChromeStyle();
  sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v4 = sub_10079C484();
  v6 = v5;
  v7 = swift_getKeyPath();
  type metadata accessor for InfoBarViewModel();
  sub_1004D0928(&qword_100AD9B20, type metadata accessor for InfoBarViewModel);
  v34 = 0;
  v31 = 0;
  v29 = 0;
  v27 = 0;
  *&v19 = KeyPath;
  WORD4(v19) = 0;
  *(&v19 + 10) = v32;
  HIWORD(v19) = v33;
  *&v20 = v2;
  BYTE8(v20) = 0;
  *(&v20 + 9) = *v30;
  HIDWORD(v20) = *&v30[3];
  *&v21 = v3;
  BYTE8(v21) = 0;
  HIDWORD(v21) = *&v28[3];
  *(&v21 + 9) = *v28;
  *&v22 = v4;
  *(&v22 + 1) = v6;
  *&v23 = v7;
  BYTE8(v23) = 0;
  HIDWORD(v23) = *&v26[3];
  *(&v23 + 9) = *v26;
  *&v24 = sub_10079C024();
  *(&v24 + 1) = v8;
  v25 = 0x4034000000000000;
  *&v12 = v11;
  *(&v12 + 1) = v10;
  sub_10079DFF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (*(&v14 + 1) != 1)
  {
    sub_1004CEEF0(v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1));
  }

  sub_1004CEE6C();
  sub_10079D954();
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  return sub_1004CEEC0(&v12);
}

uint64_t sub_1004C81EC@<X0>(__int16 a1@<W4>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_10079CA64();
  v3 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1001F1160(&qword_100AE7578);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  if ((sub_1007A2B24() & 1) == 0 || (a1 & 0x100) != 0)
  {
    sub_10079CA44();
  }

  else
  {
    sub_10079CA14();
  }

  sub_1001F1160(&qword_100AE7580);
  sub_100005920(&qword_100AE7588, &qword_100AE7580);
  sub_10079D794();
  v15 = *(v3 + 8);
  v16 = v8;
  v17 = v19[0];
  v15(v16, v19[0]);
  sub_10079CA14();
  sub_10079C134();
  v15(v5, v17);
  sub_100007840(v11, &qword_100AE7578);
  sub_1007A2AF4();
  sub_10079C294();
  return sub_100007840(v14, &qword_100AE7578);
}

uint64_t sub_1004C8460()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 4);
  result = *v0;
  v8 = *v0;
  if (HIBYTE(v9) != 1)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v8, &qword_100AE74B8);
    (*(v2 + 8))(v4, v1);
    return v7;
  }

  return result;
}

uint64_t sub_1004C85CC()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 24);
  v5 = *(v0 + 16);
  v9 = v5;
  if (v10 != 1)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v9, qword_100AE74E0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1004C872C()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 40);
  result = *(v0 + 32);
  v8 = result;
  if ((v9 & 1) == 0)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v8, &qword_100AD55D0);
    (*(v2 + 8))(v4, v1);
    return v7[1];
  }

  return result;
}

uint64_t sub_1004C8884()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 72);
  v5 = *(v0 + 64);
  v9 = v5;
  if (v10 != 1)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v9, &qword_100AD55B8);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1004C89E4@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1004C81EC(v2 | *(v1 + 24), a1);
}

uint64_t sub_1004C8A18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v165 = a1;
  v151 = sub_1001F1160(&qword_100AE7178);
  __chkstk_darwin(v151);
  v153 = (&v134 - v3);
  v164 = sub_1001F1160(&qword_100AE7180);
  __chkstk_darwin(v164);
  v154 = &v134 - v4;
  v152 = sub_1001F1160(&qword_100AE7188);
  __chkstk_darwin(v152);
  v6 = &v134 - v5;
  v161 = sub_1001F1160(&qword_100AE7190);
  __chkstk_darwin(v161);
  v163 = &v134 - v7;
  v156 = sub_1001F1160(&qword_100AE7198);
  __chkstk_darwin(v156);
  v157 = (&v134 - v8);
  v162 = sub_1001F1160(&qword_100AE71A0);
  __chkstk_darwin(v162);
  v158 = &v134 - v9;
  v149 = sub_10079C894();
  v146 = *(v149 - 8);
  __chkstk_darwin(v149);
  v143 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079C004();
  v12 = *(v11 - 8);
  v144 = v11;
  v145 = v12;
  __chkstk_darwin(v11);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1001F1160(&qword_100AE71A8);
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v16 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v147 = &v134 - v18;
  v19 = sub_1001F1160(&qword_100AE71B0);
  __chkstk_darwin(v19);
  v21 = &v134 - v20;
  v136 = sub_1001F1160(&qword_100AE71B8);
  __chkstk_darwin(v136);
  v137 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v159 = &v134 - v24;
  v25 = sub_1001F1160(&qword_100AE71C0);
  __chkstk_darwin(v25 - 8);
  v160 = &v134 - v26;
  v138 = sub_1001F1160(&qword_100AE71C8);
  __chkstk_darwin(v138);
  v140 = &v134 - v27;
  v155 = sub_1001F1160(&qword_100AE71D0);
  __chkstk_darwin(v155);
  v139 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v141 = &v134 - v30;
  v31 = *(v1 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  v142 = v31;
  sub_10079B9A4();

  v32 = LOBYTE(v167[0]);
  if (sub_1004C85CC())
  {
    if (v32)
    {
      sub_1001F1160(&qword_100AE1820);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10080EFF0;
      v34 = sub_10079D254();
      *(v33 + 32) = v34;
      v35 = sub_10079D274();
      *(v33 + 33) = v35;
      v36 = sub_10079D264();
      sub_10079D264();
      if (sub_10079D264() != v34)
      {
        v36 = sub_10079D264();
      }

      sub_10079D264();
      if (sub_10079D264() != v35)
      {
        v36 = sub_10079D264();
      }

      sub_1004CA2B0(v2, v167);
      v172 = v167[2];
      v173 = v167[3];
      v170 = v167[0];
      v171 = v167[1];
      v175[2] = v167[2];
      v175[3] = v167[3];
      v175[4] = v167[4];
      v175[1] = v167[1];
      v174 = v167[4];
      v175[0] = v167[0];
      sub_1000077D8(&v170, v166, &qword_100AE72B0);
      sub_100007840(v175, &qword_100AE72B0);
      *&v176[23] = v171;
      *&v176[39] = v172;
      *&v176[55] = v173;
      *&v176[71] = v174;
      *&v176[7] = v170;
      sub_1004C8460();
      sub_10079E474();
      sub_10079C414();
      v37 = sub_1004CA1C8();
      KeyPath = swift_getKeyPath();
      v39 = swift_getKeyPath();
      v178 = 0;
      v177 = 0;
      LOBYTE(v167[0]) = v36;
      *(&v167[2] + 1) = *&v176[32];
      *(&v167[3] + 1) = *&v176[48];
      *(&v167[4] + 1) = *&v176[64];
      *(v167 + 1) = *v176;
      *(&v167[1] + 1) = *&v176[16];
      *(&v167[7] + 8) = v181;
      *(&v167[6] + 8) = v180;
      *(&v167[5] + 8) = v179;
      *(&v167[11] + 8) = v185;
      *(&v167[10] + 8) = v184;
      *(&v167[9] + 8) = v183;
      *(&v167[8] + 8) = v182;
      *&v167[5] = *&v176[79];
      *(&v167[12] + 1) = KeyPath;
      LOBYTE(v168) = 0;
      *(&v168 + 1) = v39;
      LOBYTE(v169) = 0;
      HIBYTE(v169) = v37 & 1;
      v40 = v167[1];
      v41 = v157;
      *v157 = v167[0];
      v41[1] = v40;
      v42 = v167[2];
      v43 = v167[3];
      v44 = v167[5];
      v41[4] = v167[4];
      v41[5] = v44;
      v41[2] = v42;
      v41[3] = v43;
      v45 = v167[6];
      v46 = v167[7];
      v47 = v167[9];
      v41[8] = v167[8];
      v41[9] = v47;
      v41[6] = v45;
      v41[7] = v46;
      v48 = v167[10];
      v49 = v167[11];
      v50 = v167[12];
      v51 = v168;
      *(v41 + 112) = v169;
      v41[12] = v50;
      v41[13] = v51;
      v41[10] = v48;
      v41[11] = v49;
      swift_storeEnumTagMultiPayload();
      sub_1000077D8(v167, v166, &qword_100AE7280);
      sub_1001F1160(&qword_100AE7280);
      sub_1004CF734();
      sub_1004CF878();
      v52 = v158;
      sub_10079CCA4();
      sub_1000077D8(v52, v163, &qword_100AE71A0);
      swift_storeEnumTagMultiPayload();
      sub_1004CF6A8();
      sub_1004CF9BC();
      sub_10079CCA4();
      sub_100007840(v167, &qword_100AE7280);
      v53 = v52;
      v54 = &qword_100AE71A0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      if (*(&v167[2] + 1) == 1)
      {
        v73 = sub_1004D0A5C;
        v74 = 0.0;
      }

      else
      {
        sub_1004CEEF0(*&v167[0], *(&v167[0] + 1), *&v167[1], *(&v167[1] + 1), v167[2], *(&v167[2] + 1));
        v73 = sub_1004CF1D4;
        v74 = 1.0;
      }

      v124 = swift_allocObject();
      v125 = *(v1 + 80);
      *(v124 + 80) = *(v1 + 64);
      *(v124 + 96) = v125;
      *(v124 + 112) = *(v1 + 96);
      v126 = *(v1 + 16);
      *(v124 + 16) = *v1;
      *(v124 + 32) = v126;
      v127 = *(v1 + 48);
      *(v124 + 48) = *(v1 + 32);
      *(v124 + 64) = v127;
      sub_1004CF1DC(v1, v167);
      v128 = sub_1004CA1C8();
      v129 = swift_getKeyPath();
      v130 = swift_getKeyPath();
      LOBYTE(v167[0]) = 0;
      v166[0] = 0;
      v131 = v153;
      *v153 = v73;
      v131[1] = v124;
      *(v131 + 2) = v74;
      v131[3] = v129;
      *(v131 + 32) = 0;
      v131[5] = v130;
      *(v131 + 48) = 0;
      *(v131 + 49) = v128 & 1;
      swift_storeEnumTagMultiPayload();

      sub_1001F1160(&qword_100AE71D8);
      sub_1004CF214();
      sub_1004CF564();
      v132 = v154;
      sub_10079CCA4();
      sub_1000077D8(v132, v163, &qword_100AE7180);
      swift_storeEnumTagMultiPayload();
      sub_1004CF6A8();
      sub_1004CF9BC();
      sub_10079CCA4();

      v53 = v132;
      v54 = &qword_100AE7180;
    }
  }

  else
  {
    v135 = v16;
    if (v32)
    {
      *v160 = sub_10079D254();
      *v21 = sub_10079C8F4();
      *(v21 + 1) = 0;
      v21[16] = 0;
      v55 = sub_1001F1160(&qword_100AE72B8);
      sub_1004CBA5C(v1, &v21[*(v55 + 44)]);
      v56 = swift_allocObject();
      v57 = *(v1 + 80);
      *(v56 + 80) = *(v1 + 64);
      *(v56 + 96) = v57;
      *(v56 + 112) = *(v1 + 96);
      v58 = *(v1 + 16);
      *(v56 + 16) = *v1;
      *(v56 + 32) = v58;
      v59 = *(v1 + 48);
      *(v56 + 48) = *(v1 + 32);
      *(v56 + 64) = v59;
      sub_1004CF1DC(v1, v167);
      sub_100005920(&qword_100AE7218, &qword_100AE71B0);
      sub_10079D764();

      sub_100007840(v21, &qword_100AE71B0);
      sub_10079BFF4();
      v60 = v143;
      sub_10079C884();
      v61 = sub_1004D0928(&qword_100AE72C0, &type metadata accessor for MoveTransition);
      v62 = sub_1004D0928(&qword_100AD7C28, &type metadata accessor for OpacityTransition);
      v63 = v147;
      v64 = v144;
      v65 = v149;
      sub_10079BC04();
      (*(v146 + 8))(v60, v65);
      (*(v145 + 8))(v14, v64);
      v66 = v148;
      v67 = v150;
      (*(v148 + 16))(v135, v63, v150);
      *&v167[0] = v64;
      *(&v167[0] + 1) = v65;
      *&v167[1] = v61;
      *(&v167[1] + 1) = v62;
      swift_getOpaqueTypeConformance2();
      v68 = sub_10079BE84();
      (*(v66 + 8))(v63, v67);
      v69 = sub_1001F1160(&qword_100AE7210);
      v70 = v159;
      *(v159 + *(v69 + 36)) = v68;
      *(v70 + *(v136 + 36)) = 257;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      if (*(&v167[2] + 1) == 1)
      {
        v71 = sub_1004D0A60;
        v72 = 0.0;
      }

      else
      {
        sub_1004CEEF0(*&v167[0], *(&v167[0] + 1), *&v167[1], *(&v167[1] + 1), v167[2], *(&v167[2] + 1));
        v71 = sub_1004CFA50;
        v72 = 1.0;
      }

      v103 = swift_allocObject();
      v104 = *(v2 + 80);
      *(v103 + 80) = *(v2 + 64);
      *(v103 + 96) = v104;
      *(v103 + 112) = *(v2 + 96);
      v105 = *(v2 + 16);
      *(v103 + 16) = *v2;
      *(v103 + 32) = v105;
      v106 = *(v2 + 48);
      *(v103 + 48) = *(v2 + 32);
      *(v103 + 64) = v106;
      v107 = sub_1001F1160(&qword_100AE72C8);
      v108 = &v160[*(v107 + 44)];
      sub_1004CF1DC(v2, v167);
      if (qword_100AD14A8 != -1)
      {
        swift_once();
      }

      v109 = *&qword_100B23168 * -0.5 + 23.0;
      v110 = v159;
      v111 = v137;
      sub_1000077D8(v159, v137, &qword_100AE71B8);
      sub_1000077D8(v111, v108, &qword_100AE71B8);
      v112 = v108 + *(sub_1001F1160(&qword_100AE72D0) + 48);
      *v112 = v71;
      *(v112 + 8) = v103;
      *(v112 + 16) = 1;
      *(v112 + 24) = v72;
      *(v112 + 32) = 0;
      *(v112 + 40) = v109;

      sub_100007840(v110, &qword_100AE71B8);

      sub_100007840(v111, &qword_100AE71B8);
      sub_1004C8460();
      sub_10079E474();
      sub_10079C414();
      v113 = v140;
      sub_10020B3C8(v160, v140, &qword_100AE71C0);
      v114 = (v113 + *(v138 + 36));
      v115 = v167[5];
      v114[4] = v167[4];
      v114[5] = v115;
      v114[6] = v167[6];
      v116 = v167[1];
      *v114 = v167[0];
      v114[1] = v116;
      v117 = v167[3];
      v114[2] = v167[2];
      v114[3] = v117;
      v118 = sub_1004CA1C8();
      v119 = swift_getKeyPath();
      v120 = swift_getKeyPath();
      v121 = v113;
      v122 = v139;
      sub_10020B3C8(v121, v139, &qword_100AE71C8);
      v123 = v122 + *(v155 + 36);
      *v123 = v119;
      *(v123 + 8) = 0;
      *(v123 + 16) = v120;
      *(v123 + 24) = 0;
      *(v123 + 25) = v118 & 1;
      v100 = &qword_100AE71D0;
      v91 = v141;
      sub_10020B3C8(v122, v141, &qword_100AE71D0);
      sub_1000077D8(v91, v157, &qword_100AE71D0);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AE7280);
      sub_1004CF734();
      sub_1004CF878();
      v101 = v158;
      sub_10079CCA4();
      v102 = &qword_100AE71A0;
      sub_1000077D8(v101, v163, &qword_100AE71A0);
    }

    else
    {
      *v21 = sub_10079C8F4();
      *(v21 + 1) = 0;
      v21[16] = 0;
      v75 = sub_1001F1160(&qword_100AE72B8);
      sub_1004CBA5C(v1, &v21[*(v75 + 44)]);
      v76 = swift_allocObject();
      v77 = *(v1 + 80);
      *(v76 + 80) = *(v1 + 64);
      *(v76 + 96) = v77;
      *(v76 + 112) = *(v1 + 96);
      v78 = *(v1 + 16);
      *(v76 + 16) = *v1;
      *(v76 + 32) = v78;
      v79 = *(v1 + 48);
      *(v76 + 48) = *(v1 + 32);
      *(v76 + 64) = v79;
      sub_1004CF1DC(v1, v167);
      sub_100005920(&qword_100AE7218, &qword_100AE71B0);
      v134 = v6;
      sub_10079D764();

      sub_100007840(v21, &qword_100AE71B0);
      v80 = v14;
      sub_10079BFF4();
      v81 = v143;
      sub_10079C884();
      v82 = sub_1004D0928(&qword_100AE72C0, &type metadata accessor for MoveTransition);
      v83 = sub_1004D0928(&qword_100AD7C28, &type metadata accessor for OpacityTransition);
      v84 = v147;
      v85 = v144;
      v86 = v149;
      sub_10079BC04();
      (*(v146 + 8))(v81, v86);
      (*(v145 + 8))(v80, v85);
      v87 = v148;
      v88 = v150;
      (*(v148 + 16))(v135, v84, v150);
      *&v167[0] = v85;
      *(&v167[0] + 1) = v86;
      *&v167[1] = v82;
      *(&v167[1] + 1) = v83;
      swift_getOpaqueTypeConformance2();
      v89 = sub_10079BE84();
      (*(v87 + 8))(v84, v88);
      v90 = sub_1001F1160(&qword_100AE7210);
      v91 = v134;
      *&v134[*(v90 + 36)] = v89;
      v92 = swift_getKeyPath();
      v93 = (v91 + *(sub_1001F1160(&qword_100AE7200) + 36));
      *v93 = v92;
      sub_1001F1160(&unk_100ADB740);
      swift_storeEnumTagMultiPayload();
      *(v93 + *(type metadata accessor for ClipHorizontallyWithFadeout() + 20)) = 0x4034000000000000;
      sub_1004C8460();
      sub_10079E474();
      sub_10079BE54();
      v94 = (v91 + *(sub_1001F1160(&qword_100AE71F0) + 36));
      v95 = v167[1];
      *v94 = v167[0];
      v94[1] = v95;
      v94[2] = v167[2];
      LOBYTE(v92) = sub_1004CA1C8();
      v96 = swift_getKeyPath();
      v97 = swift_getKeyPath();
      v98 = v153;
      v99 = v91 + *(v152 + 36);
      *v99 = v96;
      *(v99 + 8) = 0;
      *(v99 + 16) = v97;
      *(v99 + 24) = 0;
      *(v99 + 25) = v92 & 1;
      v100 = &qword_100AE7188;
      sub_1000077D8(v91, v98, &qword_100AE7188);
      swift_storeEnumTagMultiPayload();
      sub_1001F1160(&qword_100AE71D8);
      sub_1004CF214();
      sub_1004CF564();
      v101 = v154;
      sub_10079CCA4();
      v102 = &qword_100AE7180;
      sub_1000077D8(v101, v163, &qword_100AE7180);
    }

    swift_storeEnumTagMultiPayload();
    sub_1004CF6A8();
    sub_1004CF9BC();
    sub_10079CCA4();
    sub_100007840(v101, v102);
    v53 = v91;
    v54 = v100;
  }

  return sub_100007840(v53, v54);
}

uint64_t sub_1004CA1C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v6 == 1)
  {
    return 0;
  }

  sub_1000260E8(v6);
  sub_1004CEEF0(v1, v2, v3, v4, v5, v6);
  if (!v6)
  {
    return 0;
  }

  sub_100007020(v6);
  return 1;
}

double sub_1004CA2B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v4 = 0.0;
  if (v20 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    sub_1004CEEF0(v15, v16, v17, v18, v19, v20);
    v5 = 1.0;
  }

  v6 = swift_allocObject();
  v7 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(a1 + 96);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  v9 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004CF1DC(a1, &v15);
  sub_10079B9A4();

  if (v20 != 1)
  {
    sub_1004CEEF0(v15, v16, v17, v18, v19, v20);
    v4 = 1.0;
  }

  v10 = swift_allocObject();
  v11 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v12;
  v13 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v13;
  sub_1004CF1DC(a1, &v15);
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  result = *&qword_100B23168 * -0.5 + 23.0;
  *a2 = sub_1004D0A5C;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = 257;
  *(a2 + 32) = sub_1004D0A60;
  *(a2 + 40) = v10;
  *(a2 + 48) = 1;
  *(a2 + 56) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_1004CA538@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a2;
  v88 = a1;
  v111 = a5;
  v107 = sub_10079C894();
  v109 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10079C004();
  v106 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1001F1160(&qword_100AE71A8);
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v103 = &v75 - v9;
  v98 = sub_10079DD44();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10079C3D4();
  __chkstk_darwin(v86);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  __chkstk_darwin(v13);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10079C2A4();
  v77 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v75 - v17;
  v19 = sub_10079C2A4();
  v78 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  v22 = sub_10079C2A4();
  v82 = *(v22 - 8);
  __chkstk_darwin(v22);
  v75 = &v75 - v23;
  sub_1001F1234(&qword_100AD97F8);
  v80 = sub_10079C2A4();
  v90 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v75 - v24;
  v84 = sub_10079C2A4();
  v91 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v75 - v25;
  v85 = sub_10079C2A4();
  v92 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v75 - v26;
  v93 = sub_10079C2A4();
  v100 = *(v93 - 8);
  __chkstk_darwin(v93);
  v83 = &v75 - v27;
  sub_1001F1234(&qword_100AD7228);
  v99 = sub_10079C2A4();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v96 = &v75 - v31;
  v88(v30);
  sub_10079D284();
  sub_10079DBE4();
  (*(v12 + 8))(v15, a3);
  sub_10079E474();
  v130 = a4;
  v131 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  sub_10079DB24();
  (*(v77 + 8))(v18, v16);
  v128 = WitnessTable;
  v129 = &protocol witness table for _FlexFrameLayout;
  v32 = swift_getWitnessTable();
  v33 = v75;
  sub_1003FB220();
  (*(v78 + 8))(v21, v19);
  v34 = *(v86 + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = sub_10079C9E4();
  v37 = v89;
  (*(*(v36 - 8) + 104))(&v89[v34], v35, v36);
  __asm { FMOV            V0.2D, #14.0 }

  *v37 = _Q0;
  v43 = v37;
  v44 = sub_10020AEE4();
  v126 = v32;
  v127 = v44;
  v45 = swift_getWitnessTable();
  sub_1004D0928(&qword_100AE4510, &type metadata accessor for RoundedRectangle);
  v46 = v76;
  sub_10079DC74();
  sub_1002B6360(v43);
  (*(v82 + 8))(v33, v22);
  (*(v97 + 104))(v95, enum case for Color.RGBColorSpace.sRGBLinear(_:), v98);
  sub_10079DE84();
  v47 = sub_100005920(&unk_100AF6660, &qword_100AD97F8);
  v124 = v45;
  v125 = v47;
  v48 = v80;
  v49 = swift_getWitnessTable();
  v50 = v79;
  sub_10079DB74();

  (*(v90 + 8))(v46, v48);
  sub_10079D2B4();
  v122 = v49;
  v123 = &protocol witness table for _ShadowEffect;
  v88 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v51 = v84;
  v52 = swift_getWitnessTable();
  v53 = v81;
  sub_10079DBE4();
  (*(v91 + 8))(v50, v51);
  sub_10079D2A4();
  v120 = v52;
  v121 = &protocol witness table for _PaddingLayout;
  v54 = v85;
  v55 = swift_getWitnessTable();
  v56 = v83;
  sub_10079DBE4();
  (*(v92 + 8))(v53, v54);
  v57 = v102;
  sub_10079BFF4();
  v58 = v104;
  sub_10079C884();
  v59 = sub_1004D0928(&qword_100AE72C0, &type metadata accessor for MoveTransition);
  v60 = sub_1004D0928(&qword_100AD7C28, &type metadata accessor for OpacityTransition);
  v61 = v103;
  v62 = v105;
  v63 = v107;
  sub_10079BC04();
  (*(v109 + 8))(v58, v63);
  (*(v106 + 8))(v57, v62);
  v118 = v55;
  v119 = &protocol witness table for _PaddingLayout;
  v64 = v93;
  v65 = swift_getWitnessTable();
  v114 = v62;
  v115 = v63;
  v116 = v59;
  v117 = v60;
  swift_getOpaqueTypeConformance2();
  v66 = v94;
  v67 = v108;
  sub_1004C7A78(v61);
  (*(v110 + 8))(v61, v67);
  (*(v100 + 8))(v56, v64);
  v68 = sub_100005920(&qword_100AD7220, &qword_100AD7228);
  v112 = v65;
  v113 = v68;
  v69 = v99;
  v70 = swift_getWitnessTable();
  v71 = v96;
  sub_10039232C(v66, v69, v70);
  v72 = *(v101 + 8);
  v72(v66, v69);
  sub_10039232C(v71, v69, v70);
  return (v72)(v71, v69);
}

uint64_t sub_1004CB438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = sub_1001F1160(&qword_100AE71B0);
  __chkstk_darwin(v32);
  v4 = &v31 - v3;
  v34 = sub_1001F1160(&qword_100AE74C0);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v31 - v5;
  v7 = sub_1001F1160(&qword_100AE74C8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_1001F1160(&qword_100AE74D0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  *v4 = sub_10079C8F4();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v15 = sub_1001F1160(&qword_100AE72B8);
  sub_1004CBA5C(a1, &v4[*(v15 + 44)]);
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  *(v16 + 80) = *(a1 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(a1 + 96);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  v19 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v19;
  sub_1004CF1DC(a1, v36);
  sub_100005920(&qword_100AE7218, &qword_100AE71B0);
  sub_10079D764();

  sub_100007840(v4, &qword_100AE71B0);
  sub_10079E474();
  sub_10079C414();
  (*(v33 + 32))(v10, v6, v34);
  v20 = &v10[*(v8 + 44)];
  v21 = v36[5];
  *(v20 + 4) = v36[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v36[6];
  v22 = v36[1];
  *v20 = v36[0];
  *(v20 + 1) = v22;
  v23 = v36[3];
  *(v20 + 2) = v36[2];
  *(v20 + 3) = v23;
  sub_10079E474();
  sub_10079BE54();
  sub_10020B3C8(v10, v14, &qword_100AE74C8);
  v24 = &v14[*(v12 + 44)];
  v25 = v36[8];
  *v24 = v36[7];
  *(v24 + 1) = v25;
  *(v24 + 2) = v36[9];
  KeyPath = swift_getKeyPath();
  v27 = sub_1001F1160(&qword_100AE74D8);
  v28 = v35;
  v29 = (v35 + *(v27 + 36));
  *v29 = KeyPath;
  sub_1001F1160(&unk_100ADB740);
  swift_storeEnumTagMultiPayload();
  *(v29 + *(type metadata accessor for ClipHorizontallyWithFadeout() + 20)) = 0x4034000000000000;
  return sub_10020B3C8(v14, v28, &qword_100AE74D0);
}

uint64_t sub_1004CB87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE71B0);
  __chkstk_darwin(v4);
  v6 = &v24[-v5 - 8];
  *v6 = sub_10079C8F4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_1001F1160(&qword_100AE72B8);
  sub_1004CBA5C(a1, &v6[*(v7 + 44)]);
  v8 = swift_allocObject();
  v9 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v11 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v11;
  sub_1004CF1DC(a1, v24);
  sub_100005920(&qword_100AE7218, &qword_100AE71B0);
  sub_10079D764();

  sub_100007840(v6, &qword_100AE71B0);
  v12 = sub_10079D2F4();
  sub_10079BBA4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = sub_1001F1160(&qword_100AE72D8);
  v22 = a2 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1004CBA5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v270 = a2;
  v244 = sub_1001F1160(&qword_100AE72E0);
  __chkstk_darwin(v244);
  v246 = &v200 - v3;
  v269 = sub_1001F1160(&qword_100AE72E8);
  __chkstk_darwin(v269);
  v247 = &v200 - v4;
  v245 = sub_1001F1160(&qword_100AE72F0);
  __chkstk_darwin(v245);
  v228 = &v200 - v5;
  v6 = sub_1001F1160(&qword_100AE72F8);
  v225 = *(v6 - 8);
  v226 = v6;
  __chkstk_darwin(v6);
  v222 = &v200 - v7;
  v8 = sub_1001F1160(&qword_100AE7300);
  __chkstk_darwin(v8 - 8);
  v227 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v248 = &v200 - v11;
  v253 = sub_1001F1160(&qword_100AE7308);
  __chkstk_darwin(v253);
  v238 = &v200 - v12;
  v251 = sub_1001F1160(&qword_100AE7310);
  __chkstk_darwin(v251);
  v252 = &v200 - v13;
  *(&v265 + 1) = sub_1001F1160(&qword_100AE7318);
  __chkstk_darwin(*(&v265 + 1));
  v254 = &v200 - v14;
  v212 = sub_10079D074();
  v210 = *(v212 - 8);
  __chkstk_darwin(v212);
  v205 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1001F1160(&qword_100AE7320);
  __chkstk_darwin(v207);
  v204 = (&v200 - v16);
  v211 = sub_1001F1160(&qword_100AE7328);
  v209 = *(v211 - 8);
  __chkstk_darwin(v211);
  v206 = &v200 - v17;
  v219 = sub_1001F1160(&qword_100AE7330);
  __chkstk_darwin(v219);
  v208 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v213 = &v200 - v20;
  v240 = sub_1001F1160(&qword_100AE7338);
  __chkstk_darwin(v240);
  v242 = &v200 - v21;
  v216 = sub_1001F1160(&qword_100AE7340);
  __chkstk_darwin(v216);
  v218 = &v200 - v22;
  v241 = sub_1001F1160(&qword_100AE7348);
  __chkstk_darwin(v241);
  v220 = &v200 - v23;
  v217 = sub_1001F1160(&qword_100AE7350);
  __chkstk_darwin(v217);
  v25 = (&v200 - v24);
  v239 = sub_1001F1160(&qword_100AE7358);
  __chkstk_darwin(v239);
  v215 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v214 = &v200 - v28;
  __chkstk_darwin(v29);
  v256 = &v200 - v30;
  __chkstk_darwin(v31);
  v261 = &v200 - v32;
  v33 = sub_10079BC44();
  v232 = *(v33 - 8);
  v233 = v33;
  __chkstk_darwin(v33);
  v230 = &v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v231 = &v200 - v36;
  v250 = sub_1001F1160(&qword_100AE7360);
  __chkstk_darwin(v250);
  v243 = &v200 - v37;
  v259 = sub_1001F1160(&qword_100AE7368);
  __chkstk_darwin(v259);
  v237 = &v200 - v38;
  v267 = sub_1001F1160(&qword_100AE7370);
  __chkstk_darwin(v267);
  v268 = &v200 - v39;
  v262 = sub_1001F1160(&qword_100AE7378);
  __chkstk_darwin(v262);
  v264 = &v200 - v40;
  v257 = sub_1001F1160(&qword_100AE7380);
  __chkstk_darwin(v257);
  v42 = &v200 - v41;
  v263 = sub_1001F1160(&qword_100AE7388);
  __chkstk_darwin(v263);
  v258 = &v200 - v43;
  v266 = sub_1001F1160(&qword_100AE7390);
  __chkstk_darwin(v266);
  *&v265 = &v200 - v44;
  v260 = sub_1001F1160(&qword_100AE7398);
  __chkstk_darwin(v260);
  v224 = &v200 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v221 = &v200 - v47;
  __chkstk_darwin(v48);
  v236 = &v200 - v49;
  __chkstk_darwin(v50);
  v235 = &v200 - v51;
  __chkstk_darwin(v52);
  v255 = &v200 - v53;
  __chkstk_darwin(v54);
  v249 = &v200 - v55;
  __chkstk_darwin(v56);
  v58 = &v200 - v57;
  v59 = sub_1001F1160(&qword_100AE73A0);
  __chkstk_darwin(v59);
  v61 = &v200 - v60;
  v62 = a1[11];
  swift_getKeyPath();
  swift_getKeyPath();
  v234 = v62;
  sub_10079B9A4();

  v63 = *(&v291 + 1);
  if (*(&v291 + 1) != 1)
  {
    v201 = v25;
    v223 = a1;
    v73 = v289;
    v74 = v290;
    v75 = v291;
    sub_1002AEF10(v289, *(&v289 + 1), v290, *(&v290 + 1), v291);
    v229 = v73;
    v202 = v74;
    v203 = *(&v73 + 1);
    sub_1004CEEF0(v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v63);
    if (v75 <= 1u)
    {
      if (!v75)
      {
        v76 = v237;
        v77 = v229;
        v78 = v203;
        sub_1004CE3C0(v229, v203, v237);
        sub_100471118(v77, v78, v202, *(&v74 + 1), 0);
        v65 = &qword_100AE7368;
        v61 = v76;
        sub_1000077D8(v76, v42, &qword_100AE7368);
        goto LABEL_4;
      }

      v259 = *(&v74 + 1);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      v102 = *(&v291 + 1);
      if (*(&v291 + 1) != 1)
      {
        v103 = v289;
        v105 = *(&v290 + 1);
        v104 = v290;
        v106 = v291;
        v107 = v291;
        sub_1002AEF10(v289, *(&v289 + 1), v290, *(&v290 + 1), v291);
        sub_1004CEEF0(v103, *(&v103 + 1), v104, v105, v106, v102);
        if (v107 == 1)
        {
          sub_100471118(v103, *(&v103 + 1), v104, v105, 1u);
          if (v104 != 2)
          {
            if ((v104 & 1) == 0)
            {

LABEL_45:
              i = v223;
              v166 = v223[6];
              if (!v166)
              {
                goto LABEL_52;
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v167 = v166;
              v168 = v231;
              sub_10079B9A4();

              v170 = v232;
              v169 = v233;
              v171 = v230;
              (*(v232 + 104))(v230, enum case for ColorScheme.light(_:), v233);
              sub_10079BC34();
              v172 = *(v170 + 8);
              v172(v171, v169);
              v172(v168, v169);
              v173 = sub_10079DE54();

              v174 = sub_10079DF24();
              KeyPath = swift_getKeyPath();
              v176 = v261;
              sub_1004CE700(32, 0xE100000000000000);
              v177 = v256;
              v178 = v229;
              v179 = v203;
              sub_1004CE700(v229, v203);
              sub_100471118(v178, v179, v202, v259, 1u);
              v180 = v214;
              sub_1000077D8(v176, v214, &qword_100AE7358);
              v181 = v215;
              sub_1000077D8(v177, v215, &qword_100AE7358);
              v182 = v201;
              *v201 = v174;
              *(v182 + 8) = KeyPath;
              *(v182 + 16) = v173;
              v183 = sub_1001F1160(&qword_100AE7490);
              sub_1000077D8(v180, v182 + *(v183 + 48), &qword_100AE7358);
              sub_1000077D8(v181, v182 + *(v183 + 64), &qword_100AE7358);
              swift_retain_n();
              swift_retain_n();
              swift_retain_n();
              sub_100007840(v181, &qword_100AE7358);
              sub_100007840(v180, &qword_100AE7358);

              sub_1000077D8(v182, v218, &qword_100AE7350);
              swift_storeEnumTagMultiPayload();
              sub_100005920(&qword_100AE7420, &qword_100AE7350);
              sub_1004D0240();
              v184 = v220;
              sub_10079CCA4();
              sub_1000077D8(v184, v242, &qword_100AE7348);
              swift_storeEnumTagMultiPayload();
              sub_1004D0188();
              sub_1004D036C();
              v61 = v243;
              sub_10079CCA4();

              sub_100007840(v184, &qword_100AE7348);
              sub_100007840(v182, &qword_100AE7350);
              sub_100007840(v256, &qword_100AE7358);
              v139 = v261;
              goto LABEL_37;
            }

            v108 = sub_1007A3AB4();

            if (v108)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          sub_100471118(v103, *(&v103 + 1), v104, v105, v106);
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      v130 = *(&v291 + 1);
      v61 = v243;
      if (*(&v291 + 1) != 1)
      {
        v131 = v289;
        v133 = *(&v290 + 1);
        v132 = v290;
        v134 = v291;
        v135 = v291;
        sub_1002AEF10(v289, *(&v289 + 1), v290, *(&v290 + 1), v291);
        sub_1004CEEF0(v131, *(&v131 + 1), v132, v133, v134, v130);
        if (v135 == 1)
        {
          sub_100471118(v131, *(&v131 + 1), v132, v133, 1u);
          if (v132 != 2)
          {
            if (v132)
            {

LABEL_48:
              v186 = sub_10079C8F4();
              v187 = v204;
              *v204 = v186;
              *(v187 + 8) = 0;
              *(v187 + 16) = 0;
              v188 = sub_1001F1160(&qword_100AE7488);
              v189 = v229;
              v190 = v203;
              sub_1004CE908(v223, v229, v203, v187 + *(v188 + 44));
              v191 = v205;
              sub_10079D044();
              v192 = sub_100005920(&qword_100AE7430, &qword_100AE7320);
              v194 = v206;
              v193 = v207;
              sub_10079D9A4();
              (*(v210 + 8))(v191, v212);
              sub_100007840(v187, &qword_100AE7320);
              v195 = v189;
              *&v289 = v189;
              *(&v289 + 1) = v190;
              *&v285 = v193;
              *(&v285 + 1) = v192;
              swift_getOpaqueTypeConformance2();
              sub_100206ECC();
              v196 = v208;
              v197 = v211;
              sub_10079D8E4();
              (*(v209 + 8))(v194, v197);
              sub_100471118(v195, v190, v202, v259, 1u);
              v198 = v213;
              sub_10079C284();
              sub_100007840(v196, &qword_100AE7330);
              sub_1000077D8(v198, v218, &qword_100AE7330);
              swift_storeEnumTagMultiPayload();
              sub_100005920(&qword_100AE7420, &qword_100AE7350);
              sub_1004D0240();
              v199 = v220;
              sub_10079CCA4();
              sub_1000077D8(v199, v242, &qword_100AE7348);
              swift_storeEnumTagMultiPayload();
              sub_1004D0188();
              sub_1004D036C();
              sub_10079CCA4();
              sub_100007840(v199, &qword_100AE7348);
              sub_100007840(v198, &qword_100AE7330);
              goto LABEL_38;
            }

            v185 = sub_1007A3AB4();

            if (v185)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          sub_100471118(v131, *(&v131 + 1), v132, v133, v134);
        }
      }

      v136 = v261;
      v137 = v229;
      v138 = v203;
      sub_1004CE700(v229, v203);
      sub_100471118(v137, v138, v202, v259, 1u);
      sub_1000077D8(v136, v242, &qword_100AE7358);
      swift_storeEnumTagMultiPayload();
      sub_1004D0188();
      sub_1004D036C();
      sub_10079CCA4();
      v139 = v136;
LABEL_37:
      sub_100007840(v139, &qword_100AE7358);
LABEL_38:
      v65 = &qword_100AE7360;
      sub_1000077D8(v61, v252, &qword_100AE7360);
      swift_storeEnumTagMultiPayload();
      sub_1004D00FC();
      sub_100005920(&qword_100AE7460, &qword_100AE7308);
      v140 = v254;
      sub_10079CCA4();
      v67 = &qword_100AE7318;
      sub_1000077D8(v140, v264, &qword_100AE7318);
      swift_storeEnumTagMultiPayload();
      sub_1004CFD4C();
      sub_1004D0044();
      v68 = v265;
      sub_10079CCA4();
      v69 = v140;
      goto LABEL_5;
    }

    v259 = *(&v74 + 1);
    v79 = v223;
    v80 = v256;
    if (v75 == 2)
    {
      v81 = v223[6];
      v82 = v261;
      v83 = v203;
      v84 = v229;
      if (v81)
      {
        v85 = v81;
        v86 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
        v87 = v249;
        sub_1004CE080(v84, v83, v86, v249);

        v88 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();

        v89 = v255;
        sub_1004CE080(58, 0xE100000000000000, v88, v255);

        v90 = sub_10079DDC4();
        v91 = swift_getKeyPath();
        sub_10079E474();
        sub_10079BE54();
        *&v289 = v91;
        *(&v289 + 1) = v90;
        sub_1004CE700(v202, v259);

        v92 = v235;
        sub_1000077D8(v87, v235, &qword_100AE7398);
        v93 = v236;
        sub_1000077D8(v89, v236, &qword_100AE7398);
        v277 = v289;
        v278 = v290;
        v279 = v291;
        v280 = v292;
        sub_1000077D8(v82, v80, &qword_100AE7358);
        v94 = v238;
        sub_1000077D8(v92, v238, &qword_100AE7398);
        v95 = sub_1001F1160(&qword_100AE7480);
        sub_1000077D8(v93, v94 + v95[12], &qword_100AE7398);
        v96 = (v94 + v95[16]);
        v97 = v278;
        v281 = v277;
        v282 = v278;
        v98 = v279;
        v99 = v280;
        v283 = v279;
        v284 = v280;
        *v96 = v277;
        v96[1] = v97;
        v96[2] = v98;
        v96[3] = v99;
        sub_1000077D8(v80, v94 + v95[20], &qword_100AE7358);
        sub_1000077D8(&v289, &v285, &qword_100AD4CA8);
        sub_1000077D8(&v281, &v285, &qword_100AD4CA8);
        sub_100007840(v80, &qword_100AE7358);
        v285 = v277;
        v286 = v278;
        v287 = v279;
        v288 = v280;
        sub_100007840(&v285, &qword_100AD4CA8);
        sub_100007840(v93, &qword_100AE7398);
        sub_100007840(v92, &qword_100AE7398);
        sub_1000077D8(v94, v252, &qword_100AE7308);
        swift_storeEnumTagMultiPayload();
        sub_1004D00FC();
        sub_100005920(&qword_100AE7460, &qword_100AE7308);
        v100 = v254;
        sub_10079CCA4();
        sub_1000077D8(v100, v264, &qword_100AE7318);
        swift_storeEnumTagMultiPayload();
        sub_1004CFD4C();
        sub_1004D0044();
        v101 = v265;
        sub_10079CCA4();
        sub_100007840(v100, &qword_100AE7318);
        sub_1000077D8(v101, v268, &qword_100AE7390);
        swift_storeEnumTagMultiPayload();
        sub_1004CFCC0();
        sub_1004D0598();
        sub_10079CCA4();
        sub_100007840(&v289, &qword_100AD4CA8);
        sub_100007840(v101, &qword_100AE7390);
        sub_100007840(v94, &qword_100AE7308);
        sub_100007840(v261, &qword_100AE7358);
        sub_100007840(v255, &qword_100AE7398);
        v70 = v249;
        v71 = &qword_100AE7398;
        return sub_100007840(v70, v71);
      }

      goto LABEL_50;
    }

    v109 = v261;
    v110 = v203;
    if (!v259)
    {
      v120 = v223[6];
      if (v120)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v121 = v120;
        v122 = v231;
        sub_10079B9A4();

        v124 = v232;
        v123 = v233;
        v125 = v230;
        (*(v232 + 104))(v230, enum case for ColorScheme.light(_:), v233);
        v126 = sub_10079BC34();
        v127 = *(v124 + 8);
        v127(v125, v123);
        v127(v122, v123);
        if (v126)
        {
          v128 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
        }

        else
        {
          v128 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
        }

        v141 = v128;

        v142 = v224;
        sub_1004CE080(v229, v110, v141, v224);

        v65 = &qword_100AE7398;
        sub_1000077D8(v142, v246, &qword_100AE7398);
        swift_storeEnumTagMultiPayload();
        sub_100005920(&qword_100AE73A8, &qword_100AE72F0);
        sub_1004CFA58();
        v143 = v247;
        sub_10079CCA4();
        sub_1000077D8(v143, v268, &qword_100AE72E8);
        swift_storeEnumTagMultiPayload();
        sub_1004CFCC0();
        sub_1004D0598();
        sub_10079CCA4();
        sub_100007840(v143, &qword_100AE72E8);
        v70 = v142;
        goto LABEL_6;
      }

      goto LABEL_50;
    }

    *&v289 = v229;
    *(&v289 + 1) = v203;
    sub_1002060B4();
    if (sub_1007A28A4())
    {
      v111 = *(v79 + 48);
      if (!v111)
      {
LABEL_50:
        for (i = *(v79 + 56); ; i = *(i + 56))
        {
LABEL_51:
          type metadata accessor for ChromeStyle();
          sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
          sub_10079C474();
          __break(1u);
LABEL_52:
          ;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v112 = v111;
      v113 = v231;
      *(&v265 + 1) = v112;
      sub_10079B9A4();

      v115 = v232;
      v114 = v233;
      v116 = v230;
      (*(v232 + 104))(v230, enum case for ColorScheme.light(_:), v233);
      v117 = sub_10079BC34();
      v118 = *(v115 + 8);
      v118(v116, v114);
      v118(v113, v114);
      if (v117)
      {
        v119 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      }

      else
      {
        v119 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      }

      v144 = v119;

      v145 = v221;
      sub_1004CE080(v229, v110, v144, v221);

      v146 = sub_10079DDC4();
      *(&v265 + 1) = v146;
      v147 = swift_getKeyPath();
      *&v265 = v147;
      sub_10079E474();
      sub_10079BE54();
      sub_1004CE700(10649826, 0xA300000000000000);
      v264 = sub_10079DDC4();
      v148 = swift_getKeyPath();
      sub_10079E474();
      sub_10079BE54();
      v149 = v255;
      sub_1000077D8(v145, v255, &qword_100AE7398);
      sub_1000077D8(v261, v80, &qword_100AE7358);
      v150 = v222;
      sub_1000077D8(v149, v222, &qword_100AE7398);
      v151 = sub_1001F1160(&qword_100AE7478);
      v152 = (v150 + v151[12]);
      *&v277 = v147;
      *(&v277 + 1) = v146;
      v153 = v275;
      v279 = v275;
      v280 = v276;
      v154 = v274;
      v278 = v274;
      v155 = v276;
      *v152 = v277;
      v152[1] = v154;
      v152[2] = v153;
      v152[3] = v155;
      sub_1000077D8(v80, v150 + v151[16], &qword_100AE7358);
      v156 = (v150 + v151[20]);
      *&v281 = v148;
      v157 = v264;
      *(&v281 + 1) = v264;
      v158 = v271;
      v159 = v272;
      v282 = v271;
      v283 = v272;
      v160 = v273;
      v284 = v273;
      *v156 = v281;
      v156[1] = v158;
      v156[2] = v159;
      v156[3] = v160;
      sub_1000077D8(&v277, &v289, &qword_100AD4CA8);
      sub_1000077D8(&v281, &v289, &qword_100AD4CA8);
      sub_100007840(v261, &qword_100AE7358);
      sub_100007840(v145, &qword_100AE7398);
      *&v285 = v148;
      *(&v285 + 1) = v157;
      v109 = v261;
      v286 = v271;
      v287 = v272;
      v288 = v273;
      sub_100007840(&v285, &qword_100AD4CA8);
      sub_100007840(v256, &qword_100AE7358);
      v289 = v265;
      v290 = v274;
      v291 = v275;
      v292 = v276;
      v80 = v256;
      sub_100007840(&v289, &qword_100AD4CA8);
      sub_100007840(v149, &qword_100AE7398);
      v129 = v248;
      sub_10020B3C8(v150, v248, &qword_100AE72F8);
      (*(v225 + 56))(v129, 0, 1, v226);
    }

    else
    {

      v129 = v248;
      (*(v225 + 56))(v248, 1, 1, v226);
    }

    sub_1004CE700(v202, v259);

    v161 = v227;
    sub_1000077D8(v129, v227, &qword_100AE7300);
    sub_1000077D8(v109, v80, &qword_100AE7358);
    v162 = v228;
    sub_1000077D8(v161, v228, &qword_100AE7300);
    v163 = sub_1001F1160(&qword_100AE7470);
    sub_1000077D8(v80, v162 + *(v163 + 48), &qword_100AE7358);
    sub_100007840(v80, &qword_100AE7358);
    sub_100007840(v161, &qword_100AE7300);
    sub_1000077D8(v162, v246, &qword_100AE72F0);
    swift_storeEnumTagMultiPayload();
    sub_100005920(&qword_100AE73A8, &qword_100AE72F0);
    sub_1004CFA58();
    v164 = v247;
    sub_10079CCA4();
    sub_1000077D8(v164, v268, &qword_100AE72E8);
    swift_storeEnumTagMultiPayload();
    sub_1004CFCC0();
    sub_1004D0598();
    sub_10079CCA4();
    sub_100007840(v164, &qword_100AE72E8);
    sub_100007840(v162, &qword_100AE72F0);
    sub_100007840(v109, &qword_100AE7358);
    v70 = v248;
    v71 = &qword_100AE7300;
    return sub_100007840(v70, v71);
  }

  if (!a1[6])
  {
    i = a1[7];
    goto LABEL_51;
  }

  v64 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  sub_1004CE080(32, 0xE100000000000000, v64, v58);

  sub_1004CFA58();
  sub_10079D784();
  sub_100007840(v58, &qword_100AE7398);
  v65 = &qword_100AE73A0;
  sub_1000077D8(v61, v42, &qword_100AE73A0);
LABEL_4:
  swift_storeEnumTagMultiPayload();
  sub_1004CFDD8();
  sub_1004CFE94();
  v66 = v258;
  sub_10079CCA4();
  v67 = &qword_100AE7388;
  sub_1000077D8(v66, v264, &qword_100AE7388);
  swift_storeEnumTagMultiPayload();
  sub_1004CFD4C();
  sub_1004D0044();
  v68 = v265;
  sub_10079CCA4();
  v69 = v66;
LABEL_5:
  sub_100007840(v69, v67);
  sub_1000077D8(v68, v268, &qword_100AE7390);
  swift_storeEnumTagMultiPayload();
  sub_1004CFCC0();
  sub_1004D0598();
  sub_10079CCA4();
  sub_100007840(v68, &qword_100AE7390);
  v70 = v61;
LABEL_6:
  v71 = v65;
  return sub_100007840(v70, v71);
}

uint64_t sub_1004CE080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a3;
  v34 = a4;
  v31 = sub_1001F1160(&qword_100AE74B0);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v28 - v8;
  v30 = sub_1001F1160(&qword_100AE73C0);
  __chkstk_darwin(v30);
  v11 = &v28 - v10;
  *&v41[0] = a1;
  *(&v41[0] + 1) = a2;
  sub_100206ECC();

  v12 = sub_10079D5D4();
  v14 = v13;
  LOBYTE(a2) = v15;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = a2 & 1;
  v44 = a2 & 1;
  v43 = 0;
  v33 = v5;
  sub_1004C872C();
  if (sub_1007A2BB4())
  {
    v21 = sub_10079D4B4();
  }

  else
  {
    v21 = sub_10079D354();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  *&v35 = v12;
  *(&v35 + 1) = v14;
  LOBYTE(v36) = v20;
  *(&v36 + 1) = v17;
  *&v37 = KeyPath;
  *(&v37 + 1) = 2;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = v19;
  LOBYTE(v39) = 1;
  *(&v39 + 1) = v23;
  v40 = v22;
  sub_1001F1160(&qword_100AE73C8);
  sub_1004CFC08();
  sub_10079DAD4();
  v41[3] = v38;
  v41[4] = v39;
  v42 = v40;
  v41[0] = v35;
  v41[1] = v36;
  v41[2] = v37;
  sub_100007840(v41, &qword_100AE73C8);
  v24 = swift_getKeyPath();
  (*(v29 + 32))(v11, v9, v31);
  v25 = &v11[*(v30 + 36)];
  v26 = v32;
  *v25 = v24;
  v25[1] = v26;

  sub_1004C8884();
  sub_1004CFB14();
  sub_10079D944();
  return sub_100007840(v11, &qword_100AE73C0);
}

uint64_t sub_1004CE3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a3;
  v29 = sub_1001F1160(&qword_100AE7498);
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v27 - v7;
  v9 = sub_1001F1160(&qword_100AE7400);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *&v37[0] = a1;
  *(&v37[0] + 1) = a2;
  sub_100206ECC();

  v12 = sub_10079D5D4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v30 = v4;
  sub_1004C872C();
  if (sub_1007A2BB4())
  {
    v20 = sub_10079D4B4();
  }

  else
  {
    v20 = sub_10079D354();
  }

  v21 = v20;
  v22 = swift_getKeyPath();
  v40 = v16 & 1;
  v39 = 0;
  *&v32 = v12;
  *(&v32 + 1) = v14;
  LOBYTE(v33) = v16 & 1;
  *(&v33 + 1) = v18;
  *&v34 = KeyPath;
  *(&v34 + 1) = 1;
  LOBYTE(v35) = 0;
  *(&v35 + 1) = v22;
  v36 = v21;
  sub_10079D3F4();
  sub_1001F1160(&qword_100ADF2C0);
  sub_10039185C();
  sub_10079D664();
  v37[2] = v34;
  v37[3] = v35;
  v38 = v36;
  v37[0] = v32;
  v37[1] = v33;
  sub_100007840(v37, &qword_100ADF2C0);
  if (*(v30 + 48))
  {
    v23 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v24 = swift_getKeyPath();
    (*(v28 + 32))(v11, v8, v29);
    v25 = &v11[*(v9 + 36)];
    *v25 = v24;
    v25[1] = v23;
    sub_1004C8884();
    sub_1004CFF50();
    sub_10079D944();
    return sub_100007840(v11, &qword_100AE7400);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004CE700(uint64_t a1, uint64_t a2)
{
  *&v25[0] = a1;
  *(&v25[0] + 1) = a2;
  sub_100206ECC();

  v3 = sub_10079D5D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v7 & 1;
  v28 = v7 & 1;
  v27 = 0;
  if (*(v2 + 48))
  {
    v13 = v11;
    v14 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v15 = swift_getKeyPath();
    sub_1004C872C();
    if (sub_1007A2BB4())
    {
      v16 = sub_10079D4B4();
    }

    else
    {
      v16 = sub_10079D354();
    }

    v17 = v16;
    *&v19 = v3;
    *(&v19 + 1) = v5;
    LOBYTE(v20) = v12;
    *(&v20 + 1) = v9;
    *&v21 = KeyPath;
    *(&v21 + 1) = 2;
    LOBYTE(v22) = 0;
    *(&v22 + 1) = v13;
    LOBYTE(v23) = 1;
    *(&v23 + 1) = v15;
    *&v24 = v14;
    *(&v24 + 1) = swift_getKeyPath();
    sub_1004C8884();
    sub_1001F1160(&qword_100AE7448);
    sub_1004D0428();
    sub_10079D944();
    v25[4] = v23;
    v25[5] = v24;
    v26 = v17;
    v25[0] = v19;
    v25[1] = v20;
    v25[2] = v21;
    v25[3] = v22;
    return sub_100007840(v25, &qword_100AE7448);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004CE908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_1001F1160(&qword_100AE74A0);
  __chkstk_darwin(v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v43 - v10);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_1001F1160(&qword_100AE7358);
  __chkstk_darwin(v15 - 8);
  v44 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v43 = &v43 - v18;
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  sub_1004CE700(a2, a3);
  v25 = v21;
  sub_1004CE700(32, 0xE100000000000000);
  if (*(a1 + 48))
  {
    v26 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v27 = sub_10079DF24();
    KeyPath = swift_getKeyPath();
    v29 = (v11 + *(v7 + 36));
    v30 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
    v31 = enum case for Image.Scale.small(_:);
    v32 = sub_10079DF84();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v11 = v27;
    v11[1] = KeyPath;
    v11[2] = v26;
    sub_1004D0650(v11, v14);
    v33 = v24;
    v34 = v24;
    v35 = v43;
    sub_1000077D8(v34, v43, &qword_100AE7358);
    v36 = v25;
    v37 = v25;
    v38 = v44;
    sub_1000077D8(v37, v44, &qword_100AE7358);
    v39 = v46;
    sub_1000077D8(v14, v46, &qword_100AE74A0);
    v40 = v45;
    sub_1000077D8(v35, v45, &qword_100AE7358);
    v41 = sub_1001F1160(&qword_100AE74A8);
    sub_1000077D8(v38, v40 + *(v41 + 48), &qword_100AE7358);
    sub_1000077D8(v39, v40 + *(v41 + 64), &qword_100AE74A0);
    sub_100007840(v14, &qword_100AE74A0);
    sub_100007840(v36, &qword_100AE7358);
    sub_100007840(v33, &qword_100AE7358);
    sub_100007840(v39, &qword_100AE74A0);
    sub_100007840(v38, &qword_100AE7358);
    return sub_100007840(v35, &qword_100AE7358);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004D0928(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004CED3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v6 != 1)
  {
    sub_1000260E8(v6);
    result = sub_1004CEEF0(v1, v2, v3, v4, v5, v6);
    if (v6)
    {
      v6(result);
      return sub_100007020(v6);
    }
  }

  return result;
}

unint64_t sub_1004CEE6C()
{
  result = qword_100AE7150;
  if (!qword_100AE7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7150);
  }

  return result;
}

uint64_t sub_1004CEEF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_100471118(result, a2, a3, a4, a5);

    return sub_100007020(a6);
  }

  return result;
}

unint64_t sub_1004CEF3C()
{
  result = qword_100AE7158;
  if (!qword_100AE7158)
  {
    sub_1001F1234(&unk_100AE3F30);
    sub_1004CEFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7158);
  }

  return result;
}

unint64_t sub_1004CEFC0()
{
  result = qword_100AE7160;
  if (!qword_100AE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7160);
  }

  return result;
}

__n128 sub_1004CF014(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1004CF040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004CF088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004CF0F0()
{
  result = qword_100AE7168;
  if (!qword_100AE7168)
  {
    sub_1001F1234(&qword_100AE7170);
    sub_1004CEE6C();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7168);
  }

  return result;
}

uint64_t sub_1004CF1C8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1004CF214()
{
  result = qword_100AE71E0;
  if (!qword_100AE71E0)
  {
    sub_1001F1234(&qword_100AE7188);
    sub_1004CF2A0();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE71E0);
  }

  return result;
}

unint64_t sub_1004CF2A0()
{
  result = qword_100AE71E8;
  if (!qword_100AE71E8)
  {
    sub_1001F1234(&qword_100AE71F0);
    sub_1004CF32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE71E8);
  }

  return result;
}

unint64_t sub_1004CF32C()
{
  result = qword_100AE71F8;
  if (!qword_100AE71F8)
  {
    sub_1001F1234(&qword_100AE7200);
    sub_1004CF3E8();
    sub_1004D0928(&qword_100AE7220, type metadata accessor for ClipHorizontallyWithFadeout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE71F8);
  }

  return result;
}

unint64_t sub_1004CF3E8()
{
  result = qword_100AE7208;
  if (!qword_100AE7208)
  {
    sub_1001F1234(&qword_100AE7210);
    sub_1001F1234(&qword_100AE71B0);
    sub_100005920(&qword_100AE7218, &qword_100AE71B0);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD7220, &qword_100AD7228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7208);
  }

  return result;
}

unint64_t sub_1004CF510()
{
  result = qword_100AE7228;
  if (!qword_100AE7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7228);
  }

  return result;
}

unint64_t sub_1004CF564()
{
  result = qword_100AE7230;
  if (!qword_100AE7230)
  {
    sub_1001F1234(&qword_100AE71D8);
    sub_1004CF5F0();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7230);
  }

  return result;
}

unint64_t sub_1004CF5F0()
{
  result = qword_100AE7238;
  if (!qword_100AE7238)
  {
    sub_1001F1234(&qword_100AE7240);
    sub_100005920(&qword_100AE7248, &qword_100AE7250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7238);
  }

  return result;
}

unint64_t sub_1004CF6A8()
{
  result = qword_100AE7258;
  if (!qword_100AE7258)
  {
    sub_1001F1234(&qword_100AE71A0);
    sub_1004CF734();
    sub_1004CF878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7258);
  }

  return result;
}

unint64_t sub_1004CF734()
{
  result = qword_100AE7260;
  if (!qword_100AE7260)
  {
    sub_1001F1234(&qword_100AE71D0);
    sub_1004CF7C0();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7260);
  }

  return result;
}

unint64_t sub_1004CF7C0()
{
  result = qword_100AE7268;
  if (!qword_100AE7268)
  {
    sub_1001F1234(&qword_100AE71C8);
    sub_100005920(&qword_100AE7270, &qword_100AE71C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7268);
  }

  return result;
}

unint64_t sub_1004CF878()
{
  result = qword_100AE7278;
  if (!qword_100AE7278)
  {
    sub_1001F1234(&qword_100AE7280);
    sub_1004CF904();
    sub_1004CF510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7278);
  }

  return result;
}

unint64_t sub_1004CF904()
{
  result = qword_100AE7288;
  if (!qword_100AE7288)
  {
    sub_1001F1234(&qword_100AE7290);
    sub_100005920(&qword_100AE7298, &qword_100AE72A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7288);
  }

  return result;
}

unint64_t sub_1004CF9BC()
{
  result = qword_100AE72A8;
  if (!qword_100AE72A8)
  {
    sub_1001F1234(&qword_100AE7180);
    sub_1004CF214();
    sub_1004CF564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE72A8);
  }

  return result;
}

unint64_t sub_1004CFA58()
{
  result = qword_100AE73B0;
  if (!qword_100AE73B0)
  {
    sub_1001F1234(&qword_100AE7398);
    sub_1004CFB14();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73B0);
  }

  return result;
}

unint64_t sub_1004CFB14()
{
  result = qword_100AE73B8;
  if (!qword_100AE73B8)
  {
    sub_1001F1234(&qword_100AE73C0);
    sub_1001F1234(&qword_100AE73C8);
    sub_1004CFC08();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73B8);
  }

  return result;
}

unint64_t sub_1004CFC08()
{
  result = qword_100AE73D0;
  if (!qword_100AE73D0)
  {
    sub_1001F1234(&qword_100AE73C8);
    sub_100323FAC();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73D0);
  }

  return result;
}

unint64_t sub_1004CFCC0()
{
  result = qword_100AE73D8;
  if (!qword_100AE73D8)
  {
    sub_1001F1234(&qword_100AE7390);
    sub_1004CFD4C();
    sub_1004D0044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73D8);
  }

  return result;
}

unint64_t sub_1004CFD4C()
{
  result = qword_100AE73E0;
  if (!qword_100AE73E0)
  {
    sub_1001F1234(&qword_100AE7388);
    sub_1004CFDD8();
    sub_1004CFE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73E0);
  }

  return result;
}

unint64_t sub_1004CFDD8()
{
  result = qword_100AE73E8;
  if (!qword_100AE73E8)
  {
    sub_1001F1234(&qword_100AE73A0);
    sub_1004CFA58();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73E8);
  }

  return result;
}

unint64_t sub_1004CFE94()
{
  result = qword_100AE73F0;
  if (!qword_100AE73F0)
  {
    sub_1001F1234(&qword_100AE7368);
    sub_1004CFF50();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73F0);
  }

  return result;
}

unint64_t sub_1004CFF50()
{
  result = qword_100AE73F8;
  if (!qword_100AE73F8)
  {
    sub_1001F1234(&qword_100AE7400);
    sub_1001F1234(&qword_100ADF2C0);
    sub_10039185C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE73F8);
  }

  return result;
}

unint64_t sub_1004D0044()
{
  result = qword_100AE7408;
  if (!qword_100AE7408)
  {
    sub_1001F1234(&qword_100AE7318);
    sub_1004D00FC();
    sub_100005920(&qword_100AE7460, &qword_100AE7308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7408);
  }

  return result;
}

unint64_t sub_1004D00FC()
{
  result = qword_100AE7410;
  if (!qword_100AE7410)
  {
    sub_1001F1234(&qword_100AE7360);
    sub_1004D0188();
    sub_1004D036C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7410);
  }

  return result;
}

unint64_t sub_1004D0188()
{
  result = qword_100AE7418;
  if (!qword_100AE7418)
  {
    sub_1001F1234(&qword_100AE7348);
    sub_100005920(&qword_100AE7420, &qword_100AE7350);
    sub_1004D0240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7418);
  }

  return result;
}

unint64_t sub_1004D0240()
{
  result = qword_100AE7428;
  if (!qword_100AE7428)
  {
    sub_1001F1234(&qword_100AE7330);
    sub_1001F1234(&qword_100AE7320);
    sub_100005920(&qword_100AE7430, &qword_100AE7320);
    swift_getOpaqueTypeConformance2();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7428);
  }

  return result;
}

unint64_t sub_1004D036C()
{
  result = qword_100AE7438;
  if (!qword_100AE7438)
  {
    sub_1001F1234(&qword_100AE7358);
    sub_1004D0428();
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7438);
  }

  return result;
}

unint64_t sub_1004D0428()
{
  result = qword_100AE7440;
  if (!qword_100AE7440)
  {
    sub_1001F1234(&qword_100AE7448);
    sub_1004D04E0();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7440);
  }

  return result;
}

unint64_t sub_1004D04E0()
{
  result = qword_100AE7450;
  if (!qword_100AE7450)
  {
    sub_1001F1234(&qword_100AE7458);
    sub_100323FAC();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7450);
  }

  return result;
}

unint64_t sub_1004D0598()
{
  result = qword_100AE7468;
  if (!qword_100AE7468)
  {
    sub_1001F1234(&qword_100AE72E8);
    sub_100005920(&qword_100AE73A8, &qword_100AE72F0);
    sub_1004CFA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7468);
  }

  return result;
}

uint64_t sub_1004D0650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE74A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D06C0()
{
  sub_1004CF1C8(*(v0 + 16), *(v0 + 24), *(v0 + 25));
  sub_10002AEBC(*(v0 + 32), *(v0 + 40));
  sub_10002AEBC(*(v0 + 48), *(v0 + 56));

  sub_10002AEBC(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

__n128 sub_1004D0734(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1004D0748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004D0790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004D07E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1004D083C()
{
  result = qword_100AE7568;
  if (!qword_100AE7568)
  {
    sub_1001F1234(&qword_100AE7570);
    sub_1004CF6A8();
    sub_1004CF9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7568);
  }

  return result;
}

uint64_t sub_1004D0928(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004D0970()
{
  result = qword_100AE7590;
  if (!qword_100AE7590)
  {
    sub_1001F1234(&qword_100AE7578);
    sub_100005920(&qword_100AE7588, &qword_100AE7580);
    sub_1004D0928(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7590);
  }

  return result;
}

uint64_t sub_1004D0A68@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v70 = *v1;
  v2 = sub_1001F1160(&qword_100AE0898);
  __chkstk_darwin(v2 - 8);
  v79 = &v63 - v3;
  v4 = sub_1001F1160(&qword_100AE08A0);
  __chkstk_darwin(v4 - 8);
  v78 = &v63 - v5;
  v6 = sub_1001F1160(&qword_100AE08A8);
  __chkstk_darwin(v6 - 8);
  v77 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v63 - v9;
  v10 = sub_1001F1160(&qword_100AE08B0);
  __chkstk_darwin(v10 - 8);
  v75 = &v63 - v11;
  v12 = sub_1001F1160(&qword_100AE08B8);
  __chkstk_darwin(v12 - 8);
  v74 = &v63 - v13;
  v14 = sub_100799F74();
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v64 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&qword_100AE08C0);
  __chkstk_darwin(v16 - 8);
  v73 = &v63 - v17;
  v18 = sub_1001F1160(&qword_100AE08C8);
  __chkstk_darwin(v18 - 8);
  v81 = &v63 - v19;
  v66 = sub_100799DC4();
  v20 = *(v66 - 8);
  __chkstk_darwin(v66);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001F1160(&qword_100AE08D0);
  __chkstk_darwin(v23 - 8);
  v25 = &v63 - v24;
  v26 = sub_1001F1160(&qword_100AE08D8);
  __chkstk_darwin(v26 - 8);
  v28 = &v63 - v27;
  v29 = sub_100799E74();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001F1160(&qword_100AE08E0);
  __chkstk_darwin(v33 - 8);
  v35 = &v63 - v34;
  sub_100799E94();
  sub_1004D18A4();
  (*(v30 + 8))(v32, v29);
  v36 = *(v30 + 56);
  v67 = v35;
  v36(v35, 0, 1, v29);
  sub_100799ED4();
  v37 = sub_100799EB4();
  v38 = *(*(v37 - 8) + 56);
  v71 = v28;
  v38(v28, 0, 1, v37);
  sub_100799DD4();
  sub_1004D1BE8(v25);
  v39 = v22;
  v40 = v66;
  (*(v20 + 8))(v39, v66);
  v41 = *(v20 + 56);
  v72 = v25;
  v41(v25, 0, 1, v40);
  v42 = v81;
  sub_100799F24();
  v43 = sub_100799F14();
  v44 = v64;
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v45 = sub_100799F94();
  v46 = sub_100799EC4();
  sub_100799F84();
  if (qword_100AD1428 != -1)
  {
    swift_once();
  }

  sub_1004D2AE4();
  sub_100797A84();
  v65 = v46;
  v66 = v45;
  if (v82 > 1u)
  {
    v47 = v73;
    v49 = v68;
    v48 = v69;
    if (v82 == 2)
    {
      (*(v68 + 8))(v44, v69);
      v50 = &enum case for Configuration.MediaTypeMethod.allJoint(_:);
    }

    else if (v82 == 3)
    {
      (*(v68 + 8))(v44, v69);
      v50 = &enum case for Configuration.MediaTypeMethod.allDisjoint(_:);
    }

    else
    {
      (*(v68 + 8))(v44, v69);
      v50 = &enum case for Configuration.MediaTypeMethod.interestBased(_:);
    }

    goto LABEL_12;
  }

  v47 = v73;
  v49 = v68;
  v48 = v69;
  if (v82)
  {
    (*(v68 + 8))(v44, v69);
    v50 = &enum case for Configuration.MediaTypeMethod.singleJoint(_:);
LABEL_12:
    (*(v49 + 104))(v47, *v50, v48);
    goto LABEL_13;
  }

  (*(v68 + 32))(v73, v44, v69);
LABEL_13:
  (*(v49 + 56))(v47, 0, 1, v48);
  v51 = v74;
  sub_100799EF4();
  v52 = sub_100799EE4();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v53 = v75;
  sub_100799EA4();
  v54 = sub_100799F54();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = v76;
  sub_100799F04();
  v56 = sub_100799F34();
  v57 = *(*(v56 - 8) + 56);
  v57(v55, 0, 1, v56);
  v58 = v77;
  sub_100799F44();
  v57(v58, 0, 1, v56);
  v59 = sub_100799F64();
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v60 = v79;
  sub_100799DE4();
  v61 = sub_10079A2D4();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  return sub_100799E84();
}

uint64_t sub_1004D14B0(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_100799FB4();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return _swift_task_switch(sub_1004D1574, 0, 0);
}

uint64_t sub_1004D1574()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  sub_10000E3E8(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1004D1634;
  v5 = v0[5];

  return dispatch thunk of ConfigurationServiceType.fetchConfiguration()(v5, v2, v3);
}

uint64_t sub_1004D1634()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1004D17E0;
  }

  else
  {
    v2 = sub_1004D1748;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D1748()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_1004D0A68(v0[2]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004D17E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D18A4()
{
  v0 = sub_1001F1160(&qword_100AE7690);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1001F1160(&qword_100AE7698);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_100799E44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100AD1430 != -1)
  {
    swift_once();
  }

  sub_1004D2AE4();
  sub_100797A84();
  if (v14 > 2u)
  {
    if (v14 == 3)
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.bookHistory(_:);
    }

    else if (v14 == 4)
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.onDevicePersonalization(_:);
    }

    else
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.tabi(_:);
    }

    goto LABEL_14;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.appleMediaDiscovery(_:);
    }

    else
    {
      v10 = &enum case for Configuration.GenreRecommendationConfiguration.Source.appleMediaDiscoveryAndBookHistory(_:);
    }

LABEL_14:
    (*(v7 + 104))(v9, *v10, v6);
    goto LABEL_15;
  }

  sub_100799E64();
LABEL_15:
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100799E34();
  sub_100799E24();
  sub_100799DF4();
  v11 = sub_100799E14();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  sub_100799E04();
  sub_100799E54();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1004D1BE8@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v1 = sub_1001F1160(&qword_100AE7640);
  __chkstk_darwin(v1 - 8);
  v116 = &v91 - v2;
  v3 = sub_1001F1160(&qword_100AE7648);
  __chkstk_darwin(v3 - 8);
  v115 = &v91 - v4;
  v5 = sub_1001F1160(&qword_100AE7650);
  __chkstk_darwin(v5 - 8);
  v114 = &v91 - v6;
  v7 = sub_1001F1160(&qword_100AE7658);
  __chkstk_darwin(v7 - 8);
  v113 = &v91 - v8;
  v9 = sub_1001F1160(&qword_100AE7660);
  __chkstk_darwin(v9 - 8);
  v133 = &v91 - v10;
  v11 = sub_1001F1160(&qword_100AE7668);
  __chkstk_darwin(v11 - 8);
  v131 = &v91 - v12;
  v13 = sub_1001F1160(&qword_100AE7670);
  __chkstk_darwin(v13 - 8);
  v128 = &v91 - v14;
  v15 = sub_1001F1160(&qword_100AE7678);
  __chkstk_darwin(v15 - 8);
  v126 = &v91 - v16;
  v112 = sub_100799CD4();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v132 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100799C34();
  v19 = *(v18 - 8);
  v129 = v18;
  v130 = v19;
  __chkstk_darwin(v18);
  v104 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v91 - v22;
  v139 = sub_100799CB4();
  v127 = *(v139 - 8);
  __chkstk_darwin(v139);
  v101 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v121 = &v91 - v25;
  v138 = sub_100799C54();
  v125 = *(v138 - 8);
  __chkstk_darwin(v138);
  v98 = (&v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v119 = &v91 - v28;
  v137 = sub_100799D24();
  v123 = *(v137 - 8);
  __chkstk_darwin(v137);
  v97 = (&v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v118 = &v91 - v31;
  v135 = sub_100799D44();
  v120 = *(v135 - 8);
  __chkstk_darwin(v135);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v136 = &v91 - v35;
  v134 = sub_100799DA4();
  v94 = *(v134 - 8);
  v36 = v94;
  __chkstk_darwin(v134);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v91 - v40;
  v122 = &v91 - v40;
  v42 = sub_100799D74();
  v93 = *(v42 - 8);
  v43 = v93;
  __chkstk_darwin(v42);
  v45 = &v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v91 - v47;
  v124 = &v91 - v47;
  sub_100799D04();
  sub_1004D2B38(v48);
  v49 = *(v43 + 8);
  v108 = v43 + 8;
  v109 = v49;
  v49(v45, v42);
  sub_100799D14();
  sub_1004D2F00(v41);
  v50 = *(v36 + 8);
  v105 = v36 + 8;
  v106 = v50;
  v50(v38, v134);
  sub_100799C64();
  sub_1004D3708(v33, &Configuration.CollectionsConfiguration.BooksYouMightLikeConfiguration.source.getter, &enum case for CollectionType.booksYouMightLike(_:), &Configuration.CollectionsConfiguration.BooksYouMightLikeConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.BooksYouMightLikeConfiguration.init(source:rescorer:), v136);
  v51 = *(v120 + 8);
  v102 = v120 + 8;
  v103 = v51;
  v51(v33, v135);
  v52 = v97;
  sub_100799D34();
  v53 = v118;
  sub_1004D3708(v52, &Configuration.CollectionsConfiguration.ForYouConfiguration.source.getter, &enum case for CollectionType.forYou(_:), &Configuration.CollectionsConfiguration.ForYouConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.ForYouConfiguration.init(source:rescorer:), v118);
  v54 = *(v123 + 8);
  v99 = v123 + 8;
  v100 = v54;
  v54(v52, v137);
  v55 = v98;
  sub_100799C74();
  v56 = v119;
  sub_1004D3708(v55, &Configuration.CollectionsConfiguration.MangaYouMightLikeConfiguration.source.getter, &enum case for CollectionType.mangaYouMightLike(_:), &Configuration.CollectionsConfiguration.MangaYouMightLikeConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.MangaYouMightLikeConfiguration.init(source:rescorer:), v119);
  v57 = *(v125 + 8);
  v96 = v125 + 8;
  v97 = v57;
  v57(v55, v138);
  v58 = v101;
  sub_100799CC4();
  v59 = v121;
  sub_1004D3224(v58, v121);
  v60 = *(v127 + 8);
  v95 = v127 + 8;
  v98 = v60;
  v60(v58, v139);
  v61 = v104;
  sub_100799C44();
  v62 = v107;
  sub_1004D3708(v61, &Configuration.CollectionsConfiguration.SuggestionsConfiguration.source.getter, &enum case for CollectionType.suggestions(_:), &Configuration.CollectionsConfiguration.SuggestionsConfiguration.rescorer.getter, &Configuration.CollectionsConfiguration.SuggestionsConfiguration.init(source:rescorer:), v107);
  v110 = *(v130 + 8);
  v110(v61, v129);
  sub_100799CE4();
  v63 = v93;
  v64 = *(v93 + 16);
  v65 = v126;
  v92 = v42;
  v64(v126, v124, v42);
  (*(v63 + 56))(v65, 0, 1, v42);
  v66 = v94;
  v67 = v128;
  v68 = v134;
  (*(v94 + 16))(v128, v122, v134);
  (*(v66 + 56))(v67, 0, 1, v68);
  v69 = v120;
  v70 = v131;
  v71 = v135;
  (*(v120 + 16))(v131, v136, v135);
  (*(v69 + 56))(v70, 0, 1, v71);
  v72 = v123;
  v73 = v133;
  v74 = v137;
  (*(v123 + 16))(v133, v53, v137);
  (*(v72 + 56))(v73, 0, 1, v74);
  v75 = v125;
  v76 = v113;
  v77 = v138;
  (*(v125 + 16))(v113, v56, v138);
  (*(v75 + 56))(v76, 0, 1, v77);
  v78 = v127;
  v79 = v114;
  v80 = v139;
  (*(v127 + 16))(v114, v59, v139);
  (*(v78 + 56))(v79, 0, 1, v80);
  v81 = v130;
  v82 = v115;
  v83 = v62;
  v84 = v62;
  v85 = v129;
  (*(v130 + 16))(v115, v83, v129);
  (*(v81 + 56))(v82, 0, 1, v85);
  v86 = v111;
  v87 = v116;
  v88 = v132;
  v89 = v112;
  (*(v111 + 16))(v116, v132, v112);
  (*(v86 + 56))(v87, 0, 1, v89);
  sub_100799CF4();
  (*(v86 + 8))(v88, v89);
  v110(v84, v85);
  v98(v121, v139);
  v97(v119, v138);
  v100(v118, v137);
  v103(v136, v135);
  v106(v122, v134);
  return v109(v124, v92);
}

unint64_t sub_1004D2AE4()
{
  result = qword_100AE7638;
  if (!qword_100AE7638)
  {
    type metadata accessor for MergedPersonalizationConfigurationService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7638);
  }

  return result;
}

uint64_t sub_1004D2B38@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = *v1;
  v2 = sub_10079A024();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10079A874();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AE7680);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_1001F1160(&qword_100AE7688);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_100799DB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_100799D64();
  (*(v3 + 104))(v5, enum case for CollectionType.booksBySuggestedAuthors(_:), v2);
  sub_10031E344(v5);
  sub_1004D2AE4();
  sub_100797A84();

  (*(v3 + 8))(v5, v2);
  if (v22 > 1u)
  {
    v16 = v20;
    if (v22 == 2)
    {
      (*(v6 + 8))(v8, v20);
      v17 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v6 + 8))(v8, v20);
      v17 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v22)
  {
    v16 = v20;
    (*(v6 + 8))(v8, v20);
    v17 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    (*(v6 + 104))(v11, *v17, v16);
    goto LABEL_9;
  }

  v16 = v20;
  (*(v6 + 32))(v11, v8, v20);
LABEL_9:
  (*(v6 + 56))(v11, 0, 1, v16);
  return sub_100799D54();
}

uint64_t sub_1004D2F00@<X0>(uint64_t a1@<X8>)
{
  v15[1] = *v1;
  v15[2] = a1;
  v2 = sub_10079A024();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079A874();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AE7680);
  __chkstk_darwin(v10 - 8);
  v12 = v15 - v11;
  sub_100799D84();
  (*(v3 + 104))(v5, enum case for CollectionType.books(_:), v2);
  sub_10031E344(v5);
  sub_1004D2AE4();
  sub_100797A84();

  (*(v3 + 8))(v5, v2);
  if (v16 > 1u)
  {
    if (v16 == 2)
    {
      (*(v7 + 8))(v9, v6);
      v13 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v13 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v16)
  {
    (*(v7 + 8))(v9, v6);
    v13 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    (*(v7 + 104))(v12, *v13, v6);
    goto LABEL_9;
  }

  (*(v7 + 32))(v12, v9, v6);
LABEL_9:
  (*(v7 + 56))(v12, 0, 1, v6);
  return sub_100799D94();
}

uint64_t sub_1004D3224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v41 = a2;
  v37 = *v2;
  v3 = sub_10079A874();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE7680);
  __chkstk_darwin(v5 - 8);
  v38 = &v30 - v6;
  v7 = sub_10079A024();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v34 = sub_100799DB4();
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&qword_100AE7688);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  sub_100799C94();
  v19 = enum case for CollectionType.moreFromYourAuthors(_:);
  v31 = *(v8 + 104);
  v31(v12, enum case for CollectionType.moreFromYourAuthors(_:), v7);
  sub_1004D3BEC(v15, v18);
  v20 = *(v8 + 8);
  v20(v12, v7);
  v21 = v34;
  (*(v13 + 8))(v15, v34);
  v22 = *(v13 + 56);
  v33 = v18;
  v22(v18, 0, 1, v21);
  v23 = v36;
  sub_100799CA4();
  v24 = v35;
  v31(v35, v19, v7);
  sub_10031E344(v24);
  sub_1004D2AE4();
  sub_100797A84();

  v20(v24, v7);
  if (v42 > 1u)
  {
    v25 = v39;
    v27 = v40;
    if (v42 == 2)
    {
      (*(v39 + 8))(v23, v40);
      v28 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v39 + 8))(v23, v40);
      v28 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v42)
  {
    v25 = v39;
    v27 = v40;
    (*(v39 + 8))(v23, v40);
    v28 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    v26 = v38;
    (*(v25 + 104))(v38, *v28, v27);
    goto LABEL_9;
  }

  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 32))(v38, v23, v40);
LABEL_9:
  (*(v25 + 56))(v26, 0, 1, v27);
  return sub_100799C84();
}

uint64_t sub_1004D3708@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, unsigned int *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v39[1] = a1;
  v48 = a6;
  v9 = *v6;
  v43 = a4;
  v44 = v9;
  v10 = sub_10079A874();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v42 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AE7680);
  __chkstk_darwin(v12 - 8);
  v45 = v39 - v13;
  v14 = sub_10079A024();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v40 = sub_100799DB4();
  v20 = *(v40 - 8);
  __chkstk_darwin(v40);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001F1160(&qword_100AE7688);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = v39 - v25;
  a2(v24);
  v27 = *a3;
  v28 = *(v15 + 104);
  v28(v19, v27, v14);
  sub_1004D3BEC(v22, v26);
  v29 = *(v15 + 8);
  v29(v19, v14);
  v30 = v40;
  (*(v20 + 8))(v22, v40);
  v31 = (*(v20 + 56))(v26, 0, 1, v30);
  v32 = v42;
  v43(v31);
  v33 = v41;
  v28(v41, v27, v14);
  sub_10031E344(v33);
  sub_1004D2AE4();
  sub_100797A84();

  v29(v33, v14);
  if (v50 > 1u)
  {
    v34 = v46;
    v36 = v47;
    if (v50 == 2)
    {
      (*(v46 + 8))(v32, v47);
      v37 = &enum case for Scorer.identity(_:);
    }

    else
    {
      (*(v46 + 8))(v32, v47);
      v37 = &enum case for Scorer.tabi(_:);
    }

    goto LABEL_8;
  }

  if (v50)
  {
    v34 = v46;
    v36 = v47;
    (*(v46 + 8))(v32, v47);
    v37 = &enum case for Scorer.appleMediaDiscovery(_:);
LABEL_8:
    v35 = v45;
    (*(v34 + 104))(v45, *v37, v36);
    goto LABEL_9;
  }

  v35 = v45;
  v34 = v46;
  v36 = v47;
  (*(v46 + 32))(v45, v32, v47);
LABEL_9:
  (*(v34 + 56))(v35, 0, 1, v36);
  return v49(v26, v35);
}

uint64_t sub_1004D3BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_10031DEE8())
  {
    sub_1004D2AE4();
    sub_100797A84();

    if (v11 > 2u)
    {
      if (v11 == 3)
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.mediaAPI(_:);
      }

      else if (v11 == 4)
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.bookHistoryThenAppleMediaDiscovery(_:);
      }

      else
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.tabi(_:);
      }
    }

    else
    {
      if (!v11)
      {
        v8 = sub_100799DB4();
        return (*(*(v8 - 8) + 16))(a2, a1, v8);
      }

      if (v11 == 1)
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.appleMediaDiscovery(_:);
      }

      else
      {
        v4 = &enum case for Configuration.CollectionsConfiguration.Source.bookHistory(_:);
      }
    }

    v9 = *v4;
    v10 = sub_100799DB4();
    return (*(*(v10 - 8) + 104))(a2, v9, v10);
  }

  else
  {
    v5 = sub_100799DB4();
    v6 = *(*(v5 - 8) + 16);

    return v6(a2, a1, v5);
  }
}

BOOL static ScrubberState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t static ScrubberState.makePaged(oldState:currentPageNumber:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return a3;
  }

  return result;
}

uint64_t ScrubberState.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      return 0x72657470616863;
    }

    else
    {
      return 1701602409;
    }
  }

  else
  {
    sub_1007A3744(19);

    v3._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v3);

    return 0xD000000000000011;
  }
}

BOOL sub_1004D3F10(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return *a1 == v2;
    }

    return 0;
  }

  if (*(a1 + 8) != 1)
  {
    return v3 == 2 && v2 == 0;
  }

  return v3 == 1;
}

uint64_t sub_1004D3F70(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1004D3F8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004D3FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004D4018(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t UIViewController.lifeCyclePublisher.getter()
{
  v0 = sub_1001F1160(&qword_100AE76A0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  swift_getKeyPath();
  sub_1007968C4();

  sub_1004D4188();
  v4 = sub_10079BA14();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_1004D4154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bc_currentLifeCycleState];
  *a2 = result;
  return result;
}

unint64_t sub_1004D4188()
{
  result = qword_100AE76A8;
  if (!qword_100AE76A8)
  {
    sub_1001F1234(&qword_100AE76A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE76A8);
  }

  return result;
}

id UIViewController.sessionHost.getter()
{
  if ([v0 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BASessionHostProviding])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_1001F1160(&qword_100AE76B8);
    if (swift_dynamicCast())
    {
      v1 = [v7 analyticsSessionHost];
      swift_unknownObjectRelease();
      return v1;
    }
  }

  else
  {
    sub_1000230BC(v10);
  }

  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100B22F80);
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
  }

  return 0;
}

uint64_t _s9LifeCycleOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9LifeCycleOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata accessor for AnalyticsEvent.ReadingEvent()
{
  result = qword_100AE7730;
  if (!qword_100AE7730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D443C()
{
  result = sub_1007983A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrubberPageViewState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrubberPageViewState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1004D44EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D4508(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for REScrubberView()
{
  result = qword_100AE77D0;
  if (!qword_100AE77D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D45AC()
{
  sub_100247C8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for REActionMenuState(319);
    if (v1 <= 0x3F)
    {
      sub_100324D54();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          sub_10024BB84(319, &qword_100AE77E0);
          if (v4 <= 0x3F)
          {
            sub_10024BB84(319, &unk_100AE77E8);
            if (v5 <= 0x3F)
            {
              sub_10024BB84(319, &qword_100AD6F30);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

BOOL sub_1004D4704(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1004D475C()
{
  v1 = sub_10079F514();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v11 - v6;
  sub_10000E3E8((*(v0 + 16) + 80), *(*(v0 + 16) + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F9D4();
    sub_10079F3B4();

    (*(v2 + 104))(v4, enum case for BookNavigationDirection.rightToLeft(_:), v1);
    sub_1004E0E88(&qword_100AE0CC8, &type metadata accessor for BookNavigationDirection);
    sub_1007A2574();
    sub_1007A2574();
    if (v11[2] == v11[0] && v11[3] == v11[1])
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1007A3AB4();
    }

    swift_unknownObjectRelease();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1004D4988()
{
  v1 = sub_10079BC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_10079B9A4();

    v10 = enum case for ColorScheme.light(_:);
    v17 = *(v2 + 104);
    v17(v4, enum case for ColorScheme.light(_:), v1);
    v18 = sub_10079BC34();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v9;
    sub_10079B9A4();

    v17(v4, v10, v1);
    v13 = sub_10079BC34();
    v11(v4, v1);
    v11(v7, v1);
    if (v18)
    {
      if ((v13 & 1) == 0)
      {
LABEL_4:
        v14 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
LABEL_7:
        v15 = v14;

        return v15;
      }
    }

    else if (v13)
    {
      goto LABEL_4;
    }

    v14 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    goto LABEL_7;
  }

  type metadata accessor for ChromeStyle();
  sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_1004D4C44()
{
  v1 = sub_10079BC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_10079B9A4();

    (*(v2 + 104))(v4, enum case for ColorScheme.light(_:), v1);
    v10 = sub_10079BC34();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    if (v10)
    {
      v12 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v12 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v13 = v12;

    return v13;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D4E40(unsigned __int8 a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = sub_1007A1C54();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1007A1CA4();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REScrubberView();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  if ((a1 - 1) > 1u)
  {
    v19 = 0;
    v16 = 0;
    v18 = 2;
    goto LABEL_5;
  }

  v15 = *(a2 + 16);
  swift_getKeyPath();
  aBlock = v15;
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if (*(v15 + 280))
  {
    v16 = REActionMenuState.makeChapterScrubbingState()();
    v18 = v17;

    sub_100337314(v16, v18);
    v19 = 0;
LABEL_5:
    v20 = 1;
    goto LABEL_6;
  }

  swift_getKeyPath();
  aBlock = v15;
  sub_100797A14();

  v16 = *(v15 + 272);
  v18 = *(v15 + 280);
  v35 = a2 + *(v13 + 44);
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  aBlock = v36;
  LOBYTE(v49) = v37;
  v50 = v38;
  sub_100337314(v16, v18);
  sub_100337314(v16, v18);
  sub_1001F1160(&qword_100AE7B30);
  sub_10079DFF4();
  v19 = v54;
  v20 = v55;
LABEL_6:
  REActionMenuState.scrubberChanged(state:event:)(v16, v18, a1, a3, a4, a5);
  sub_100342F4C(v16, v18);
  v21 = a2 + *(v13 + 44);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  aBlock = v22;
  LOBYTE(v49) = v23;
  v50 = v24;
  sub_1001F1160(&qword_100AE7B30);
  sub_10079DFF4();
  if (v55 == 1)
  {
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v54 == v19)
  {
    v25 = v20;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_13:
    sub_10000A7C4(0, &qword_100AD1E10);
    v40 = sub_1007A2D74();
    sub_1004E0B04(a2, &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for REScrubberView);
    v26 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v27 = swift_allocObject();
    sub_1004E0B6C(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for REScrubberView);
    v28 = v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v28 = v19;
    *(v28 + 8) = v20;
    v52 = sub_1004E0DEC;
    v53 = v27;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1003323D0;
    v51 = &unk_100A202B0;
    v29 = _Block_copy(&aBlock);

    v30 = v42;
    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_1004E0E88(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v31 = v44;
    v32 = v47;
    sub_1007A3594();
    v33 = v40;
    sub_1007A2D94();
    _Block_release(v29);

    (*(v46 + 8))(v31, v32);
    (*(v43 + 8))(v30, v45);
  }

LABEL_14:
  sub_1004D54DC();
  return sub_100342F4C(v16, v18);
}

uint64_t sub_1004D544C()
{
  type metadata accessor for REScrubberView();
  sub_1001F1160(&qword_100AE7B30);
  return sub_10079E004();
}

void sub_1004D54DC()
{
  if (sub_1004D9CB0())
  {
    sub_100009864(*(v0 + 16) + 80, &aBlock);
    sub_10000E3E8(&aBlock, v29);
    sub_100341270(0, 255, 0, 1);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v2 = sub_10079F964();
      v4 = v3;
      swift_unknownObjectRelease();
      sub_1000074E0(&aBlock);
      v5 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
      v1 = v5;
      v6 = *(v5 + 2);
      v7 = *(v5 + 3);
      v8 = v6 + 1;
      if (v6 >= v7 >> 1)
      {
        v24 = *(v5 + 2);
        v25 = sub_10000B3D8((v7 > 1), v6 + 1, 1, v5);
        v6 = v24;
        v1 = v25;
      }

      *(v1 + 2) = v8;
      v9 = &v1[16 * v6];
      *(v9 + 4) = v2;
      *(v9 + 5) = v4;
    }

    else
    {
      sub_1000074E0(&aBlock);
      v1 = _swiftEmptyArrayStorage;
    }

    v10 = sub_1004DEE6C();
    v12 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_10000B3D8(0, *(v1 + 2) + 1, 1, v1);
    }

    v14 = *(v1 + 2);
    v13 = *(v1 + 3);
    if (v14 >= v13 >> 1)
    {
      v1 = sub_10000B3D8((v13 > 1), v14 + 1, 1, v1);
    }

    *(v1 + 2) = v14 + 1;
    v15 = &v1[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
    aBlock = v1;
    sub_1001F1160(&unk_100AD61F0);
    sub_100005920(&qword_100AEB190, &unk_100AD61F0);
    v16 = sub_1007A20B4();
    v18 = v17;

    aBlock = v16;
    v27 = v18;
    sub_1002060B4();
    if (sub_1007A28A4())
    {
      if (qword_100AE7770)
      {
        [qword_100AE7770 invalidate];
      }

      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = v18;
      v30 = sub_1004E0E80;
      v31 = v20;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100201C54;
      v29 = &unk_100A20300;
      v21 = _Block_copy(&aBlock);

      v22 = [v19 scheduledTimerWithTimeInterval:0 repeats:v21 block:0.5];
      _Block_release(v21);
      v23 = qword_100AE7770;
      qword_100AE7770 = v22;
    }

    else
    {
    }
  }
}

uint64_t sub_1004D5828@<X0>(uint64_t a1@<X8>)
{
  v319 = a1;
  v318 = sub_10079CF24();
  v317 = *(v318 - 1);
  __chkstk_darwin(v318);
  v316 = &v275[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v336 = sub_100796CF4();
  v347 = *(v336 - 8);
  __chkstk_darwin(v336);
  v346 = &v275[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v327 = &v275[-v5];
  v335 = sub_1007A21D4();
  v345 = *(v335 - 8);
  __chkstk_darwin(v335);
  v341 = &v275[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v342 = &v275[-v8];
  v339 = sub_10079D074();
  v338 = *(v339 - 8);
  __chkstk_darwin(v339);
  v337 = &v275[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v297 = sub_10079CCC4();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v275[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001F1160(&qword_100AE7848);
  __chkstk_darwin(v11 - 8);
  v340 = &v275[-v12];
  v291 = sub_1001F1160(&qword_100AE7850);
  __chkstk_darwin(v291);
  v292 = &v275[-v13];
  v293 = sub_1001F1160(&qword_100AE7858);
  __chkstk_darwin(v293);
  v294 = &v275[-v14];
  v300 = sub_1001F1160(&qword_100AE7860);
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v343 = &v275[-v15];
  v298 = sub_1001F1160(&qword_100AE7868);
  __chkstk_darwin(v298);
  v301 = &v275[-v16];
  v304 = sub_1001F1160(&qword_100AE7870);
  __chkstk_darwin(v304);
  v302 = &v275[-v17];
  v306 = sub_1001F1160(&qword_100AE7878);
  v305 = *(v306 - 8);
  __chkstk_darwin(v306);
  v303 = &v275[-v18];
  v307 = sub_1001F1160(&qword_100AE7880);
  __chkstk_darwin(v307);
  v329 = &v275[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v330 = &v275[-v21];
  v331 = sub_1001F1160(&qword_100AE7888);
  __chkstk_darwin(v331);
  v332 = &v275[-v22];
  v309 = sub_1001F1160(&qword_100AE7890);
  __chkstk_darwin(v309);
  v321 = &v275[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v308 = &v275[-v25];
  __chkstk_darwin(v26);
  v323 = &v275[-v27];
  v310 = sub_1001F1160(&qword_100AE7898);
  __chkstk_darwin(v310);
  v325 = &v275[-v28];
  v313 = sub_1001F1160(&qword_100AE78A0);
  __chkstk_darwin(v313);
  v315 = &v275[-v29];
  v30 = sub_1001F1160(&qword_100AE78A8);
  __chkstk_darwin(v30 - 8);
  v312 = &v275[-v31];
  v311 = sub_1001F1160(&qword_100AE78B0);
  __chkstk_darwin(v311);
  v314 = &v275[-v32];
  v290 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v290);
  v289 = &v275[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v288 = &v275[-v35];
  v287 = type metadata accessor for RESliderView();
  __chkstk_darwin(v287);
  v326 = &v275[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v324 = type metadata accessor for REScrubberView();
  v37 = *(v324 - 1);
  v38 = *(v37 + 64);
  __chkstk_darwin(v324);
  v322 = &v275[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v41 = &v275[-v40];
  sub_1004E0B04(v1, &v275[-v40], type metadata accessor for REScrubberView);
  sub_1007A26F4();
  v42 = sub_1007A26E4();
  v43 = *(v37 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = &protocol witness table for MainActor;
  sub_1004E0B6C(v41, v44 + ((v43 + 32) & ~v43), type metadata accessor for REScrubberView);
  v45 = sub_1007A26E4();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = &protocol witness table for MainActor;
  sub_10079E204();
  v285 = *(&v357 + 1);
  v286 = v357;
  v284 = v358[0];
  v47 = v328;
  sub_1004E0B04(v328, v41, type metadata accessor for REScrubberView);
  v48 = (v43 + 16) & ~v43;
  v334 = v38;
  v348 = v43;
  v49 = swift_allocObject();
  v344 = v41;
  sub_1004E0B6C(v41, v49 + v48, type metadata accessor for REScrubberView);
  v50 = *(v47 + 16);
  swift_getKeyPath();
  v51 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *&v357 = v50;
  v52 = sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  if (!*(v50 + 280))
  {
    v55 = *(v50 + 144);
    v56 = *(v55 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerCurrentPage);
    v57 = *(v55 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange);
    if (__OFSUB__(v56, v57))
    {
      __break(1u);
    }

    else
    {
      v58 = *(v55 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange + 8);
      v59 = __OFSUB__(v58, v57);
      v60 = v58 - v57;
      if (!v59)
      {
        v59 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (!v59)
        {
          v54 = (v56 - v57) / v61;
          goto LABEL_7;
        }

LABEL_35:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  swift_getKeyPath();
  *&v357 = v50;
  sub_100797A14();

  swift_beginAccess();
  v54 = *(v50 + 320);
LABEL_7:
  sub_10000E3E8((v50 + 80), *(v50 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v62 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v278 = v62 == 2;
  }

  else
  {
    v278 = 0;
  }

  v277 = sub_1004D475C();
  swift_getKeyPath();
  *&v357 = v50;
  v283 = v51;
  v282 = v52;
  sub_100797A14();

  v63 = *(v50 + 304);
  v320 = v50;
  v64 = v324;
  v65 = *(v47 + v324[7]);
  v66 = *(v47 + v324[8]);
  v67 = (v47 + v324[12]);
  v68 = *v67;
  v69 = *(v67 + 1);
  v281 = v68;
  LOBYTE(v354) = v68;
  v280 = v69;
  v355 = v69;
  v279 = sub_1001F1160(&qword_100AE78B8);
  sub_10079E014();
  v70 = v357;
  v276 = v358[0];
  v71 = v344;
  sub_1004E0B04(v47, v344, type metadata accessor for REScrubberView);
  v72 = swift_allocObject();
  v333 = v48;
  sub_1004E0B6C(v71, v72 + v48, type metadata accessor for REScrubberView);
  type metadata accessor for ChromeStyle();
  sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

  v73 = sub_10079C484();
  v75 = v74;
  v76 = v47;
  v77 = v49;
  v78 = [objc_opt_self() sharedApplication];
  v79 = [v78 userInterfaceLayoutDirection];

  v80 = v326;
  *v326 = v73;
  *(v80 + 1) = v75;
  v80[2] = v54;
  *(v80 + 24) = 1;
  *(v80 + 25) = v278;
  *(v80 + 26) = v277 & 1;
  *(v80 + 27) = v79 == 1;
  *(v80 + 4) = v63;
  v80[5] = v65;
  *(v80 + 6) = v66;
  v81 = v285;
  *(v80 + 7) = v286;
  *(v80 + 8) = v81;
  *(v80 + 72) = v284;
  *(v80 + 5) = v70;
  *(v80 + 96) = v276;
  *(v80 + 13) = sub_1004DCFD0;
  *(v80 + 14) = v72;
  *(v80 + 15) = sub_1004DCF70;
  *(v80 + 16) = v77;
  v286 = v77;
  v82 = v287;
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  v83 = v80 + v82[18];
  LOBYTE(v354) = 0;
  sub_10079BD84();
  v84 = *(&v357 + 1);
  v85 = *v358;
  *v83 = v357;
  *(v83 + 1) = v84;
  *(v83 + 1) = v85;
  v86 = v80 + v82[19];
  type metadata accessor for CGPoint(0);
  v354 = 0;
  v355 = 0;
  sub_10079BD84();
  v87 = *v358;
  v88 = *&v358[8];
  *v86 = v357;
  *(v86 + 2) = v87;
  *(v86 + 24) = v88;
  v89 = (v80 + v82[20]);
  v354 = 0;
  sub_10079DFE4();
  v90 = *(&v357 + 1);
  *v89 = v357;
  v89[1] = v90;
  v91 = v80 + v82[21];
  v354 = 0;
  v355 = 0;
  v356 = 1;
  sub_1001F1160(&qword_100ADC650);
  sub_10079DFE4();
  v92 = v358[0];
  v93 = *&v358[8];
  *v91 = v357;
  v91[16] = v92;
  *(v91 + 3) = v93;
  v94 = sub_100796BB4();
  v95 = v288;
  (*(*(v94 - 8) + 56))(v288, 1, 1, v94);
  sub_1000077D8(v95, v289, &unk_100ADB5C0);
  sub_10079DFE4();
  sub_100007840(v95, &unk_100ADB5C0);
  v96 = v80 + v82[23];
  LOBYTE(v354) = 0;
  sub_10079DFE4();
  v97 = *(&v357 + 1);
  *v96 = v357;
  *(v96 + 1) = v97;
  v98 = v64[15];
  v99 = v320;
  LODWORD(v96) = *(v76 + v98);
  v100 = sub_1004D475C() & 1;
  v101 = REActionMenuState.scrubberStartingPosition()();
  if (v96 == v100)
  {
    v103 = v338;
    v104 = v301;
    v105 = v297;
  }

  else
  {
    sub_10000E3E8((v99 + 80), *(v99 + 104));
    Strong = swift_unknownObjectWeakLoadStrong();
    v103 = v338;
    v104 = v301;
    v105 = v297;
    if (!Strong || (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v106 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v106 != 2))
    {
      v101 = 1.0 - v101;
    }
  }

  v338 = sub_1004D839C();
  v107 = sub_10079E474();
  v108 = v340;
  *v340 = v107;
  *(v108 + 1) = v109;
  v110 = sub_1001F1160(&qword_100AE78C0);
  sub_1004D8804(v76, v80, &v108[*(v110 + 44)], v65 * v101 - v65 * 0.5, 2.0 - v65 * 0.5, v65 * 0.5 + -4.0, 2.0);
  sub_10000E3E8((v99 + 80), *(v99 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v111 = v333;
  sub_10079E474();
  sub_10079BE54();
  v112 = v292;
  sub_10020B3C8(v340, v292, &qword_100AE7848);
  v113 = &v112[*(v291 + 36)];
  v114 = *v358;
  *v113 = v357;
  v113[1] = v114;
  v113[2] = *&v358[16];
  v115 = v344;
  sub_1004E0B04(v76, v344, type metadata accessor for REScrubberView);
  v116 = swift_allocObject();
  sub_1004E0B6C(v115, v116 + v111, type metadata accessor for REScrubberView);
  v117 = v112;
  v118 = v294;
  sub_10020B3C8(v117, v294, &qword_100AE7850);
  v119 = &v118[*(v293 + 36)];
  *v119 = sub_1004DFC94;
  v119[1] = v116;
  v120 = v295;
  sub_10079C454();
  sub_1004DFCBC();
  sub_1004E0E88(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  sub_10079D6F4();
  (*(v296 + 8))(v120, v105);
  sub_100007840(v118, &qword_100AE7858);
  sub_10000E3E8((v99 + 80), *(v99 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v121 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v121 == 2))
  {
    v122 = sub_10079E494();
  }

  else
  {
    v122 = sub_10079E464();
  }

  v124 = v122;
  v125 = v123;
  sub_10000E3E8((v99 + 80), *(v99 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v126 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v127 = v126 != 2;
  }

  else
  {
    v127 = 1;
  }

  v128 = v344;
  sub_1004E0B04(v76, v344, type metadata accessor for REScrubberView);
  v129 = swift_allocObject();
  sub_1004E0B6C(v128, v129 + v111, type metadata accessor for REScrubberView);
  (*(v299 + 32))(v104, v343, v300);
  v130 = v104 + *(v298 + 36);
  *v130 = v127;
  *(v130 + 8) = 0x4030000000000000;
  *(v130 + 16) = 0;
  *(v130 + 24) = sub_1004DFE2C;
  *(v130 + 32) = v129;
  *(v130 + 40) = v124;
  *(v130 + 48) = v125;
  LOBYTE(v354) = v281;
  v355 = v280;
  sub_10079DFF4();
  if (v352[0])
  {
    v131 = v339;
    v132 = v337;
    v133 = v332;
    v134 = v329;
    if (v352[0] == 1)
    {
      v136 = 0.96;
    }

    else
    {
      v136 = 1.03;
    }

    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v135 = 1.0;
    }

    else
    {
      v135 = v136;
    }
  }

  else
  {
    v135 = 0.99;
    v131 = v339;
    v132 = v337;
    v133 = v332;
    v134 = v329;
  }

  sub_10079E634();
  v138 = v137;
  v140 = v139;
  v141 = v302;
  sub_10020B3C8(v104, v302, &qword_100AE7868);
  v142 = v304;
  v143 = &v141[*(v304 + 36)];
  *v143 = v135;
  v143[1] = v135;
  *(v143 + 2) = v138;
  *(v143 + 3) = v140;
  sub_10079D054();
  v144 = sub_1004DFE44();
  v145 = v303;
  sub_10079D9A4();
  (v103)[1](v132, v131);
  sub_100007840(v141, &qword_100AE7870);
  v354 = v142;
  v355 = v144;
  swift_getOpaqueTypeConformance2();
  v146 = v306;
  sub_10079DA04();
  (*(v305 + 8))(v145, v146);
  v354 = v338;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0);
  v147 = sub_1007A20B4();
  v149 = v148;

  v354 = v147;
  v355 = v149;
  v150 = sub_100206ECC();
  v151 = v330;
  v343 = v150;
  sub_10079C1C4();

  sub_100007840(v134, &qword_100AE7880);
  v152 = sub_1004D9E38();
  v154 = v153;
  sub_10020B3C8(v151, v133, &qword_100AE7880);
  v155 = (v133 + *(v331 + 36));
  *v155 = v152;
  v155[1] = v154;
  v354 = sub_1004DA7A8();
  v355 = v156;
  sub_1004E0014();
  sub_10079D894();

  sub_100007840(v133, &qword_100AE7888);
  sub_1001F1160(&qword_100AE7928);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_10081E180;
  v158 = v342;
  sub_1007A2154();
  v159 = v327;
  sub_100796C94();
  v160 = v345;
  v161 = *(v345 + 16);
  v330 = (v345 + 16);
  v329 = v161;
  v162 = v341;
  v163 = v335;
  (v161)(v341, v158, v335);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v339 = ObjCClassFromMetadata;
  v338 = objc_opt_self();
  v165 = [v338 bundleForClass:ObjCClassFromMetadata];
  v166 = v347;
  v332 = *(v347 + 16);
  v337 = (v347 + 16);
  v167 = v336;
  (v332)(v346, v159, v336);
  v168 = sub_1007A22D4();
  v170 = v169;
  v171 = *(v166 + 8);
  v347 = v166 + 8;
  v331 = v171;
  v171(v159, v167);
  v172 = *(v160 + 8);
  v345 = v160 + 8;
  v340 = v172;
  (v172)(v158, v163);
  v354 = v168;
  v355 = v170;
  *(v157 + 32) = sub_10079D5D4();
  *(v157 + 40) = v173;
  *(v157 + 48) = v174 & 1;
  *(v157 + 56) = v175;
  sub_1007A2154();
  sub_100796C94();
  (v329)(v162, v158, v163);
  v176 = [v338 bundleForClass:v339];
  v177 = v332;
  (v332)(v346, v159, v167);
  v178 = sub_1007A22D4();
  v180 = v179;
  v181 = v159;
  v182 = v159;
  v183 = v167;
  (v331)(v181, v167);
  (v340)(v158, v163);
  v354 = v178;
  v355 = v180;
  *(v157 + 64) = sub_10079D5D4();
  *(v157 + 72) = v184;
  *(v157 + 80) = v185 & 1;
  *(v157 + 88) = v186;
  sub_1007A2154();
  sub_100796C94();
  v187 = v163;
  v188 = v329;
  (v329)(v341, v158, v187);
  v189 = [v338 bundleForClass:v339];
  v177(v346, v182, v167);
  v190 = sub_1007A22D4();
  v192 = v191;
  v193 = v182;
  v194 = v331;
  (v331)(v182, v183);
  v195 = v342;
  v196 = v335;
  (v340)(v342, v335);
  v354 = v190;
  v355 = v192;
  *(v157 + 96) = sub_10079D5D4();
  *(v157 + 104) = v197;
  *(v157 + 112) = v198 & 1;
  *(v157 + 120) = v199;
  sub_1007A2154();
  sub_100796C94();
  v188(v341, v195, v196);
  v200 = [v338 bundleForClass:v339];
  v201 = v336;
  (v332)(v346, v193, v336);
  v202 = sub_1007A22D4();
  v204 = v203;
  v194(v193, v201);
  v205 = v335;
  (v340)(v195, v335);
  v354 = v202;
  v355 = v204;
  *(v157 + 128) = sub_10079D5D4();
  *(v157 + 136) = v206;
  *(v157 + 144) = v207 & 1;
  *(v157 + 152) = v208;
  swift_getKeyPath();
  v354 = v320;
  sub_100797A14();

  sub_10079B904();
  *(v157 + 160) = sub_10079D5D4();
  *(v157 + 168) = v209;
  *(v157 + 176) = v210 & 1;
  *(v157 + 184) = v211;
  v212 = v308;
  v213 = v321;
  sub_10079C254();

  sub_100007840(v213, &qword_100AE7890);
  v214 = v316;
  sub_10079CF14();
  sub_10079C214();

  (*(v317 + 8))(v214, v318);
  sub_100007840(v212, &qword_100AE7890);
  v321 = type metadata accessor for REScrubberView;
  v215 = v328;
  v216 = v344;
  sub_1004E0B04(v328, v344, type metadata accessor for REScrubberView);
  v217 = v333;
  v320 = swift_allocObject();
  v318 = type metadata accessor for REScrubberView;
  sub_1004E0B6C(v216, v320 + v217, type metadata accessor for REScrubberView);
  v218 = v342;
  sub_1007A2154();
  v219 = v327;
  sub_100796C94();
  (v329)(v341, v218, v205);
  v220 = [v338 bundleForClass:v339];
  v221 = v336;
  (v332)(v346, v219, v336);
  v222 = sub_1007A22D4();
  v224 = v223;
  (v331)(v219, v221);
  (v340)(v218, v205);
  v225 = v322;
  v226 = v321;
  sub_1004E0B04(v215, v322, v321);
  v227 = swift_allocObject();
  v228 = v225;
  v229 = v318;
  sub_1004E0B6C(v228, v227 + v217, v318);
  v354 = v222;
  v355 = v224;
  v230 = sub_10079D5D4();
  v232 = v231;
  v234 = v233;
  v351 = v235 & 1;
  v236 = v325;
  sub_10020B3C8(v323, v325, &qword_100AE7890);
  v237 = &v236[*(v310 + 36)];
  v238 = v320;
  *v237 = sub_1004E01EC;
  *(v237 + 1) = v238;
  *(v237 + 2) = v230;
  *(v237 + 3) = v232;
  v237[32] = v351;
  *(v237 + 33) = *v350;
  *(v237 + 9) = *&v350[3];
  *(v237 + 5) = v234;
  *(v237 + 6) = sub_1004E01F4;
  *(v237 + 7) = v227;
  v239 = v344;
  v240 = v226;
  sub_1004E0B04(v215, v344, v226);
  v241 = v333;
  v323 = swift_allocObject();
  v242 = v229;
  sub_1004E0B6C(v239, &v323[v241], v229);
  v243 = v342;
  sub_1007A2154();
  v244 = v327;
  sub_100796C94();
  v245 = v335;
  (v329)(v341, v243, v335);
  v246 = [v338 bundleForClass:v339];
  v247 = v336;
  (v332)(v346, v244, v336);
  v248 = sub_1007A22D4();
  v250 = v249;
  (v331)(v244, v247);
  (v340)(v342, v245);
  v251 = v328;
  v252 = v322;
  sub_1004E0B04(v328, v322, v240);
  v253 = v333;
  v254 = swift_allocObject();
  sub_1004E0B6C(v252, v254 + v253, v242);
  v354 = v248;
  v355 = v250;
  v255 = sub_10079D5D4();
  v257 = v256;
  v259 = v258;
  v353 = v260 & 1;
  v261 = v315;
  sub_10020B3C8(v325, v315, &qword_100AE7898);
  v262 = &v261[*(v313 + 36)];
  v263 = v323;
  *v262 = sub_1004E0260;
  *(v262 + 1) = v263;
  *(v262 + 2) = v255;
  *(v262 + 3) = v257;
  v262[32] = v353;
  *(v262 + 33) = *v352;
  *(v262 + 9) = *&v352[3];
  *(v262 + 5) = v259;
  *(v262 + 6) = sub_1004E02D0;
  *(v262 + 7) = v254;
  v264 = v344;
  sub_1004E0B04(v251, v344, v321);
  v265 = swift_allocObject();
  sub_1004E0B6C(v264, v265 + v253, v242);
  sub_1004E0348();
  v266 = v312;
  sub_10079DA84();

  sub_100007840(v261, &qword_100AE78A0);
  KeyPath = swift_getKeyPath();
  v268 = v314;
  sub_10020B3C8(v266, v314, &qword_100AE78A8);
  v269 = &v268[*(v311 + 36)];
  *v269 = KeyPath;
  v269[8] = 0;
  v270 = *(v251 + v324[9]);
  v349 = 0;
  sub_10079DFE4();
  LOBYTE(v261) = v354;
  v271 = v355;
  v272 = v268;
  v273 = v319;
  sub_10020B3C8(v272, v319, &qword_100AE78B0);
  v274 = v273 + *(sub_1001F1160(&qword_100AE7948) + 36);
  *v274 = v270;
  *(v274 + 8) = v261;
  *(v274 + 16) = v271;
  return sub_100330328(v326);
}

uint64_t sub_1004D81A0@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_getKeyPath();
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v4 = *(v3 + 256);
  result = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  if (v4 == result)
  {
    v6 = 3;
  }

  else
  {
    swift_getKeyPath();
    sub_100797A14();

    result = swift_beginAccess();
    if (*(v3 + 352) == 1)
    {
      swift_getKeyPath();
      sub_100797A14();

      if (*(v3 + 280))
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1004D8300(uint64_t a1)
{
  sub_10000E3E8((*(a1 + 16) + 80), *(*(a1 + 16) + 104));
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return REActionMenuState.transition(to:)(0x8000000000000020);
  }

  swift_getObjectType();
  sub_10079F984();
  swift_getObjectType();
  v1 = sub_10079F6D4();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (v1 != 2)
  {
    return REActionMenuState.transition(to:)(0x8000000000000020);
  }

  return result;
}

char *sub_1004D839C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  sub_1001F1160(&unk_100AE0B30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10080B690;
  sub_1007A2154();
  sub_100796C94();
  v36 = *(v8 + 16);
  v37 = v8 + 16;
  v36(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = objc_opt_self();
  v35 = ObjCClassFromMetadata;
  v16 = [v34 bundleForClass:ObjCClassFromMetadata];
  v32 = *(v1 + 16);
  v33 = v1 + 16;
  v32(v3, v6, v0);
  v38 = v10;
  v40 = v3;
  v17 = sub_1007A22D4();
  v19 = v18;
  v20 = *(v1 + 8);
  v41 = v6;
  v42 = v1 + 8;
  v43 = v0;
  v31 = v20;
  v20(v6, v0);
  v21 = *(v8 + 8);
  v39 = v8 + 8;
  v21(v13, v7);
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v45 = v14;
  sub_10000E3E8((*(v44 + 16) + 80), *(*(v44 + 16) + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v22 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v22 == 2)
    {
      return v45;
    }
  }

  sub_1007A2154();
  v24 = v41;
  sub_100796C94();
  v36(v38, v13, v7);
  v25 = [v34 bundleForClass:v35];
  v26 = v21;
  v27 = v43;
  v32(v40, v24, v43);
  v28 = sub_1007A22D4();
  v30 = v29;
  v31(v24, v27);
  v26(v13, v7);
  result = sub_10000B3D8(1, 2, 1, v45);
  *(result + 2) = 2;
  *(result + 6) = v28;
  *(result + 7) = v30;
  return result;
}

uint64_t sub_1004D8804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v158 = a2;
  v164 = a3;
  v144 = sub_10079BC44();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v139 = &v137 - v14;
  v138 = sub_10079C3D4();
  __chkstk_darwin(v138);
  v142 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1001F1160(&qword_100AE7A30);
  __chkstk_darwin(v141);
  v146 = &v137 - v16;
  v145 = sub_1001F1160(&qword_100AE7A38);
  __chkstk_darwin(v145);
  v159 = &v137 - v17;
  v165 = sub_1001F1160(&qword_100AE7A40);
  v18 = *(v165 - 8);
  __chkstk_darwin(v165);
  v147 = &v137 - v19;
  v20 = sub_1001F1160(&qword_100AE7A48);
  __chkstk_darwin(v20 - 8);
  v163 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v162 = &v137 - v23;
  v24 = sub_1001F1160(&qword_100AE7A50);
  __chkstk_darwin(v24 - 8);
  v26 = &v137 - v25;
  v149 = sub_1001F1160(&qword_100AE7A58);
  __chkstk_darwin(v149);
  v28 = &v137 - v27;
  v148 = sub_1001F1160(&qword_100AE7A60);
  __chkstk_darwin(v148);
  v30 = &v137 - v29;
  v153 = sub_1001F1160(&qword_100AE7A68);
  __chkstk_darwin(v153);
  v150 = &v137 - v31;
  v32 = sub_1001F1160(&qword_100AE7A70);
  __chkstk_darwin(v32);
  v34 = &v137 - v33;
  v152 = sub_1001F1160(&qword_100AE7A78);
  __chkstk_darwin(v152);
  v156 = &v137 - v35;
  v151 = sub_1001F1160(&qword_100AE7A80);
  __chkstk_darwin(v151);
  v166 = &v137 - v36;
  v155 = sub_1001F1160(&qword_100AE7A88);
  __chkstk_darwin(v155);
  v161 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v154 = &v137 - v39;
  __chkstk_darwin(v40);
  v168 = &v137 - v41;
  v42 = sub_1001F1160(&qword_100AE7A90);
  __chkstk_darwin(v42 - 8);
  v160 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v167 = &v137 - v45;
  v46 = *(a1 + 16);
  v47 = *(v46 + 104);
  v157 = v46;
  sub_10000E3E8((v46 + 80), v47);
  if (swift_unknownObjectWeakLoadStrong() && (v48 = v26, swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v49 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v49 == 2))
  {
    v50 = v167;
    sub_1004E0B04(v158, v167, type metadata accessor for RESliderView);
    v51 = type metadata accessor for RESliderView();
    v52 = v50;
    v26 = v48;
    (*(*(v51 - 8) + 56))(v52, 0, 1, v51);
  }

  else
  {
    v53 = type metadata accessor for RESliderView();
    (*(*(v53 - 8) + 56))(v167, 1, 1, v53);
  }

  sub_1004D99D8(v26);
  v54 = type metadata accessor for REScrubberView();
  v55 = (a1 + *(v54 + 48));
  v56 = *v55;
  v57 = *(v55 + 1);
  LOBYTE(v170) = v56;
  *(&v170 + 1) = v57;
  sub_1001F1160(&qword_100AE78B8);
  sub_10079DFF4();
  if (v169 == 1)
  {
    v58 = 0.25;
  }

  else
  {
    v58 = 1.0;
  }

  sub_10020B3C8(v26, v28, &qword_100AE7A50);
  *&v28[*(v149 + 36)] = v58;
  v59 = sub_10079D2F4();
  sub_10079BBA4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_10020B3C8(v28, v30, &qword_100AE7A58);
  v68 = &v30[*(v148 + 36)];
  *v68 = v59;
  *(v68 + 1) = v61;
  *(v68 + 2) = v63;
  *(v68 + 3) = v65;
  *(v68 + 4) = v67;
  v68[40] = 0;
  v69 = *(v54 + 32);
  v70 = a1;
  v71 = *(a1 + v69);
  sub_10079E474();
  sub_10079C414();
  v72 = v150;
  sub_10020B3C8(v30, v150, &qword_100AE7A60);
  v73 = (v72 + *(v153 + 36));
  v74 = v175;
  v73[4] = v174;
  v73[5] = v74;
  v73[6] = v176;
  v75 = v171;
  *v73 = v170;
  v73[1] = v75;
  v76 = v173;
  v73[2] = v172;
  v73[3] = v76;
  sub_10020B3C8(v72, v34, &qword_100AE7A68);
  *&v34[*(v32 + 36)] = 256;
  v77 = v156;
  sub_10020B3C8(v34, v156, &qword_100AE7A70);
  *(v77 + *(v152 + 36)) = 0;
  v78 = sub_10079C8F4();
  v79 = v166 + *(v151 + 36);
  *v79 = v78;
  *(v79 + 8) = 0;
  *(v79 + 16) = 1;
  v80 = *(sub_1001F1160(&qword_100AE7A98) + 44);
  v81 = v157;
  sub_10000E3E8((v157 + 80), *(v157 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v82 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v82 == 2))
  {
    v83 = 1;
  }

  else
  {
    sub_1004E0B04(v158, v79 + v80, type metadata accessor for RESliderView);
    v83 = 0;
  }

  v84 = v162;
  v85 = type metadata accessor for RESliderView();
  v86 = 1;
  (*(*(v85 - 8) + 56))(v79 + v80, v83, 1, v85);
  v87 = sub_10079E474();
  v89 = v88;
  v90 = (v79 + *(sub_1001F1160(&qword_100AE7AA0) + 36));
  *v90 = v87;
  v90[1] = v89;
  v91 = v166;
  sub_10020B3C8(v77, v166, &qword_100AE7A78);
  v92 = sub_10079E474();
  v94 = v93;
  v95 = v91;
  v96 = v154;
  sub_10020B3C8(v95, v154, &qword_100AE7A80);
  v97 = (v96 + *(v155 + 36));
  *v97 = sub_1004E1188;
  v97[1] = 0;
  v97[2] = v92;
  v97[3] = v94;
  sub_10020B3C8(v96, v168, &qword_100AE7A88);
  if ((sub_1004D9CB0() & 1) == 0 || a5 >= a4 || a4 >= a6)
  {
    goto LABEL_26;
  }

  v98 = *(v138 + 20);
  v99 = enum case for RoundedCornerStyle.continuous(_:);
  v100 = sub_10079C9E4();
  v101 = v142;
  (*(*(v100 - 8) + 104))(&v142[v98], v99, v100);
  __asm { FMOV            V0.2D, #2.0 }

  *v101 = _Q0;
  v107 = *v70;
  if (*v70)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v108 = v107;
    v109 = v139;
    sub_10079B9A4();

    v110 = v143;
    v111 = v140;
    v112 = v144;
    (*(v143 + 104))(v140, enum case for ColorScheme.dark(_:), v144);
    v113 = sub_10079BC34();
    v114 = *(v110 + 8);
    v114(v111, v112);
    v114(v109, v112);
    v115 = v146;
    if (v113)
    {
      v116 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    }

    else
    {
      v116 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
    }

    v117 = v116;
    v118 = v141;
    KeyPath = swift_getKeyPath();
    sub_1004E0B6C(v101, v115, &type metadata accessor for RoundedRectangle);
    v120 = (v115 + *(v118 + 36));
    *v120 = KeyPath;
    v120[1] = v117;
    sub_10000E3E8((v81 + 80), *(v81 + 104));
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_10079F984();
      swift_getObjectType();
      v121 = sub_10079F6D4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v122 = v121 == 2;
    }

    else
    {
      v122 = 0;
    }

    v123 = v159;
    sub_10020B3C8(v115, v159, &qword_100AE7A30);
    v124 = v123 + *(v145 + 36);
    *v124 = v122;
    *(v124 + 8) = a7;
    *(v124 + 16) = 0;
    *(v124 + 24) = v71 + -20.0;
    *(v124 + 32) = 0;
    sub_10000E3E8((v81 + 80), *(v81 + 104));
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_10079F984();
      swift_getObjectType();
      v125 = sub_10079F6D4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v126 = v125 == 2;
    }

    else
    {
      v126 = 0;
    }

    v127 = v147;
    sub_10020B3C8(v159, v147, &qword_100AE7A38);
    v128 = v127 + *(v165 + 36);
    *v128 = v126;
    *(v128 + 8) = a4;
    *(v128 + 16) = 0;
    *(v128 + 24) = 0;
    *(v128 + 32) = 1;
    sub_10020B3C8(v127, v84, &qword_100AE7A40);
    v86 = 0;
LABEL_26:
    (*(v18 + 56))(v84, v86, 1, v165);
    v129 = v167;
    v130 = v160;
    sub_1000077D8(v167, v160, &qword_100AE7A90);
    v131 = v168;
    v132 = v161;
    sub_1000077D8(v168, v161, &qword_100AE7A88);
    v133 = v163;
    sub_1000077D8(v84, v163, &qword_100AE7A48);
    v134 = v164;
    sub_1000077D8(v130, v164, &qword_100AE7A90);
    v135 = sub_1001F1160(&qword_100AE7AA8);
    sub_1000077D8(v132, v134 + *(v135 + 48), &qword_100AE7A88);
    sub_1000077D8(v133, v134 + *(v135 + 64), &qword_100AE7A48);
    sub_100007840(v84, &qword_100AE7A48);
    sub_100007840(v131, &qword_100AE7A88);
    sub_100007840(v129, &qword_100AE7A90);
    sub_100007840(v133, &qword_100AE7A48);
    sub_100007840(v132, &qword_100AE7A88);
    return sub_100007840(v130, &qword_100AE7A90);
  }

  type metadata accessor for ChromeStyle();
  sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_1004D99D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_1001F1160(&qword_100AE7AB0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v23 - v12);
  *v13 = sub_10079E474();
  v13[1] = v14;
  v15 = sub_1001F1160(&qword_100AE7AB8);
  sub_1004DB408(v2, v13 + *(v15 + 44));
  v16 = *v2;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_10079B9A4();

    (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
    sub_10079BC34();
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
    v19 = sub_10079DE54();

    KeyPath = swift_getKeyPath();
    sub_10020B3C8(v13, a1, &qword_100AE7AB0);
    result = sub_1001F1160(&qword_100AE7A50);
    v22 = (a1 + *(result + 36));
    *v22 = KeyPath;
    v22[1] = v19;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D9CB0()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v2 = *(v1 + 248);
  swift_getKeyPath();
  sub_100797A14();

  if (*(v1 + 280) > 1u)
  {
    goto LABEL_4;
  }

  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v3 != 2)
    {
      LOBYTE(v2) = 1;
    }
  }

  else if (!v3)
  {
LABEL_4:
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t sub_1004D9DC0()
{
  type metadata accessor for REScrubberView();
  sub_1001F1160(&qword_100AD7168);
  return sub_10079E004();
}

uint64_t sub_1004D9E38()
{
  v96 = sub_100796CF4();
  v1 = *(v96 - 8);
  __chkstk_darwin(v96);
  v3 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v78 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v14 = *(v0 + 16);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  v100 = v14;
  v93 = sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  v94 = v15;
  sub_100797A14();
  v16 = v1;
  v17 = v8;

  v18 = *(v14 + 256);
  v19 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  v95 = v1 + 16;
  v92 = v18;
  if (v18 == v19)
  {
    sub_1007A2154();
    sub_100796C94();
    v20 = v7;
    (*(v17 + 16))(v10, v13, v7);
    type metadata accessor for BundleFinder();
    v21 = v17;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v24 = v96;
    (*(v1 + 16))(v3, v6, v96);
    v25 = sub_1007A22D4();
    v27 = v26;
    (*(v1 + 8))(v6, v24);
    (*(v21 + 8))(v13, v20);
    v28 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    goto LABEL_3;
  }

  sub_1007A2154();
  sub_100796C94();
  v32 = *(v17 + 16);
  v85 = v17 + 16;
  v84 = v32;
  v32(v10, v13, v7);
  type metadata accessor for BundleFinder();
  v33 = swift_getObjCClassFromMetadata();
  v83 = objc_opt_self();
  v78 = v33;
  v34 = [v83 bundleForClass:v33];
  v35 = v96;
  v82 = *(v16 + 16);
  v82(v3, v6, v96);
  v86 = v10;
  v89 = v3;
  v36 = sub_1007A22D4();
  v37 = v6;
  v38 = v36;
  v28 = v39;
  v40 = *(v16 + 8);
  v90 = v37;
  v88 = v16 + 8;
  v81 = v40;
  v40(v37, v35);
  v41 = *(v17 + 8);
  v79 = v13;
  v91 = v7;
  v87 = v17 + 8;
  v80 = v41;
  v41(v13, v7);
  v42 = sub_1001F1160(&unk_100AD5090);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10080B690;
  KeyPath = swift_getKeyPath();
  v100 = v14;
  v45 = v14 + v94;
  sub_100797A14();

  swift_beginAccess();
  v46 = *(v14 + 320) * 100.0;
  v47 = fabs(v46);
  if (v47 > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  v47 = 0xC3E0000000000001;
  if (v46 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = 0x43E0000000000000;
  if (v46 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v43 + 56) = &type metadata for Int;
  *(v43 + 64) = &protocol witness table for Int;
  *(v43 + 32) = v46;
  v43 = sub_1007A2284();
  v45 = v48;

  v28 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
  KeyPath = *(v28 + 2);
  v47 = *(v28 + 3);
  v38 = KeyPath + 1;
  if (KeyPath >= v47 >> 1)
  {
LABEL_35:
    v28 = sub_10000B3D8((v47 > 1), v38, 1, v28);
  }

  *(v28 + 2) = v38;
  v49 = &v28[16 * KeyPath];
  *(v49 + 4) = v43;
  *(v49 + 5) = v45;
  swift_getKeyPath();
  v99 = v14;
  sub_100797A14();

  swift_beginAccess();
  v50 = *(v14 + 216);
  if (v50 == _s5Books17REActionMenuStateC9pageCountSivpfi_0() || v50 < 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50 - 1;
  }

  v53 = sub_1007A06F4(v52);
  v55 = v54;
  v56 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  v57 = v92;
  if (v92 == v56 || v92 < 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = v92 - 1;
  }

  v60 = sub_1007A06F4(v59);
  v62 = v61;
  if (v57 < 1 || (v63 = v60, v97 = v53, v98 = v55, sub_1002060B4(), (sub_1007A28A4() & 1) == 0) || (v97 = v63, v98 = v62, (sub_1007A28A4() & 1) == 0))
  {

    goto LABEL_27;
  }

  v93 = v42;
  v64 = v79;
  sub_1007A2154();
  v65 = v90;
  sub_100796C94();
  v94 = v63;
  v66 = v91;
  v84(v86, v64, v91);
  v67 = [v83 bundleForClass:v78];
  v92 = v53;
  v68 = v96;
  v82(v89, v65, v96);
  sub_1007A22D4();
  v81(v65, v68);
  v80(v64, v66);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10080EFF0;
  *(v69 + 56) = &type metadata for String;
  v70 = sub_10000E4C4();
  *(v69 + 32) = v92;
  *(v69 + 40) = v55;
  *(v69 + 96) = &type metadata for String;
  *(v69 + 104) = v70;
  v71 = v94;
  *(v69 + 64) = v70;
  *(v69 + 72) = v71;
  *(v69 + 80) = v62;
  v25 = sub_1007A2224();
  v27 = v72;

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
LABEL_3:
  if (v30 >= v29 >> 1)
  {
    v28 = sub_10000B3D8((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v31 = &v28[16 * v30];
  *(v31 + 4) = v25;
  *(v31 + 5) = v27;
LABEL_27:
  v97 = v28;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0);
  v73 = sub_1007A20B4();
  v75 = v74;

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v73 & 0xFFFFFFFFFFFFLL;
  }

  if (!v76)
  {

    return 0;
  }

  return v73;
}

uint64_t sub_1004DA7A8()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = *(v0 + 16);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  Strong = swift_unknownObjectWeakLoadStrong();
  v39 = v12;
  if (Strong && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v15 = sub_10079F6D4(), swift_unknownObjectRelease(), v12 = v39, swift_unknownObjectRelease(), v15 == 2))
  {
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v8 + 16))(v37, v12, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v38, v6, v1);
    v19 = sub_1007A22D4();
    v20 = v12;
    v22 = v21;
    v36 = v2;
    (*(v2 + 8))(v6, v1);
    (*(v8 + 8))(v20, v7);
    v16 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v24 = *(v16 + 2);
    v23 = *(v16 + 3);
    if (v24 >= v23 >> 1)
    {
      v16 = sub_10000B3D8((v23 > 1), v24 + 1, 1, v16);
    }

    *(v16 + 2) = v24 + 1;
    v25 = &v16[16 * v24];
    *(v25 + 4) = v19;
    *(v25 + 5) = v22;
    v2 = v36;
    v12 = v39;
  }

  sub_10000E3E8((v13 + 80), *(v13 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v12 = v39;
  }

  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v37, v12, v7);
  type metadata accessor for BundleFinder();
  v26 = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:v26];
  (*(v2 + 16))(v38, v6, v1);
  v27 = sub_1007A22D4();
  v29 = v28;
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_10000B3D8(0, *(v16 + 2) + 1, 1, v16);
  }

  v31 = *(v16 + 2);
  v30 = *(v16 + 3);
  if (v31 >= v30 >> 1)
  {
    v16 = sub_10000B3D8((v30 > 1), v31 + 1, 1, v16);
  }

  *(v16 + 2) = v31 + 1;
  v32 = &v16[16 * v31];
  *(v32 + 4) = v27;
  *(v32 + 5) = v29;
  v40 = v16;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0);
  v33 = sub_1007A20B4();

  return v33;
}

uint64_t sub_1004DAE50(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  swift_unknownObjectRetain();
  LOBYTE(a2) = v5(a2, ObjectType, v3);
  swift_unknownObjectRelease();
  return a2 & 1;
}

uint64_t sub_1004DAECC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 128);
  swift_unknownObjectRetain();
  v5(a2, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1004DAF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079D1D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 56);
    (*(v5 + 16))(v7, a1, v4);
    v11 = (*(v5 + 88))(v7, v4);
    if (v11 == enum case for AccessibilityAdjustmentDirection.increment(_:) || v11 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
    {
      v13 = v11 == enum case for AccessibilityAdjustmentDirection.increment(_:);
      ObjectType = swift_getObjectType();
      (*(v10 + 32))(v13, ObjectType, v10);
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

uint64_t sub_1004DB0EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for REScrubberView();
  v4 = *(v1 + *(v3 + 60));
  if (v4 == (sub_1004D475C() & 1))
  {
    v5 = sub_1004D4C44();
  }

  else
  {
    v5 = sub_1004D4988();
  }

  v6 = v5;
  if ((v4 ^ sub_1004D475C()))
  {
    v7 = sub_1004D4C44();
  }

  else
  {
    v7 = sub_1004D4988();
  }

  v8 = v7;
  v9 = v1[2];
  swift_getKeyPath();
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v10 = *(v9 + 320);
  v11 = sub_1004D475C();
  v12 = 1.0 - v10;
  if (((v4 ^ v11) & 1) == 0)
  {
    v12 = v10;
  }

  v13 = v12 * *(v1 + *(v3 + 28));
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v13;
  return sub_1004DB258(v1, a1 + 24);
}

uint64_t sub_1004DB258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100332414();
  sub_100206ECC();
  v4 = sub_10079D5D4();
  if (*a1)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;

    v10 = sub_10079D5A4();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    sub_10020B430(v7, v8, v9 & 1);

    KeyPath = swift_getKeyPath();
    v18 = swift_getKeyPath();
    LOBYTE(v8) = sub_10079D2C4();
    result = sub_10079BBA4();
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14 & 1;
    *(a2 + 24) = v16;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 2;
    *(a2 + 48) = 0;
    *(a2 + 56) = v18;
    *(a2 + 64) = 0;
    *(a2 + 72) = v8;
    *(a2 + 80) = v20;
    *(a2 + 88) = v21;
    *(a2 + 96) = v22;
    *(a2 + 104) = v23;
    *(a2 + 112) = 0;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DB408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v66 = type metadata accessor for REScrubberView();
  v60 = *(v66 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v66);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AEE330);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  v8 = sub_1001F1160(&qword_100AE7AC0);
  __chkstk_darwin(v8 - 8);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = *(a1 + 16);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  Strong = swift_unknownObjectWeakLoadStrong();
  v65 = v12;
  if (!Strong)
  {
LABEL_5:
    v18 = 1;
    goto LABEL_7;
  }

  swift_getObjectType();
  sub_10079F984();
  swift_getObjectType();
  v15 = sub_10079F6D4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v15 == 2)
  {
    swift_getKeyPath();
    *&v102 = v13;
    sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    v16 = *(v13 + 256);
    v17 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    v12 = v65;
    if (v16 == v17)
    {
      sub_10079BDC4();
      (*(v5 + 32))(v12, v7, v4);
      v18 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18 = 1;
  v12 = v65;
LABEL_7:
  (*(v5 + 56))(v12, v18, 1, v4);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v19 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v62 = v19 == 2;
  }

  else
  {
    v62 = 0;
  }

  v20 = v61;
  sub_1004E0B04(a1, v61, type metadata accessor for REScrubberView);
  v21 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v22 = swift_allocObject();
  sub_1004E0B6C(v20, v22 + v21, type metadata accessor for REScrubberView);
  swift_getKeyPath();
  *&v102 = v13;
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  LODWORD(v61) = *(v13 + 280);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v23 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v23 == 2))
  {
    sub_1004E0DC4(&v102);
  }

  else
  {
    v24 = *(a1 + *(v66 + 60));
    v25 = sub_1004D475C();
    v60 = v22;
    if (v24 == (v25 & 1))
    {
      v26 = sub_1004D4C44();
    }

    else
    {
      v26 = sub_1004D4988();
    }

    v59 = v26;
    if ((v24 ^ sub_1004D475C()))
    {
      v27 = sub_1004D4C44();
    }

    else
    {
      v27 = sub_1004D4988();
    }

    v58 = v27;
    swift_getKeyPath();
    *&v102 = v13;
    sub_100797A14();

    swift_beginAccess();
    v28 = *(v13 + 320);
    v29 = sub_1004D475C();
    v30 = 1.0 - v28;
    if (((v24 ^ v29) & 1) == 0)
    {
      v30 = v28;
    }

    v31 = v30 * *(a1 + *(v66 + 28));
    v32 = sub_10079C8F4();
    v101 = 1;
    sub_1004DCA4C(a1, &v102);
    v75 = v110;
    v76 = v111;
    v77 = v112;
    v71 = v106;
    v72 = v107;
    v73 = v108;
    v74 = v109;
    v67 = v102;
    v68 = v103;
    v69 = v104;
    v70 = v105;
    v90 = v110;
    v91 = v111;
    v92 = v112;
    v86 = v106;
    v87 = v107;
    v88 = v108;
    v89 = v109;
    v82 = v102;
    v83 = v103;
    LOBYTE(v78) = v113;
    LOBYTE(v93) = v113;
    v84 = v104;
    v85 = v105;
    sub_1000077D8(&v67, &v97, &qword_100AE7AC8);
    sub_100007840(&v82, &qword_100AE7AC8);
    *&v100[135] = v75;
    *&v100[151] = v76;
    *&v100[167] = v77;
    *&v100[71] = v71;
    *&v100[87] = v72;
    *&v100[103] = v73;
    *&v100[119] = v74;
    *&v100[7] = v67;
    *&v100[23] = v68;
    *&v100[39] = v69;
    v100[183] = v78;
    *&v100[55] = v70;
    v33 = v101;
    swift_getKeyPath();
    *&v102 = v13;
    sub_100797A14();

    v34 = 0.0;
    if (*(v13 + 280) >= 2u)
    {
      v34 = 1.0;
    }

    *&v97 = v59;
    *(&v97 + 1) = v58;
    *&v98 = v31;
    *(&v98 + 1) = v32;
    *&v99[0] = 0;
    BYTE8(v99[0]) = v33;
    *(&v99[8] + 9) = *&v100[128];
    *(&v99[9] + 9) = *&v100[144];
    *(&v99[10] + 9) = *&v100[160];
    *(&v99[11] + 9) = *&v100[176];
    *(&v99[4] + 9) = *&v100[64];
    *(&v99[5] + 9) = *&v100[80];
    *(&v99[6] + 9) = *&v100[96];
    *(&v99[7] + 9) = *&v100[112];
    *(v99 + 9) = *v100;
    *(&v99[1] + 9) = *&v100[16];
    *(&v99[2] + 9) = *&v100[32];
    *(&v99[3] + 9) = *&v100[48];
    *(&v99[12] + 1) = v34;
    BKAppDelegate.enableMetricsInspectorOnDebugMode()();
    v114 = v99[10];
    v115 = v99[11];
    v116 = v99[12];
    v110 = v99[6];
    v111 = v99[7];
    v113 = v99[9];
    v112 = v99[8];
    v106 = v99[2];
    v107 = v99[3];
    v109 = v99[5];
    v108 = v99[4];
    v102 = v97;
    v103 = v98;
    v105 = v99[1];
    v104 = v99[0];
    v12 = v65;
    v22 = v60;
  }

  if (v61)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = v64;
  sub_1000077D8(v12, v64, &qword_100AE7AC0);
  v79 = v114;
  v80 = v115;
  v81 = v116;
  v75 = v110;
  v76 = v111;
  v77 = v112;
  v78 = v113;
  v71 = v106;
  v72 = v107;
  v73 = v108;
  v74 = v109;
  v67 = v102;
  v68 = v103;
  v69 = v104;
  v70 = v105;
  v37 = v63;
  sub_1000077D8(v36, v63, &qword_100AE7AC0);
  v38 = sub_1001F1160(&qword_100AE7AD0);
  v39 = v37 + *(v38 + 48);
  *v39 = v62;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  *(v39 + 24) = sub_1004E0D28;
  *(v39 + 32) = v22;
  *(v39 + 40) = v35;
  v40 = *(v38 + 64);
  v41 = v67;
  v42 = v68;
  v82 = v67;
  v83 = v68;
  v44 = v69;
  v43 = v70;
  v84 = v69;
  v85 = v70;
  v45 = v80;
  v94 = v79;
  v95 = v80;
  v46 = v81;
  v96 = v81;
  v47 = v75;
  v48 = v76;
  v90 = v75;
  v91 = v76;
  v50 = v77;
  v49 = v78;
  v92 = v77;
  v93 = v78;
  v51 = v71;
  v52 = v72;
  v86 = v71;
  v87 = v72;
  v54 = v73;
  v53 = v74;
  v88 = v73;
  v89 = v74;
  v55 = (v37 + v40);
  v55[12] = v79;
  v55[13] = v45;
  v55[14] = v46;
  v55[8] = v47;
  v55[9] = v48;
  v55[10] = v50;
  v55[11] = v49;
  v55[4] = v51;
  v55[5] = v52;
  v55[6] = v54;
  v55[7] = v53;
  *v55 = v41;
  v55[1] = v42;
  v55[2] = v44;
  v55[3] = v43;

  sub_1000077D8(&v82, &v97, &qword_100AE7AD8);
  sub_100007840(v12, &qword_100AE7AC0);
  v99[10] = v79;
  v99[11] = v80;
  v99[12] = v81;
  v99[6] = v75;
  v99[7] = v76;
  v99[8] = v77;
  v99[9] = v78;
  v99[2] = v71;
  v99[3] = v72;
  v99[4] = v73;
  v99[5] = v74;
  v97 = v67;
  v98 = v68;
  v99[0] = v69;
  v99[1] = v70;
  sub_100007840(&v97, &qword_100AE7AD8);

  return sub_100007840(v36, &qword_100AE7AC0);
}

uint64_t sub_1004DBE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v108 = sub_1001F1160(&qword_100AE7AE8);
  v3 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v89[-v4];
  v5 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v5 - 8);
  v105 = &v89[-v6];
  v106 = sub_10079D4D4();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1001F1160(&qword_100AE7AF0);
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v95 = &v89[-v9];
  v10 = sub_1001F1160(&qword_100AEE330);
  v96 = *(v10 - 8);
  v97 = v10;
  __chkstk_darwin(v10);
  v12 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v89[-v14];
  v16 = sub_1001F1160(&qword_100AE7AF8);
  __chkstk_darwin(v16 - 8);
  v112 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v113 = &v89[-v19];
  v20 = sub_1001F1160(&qword_100AE7B00);
  __chkstk_darwin(v20 - 8);
  v22 = &v89[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v89[-v24];
  v111 = a1;
  v26 = *(a1 + 16);
  sub_10000E3E8((v26 + 80), *(v26 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v27 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v27 == 2))
  {
    (*(v3 + 56))(v25, 1, 1, v108);
  }

  else
  {
    v98 = v25;
    v99 = v22;
    v100 = v3;
    sub_1004DB0EC(&v161);
    swift_getKeyPath();
    v138[0] = v26;
    sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    v28 = 1.0;
    if (*(v26 + 352))
    {
      v28 = 0.0;
    }

    v110 = v28;
    swift_getKeyPath();
    v138[0] = v26;
    sub_100797A14();

    v29 = *(v26 + 256);
    if (v29 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
    {
      sub_10079E474();
      sub_10079BE54();
      v93 = v172;
      v94 = v170;
      v91 = v175;
      v92 = v174;
      LOBYTE(v138[0]) = 1;
      LOBYTE(v130) = v171;
      LOBYTE(v159[0]) = v173;
      sub_10079BDC4();
      v30 = v138[0];
      v31 = v130;
      v90 = LOBYTE(v159[0]);
      v33 = v96;
      v32 = v97;
      v34 = *(v96 + 16);
      v34(v12, v15, v97);
      v35 = v94;
      v36 = v95;
      *v95 = 0;
      *(v36 + 8) = v30;
      *(v36 + 16) = v35;
      *(v36 + 24) = v31;
      *(v36 + 32) = v93;
      *(v36 + 40) = v90;
      v37 = v113;
      v38 = v91;
      *(v36 + 48) = v92;
      *(v36 + 56) = v38;
      v39 = sub_1001F1160(&qword_100AE7B28);
      v34((v36 + *(v39 + 48)), v12, v32);
      v40 = *(v33 + 8);
      v40(v15, v32);
      v40(v12, v32);
      sub_10020B3C8(v36, v37, &qword_100AE7AF0);
      (*(v101 + 56))(v37, 0, 1, v102);
    }

    else
    {
      (*(v101 + 56))(v113, 1, 1, v102);
    }

    v41 = (v111 + *(type metadata accessor for REScrubberView() + 40));
    v42 = *v41;
    v101 = v41[1];
    v102 = v42;
    v44 = v103;
    v43 = v104;
    v45 = v106;
    (*(v104 + 104))(v103, enum case for Font.TextStyle.body(_:), v106);
    v46 = sub_10079D3A4();
    v47 = v105;
    (*(*(v46 - 8) + 56))(v105, 1, 1, v46);

    sub_10079D434();
    sub_100007840(v47, &unk_100AD1FC0);
    (*(v43 + 8))(v44, v45);
    v48 = sub_10079D384();
    v106 = v48;

    sub_1001F1160(qword_100ADC258);
    sub_10079BDF4();
    sub_10079E474();
    sub_10079BE54();
    LOBYTE(v43) = sub_10079D2C4();
    sub_10079BBA4();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    LOBYTE(v138[0]) = 0;
    v57 = sub_10079D2E4();
    sub_10079BBA4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v112;
    sub_1000077D8(v113, v112, &qword_100AE7AF8);
    v126 = v167;
    v127 = v168;
    v128 = v169;
    v122 = v163;
    v123 = v164;
    v67 = v166;
    v124 = v165;
    v125 = v166;
    v68 = v162;
    v121[0] = v161;
    v121[1] = v162;
    v69 = v168;
    v70 = v107;
    *(v107 + 6) = v167;
    *(v70 + 112) = v69;
    *(v70 + 128) = v128;
    v71 = v123;
    v72 = v124;
    v73 = v121[0];
    *(v70 + 32) = v122;
    *(v70 + 48) = v71;
    v129 = v110;
    *(v70 + 64) = v72;
    *(v70 + 80) = v67;
    *v70 = v73;
    *(v70 + 16) = v68;
    *(v70 + 144) = v129;
    v74 = sub_1001F1160(&qword_100AE7B08);
    sub_1000077D8(v66, v70 + *(v74 + 48), &qword_100AE7AF8);
    v75 = (v70 + *(v74 + 64));
    v77 = v101;
    v76 = v102;
    *&v130 = v102;
    *(&v130 + 1) = v101;
    *&v131[0] = v48;
    *(&v131[2] + 8) = v116;
    *(v131 + 8) = v114;
    *(&v131[1] + 8) = v115;
    BYTE8(v131[3]) = v43;
    *(&v131[3] + 9) = v117[0];
    HIDWORD(v131[3]) = *(v117 + 3);
    *&v132 = v50;
    *(&v132 + 1) = v52;
    *&v133 = v54;
    *(&v133 + 1) = v56;
    LOBYTE(v134) = 0;
    DWORD1(v134) = *&v119[3];
    *(&v134 + 1) = *v119;
    BYTE8(v134) = v57;
    *(&v134 + 9) = *v118;
    HIDWORD(v134) = *&v118[3];
    *&v135 = v59;
    *(&v135 + 1) = v61;
    *&v136 = v63;
    *(&v136 + 1) = v65;
    LOBYTE(v137) = 0;
    *(&v137 + 1) = *v120;
    DWORD1(v137) = *&v120[3];
    *(&v137 + 1) = 0;
    v78 = v131[0];
    *v75 = v130;
    v75[1] = v78;
    v79 = v131[1];
    v80 = v131[2];
    v81 = v132;
    v75[4] = v131[3];
    v75[5] = v81;
    v75[2] = v79;
    v75[3] = v80;
    v82 = v133;
    v83 = v134;
    v84 = v137;
    v75[9] = v136;
    v75[10] = v84;
    v85 = v135;
    v75[7] = v83;
    v75[8] = v85;
    v75[6] = v82;
    sub_1000077D8(v121, v138, &qword_100AE7B10);
    sub_1000077D8(&v130, v138, &qword_100AE7B18);
    sub_100007840(v113, &qword_100AE7AF8);
    v139 = v114;
    v138[0] = v76;
    v138[1] = v77;
    v138[2] = v106;
    v140 = v115;
    v141 = v116;
    v142 = v43;
    *v143 = v117[0];
    *&v143[3] = *(v117 + 3);
    v144 = v50;
    v145 = v52;
    v146 = v54;
    v147 = v56;
    v148 = 0;
    *&v149[3] = *&v119[3];
    *v149 = *v119;
    v150 = v57;
    *&v151[3] = *&v118[3];
    *v151 = *v118;
    v152 = v59;
    v153 = v61;
    v154 = v63;
    v155 = v65;
    v156 = 0;
    *v157 = *v120;
    *&v157[3] = *&v120[3];
    v158 = 0;
    sub_100007840(v138, &qword_100AE7B18);
    sub_100007840(v112, &qword_100AE7AF8);
    v159[6] = v167;
    v159[7] = v168;
    v159[8] = v169;
    v159[2] = v163;
    v159[3] = v164;
    v159[4] = v165;
    v159[5] = v166;
    v159[0] = v161;
    v159[1] = v162;
    v160 = v110;
    sub_100007840(v159, &qword_100AE7B10);
    v25 = v98;
    sub_10020B3C8(v70, v98, &qword_100AE7AE8);
    (*(v100 + 56))(v25, 0, 1, v108);
    v22 = v99;
  }

  sub_1000077D8(v25, v22, &qword_100AE7B00);
  v86 = v109;
  sub_1000077D8(v22, v109, &qword_100AE7B00);
  v87 = v86 + *(sub_1001F1160(&qword_100AE7B20) + 48);
  *v87 = 0;
  *(v87 + 8) = 1;
  sub_100007840(v25, &qword_100AE7B00);
  return sub_100007840(v22, &qword_100AE7B00);
}

uint64_t sub_1004DCA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for REScrubberView() + 40));
  v12 = *v11;
  v39 = v11[1];
  v40 = v12;
  (*(v8 + 104))(v10, enum case for Font.TextStyle.body(_:), v7);
  v13 = sub_10079D3A4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);

  sub_10079D434();
  sub_100007840(v6, &unk_100AD1FC0);
  (*(v8 + 8))(v10, v7);
  v14 = sub_10079D384();

  sub_1001F1160(qword_100ADC258);
  sub_10079BDF4();
  sub_10079E474();
  sub_10079BE54();
  v15 = sub_10079D2C4();
  sub_10079BBA4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v58[0]) = 0;
  LOBYTE(a1) = sub_10079D2E4();
  sub_10079BBA4();
  v25 = v39;
  v24 = v40;
  *&v50 = v40;
  *(&v50 + 1) = v39;
  *&v51[0] = v14;
  *(v51 + 8) = v44;
  *(&v51[1] + 8) = v45;
  v26 = v44;
  v27 = v45;
  *(&v51[2] + 8) = v46;
  BYTE8(v51[3]) = v15;
  HIDWORD(v51[3]) = *(v47 + 3);
  *(&v51[3] + 9) = v47[0];
  *&v52 = v17;
  *(&v52 + 1) = v19;
  *&v53 = v21;
  *(&v53 + 1) = v23;
  LOBYTE(v54) = 0;
  DWORD1(v54) = *&v49[3];
  *(&v54 + 1) = *v49;
  BYTE8(v54) = a1;
  HIDWORD(v54) = *&v48[3];
  *(&v54 + 9) = *v48;
  *&v55 = v28;
  *(&v55 + 1) = v29;
  *&v56 = v30;
  *(&v56 + 1) = v31;
  v42[167] = 0;
  *&v42[151] = v56;
  *&v42[135] = v55;
  *&v42[119] = v54;
  *&v42[39] = v51[1];
  *&v42[23] = v51[0];
  *&v42[7] = v50;
  *&v42[103] = v53;
  *&v42[87] = v52;
  *&v42[71] = v51[3];
  *&v42[55] = v51[2];
  v32 = *&v42[96];
  *(a2 + 121) = *&v42[112];
  v33 = *&v42[144];
  *(a2 + 137) = *&v42[128];
  *(a2 + 153) = v33;
  v34 = *&v42[32];
  *(a2 + 57) = *&v42[48];
  v35 = *&v42[80];
  *(a2 + 73) = *&v42[64];
  *(a2 + 89) = v35;
  *(a2 + 105) = v32;
  v36 = *&v42[16];
  *(a2 + 9) = *v42;
  v43 = 1;
  v57 = 0;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 169) = *&v42[160];
  *(a2 + 25) = v36;
  *(a2 + 41) = v34;
  v58[0] = v24;
  v58[1] = v25;
  v58[2] = v14;
  v59 = v26;
  v60 = v27;
  v61 = v46;
  v62 = v15;
  *v63 = v47[0];
  *&v63[3] = *(v47 + 3);
  v64 = v17;
  v65 = v19;
  v66 = v21;
  v67 = v23;
  v68 = 0;
  *&v69[3] = *&v49[3];
  *v69 = *v49;
  v70 = a1;
  *&v71[3] = *&v48[3];
  *v71 = *v48;
  v72 = v28;
  v73 = v29;
  v74 = v30;
  v75 = v31;
  v76 = 0;
  sub_1000077D8(&v50, &v41, &qword_100AE7AE0);
  return sub_100007840(v58, &qword_100AE7AE0);
}

uint64_t sub_1004DCEFC@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for REScrubberView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1004D81A0(v4, a1);
}

uint64_t sub_1004DCF70()
{
  v1 = *(type metadata accessor for REScrubberView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1004D8300(v2);
}

uint64_t sub_1004DCFD0(unsigned __int8 a1, double a2, double a3, double a4)
{
  v9 = *(type metadata accessor for REScrubberView() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1004D4E40(a1, v10, a2, a3, a4);
}

uint64_t sub_1004DD068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE7950);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1001F1160(&qword_100AE7958);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if (sub_1004D9CB0())
  {
    sub_1004DD3F4(v7);
    sub_10020B3C8(v7, v13, &qword_100AE7950);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  v14 = sub_10079DDC4();
  KeyPath = swift_getKeyPath();
  sub_10000E3E8((*(a1 + 16) + 80), *(*(a1 + 16) + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v16 = type metadata accessor for REScrubberView();
  type metadata accessor for REScrubberView();
  v17 = (a1 + *(v16 + 52));
  v18 = *v17;
  v19 = v17[1];
  v29 = v18;
  v30 = v19;
  sub_1001F1160(&qword_100AD7168);
  sub_10079DFF4();
  sub_10079E474();
  sub_10079BE54();
  sub_10003E25C(v13, v10);
  sub_10003E25C(v10, a2);
  v20 = (a2 + *(sub_1001F1160(&qword_100AE7960) + 48));
  *&v28[0] = KeyPath;
  *(&v28[0] + 1) = v14;
  v21 = v26;
  v28[2] = v26;
  v28[3] = v27;
  v22 = v25;
  v28[1] = v25;
  v23 = v27;
  *v20 = v28[0];
  v20[1] = v22;
  v20[2] = v21;
  v20[3] = v23;
  sub_1000077D8(v28, &v29, &qword_100AD4CA8);
  sub_100007840(v13, &qword_100AE7958);
  v29 = KeyPath;
  v30 = v14;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  sub_100007840(&v29, &qword_100AD4CA8);
  return sub_100007840(v10, &qword_100AE7958);
}

uint64_t sub_1004DD3F4@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = type metadata accessor for REScrubberView();
  v66 = *(v2 - 8);
  __chkstk_darwin(v2);
  v67 = v3;
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1001F1160(&qword_100AE7968);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = &v63 - v4;
  v6 = sub_1001F1160(&qword_100AE7970);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v65 = sub_1001F1160(&qword_100AE7978);
  __chkstk_darwin(v65);
  v13 = (&v63 - v12);
  v14 = *(v1 + 16);
  sub_10000E3E8((v14 + 80), *(v14 + 104));
  v15 = 0.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v16 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v17 = v1;
    if (v16 == 2)
    {
      v18 = *(v1 + *(v2 + 28));
      swift_getKeyPath();
      *&v71 = v14;
      sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      swift_beginAccess();
      v19 = v18 * *(v14 + 320) - v18 * 0.5;
      v20 = (v1 + *(v2 + 56));
      v21 = *v20;
      v22 = v20[1];
      *&v71 = v21;
      *(&v71 + 1) = v22;
      sub_1001F1160(&qword_100AD7168);
      sub_10079DFF4();
      if ((v18 - v70) * 0.5 >= v19)
      {
        v15 = v19;
      }

      else
      {
        v15 = (v18 - v70) * 0.5;
      }
    }
  }

  else
  {
    v17 = v1;
  }

  *v13 = sub_10079E474();
  v13[1] = v23;
  swift_getKeyPath();
  *&v71 = v14;
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v24 = 1;
  v25 = v64;
  if (*(v14 + 280) == 1)
  {
    *v5 = sub_10079CB24();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v26 = sub_1001F1160(&qword_100AE79E8);
    sub_1004DDC14(v17, &v5[*(v26 + 44)]);
    v27 = sub_10079D2C4();
    sub_10079BBA4();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v5[*(sub_1001F1160(&qword_100AE79F0) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = sub_10079D2F4();
    sub_10079BBA4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v5[*(sub_1001F1160(&qword_100AE79F8) + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = sub_10079E474();
    v48 = &v5[*(v25 + 36)];
    *v48 = sub_1004E1188;
    *(v48 + 1) = 0;
    *(v48 + 2) = v47;
    *(v48 + 3) = v49;
    sub_10020B3C8(v5, v11, &qword_100AE7968);
    v24 = 0;
  }

  (*(v63 + 56))(v11, v24, 1, v25);
  v50 = v13 + *(sub_1001F1160(&qword_100AE7980) + 44);
  sub_1000077D8(v11, v8, &qword_100AE7970);
  *v50 = 1;
  v51 = sub_1001F1160(&qword_100AE7988);
  sub_1000077D8(v8, &v50[*(v51 + 48)], &qword_100AE7970);
  sub_100007840(v11, &qword_100AE7970);
  sub_100007840(v8, &qword_100AE7970);
  KeyPath = swift_getKeyPath();
  v53 = v13 + *(sub_1001F1160(&qword_100AE7990) + 36);
  *v53 = KeyPath;
  *(v53 + 1) = 1;
  v53[16] = 0;
  sub_10079E474();
  sub_10079BE54();
  v54 = (v13 + *(v65 + 36));
  v55 = v72;
  *v54 = v71;
  v54[1] = v55;
  v54[2] = v73;
  sub_10079E414();
  sub_1001F1160(&qword_100AE7998);
  sub_1001F1160(&qword_100AE79A0);
  sub_1004E0540();
  sub_1004E06B0();
  sub_1004E0768();
  v56 = v69;
  sub_10079DC54();
  sub_100007840(v13, &qword_100AE7978);
  v57 = v56 + *(sub_1001F1160(&qword_100AE79D8) + 36);
  *v57 = 0;
  *(v57 + 8) = v15;
  *(v56 + *(sub_1001F1160(&qword_100AE79E0) + 36)) = 256;
  v58 = v68;
  sub_1004E0B04(v17, v68, type metadata accessor for REScrubberView);
  v59 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v60 = swift_allocObject();
  sub_1004E0B6C(v58, v60 + v59, type metadata accessor for REScrubberView);
  result = sub_1001F1160(&qword_100AE7950);
  v62 = (v56 + *(result + 36));
  *v62 = sub_1004E0820;
  v62[1] = v60;
  return result;
}

uint64_t sub_1004DDC14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v114 = a2;
  v107 = sub_10079E534();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1001F1160(&qword_100ADC228);
  __chkstk_darwin(v103);
  v110 = &v99 - v4;
  v108 = sub_1001F1160(&qword_100AE7A00);
  __chkstk_darwin(v108);
  v111 = &v99 - v5;
  v109 = sub_1001F1160(&qword_100AE7A08);
  __chkstk_darwin(v109);
  v113 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v99 - v8;
  __chkstk_darwin(v9);
  v112 = &v99 - v10;
  v130 = sub_10079BC44();
  v11 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v128 = &v99 - v14;
  sub_100009864(*(a1 + 16) + 80, &v132);
  sub_10000E3E8(&v132, *(&v133 + 1));
  sub_100341270(0, 255, 0, 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v15 = sub_10079F964();
    v17 = v16;
    swift_unknownObjectRelease();
    sub_1000074E0(&v132);
  }

  else
  {
    sub_1000074E0(&v132);
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  *&v132 = v15;
  *(&v132 + 1) = v17;
  v100 = sub_100206ECC();
  v18 = sub_10079D5D4();
  v125 = v19;
  v126 = v18;
  v120 = v20;
  v127 = v21;
  v22 = a1;
  v23 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v23;
    v25 = v128;
    sub_10079B9A4();

    v26 = *(v11 + 104);
    v28 = v129;
    v27 = v130;
    v117 = enum case for ColorScheme.light(_:);
    v115 = v26;
    v116 = v11 + 104;
    v26(v129);
    v29 = sub_10079BC34();
    v30 = *(v11 + 8);
    v30(v28, v27);
    v118 = v30;
    v119 = v11 + 8;
    v30(v25, v27);
    if (v29)
    {
      v31 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v31 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v124 = v31;
    v32 = v22;

    KeyPath = swift_getKeyPath();

    sub_10079D3F4();
    v122 = sub_10079D464();

    v121 = swift_getKeyPath();
    v120 &= 1u;
    v189 = v120;
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    v33 = sub_10079E474();
    v35 = v34;
    v36 = sub_10079C8F4();
    LOBYTE(v169[0]) = 0;
    sub_1004DEA2C(v32, &v132);
    v160 = v135;
    v161 = v136;
    v162 = v137;
    v157 = v132;
    v158 = v133;
    v159 = v134;
    v164 = v137;
    v163[2] = v134;
    v163[3] = v135;
    v163[4] = v136;
    v163[0] = v132;
    v163[1] = v133;
    sub_1000077D8(&v157, v131, &qword_100AE7A10);
    sub_100007840(v163, &qword_100AE7A10);
    *(&v156[2] + 7) = v159;
    *(&v156[3] + 7) = v160;
    *(&v156[4] + 7) = v161;
    *(&v156[5] + 7) = v162;
    *(v156 + 7) = v157;
    *(&v156[1] + 7) = v158;
    v37 = v169[0];
    type metadata accessor for REScrubberView();
    sub_10079E474();
    sub_10079BE54();
    *&v165 = v33;
    *(&v165 + 1) = v35;
    v166 = v36;
    v167 = 0;
    LOBYTE(v168[0]) = v37;
    *(&v168[2] + 1) = v156[2];
    *(&v168[3] + 1) = v156[3];
    *(&v168[4] + 1) = v156[4];
    *(v168 + 1) = v156[0];
    *(&v168[1] + 1) = v156[1];
    v168[8] = *&v131[32];
    v168[7] = *&v131[16];
    v168[5] = *(&v156[4] + 15);
    v168[6] = *v131;
    v184 = *v131;
    v185 = *&v131[16];
    v186 = *&v131[32];
    v180 = v168[2];
    v181 = v168[3];
    v183 = *(&v156[4] + 15);
    v182 = v168[4];
    v176 = v165;
    v177 = v36;
    v179 = v168[1];
    v178 = v168[0];
    v173 = v156[2];
    v174 = v156[3];
    *v175 = v156[4];
    v171 = v156[0];
    v169[0] = v33;
    v169[1] = v35;
    v169[2] = v36;
    v169[3] = 0;
    v170 = v37;
    v172 = v156[1];
    *&v175[63] = *&v131[32];
    *&v175[47] = *&v131[16];
    *&v175[15] = *(&v156[4] + 15);
    *&v175[31] = *v131;
    sub_1000077D8(&v165, &v132, &qword_100AE7A18);
    sub_100007840(v169, &qword_100AE7A18);
    v101 = sub_10079D2E4();
    sub_10079BBA4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v190 = 0;
    *&v132 = sub_1004DEE6C();
    *(&v132 + 1) = v46;
    v47 = sub_10079D5D4();
    v49 = v48;
    v51 = v50;
    v100 = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v24;
    v54 = v128;
    sub_10079B9A4();

    v56 = v129;
    v55 = v130;
    v115(v129, v117, v130);
    v57 = sub_10079BC34();
    v58 = v118;
    v118(v56, v55);
    v58(v54, v55);
    if (v57)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    sub_10079DE24();

    v59 = sub_10079D564();
    v61 = v60;
    v63 = v62;
    v99 = v64;

    sub_10020B430(v47, v49, v51 & 1);

    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v53;
    v66 = v128;
    sub_10079B9A4();

    v68 = v129;
    v67 = v130;
    v115(v129, v117, v130);
    v69 = sub_10079BC34();

    v70 = v68;
    v71 = v118;
    v118(v70, v67);
    v71(v66, v67);
    v73 = v104;
    v72 = v105;
    v74 = &enum case for BlendMode.plusDarker(_:);
    if ((v69 & 1) == 0)
    {
      v74 = &enum case for BlendMode.plusLighter(_:);
    }

    v75 = v107;
    (*(v105 + 104))(v104, *v74, v107);
    v76 = v110;
    (*(v72 + 32))(&v110[*(v103 + 36)], v73, v75);
    *v76 = v59;
    *(v76 + 1) = v61;
    v76[16] = v63 & 1;
    *(v76 + 3) = v99;
    sub_10079D354();
    sub_10079D3D4();
    sub_10079D464();

    v77 = sub_10079D364();

    v78 = swift_getKeyPath();
    v79 = v76;
    v80 = v111;
    sub_10020B3C8(v79, v111, &qword_100ADC228);
    v81 = (v80 + *(v108 + 36));
    *v81 = v78;
    v81[1] = v77;
    LOBYTE(v77) = sub_10079D2E4();
    sub_10079BBA4();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v106;
    sub_10020B3C8(v80, v106, &qword_100AE7A00);
    v91 = v90 + *(v109 + 36);
    *v91 = v77;
    *(v91 + 8) = v83;
    *(v91 + 16) = v85;
    *(v91 + 24) = v87;
    *(v91 + 32) = v89;
    *(v91 + 40) = 0;
    v92 = v112;
    sub_10020B3C8(v90, v112, &qword_100AE7A08);
    v93 = v113;
    sub_1000077D8(v92, v113, &qword_100AE7A08);
    *v131 = v126;
    *&v131[8] = v125;
    v131[16] = v120;
    *&v131[17] = *v188;
    *&v131[20] = *&v188[3];
    *&v131[24] = v127;
    v131[32] = 1;
    *&v131[33] = *v187;
    *&v131[36] = *&v187[3];
    *&v131[40] = KeyPath;
    *&v131[48] = v124;
    *&v131[56] = v121;
    *&v131[64] = v122;
    *&v131[200] = v183;
    *&v131[216] = v184;
    *&v131[232] = v185;
    *&v131[248] = v186;
    *&v131[136] = v179;
    *&v131[152] = v180;
    *&v131[168] = v181;
    *&v131[184] = v182;
    *&v131[88] = v176;
    *&v131[104] = v177;
    v94 = v102;
    *&v131[72] = sub_10047DA08;
    *&v131[80] = v102;
    *&v131[120] = v178;
    v95 = v101;
    v131[264] = v101;
    *&v131[265] = v191[0];
    *&v131[268] = *(v191 + 3);
    *&v131[272] = v39;
    *&v131[280] = v41;
    *&v131[288] = v43;
    *&v131[296] = v45;
    v131[304] = 0;
    v96 = v114;
    memcpy(v114, v131, 0x131uLL);
    v97 = sub_1001F1160(&qword_100AE7A20);
    sub_1000077D8(v93, v96 + *(v97 + 48), &qword_100AE7A08);
    sub_1000077D8(v131, &v132, &qword_100AE7A28);
    sub_100007840(v92, &qword_100AE7A08);
    sub_100007840(v93, &qword_100AE7A08);
    v145 = v183;
    v146 = v184;
    v147 = v185;
    v148 = v186;
    v141 = v179;
    v142 = v180;
    v143 = v181;
    v144 = v182;
    v138 = v176;
    v139 = v177;
    *&v132 = v126;
    *(&v132 + 1) = v125;
    LOBYTE(v133) = v120;
    *(&v133 + 1) = *v188;
    DWORD1(v133) = *&v188[3];
    *(&v133 + 1) = v127;
    LOBYTE(v134) = 1;
    *(&v134 + 1) = *v187;
    DWORD1(v134) = *&v187[3];
    *(&v134 + 1) = KeyPath;
    *&v135 = v124;
    *(&v135 + 1) = v121;
    *&v136 = v122;
    *(&v136 + 1) = sub_10047DA08;
    v137 = v94;
    v140 = v178;
    v149 = v95;
    *v150 = v191[0];
    *&v150[3] = *(v191 + 3);
    v151 = v39;
    v152 = v41;
    v153 = v43;
    v154 = v45;
    v155 = 0;
    return sub_100007840(&v132, &qword_100AE7A28);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}