id sub_1002BD2D8()
{
  v1 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = [objc_allocWithZone(BCMutableFutureValue) init];
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &aBlock);
  if (!v27)
  {

    p_aBlock = &aBlock;
LABEL_7:
    sub_1000074E0(p_aBlock);
    v13 = objc_opt_self();
    sub_1002BC268();
    v14 = sub_1007A2214();

    CGSizeScaleToScreen();
    v16 = v15;
    v18 = v17;
    v19 = swift_allocObject();
    v19[2] = v4;
    v25[3] = sub_1002C7200;
    v26 = v19;
    aBlock = _NSConcreteStackBlock;
    v25[0] = 1107296256;
    v25[1] = sub_100201C54;
    v25[2] = &unk_100A13680;
    v20 = _Block_copy(&aBlock);
    v21 = v4;

    [v13 fetchImageForAssetID:v14 size:0 includeSpine:0 includeShadow:0 coverEffectsEnvironment:v20 completion:{v16, v18}];
    _Block_release(v20);

    return v4;
  }

  if (v27 != 1)
  {

    p_aBlock = v25;
    goto LABEL_7;
  }

  v5 = aBlock;
  sub_100799444();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1007A2744();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v0;
    v9[5] = v7;
    v9[6] = v4;
    v10 = v4;
    v11 = v0;
    sub_1003457A0(0, 0, v3, &unk_100817FE0, v9);
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1002BD598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100797214();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002BD65C, 0, 0);
}

uint64_t sub_1002BD65C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider);
  v5 = v4[3];
  v6 = v4[4];
  sub_10000E3E8(v4, v5);
  (*(v2 + 104))(v1, enum case for MenuCoverImageSource.coverCache(_:), v3);
  v7 = kAEAssetActivityItemProviderDefaultCoverSize[0];
  v8 = kAEAssetActivityItemProviderDefaultCoverSize[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1002BD780;
  v10 = v0[7];
  v11 = v0[3];
  v12.n128_u64[0] = v7;
  v13.n128_u64[0] = v8;

  return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v11, v10, 1, v5, v6, v12, v13);
}

uint64_t sub_1002BD780(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002BD8E0, 0, 0);
}

uint64_t sub_1002BD8E0()
{
  v1 = *(v0 + 72);
  [*(v0 + 32) set:v1 error:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002BD964(void *a1, void *a2)
{
  v4 = sub_1007A1C54();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007A1CA4();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v10 = sub_1007A2D74();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1002C7208;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A136D0;
  v12 = _Block_copy(aBlock);
  v13 = a2;
  v14 = a1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002C7210(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v12);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

void sub_1002BDC60(void *a1, id a2)
{
  v3 = [a2 CGImage];
  v4 = [objc_allocWithZone(UIImage) initWithCGImage:v3];

  [a1 set:v4 error:0];
}

uint64_t sub_1002BDCF8()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v24);
  if (v26)
  {
    v15 = v24;
    if (v26 != 1)
    {
      sub_1000074E0(v25);
    }

    sub_100799444();
    v16 = swift_dynamicCastClass();
    if (v16 && (v17 = [v16 editionKind]) != 0)
    {
      v18 = v17;
      v21 = sub_1007A2254();
    }

    else
    {

      sub_1002BC330();
      sub_1007972D4();
      sub_1007A2154();
      sub_100796C94();
      (*(v9 + 16))(v11, v14, v8);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v2 + 16))(v4, v7, v1);
      v21 = sub_1007A22D4();
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {

    sub_1002BC330();
    sub_1007972D4();
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    v20 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:v20];
    (*(v2 + 16))(v4, v7, v1);
    v21 = sub_1007A22D4();
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v14, v8);
    sub_1000074E0(&v24);
  }

  return v21;
}

uint64_t sub_1002BE294()
{
  v1 = sub_100798E34();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADA248);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-1] - v6;
  v8 = sub_100798E54();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v16);
  if (v18)
  {
    if (v18 == 1)
    {
      sub_1002C63D8(&v16);
      return 0;
    }

    v12 = v17;
  }

  else
  {

    v12 = &v16;
  }

  sub_1000077C0(v12, v19);
  sub_1000077C0(v19, &v16);
  sub_1001F1160(&qword_100ADA250);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    sub_100798E44();
    (*(v9 + 8))(v11, v8);
    if ((*(v2 + 88))(v4, v1) == enum case for LibraryBookInfo.BookType.epub(_:))
    {
      (*(v2 + 96))(v4, v1);
      return *v4;
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_100007840(v7, &qword_100ADA248);
  }

  return 0;
}

void *sub_1002BE5B0()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &aBlock);
  if (!v15)
  {

    sub_1000074E0(&aBlock);
    return _swiftEmptyArrayStorage;
  }

  v1 = aBlock;
  if (v15 != 1)
  {
    sub_1000074E0(v13);
  }

  sub_100799444();
  if (!swift_dynamicCastClass() || (v2 = sub_1007993B4()) == 0)
  {

    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  v11 = _swiftEmptyArrayStorage;
  v4 = [objc_opt_self() defaultManager];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = &v11;
  v6 = swift_allocObject();
  v6[2] = sub_1002C70B0;
  v6[3] = v5;
  v13[3] = sub_1002C70B8;
  v14 = v6;
  aBlock = _NSConcreteStackBlock;
  v13[0] = 1107296256;
  v13[1] = sub_1004091A8;
  v13[2] = &unk_100A13608;
  v7 = _Block_copy(&aBlock);

  [v4 performBlockInUIContext:v7];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v11;

    return v10;
  }

  return result;
}

uint64_t sub_1002BE7C8(void *a1, unint64_t isUniquelyReferenced_nonNull_native, unint64_t a3)
{
  v66 = sub_1007974F4();
  v6 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_45;
  }

  v8 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = a3;
  v59 = isUniquelyReferenced_nonNull_native;
  if (v8)
  {
    *&v68 = _swiftEmptyArrayStorage;
    sub_1003BD0CC(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
LABEL_49:
      sub_1001F1160(&qword_100AD4F30);
      result = sub_1007A3B24();
      __break(1u);
      return result;
    }

    v63 = a1;
    v64 = v6;
    v9 = v68;
    if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        sub_1007A3784();
        *&v71[0] = sub_100799574();
        *(&v71[0] + 1) = v11;
        v12 = sub_1007A24A4();
        v14 = v13;
        swift_unknownObjectRelease();
        *&v68 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        isUniquelyReferenced_nonNull_native = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          sub_1003BD0CC((v15 > 1), v16 + 1, 1);
          v9 = v68;
        }

        ++v10;
        *(v9 + 16) = isUniquelyReferenced_nonNull_native;
        v17 = v9 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v8 != v10);
    }

    else
    {
      v18 = (isUniquelyReferenced_nonNull_native + 32);
      do
      {
        v19 = *v18;
        *&v71[0] = sub_100799574();
        *(&v71[0] + 1) = v20;
        v21 = sub_1007A24A4();
        v23 = v22;

        *&v68 = v9;
        v25 = *(v9 + 16);
        v24 = *(v9 + 24);
        isUniquelyReferenced_nonNull_native = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_1003BD0CC((v24 > 1), v25 + 1, 1);
          v9 = v68;
        }

        *(v9 + 16) = isUniquelyReferenced_nonNull_native;
        v26 = v9 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        ++v18;
        --v8;
      }

      while (v8);
    }

    a1 = v63;
    v6 = v64;
  }

  v27 = [objc_opt_self() defaultManager];
  isa = sub_1007A25D4().super.isa;

  a3 = [v27 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_10000A7C4(0, &qword_100ADA990);
  v29 = sub_1007A25E4();

  v30 = sub_100580C48(_swiftEmptyDictionarySingleton);
  if (v29 >> 62)
  {
    v31 = sub_1007A38D4();
    if (v31)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_19:
      v32 = 0;
      v63 = v29 & 0xFFFFFFFFFFFFFF8;
      v64 = v29 & 0xC000000000000001;
      v61 = v29;
      v62 = (v6 + 8);
      v60 = v31;
      do
      {
        if (v64)
        {
          v33 = sub_1007A3784();
        }

        else
        {
          if (v32 >= *(v63 + 16))
          {
            goto LABEL_42;
          }

          v33 = *(v29 + 8 * v32 + 32);
        }

        a1 = v33;
        v6 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v8 = sub_1007A38D4();
          goto LABEL_3;
        }

        v34 = [v33 assetID];
        if (v34)
        {
          v35 = v34;
          v36 = sub_1007A2254();
          v38 = v37;
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        *&v71[0] = _swiftEmptyArrayStorage;
        sub_1002C7210(&qword_100ADA290, &type metadata accessor for ContentInfoBuildOptions);
        sub_1001F1160(&unk_100AF1C30);
        sub_100005920(&qword_100ADA298, &unk_100AF1C30);
        v40 = v65;
        v39 = v66;
        sub_1007A3594();
        BKLibraryAsset.contentInfo(options:)(v40, v71);
        (*v62)(v40, v39);
        v68 = v71[0];
        v69 = v71[1];
        v70 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v30;
        a3 = sub_1002EC958(v36, v38);
        v42 = v30[2];
        v43 = (v41 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_43;
        }

        v45 = v41;
        if (v30[3] >= v44)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v41)
            {
              goto LABEL_20;
            }
          }

          else
          {
            sub_1002F1044();
            if (v45)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          sub_1003D4444(v44, isUniquelyReferenced_nonNull_native);
          v46 = sub_1002EC958(v36, v38);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_49;
          }

          a3 = v46;
          if (v45)
          {
LABEL_20:

            v30 = v67;
            sub_1002C70C8(&v68, v67[7] + 40 * a3);

            goto LABEL_21;
          }
        }

        v30 = v67;
        v67[(a3 >> 6) + 8] |= 1 << a3;
        v48 = (v30[6] + 16 * a3);
        *v48 = v36;
        v48[1] = v38;
        v49 = v30[7] + 40 * a3;
        v50 = v70;
        v51 = v69;
        *v49 = v68;
        *(v49 + 16) = v51;
        *(v49 + 32) = v50;

        v52 = v30[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_44;
        }

        v30[2] = v54;
LABEL_21:
        ++v32;
        v29 = v61;
      }

      while (v6 != v60);
    }
  }

  *&v71[0] = v30;
  v55 = sub_1002BB8C4(v59, v71);
  *v58 = v55;
}

uint64_t sub_1002BEE3C()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v14);
  if (v16)
  {
    v1 = *&v14[0];
    if (v16 != 1)
    {
      sub_1000074E0(v14 + 8);
    }

    sub_100799444();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = [v4 genreName];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1007A2254();

        return v7;
      }
    }

    return 0;
  }

  sub_1000077C0(v14, v13);
  sub_100009864(v13, v11);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (!swift_dynamicCast())
  {
    sub_1000074E0(v13);
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_100007840(v9, &qword_100AE0AF0);
    return 0;
  }

  sub_1000077C0(v9, v12);
  sub_10000E3E8(v12, v12[3]);
  v2 = sub_100799164();
  if (!v2)
  {
    goto LABEL_16;
  }

  if (!*(v2 + 16))
  {

LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  v3 = *(v2 + 32);

LABEL_17:
  sub_1000074E0(v13);
  sub_1000074E0(v12);
  return v3;
}

uint64_t sub_1002BF024()
{
  v1 = sub_1001F1160(&qword_100ADA258);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = sub_100799224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v19);
  if (v21)
  {
    v8 = *&v19[0];
    if (v21 != 1)
    {
      sub_1000074E0(v19 + 8);
    }

    sub_100799444();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = [v14 hasSupplementalContent];

      return v15;
    }

    return 2;
  }

  sub_1000077C0(v19, v18);
  sub_100009864(v18, v17);
  sub_1001F1160(&qword_100ADA250);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v10(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
    v11 = sub_100799204();
    if (v11)
    {
      v17[0] = v11;
      sub_1001F1160(&qword_100ADA280);
      sub_100005920(&qword_100ADA288, &qword_100ADA280);
      v12 = sub_1007A28A4();
      (*(v5 + 8))(v7, v4);
      sub_1000074E0(v18);

      return v12 & 1;
    }

    (*(v5 + 8))(v7, v4);
    sub_1000074E0(v18);
    return 2;
  }

  v10(v3, 1, 1, v4);
  sub_1000074E0(v18);
  sub_100007840(v3, &qword_100ADA258);
  return 0;
}

uint64_t sub_1002BF338()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (!v11)
  {

    v4 = &v9;
    goto LABEL_9;
  }

  if (v11 != 1)
  {

    v4 = v10;
LABEL_9:
    sub_1000077C0(v4, v12);
    sub_1000077C0(v12, v8);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v6, &v9);
      sub_10000E3E8(&v9, v10[2]);
      v3 = sub_100799014();
      sub_1000074E0(&v9);
    }

    else
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_100007840(v6, &qword_100AE0AF0);
      v3 = 0;
    }

    return v3 & 1;
  }

  v1 = v9;
  sub_100799444();
  v2 = swift_dynamicCastClass();
  if (v2 || (sub_1007994D4(), (v2 = swift_dynamicCastClass()) != 0))
  {
    v3 = [v2 isExplicit];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1002BF4BC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_1002C63D8(&v9);
      return 2;
    }

    v2 = v10;
  }

  else
  {

    v2 = &v9;
  }

  sub_1000077C0(v2, v12);
  sub_1002BC330();
  if (sub_1007972D4() & 1) != 0 || (sub_1002BC330(), (sub_1007972D4()))
  {
    v1 = 0;
  }

  else
  {
    sub_10000E3E8(v12, v12[3]);
    v4 = sub_100799174();
    if (v4)
    {
      v5 = v4;
      v9 = sub_1007A2254();
      v10[0] = v6;
      __chkstk_darwin(v9);
      v8[2] = &v9;
      v7 = sub_100580218(sub_1002C7058, v8, v5);

      v1 = v7 & 1;
    }

    else
    {
      v1 = 2;
    }
  }

  sub_1000074E0(v12);
  return v1;
}

uint64_t sub_1002BF628()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1002C63D8(&v7);
      return 0;
    }

    v2 = v8;
  }

  else
  {

    v2 = &v7;
  }

  sub_1000077C0(v2, v10);
  sub_1000077C0(v10, v6);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v4, &v7);
    sub_10000E3E8(&v7, v8[2]);
    v3 = sub_1007990B4() & 1;
    sub_1000074E0(&v7);
    return v3;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_100007840(v4, &qword_100AE0AF0);
    return 2;
  }
}

uint64_t sub_1002BF784(uint64_t (*a1)(uint64_t, uint64_t))
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v11);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1002C63D8(&v11);
      return 2;
    }

    v3 = &v12;
  }

  else
  {

    v3 = &v11;
  }

  sub_1000077C0(v3, v17);
  sub_1000077C0(v17, v10);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v8, &v11);
    v4 = v13;
    v5 = v14;
    sub_10000E3E8(&v11, v13);
    v6 = a1(v4, v5) & 1;
    sub_1000074E0(&v11);
    return v6;
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_100007840(v8, &qword_100AE0AF0);
  return 2;
}

uint64_t sub_1002BF8CC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v8);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_1002C63D8(&v8);
      return 2;
    }

    v1 = &v9;
  }

  else
  {

    v1 = &v8;
  }

  sub_1000077C0(v1, v13);
  sub_1000077C0(v13, v7);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (!swift_dynamicCast())
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_100007840(v5, &qword_100AE0AF0);
    return 2;
  }

  sub_1000077C0(v5, &v8);
  sub_10000E3E8(&v8, v10);
  if (sub_100799034())
  {
    v2 = 1;
  }

  else
  {
    sub_10000E3E8(&v8, v10);
    v2 = sub_100799064();
  }

  v4 = v2 & 1;
  sub_1000074E0(&v8);
  return v4;
}

uint64_t sub_1002BFA38(uint64_t (*a1)(uint64_t, uint64_t))
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v11);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1002C63D8(&v11);
LABEL_9:
      v6 = 0;
      return v6 & 1;
    }

    v3 = &v12;
  }

  else
  {

    v3 = &v11;
  }

  sub_1000077C0(v3, v17);
  sub_1000077C0(v17, v10);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (!swift_dynamicCast())
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_100007840(v8, &qword_100AE0AF0);
    goto LABEL_9;
  }

  sub_1000077C0(v8, &v11);
  v4 = v13;
  v5 = v14;
  sub_10000E3E8(&v11, v13);
  v6 = a1(v4, v5);
  sub_1000074E0(&v11);
  return v6 & 1;
}

uint64_t sub_1002BFB80()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v6);
  if (v8)
  {
    v1 = *&v6[0];
    if (v8 != 1)
    {
      sub_1000074E0(v6 + 8);
    }

    sub_1007994D4();
    v2 = swift_dynamicCastClass() != 0;
  }

  else
  {

    sub_1000077C0(v6, v5);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100ADA278);
    if (swift_dynamicCast())
    {
      sub_1000074E0(v4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1002BFC78()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v17);
  if (v19)
  {
    if (v19 == 1)
    {
      v5 = v17;
      sub_100799444();
      if (swift_dynamicCastClass())
      {
        sub_100799404();
        if (v6)
        {
          sub_100796C94();
          v7.super.isa = sub_100796C64().super.isa;
          (*(v2 + 8))(v4, v1);
          v8 = sub_1007A2214();

          v9 = [(objc_class *)v7.super.isa displayNameForKey:NSLocaleLanguageCode value:v8];

          if (v9)
          {
            v10 = sub_1007A2254();

            return v10;
          }
        }
      }

      return 0;
    }

    v12 = v18;
  }

  else
  {

    v12 = &v17;
  }

  sub_1000077C0(v12, v20);
  sub_1000077C0(v20, v16);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v14, &v17);
    sub_10000E3E8(&v17, v18[2]);
    v13 = sub_1007990D4();
    sub_1000074E0(&v17);
    return v13;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_100007840(v14, &qword_100AE0AF0);
  return 0;
}

uint64_t sub_1002BFF20()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    v1 = v7;
    if (v9 != 1)
    {
      sub_1000074E0(v8);
    }

    sub_100799444();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = [v2 offer];
      if (v3)
      {
        v4 = v3;
        v5 = sub_1007A2044();

        return v5;
      }
    }
  }

  else
  {

    sub_1000074E0(&v7);
  }

  return 0;
}

void sub_1002C000C(uint64_t a1@<X8>)
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v6);
  if (v8)
  {
    v3 = v6;
    if (v8 != 1)
    {
      sub_1000074E0(v7);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      sub_100799434();
    }

    else
    {

      v5 = sub_100799424();
      (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
    }
  }

  else
  {

    v4 = sub_100799424();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
    sub_1000074E0(&v6);
  }
}

uint64_t sub_1002C013C()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1002C63D8(&v7);
      return 0;
    }

    v1 = v8;
  }

  else
  {

    v1 = &v7;
  }

  sub_1000077C0(v1, v10);
  sub_1000077C0(v10, v6);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v4, &v7);
    sub_10000E3E8(&v7, v8[2]);
    v2 = sub_1007990C4();
    sub_1000074E0(&v7);
    return v2;
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_100007840(v4, &qword_100AE0AF0);
  return 0;
}

uint64_t sub_1002C0288@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = sub_100796D84();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100796DA4();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v46);
  if (v48)
  {
    v20 = *&v46[0];
    if (v48 != 1)
    {
      sub_1000074E0(v46 + 8);
    }

    sub_100799444();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = [v21 releaseDate];
      if (v22)
      {
        v23 = v22;
        sub_100796B64();

        (*(v11 + 32))(v16, v13, v10);
        v24 = v6;
        sub_100796D64();
        v25 = v37;
        (*(v2 + 104))(v4, enum case for Calendar.Component.year(_:), v37);
        v26 = sub_100796D94();
        (*(v2 + 8))(v4, v25);
        (*(v38 + 8))(v24, v39);
        *&v46[0] = v26;
        sub_1007A3A74();
        (*(v11 + 8))(v16, v10);
      }

      sub_100799374();
      v29 = v40;
      sub_1007977C4();

      v30 = sub_1007977D4();
      return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    }

    else
    {

      v27 = sub_1007977D4();
      return (*(*(v27 - 8) + 56))(v40, 1, 1, v27);
    }
  }

  else
  {

    sub_1000077C0(v46, v45);
    sub_100009864(v45, v43);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v41, v44);
      sub_10000E3E8(v44, v44[3]);
      sub_100799044();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_100007840(v9, &unk_100ADB5C0);
      }

      else
      {
        (*(v11 + 32))(v19, v9, v10);
        sub_100796D64();
        v31 = v2;
        v32 = *(v2 + 104);
        v33 = v37;
        v32(v4, enum case for Calendar.Component.year(_:), v37);
        v34 = sub_100796D94();
        (*(v31 + 8))(v4, v33);
        (*(v38 + 8))(v6, v39);
        v43[0] = v34;
        sub_1007A3A74();
        (*(v11 + 8))(v19, v10);
      }

      sub_1000074E0(v44);
    }

    else
    {
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      sub_100007840(v41, &qword_100AE0AF0);
    }

    v35 = v40;
    sub_1007977C4();
    sub_1000074E0(v45);
    v36 = sub_1007977D4();
    return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  }
}

uint64_t sub_1002C0964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v43[-v7 - 8];
  __chkstk_darwin(v9);
  v11 = &v43[-v10 - 8];
  __chkstk_darwin(v12);
  v14 = &v43[-v13 - 8];
  v15 = sub_100799224();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1002BC330();
  v19 = sub_1007972D4();
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v45);
  if (!v47)
  {
    v21 = v46;
    sub_1000077C0(v45, v44);
    sub_100009864(v44, v43);
    sub_1001F1160(&qword_100ADA250);
    if (swift_dynamicCast())
    {
      (*(v16 + 8))(v18, v15);
      if (v21)
      {
        v22 = [v21 audiobookSampleURL];
        if (v22)
        {
          v23 = v22;
          sub_100796974();

          v24 = 0;
          v21 = v23;
        }

        else
        {
          v24 = 1;
        }

        sub_1000074E0(v44);
        v40 = sub_1007969B4();
        (*(*(v40 - 8) + 56))(v14, v24, 1, v40);
        v38 = v14;
        return sub_100008EF8(v38, a1);
      }
    }

    else if (v21)
    {
      v32 = [v21 bookSampleDownloadURL];
      if (v32)
      {
        v33 = v32;
        sub_100796974();

        v34 = 0;
        v21 = v33;
      }

      else
      {
        v34 = 1;
      }

      sub_1000074E0(v44);
      v41 = sub_1007969B4();
      (*(*(v41 - 8) + 56))(v11, v34, 1, v41);
      v38 = v11;
      return sub_100008EF8(v38, a1);
    }

    sub_1000074E0(v44);
LABEL_20:
    v35 = sub_1007969B4();
    return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
  }

  v20 = *&v45[0];
  if (v47 != 1)
  {
    sub_1000074E0(v45 + 8);
  }

  sub_100799444();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    goto LABEL_20;
  }

  if (v19)
  {
    v26 = [v25 previewURL];
    if (v26)
    {
      v27 = v26;
      sub_100796974();

      v28 = 0;
      v20 = v27;
    }

    else
    {
      v28 = 1;
    }

    v37 = sub_1007969B4();
    (*(*(v37 - 8) + 56))(v8, v28, 1, v37);
    v38 = v8;
  }

  else
  {
    v29 = [v25 bookSampleDownloadURL];
    if (v29)
    {
      v30 = v29;
      sub_100796974();

      v31 = 0;
      v20 = v30;
    }

    else
    {
      v31 = 1;
    }

    v39 = sub_1007969B4();
    (*(*(v39 - 8) + 56))(v5, v31, 1, v39);
    v38 = v5;
  }

  return sub_100008EF8(v38, a1);
}

uint64_t sub_1002C0E28()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (v11)
  {
    v1 = v9;
    if (v11 != 1)
    {
      sub_1000074E0(v10);
    }

    sub_100799444();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = [v5 seriesName];
      if (v6)
      {
        v7 = v6;
        v4 = sub_1007A2254();

LABEL_11:
        return v4;
      }
    }

    else
    {
      sub_1007994D4();
      if (swift_dynamicCastClass())
      {
        v4 = sub_1007994A4();
        goto LABEL_11;
      }
    }

    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 32);
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider), *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 24));
  v3 = sub_1002BC268();
  v4 = (*(v2 + 40))(v3);

  sub_1000074E0(&v9);
  return v4;
}

uint64_t sub_1002C0F88()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  if (*(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride + 8))
  {
    v8 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride);
  }

  else
  {
    sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v12);
    if (v14)
    {
      v9 = *&v12[0];
      if (v14 != 1)
      {
        sub_1000074E0(v12 + 8);
      }

      sub_100799444();
      if (swift_dynamicCastClass())
      {
        sub_1007993C4();
      }

      else
      {
        sub_1007994D4();
        if (!swift_dynamicCastClass())
        {

          v8 = 0;
          goto LABEL_17;
        }

        sub_100799494();
      }

      v8 = sub_100796914();

      (*(v2 + 8))(v4, v1);
    }

    else
    {

      sub_1000077C0(v12, v11);
      sub_10000E3E8(v11, v11[3]);
      sub_100799194();
      if ((*(v2 + 48))(v7, 1, v1) == 1)
      {
        sub_100007840(v7, &unk_100AD5AC0);
        v8 = 0;
      }

      else
      {
        v8 = sub_100796914();
        (*(v2 + 8))(v7, v1);
      }

      sub_1000074E0(v11);
    }
  }

LABEL_17:

  return v8;
}

uint64_t sub_1002C1230()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007992A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100799224();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1002C0F88();
  if (!v14)
  {
    sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v41);
    if (v43)
    {
      v15 = *&v41[0];
      if (v43 != 1)
      {
        sub_1000074E0(v41 + 8);
      }

      sub_100799444();
      if (swift_dynamicCastClass())
      {
        sub_1007993C4();
LABEL_18:
        v31 = sub_100796914();

        (*(v2 + 8))(v4, v1);
        return v31;
      }

      sub_1007994D4();
      if (swift_dynamicCastClass())
      {
        sub_100799494();
        goto LABEL_18;
      }

      return 0;
    }

    v36 = v10;

    sub_1000077C0(v41, v40);
    if (qword_100AD13B8 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100ADA1B0);
    v17 = v0;
    v18 = sub_10079ACC4();
    v19 = sub_1007A29B4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v6;
      v22 = v21;
      v38 = v21;
      *v20 = 136315138;
      v23 = sub_1002BC268();
      v25 = sub_1000070F4(v23, v24, &v38);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to locate cached share URL for %s. Attempting fallback url.", v20, 0xCu);
      sub_1000074E0(v22);
      v6 = v35;
    }

    sub_10000E3E8(v40, v40[3]);
    v27 = sub_1007991B4();
    v28 = v36;
    if (!v26)
    {
      sub_1000074E0(v40);
      return v27;
    }

    v29 = v26;
    sub_100009864(v40, &v38);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if (swift_dynamicCast())
    {
      sub_1000074E0(v37);
      sub_100009864(v40, &v38);
      if (swift_dynamicCast())
      {
        (*(v28 + 8))(v12, v9);
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1007A3744(38);

        v30 = 0x80000001008C9000;
        v38 = 0xD000000000000024;
LABEL_29:
        v39 = v30;
        v44._countAndFlagsBits = v27;
        v44._object = v29;
        sub_1007A23D4(v44);

        v33 = v38;
        sub_1000074E0(v40);
        return v33;
      }

      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1007A3744(33);

      v30 = 0x80000001008C8FE0;
      v32 = 0xD00000000000001FLL;
    }

    else
    {
      sub_100009864(v40, &v38);
      sub_1001F1160(&qword_100ADA278);
      if (!swift_dynamicCast())
      {

        sub_1000074E0(v40);
        return 0;
      }

      sub_1000074E0(v37);
      sub_100009864(v40, &v38);
      if (!swift_dynamicCast())
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1007A3744(38);

        v30 = 0x80000001008C8F80;
        v38 = 0xD000000000000024;
        goto LABEL_29;
      }

      (*(v6 + 8))(v8, v5);
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1007A3744(43);

      v30 = 0x80000001008C8FB0;
      v32 = 0xD000000000000029;
    }

    v38 = v32;
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1002C1880()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v5);
  if (v7)
  {
    v1 = v5;
    if (v7 != 1)
    {
      sub_1000074E0(v6);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v2 = v1;
      v3 = sub_100799564();

      return v3;
    }
  }

  else
  {

    sub_1000074E0(&v5);
  }

  return 0;
}

uint64_t sub_1002C194C()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v10);
  if (v12)
  {
    v1 = *&v10[0];
    if (v12 != 1)
    {
      sub_1000074E0(v10 + 8);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v4 = sub_100799354();

      return v4;
    }
  }

  else
  {

    sub_1000077C0(v10, v9);
    sub_100009864(v9, v7);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v5, v8);
      sub_10000E3E8(v8, v8[3]);
      v2 = sub_100799024();
      sub_1000074E0(v9);
      sub_1000074E0(v8);
      return v2;
    }

    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000074E0(v9);
    sub_100007840(v5, &qword_100AE0AF0);
  }

  return 0;
}

uint64_t sub_1002C1AE0()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v8);
  if (v10)
  {
    v1 = *&v8[0];
    if (v10 != 1)
    {
      sub_1000074E0(v8 + 8);
    }

    v2 = sub_100799574();
    v4 = v5;
  }

  else
  {

    sub_1000077C0(v8, v7);
    sub_10000E3E8(v7, v7[3]);
    v2 = sub_1007991B4();
    v4 = v3;
    sub_1000074E0(v7);
    if (!v4)
    {
      return 0;
    }
  }

  *&v8[0] = v2;
  *(&v8[0] + 1) = v4;
  sub_1002060B4();
  if ((sub_1007A28A4() & 1) == 0)
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1002C1BE0()
{
  v1 = sub_1001F1160(&qword_100ADA258);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = sub_100799224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v16);
  if (v18)
  {
    if (v18 == 1)
    {
      v8 = v16;
      sub_100799444();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        [v9 hasSupplementalContent];
      }

      return 0;
    }

    v11 = v17;
  }

  else
  {

    v11 = &v16;
  }

  sub_1000077C0(v11, v19);
  sub_1000077C0(v19, &v16);
  sub_1001F1160(&qword_100ADA250);
  v12 = swift_dynamicCast();
  v13 = *(v5 + 56);
  if (v12)
  {
    v13(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
    v14 = sub_100799204();
    if (v14)
    {
      v15 = *(v14 + 16);
    }

    else
    {
      v15 = 0;
    }

    (*(v5 + 8))(v7, v4);
    return v15;
  }

  else
  {
    v13(v3, 1, 1, v4);
    sub_100007840(v3, &qword_100ADA258);
    return 0;
  }
}

uint64_t sub_1002C1E70()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v6);
  if (v8)
  {
    v1 = *&v6[0];
    if (v8 != 1)
    {
      sub_1000074E0(v6 + 8);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v3 = sub_1007993D4();
    }

    else
    {
      sub_1007994D4();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      v3 = sub_1007994A4();
    }

    v2 = v3;
  }

  else
  {

    sub_1000077C0(v6, v5);
    sub_10000E3E8(v5, v5[3]);
    v2 = sub_1007991A4();
    sub_1000074E0(v5);
  }

  return v2;
}

uint64_t sub_1002C1F84()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v13);
  if (v15)
  {
    v1 = *&v13[0];
    if (v15 != 1)
    {
      sub_1000074E0(v13 + 8);
    }

    sub_100799444();
    if (swift_dynamicCastClass() && (v4 = sub_1007993A4()) != 0)
    {
      if (*(v4 + 16))
      {
        v5 = *(v4 + 32);

        strcpy(v11, "versionString");
        HIWORD(v11[1]) = -4864;
        sub_1007A36B4();
        if (*(v5 + 16) && (v6 = sub_10000E2A4(v13), (v7 & 1) != 0))
        {
          sub_100007484(*(v5 + 56) + 32 * v6, v12);

          sub_10002899C(v13);

          if (swift_dynamicCast())
          {
            return v11[0];
          }
        }

        else
        {

          sub_10002899C(v13);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {

    sub_1000077C0(v13, v12);
    sub_100009864(v12, v10);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v8, v11);
      sub_10000E3E8(v11, v11[3]);
      if ((sub_100799074() & 0x100000000) == 0)
      {
        v2 = sub_1007A2804();
        sub_1000074E0(v12);
        sub_1000074E0(v11);
        return v2;
      }

      sub_1000074E0(v12);
      sub_1000074E0(v11);
    }

    else
    {
      sub_1000074E0(v12);
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_100007840(v8, &qword_100AE0AF0);
    }
  }

  return 0;
}

uint64_t sub_1002C2210(double a1, double a2)
{
  *(v3 + 88) = v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = sub_100797214();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1002C22D4, 0, 0);
}

uint64_t sub_1002C22D4()
{
  v1 = v0 + 16;
  sub_1002C63A0(*(v0 + 88) + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v0 + 16);
  if (!*(v0 + 64))
  {

LABEL_9:
    sub_1000074E0(v1);
    v15 = objc_opt_self();
    sub_1002BC268();
    v16 = sub_1007A2214();

    CGSizeScaleToScreen();
    v2 = [v15 fetchImageForAssetID:v16 size:0 includeSpine:0 coverEffectsEnvironment:?];

    v17 = [v2 CGImage];
    v3 = [objc_allocWithZone(UIImage) initWithCGImage:v17];

    goto LABEL_10;
  }

  if (*(v0 + 64) != 1)
  {

    v1 = v0 + 24;
    goto LABEL_9;
  }

  v2 = *(v0 + 16);
  *(v0 + 120) = v2;
  sub_100799444();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = (*(v0 + 88) + OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider);
    v8 = v7[3];
    v9 = v7[4];
    sub_10000E3E8(v7, v8);
    (*(v5 + 104))(v4, enum case for MenuCoverImageSource.network(_:), v6);
    v10 = v2;
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_1002C2558;
    v12 = *(v0 + 112);
    v13.n128_u64[0] = *(v0 + 72);
    v14.n128_u64[0] = *(v0 + 80);

    return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v3, v12, 0, v8, v9, v13, v14);
  }

LABEL_10:

  v18 = *(v0 + 8);

  return v18(v3);
}

uint64_t sub_1002C2558(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 136) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002C26B8, 0, 0);
}

uint64_t sub_1002C26B8()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[1];

  return v3(v2);
}

id sub_1002C272C()
{
  v1 = v0;
  v2 = sub_1007969B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100798F44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v95 - v11;
  v13 = sub_1002C1AE0();
  if (!v14)
  {
    return 0;
  }

  v98 = v6;
  *&v99 = v13;
  *(&v99 + 1) = v14;
  v100 = &type metadata for String;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103 = _swiftEmptyDictionarySingleton;
  sub_1002F4E24(&v99, 0x444965726F7473, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v104 = v103;
  sub_1002C0964(v12);
  v16 = (*(v3 + 48))(v12, 1, v2);
  v96 = v5;
  v97 = v3;
  if (v16 == 1)
  {
    sub_100007840(v12, &unk_100AD5AC0);
    sub_1002EEC98(0xD000000000000011, 0x80000001008C8F40, &v99);
    sub_100007840(&v99, &unk_100AE6F50);
  }

  else
  {
    v18 = sub_100796914();
    v20 = v19;
    (*(v3 + 8))(v12, v2);
    *&v99 = v18;
    *(&v99 + 1) = v20;
    v100 = &type metadata for String;
    v21 = v104;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v21;
    sub_1002F4E24(&v99, 0xD000000000000011, 0x80000001008C8F40, v22);
    v104 = v103;
  }

  v23 = sub_1002C1E70();
  v25 = v98;
  if (v24)
  {
    *&v99 = v23;
    *(&v99 + 1) = v24;
    v100 = &type metadata for String;
    v26 = v104;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v26;
    sub_1002F4E24(&v99, 0x656C746974, 0xE500000000000000, v27);
    v104 = v103;
  }

  else
  {
    sub_1002EEC98(0x656C746974, 0xE500000000000000, &v99);
    sub_100007840(&v99, &unk_100AE6F50);
  }

  v28 = sub_1002BCA68();
  if (v29)
  {
    *&v99 = v28;
    *(&v99 + 1) = v29;
    v100 = &type metadata for String;
    v30 = v104;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v30;
    sub_1002F4E24(&v99, 0x726F68747561, 0xE600000000000000, v31);
    v104 = v103;
  }

  else
  {
    sub_1002EEC98(0x726F68747561, 0xE600000000000000, &v99);
    sub_100007840(&v99, &unk_100AE6F50);
  }

  v32 = sub_1002BCBFC();
  if (v33)
  {
    sub_1002EEC98(0x5265676172657661, 0xED0000676E697461, &v99);
    sub_100007840(&v99, &unk_100AE6F50);
  }

  else
  {
    *&v99 = v32;
    v100 = &type metadata for Double;
    v34 = v104;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v34;
    sub_1002F4E24(&v99, 0x5265676172657661, 0xED0000676E697461, v35);
    v104 = v103;
  }

  sub_1002BC330();
  v36 = sub_1007972D4();
  v37 = &enum case for MResourceType.audiobooks(_:);
  if ((v36 & 1) == 0)
  {
    v37 = &enum case for MResourceType.books(_:);
  }

  (*(v7 + 104))(v9, *v37, v25);
  v38 = sub_100798F34();
  v40 = v39;
  (*(v7 + 8))(v9, v25);
  *&v99 = v38;
  *(&v99 + 1) = v40;
  v100 = &type metadata for String;
  v41 = v104;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v103 = v41;
  sub_1002F4E24(&v99, 1684957547, 0xE400000000000000, v42);
  v43 = v103;
  sub_1002BC330();
  LOBYTE(v99) = sub_1007972D4() & 1;
  v100 = &type metadata for Bool;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v103 = v43;
  sub_1002F4E24(&v99, 0x626F696475417369, 0xEB000000006B6F6FLL, v44);
  v45 = v103;
  v104 = v103;
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v99);
  if (v102)
  {
    v46 = v99;
    if (v102 != 1)
    {
      sub_1000074E0(&v99 + 8);
    }

    sub_100799444();
    v47 = swift_dynamicCastClass();
    if (!v47)
    {

      return 0;
    }

    v48 = v47;
    *&v99 = [v47 ratingCount];
    v100 = &type metadata for UInt;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v45;
    sub_1002F4E24(&v99, 0x6F43676E69746172, 0xEB00000000746E75, v49);
    v50 = v103;
    v104 = v103;
    v51 = sub_100799334();
    if (v52)
    {
      *&v99 = v51;
      *(&v99 + 1) = v52;
      v100 = &type metadata for String;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v50;
      sub_1002F4E24(&v99, 0x74536E6F69746361, 0xEC000000676E6972, v53);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0x74536E6F69746361, 0xEC000000676E6972, &v99);
      sub_100007840(&v99, &unk_100AE6F50);
    }

    v54 = [v48 priceFormatted];
    if (v54)
    {
      v55 = v54;
      v56 = sub_1007A2254();
      v58 = v57;

      *&v99 = v56;
      *(&v99 + 1) = v58;
      v100 = &type metadata for String;
      v59 = v104;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v59;
      sub_1002F4E24(&v99, 0x7274536563697270, 0xEB00000000676E69, v60);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0x7274536563697270, 0xEB00000000676E69, &v99);
      sub_100007840(&v99, &unk_100AE6F50);
    }

    v61 = v96;
    sub_1007993C4();
    v62 = sub_100796914();
    v64 = v63;
    (*(v97 + 8))(v61, v2);
    *&v99 = v62;
    *(&v99 + 1) = v64;
    v100 = &type metadata for String;
    v65 = v104;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v65;
    sub_1002F4E24(&v99, 0x55746375646F7270, 0xEA00000000004C52, v66);
    v67 = v103;
    v104 = v103;
    v68 = [v48 artworkURL];
    if (v68)
    {
      v69 = v68;
      v70 = sub_1007A2254();
      v72 = v71;

      *&v99 = v70;
      *(&v99 + 1) = v72;
      v100 = &type metadata for String;
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v67;
      sub_1002F4E24(&v99, 0xD000000000000012, 0x80000001008C8F60, v73);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0xD000000000000012, 0x80000001008C8F60, &v99);
      sub_100007840(&v99, &unk_100AE6F50);
    }

    v74 = [v48 buyParams];
    if (v74)
    {
      v75 = v74;
      v76 = sub_1007A2254();
      v78 = v77;

      *&v99 = v76;
      *(&v99 + 1) = v78;
      v100 = &type metadata for String;
      v79 = v104;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v79;
      sub_1002F4E24(&v99, 0x6D61726150797562, 0xED00007372657465, v80);
      v104 = v103;
    }

    else
    {
      sub_1002EEC98(0x6D61726150797562, 0xED00007372657465, &v99);
      sub_100007840(&v99, &unk_100AE6F50);
    }

    v81 = COERCE_DOUBLE(sub_1007993E4());
    if (v82)
    {
      v83 = 0.0;
    }

    else
    {
      v83 = v81;
    }

    v84 = sub_1007993F4();
    if (v83 <= 0.0)
    {
      v87 = &type metadata for Double;
      v88 = 1.5;
    }

    else
    {
      v86 = *&v84;
      if (v85)
      {
        v86 = 0.0;
      }

      v87 = &type metadata for CGFloat;
      v88 = v86 / v83;
    }

    *&v99 = v88;
    v100 = v87;
    v89 = v104;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v89;
    sub_1002F4E24(&v99, 0x416B726F77747261, 0xED00007463657073, v90);

    v45 = v103;
  }

  else
  {

    sub_1000074E0(&v99);
  }

  v91 = sub_1002C3200(v45);

  sub_10058096C(v91);

  v92 = objc_allocWithZone(BSUIItemDescription);
  isa = sub_1007A2024().super.isa;

  v94 = [v92 initWithDictionary:isa];

  return v94;
}

uint64_t sub_1002C3200(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v39 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1000077D8(*(a1 + 56) + 32 * v11, v37, &unk_100AD5B40);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_1000077D8(&v34, &v27, &unk_100AD5B40);
    if (!v28)
    {

      sub_100007840(&v33, &qword_100ADA270);
      result = sub_100007840(&v27, &unk_100AD5B40);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_1000076D4(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_1000076D4(v32, v29);
    v1 = v39;
    v15 = v39[2];
    if (v39[3] <= v15)
    {

      sub_1003D4168(v15 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v16 = v30;
    sub_1007A3C04();
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
    v17 = v1 + 8;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v1[(v19 >> 6) + 8]) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~v1[(v19 >> 6) + 8])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v1[6] + 16 * v21) = v16;
    sub_1000076D4(v29, (v1[7] + 32 * v21));
    ++v1[2];
    result = sub_100007840(v31, &unk_100AD5B40);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = v17[v20];
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1002C3524()
{
  sub_1002BC080(&v4);
  if (v5[2])
  {
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_100007840(&v4, &unk_100AF1C40);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v4);
  if (v6)
  {
    v1 = v4;
    if (v6 != 1)
    {
      sub_1000074E0(v5);
    }

    sub_100799444();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
    }
  }

  else
  {

    sub_1000074E0(&v4);
    v2 = 0;
  }

  sub_1007991D4();

  return sub_100007840(&v7, &qword_100AE0AF0);
}

uint64_t sub_1002C3680()
{
  v0 = sub_100799254();
  __chkstk_darwin(v0 - 8);
  v2 = &v142 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007969B4();
  v151 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v142 - v7;
  v9 = sub_100798F44();
  v152 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v142 - v16;
  __chkstk_darwin(v18);
  v20 = (&v142 - v19);
  __chkstk_darwin(v21);
  v23 = &v142 - v22;
  sub_1002C63A0(&v153[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource], &v161);
  if (!v164)
  {
    v147 = v20;
    *&v148 = v23;
    v153 = v11;
    v149 = v9;
    v146 = v14;
    v25 = v163;
    if (!v163)
    {
      sub_1000074E0(&v161);
      return 0;
    }

    v142 = v5;
    v144 = v17;
    v143 = v8;
    v150 = v3;
    v145 = v2;
    sub_1001F1160(&qword_100ADA218);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100817C70;
    strcpy(v156, "artistName");
    BYTE3(v156[1]) = 0;
    HIDWORD(v156[1]) = -369098752;
    sub_1007A36B4();
    v27 = [v25 author];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1007A2254();
      v31 = v30;

      v32 = &type metadata for String;
    }

    else
    {
      v29 = 0;
      v31 = 0;
      v32 = 0;
      *(v26 + 88) = 0;
    }

    v34 = v148;
    *(v26 + 72) = v29;
    *(v26 + 80) = v31;
    *(v26 + 96) = v32;
    strcpy(v156, "artwork");
    v156[1] = 0xE700000000000000;
    sub_1007A36B4();
    v35 = sub_1007A2214();
    v36 = [v25 objectForKey:v35];

    if (v36)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v159 = 0u;
      v160 = 0u;
    }

    v37 = v160;
    *(v26 + 144) = v159;
    *(v26 + 160) = v37;
    strcpy(v156, "description");
    HIDWORD(v156[1]) = -352321536;
    sub_1007A36B4();
    v38 = [v25 standardDescription];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1007A2254();
      v42 = v41;

      v43 = &type metadata for String;
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v43 = 0;
      *(v26 + 232) = 0;
    }

    *(v26 + 216) = v40;
    *(v26 + 224) = v42;
    *(v26 + 240) = v43;
    strcpy(v156, "isIBook");
    v156[1] = 0xE700000000000000;
    sub_1007A36B4();
    v44 = [v25 ebookInfo];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1007A2044();

      v154 = 0x6B6F6F42697369;
      v155 = 0xE700000000000000;
      sub_1007A36B4();
      if (*(v46 + 16))
      {
        v47 = sub_10000E2A4(v156);
        if (v48)
        {
          sub_100007484(*(v46 + 56) + 32 * v47, &v157);
          sub_10002899C(v156);

          if (*(&v158 + 1))
          {
            if (swift_dynamicCast())
            {
              v49 = v156[0];
              *(v26 + 312) = &type metadata for Bool;
              *(v26 + 288) = v49;
              goto LABEL_29;
            }

LABEL_28:
            *(v26 + 288) = 0u;
            *(v26 + 304) = 0u;
LABEL_29:
            v156[0] = 1701667182;
            v156[1] = 0xE400000000000000;
            sub_1007A36B4();
            v50 = [v25 title];
            if (v50)
            {
              v51 = v50;
              v52 = sub_1007A2254();
              v54 = v53;

              v55 = &type metadata for String;
            }

            else
            {
              v52 = 0;
              v54 = 0;
              v55 = 0;
              *(v26 + 376) = 0;
            }

            *(v26 + 360) = v52;
            *(v26 + 368) = v54;
            *(v26 + 384) = v55;
            v156[0] = 0x73726566666FLL;
            v156[1] = 0xE600000000000000;
            sub_1007A36B4();
            sub_1001F1160(&qword_100ADA220);
            v56 = swift_allocObject();
            v148 = xmmword_10080B690;
            *(v56 + 16) = xmmword_10080B690;
            v57 = [v25 offer];
            if (v57)
            {
              v58 = v57;
              v59 = sub_1007A2044();
            }

            else
            {
              v59 = 0;
            }

            *(v56 + 32) = v59;
            *(v26 + 456) = sub_1001F1160(&qword_100ADA228);
            *(v26 + 432) = v56;
            strcpy(v156, "pageCount");
            WORD1(v156[1]) = 0;
            HIDWORD(v156[1]) = -385875968;
            sub_1007A36B4();
            v60 = [v25 ebookInfo];
            if (v60)
            {
              v61 = v60;
              v62 = sub_1007A2044();

              v154 = 0x6E756F4365676170;
              v155 = 0xE900000000000074;
              sub_1007A36B4();
              if (*(v62 + 16))
              {
                v63 = sub_10000E2A4(v156);
                if (v64)
                {
                  sub_100007484(*(v62 + 56) + 32 * v63, &v157);
                  sub_10002899C(v156);

                  v65 = v153;
                  if (*(&v158 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v66 = v156[0];
                      *(v26 + 528) = &type metadata for Int;
                      *(v26 + 504) = v66;
                      goto LABEL_45;
                    }

LABEL_44:
                    *(v26 + 504) = 0u;
                    *(v26 + 520) = 0u;
LABEL_45:
                    strcpy(v156, "primaryLocale");
                    HIWORD(v156[1]) = -4864;
                    sub_1007A36B4();
                    v67 = [v25 ebookInfo];
                    if (v67)
                    {
                      v68 = v67;
                      v69 = sub_1007A2044();

                      v154 = 0xD000000000000015;
                      v155 = 0x80000001008C8F20;
                      sub_1007A36B4();
                      if (*(v69 + 16))
                      {
                        v70 = sub_10000E2A4(v156);
                        if (v71)
                        {
                          sub_100007484(*(v69 + 56) + 32 * v70, &v157);
                          sub_10002899C(v156);

                          if (*(&v158 + 1))
                          {
                            if (swift_dynamicCast())
                            {
                              v72 = v156[0];
                              v73 = v156[1];
                              *(v26 + 600) = &type metadata for String;
                              *(v26 + 576) = v72;
                              *(v26 + 584) = v73;
                              goto LABEL_55;
                            }

LABEL_54:
                            *(v26 + 576) = 0u;
                            *(v26 + 592) = 0u;
LABEL_55:
                            strcpy(v156, "releaseDate");
                            HIDWORD(v156[1]) = -352321536;
                            sub_1007A36B4();
                            v74 = sub_1007A2214();
                            v75 = [v25 objectForKey:v74];

                            if (v75)
                            {
                              sub_1007A3504();
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              v157 = 0u;
                              v158 = 0u;
                            }

                            v76 = v158;
                            *(v26 + 648) = v157;
                            *(v26 + 664) = v76;
                            strcpy(v156, "seriesInfo");
                            BYTE3(v156[1]) = 0;
                            HIDWORD(v156[1]) = -369098752;
                            sub_1007A36B4();
                            v77 = [v25 ebookInfo];
                            if (v77)
                            {
                              v78 = v77;
                              v79 = sub_1007A2044();

                              v154 = 0x6E49736569726573;
                              v155 = 0xEA00000000006F66;
                              sub_1007A36B4();
                              if (*(v79 + 16) && (v80 = sub_10000E2A4(v156), (v81 & 1) != 0))
                              {
                                sub_100007484(*(v79 + 56) + 32 * v80, v26 + 720);
                              }

                              else
                              {
                                *(v26 + 720) = 0u;
                                *(v26 + 736) = 0u;
                              }

                              v82 = v151;

                              sub_10002899C(v156);
                            }

                            else
                            {
                              *(v26 + 720) = 0u;
                              *(v26 + 736) = 0u;
                              v82 = v151;
                            }

                            v156[0] = 7107189;
                            v156[1] = 0xE300000000000000;
                            sub_1007A36B4();
                            v83 = [v25 productShortURL];
                            v151 = v25;
                            if (v83)
                            {
                              v84 = v147;
                              v85 = v83;
                              sub_100796974();

                              v86 = 0;
                            }

                            else
                            {
                              v86 = 1;
                              v84 = v147;
                            }

                            v87 = v150;
                            v147 = v82[7];
                            v147(v84, v86, 1, v150);
                            sub_100008EF8(v84, v34);
                            v88 = v82[6];
                            if (v88(v34, 1, v87) == 1)
                            {
                              sub_100007840(v34, &unk_100AD5AC0);
                              v89 = (v26 + 792);
                              *(v26 + 816) = &type metadata for String;
                              v90 = v82;
                              v91 = v149;
                            }

                            else
                            {
                              v92 = sub_100796914();
                              v94 = v93;
                              (v82[1])(v34, v87);
                              v89 = (v26 + 792);
                              *(v26 + 816) = &type metadata for String;
                              if (v94)
                              {
                                *v89 = v92;
                                v90 = v82;
                                v91 = v149;
                                v65 = v153;
                                goto LABEL_74;
                              }

                              v90 = v82;
                              v91 = v149;
                              v65 = v153;
                            }

                            *v89 = 0;
                            v94 = 0xE000000000000000;
LABEL_74:
                            *(v26 + 800) = v94;
                            v95 = sub_1001ED854(v26);
                            swift_setDeallocating();
                            sub_1001F1160(&qword_100AD35B0);
                            swift_arrayDestroy();
                            swift_deallocClassInstance();
                            *&v157 = v95;
                            v96 = v151;
                            v97 = [v151 isAudiobook];
                            v98 = *(v152 + 104);
                            v99 = (v152 + 8);
                            if (v97)
                            {
                              v98(v65, enum case for MResourceType.audiobooks(_:), v91);
                              v100 = sub_100798F34();
                              v101 = v91;
                              v103 = v102;
                              (*v99)(v65, v101);
                              v104 = [v96 audiobookSampleURL];
                              v105 = v96;
                              if (v104)
                              {
                                v106 = v142;
                                v107 = v104;
                                sub_100796974();

                                v108 = v143;
                                v109 = v106;
                                v110 = v150;
                                (v90[4])(v143, v109, v150);
                                *&v159 = 0x7377656976657270;
                                *(&v159 + 1) = 0xE800000000000000;
                                sub_1007A36B4();
                                sub_1001F1160(&qword_100ADA238);
                                v111 = swift_allocObject();
                                *(v111 + 16) = v148;
                                sub_1001F1160(qword_100AEA1F0);
                                v112 = swift_allocObject();
                                *(v112 + 16) = v148;
                                *(v112 + 32) = 7107189;
                                *(v112 + 40) = 0xE300000000000000;
                                *(v112 + 48) = sub_100796914();
                                *(v112 + 56) = v113;
                                v114 = sub_1001ED994(v112);
                                swift_setDeallocating();
                                sub_100007840(v112 + 32, &unk_100AE0920);
                                swift_deallocClassInstance();
                                *(v111 + 32) = v114;
                                v115 = sub_1001F1160(&qword_100AEF320);
                                *&v159 = v111;
                                *(&v160 + 1) = v115;
                                v116 = v157;
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                v154 = v116;
                                sub_1002F4F68(&v159, v156, isUniquelyReferenced_nonNull_native);
                                sub_10002899C(v156);
                                (v90[1])(v108, v110);
                                *&v157 = v154;
                              }
                            }

                            else
                            {
                              v98(v65, enum case for MResourceType.books(_:), v91);
                              v100 = sub_100798F34();
                              v118 = v91;
                              v103 = v119;
                              (*v99)(v65, v118);
                              *&v159 = 0xD000000000000015;
                              *(&v159 + 1) = 0x80000001008C8F00;
                              sub_1007A36B4();
                              v120 = [v96 bookSampleDownloadURL];
                              if (v120)
                              {
                                v121 = v146;
                                v122 = v120;
                                sub_100796974();

                                v123 = 0;
                              }

                              else
                              {
                                v123 = 1;
                                v121 = v146;
                              }

                              v124 = v150;
                              v147(v121, v123, 1, v150);
                              v125 = v121;
                              v126 = v144;
                              sub_100008EF8(v125, v144);
                              if (v88(v126, 1, v124) == 1)
                              {
                                sub_100007840(v126, &unk_100AD5AC0);
                                sub_1002EED40(v156, &v159);
                                sub_100007840(&v159, &unk_100AE6F50);
                                sub_10002899C(v156);
                              }

                              else
                              {
                                v127 = sub_100796914();
                                v129 = v128;
                                (v90[1])(v126, v124);
                                *&v159 = v127;
                                *(&v159 + 1) = v129;
                                *(&v160 + 1) = &type metadata for String;
                                v130 = v157;
                                v131 = swift_isUniquelyReferenced_nonNull_native();
                                v154 = v130;
                                sub_1002F4F68(&v159, v156, v131);
                                sub_10002899C(v156);
                                *&v157 = v154;
                              }

                              v105 = v151;
                            }

                            sub_1001F1160(&unk_100AE0AC0);
                            v132 = swift_allocObject();
                            *(v132 + 16) = xmmword_100815060;
                            strcpy(v156, "attributes");
                            BYTE3(v156[1]) = 0;
                            HIDWORD(v156[1]) = -369098752;
                            sub_1007A36B4();
                            v133 = sub_1002C6408(v157);

                            *(v132 + 96) = sub_1001F1160(&qword_100ADA230);
                            *(v132 + 72) = v133;
                            v156[0] = 1717924456;
                            v156[1] = 0xE400000000000000;
                            sub_1007A36B4();
                            *(v132 + 168) = &type metadata for String;
                            *(v132 + 144) = 0;
                            *(v132 + 152) = 0xE000000000000000;
                            v156[0] = 25705;
                            v156[1] = 0xE200000000000000;
                            sub_1007A36B4();
                            v134 = [v105 adamId];
                            if (v134)
                            {
                              v135 = v134;
                              v136 = sub_1007A2254();
                              v138 = v137;

                              v139 = (v132 + 216);
                              *(v132 + 240) = &type metadata for String;
                              if (v138)
                              {
                                *v139 = v136;
LABEL_90:
                                *(v132 + 224) = v138;
                                v156[0] = 1701869940;
                                v156[1] = 0xE400000000000000;
                                sub_1007A36B4();
                                *(v132 + 312) = &type metadata for String;
                                *(v132 + 288) = v100;
                                *(v132 + 296) = v103;
                                sub_100013740(v132);
                                swift_setDeallocating();
                                sub_1001F1160(&unk_100AD1E50);
                                swift_arrayDestroy();
                                swift_deallocClassInstance();
                                sub_100799244();
                                v140 = objc_allocWithZone(sub_100798E84());
                                v141 = sub_100798E74();

                                sub_1000074E0(&v161);
                                return v141;
                              }
                            }

                            else
                            {
                              v139 = (v132 + 216);
                              *(v132 + 240) = &type metadata for String;
                            }

                            *v139 = 0;
                            v138 = 0xE000000000000000;
                            goto LABEL_90;
                          }

LABEL_53:
                          sub_100007840(&v157, &unk_100AD5B40);
                          goto LABEL_54;
                        }
                      }

                      sub_10002899C(v156);
                    }

                    v157 = 0u;
                    v158 = 0u;
                    goto LABEL_53;
                  }

LABEL_43:
                  sub_100007840(&v157, &unk_100AD5B40);
                  goto LABEL_44;
                }
              }

              sub_10002899C(v156);
            }

            v157 = 0u;
            v158 = 0u;
            v65 = v153;
            goto LABEL_43;
          }

LABEL_27:
          sub_100007840(&v157, &unk_100AD5B40);
          goto LABEL_28;
        }
      }

      sub_10002899C(v156);
    }

    v157 = 0u;
    v158 = 0u;
    goto LABEL_27;
  }

  v24 = v161;
  if (v164 != 1)
  {
    sub_1000074E0(&v162);
  }

  sub_100799444();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

unint64_t sub_1002C4B0C()
{
  v0 = sub_1002BC330();
  result = 0;
  if (v0 > 2u)
  {
    if (v0 - 4 < 3)
    {
      return result;
    }

    v2 = 0x6F6F626F69647561;
    v3 = 0xD000000000000012;
    v4 = v0 == 3;
  }

  else
  {
    if (!v0)
    {
      return result;
    }

    v2 = 0x746163696C707061;
    v3 = 0xD000000000000010;
    v4 = v0 == 1;
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002C4C00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002C4C90;

  return sub_1002BCDB0();
}

uint64_t sub_1002C4C90(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002C4E64()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v7);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1002C63D8(&v7);
      return 2;
    }

    v2 = v8;
  }

  else
  {

    v2 = &v7;
  }

  sub_1000077C0(v2, v10);
  sub_1000077C0(v10, v6);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if (swift_dynamicCast())
  {
    sub_1000077C0(v4, &v7);
    sub_10000E3E8(&v7, v8[2]);
    v3 = sub_100799084() & 1;
    sub_1000074E0(&v7);
    return v3;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_100007840(v4, &qword_100AE0AF0);
    return 0;
  }
}

uint64_t sub_1002C52CC(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_1002C52EC(uint64_t *a1))(uint64_t a1)
{
  a1[2] = *v1;
  *a1 = sub_1002C0F88();
  a1[1] = v3;
  return sub_1002C5338;
}

id sub_1002C5414()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v5);
  if (v7)
  {
    v1 = v5;
    if (v7 != 1)
    {
      sub_1000074E0(v6);
    }

    sub_100799444();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = [v2 supportsUnifiedProductPage];

      return v3;
    }
  }

  else
  {

    sub_1000074E0(&v5);
  }

  return 0;
}

uint64_t sub_1002C5534(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002C7268;

  return sub_1002C2210(a1, a2);
}

uint64_t sub_1002C5624()
{
  if ([objc_opt_self() isOffline])
  {
    return 0;
  }

  v1 = [objc_opt_self() delegate];
  v2 = [v1 storeController];

  LODWORD(v1) = [v2 isReportConcernEnabled];
  if (!v1)
  {
    return 0;
  }

  v3 = sub_1002BC268();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_supportsReportConcernInJS);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C56FC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v4);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1002C63D8(&v4);
      return 2;
    }

    v2 = v5;
  }

  else
  {

    v2 = &v4;
  }

  sub_1000074E0(v2);
  sub_1002BC330();
  if (sub_1007972D4())
  {
    v3 = 1;
  }

  else
  {
    sub_1002BC330();
    v3 = sub_1007972D4();
  }

  return v3 & 1;
}

uint64_t sub_1002C5798()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v9);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_1002C63D8(&v9);
LABEL_8:
      v7 = 0;
      return v7 & 1;
    }

    v1 = v10;
  }

  else
  {

    v1 = &v9;
  }

  sub_1000074E0(v1);
  v2 = [objc_opt_self() defaultManager];
  sub_1002BC268();
  v3 = sub_1007A2214();

  v4 = [v2 libraryAssetOnMainQueueWithAssetID:v3];

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 24);
  v6 = *(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider + 32);
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider), v5);
  v7 = (*(v6 + 8))(v4, v5, v6);

  return v7 & 1;
}

uint64_t sub_1002C58E8()
{
  v1 = sub_1001F1160(&qword_100ADA258);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2 - 8];
  v4 = sub_100799224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v17);
  if (v19)
  {
    v8 = *&v17[0];
    if (v19 != 1)
    {
      sub_1000074E0(v17 + 8);
    }

    sub_100799444();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v11 = [v12 isSG];

      return v11 & 1;
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  sub_1000077C0(v17, v16);
  sub_100009864(v16, v15);
  sub_1001F1160(&qword_100ADA250);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (!v9)
  {
    v10(v3, 1, 1, v4);
    sub_1000074E0(v16);
    sub_100007840(v3, &qword_100ADA258);
    goto LABEL_11;
  }

  v10(v3, 0, 1, v4);
  (*(v5 + 32))(v7, v3, v4);
  v11 = sub_100799214();
  (*(v5 + 8))(v7, v4);
  sub_1000074E0(v16);
  return v11 & 1;
}

uint64_t sub_1002C5B5C@<X0>(uint64_t a1@<X8>)
{
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v5);
  if (v7)
  {
    if (v7 == 1)
    {
      result = sub_1002C63D8(&v5);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      return result;
    }

    v4 = v6;
  }

  else
  {

    v4 = &v5;
  }

  sub_1000077C0(v4, v8);
  return sub_1000077C0(v8, a1);
}

uint64_t sub_1002C5BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100798F64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v10 = sub_1001F1160(&qword_100ADA258);
  __chkstk_darwin(v10 - 8);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  sub_1002C63A0(v1 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, &v66);
  if (v68)
  {
    if (v68 == 1)
    {
      result = sub_1002C63D8(&v66);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = 2;
LABEL_32:
      *a1 = v25;
      *(a1 + 8) = v30;
      *(a1 + 16) = v28;
      *(a1 + 24) = v29;
      *(a1 + 32) = v26;
      *(a1 + 40) = v27;
      *(a1 + 48) = v31;
      return result;
    }

    v61 = v9;
    v62 = v14;

    v32 = v67;
  }

  else
  {
    v61 = v9;
    v62 = v14;

    v32 = &v66;
  }

  sub_1000077C0(v32, v69);
  sub_1000077C0(v69, &v66);
  sub_1001F1160(&qword_100ADA250);
  v33 = sub_100799224();
  v34 = swift_dynamicCast();
  v35 = *(v33 - 8);
  (*(v35 + 56))(v23, v34 ^ 1u, 1, v33);
  sub_1000077D8(v23, v20, &qword_100ADA258);
  v65 = *(v35 + 48);
  v36 = v65(v20, 1, v33);
  v63 = v35;
  if (v36 == 1)
  {
    sub_100007840(v20, &qword_100ADA258);
    v25 = 0;
    v59 = 1;
  }

  else
  {
    v56 = a1;
    v37 = v35;
    v38 = sub_100799204();
    (*(v37 + 8))(v20, v33);
    if (v38)
    {
      v25 = *(v38 + 16);

      v59 = 0;
    }

    else
    {
      v25 = 0;
      v59 = 1;
    }

    a1 = v56;
  }

  sub_1000077D8(v23, v17, &qword_100ADA258);
  if (v65(v17, 1, v33) == 1)
  {
    sub_100007840(v17, &qword_100ADA258);
  }

  else
  {
    v39 = sub_100799204();
    (*(v63 + 8))(v17, v33);
    if (v39)
    {
      v40 = v64;
      if (*(v39 + 16))
      {
        v41 = *(v4 + 16);
        v42 = v39 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v55 = v25;
        v43 = v61;
        v41(v61, v42, v3);

        sub_1002C7210(&qword_100ADA260, &type metadata accessor for LibraryPDFInfo);
        v44 = sub_1007992E4();
        v57 = v45;
        v58 = v44;
        v46 = v43;
        v25 = v55;
        (*(v4 + 8))(v46, v3);
      }

      else
      {

        v57 = 0;
        v58 = 0;
      }

      goto LABEL_18;
    }
  }

  v57 = 0;
  v58 = 0;
  v40 = v64;
LABEL_18:
  v47 = v62;
  sub_1000077D8(v23, v62, &qword_100ADA258);
  if (v65(v47, 1, v33) == 1)
  {
    sub_100007840(v47, &qword_100ADA258);
    v64 = 0;
    v61 = 0;
  }

  else
  {
    sub_1002C7210(&qword_100ADA268, &type metadata accessor for LibraryAudiobookInfo);
    v64 = sub_1007992D4();
    v61 = v48;
    (*(v63 + 8))(v47, v33);
  }

  sub_1000077D8(v23, v40, &qword_100ADA258);
  v49 = v65(v40, 1, v33);
  v60 = v23;
  if (v49 == 1)
  {
    sub_100007840(v40, &qword_100ADA258);
    v31 = 2;
LABEL_31:
    v28 = v58;
    result = sub_100007840(v60, &qword_100ADA258);
    v30 = v59;
    v29 = v57;
    v26 = v64;
    v27 = v61;
    goto LABEL_32;
  }

  v55 = v25;
  v50 = sub_100799204();
  result = (*(v63 + 8))(v40, v33);
  if (!v50)
  {
    v31 = 2;
LABEL_30:
    v25 = v55;
    goto LABEL_31;
  }

  v56 = a1;
  v51 = 0;
  v52 = *(v50 + 16);
  while (1)
  {
    v53 = v51;
    if (v52 == v51)
    {
LABEL_28:
      v31 = v52 == v53;

      a1 = v56;
      goto LABEL_30;
    }

    if (v51 >= *(v50 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v50 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v51++, v3);
    sub_1002C7210(&qword_100ADA260, &type metadata accessor for LibraryPDFInfo);
    v54 = sub_1007992F4();
    result = (*(v4 + 8))(v6, v3);
    if ((v54 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C6408(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002C6568(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002C6724(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1002C6568(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_100028940(*(a3 + 48) + 40 * v13, v21);
    sub_1000077D8(*(a3 + 56) + 32 * v13, v20, &unk_100AD5B40);
    sub_100028940(v21, v18);
    sub_1000077D8(v20, v19, &unk_100AD5B40);
    v14 = v19[3];
    sub_100007840(v18, &qword_100ADA240);
    sub_100007840(v20, &unk_100AD5B40);
    result = sub_10002899C(v21);
    if (v14)
    {
      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1002C679C(v17, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1002C679C(v17, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002C6724(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1002C6568(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1002C679C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1001F1160(&unk_100ADACF0);
  result = sub_1007A3924();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_100028940(*(v4 + 48) + 40 * v16, v34);
    sub_1000077D8(*(v4 + 56) + 32 * v16, v33, &unk_100AD5B40);
    v30 = v34[0];
    v31 = v34[1];
    v32 = v35;
    v28 = v33[0];
    v29 = v33[1];
    result = sub_1007A3694(*(v9 + 40));
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v9 + 48) + 40 * v20;
    *v25 = v30;
    *(v25 + 16) = v31;
    *(v25 + 32) = v32;
    v26 = (*(v9 + 56) + 32 * v20);
    *v26 = v28;
    v26[1] = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1002C6A2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v5 = a4;
  v6 = a3;
  if (*(a4 + 16) == a3)
  {

    return v5;
  }

  sub_1001F1160(a5);
  result = sub_1007A3924();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 64;
  v34 = v5;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_16:
    v17 = 16 * (v14 | (v12 << 6));
    v18 = *(v5 + 56);
    v19 = (*(v5 + 48) + v17);
    v20 = *v19;
    v21 = v19[1];
    v35 = *(v18 + v17);
    sub_1007A3C04();

    v22 = v35;

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
    v23 = -1 << *(v10 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v10 + 48) + v31);
    *v32 = v20;
    v32[1] = v21;
    *(*(v10 + 56) + v31) = v35;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    v5 = v34;
    if (!v6)
    {
      return v10;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v10;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1002C6C80(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_100796BB4();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v44 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  sub_1001F1160(&qword_100ADA2A0);
  result = sub_1007A3924();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_1007A3C04();

    v52 = v27;
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1002C7000(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4() & 1;
  }
}

uint64_t sub_1002C7058(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4() & 1;
  }
}

uint64_t sub_1002C70C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AF1C40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C7138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1002BD598(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002C7210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TextFormatSizeLabel()
{
  result = qword_100ADA310;
  if (!qword_100ADA310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C72EC()
{
  sub_1002C7370();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1002C7370()
{
  if (!qword_100ADA320)
  {
    sub_10079D474();
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADA320);
    }
  }
}

uint64_t sub_1002C73E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADBC10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1002C859C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079D474();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1002C75CC@<X0>(uint64_t *a1@<X8>)
{
  v119 = a1;
  v2 = sub_100796CF4();
  __chkstk_darwin(v2 - 8);
  v138 = (&v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = sub_1007A2204();
  v139 = *(v122 - 8);
  __chkstk_darwin(v122);
  v136 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v113 - v6;
  v137 = sub_1007A21D4();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  v118 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v117 = &v113 - v11;
  __chkstk_darwin(v12);
  v120 = &v113 - v13;
  __chkstk_darwin(v14);
  v16 = &v113 - v15;
  __chkstk_darwin(v17);
  v19 = &v113 - v18;
  v20 = sub_10079D474();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TextFormatSizeLabel();
  sub_1002C73E4(v23);
  v25 = sub_10079D344();
  (*(v21 + 8))(v23, v20);
  v135 = v25;
  Size = CTFontGetSize(v25);
  sub_1007A2154();
  v27 = (v1 + *(v24 + 24));
  v29 = *v27;
  v28 = v27[1];
  v30 = objc_opt_self();

  v134 = [v30 mainBundle];
  isa = [v134 localizations];
  if (!isa)
  {
    sub_1007A25E4();
    isa = sub_1007A25D4().super.isa;
  }

  v130 = sub_1001F1160(&unk_100AE0B30);
  v32 = swift_allocObject();
  v129 = xmmword_10080B690;
  *(v32 + 16) = xmmword_10080B690;
  v131 = v29;
  *(v32 + 32) = v29;
  *(v32 + 40) = v28;
  v132 = v28;

  v33 = sub_1007A25D4().super.isa;

  v34 = [v30 preferredLocalizationsFromArray:isa forPreferences:v33];

  v35 = sub_1007A25E4();
  if (*(v35 + 16))
  {
  }

  v36 = v122;

  sub_1007A21F4();
  sub_1007A21E4();
  v37 = *(v8 + 16);
  v38 = v137;
  v128 = v8 + 16;
  v127 = v37;
  v37(v16, v19, v137);
  v39 = v139;
  v40 = *(v139 + 16);
  v126 = v139 + 16;
  v125 = v40;
  v40(v136, v7, v36);
  sub_100796C94();
  v133 = v16;
  v116 = sub_1007A22C4();
  v121 = v41;

  v42 = *(v39 + 8);
  v139 = v39 + 8;
  v124 = v42;
  v42(v7, v36);
  v43 = *(v8 + 8);
  v134 = (v8 + 8);
  v123 = v43;
  v43(v19, v38);
  sub_1007A2154();
  v44 = [v30 mainBundle];
  v45 = [v44 localizations];
  if (!v45)
  {
    sub_1007A25E4();
    v45 = sub_1007A25D4().super.isa;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v129;
  *(v46 + 32) = v131;
  *(v46 + 40) = v132;

  v47 = sub_1007A25D4().super.isa;

  v48 = [v30 preferredLocalizationsFromArray:v45 forPreferences:v47];

  v49 = sub_1007A25E4();
  v50 = v117;
  if (*(v49 + 16))
  {
  }

  v51 = v133;

  sub_1007A21F4();
  sub_1007A21E4();
  v52 = v120;
  v53 = v137;
  v127(v51, v120, v137);
  v125(v136, v7, v36);
  sub_100796C94();
  v54 = sub_1007A22C4();
  v56 = v55;

  v124(v7, v36);
  v123(v52, v53);
  v141 = 0.0;
  LOBYTE(v54) = sub_10028FB54(v54, v56);

  if (v54)
  {
    v57 = v141;
  }

  else
  {
    v57 = 1.0;
  }

  v58 = CTFontCopyFontDescriptor(v135);
  v59 = CTFontCreateWithFontDescriptor(v58, Size * v57, 0);

  v115 = v59;
  v120 = sub_10079D4F4();
  sub_1007A2154();
  v60 = [v30 mainBundle];
  v61 = [v60 localizations];
  v62 = v131;
  if (!v61)
  {
    sub_1007A25E4();
    v61 = sub_1007A25D4().super.isa;
  }

  v63 = swift_allocObject();
  *(v63 + 16) = v129;
  *(v63 + 32) = v62;
  *(v63 + 40) = v132;

  v64 = sub_1007A25D4().super.isa;

  v65 = [v30 preferredLocalizationsFromArray:v61 forPreferences:v64];

  v66 = sub_1007A25E4();
  if (*(v66 + 16))
  {
  }

  v67 = v122;

  sub_1007A21F4();
  sub_1007A21E4();
  v68 = v137;
  v127(v133, v50, v137);
  v125(v136, v7, v67);
  sub_100796C94();
  v114 = sub_1007A22C4();
  v122 = v69;

  v124(v7, v67);
  v123(v50, v68);
  v70 = v118;
  sub_1007A2154();
  v71 = [v30 mainBundle];
  v72 = [v71 localizations];
  if (!v72)
  {
    sub_1007A25E4();
    v72 = sub_1007A25D4().super.isa;
  }

  v73 = swift_allocObject();
  *(v73 + 16) = v129;
  v74 = v132;
  *(v73 + 32) = v131;
  *(v73 + 40) = v74;
  v75 = sub_1007A25D4().super.isa;

  v76 = [v30 preferredLocalizationsFromArray:v72 forPreferences:v75];

  v77 = sub_1007A25E4();
  if (*(v77 + 16))
  {
  }

  v78 = v133;

  sub_1007A21F4();
  sub_1007A21E4();
  v79 = v137;
  v127(v78, v70, v137);
  v125(v136, v7, v67);
  sub_100796C94();
  v80 = sub_1007A22C4();
  v82 = v81;

  v124(v7, v67);
  v123(v70, v79);
  v145 = 0.0;
  LOBYTE(v80) = sub_10028FB54(v80, v82);

  if (v80)
  {
    v83 = v145;
  }

  else
  {
    v83 = 1.0;
  }

  v84 = CTFontCopyFontDescriptor(v135);
  v85 = CTFontCreateWithFontDescriptor(v84, Size * v83, 0);

  v138 = v85;
  v137 = sub_10079D4F4();
  v139 = sub_10079C8C4();
  v143 = 0;
  v141 = *&v116;
  v142 = v121;
  sub_100206ECC();

  v86 = sub_10079D5D4();
  v88 = v87;
  v90 = v89;
  v136 = sub_10079D5A4();
  v134 = v91;
  LODWORD(v133) = v92;
  v94 = v93;
  sub_10020B430(v86, v88, v90 & 1);

  v141 = *&v114;
  v142 = v122;

  v95 = sub_10079D5D4();
  v97 = v96;
  v99 = v98;
  v100 = sub_10079D5A4();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  sub_10020B430(v95, v97, v99 & 1);

  v107 = v133 & 1;
  v140 = v133 & 1;
  v108 = v136;
  v109 = v134;
  sub_1001F1894(v136, v134, v133 & 1);

  sub_1001F1894(v100, v102, v104 & 1);

  sub_10020B430(v100, v102, v104 & 1);

  sub_10020B430(v108, v109, v140);

  LOBYTE(v141) = v107;
  v144 = v104 & 1;

  v111 = v143;
  v112 = v119;
  *v119 = v139;
  v112[1] = 0;
  *(v112 + 16) = v111;
  v112[3] = v108;
  v112[4] = v109;
  *(v112 + 40) = v107;
  v112[6] = v94;
  v112[7] = v100;
  v112[8] = v102;
  *(v112 + 72) = v104 & 1;
  v112[10] = v106;
  return result;
}

uint64_t sub_1002C859C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADBC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002C860C()
{
  result = qword_100ADA358;
  if (!qword_100ADA358)
  {
    sub_1001F1234(&qword_100ADA360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA358);
  }

  return result;
}

uint64_t InfoBar.MessageQueue.__allocating_init()()
{
  v0 = sub_1001F1160(&qword_100AD9B00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v7[1] = 0;
  sub_1001F1160(&qword_100ADA370);
  sub_10079B964();
  (*(v1 + 32))(v4 + v5, v3, v0);
  *(v4 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask) = 0;
  *(v4 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = 0;
  return v4;
}

uint64_t sub_1002C8808@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1002C8888()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t InfoBar.MessageQueue.currentMessage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_1002C8978()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t sub_1002C89F0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD9AF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00);
  sub_10079B984();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t InfoBar.MessageQueue.$currentMessage.getter()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t InfoBar.MessageQueue.init()()
{
  v1 = sub_1001F1160(&qword_100AD9B00);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v7[1] = 0;
  sub_1001F1160(&qword_100ADA370);
  sub_10079B964();
  (*(v2 + 32))(v0 + v5, v4, v1);
  *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask) = 0;
  *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = 0;
  return v0;
}

uint64_t InfoBar.MessageQueue.addTimedMessage(_:duration:)(uint64_t a1, double a2)
{
  v3 = v2;
  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100B233B0);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v25 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_1002CAF0C(v24, v23);
  sub_1000260E8(v8);
  v9 = sub_10079ACC4();
  v10 = sub_1007A29A4();
  sub_1002CAF68(v24);
  sub_100007020(v8);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136315394;
    v13 = sub_100470FE8(v24, *(a1 + 33) & 1);
    v15 = sub_1000070F4(v13, v14, v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v9, v10, "Timed message added (%s), for %f seconds", v11, 0x16u);
    sub_1000074E0(v12);
  }

  type metadata accessor for InfoBar.TimedMessage(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtCO5Books7InfoBar12TimedMessage_duration) = a2;
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v17 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v18 = sub_100796BB4();
  v19 = *(*(v18 - 8) + 56);
  v19(v16 + v17, 1, 1, v18);
  v19(v16 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v18);
  v20 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v20;
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = *(a1 + 48);
  v21 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
  swift_beginAccess();
  sub_1002CAF0C(v24, v23);
  sub_1000260E8(v8);
  sub_1007A25C4();
  if (*((*(v3 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  swift_endAccess();
  return sub_1002C9578();
}

uint64_t InfoBar.MessageQueue.setPersistentMessage(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100B233B0);
  v5 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v5;
  v22 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_1002CAF0C(v21, v20);
  sub_1000260E8(v6);
  v7 = sub_10079ACC4();
  v8 = sub_1007A29A4();
  sub_1002CAF68(v21);
  sub_100007020(v6);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    v11 = sub_100470FE8(v21, *(a1 + 33) & 1);
    v13 = sub_1000070F4(v11, v12, v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Persistent message added (%s)", v9, 0xCu);
    sub_1000074E0(v10);
  }

  type metadata accessor for InfoBar.Message(0);
  v14 = swift_allocObject();
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v15 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v16 = sub_100796BB4();
  v17 = *(*(v16 - 8) + 56);
  v17(v14 + v15, 1, 1, v16);
  v17(v14 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v16);
  v18 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v18;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  *(v2 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = v14;
  sub_1002CAF0C(v21, v20);
  sub_1000260E8(v6);

  return sub_1002C9578();
}

Swift::Void __swiftcall InfoBar.MessageQueue.removePersistentMessage()()
{
  v1 = v0;
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage;
  v7 = *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage);
  if (v7)
  {
    v8 = qword_100AD1690;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100B233B0);

    v10 = sub_10079ACC4();
    v11 = sub_1007A29A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = v3;
      v13 = v12;
      v23 = swift_slowAlloc();
      v27 = v23;
      *v13 = 136315138;
      v14 = *(v7 + 16);
      v15 = *(v7 + 32);
      v29 = *(v7 + 48);
      v28[0] = v14;
      v28[1] = v15;
      v16 = *(v7 + 49);
      v25 = v2;
      v17 = *(v7 + 56);
      sub_1002CAF0C(v28, v26);
      sub_1000260E8(v17);
      v18 = sub_100470FE8(v28, v16);
      HIDWORD(v22) = v11;
      v20 = v19;
      sub_1002CAF68(v28);
      sub_100007020(v17);
      v21 = sub_1000070F4(v18, v20, &v27);

      *(v13 + 4) = v21;
      v2 = v25;
      _os_log_impl(&_mh_execute_header, v10, BYTE4(v22), "Persistent message removed (%s)", v13, 0xCu);
      sub_1000074E0(v23);

      v3 = v24;
    }

    sub_100796BA4();
    InfoBar.Message.didHide(at:)(v5);
    (*(v3 + 8))(v5, v2);
    *(v1 + v6) = 0;

    sub_1002C9578();
  }
}

uint64_t sub_1002C9578()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask;
  if (*(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask))
  {

    sub_10079B874();
  }

  *(v0 + v5) = 0;

  v6 = sub_1007A2744();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_10002281C(&qword_100ADA520, type metadata accessor for InfoBar.MessageQueue);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_1003457A0(0, 0, v4, &unk_100818170, v8);
  sub_10079B884();
  swift_allocObject();
  *(v1 + v5) = sub_10079B894();
}

uint64_t sub_1002C9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1002C97DC;

  return sub_1002C9A2C();
}

uint64_t sub_1002C97DC()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_1002C9910, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1002C9910()
{
  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100B233B0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled message resolution", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002C9A2C()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1002C9ABC;

  return sub_1002CA834();
}

uint64_t sub_1002C9ABC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_1002C9C04, v6, 0);
  }
}

uint64_t sub_1002C9C04()
{
  v1 = v0[7];
  sub_1007A2774();
  if (v1)
  {
    v2 = v0[1];
LABEL_3:

    return v2();
  }

  v4 = v0[5];
  v5 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    v7 = sub_1007A38D4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100B233B0);
  v9 = sub_10079ACC4();
  v10 = sub_1007A29A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Resolving timed messages. (%ld in queue)", v11, 0xCu);
  }

  v12 = sub_1002CAB44();
  v0[8] = v12;
  if (!v12)
  {
    v13 = sub_10079ACC4();
    v14 = sub_1007A29A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Clear messages", v15, 2u);
    }

    sub_1002CA0D0(0);
    goto LABEL_17;
  }

  sub_1002CA0D0(v12);
  sub_1007A2774();
  if (v7 < 1)
  {

LABEL_17:
    v2 = v0[1];
    goto LABEL_3;
  }

  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_1002C9EDC;

  return sub_1002C9A2C();
}

uint64_t sub_1002C9EDC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1002CA06C;
  }

  else
  {
    v4 = sub_1002CA008;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002CA008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CA06C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CA0D0(uint64_t a1)
{
  v3 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v1;
  sub_10079B9A4();

  if (a1)
  {
    if (*&v60[0])
    {
      v11 = sub_100796BD4();

      if (v11)
      {
        return result;
      }
    }
  }

  else
  {
    if (!*&v60[0])
    {
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v12 = *&v60[0];
  if (*&v60[0])
  {
    if (qword_100AD1690 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100B233B0);

    v14 = sub_10079ACC4();
    v15 = sub_1007A2994();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v51 = v9;
      v17 = v16;
      v50 = swift_slowAlloc();
      *&v56[0] = v50;
      *v17 = 136315138;
      v18 = *(v12 + 16);
      v19 = *(v12 + 32);
      v61 = *(v12 + 48);
      v60[0] = v18;
      v60[1] = v19;
      v20 = *(v12 + 49);
      v53 = v5;
      v52 = v6;
      v21 = *(v12 + 56);
      sub_1002CAF0C(v60, v58);
      sub_1000260E8(v21);
      v22 = sub_100470FE8(v60, v20);
      v24 = v23;
      sub_1002CAF68(v60);
      v25 = v21;
      v5 = v53;
      v6 = v52;
      sub_100007020(v25);
      v26 = sub_1000070F4(v22, v24, v56);

      *(v17 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "Hide message: %s", v17, 0xCu);
      sub_1000074E0(v50);

      v9 = v51;
    }

    sub_100796BA4();
    InfoBar.Message.didHide(at:)(v9);

    (*(v7 + 8))(v9, v6);
  }

  if (a1)
  {
    v27 = qword_100AD1690;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_10079ACE4();
    sub_100008B98(v28, qword_100B233B0);

    v29 = sub_10079ACC4();
    v30 = sub_1007A2994();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v9;
      v33 = v32;
      v55[0] = v32;
      *v31 = 136315138;
      v34 = *(a1 + 16);
      v35 = *(a1 + 32);
      v59 = *(a1 + 48);
      v58[0] = v34;
      v58[1] = v35;
      v36 = *(a1 + 49);
      v53 = v5;
      v52 = v6;
      v37 = *(a1 + 56);
      sub_1002CAF0C(v58, v56);
      sub_1000260E8(v37);
      v38 = sub_100470FE8(v58, v36);
      v40 = v39;
      sub_1002CAF68(v58);
      v41 = v37;
      v5 = v53;
      v6 = v52;
      sub_100007020(v41);
      v42 = sub_1000070F4(v38, v40, v55);

      *(v31 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "Show message: %s", v31, 0xCu);
      sub_1000074E0(v33);
      v9 = v51;
    }

    sub_100796BA4();
    (*(v7 + 32))(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v43 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
    swift_beginAccess();
    sub_100217AB4(v5, a1 + v43);
    swift_endAccess();
    v44 = *(a1 + 32);
    v56[0] = *(a1 + 16);
    v56[1] = v44;
    v57 = *(a1 + 48);
    LOBYTE(v43) = *(a1 + 49);
    v45 = *(a1 + 56);
    sub_1002CAF0C(v56, v55);
    sub_1000260E8(v45);
    sub_1002CB128(v56, v43);
    sub_1002CAF68(v56);
    sub_100007020(v45);
  }

  else
  {
    if (qword_100AD1690 != -1)
    {
      swift_once();
    }

    v46 = sub_10079ACE4();
    sub_100008B98(v46, qword_100B233B0);
    v47 = sub_10079ACC4();
    v48 = sub_1007A2994();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Clear messages", v49, 2u);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v55[0] = a1;

  return sub_10079B9B4();
}

uint64_t sub_1002CA854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = 0.0;
  if (v0[5])
  {
    type metadata accessor for InfoBar.TimedMessage(0);
    if (swift_dynamicCastClass())
    {
      v3 = v0[6];
      v4 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
      swift_beginAccess();
      v5 = *(v3 + v4);
      if (v5 >> 62)
      {
        if (sub_1007A38D4())
        {
LABEL_5:

          InfoBar.Message.totalDisplayedTime.getter();
          v7 = v6;

          if (1.0 - v7 < 0.0)
          {
            v2 = 0.0;
          }

          else
          {
            v2 = 1.0 - v7;
          }

          goto LABEL_11;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      InfoBar.TimedMessage.timeRemaining.getter();
      v2 = v8;
    }
  }

LABEL_11:
  v9 = v2 * 1000.0 * 1000.0 * 1000.0;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_19:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v10 = v9;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1002CAA50;
  v1 = v10;

  return static Task<>.sleep(nanoseconds:)(v1);
}

uint64_t sub_1002CAA50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002CAB44()
{
  v2 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    v5 = *(v0 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage);

    return v5;
  }

  if (!sub_1007A38D4())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1007A3784();
    swift_unknownObjectRelease();
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = swift_beginAccess();
  v3 = *(v0 + v2);
  v1 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1007A38D4();
  if (result)
  {
    result = sub_1007A38D4();
    if (result)
    {
LABEL_7:
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v5 = *(v3 + 32);

        if (!v1)
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }

LABEL_19:
      v5 = sub_1007A3784();
      if (!v1)
      {
LABEL_10:
        result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_21;
      }

LABEL_20:
      result = sub_1007A38D4();
LABEL_21:
      if (result)
      {
        sub_1002F92B0(0, 1);
        swift_endAccess();
        return v5;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1002CACE8()
{
  v0 = UIAccessibilityAnnouncementNotification;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0);
  sub_1007A20B4();
  v1 = sub_1007A2214();

  UIAccessibilityPostNotification(v0, v1);
}

uint64_t InfoBar.MessageQueue.deinit()
{
  v1 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v2 = sub_1001F1160(&qword_100AD9B00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InfoBar.MessageQueue.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  v2 = sub_1001F1160(&qword_100AD9B00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for InfoBar.MessageQueue()
{
  result = qword_100ADA3A8;
  if (!qword_100ADA3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002CB010()
{
  sub_1002CB0C4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002CB0C4()
{
  if (!qword_100ADA3B8)
  {
    sub_1001F1234(&qword_100ADA370);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADA3B8);
    }
  }
}

void sub_1002CB128(uint64_t a1, char a2)
{
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  if (a2)
  {
    v36 = &v33 - v18;
    v37 = v7;
    v39 = v8;
    v40 = v5;
    v20 = *a1;
    v19 = *(a1 + 8);
    v21 = *(a1 + 32);
    v41 = v4;
    v38 = v9;
    if (v21 > 1)
    {
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v22 = v17;
      if (v21 == 2 || v24)
      {
        sub_1001F1160(&unk_100AE0B30);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_10080EFF0;
        *(v23 + 32) = v20;
        *(v23 + 40) = v19;
        *(v23 + 48) = v25;
        *(v23 + 56) = v24;
        goto LABEL_8;
      }
    }

    else
    {
      v22 = v17;
    }

    sub_1001F1160(&unk_100AE0B30);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10080B690;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
LABEL_8:
    sub_100017E74();
    sub_1002CAF0C(a1, aBlock);
    v26 = sub_1007A2D74();
    sub_1007A1CB4();
    v27 = v36;
    sub_1007A1D24();
    v28 = *(v13 + 8);
    v34 = v22;
    v35 = v28;
    v28(v15, v22);
    v29 = swift_allocObject();
    *(v29 + 16) = v23;
    aBlock[4] = sub_1002CB5AC;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A13768;
    v30 = _Block_copy(aBlock);
    sub_1007A1C74();
    v42 = _swiftEmptyArrayStorage;
    sub_10002281C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v31 = v37;
    v32 = v41;
    sub_1007A3594();
    sub_1007A2D04();
    _Block_release(v30);

    (*(v40 + 8))(v31, v32);
    (*(v38 + 8))(v11, v39);
    v35(v27, v34);
  }
}

uint64_t sub_1002CB5BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1002C9748(a1, v4, v5, v6);
}

NSString sub_1002CB694()
{
  result = sub_1007A2214();
  qword_100ADA528 = result;
  return result;
}

NSString sub_1002CB6CC()
{
  result = sub_1007A2214();
  qword_100ADA530 = result;
  return result;
}

void *sub_1002CB704(uint64_t a1)
{
  v2 = sub_100796CF4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  v28 = a1;
  sub_1001F1160(&unk_100AEC9E0);
  sub_1002CD1B4(&unk_100ADA540, &unk_100AEC9E0);
  if (sub_1007A28A4())
  {
    v15 = *(a1 + 16);
    v16 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v31 = _swiftEmptyArrayStorage;
      sub_1007A37F4();
      sub_10000A7C4(0, &qword_100AECAB0);
      v17 = a1 + 56;
      do
      {
        v19 = *(v17 - 24);
        v18 = *(v17 - 16);
        v30 = &type metadata for String;
        v28 = v19;
        v29 = v18;

        sub_1007A3414();
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
        v17 += 32;
        --v15;
      }

      while (v15);
      return v31;
    }
  }

  else
  {
    sub_1001F1160(&unk_100AD8160);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_100811390;
    v25[1] = sub_10000A7C4(0, &qword_100AD8390);
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = v26;
    v23 = v27;
    (*(v26 + 16))(v4, v7, v27);
    sub_1007A22D4();
    (*(v22 + 8))(v7, v23);
    (*(v9 + 8))(v14, v8);
    v16[4] = sub_1007A31D4();
  }

  return v16;
}

Class sub_1002CBB4C(uint64_t a1)
{
  v55 = a1;
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v41 = sub_10000A7C4(0, &qword_100ADA970);
  sub_1007A2154();
  sub_100796C94();
  v48 = *(v9 + 16);
  v49 = v9 + 16;
  v48(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = objc_opt_self();
  v47 = ObjCClassFromMetadata;
  v16 = [v46 bundleForClass:ObjCClassFromMetadata];
  v45 = *(v2 + 16);
  v45(v4, v7, v1);
  v50 = v11;
  v52 = v4;
  sub_1007A22D4();
  v17 = *(v2 + 8);
  v53 = v2 + 8;
  v54 = v1;
  v44 = v17;
  v17(v7, v1);
  v18 = *(v9 + 8);
  v51 = v9 + 8;
  v43 = v18;
  v18(v14, v8);
  v19 = sub_1007A2214();
  v42 = objc_opt_self();
  v20 = [v42 systemImageNamed:v19];

  v56 = 0u;
  v57 = 0u;
  v21 = sub_1007A2964();
  sub_10000A7C4(0, &qword_100AD8170);
  if (qword_100AD13C0 != -1)
  {
    swift_once();
  }

  v22 = qword_100ADA528;
  v40 = qword_100ADA528;
  sub_1001F1160(&unk_100AD8160);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100811360;
  *(v23 + 32) = v21;
  v24 = v22;
  v41 = v21;
  sub_1007A2154();
  sub_100796C94();
  v48(v50, v14, v8);
  v25 = [v46 bundleForClass:v47];
  v26 = v54;
  v45(v52, v7, v54);
  v27 = sub_1007A22D4();
  v29 = v28;
  v44(v7, v26);
  v43(v14, v8);
  v30 = sub_1007A2214();
  v31 = [v42 systemImageNamed:v30];

  v36 = sub_1002CB704(v55);
  v60._countAndFlagsBits = v27;
  v60._object = v29;
  v62.value._countAndFlagsBits = 0;
  v62.value._object = 0;
  v58.value.super.isa = v31;
  v58.is_nil = 0;
  v32.value = 0;
  *(v23 + 40) = sub_1007A30C4(v60, v62, v58, v32, 0xFFFFFFFFFFFFFFFFLL, v36, v37);
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v63.value._countAndFlagsBits = 0;
  v63.value._object = 0;
  v59.value.super.isa = 0;
  v59.is_nil = v40;
  v33.value = 1;
  isa = sub_1007A30C4(v61, v63, v59, v33, 0xFFFFFFFFFFFFFFFFLL, v23, v38).super.super.isa;

  return isa;
}

void *sub_1002CC0E0(uint64_t a1)
{
  v2 = sub_100796CF4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  v28 = a1;
  sub_1001F1160(&unk_100AECA70);
  sub_1002CD1B4(&qword_100ADA538, &unk_100AECA70);
  if (sub_1007A28A4())
  {
    v15 = *(a1 + 16);
    v16 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v31 = _swiftEmptyArrayStorage;
      sub_1007A37F4();
      sub_10000A7C4(0, &qword_100AECAB0);
      v17 = a1 + 56;
      do
      {
        v19 = *(v17 - 24);
        v18 = *(v17 - 16);
        v30 = &type metadata for String;
        v28 = v19;
        v29 = v18;

        sub_1007A3414();
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
        v17 += 32;
        --v15;
      }

      while (v15);
      return v31;
    }
  }

  else
  {
    sub_1001F1160(&unk_100AD8160);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_100811390;
    v25[1] = sub_10000A7C4(0, &qword_100AD8390);
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = v26;
    v23 = v27;
    (*(v26 + 16))(v4, v7, v27);
    sub_1007A22D4();
    (*(v22 + 8))(v7, v23);
    (*(v9 + 8))(v14, v8);
    v16[4] = sub_1007A31D4();
  }

  return v16;
}

UIMenu sub_1002CC53C(uint64_t a1)
{
  v57 = a1;
  v67 = sub_100796CF4();
  v1 = *(v67 - 8);
  __chkstk_darwin(v67);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v50 - v5;
  v7 = sub_1007A21D4();
  v68 = *(v7 - 8);
  v8 = v68;
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v56 = sub_10000A7C4(0, &qword_100ADA970);
  sub_1007A2154();
  sub_100796C94();
  v63 = *(v8 + 16);
  v64 = v10;
  v63(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = ObjCClassFromMetadata;
  v61 = objc_opt_self();
  v15 = [v61 bundleForClass:ObjCClassFromMetadata];
  v16 = v1 + 16;
  v60 = *(v1 + 16);
  v65 = v3;
  v51 = v6;
  v17 = v67;
  v60(v3, v6, v67);
  v18 = sub_1007A22D4();
  v54 = v19;
  v55 = v18;
  v20 = *(v1 + 8);
  v66 = v1 + 8;
  v59 = v20;
  v20(v6, v17);
  v21 = *(v68 + 8);
  v68 += 8;
  v58 = v21;
  v22 = v7;
  v21(v13, v7);
  v23 = sub_1007A2214();
  v24 = objc_opt_self();
  v25 = [v24 systemImageNamed:v23];

  v69 = 0u;
  v70 = 0u;
  v53 = sub_1007A2964();
  v52 = sub_10000A7C4(0, &qword_100AECAB0);
  sub_1007A2154();
  v26 = v51;
  sub_100796C94();
  v56 = v8 + 16;
  v63(v64, v13, v22);
  v27 = [v61 bundleForClass:v62];
  v55 = v16;
  v60(v65, v26, v17);
  sub_1007A22D4();
  v59(v26, v17);
  v28 = v13;
  v29 = v22;
  v58(v13, v22);
  v30 = sub_1007A2214();
  v54 = v24;
  v31 = [v24 systemImageNamed:v30];

  v69 = 0u;
  v70 = 0u;
  v52 = sub_1007A3414();
  sub_10000A7C4(0, &qword_100AD8170);
  if (qword_100AD13C8 != -1)
  {
    swift_once();
  }

  v32 = qword_100ADA530;
  sub_1001F1160(&unk_100AD8160);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100811370;
  v34 = v32;
  sub_1007A2154();
  sub_100796C94();
  v63(v64, v28, v22);
  v35 = [v61 bundleForClass:v62];
  v36 = v67;
  v60(v65, v26, v67);
  v37 = sub_1007A22D4();
  v39 = v38;
  v59(v26, v36);
  v58(v28, v29);
  v40 = sub_1007A2214();
  v41 = [v54 systemImageNamed:v40];

  v47 = sub_1002CC0E0(v57);
  v73._countAndFlagsBits = v37;
  v73._object = v39;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v71.value.super.isa = v41;
  v71.is_nil = 0;
  v42.value = 0;
  v43.super.super.isa = sub_1007A30C4(v73, v75, v71, v42, 0xFFFFFFFFFFFFFFFFLL, v47, v48).super.super.isa;
  v44 = v53;
  *(v33 + 32) = v43;
  *(v33 + 40) = v44;
  *(v33 + 48) = v52;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  v76.value._countAndFlagsBits = 0;
  v76.value._object = 0;
  v72.value.super.isa = 0;
  v72.is_nil = v32;
  v45.value = 1;
  return sub_1007A30C4(v74, v76, v72, v45, 0xFFFFFFFFFFFFFFFFLL, v33, v49);
}

void sub_1002CCCB4(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = sub_100796CF4();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - v17;
  [a1 removeMenuForIdentifier:{UIMenuOpenRecent, v16}];
  [a1 removeMenuForIdentifier:UIMenuNewItem];
  [a1 removeMenuForIdentifier:UIMenuDocument];
  [a1 removeMenuForIdentifier:UIMenuOpen];
  v19 = sub_1002CBB4C(a2);
  [a1 insertChildMenu:v19 atStartOfMenuForIdentifier:UIMenuFile];

  v20.super.super.isa = sub_1002CC53C(v32).super.super.isa;
  if (qword_100AD13C0 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v20.super.super.isa afterMenuForIdentifier:{qword_100ADA528, v32}];

  v32 = sub_10000A7C4(0, &qword_100AECAB0);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v18, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = v33;
  (*(v5 + 16))(v7, v10, v33);
  sub_1007A22D4();
  (*(v5 + 8))(v10, v23);
  (*(v12 + 8))(v18, v11);
  v24 = sub_1007A2214();
  v25 = [objc_opt_self() systemImageNamed:v24];

  v34 = 0u;
  v35 = 0u;
  v26 = sub_1007A3414();
  sub_10000A7C4(0, &qword_100AD8170);
  sub_1001F1160(&unk_100AD8160);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100811390;
  *(v27 + 32) = v26;
  v30 = v27;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  v28.value = 1;
  v29.super.super.isa = sub_1007A30C4(v37, v38, v36, v28, 0xFFFFFFFFFFFFFFFFLL, v30, v31).super.super.isa;
  if (qword_100AD13C8 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v29.super.super.isa afterMenuForIdentifier:qword_100ADA530];
}

uint64_t sub_1002CD1B4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002CD208(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState;
  if (*&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState] != a1)
  {
    (*(v5 + 16))(v8, &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v4);
    v10 = v2;
    v11 = sub_10079ACC4();
    v12 = sub_1007A29D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = a1;
      *(v13 + 12) = 2048;
      *(v13 + 14) = *&v2[v9];

      _os_log_impl(&_mh_execute_header, v11, v12, "downloadState did change from %ld to %ld", v13, 0x16u);
    }

    else
    {

      v11 = v10;
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

char *sub_1002CD404()
{
  v1 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor____lazy_storage___playbackRates;
  if (*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor____lazy_storage___playbackRates))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor____lazy_storage___playbackRates);
  }

  else
  {
    v2 = sub_1002CD46C(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_1002CD46C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v1, v1[3]);
  v2 = sub_100462804();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10066A764(0, *(v5 + 2) + 1, 1, v5);
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_10066A764((v7 > 1), v8 + 1, 1, v5);
      }

      *(v5 + 2) = v8 + 1;
      *&v5[4 * v8 + 32] = v6;
      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_1002CD584()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected];

  v2 = swift_unknownObjectUnownedLoadStrong();
  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = *&v3[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_routeDetector];

  LOBYTE(v3) = [v4 multipleRoutesDetected];
  v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected] = v3;

  v5 = swift_unknownObjectUnownedLoadStrong();
  LODWORD(v2) = v5[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_multipleRoutesDetected];

  if (v1 != v2)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {

      type metadata accessor for AudiobookNowPlayingPresenter();
      sub_10055BB14();

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002CD6D0()
{
  v0 = sub_10079ACE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork])
    {
    }

    else
    {
      v5 = Strong;
      (*(v1 + 16))(v3, &Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v0);
      v6 = sub_10079ACC4();
      v7 = sub_1007A29D4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Cached artwork is nil after becoming active again.  Will generate a generic cover.", v8, 2u);
      }

      (*(v1 + 8))(v3, v0);
      v9 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
      swift_beginAccess();
      sub_100009864(v5 + v9, v14);
      sub_10000E3E8(v14, v14[3]);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10000A7C4(0, &qword_100AD1E10);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = sub_1002D7C64;
      *(v12 + 32) = v10;
      *(v12 + 40) = vdupq_n_s64(0x4098000000000000uLL);
      swift_retain_n();

      sub_1007A2CD4();

      sub_1000074E0(v14);
    }
  }
}

uint64_t type metadata accessor for AudiobookNowPlayingInteractor()
{
  result = qword_100ADA650;
  if (!qword_100ADA650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002CDBAC()
{
  sub_1002CDD3C();
  if (v0 <= 0x3F)
  {
    sub_10079ACE4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002CDD3C()
{
  if (!qword_100AD91B0)
  {
    sub_100796BB4();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD91B0);
    }
  }
}

void sub_1002CDD94()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = &v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  v9 = (*sub_10000E3E8(v8, *(v8 + 3)) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID);
  v10 = v9[1];
  if (v10 && (v11 = *&v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager]) != 0)
  {
    v12 = *v9;

    v13 = [v11 clientApplicationController];
    (*(v2 + 16))(v7, &v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v1);

    v14 = sub_10079ACC4();
    v15 = sub_1007A29D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000070F4(v12, v10, &v28);
      _os_log_impl(&_mh_execute_header, v14, v15, "cancelDownload storeID: %s", v16, 0xCu);
      sub_1000074E0(v17);
    }

    (*(v2 + 8))(v7, v1);
    v18 = sub_1007A2214();

    [v13 cancelDownloadingAssetWithStoreId:v18];
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v1);
    v19 = v0;
    v20 = sub_10079ACC4();
    v21 = sub_1007A2994();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = (*sub_10000E3E8(v8, *(v8 + 3)) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID);
      if (v24[1])
      {
        v25 = *v24;
        v26 = v24[1];
      }

      else
      {
        v26 = 0xE300000000000000;
        v25 = 7104878;
      }

      v27 = sub_1000070F4(v25, v26, &v28);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "No storeID (%s) or no storeController.  Cannot cancel download.", v22, 0xCu);
      sub_1000074E0(v23);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_1002CE180(unint64_t a1)
{
  v3 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = [objc_opt_self() now];
  sub_100796B64();

  v7 = sub_100796BB4();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_lastUserProgressChangeTimestamp;
  swift_beginAccess();
  sub_1002391EC(v5, v1 + v8, &unk_100ADB5C0);
  swift_endAccess();
  v9 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v9, v9[3]);
  sub_100462C80(a1);
}

void sub_1002CE2EC(char a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [objc_opt_self() now];
    sub_100796B64();

    v11 = sub_100796BB4();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    v12 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_lastUserProgressChangeTimestamp;
    swift_beginAccess();
    sub_1002391EC(v7, v9 + v12, &unk_100ADB5C0);
    swift_endAccess();
  }

  if (a3)
  {
    a3(a1 & 1);
  }
}

uint64_t sub_1002CE464(uint64_t a1, unsigned __int16 a2, float a3)
{
  v4 = v3;
  v7 = a2;
  v8 = sub_10079ACE4();
  v9 = __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v14 = &v42 - v12;
  v42 = v13;
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v44 = a3;
        v43 = 3;
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v44 = 0.0;
    v19 = (v7 & 0xFFFE) == 2;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v43 = 0;
        v44 = a3;
        goto LABEL_17;
      }

LABEL_8:
      (*(v13 + 16))(&v42 - v12, v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v8);
      v15 = sub_10079ACC4();
      v16 = sub_1007A29B4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unhandled download enum value %ld in interactor", v17, 0xCu);
      }

      (*(v42 + 8))(v14, v8);
      v44 = 0.0;
      v18 = 3;
      goto LABEL_16;
    }

    v44 = 0.0;
    v19 = v7 == 3;
  }

  if (v19)
  {
    v18 = 1;
  }

  else
  {
    v18 = 3;
  }

LABEL_16:
  v43 = v18 | 0x100000000;
LABEL_17:
  v20 = (v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  if ((*(*sub_10000E3E8(v20, v20[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming) & 1) == 0)
  {
    v22 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState;
    goto LABEL_25;
  }

  v21 = [*(*sub_10000E3E8(v20 v20[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v22 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState;
  v23 = *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState);
  if (v23 == 2)
  {
    if (a1 != 3)
    {
      goto LABEL_27;
    }

    if (v21 != 3)
    {
      if (v21 == 2)
      {
        if (v7 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_25;
    }

    if (v7 != 1)
    {
LABEL_50:
      *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState) = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v23 & 1) != 0 || v7 != 1)
    {
      goto LABEL_27;
    }

    if (v21 != 3)
    {
      if (v21 == 2)
      {
LABEL_48:
        v24 = 1;
        goto LABEL_26;
      }

LABEL_25:
      v24 = 2;
LABEL_26:
      *(v4 + v22) = v24;
      goto LABEL_27;
    }
  }

  *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState) = 2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = v38;
      [v40 audiobookNowPlayingViewController:v41 shouldStream:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_27:
  v25 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_assetState;
  v26 = *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_assetState);
  v27 = *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState);
  *(v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState) = a1;
  sub_1002CD208(v27);
  *(v4 + v25) = v7;
  if (v7 == 2)
  {
    v28 = sub_10000E3E8(v20, v20[3]);
    sub_10000E3E8((*v28 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(*v28 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24));
    sub_10049F9E4(a3);
  }

  v29 = [*(*sub_10000E3E8(v20 v20[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v29)
  {
    v30 = [v29 isAudiobookPreview];
    swift_unknownObjectRelease();
    if (v7 == 2 && v30 && v26 == 0)
    {
      v32 = v42;
      (*(v42 + 16))(v11, v4 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v8);
      v33 = sub_10079ACC4();
      v34 = sub_1007A29D4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Stopping playback of audiobook preview because user purchased the audiobook", v35, 2u);
      }

      (*(v32 + 8))(v11, v8);
      [*(*sub_10000E3E8(v20 v20[3]) + OBJC:"stop" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055B8D4();
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055B8C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1002CEA34()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  result = sub_10000E3E8(v9, v9[3]);
  v11 = (*result + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor);

    v15 = [v14 isConnected];
    v16 = *(v3 + 16);
    v17 = v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger;
    if (v15)
    {
      v16(v8, v17, v2);

      v18 = sub_10079ACC4();
      v19 = sub_1007A29D4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v30 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1000070F4(v13, v12, &v30);
        _os_log_impl(&_mh_execute_header, v18, v19, "startDownload storeID: %s", v20, 0xCu);
        sub_1000074E0(v21);
      }

      (*(v3 + 8))(v8, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for AudiobookNowPlayingPresenter();
        sub_10055B8D4();
        swift_unknownObjectRelease();
      }

      v22 = *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager);
      if (v22)
      {
        v23 = [v22 clientApplicationController];
        swift_unknownObjectRetain();
        v24 = sub_1007A2214();

        [v23 startOrResumeDownloadingAssetWithStoreId:v24];

        return swift_unknownObjectRelease_n();
      }

      else
      {
      }
    }

    else
    {
      v16(v5, v17, v2);

      v25 = sub_10079ACC4();
      v26 = sub_1007A29B4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v27 = 136315138;
        v29 = sub_1000070F4(v13, v12, &v30);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "Not connected to internet. Cannot start download of storeID: %s", v27, 0xCu);
        sub_1000074E0(v28);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return sub_1002CEE6C();
    }
  }

  return result;
}

uint64_t sub_1002CEE6C()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  sub_1007A2154();
  sub_100796C94();
  v32 = *(v9 + 16);
  v33 = v9 + 16;
  v32(v12, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = objc_opt_self();
  v34 = ObjCClassFromMetadata;
  v16 = [v31 bundleForClass:ObjCClassFromMetadata];
  v35 = *(v2 + 16);
  v36 = v2 + 16;
  v35(v5, v7, v1);
  v37 = v12;
  v40 = v5;
  v30 = sub_1007A22D4();
  v41 = v17;
  v42 = v7;
  v18 = *(v2 + 8);
  v43 = v2 + 8;
  v44 = v1;
  v39 = v18;
  v18(v7, v1);
  v38 = *(v9 + 8);
  v38(v14, v8);
  v19 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor;
  v20 = [*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor) isAirplaneModeEnabled];
  v21 = *(v0 + v19);
  if (v20)
  {
    [v21 hasWAPICapability];
    sub_1007A2154();
    v22 = v42;
    sub_100796C94();
    v32(v37, v14, v8);
    [v31 bundleForClass:v34];
    v23 = v44;
    v35(v40, v22, v44);
  }

  else
  {
    if ([v21 hasCellularCapability])
    {
      [*(v0 + v19) hasCellularConnection];
    }

    [*(v0 + v19) hasWAPICapability];
    sub_1007A2154();
    v22 = v42;
    sub_100796C94();
    v32(v37, v14, v8);
    [v31 bundleForClass:v34];
    v23 = v44;
    v35(v40, v22, v44);
  }

  v24 = sub_1007A22D4();
  v26 = v25;
  v39(v22, v23);
  v38(v14, v8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      sub_100660BB4(v30, v41, v24, v26, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

id sub_1002CF6CC()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  if ([*(*sub_10000E3E8(v1 v1[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] == 2)
  {
    return [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"pause" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  }

  else
  {
    return sub_1002CF778(1);
  }
}

id sub_1002CF778(char a1)
{
  v3 = sub_100796BB4();
  v63 = *(v3 - 8);
  __chkstk_darwin(v3);
  v64 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v56[-v11];
  __chkstk_darwin(v10);
  v14 = &v56[-v13];
  v15 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  if ([*(*sub_10000E3E8(v15 v15[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] == 2)
  {
    (*(v6 + 16))(v14, v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v5);
    v16 = sub_10079ACC4();
    v17 = sub_1007A29D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "play - already playing", v18, 2u);
    }

    return (*(v6 + 8))(v14, v5);
  }

  else if (a1)
  {
    v61 = v9;
    v62 = v3;
    v20 = *(v6 + 16);
    v60 = (v6 + 16);
    v59 = v20;
    v20(v12, v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v5);
    v21 = sub_10079ACC4();
    v22 = sub_1007A29D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "play - update bookmark if needed", v23, 2u);
    }

    v24 = *(v6 + 8);
    v24(v12, v5);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009864(v15, v67);
    v26 = sub_10000E3E8(v67, v67[3]);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = sub_1002D7380;
    v28[4] = v25;
    v29 = *v26;
    v30 = *(*v26 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
    swift_retain_n();
    swift_retain_n();
    v31 = [v30 currentAudiobook];
    if (v31)
    {
      v32 = v31;
      v33 = *(v29 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_persistenceController);
      aBlock[4] = sub_1002D7388;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D6FD4;
      aBlock[3] = &unk_100A13BC0;
      v34 = _Block_copy(aBlock);

      [v33 bookmarkTimeForAudiobook:v32 completion:v34];
      _Block_release(v34);

      swift_unknownObjectRelease();
    }

    else
    {
      v58 = v24;
      v35 = [objc_opt_self() now];
      v36 = v64;
      sub_100796B64();

      v37 = objc_allocWithZone(NSError);
      v38 = sub_1007A2214();
      v39 = [v37 initWithDomain:v38 code:0 userInfo:0];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = Strong;
        v42 = v61;
        v59(v61, Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v5);
        v60 = v39;
        v43 = v39;

        v44 = v43;
        v45 = sub_10079ACC4();
        v46 = sub_1007A29B4();

        v47 = os_log_type_enabled(v45, v46);
        v48 = v62;
        if (v47)
        {
          v49 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v66 = v59;
          *v49 = 136315138;
          swift_getErrorValue();
          v57 = v46;
          v50 = sub_1007A3B84();
          v52 = sub_1000070F4(v50, v51, &v66);

          v53 = v49;
          v48 = v62;
          *(v53 + 1) = v52;
          _os_log_impl(&_mh_execute_header, v45, v57, "_updatePlayheadPosition(completion): error=%s", v53, 0xCu);
          sub_1000074E0(v59);
        }

        v58(v42, v5);
        v54 = v60;
        v36 = v64;
      }

      else
      {
        v55 = v39;
        v48 = v62;
        v54 = v39;
      }

      sub_10000A7C4(0, &qword_100AD1E10);

      sub_1007A2CD4();

      (*(v63 + 8))(v36, v48);
    }

    sub_1000074E0(v67);
  }

  else
  {
    return [*(*sub_10000E3E8(v15 v15[3]) + OBJC:"play" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  }
}

uint64_t sub_1002CFF9C()
{
  sub_10000A7C4(0, &qword_100AD1E10);

  sub_1007A2CD4();
}

uint64_t sub_1002D0010()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
    v2 = result;
    swift_beginAccess();
    sub_100009864(v2 + v1, v3);

    [*(*sub_10000E3E8(v3 v3[3]) + OBJC:"play" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    return sub_1000074E0(v3);
  }

  return result;
}

id sub_1002D00B8()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  result = [*(*sub_10000E3E8(v9 v9[3]) + OBJC:"pausedDuration" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v11 > 3600.0)
  {
    v44 = v2;
    sub_100009864(v9, v47);
    v12 = sub_10000E3E8(v47, v47[3]);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    v14[4] = 0;
    v15 = *v12;
    v16 = *(v15 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
    swift_retain_n();
    v17 = [v16 currentAudiobook];
    if (v17)
    {
      v18 = v17;
      v19 = *(v15 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_persistenceController);
      aBlock[4] = sub_1002D7C44;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D6FD4;
      aBlock[3] = &unk_100A13D00;
      v20 = _Block_copy(aBlock);

      [v19 bookmarkTimeForAudiobook:v18 completion:v20];
      _Block_release(v20);

      swift_unknownObjectRelease();
      return sub_1000074E0(v47);
    }

    v21 = [objc_opt_self() now];
    sub_100796B64();

    v22 = objc_allocWithZone(NSError);
    v23 = sub_1007A2214();
    v24 = [v22 initWithDomain:v23 code:0 userInfo:0];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      (*(v44 + 16))(v4, Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v1);
      v27 = v24;

      v28 = v27;
      v29 = sub_10079ACC4();
      v30 = sub_1007A29B4();

      v43 = v30;
      if (!os_log_type_enabled(v29, v30))
      {

        (*(v44 + 8))(v4, v1);
        goto LABEL_9;
      }

      v31 = swift_slowAlloc();
      v42 = v31;
      v41 = swift_slowAlloc();
      v46 = v41;
      *v31 = 136315138;
      swift_getErrorValue();
      v39 = v29;
      v32 = sub_1007A3B84();
      v34 = sub_1000070F4(v32, v33, &v46);
      v40 = v28;
      v35 = v44;
      v36 = v34;

      v37 = v42;
      *(v42 + 1) = v36;
      v38 = v39;
      _os_log_impl(&_mh_execute_header, v39, v43, "_updatePlayheadPosition(completion): error=%s", v37, 0xCu);
      sub_1000074E0(v41);

      (*(v35 + 8))(v4, v1);
      v24 = v40;
    }

LABEL_9:
    (*(v6 + 8))(v8, v5);

    return sub_1000074E0(v47);
  }

  return result;
}

uint64_t sub_1002D0650(uint64_t a1, float a2)
{
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0.0)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = v10 - 1;
      if (v11)
      {
        v12 = (a1 + 36);
        v13 = *(a1 + 32);
        do
        {
          v14 = *v12++;
          v15 = v14;
          if (vabds_f32(v14, a2) < vabds_f32(v13, a2))
          {
            v13 = v15;
          }

          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v16 = result;
      (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, 1.0);

      v17 = sub_10079ACC4();
      v18 = sub_1007A29B4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 134218242;
        *(v19 + 4) = a2;
        *(v19 + 12) = 2080;
        v21 = sub_1007A25F4();
        v23 = sub_1000070F4(v21, v22, &v25);

        *(v19 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to find a closest playback rate for raw rate: %f, playbackRates: %s", v19, 0x16u);
        sub_1000074E0(v20);
      }

      return (*(v6 + 8))(v9, v16);
    }
  }

  return result;
}

uint64_t sub_1002D08A0(void *a1)
{
  v1 = sub_1002CD404();
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = v1;
    if (qword_100AD1240 != -1)
    {
LABEL_17:
      swift_once();
    }

    v31 = qword_100AD4DA0;
    sub_1001F1160(&unk_100AD36E0);
    v4 = 0;
    v5 = -1.0;
    v6 = 32;
    v7 = v3;
    v30 = v3;
    do
    {
      v8 = *(v7 + v6);
      isa = sub_1007A27E4().super.super.isa;
      v10 = [v31 stringForObjectValue:isa];

      if (v10)
      {
        v11 = sub_1007A2254();
        v13 = v12;
      }

      else
      {
        sub_1001F1160(&unk_100AD5090);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10080B690;
        *(v14 + 56) = &type metadata for Float;
        *(v14 + 64) = &protocol witness table for Float;
        *(v14 + 32) = v8;
        v11 = sub_1007A2284();
        v13 = v15;
      }

      v33 = v11;
      *&v34 = v13;
      v36._countAndFlagsBits = 38851;
      v36._object = 0xA200000000000000;
      sub_1007A23D4(v36);
      v16 = v33;
      v17 = sub_1007A2214();
      v35[0] = NSFontAttributeName;
      v35[4] = sub_10000A7C4(0, &unk_100AEB3C0);
      v35[1] = a1;
      v3 = sub_1007A3924();
      v18 = NSFontAttributeName;
      v19 = a1;
      sub_1000077D8(v35, &v33, &unk_100ADA6C0);
      v20 = v33;
      v21 = sub_1002F9CF4(v33);
      if (v22)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v3[(v21 >> 6) + 8] |= 1 << v21;
      *(v3[6] + 8 * v21) = v20;
      sub_1000076D4(&v34, (v3[7] + 32 * v21));
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_16;
      }

      v3[2] = v25;
      sub_100007840(v35, &unk_100ADA6C0);
      type metadata accessor for Key(0);
      sub_100022864(&qword_100AEDDB0, type metadata accessor for Key);
      v26 = sub_1007A2024().super.isa;

      [v17 sizeWithAttributes:v26];
      v28 = v27;

      if (v5 < v28)
      {
        v5 = v28;
        v4 = v16;
      }

      v6 += 4;
      --v2;
      v7 = v30;
    }

    while (v2);
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1002D0C04()
{
  v1 = sub_100799004();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v6 = *(*sub_10000E3E8(v5, v5[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset);
  if (!v6)
  {
    return 0;
  }

  (*(v2 + 104))(v4, enum case for BooksFeatureFlag.unifiedProductPage(_:), v1);
  sub_100022864(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
  sub_100005920(&qword_100AD7778, &unk_100AD9570);
  v7 = v6;
  v8 = sub_1007A2554();
  (*(v2 + 8))(v4, v1);
  if (v8)
  {
    [v7 supportsUnifiedProductPage];
    v9 = [v7 editionKind];
    if (v9)
    {
      v10 = v9;
      sub_1007A2254();
    }

    v12 = objc_allocWithZone(sub_100797CD4());
    v13 = sub_100797CB4();

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1002D0E58()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v2 = [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v4 = [v2 chapters];
  swift_unknownObjectRelease();
  sub_1001F1160(&qword_100AED9C0);
  v5 = sub_1007A25E4();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v6 = sub_1007A38D4();
  if (!v6)
  {
LABEL_15:

    return v3;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_1007A37F4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = sub_1007A3784();
      }

      else
      {
        v16 = *(v5 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v17 = [v16 title];
      if (v17)
      {
        v9 = v17;
        v10 = sub_1007A2254();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      ++v8;
      [v16 duration];
      v14 = v13;
      swift_unknownObjectRelease();
      type metadata accessor for AudiobookNowPlayingViewModel.Chapter();
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v12;
      v15[4] = v14;
      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
    }

    while (v6 != v8);

    return v18;
  }

  __break(1u);
  return result;
}

char *sub_1002D1098()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v2 = [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = [v2 supplementalContents];
  swift_unknownObjectRelease();
  sub_10000A7C4(0, &qword_100AE5C30);
  v4 = sub_1007A25E4();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v5 = sub_1007A38D4();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = sub_1003BD1B0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v4;
    v20 = v4 & 0xC000000000000001;
    v9 = v4;
    do
    {
      if (v20)
      {
        v10 = sub_1007A3784();
      }

      else
      {
        v10 = *(v8 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = [v10 title];
      v13 = sub_1007A2254();
      v15 = v14;

      v16 = [v11 assetIdentifier];
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_1003BD1B0((v17 > 1), v18 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[3 * v18];
      v19[4] = v13;
      v19[5] = v15;
      v19[6] = v16;
      v8 = v9;
    }

    while (v5 != v7);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D12CC(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1002D131C(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor__activeMode) = a1;
  return [*(v2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_routeDetector) setRouteDetectionEnabled:a1 & 1];
}

uint64_t sub_1002D1358(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_10022569C(v3, v4);
  (*(v5 + 96))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1002D13E8(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_10022569C(v3, v4);
  (*(v5 + 192))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1002D1478(float a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = fminf(a1, 1.0);
  v3 = *v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_10022569C(v3, v4);
  (*(v5 + 248))(v4, v5, v2);
  return swift_endAccess();
}

id sub_1002D1520(void *a1)
{
  v2 = v1;
  v88 = sub_10079ACE4();
  v4 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  v89 = v4;
  if (Strong)
  {
    v8 = Strong;
    v9 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v10 = [*(*sub_10000E3E8(v9 *(v9 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v10)
    {
      v11 = [v10 title];
      swift_unknownObjectRelease();
      v12 = sub_1007A2254();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = *(v8 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v12;
    v91 = v14;
    v16 = v15;
    sub_10079B9B4();
    swift_unknownObjectRelease();
    v4 = v89;
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v20 = [*(*sub_10000E3E8(v19 *(v19 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v20)
    {
      v21 = [v20 author];
      swift_unknownObjectRelease();
      v22 = sub_1007A2254();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = *(v18 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v22;
    v91 = v24;
    v26 = v25;
    sub_10079B9B4();
    swift_unknownObjectRelease();
    v4 = v89;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v28 = [*(*sub_10000E3E8(v27 *(v27 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v28)
    {
      [v28 isAudiobookPreview];
      swift_unknownObjectRelease();
    }

    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BBA0();
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v30 = [*(*sub_10000E3E8(v29 *(v29 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v30)
    {
      v31 = [v30 assetID];
      swift_unknownObjectRelease();
      sub_1007A2254();
    }

    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055B77C();
    swift_unknownObjectRelease();

    v4 = v89;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D0E58();
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055B898();
    v4 = v89;

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D1098();
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BD74();
    v4 = v89;

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    v33 = [*(*sub_10000E3E8(v32 *(v32 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (v33)
    {
      [v33 isSG];
      swift_unknownObjectRelease();
    }

    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BE00();
    swift_unknownObjectRelease();
  }

  v34 = *&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork];
  *&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork] = 0;

  if (a1)
  {
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = v35;
      v37 = *(v6 + 1);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = v36;
      v39[4] = v37;
      v94 = sub_1002D7858;
      v95 = v39;
      aBlock = _NSConcreteStackBlock;
      v91 = 1107296256;
      v92 = sub_1002166B8;
      v93 = &unk_100A13D78;
      v40 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      [a1 artworkWithCompletion:v40];
      _Block_release(v40);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v41 = v88;
      goto LABEL_33;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10055B390(0);
    swift_unknownObjectRelease();
  }

  v41 = v88;
  if (a1)
  {
LABEL_33:
    v42 = [a1 assetID];
    if (!v42)
    {
      sub_1007A2254();
      v42 = sub_1007A2214();
      v41 = v88;
    }

    v43 = *&v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_storeManager];
    if (v43)
    {
      v44 = [v43 clientApplicationController];
      v45 = [swift_unknownObjectRetain() assetDownloadProgressWithStoreId:v42];
      swift_unknownObjectRelease();

      if (v45)
      {
        v85 = v44;
        v46 = v87;
        (*(v4 + 16))(v87, &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v41);
        v47 = v2;
        v83 = v45;
        v48 = v45;
        v49 = sub_10079ACC4();
        v50 = sub_1007A2994();
        v86 = v48;

        v51 = v47;
        v84 = v50;
        if (os_log_type_enabled(v49, v50))
        {
          v82 = v49;
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v52 = 136315650;
          v54 = &v47[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
          swift_beginAccess();
          v55 = [*(*sub_10000E3E8(v54 *(v54 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
          if (v55)
          {
            v56 = [v55 title];
            swift_unknownObjectRelease();
            v57 = sub_1007A2254();
            v59 = v58;
          }

          else
          {
            v57 = 0;
            v59 = 0xE000000000000000;
          }

          v61 = sub_1000070F4(v57, v59, &v96);

          *(v52 + 4) = v61;
          *(v52 + 12) = 2080;
          v62 = [*(*sub_10000E3E8(v54 *(v54 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
          if (v62)
          {
            v63 = [v62 assetID];
            swift_unknownObjectRelease();
            v64 = sub_1007A2254();
            v66 = v65;
          }

          else
          {
            v64 = 0;
            v66 = 0;
          }

          v67 = v89;
          v68 = v87;
          aBlock = v64;
          v91 = v66;
          sub_1001F1160(&qword_100AD4F30);
          v69 = sub_1007A22E4();
          v71 = sub_1000070F4(v69, v70, &v96);

          *(v52 + 14) = v71;
          *(v52 + 22) = 2112;
          v72 = v86;
          *(v52 + 24) = v86;
          *v53 = v83;
          v73 = v72;
          v74 = v82;
          _os_log_impl(&_mh_execute_header, v82, v84, "audiobookDidChange to %s, assetID: %s, with download progress: %@", v52, 0x20u);
          sub_100007840(v53, &unk_100AD9480);

          swift_arrayDestroy();

          (*(v67 + 8))(v68, v88);
          v51 = v47;
        }

        else
        {

          (*(v4 + 8))(v46, v41);
        }

        v75 = *&v51[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState];
        *&v51[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_downloadState] = 1;
        sub_1002CD208(v75);
        if (swift_unknownObjectWeakLoadStrong())
        {
          type metadata accessor for AudiobookNowPlayingPresenter();
          sub_10055B8D4();
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v76 = v86;
          [v86 doubleValue];
          type metadata accessor for AudiobookNowPlayingPresenter();
          sub_10055B8C0();
          swift_unknownObjectRelease();
        }

        else
        {
        }

LABEL_56:
        swift_unknownObjectRelease();
        goto LABEL_57;
      }
    }

    else
    {
    }

    v60 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
    swift_beginAccess();
    sub_10000E3E8(v60, *(v60 + 3));
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for AudiobookNowPlayingPresenter();
      sub_10055B8D4();
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for AudiobookNowPlayingPresenter();
      sub_10055B8C0();
      swift_unknownObjectRelease();
    }

    goto LABEL_56;
  }

LABEL_57:
  sub_10000A7C4(0, &qword_100AD1E10);
  v77 = sub_1007A2D74();
  v78 = &_dispatch_main_q;
  if (v77 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v79 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_wantsPlayAfterOpen;
  if (v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_wantsPlayAfterOpen] != 1)
  {
    return sub_1002D5C74();
  }

  v80 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  if (![*(*sub_10000E3E8(v80 *(v80 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)])
  {
    return sub_1002D5C74();
  }

  swift_unknownObjectRelease();
  v2[v79] = 0;
  sub_1002CF778(1);
  return AriadneTrace_AudiobookBeginPlayback();
}

void sub_1002D2370(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = objc_allocWithZone(UIImage);
      v5 = a1;
      v6 = [v4 initWithCGImage:v5];
      v7 = *&v3[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork];
      *&v3[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork] = v6;
      v8 = v6;

      sub_10055B390(v6);
    }

    else
    {
      sub_10055B390(0);
      v9 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
      swift_beginAccess();
      sub_100009864(&v3[v9], v13);
      sub_10000E3E8(v13, v13[3]);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10000A7C4(0, &qword_100AD1E10);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = sub_1002D7864;
      *(v12 + 32) = v10;
      *(v12 + 40) = vdupq_n_s64(0x4098000000000000uLL);
      swift_retain_n();

      sub_1007A2CD4();

      sub_1000074E0(v13);
    }
  }
}

uint64_t sub_1002D257C(void *a1)
{
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055B8AC();
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 && ((v4 = [a1 customTitle]) != 0 || (v4 = objc_msgSend(a1, "title")) != 0))
    {
      v5 = v4;
      v6 = sub_1007A2254();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = *(v3 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v31.value = v6;
    *&v31.timescale = v8;
    v10 = v9;
    sub_10079B9B4();
    swift_unknownObjectRelease();
  }

  sub_1002D28E8();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    [v11 timeRangeInAudiobook];
    value = v31.value;
    timescale = v31.timescale;
    LODWORD(v14) = v31.flags;
    epoch = v31.epoch;
    swift_unknownObjectRelease();
  }

  else
  {
    value = sub_1007A3084(0.0, 1);
    timescale = v16;
    epoch = v17;
    v14 = HIDWORD(v16);
  }

  v31.value = value;
  v31.timescale = timescale;
  v31.flags = v14;
  v31.epoch = epoch;
  Seconds = CMTimeGetSeconds(&v31);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    if (a1)
    {
      [a1 duration];
      v22 = v21;
    }

    else
    {
      v22 = 1.0;
    }

    v23 = *(v20 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v31.value = 0;
    v24 = v23;
    sub_10079B9B4();
    v25 = *(v20 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v31.value = -v22;
    v26 = v25;
    sub_10079B9B4();
    v27 = *(v20 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v31.value = 0;
    v28 = v27;
    sub_10079B9B4();
    v29 = *(v20 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v31.value = Seconds;
    v30 = v29;
    sub_10079B9B4();
    [*(v20 + 104) setAssetAudiobookStatusTrackTimeRemaining:v22];
    [*(v20 + 104) setAssetAudiobookStatusTrackProgress:0.0];
    [*(v20 + 104) setAssetAudiobookStatusTrackDuration:v22 + 0.0];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002D28E8()
{
  v1 = sub_1007A1C54();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v7 = sub_1007A2D74();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1002D749C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A13C88;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022864(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_1002D2BDC(void *a1)
{
  v2 = a1;
  if (a1)
  {
    v2 = [objc_allocWithZone(UIImage) initWithCGImage:a1];
  }

  v3 = *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork);
  *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork) = v2;
  v4 = v2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10055B390(v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002D2C88(uint64_t a1, double a2, double a3)
{
  v7 = sub_10079ACE4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = (v3 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v14 = [*(*sub_10000E3E8(v13 v13[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (!v14)
  {
    return swift_unknownObjectRelease();
  }

  v15 = v14;
  v16 = [v14 chapters];
  sub_1001F1160(&qword_100AED9C0);
  v17 = sub_1007A25E4();

  if (v17 >> 62)
  {
    v18 = sub_1007A38D4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 <= a1)
  {
    (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v7);
    swift_unknownObjectRetain();
    v19 = sub_10079ACC4();
    LOBYTE(v18) = sub_1007A29B4();
    if (!os_log_type_enabled(v19, v18))
    {

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      return (*(v8 + 8))(v10, v7);
    }

    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2048;
    v33 = [v15 chapters];
    v34 = sub_1007A25E4();

    if (!(v34 >> 62))
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

      *(v17 + 14) = v35;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v19, v18, "Observing %ld for chapterIndex when chapter count is %ld", v17, 0x16u);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v8 + 8))(v10, v7);
    }

LABEL_26:
    v35 = sub_1007A38D4();
    goto LABEL_18;
  }

  v19 = [v15 chapters];
  v7 = sub_1007A25E4();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v20 = sub_1007A3784();
    goto LABEL_10;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = *(v7 + 8 * a1 + 32);
  swift_unknownObjectRetain();
LABEL_10:

  [v20 duration];
  v22 = v21 - a2;
  [v20 duration];
  if (v23 == 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = a2 / v23;
  }

  v25 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = a2;
  v26 = v25;
  sub_10079B9B4();
  v27 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = -v22;
  v28 = v27;
  sub_10079B9B4();
  v29 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v24;
  v30 = v29;
  sub_10079B9B4();
  v31 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = a3;
  v32 = v31;
  sub_10079B9B4();
  [*(v12 + 104) setAssetAudiobookStatusTrackTimeRemaining:v22];
  [*(v12 + 104) setAssetAudiobookStatusTrackProgress:v24];
  [*(v12 + 104) setAssetAudiobookStatusTrackDuration:v22 + a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_1002D31C8(char a1, char a2, void *a3)
{
  v4 = v3;
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = *(v9 + 16);
  v33 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger;
  v34 = v14;
  v14(&v32 - v12, &v4[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v8);
  v15 = sub_10079ACC4();
  v16 = sub_1007A29D4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v8;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "_triggerClose", v17, 2u);
    v8 = v32;
  }

  v18 = *(v9 + 8);
  v18(v13, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v4;
    *(v21 + 32) = a1 & 1;
    *(v21 + 33) = a2 & 1;
    *(v21 + 40) = a3;
    v22 = a3;
    v23 = v4;
    v24 = v20;
    v25 = [v24 bc_contextualPresentedViewController];
    if (v25)
    {
      v26 = v25;
      aBlock[4] = sub_1002D7C04;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A13F08;
      v27 = _Block_copy(aBlock);

      [v26 dismissViewControllerAnimated:1 completion:v27];

      _Block_release(v27);
    }

    else
    {
      sub_1002D407C(v24, v23, a1 & 1, a2 & 1, a3);
    }
  }

  else
  {
    v28 = v35;
    v34(v35, &v4[v33], v8);
    v29 = sub_10079ACC4();
    v30 = sub_1007A29B4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Can't close without a view controller", v31, 2u);
    }

    v18(v28, v8);
  }
}

void sub_1002D358C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  v9 = *(*sub_10000E3E8(v8, *(v8 + 3)) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_productProfile);
  if (v9)
  {
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v4);

    v10 = sub_10079ACC4();
    v11 = sub_1007A29D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = v2;
      v13 = v12;
      v14 = swift_slowAlloc();
      *&v27 = v14;
      *v13 = 136315138;
      v26[0] = a1;

      sub_1001F1160(&unk_100ADA6B0);
      v15 = sub_1007A22E4();
      v17 = sub_1000070F4(v15, v16, &v27);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "productProfileDidChange(to:) newProductProfile=%s", v13, 0xCu);
      sub_1000074E0(v14);

      v2 = v25;
    }

    (*(v5 + 8))(v7, v4);
    sub_10058096C(v9);

    v18 = objc_allocWithZone(AEUserPublishingProductProfile);
    isa = sub_1007A2024().super.isa;

    v20 = [v18 initWithProfileDictionary:isa];

    v21 = [objc_allocWithZone(BCFutureValue) initWithValue:v20];
    type metadata accessor for BuyButtonModuleFactory();
    v22 = v2;
    sub_10071E420(v21, &v27);
    v23 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_buyButtonPresenter;
    swift_beginAccess();
    sub_1002391EC(&v27, &v22[v23], &unk_100ADA690);
    swift_endAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    sub_1000077D8(&v22[v23], v26, &unk_100ADA690);
    if (v26[3])
    {
      sub_1001F1160(&qword_100ADA6A0);
      sub_1001F1160(&qword_100ADA6A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
      }
    }

    else
    {
      sub_100007840(v26, &unk_100ADA690);
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
    }

    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055B814(&v27);

    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v24 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_buyButtonPresenter;
    swift_beginAccess();
    sub_1002391EC(&v27, &v2[v24], &unk_100ADA690);
    swift_endAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055B814(&v27);
    swift_unknownObjectRelease();
  }

  sub_100007840(&v27, &qword_100AD4FA0);
}

uint64_t sub_1002D3AA0()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BBF0();
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    [*(*sub_10000E3E8(v2 v2[3]) + OBJC:"initialDuration" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?sleepTimer)];
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BC60();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002D3BC4(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 2)
      {
        *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError) = 0;
        goto LABEL_18;
      }

LABEL_12:
      if (a1 > 1)
      {
        goto LABEL_18;
      }

LABEL_17:
      *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState) = 2;
      goto LABEL_18;
    }

    v10 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    if ([*(*sub_10000E3E8(v10 v10[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)])
    {
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

LABEL_16:
    sub_1002D31C8(1, 1, 0);
    goto LABEL_17;
  }

  if (a1 == 4)
  {
    goto LABEL_16;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v3 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState;
  if (*(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
      swift_beginAccess();
      if (*(*sub_10000E3E8(v6, v6[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming) == 1 && (v7 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v8 = v7;
        v9 = v5;
        [v8 audiobookNowPlayingViewController:v9 shouldStream:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    *(v1 + v3) = 2;
  }

LABEL_18:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005591B4(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002D3DC0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController;
    if (*(a1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController))
    {
    }

    else
    {
      v10 = Strong;
      v4 = [objc_allocWithZone(BKTransferLockController) init];
      v5 = *(a1 + v3);
      *(a1 + v3) = v4;
      v6 = v4;

      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1002D7850;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A13D28;
      v8 = _Block_copy(aBlock);
      v9 = v10;

      [v6 resolveTransferLockWithPresentingViewController:v9 completion:v8];
      _Block_release(v8);
    }
  }
}

void sub_1002D3F44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController];
    *&Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController] = 0;
  }
}

uint64_t sub_1002D3FA4(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v3, v3[3]);
  v4 = sub_100462804();
  sub_1002D0650(v4, a1);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BB28();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002D407C(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v51 = a5;
  v52 = a3;
  v53 = a4;
  v54 = sub_10079ACE4();
  v7 = *(v54 - 8);
  v8 = __chkstk_darwin(v54);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - v14;
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v18 = objc_opt_self();
  result = [v18 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = result;
  [result postEvent:kBETestDriverOpenAnimationStart sender:a1];

  result = [v18 shared];
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v21 = result;
  [result postEvent:kBETestDriverOpenAnimationSetupStart sender:a1];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ([Strong audiobookNowPlayingViewControllerShouldPauseOnClose:a1])
    {
      v23 = (a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
      swift_beginAccess();
      [*(*sub_10000E3E8(v23 v23[3]) + OBJC:"pause" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    }

    swift_unknownObjectRelease();
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = v54;
    (*(v7 + 16))(v17, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
    v27 = sub_10079ACC4();
    v28 = sub_1007A29D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Closing via .assetViewControllerDelegate", v29, 2u);
    }

    (*(v7 + 8))(v17, v26);
    [v25 assetViewController:a1 willClose:v52 & 1];
    [v25 assetViewController:a1 requestClose:1 finishedConsuming:v53 & 1 error:0 withErrorBlock:0];
    return swift_unknownObjectRelease();
  }

  else
  {
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_requestingCloseMinified;
      v33 = *(v7 + 16);
      v34 = v54;
      if (*(a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_requestingCloseMinified))
      {
        v35 = v50;
        v33(v50, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
        v36 = sub_10079ACC4();
        v37 = sub_1007A29B4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Request close already in progress, avoiding reentrant close", v38, 2u);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return (*(v7 + 8))(v35, v34);
      }

      else
      {
        v33(v12, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
        v43 = sub_10079ACC4();
        v44 = sub_1007A29D4();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Closing via .delegate", v45, 2u);
        }

        (*(v7 + 8))(v12, v34);
        *(a2 + v32) = 1;
        v46 = v51;
        if (v51)
        {
          v56 = v51;
          type metadata accessor for AudiobookPlayerError(0);
          sub_10000A7C4(0, &qword_100ADA6D0);
          v47 = v46;
          swift_dynamicCast();
          v48 = v55;
        }

        else
        {
          v48 = 0;
        }

        [v31 audiobookNowPlayingViewControllerRequestCloseMinified:a1 error:v48];

        result = swift_unknownObjectRelease();
        *(a2 + v32) = 0;
      }
    }

    else
    {
      v39 = v54;
      (*(v7 + 16))(v15, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
      v40 = sub_10079ACC4();
      v41 = sub_1007A29B4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Can't close, no usable delegate", v42, 2u);
      }

      return (*(v7 + 8))(v15, v39);
    }
  }

  return result;
}

void sub_1002D4694(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v43 = a6;
  v45 = a5;
  v44 = sub_10079ACE4();
  v9 = *(v44 - 8);
  v10 = __chkstk_darwin(v44);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = sub_1001F1160(&unk_100ADB5C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v18 = &v43 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {

      goto LABEL_5;
    }

    sub_10000A7C4(0, &qword_100AD1E10);
    sub_1000077D8(a1, v18, &unk_100ADB5C0);
    v33 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v20;
    *(v34 + 24) = a3;
    v35 = v45;
    v36 = v43;
    *(v34 + 32) = v45;
    *(v34 + 40) = v36;
    sub_1002D73A4(v18, v34 + v33);
    v37 = v20;
    sub_1000260E8(v35);
    sub_1007A2CD4();
  }

  else
  {
    if (a2)
    {
LABEL_5:
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      v22 = v44;
      if (v21)
      {
        v23 = v21;
        (*(v9 + 16))(v14, v21 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v44);
        swift_errorRetain();

        swift_errorRetain();
        v24 = sub_10079ACC4();
        v25 = sub_1007A29B4();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v46 = v27;
          *v26 = 136315138;
          swift_getErrorValue();
          v28 = sub_1007A3B84();
          v30 = sub_1000070F4(v28, v29, &v46);

          *(v26 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v24, v25, "_updatePlayheadPosition(completion): error=%s", v26, 0xCu);
          sub_1000074E0(v27);
        }

        v31 = (*(v9 + 8))(v14, v22);
        v32 = v45;
        if (!v45)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v31 = swift_errorRetain();
        v32 = v45;
        if (!v45)
        {
          goto LABEL_10;
        }
      }

      v32(v31);
LABEL_10:

      return;
    }

    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      (*(v9 + 16))(v12, v38 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v44);

      v40 = sub_10079ACC4();
      v41 = sub_1007A29B4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "_updatePlayheadPosition(completion): self is nil", v42, 2u);
      }

      v38 = (*(v9 + 8))(v12, v44);
    }

    if (v45)
    {
      v45(v38);
    }
  }
}

uint64_t sub_1002D4B78(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v65 = a4;
  v67 = a3;
  v69 = a2;
  v7 = sub_1001F1160(&unk_100ADB5C0);
  v8 = __chkstk_darwin(v7 - 8);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v60 - v10;
  v11 = sub_100796BB4();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = __chkstk_darwin(v11);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v60 - v14;
  v15 = sub_10079ACE4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v63 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger;
  v22 = *(v16 + 16);
  v22(&v60 - v19, &a1[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v15);
  v23 = sub_10079ACC4();
  v24 = sub_1007A29D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a5;
    _os_log_impl(&_mh_execute_header, v23, v24, "_updatePlayheadPosition(completion): setting position in audiobook %f", v25, 0xCu);
  }

  v26 = *(v16 + 8);
  v26(v20, v15);
  v27 = &a1[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  [*(*sub_10000E3E8(v27 *(v27 + 3)) + OBJC:"pausedDuration" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v28 > 3600.0)
  {
    v61 = a1;
    v29 = &a1[v21];
    v30 = v63;
    v22(v63, v29, v15);
    v31 = sub_10079ACC4();
    v32 = sub_1007A29D4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "_updatePlayheadPosition(completion): update session indicator", v33, 2u);
    }

    v26(v30, v15);
    swift_beginAccess();
    v34 = *(v27 + 3);
    v35 = *(v27 + 4);
    sub_10022569C(v27, v34);
    (*(v35 + 120))(v34, v35, a5);
    swift_endAccess();
    a1 = v61;
  }

  v36 = swift_allocObject();
  v37 = v69;
  v36[2] = a1;
  v36[3] = v37;
  v38 = v66;
  v39 = v67;
  v36[4] = v67;
  sub_1000077D8(v65, v38, &unk_100ADB5C0);
  v40 = v70;
  v41 = v71;
  v42 = *(v70 + 48);
  if (v42(v38, 1, v71) != 1)
  {
    (*(v40 + 32))(v68, v38, v41);
    v44 = v37;
    v45 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_lastUserProgressChangeTimestamp;
    swift_beginAccess();
    v46 = v64;
    sub_1000077D8(&a1[v45], v64, &unk_100ADB5C0);
    v47 = v42(v46, 1, v41);
    v48 = a1;
    v49 = v47;
    sub_1000260E8(v44);
    v50 = v48;
    sub_100007840(v46, &unk_100ADB5C0);
    if (v49 == 1)
    {
LABEL_10:
      sub_10000E3E8(v27, *(v27 + 3));

      sub_100462D98(sub_1002D748C, v36, a5);

      return (*(v70 + 8))(v68, v71);
    }

    swift_beginAccess();
    v52 = v71;
    a1 = v48;
    if (v42(&v48[v45], 1, v71))
    {
      (*(v70 + 8))(v68, v52);
      swift_endAccess();
    }

    else
    {
      v53 = v70;
      v54 = v62;
      (*(v70 + 16))(v62, &v48[v45], v52);
      swift_endAccess();
      v55 = v52;
      v56 = sub_100796B84();
      v57 = *(v53 + 8);
      v57(v54, v55);
      if (v56 == -1)
      {
        goto LABEL_10;
      }

      v57(v68, v71);
    }

    v37 = v69;
    goto LABEL_16;
  }

  sub_1000260E8(v37);
  v43 = a1;
  sub_100007840(v38, &unk_100ADB5C0);
LABEL_16:
  sub_10000A7C4(0, &qword_100AD1E10);
  v58 = swift_allocObject();
  v58[2] = a1;
  v58[3] = v37;
  v58[4] = v39;
  sub_1000260E8(v37);
  v59 = a1;
  sub_1007A2CD4();
}

uint64_t sub_1002D52A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v8 = a2;
  sub_1000260E8(a3);
  sub_1007A2CD4();
}

void sub_1002D535C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork);
    *(Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork) = a1;
    v5 = a1;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10055B390(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1002D5400(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"listeningSessionStartTime" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v3 = v2;
  v4 = *sub_10000E3E8(v1, v1[3]);
  swift_endAccess();
  result = [*(v4 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) currentAudiobook];
  if (!result)
  {
    return result;
  }

  v6 = result;
  CMTimeMakeWithSeconds(&v37.start, v3, 1000000000);
  v7 = *&v37.start.timescale;
  epoch = v37.start.epoch;
  value = v37.start.value;
  v8 = [v6 chapters];
  sub_1001F1160(&qword_100AED9C0);
  v9 = sub_1007A25E4();

  if (v9 >> 62)
  {
LABEL_35:
    v10 = sub_1007A38D4();

    if (v10 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = 0;
  v32 = v6;
  for (i = [v6 chapters]; ; i = objc_msgSend(v32, "chapters", v31))
  {
    v13 = i;
    v14 = sub_1007A25E4();

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_1007A3784();
    }

    else
    {
      if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v15 = *(v14 + 8 * v11 + 32);
      swift_unknownObjectRetain();
    }

    v35 = v15;
    [v15 timeRangeInAudiobook];
    v16 = v37.start.value;
    timescale = v37.start.timescale;
    flags = v37.start.flags;
    v20 = v37.start.epoch;
    v19 = v37.duration.value;
    v21 = v37.duration.timescale;
    v22 = v37.duration.flags;
    v23 = v37.duration.epoch;
    time.value = value;
    *&time.timescale = v7;
    time.epoch = epoch;
    v24 = CMTimeRangeContainsTime(&v37, &time);
    if (v24)
    {
      v37.start.value = v16;
      v37.start.timescale = timescale;
      v37.start.flags = flags;
      v37.start.epoch = v20;
      Seconds = CMTimeGetSeconds(&v37.start);
      v37.start.value = v19;
      v37.start.timescale = v21;
      v37.start.flags = v22;
      v37.start.epoch = v23;
      v26 = (v3 - Seconds) / CMTimeGetSeconds(&v37.start);
    }

    else
    {
      v26 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = v32;
    if (Strong)
    {
      v28 = Strong;
      swift_unknownObjectRelease();
      if (v35 == v28)
      {
        break;
      }
    }

    if (v24)
    {
      v29 = 0;
      goto LABEL_21;
    }

LABEL_7:
    ++v11;
    swift_unknownObjectRelease();
    if (v31 == v11)
    {
      goto LABEL_25;
    }
  }

  if (!v24)
  {
    goto LABEL_7;
  }

  v30 = [v32 isAudiobookPreview];
  v29 = 0;
  if ((v30 & 1) == 0 && v26 > 0.01)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for AudiobookNowPlayingPresenter();
      sub_10055BA80();
      swift_unknownObjectRelease();
    }

    v29 = 1;
  }

LABEL_21:
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BA00();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v29)
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (v29)
    {
      return swift_unknownObjectRelease();
    }
  }

LABEL_25:
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AudiobookNowPlayingPresenter();
    sub_10055BA80();
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1002D586C()
{
  v38 = sub_100796CF4();
  v0 = *(v38 - 8);
  __chkstk_darwin(v38);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v32 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  sub_1007A2154();
  sub_100796C94();
  v37 = *(v7 + 16);
  v37(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = ObjCClassFromMetadata;
  v34 = objc_opt_self();
  v14 = [v34 bundleForClass:ObjCClassFromMetadata];
  v33 = *(v0 + 16);
  v15 = v38;
  v33(v2, v5, v38);
  v16 = sub_1007A22D4();
  v36 = v17;
  v18 = *(v0 + 8);
  v32[0] = v16;
  v32[1] = v0 + 8;
  v19 = v15;
  v18(v5, v15);
  v20 = v39;
  v21 = *(v40 + 8);
  v40 += 8;
  v21(v12, v39);
  sub_1007A2154();
  sub_100796C94();
  v37(v9, v12, v20);
  v22 = [v34 bundleForClass:v35];
  v23 = v19;
  v33(v2, v5, v19);
  v24 = sub_1007A22D4();
  v26 = v25;
  v27 = v5;
  v28 = v36;
  v18(v27, v23);
  v21(v12, v39);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      sub_100660BB4(v32[0], v28, v24, v26, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_1002D5C74()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v1);
  v5 = v0;
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = *(&v5->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_beginPlaybackInBackground);
    *(v8 + 8) = 1024;
    *(v8 + 10) = *(&v5->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay);

    _os_log_impl(&_mh_execute_header, v6, v7, "_attemptAutoplay beginPlaybackInBackground=%{BOOL}d allowAutoplay=%{BOOL}d", v8, 0xEu);
  }

  else
  {

    v6 = v5;
  }

  (*(v2 + 8))(v4, v1);
  v9 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay;
  if (*(&v5->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay) == 1 && *(&v5->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_beginPlaybackInBackground) == 1)
  {
    v10 = (&v5->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    result = [*(*sub_10000E3E8(v10 v10[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    if (result != 2)
    {
      sub_1002CF778(1);
      *(&v5->isa + v9) = 0;
      result = AriadneTrace_AudiobookBeginPlayback();
    }

    goto LABEL_31;
  }

  v12 = (&v5->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  result = [*(*sub_10000E3E8(v12 v12[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (!result)
  {
    goto LABEL_31;
  }

  if (*(&v5[1].isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen))
  {
    result = swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v13 = *(&v5->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen);
  v14 = [result chapters];
  sub_1001F1160(&qword_100AED9C0);
  v15 = sub_1007A25E4();

  if (v15 >> 62)
  {
LABEL_29:
    v16 = sub_1007A38D4();
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_30:
    swift_unknownObjectRelease();

    goto LABEL_31;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_13:
  v17 = 0;
  v18 = v13;
  while ((v15 & 0xC000000000000001) != 0)
  {
    v19 = sub_1007A3784();
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_22;
    }

LABEL_17:
    [v19 duration];
    if (v18 < v21)
    {
      goto LABEL_23;
    }

    [v19 duration];
    v23 = v22;
    swift_unknownObjectRelease();
    v18 = v18 - v23;
    ++v17;
    if (v20 == v16)
    {
      goto LABEL_30;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v19 = *(v15 + 8 * v17 + 32);
  swift_unknownObjectRetain();
  v20 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    [v19 duration];
    v27 = v26;
    [v19 duration];
    v28 = 0.0;
    if (v29 != 0.0)
    {
      [v19 duration];
      v28 = v18 / v30;
    }

    v31 = v27 - v18;
    v32 = *(v25 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v18;
    v33 = v32;
    sub_10079B9B4();
    v34 = *(v25 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = -v31;
    v35 = v34;
    sub_10079B9B4();
    v36 = *(v25 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v28;
    v37 = v36;
    sub_10079B9B4();
    v38 = *(v25 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v13;
    v39 = v38;
    sub_10079B9B4();
    [*(v25 + 104) setAssetAudiobookStatusTrackTimeRemaining:v31];
    [*(v25 + 104) setAssetAudiobookStatusTrackProgress:v28];
    [*(v25 + 104) setAssetAudiobookStatusTrackDuration:v18 + v31];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

LABEL_31:
  v40 = v5 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen;
  *v40 = 0;
  v40[8] = 1;
  return result;
}