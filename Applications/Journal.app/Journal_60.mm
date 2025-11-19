uint64_t sub_100678E08(uint64_t a1)
{
  v2[3] = v1;
  sub_1000F24EC(&unk_100AD7C40);
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for IntentFile();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for FileStoreConfiguration();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for AssetAttachment.AssetType(0);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for AssetType();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v2[25] = v8;
  v2[26] = v10;

  return _swift_task_switch(sub_10067910C, v8, v10);
}

uint64_t sub_10067910C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  *(v0 + 216) = v1;
  if (v1 >> 62)
  {
LABEL_44:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 224) = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_45:
    v52 = _swiftEmptyArrayStorage;
LABEL_46:

    v55 = *(v0 + 8);

    return v55(v52);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 224) = v2;
  if (!v2)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_40;
  }

  *(v0 + 336) = enum case for AssetType.multiPinMap(_:);
  *(v0 + 340) = enum case for AssetType.workoutRoute(_:);

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v57 = v0;
  while (1)
  {
    *(v0 + 232) = v3;
    *(v0 + 240) = v4;
    v5 = *(v0 + 216);
    v59 = v4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v3 + 32);
    }

    v7 = v6;
    *(v0 + 248) = v6;
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);
    v11 = *(v8 + 104);
    v11(v9, *(v0 + 336), v10);
    sub_10068ACE0(&qword_100ADC690, &type metadata accessor for AssetType);
    v12 = v7;
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = *(v8 + 8);
    v14(v9, v10);
    if (v13)
    {

      v4 = v59;
      goto LABEL_6;
    }

    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    v11(v15, *(v0 + 340), v16);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14(v15, v16);
    if (v17)
    {

      v4 = v59;
      v0 = v57;
      goto LABEL_6;
    }

    v58 = v12;
    v18 = *&v12[OBJC_IVAR____TtC7Journal5Asset_attachments];
    v4 = v59;
    if (v18 >> 62)
    {
      break;
    }

    v0 = v57;
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

LABEL_15:
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v19 = *(v18 + 32);
    }

    sub_100068AC8(v19 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 104), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = *(v0 + 104);
    if (EnumCaseMultiPayload > 1)
    {
      v22 = v59;
      if ((EnumCaseMultiPayload - 2) >= 2)
      {
        v23 = *(v0 + 104);

        v21 = v23 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
      }

      goto LABEL_23;
    }

    if (!EnumCaseMultiPayload)
    {
      v22 = v59;
LABEL_23:
      v25 = *(v0 + 120);
      v24 = *(v0 + 128);
      sub_10068AC78(v21, v24, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      sub_100068AC8(v24, v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = *(v0 + 144);
        v26 = *(v0 + 152);
        v28 = *(v0 + 136);
        v29 = *(v0 + 120);
        sub_10004FF2C(*(v0 + 128), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v26 + 32))(v28, v29, v27);
      }

      else
      {
        v30 = *(v0 + 128);
        v31 = *(v0 + 80);
        v32 = *(v0 + 88);
        v33 = *(v0 + 72);
        static FileStoreConfiguration.shared.getter();
        FileStoreConfiguration.getAttachmentURL(from:)();

        (*(v31 + 8))(v32, v33);
        sub_10004FF2C(v30, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v34 = 0;
      v4 = v22;
      goto LABEL_27;
    }

    sub_10004FF2C(v21, type metadata accessor for AssetAttachment.AssetType);
    v34 = 1;
LABEL_27:
    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    v37 = *(v0 + 136);
    (*(v35 + 56))(v37, v34, 1, v36);

    if ((*(v35 + 48))(v37, 1, v36) == 1)
    {
      goto LABEL_39;
    }

    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v41 = *(v0 + 144);
    v40 = *(v0 + 152);
    v42 = *(v0 + 32);
    (*(v40 + 32))(v38, *(v0 + 136), v41);
    (*(v40 + 16))(v39, v38, v41);
    v43 = type metadata accessor for UTType();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    IntentFile.init(fileURL:filename:type:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1003E53A8(0, v4[2] + 1, 1, v4);
    }

    v45 = v4[2];
    v44 = v4[3];
    if (v45 >= v44 >> 1)
    {
      v4 = sub_1003E53A8(v44 > 1, v45 + 1, 1, v4);
    }

    v46 = *(v0 + 168);
    v47 = *(v0 + 144);
    v48 = *(v0 + 152);
    v49 = *(v0 + 64);
    v50 = *(v0 + 40);
    v51 = *(v0 + 48);

    (*(v48 + 8))(v46, v47);
    v4[2] = v45 + 1;
    (*(v51 + 32))(v4 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v45, v49, v50);
LABEL_6:
    v3 = *(v0 + 232) + 1;
    if (v3 == *(v0 + 224))
    {

      v52 = v4;
      goto LABEL_46;
    }
  }

  v0 = v57;
  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_15;
  }

LABEL_38:
  (*(*(v0 + 152) + 56))(*(v0 + 136), 1, 1, *(v0 + 144));
LABEL_39:
  sub_100004F84(*(v0 + 136), &unk_100AD6DD0);
  if (qword_100ACFB90 != -1)
  {
    goto LABEL_50;
  }

LABEL_40:
  *(v0 + 256) = qword_100B2F628;
  *(v0 + 264) = [objc_opt_self() currentTraitCollection];
  *(v0 + 272) = type metadata accessor for MainActor();
  *(v0 + 280) = static MainActor.shared.getter();
  v54 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 288) = v54;
  *(v0 + 296) = v53;

  return _swift_task_switch(sub_100679934, v54, v53);
}

uint64_t sub_100679934()
{
  v1 = *(v0 + 248);
  v7 = *(v0 + 256);
  v2 = static MainActor.shared.getter();
  *(v0 + 304) = v2;
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 7;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = v7;
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  v5 = sub_1000F24EC(&qword_100AE4D18);
  *v4 = v0;
  v4[1] = sub_100679A74;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v2, &protocol witness table for MainActor, 0xD00000000000003BLL, 0x80000001009004A0, sub_1006877A4, v3, v5);
}

uint64_t sub_100679A74()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100679BD4, v3, v2);
}

uint64_t sub_100679BD4()
{

  *(v0 + 328) = *(v0 + 16);
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_100679C4C, v1, v2);
}

uint64_t sub_100679C4C()
{
  v1 = *(v0 + 328);
  if (!v1)
  {

LABEL_10:
    v69 = *(v0 + 240);
    goto LABEL_12;
  }

  v2 = UIImageHEICRepresentation(*(v0 + 328));
  v3 = *(v0 + 248);
  if (!v2)
  {

    goto LABEL_10;
  }

  v4 = *(v0 + 32);
  v5 = v2;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100049ED8(v6, v8);
  UUID.uuidString.getter();
  v9 = type metadata accessor for UTType();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  IntentFile.init(data:filename:type:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v69 = sub_1003E53A8(0, v69[2] + 1, 1, v69);
  }

  v12 = v69[2];
  v11 = v69[3];
  if (v12 >= v11 >> 1)
  {
    v69 = sub_1003E53A8(v11 > 1, v12 + 1, 1, v69);
  }

  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 40);

  sub_1000340DC(v6, v8);
  v69[2] = v12 + 1;
  (*(v14 + 32))(v69 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
LABEL_12:
  while (1)
  {
    v16 = *(v0 + 232) + 1;
    if (v16 == *(v0 + 224))
    {
      break;
    }

    *(v0 + 232) = v16;
    *(v0 + 240) = v69;
    v17 = *(v0 + 216);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
    }

    v19 = v18;
    *(v0 + 248) = v18;
    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    v22 = *(v0 + 176);
    v23 = *(v20 + 104);
    v23(v21, *(v0 + 336), v22);
    sub_10068ACE0(&qword_100ADC690, &type metadata accessor for AssetType);
    v24 = v19;
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *(v20 + 8);
    v26(v21, v22);
    if (v25 & 1) != 0 || (v27 = *(v0 + 192), v28 = *(v0 + 176), v23(v27, *(v0 + 340), v28), v29 = dispatch thunk of static Equatable.== infix(_:_:)(), v26(v27, v28), (v29))
    {
    }

    else
    {
      v30 = *&v24[OBJC_IVAR____TtC7Journal5Asset_attachments];
      v31 = v24;
      if (v30 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_45:
          (*(*(v0 + 152) + 56))(*(v0 + 136), 1, 1, *(v0 + 144));
LABEL_46:
          sub_100004F84(*(v0 + 136), &unk_100AD6DD0);
          if (qword_100ACFB90 == -1)
          {
LABEL_47:
            *(v0 + 256) = qword_100B2F628;
            *(v0 + 264) = [objc_opt_self() currentTraitCollection];
            *(v0 + 272) = type metadata accessor for MainActor();
            *(v0 + 280) = static MainActor.shared.getter();
            v68 = dispatch thunk of Actor.unownedExecutor.getter();
            *(v0 + 288) = v68;
            *(v0 + 296) = v67;

            return _swift_task_switch(sub_100679934, v68, v67);
          }

LABEL_51:
          swift_once();
          goto LABEL_47;
        }
      }

      else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {

        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v32 = *(v30 + 32);
      }

      sub_100068AC8(v32 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 104), type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = *(v0 + 104);
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_10004FF2C(v34, type metadata accessor for AssetAttachment.AssetType);
          v47 = 1;
          goto LABEL_32;
        }

        v35 = v24;
      }

      else
      {
        v35 = v24;
        if ((EnumCaseMultiPayload - 2) >= 2)
        {
          v36 = *(v0 + 104);

          v34 = v36 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
        }
      }

      v38 = *(v0 + 120);
      v37 = *(v0 + 128);
      sub_10068AC78(v34, v37, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      sub_100068AC8(v37, v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = *(v0 + 144);
        v39 = *(v0 + 152);
        v41 = *(v0 + 136);
        v42 = *(v0 + 120);
        sub_10004FF2C(*(v0 + 128), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v39 + 32))(v41, v42, v40);
      }

      else
      {
        v43 = *(v0 + 128);
        v44 = *(v0 + 80);
        v45 = *(v0 + 88);
        v46 = *(v0 + 72);
        static FileStoreConfiguration.shared.getter();
        FileStoreConfiguration.getAttachmentURL(from:)();

        (*(v44 + 8))(v45, v46);
        sub_10004FF2C(v43, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v47 = 0;
      v31 = v35;
LABEL_32:
      v49 = *(v0 + 144);
      v48 = *(v0 + 152);
      v50 = *(v0 + 136);
      (*(v48 + 56))(v50, v47, 1, v49);

      if ((*(v48 + 48))(v50, 1, v49) == 1)
      {
        goto LABEL_46;
      }

      v52 = *(v0 + 160);
      v51 = *(v0 + 168);
      v54 = *(v0 + 144);
      v53 = *(v0 + 152);
      v55 = *(v0 + 32);
      (*(v53 + 32))(v51, *(v0 + 136), v54);
      (*(v53 + 16))(v52, v51, v54);
      v56 = type metadata accessor for UTType();
      (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
      IntentFile.init(fileURL:filename:type:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1003E53A8(0, v69[2] + 1, 1, v69);
      }

      v58 = v69[2];
      v57 = v69[3];
      if (v58 >= v57 >> 1)
      {
        v69 = sub_1003E53A8(v57 > 1, v58 + 1, 1, v69);
      }

      v59 = *(v0 + 168);
      v61 = *(v0 + 144);
      v60 = *(v0 + 152);
      v62 = *(v0 + 64);
      v64 = *(v0 + 40);
      v63 = *(v0 + 48);

      (*(v60 + 8))(v59, v61);
      v69[2] = v58 + 1;
      (*(v63 + 32))(v69 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v58, v62, v64);
    }
  }

  v65 = *(v0 + 8);

  return v65(v69);
}

uint64_t sub_10067A554()
{
  v66 = sub_1000F24EC(&qword_100ADA8A0);
  __chkstk_darwin(v66);
  v2 = (&v63 - v1);
  v65 = sub_1000F24EC(&qword_100AD5B28);
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v5 = &v63 - v4;
  v6 = type metadata accessor for VisitAssetMetadata();
  v84 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v9 - 8);
  v76 = &v63 - v10;
  v77 = type metadata accessor for MultiPinMapAssetMetadata();
  v11 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AssetType();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v16 >> 62)
  {
LABEL_63:
    v62 = v16;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v62;
    if (v17)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    return 0;
  }

LABEL_3:
  v78 = v16 + 32;
  v79 = v16 & 0xFFFFFFFFFFFFFF8;
  v88 = (v13 + 16);
  v89 = v16 & 0xC000000000000001;
  v87 = (v13 + 88);
  v86 = enum case for AssetType.multiPinMap(_:);
  v80 = enum case for AssetType.workoutRoute(_:);
  v75 = (v13 + 8);
  v64 = (v3 + 56);
  v74 = (v11 + 48);
  v69 = (v11 + 32);
  v68 = (v11 + 8);
  v82 = v84 + 16;
  v83 = (v84 + 8);
  v71 = (v11 + 56);
  v81 = v16;
  v85 = v17;

  v11 = 0;
  v63 = xmmword_100941EE0;
  v70 = v5;
  v13 = v76;
  v67 = v2;
  while (1)
  {
    if (v89)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v79 + 16))
      {
        goto LABEL_62;
      }

      v16 = *(v78 + 8 * v11);
    }

    v3 = v16;
    if (__OFADD__(v11++, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    v19 = v90;
    (*v88)(v15, v16 + OBJC_IVAR____TtC7Journal5Asset_type, v90);
    v20 = (*v87)(v15, v19);
    if (v20 == v86)
    {
      type metadata accessor for MultiPinMapAsset();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        if (!*(v21 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
        {

          (*v71)(v13, 1, 1, v77);
          goto LABEL_22;
        }

        v22 = v3;

        sub_1000768B4(v13);

        v3 = v77;
        if ((*v74)(v13, 1, v77) == 1)
        {

LABEL_22:
          v16 = sub_100004F84(v13, &unk_100AD5B30);
          goto LABEL_5;
        }

        v73 = v22;
        v26 = v72;
        (*v69)(v72, v13, v3);
        v13 = MultiPinMapAssetMetadata.visitsData.getter();
        v16 = (*v68)(v26, v3);
        if (!v13)
        {
          v42 = v73;

          goto LABEL_48;
        }

        v3 = *(v13 + 16);
        if (!v3)
        {
          v44 = v73;

          goto LABEL_48;
        }

        v5 = 0;
        v2 = (v13 + ((*(v84 + 80) + 32) & ~*(v84 + 80)));
        while (v5 < *(v13 + 16))
        {
          v27 = v6;
          (*(v84 + 16))(v8, v2 + *(v84 + 72) * v5, v6);
          v28 = VisitAssetMetadata.latitude.getter();
          if ((v29 & 1) == 0)
          {
            v30 = *&v28;
            v31 = VisitAssetMetadata.longitude.getter();
            if ((v32 & 1) == 0)
            {
              v55 = *&v31;

              v56 = [objc_allocWithZone(CLLocation) initWithLatitude:v30 longitude:v55];
              VisitAssetMetadata.placeName.getter();
              if (v57)
              {
                v58 = String._bridgeToObjectiveC()();
              }

              else
              {
                v58 = 0;
              }

              v59 = v27;
              v60 = v73;
              v61 = [objc_opt_self() placemarkWithLocation:v56 name:v58 postalAddress:0];

              (*v83)(v8, v59);
              return v61;
            }
          }

          ++v5;
          v6 = v27;
          v16 = (*v83)(v8, v27);
          if (v3 == v5)
          {
            v43 = v73;

            v2 = v67;
            v5 = v70;
            goto LABEL_48;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      goto LABEL_4;
    }

    if (v20 != v80)
    {

      v16 = (*v75)(v15, v90);
      goto LABEL_5;
    }

    type metadata accessor for WorkoutRouteAsset();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (v11 == v85)
    {

      return 0;
    }
  }

  v24 = OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata;
  if (*&v23[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata])
  {
    v25 = v3;
  }

  else
  {
    v73 = v23;
    v33 = *&v23[OBJC_IVAR____TtC7Journal5Asset_assetMO];
    if (v33)
    {
      v34 = v3;
      v35 = [v33 assetMetaData];
      if (v35)
      {
        v36 = v35;
        v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v6;
        v40 = v39;

        *v2 = v37;
        v2[1] = v40;
        v6 = v38;
        v5 = v70;
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E20);
        v41 = swift_allocObject();
        (*v64)(v41 + *(*v41 + 104), 1, 1, v65);
        *(v41 + *(*v41 + 112)) = v63;
        sub_100021CEC(v2, v41 + *(*v41 + 120), &qword_100ADA8A0);
        *&v73[v24] = v41;
      }
    }

    else
    {
      v45 = v3;
    }

    if (!*&v73[v24])
    {

      v50 = type metadata accessor for WorkoutRouteAssetMetadata();
      (*(*(v50 - 8) + 56))(v5, 1, 1, v50);
LABEL_47:
      v16 = sub_100004F84(v5, &qword_100AD5B28);
LABEL_48:
      v13 = v76;
      goto LABEL_5;
    }
  }

  sub_10025B758(v5);

  v46 = type metadata accessor for WorkoutRouteAssetMetadata();
  v47 = v5;
  v48 = *(v46 - 8);
  if ((*(v48 + 48))(v47, 1, v46) == 1)
  {

    v5 = v47;
    goto LABEL_47;
  }

  v49 = WorkoutRouteAssetMetadata.route.getter();
  (*(v48 + 8))(v47, v46);
  if (!v49)
  {

    v5 = v70;
    v2 = v67;
    goto LABEL_48;
  }

  v13 = v76;
  if (!(v49 >> 62))
  {
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_44:

    v5 = v70;
    v2 = v67;
    goto LABEL_5;
  }

LABEL_50:

  if ((v49 & 0xC000000000000001) != 0)
  {
    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_53;
  }

  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v52 = *(v49 + 32);
LABEL_53:
    v53 = v52;

    v54 = [objc_opt_self() placemarkWithLocation:v53 name:0 postalAddress:0];

    return v54;
  }

  __break(1u);
  return result;
}

uint64_t sub_10067B0A8@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = v1;
  v3 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v3 - 8);
  v84 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v83 = &v68 - v6;
  v7 = type metadata accessor for JournalEntity();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v90 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v10 - 8);
  v82 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v68 - v13;
  __chkstk_darwin(v14);
  v86 = &v68 - v15;
  v16 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = type metadata accessor for UUID();
  __chkstk_darwin(v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v68 - v23;
  v26 = v25;
  sub_1000082B4(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v18, &qword_100AD1420);
  if ((*(v26 + 48))(v18, 1, v19) == 1)
  {
    sub_100004F84(v18, &qword_100AD1420);
    if (qword_100AD00D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000617C(v27, qword_100AEC318);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v89[0] = v31;
      *v30 = 136315138;
      v32 = sub_10077E0F4();
      v34 = sub_100008458(v32, v33, v89);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "(toEntitySyncTextOnly) unable to get entity identifier with entry: %s", v30, 0xCu);
      sub_10000BA7C(v31);
    }

    sub_1001928AC();
    swift_allocError();
    *v35 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v26 + 32))(v24, v18, v19);
    v77 = v26;
    v37 = *(v26 + 16);
    v80 = v21;
    v74 = v37;
    v75 = v26 + 16;
    v37(v21, v24, v19);
    v38 = sub_1000819F8();
    v78 = v8;
    v76 = v24;
    if (v38)
    {
      v39 = v38;
      v40 = [v38 string];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v42;
      v73 = v41;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    v43 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    type metadata accessor for CustomAttributeProviderConcrete();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    Logger.init(subsystem:category:)();
    v45 = v44 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
    *(v45 + 4) = 0;
    *v45 = 2;
    v70 = sub_100789EB0(v43, v44, v2);

    v46 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
    swift_beginAccess();
    v47 = type metadata accessor for Date();
    v48 = *(v47 - 8);
    v49 = v2 + v46;
    v50 = v86;
    (*(v48 + 16))(v86, v49, v47);
    (*(v48 + 56))(v50, 0, 1, v47);
    v71 = sub_10067A554();
    v51 = *(v7 + 20);
    sub_1000F24EC(&qword_100AEC330);
    v52 = v7;
    v53 = EntityProperty<>.init()();
    v54 = v90;
    *(v90 + v51) = v53;
    v55 = v52[6];
    sub_1000F24EC(&qword_100AEC338);
    *(v54 + v55) = EntityProperty<>.init()();
    v56 = v52[7];
    sub_1000F24EC(&qword_100AEC340);
    *(v54 + v56) = EntityProperty<>.init()();
    v57 = v52[8];
    sub_1000F24EC(&qword_100AEC348);
    *(v54 + v57) = EntityProperty<>.init()();
    v79 = v52;
    v58 = v52[9];
    sub_1000F24EC(&qword_100AEC350);
    v69 = EntityProperty<>.init()();
    *(v54 + v58) = v69;
    v74(v54, v80, v19);
    v87 = v73;
    v88 = v72;
    EntityProperty.wrappedValue.setter();
    if (v70)
    {
      v59 = v70;
      v60 = v83;
      AttributedString.init(_:)();
      v61 = 0;
    }

    else
    {
      v59 = 0;
      v60 = v83;
      v61 = 1;
    }

    v62 = type metadata accessor for AttributedString();
    (*(*(v62 - 8) + 56))(v60, v61, 1, v62);
    sub_1000082B4(v60, v84, &qword_100AD8D78);
    EntityProperty.wrappedValue.setter();
    sub_100004F84(v60, &qword_100AD8D78);
    v87 = _swiftEmptyArrayStorage;
    EntityProperty.wrappedValue.setter();
    v63 = v86;
    v64 = v81;
    sub_1000082B4(v86, v81, &unk_100AD4790);
    sub_1000082B4(v64, v82, &unk_100AD4790);
    EntityProperty.wrappedValue.setter();
    sub_100004F84(v64, &unk_100AD4790);
    v87 = v71;
    v65 = v71;
    EntityProperty.wrappedValue.setter();

    sub_100004F84(v63, &unk_100AD4790);
    v66 = *(v77 + 8);
    v66(v80, v19);
    v66(v76, v19);
    v67 = v85;
    sub_10068AC78(v90, v85, type metadata accessor for JournalEntity);
    return (*(v78 + 56))(v67, 0, 1, v79);
  }
}

uint64_t sub_10067BA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  sub_1000F24EC(&qword_100AD1420);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for AssetPlacement();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = sub_1000F24EC(&unk_100AEE0A0);
  v4[32] = swift_task_alloc();
  v9 = type metadata accessor for PhotoLibraryAssetMetadata();
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for AssetAttachment.AssetType(0);
  v4[37] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[38] = v10;
  v4[39] = *(v10 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v11 = type metadata accessor for AssetType();
  v4[42] = v11;
  v4[43] = *(v11 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v12 = type metadata accessor for AssetSource();
  v4[49] = v12;
  v4[50] = *(v12 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD7C40);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v13 = type metadata accessor for UTType();
  v4[57] = v13;
  v4[58] = *(v13 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v4[68] = v14;
  v4[69] = *(v14 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v15 = type metadata accessor for IntentFile();
  v4[77] = v15;
  v4[78] = *(v15 - 8);
  v4[79] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v4[81] = v18;
  v4[80] = v16;

  return _swift_task_switch(sub_10067C0BC, v16, v18);
}

uint64_t sub_10067C0BC()
{
  v255 = v0;
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[78];
    v243 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v232 = (v3 + 8);
    v238 = *(v3 + 72);
    v216 = v0[69];
    v226 = (v216 + 32);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v250 + 632);
      v7 = *(v250 + 616);
      v8 = *(v250 + 544);
      v9 = *(v250 + 536);
      v10 = *(v250 + 528);
      v243(v6, v4, v7);
      IntentFile.fileURL.getter();
      sub_100021CEC(v10, v9, &unk_100AD6DD0);
      (*v232)(v6, v7);
      if ((*(v216 + 48))(v9, 1, v8) == 1)
      {
        sub_100004F84(*(v250 + 536), &unk_100AD6DD0);
      }

      else
      {
        v11 = *v226;
        (*v226)(*(v250 + 608), *(v250 + 536), *(v250 + 544));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1003E4AE0(0, *(v5 + 2) + 1, 1, v5);
        }

        v13 = *(v5 + 2);
        v12 = *(v5 + 3);
        if (v13 >= v12 >> 1)
        {
          v5 = sub_1003E4AE0(v12 > 1, v13 + 1, 1, v5);
        }

        v14 = *(v250 + 608);
        v15 = *(v250 + 544);
        *(v5 + 2) = v13 + 1;
        v11(v5 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v13, v14, v15);
      }

      v4 += v238;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v16 = v250;
  *(v250 + 656) = v5;
  v17 = *(v5 + 2);
  *(v250 + 664) = v17;
  if (!v17)
  {
LABEL_28:

    v45 = v16[1];
LABEL_29:

    return v45();
  }

  *(v250 + 824) = *(*(v250 + 552) + 80);
  *(v250 + 828) = enum case for AssetSource.intelligentToolbox(_:);
  *(v250 + 832) = enum case for AssetType.photo(_:);
  size = CGRectZero.size;
  *(v250 + 16) = CGRectZero.origin;
  *(v250 + 32) = size;
  *(v250 + 836) = enum case for AssetPlacement.grid(_:);
  *(v250 + 840) = enum case for JournalFeatureFlags.enhancedSync(_:);
  *(v250 + 844) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v250 + 848) = enum case for AssetType.video(_:);
  *(v250 + 672) = 0;
  if (!*(v5 + 2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = 0;
  while (1)
  {
    v20 = v16[69];
    v22 = v16[57];
    v21 = v16[58];
    v23 = v16[56];
    v24 = *(v20 + 16);
    v24(v16[75], v5 + ((*(v16 + 824) + 32) & ~*(v16 + 824)) + *(v20 + 72) * v19, v16[68]);
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v25 = *(v21 + 48);
    if (v25(v23, 1, v22) == 1)
    {
      sub_100004F84(v16[56], &unk_100AD7C40);
      goto LABEL_19;
    }

    v27 = v16[60];
    v26 = v16[61];
    v28 = v16[57];
    v29 = v16[58];
    (*(v29 + 32))(v26, v16[56], v28);
    static UTType.image.getter();
    v30 = UTType.conforms(to:)();
    v31 = *(v29 + 8);
    v31(v27, v28);
    v31(v26, v28);
    v16 = v250;
    if ((v30 & 1) != 0 && URL.startAccessingSecurityScopedResource()())
    {
      break;
    }

LABEL_19:
    v32 = v16[57];
    v33 = v16[55];
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    if (v25(v33, 1, v32) == 1)
    {
      sub_100004F84(v16[55], &unk_100AD7C40);
    }

    else
    {
      v34 = v16[60];
      v36 = v16[57];
      v35 = v16[58];
      (*(v35 + 32))(v16[59], v16[55], v36);
      static UTType.video.getter();
      v37 = UTType.conforms(to:)();
      v38 = *(v35 + 8);
      v38(v34, v36);
      if (v37)
      {
        v38(v16[59], v16[57]);
      }

      else
      {
        v39 = v16[59];
        v40 = v16[60];
        v41 = v16[57];
        static UTType.movie.getter();
        v42 = UTType.conforms(to:)();
        v38(v40, v41);
        v38(v39, v41);
        if ((v42 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (URL.startAccessingSecurityScopedResource()())
      {
        v47 = v16;
        sub_10057757C(v16[71]);
        v16[94] = 0;
        v189 = *(v16 + 212);
        v51 = v16[71];
        v52 = v16[69];
        v206 = v16[68];
        v211 = v52;
        v53 = v16[63];
        v217 = v16[62];
        v175 = v16[53];
        v221 = v16[52];
        v54 = v16[49];
        v180 = v16[46];
        v184 = v16[51];
        v202 = v16[44];
        v227 = v16[43];
        v233 = v16[42];
        v239 = v16[45];
        v244 = v16[41];
        v194 = v16[40];
        v247 = v16[50];
        v251 = v16[39];
        v198 = v16[38];
        (*(v247 + 104))();
        v24(v53, v51, v206);
        (*(v52 + 56))(v53, 0, 1, v206);
        v55 = type metadata accessor for Date();
        (*(*(v55 - 8) + 56))(v180, 1, 1, v55);
        (*(v227 + 104))(v239, v189, v233);
        v190 = *(v247 + 16);
        v190(v175, v184, v54);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for VideoAsset()) + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = 0;
        v56 = *(v251 + 16);
        v16[95] = v56;
        v16[96] = (v251 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v56(v194, v244, v198);
        (*(v227 + 16))(v202, v239, v233);
        v190(v221, v175, v54);
        v57 = sub_100285908(v194, v202, v221);
        v16[97] = v57;
        v58 = *(v251 + 8);
        v58(v244, v198);
        v245 = *(v247 + 8);
        v245(v175, v54);
        (*(v227 + 8))(v239, v233);
        sub_1000082B4(v53, v217, &unk_100AD6DD0);
        v59 = (*(v211 + 48))(v217, 1, v206);
        v222 = v57;
        if (v59 == 1)
        {
          sub_100004F84(v16[62], &unk_100AD6DD0);
        }

        else
        {
          v70 = v16[70];
          v71 = v16;
          v72 = v16[68];
          v73 = v47[41];
          v74 = v47[37];
          v75 = v47[38];
          (*(v47[69] + 32))(v47[70], v47[62], v47[68]);
          v24(v74, v70, v72);
          type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          UUID.init()();
          v76 = UUID.uuidString.getter();
          v78 = v77;
          v58(v73, v75);
          type metadata accessor for AssetAttachment(0);
          v79 = swift_allocObject();
          *(v79 + 16) = 0;
          sub_10068AC78(v74, v79 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v80 = (v79 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v80 = v76;
          v80[1] = v78;
          v81 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v222[v81] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v222[v81] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v82 = v71[70];
          v83 = v71[69];
          v84 = v71[68];
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          (*(v83 + 8))(v82, v84);
          v16 = v71;
        }

        v252 = *(v16 + 210);
        v242 = *(v16 + 209);
        v85 = *(v16 + 2);
        v86 = *(v16 + 3);
        v87 = *(v16 + 4);
        v88 = *(v16 + 5);
        v192 = v16[49];
        v196 = v16[51];
        v173 = v16[46];
        v89 = v16[34];
        v178 = v16[35];
        v182 = v16[63];
        v200 = v16[33];
        v187 = v16[32];
        v204 = v16[29];
        v208 = v16[28];
        v213 = v16[27];
        v220 = v16[25];
        v229 = v16[24];
        v235 = v16[26];
        sub_1000082B4(v173, v16[47], &unk_100AD4790);
        v257.origin.x = v85;
        v257.origin.y = v86;
        v257.size.width = v87;
        v257.size.height = v88;
        v90 = NSStringFromCGRect(v257);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v258.origin.x = v85;
        v258.origin.y = v86;
        v258.size.width = v87;
        v258.size.height = v88;
        v91 = NSStringFromCGRect(v258);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v259.origin.x = v85;
        v259.origin.y = v86;
        v259.size.width = v87;
        v259.size.height = v88;
        v92 = NSStringFromCGRect(v259);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
        sub_100004F84(v173, &unk_100AD4790);
        sub_100004F84(v182, &unk_100AD6DD0);
        v245(v196, v192);
        (*(v89 + 32))(v187, v178, v200);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&unk_100AEE0B0);
        v93 = swift_allocObject();
        v94 = *(*v93 + 104);
        v95 = sub_1000F24EC(&qword_100AD5B20);
        (*(*(v95 - 8) + 56))(v93 + v94, 1, 1, v95);
        *(v93 + *(*v93 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v187, v93 + *(*v93 + 120), &unk_100AEE0A0);
        *&v222[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v93;

        *v204 = static AssetPlacement.maxGridCount.getter();
        (*(v208 + 104))(v204, v242, v213);
        (*(v220 + 104))(v235, v252, v229);
        LOBYTE(v93) = JournalFeatureFlags.isEnabled.getter();
        (*(v220 + 8))(v235, v229);
        if (v93)
        {
          *(v16 + 98) = CFAbsoluteTimeGetCurrent();
          v96 = swift_task_alloc();
          v16[99] = v96;
          *v96 = v16;
          v96[1] = sub_100682158;
          v97 = v16[29];
          v98 = v16[16];
          v99 = v16[15];
          v100 = v222;
LABEL_57:

          return sub_10056B238(v99, v98, v100, v97, 1);
        }

        v101 = swift_task_alloc();
        v16[102] = v101;
        *v101 = v16;
        v101[1] = sub_1006824C4;
        v102 = v16[29];
        v103 = v16[16];
        v104 = v16[15];
        v105 = v222;
        goto LABEL_61;
      }
    }

LABEL_25:
    v43 = v16[83];
    v44 = v16[84] + 1;
    (*(v16[69] + 8))(v16[75], v16[68]);
    if (v44 == v43)
    {
      goto LABEL_28;
    }

    v19 = v16[84] + 1;
    v16[84] = v19;
    v5 = v16[82];
    if (v19 >= *(v5 + 2))
    {
      goto LABEL_27;
    }
  }

  sub_10057757C(*(v250 + 592));
  *(v250 + 680) = 0;
  v185 = *(v250 + 832);
  v60 = *(v250 + 592);
  v61 = *(v250 + 552);
  v203 = *(v250 + 544);
  v207 = v61;
  v62 = *(v250 + 520);
  v212 = *(v250 + 512);
  v63 = *(v250 + 424);
  v181 = *(v250 + 432);
  v218 = *(v250 + 416);
  v64 = *(v250 + 392);
  v176 = *(v250 + 384);
  v199 = *(v250 + 352);
  v223 = *(v250 + 344);
  v228 = *(v250 + 336);
  v234 = *(v250 + 360);
  v240 = *(v250 + 328);
  v191 = *(v250 + 320);
  v248 = *(v250 + 312);
  v195 = *(v250 + 304);
  v246 = *(v250 + 400);
  (*(v246 + 104))();
  v24(v62, v60, v203);
  (*(v61 + 56))(v62, 0, 1, v203);
  v65 = type metadata accessor for Date();
  (*(*(v65 - 8) + 56))(v176, 1, 1, v65);
  (*(v223 + 104))(v234, v185, v228);
  v186 = *(v246 + 16);
  v186(v63, v181, v64);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for PhotoAsset()) + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata) = 0;
  v66 = *(v248 + 16);
  *(v250 + 688) = v66;
  *(v250 + 696) = (v248 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v177 = v66;
  v66(v191, v240, v195);
  (*(v223 + 16))(v199, v234, v228);
  v186(v218, v63, v64);
  v67 = sub_100285908(v191, v199, v218);
  *(v250 + 704) = v67;
  v68 = *(v248 + 8);
  v68(v240, v195);
  v219 = *(v246 + 8);
  v219(v63, v64);
  (*(v223 + 8))(v234, v228);
  sub_1000082B4(v62, v212, &unk_100AD6DD0);
  v69 = (*(v207 + 48))(v212, 1, v203);
  v241 = v67;
  if (v69 == 1)
  {
    sub_100004F84(*(v250 + 512), &unk_100AD6DD0);
    goto LABEL_46;
  }

  v236 = v68;
  (*(*(v250 + 552) + 32))(*(v250 + 584), *(v250 + 512), *(v250 + 544));
  v106 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v107 = String._bridgeToObjectiveC()();

  v108 = [v106 fileExistsAtPath:v107];

  if (v108)
  {
    v109 = *(v250 + 584);
    v110 = *(v250 + 552);
    v111 = *(v250 + 544);
    v112 = *(v250 + 328);
    v113 = *(v250 + 296);
    v214 = *(v250 + 304);
    sub_1000F24EC(&unk_100AD4780);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_100941D50;
    v24(v113, v109, v111);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v115 = UUID.uuidString.getter();
    v117 = v116;
    v236(v112, v214);
    type metadata accessor for AssetAttachment(0);
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
    v119 = v113;
    v67 = v241;
    sub_10068AC78(v119, v118 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v120 = (v118 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v120 = v115;
    v120[1] = v117;
    *(v114 + 32) = v118;
    (*(v110 + 8))(v109, v111);
    v121 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    *&v241[v121] = v114;

LABEL_46:
    v122 = v250;
  }

  else
  {
    if (qword_100ACFE08 != -1)
    {
      swift_once();
    }

    v123 = *(v250 + 584);
    v124 = *(v250 + 576);
    v125 = *(v250 + 544);
    v126 = type metadata accessor for Logger();
    sub_10000617C(v126, qword_100AE55E0);
    v24(v124, v123, v125);
    v127 = v67;
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();

    v130 = os_log_type_enabled(v128, v129);
    v131 = *(v250 + 584);
    v132 = *(v250 + 576);
    v133 = *(v250 + 552);
    v134 = *(v250 + 544);
    if (v130)
    {
      v224 = v128;
      v230 = *(v250 + 584);
      v135 = *(v250 + 328);
      v136 = *(v250 + 304);
      v137 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v254[0] = swift_slowAlloc();
      *v137 = 138412802;
      *(v137 + 4) = v127;
      *v209 = v127;
      *(v137 + 12) = 2080;
      v177(v135, &v127[OBJC_IVAR____TtC7Journal5Asset_id], v136);
      sub_10068ACE0(&qword_100AE19B0, &type metadata accessor for UUID);
      v138 = v129;
      v139 = v127;
      v140 = dispatch thunk of CustomStringConvertible.description.getter();
      v142 = v141;
      v236(v135, v136);
      v143 = sub_100008458(v140, v142, v254);

      *(v137 + 14) = v143;
      *(v137 + 22) = 2080;
      sub_10068ACE0(&qword_100ADEFD0, &type metadata accessor for URL);
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      v147 = *(v133 + 8);
      v147(v132, v134);
      v148 = sub_100008458(v144, v146, v254);

      *(v137 + 24) = v148;
      _os_log_impl(&_mh_execute_header, v224, v138, "%@[%s] failed init imageFile does not exist: %s", v137, 0x20u);
      sub_100004F84(v209, &unk_100AD4BB0);

      swift_arrayDestroy();

      v147(v230, v134);
    }

    else
    {

      v149 = *(v133 + 8);
      v149(v132, v134);
      v149(v131, v134);
    }

    v122 = v250;
    v67 = v241;
  }

  v150 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v151 = *&v67[v150];
  if (!(v151 >> 62))
  {
    if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_55;
    }

LABEL_65:
    v165 = *(v122 + 592);
    v166 = *(v122 + 552);
    v167 = *(v122 + 544);
    v168 = *(v122 + 520);
    v169 = *(v122 + 432);
    v171 = *(v122 + 384);
    v170 = *(v122 + 392);

    sub_100170130();
    swift_allocError();
    *v172 = 0;
    swift_willThrow();

    sub_100004F84(v171, &unk_100AD4790);
    sub_100004F84(v168, &unk_100AD6DD0);
    v219(v169, v170);
    (*(v166 + 8))(v165, v167);
    v48 = *(v250 + 600);
    v49 = *(v250 + 552);
    v50 = *(v250 + 544);
    URL.stopAccessingSecurityScopedResource()();
    (*(v49 + 8))(v48, v50);

    v45 = *(v250 + 8);
    goto LABEL_29;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_65;
  }

LABEL_55:
  v253 = *(v122 + 840);
  v249 = *(v122 + 836);
  v152 = *(v122 + 16);
  v153 = *(v122 + 24);
  v154 = *(v122 + 32);
  v155 = *(v122 + 40);
  v193 = *(v122 + 392);
  v197 = *(v122 + 432);
  v174 = *(v122 + 384);
  v156 = *(v122 + 272);
  v179 = *(v122 + 280);
  v183 = *(v122 + 520);
  v201 = *(v122 + 264);
  v188 = *(v122 + 256);
  v205 = *(v122 + 240);
  v210 = *(v122 + 224);
  v215 = *(v122 + 216);
  v225 = *(v122 + 200);
  v231 = *(v122 + 192);
  v237 = *(v122 + 208);
  sub_1000082B4(v174, *(v122 + 376), &unk_100AD4790);
  v260.origin.x = v152;
  v260.origin.y = v153;
  v260.size.width = v154;
  v260.size.height = v155;
  v157 = NSStringFromCGRect(v260);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v261.origin.x = v152;
  v261.origin.y = v153;
  v261.size.width = v154;
  v261.size.height = v155;
  v158 = NSStringFromCGRect(v261);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v262.origin.x = v152;
  v262.origin.y = v153;
  v262.size.width = v154;
  v262.size.height = v155;
  v159 = NSStringFromCGRect(v262);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
  sub_100004F84(v174, &unk_100AD4790);
  sub_100004F84(v183, &unk_100AD6DD0);
  v219(v197, v193);
  (*(v156 + 32))(v188, v179, v201);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&unk_100AEE0B0);
  v160 = swift_allocObject();
  v161 = *(*v160 + 104);
  v162 = sub_1000F24EC(&qword_100AD5B20);
  (*(*(v162 - 8) + 56))(v160 + v161, 1, 1, v162);
  *(v160 + *(*v160 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v188, v160 + *(*v160 + 120), &unk_100AEE0A0);
  *&v241[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v160;

  *v205 = static AssetPlacement.maxGridCount.getter();
  (*(v210 + 104))(v205, v249, v215);
  (*(v225 + 104))(v237, v253, v231);
  LOBYTE(v160) = JournalFeatureFlags.isEnabled.getter();
  (*(v225 + 8))(v237, v231);
  if (v160)
  {
    *(v122 + 712) = CFAbsoluteTimeGetCurrent();
    v163 = swift_task_alloc();
    *(v122 + 720) = v163;
    *v163 = v122;
    v163[1] = sub_10067E0EC;
    v97 = *(v122 + 240);
    v98 = *(v122 + 128);
    v99 = *(v122 + 120);
    v100 = v241;
    goto LABEL_57;
  }

  v164 = swift_task_alloc();
  *(v122 + 744) = v164;
  *v164 = v122;
  v164[1] = sub_10067E458;
  v102 = *(v122 + 240);
  v103 = *(v122 + 128);
  v104 = *(v122 + 120);
  v105 = v241;
LABEL_61:

  return sub_1001F8424(v104, v103, v105, v102);
}

uint64_t sub_10067E0EC()
{
  v1 = *v0;

  v2 = *(v1 + 648);
  v3 = *(v1 + 640);

  return _swift_task_switch(sub_10067E20C, v3, v2);
}

uint64_t sub_10067E20C()
{
  (*(*(v0 + 168) + 104))(*(v0 + 184), *(v0 + 844), *(v0 + 160));

  v1 = swift_task_alloc();
  *(v0 + 728) = v1;
  *v1 = v0;
  v1[1] = sub_10067E2FC;
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1002D8344, v3, &type metadata for () + 8);
}

uint64_t sub_10067E2FC()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2[21] + 8))(v2[23], v2[20]);

    v4 = v2[81];
    v5 = v2[80];

    return _swift_task_switch(sub_100680328, v5, v4);
  }
}

uint64_t sub_10067E458()
{
  v1 = *v0;

  v2 = *(v1 + 648);
  v3 = *(v1 + 640);

  return _swift_task_switch(sub_10067E578, v3, v2);
}

uint64_t sub_10067E578()
{
  v226 = v0;
  v214 = *(v0 + 680);
  v3 = *(v0 + 704);
  v4 = *(v0 + 592);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  v8(v4, v6);
  URL.stopAccessingSecurityScopedResource()();
  while (1)
  {
    v9 = *(v0 + 664);
    v10 = *(v0 + 672) + 1;
    (*(*(v0 + 552) + 8))(*(v0 + 600), *(v0 + 544));
    if (v10 == v9)
    {

      v39 = *(v0 + 8);
      goto LABEL_18;
    }

    v11 = *(v0 + 672) + 1;
    *(v0 + 672) = v11;
    v12 = *(v0 + 656);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v13 = *(v0 + 552);
    v15 = *(v0 + 456);
    v14 = *(v0 + 464);
    v16 = *(v0 + 448);
    v17 = *(v13 + 16);
    v17(*(v0 + 600), v12 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(v13 + 72) * v11, *(v0 + 544));
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v18 = *(v14 + 48);
    v3 = (v14 + 48);
    v6 = v18;
    if ((v18)(v16, 1, v15) != 1)
    {
      break;
    }

    sub_100004F84(*(v0 + 448), &unk_100AD7C40);
LABEL_9:
    v7 = *(v0 + 480);
    v1 = *(v0 + 456);
    v2 = *(v0 + 440);
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    if ((v6)(v2, 1, v1) == 1)
    {
      sub_100004F84(*(v0 + 440), &unk_100AD7C40);
    }

    else
    {
      v7 = *(v0 + 480);
      v1 = *(v0 + 456);
      v25 = *(v0 + 464);
      (*(v25 + 32))(*(v0 + 472), *(v0 + 440), v1);
      static UTType.video.getter();
      v26 = UTType.conforms(to:)();
      v27 = *(v25 + 8);
      v3 = (v25 + 8);
      v6 = v27;
      v27(v7, v1);
      if (v26)
      {
        v6(*(v0 + 472), *(v0 + 456));
LABEL_13:
        if (URL.startAccessingSecurityScopedResource()())
        {
          sub_10057757C(*(v0 + 568));
          *(v0 + 752) = v214;
          if (v214)
          {
            goto LABEL_22;
          }

          v220 = *(v0 + 848);
          v29 = *(v0 + 568);
          v30 = *(v0 + 552);
          v31 = *(v0 + 544);
          v32 = *(v0 + 504);
          v192 = *(v0 + 496);
          v169 = *(v0 + 424);
          v198 = *(v0 + 416);
          v33 = *(v0 + 392);
          v155 = *(v0 + 368);
          v160 = *(v0 + 408);
          v203 = *(v0 + 360);
          v34 = *(v0 + 344);
          v178 = *(v0 + 352);
          v165 = *(v0 + 336);
          v209 = *(v0 + 328);
          v212 = *(v0 + 400);
          v215 = *(v0 + 312);
          v173 = *(v0 + 320);
          v177 = *(v0 + 304);
          (*(v212 + 104))();
          v17(v32, v29, v31);
          (*(v30 + 56))(v32, 0, 1, v31);
          v35 = type metadata accessor for Date();
          (*(*(v35 - 8) + 56))(v155, 1, 1, v35);
          (*(v34 + 104))(v203, v220, v165);
          v221 = v17;
          v156 = *(v212 + 16);
          v156(v169, v160, v33);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for VideoAsset()) + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = 0;
          v36 = *(v215 + 16);
          *(v0 + 760) = v36;
          *(v0 + 768) = (v215 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v36(v173, v209, v177);
          (*(v34 + 16))(v178, v203, v165);
          v156(v198, v169, v33);
          v37 = sub_100285908(v173, v178, v198);
          *(v0 + 776) = v37;
          v38 = *(v215 + 8);
          v38(v209, v177);
          v210 = *(v212 + 8);
          v210(v169, v33);
          (*(v34 + 8))(v203, v165);
          sub_1000082B4(v32, v192, &unk_100AD6DD0);
          v199 = v37;
          if ((*(v30 + 48))(v192, 1, v31) == 1)
          {
            sub_100004F84(*(v0 + 496), &unk_100AD6DD0);
          }

          else
          {
            v54 = *(v0 + 560);
            v55 = v38;
            v56 = *(v0 + 544);
            v57 = *(v0 + 328);
            v58 = *(v0 + 296);
            v59 = *(v0 + 304);
            (*(*(v0 + 552) + 32))(v54, *(v0 + 496), v56);
            v221(v58, v54, v56);
            type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            UUID.init()();
            v60 = UUID.uuidString.getter();
            v62 = v61;
            v55(v57, v59);
            type metadata accessor for AssetAttachment(0);
            v63 = swift_allocObject();
            *(v63 + 16) = 0;
            sub_10068AC78(v58, v63 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v64 = (v63 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v64 = v60;
            v64[1] = v62;
            v65 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v37[v65] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v37[v65] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v66 = *(v0 + 560);
            v67 = *(v0 + 552);
            v68 = *(v0 + 544);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            (*(v67 + 8))(v66, v68);
          }

          v222 = *(v0 + 840);
          v217 = *(v0 + 836);
          v69 = *(v0 + 16);
          v70 = *(v0 + 24);
          v71 = *(v0 + 32);
          v72 = *(v0 + 40);
          v167 = *(v0 + 392);
          v171 = *(v0 + 408);
          v149 = *(v0 + 368);
          v73 = *(v0 + 272);
          v153 = *(v0 + 280);
          v158 = *(v0 + 504);
          v175 = *(v0 + 264);
          v163 = *(v0 + 256);
          v180 = *(v0 + 232);
          v183 = *(v0 + 224);
          v187 = *(v0 + 216);
          v205 = *(v0 + 208);
          v191 = *(v0 + 200);
          v194 = *(v0 + 192);
          sub_1000082B4(v149, *(v0 + 376), &unk_100AD4790);
          v228.origin.x = v69;
          v228.origin.y = v70;
          v228.size.width = v71;
          v228.size.height = v72;
          v74 = NSStringFromCGRect(v228);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v229.origin.x = v69;
          v229.origin.y = v70;
          v229.size.width = v71;
          v229.size.height = v72;
          v75 = NSStringFromCGRect(v229);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v230.origin.x = v69;
          v230.origin.y = v70;
          v230.size.width = v71;
          v230.size.height = v72;
          v76 = NSStringFromCGRect(v230);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
          sub_100004F84(v149, &unk_100AD4790);
          sub_100004F84(v158, &unk_100AD6DD0);
          v210(v171, v167);
          (*(v73 + 32))(v163, v153, v175);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&unk_100AEE0B0);
          v77 = swift_allocObject();
          v78 = *(*v77 + 104);
          v79 = sub_1000F24EC(&qword_100AD5B20);
          (*(*(v79 - 8) + 56))(v77 + v78, 1, 1, v79);
          *(v77 + *(*v77 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v163, v77 + *(*v77 + 120), &unk_100AEE0A0);
          v80 = v199;
          *&v199[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v77;

          *v180 = static AssetPlacement.maxGridCount.getter();
          (*(v183 + 104))(v180, v217, v187);
          (*(v191 + 104))(v205, v222, v194);
          LOBYTE(v77) = JournalFeatureFlags.isEnabled.getter();
          (*(v191 + 8))(v205, v194);
          if (v77)
          {
            *(v0 + 784) = CFAbsoluteTimeGetCurrent();
            v81 = swift_task_alloc();
            *(v0 + 792) = v81;
            *v81 = v0;
            v81[1] = sub_100682158;
            v82 = *(v0 + 232);
LABEL_45:
            v137 = *(v0 + 120);
            v136 = *(v0 + 128);

            return sub_10056B238(v137, v136, v80, v82, 1);
          }

          v83 = swift_task_alloc();
          *(v0 + 816) = v83;
          *v83 = v0;
          v83[1] = sub_1006824C4;
          v84 = *(v0 + 232);
          goto LABEL_49;
        }
      }

      else
      {
        v28 = *(v0 + 472);
        v7 = *(v0 + 480);
        v1 = *(v0 + 456);
        static UTType.movie.getter();
        v2 = UTType.conforms(to:)();
        v6(v7, v1);
        v6(v28, v1);
        if (v2)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v20 = *(v0 + 480);
  v19 = *(v0 + 488);
  v21 = *(v0 + 456);
  v22 = *(v0 + 464);
  (*(v22 + 32))(v19, *(v0 + 448), v21);
  static UTType.image.getter();
  v23 = UTType.conforms(to:)();
  v219 = v17;
  v24 = *(v22 + 8);
  v24(v20, v21);
  v24(v19, v21);
  if ((v23 & 1) == 0 || !URL.startAccessingSecurityScopedResource()())
  {
    goto LABEL_9;
  }

  sub_10057757C(*(v0 + 592));
  *(v0 + 680) = v214;
  if (v214)
  {
LABEL_22:

    goto LABEL_23;
  }

  v161 = *(v0 + 832);
  v44 = *(v0 + 592);
  v45 = *(v0 + 552);
  v46 = *(v0 + 544);
  v179 = v46;
  v47 = *(v0 + 520);
  v186 = *(v0 + 512);
  v48 = *(v0 + 424);
  v157 = *(v0 + 432);
  v190 = *(v0 + 416);
  v49 = *(v0 + 392);
  v151 = *(v0 + 384);
  v174 = *(v0 + 352);
  v193 = *(v0 + 344);
  v200 = *(v0 + 336);
  v204 = *(v0 + 360);
  v211 = *(v0 + 328);
  v166 = *(v0 + 320);
  v216 = *(v0 + 312);
  v170 = *(v0 + 304);
  v213 = *(v0 + 400);
  (*(v213 + 104))();
  v17(v47, v44, v46);
  (*(v45 + 56))(v47, 0, 1, v46);
  v50 = type metadata accessor for Date();
  (*(*(v50 - 8) + 56))(v151, 1, 1, v50);
  (*(v193 + 104))(v204, v161, v200);
  v162 = *(v213 + 16);
  v162(v48, v157, v49);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for PhotoAsset()) + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata) = 0;
  v51 = *(v216 + 16);
  *(v0 + 688) = v51;
  *(v0 + 696) = (v216 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v152 = v51;
  v51(v166, v211, v170);
  (*(v193 + 16))(v174, v204, v200);
  v162(v190, v48, v49);
  v52 = sub_100285908(v166, v174, v190);
  *(v0 + 704) = v52;
  v53 = *(v216 + 8);
  v53(v211, v170);
  v189 = *(v213 + 8);
  v189(v48, v49);
  (*(v193 + 8))(v204, v200);
  sub_1000082B4(v47, v186, &unk_100AD6DD0);
  v7 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  v208 = v52;
  if ((*(v45 + 48))(v186, 1, v179) == 1)
  {
    sub_100004F84(*(v0 + 512), &unk_100AD6DD0);
    goto LABEL_41;
  }

  v206 = v53;
  (*(*(v0 + 552) + 32))(*(v0 + 584), *(v0 + 512), *(v0 + 544));
  v85 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v86 = String._bridgeToObjectiveC()();

  v87 = [v85 fileExistsAtPath:v86];

  if (v87)
  {
    v88 = *(v0 + 584);
    v89 = *(v0 + 552);
    v90 = *(v0 + 544);
    v91 = *(v0 + 328);
    v92 = *(v0 + 296);
    v195 = *(v0 + 304);
    v201 = v88;
    sub_1000F24EC(&unk_100AD4780);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_100941D50;
    v219(v92, v88, v90);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v94 = UUID.uuidString.getter();
    v96 = v95;
    v206(v91, v195);
    type metadata accessor for AssetAttachment(0);
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    v98 = v92;
    v7 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    sub_10068AC78(v98, v97 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v99 = (v97 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v99 = v94;
    v99[1] = v96;
    *(v93 + 32) = v97;
    (*(v89 + 8))(v201, v90);
    v100 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    *&v52[v100] = v93;

    goto LABEL_41;
  }

  if (qword_100ACFE08 != -1)
  {
    swift_once();
  }

  v101 = *(v0 + 584);
  v102 = *(v0 + 576);
  v103 = *(v0 + 544);
  v104 = type metadata accessor for Logger();
  sub_10000617C(v104, qword_100AE55E0);
  v219(v102, v101, v103);
  v105 = v52;
  v9 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();

  v107 = os_log_type_enabled(v9, v106);
  v1 = *(v0 + 584);
  v6 = *(v0 + 576);
  v3 = *(v0 + 552);
  v2 = *(v0 + 544);
  if (!v107)
  {
LABEL_39:

    v121 = v3[1];
    v121(v6, v2);
    v121(v1, v2);
    goto LABEL_40;
  }

  v196 = v9;
  v108 = *(v0 + 328);
  v184 = v106;
  v109 = *(v0 + 304);
  v223 = *(v0 + 584);
  v110 = swift_slowAlloc();
  v181 = swift_slowAlloc();
  v225[0] = swift_slowAlloc();
  *v110 = 138412802;
  *(v110 + 4) = v105;
  *v181 = v105;
  *(v110 + 12) = 2080;
  v152(v108, &v105[OBJC_IVAR____TtC7Journal5Asset_id], v109);
  sub_10068ACE0(&qword_100AE19B0, &type metadata accessor for UUID);
  v111 = v105;
  v112 = dispatch thunk of CustomStringConvertible.description.getter();
  v114 = v113;
  v206(v108, v109);
  v115 = sub_100008458(v112, v114, v225);

  *(v110 + 14) = v115;
  *(v110 + 22) = 2080;
  sub_10068ACE0(&qword_100ADEFD0, &type metadata accessor for URL);
  v116 = dispatch thunk of CustomStringConvertible.description.getter();
  v118 = v117;
  v119 = v3[1];
  v119(v6, v2);
  v120 = sub_100008458(v116, v118, v225);

  *(v110 + 24) = v120;
  _os_log_impl(&_mh_execute_header, v196, v184, "%@[%s] failed init imageFile does not exist: %s", v110, 0x20u);
  sub_100004F84(v181, &unk_100AD4BB0);

  swift_arrayDestroy();

  v119(v223, v2);
  v7 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
LABEL_40:
  v52 = v208;
LABEL_41:
  v122 = *v7;
  swift_beginAccess();
  v123 = *&v52[v122];
  if (v123 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

LABEL_43:
    v224 = *(v0 + 840);
    v218 = *(v0 + 836);
    v124 = *(v0 + 16);
    v125 = *(v0 + 24);
    v126 = *(v0 + 32);
    v127 = *(v0 + 40);
    v168 = *(v0 + 392);
    v172 = *(v0 + 432);
    v150 = *(v0 + 384);
    v128 = *(v0 + 272);
    v154 = *(v0 + 280);
    v159 = *(v0 + 520);
    v176 = *(v0 + 264);
    v164 = *(v0 + 256);
    v182 = *(v0 + 240);
    v185 = *(v0 + 224);
    v188 = *(v0 + 216);
    v197 = *(v0 + 200);
    v202 = *(v0 + 192);
    v207 = *(v0 + 208);
    sub_1000082B4(v150, *(v0 + 376), &unk_100AD4790);
    v231.origin.x = v124;
    v231.origin.y = v125;
    v231.size.width = v126;
    v231.size.height = v127;
    v129 = NSStringFromCGRect(v231);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v232.origin.x = v124;
    v232.origin.y = v125;
    v232.size.width = v126;
    v232.size.height = v127;
    v130 = NSStringFromCGRect(v232);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v233.origin.x = v124;
    v233.origin.y = v125;
    v233.size.width = v126;
    v233.size.height = v127;
    v131 = NSStringFromCGRect(v233);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v150, &unk_100AD4790);
    sub_100004F84(v159, &unk_100AD6DD0);
    v189(v172, v168);
    (*(v128 + 32))(v164, v154, v176);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0);
    v132 = swift_allocObject();
    v133 = *(*v132 + 104);
    v134 = sub_1000F24EC(&qword_100AD5B20);
    (*(*(v134 - 8) + 56))(v132 + v133, 1, 1, v134);
    *(v132 + *(*v132 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v164, v132 + *(*v132 + 120), &unk_100AEE0A0);
    v80 = v208;
    *&v208[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v132;

    *v182 = static AssetPlacement.maxGridCount.getter();
    (*(v185 + 104))(v182, v218, v188);
    (*(v197 + 104))(v207, v224, v202);
    LOBYTE(v132) = JournalFeatureFlags.isEnabled.getter();
    (*(v197 + 8))(v207, v202);
    if (v132)
    {
      *(v0 + 712) = CFAbsoluteTimeGetCurrent();
      v135 = swift_task_alloc();
      *(v0 + 720) = v135;
      *v135 = v0;
      v135[1] = sub_10067E0EC;
      v82 = *(v0 + 240);
      goto LABEL_45;
    }

    v138 = swift_task_alloc();
    *(v0 + 744) = v138;
    *v138 = v0;
    v138[1] = sub_10067E458;
    v84 = *(v0 + 240);
LABEL_49:
    v140 = *(v0 + 120);
    v139 = *(v0 + 128);

    return sub_1001F8424(v140, v139, v80, v84);
  }

  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_53:
  v141 = *(v0 + 592);
  v142 = *(v0 + 552);
  v143 = *(v0 + 544);
  v144 = *(v0 + 520);
  v145 = *(v0 + 432);
  v147 = *(v0 + 384);
  v146 = *(v0 + 392);

  sub_100170130();
  swift_allocError();
  *v148 = 0;
  swift_willThrow();

  sub_100004F84(v147, &unk_100AD4790);
  sub_100004F84(v144, &unk_100AD6DD0);
  v189(v145, v146);
  (*(v142 + 8))(v141, v143);
LABEL_23:
  v41 = *(v0 + 600);
  v42 = *(v0 + 552);
  v43 = *(v0 + 544);
  URL.stopAccessingSecurityScopedResource()();
  (*(v42 + 8))(v41, v43);

  v39 = *(v0 + 8);
LABEL_18:

  return v39();
}

uint64_t sub_100680328()
{
  v231 = v0;
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 152);
  (*(v0 + 688))(v7, v4 + OBJC_IVAR____TtC7Journal5Asset_id, v5);
  (*(v6 + 56))(v7, 0, 1, v5);
  sub_1001F81C4(v7);
  sub_100004F84(v7, &qword_100AD1420);
  sub_10056B00C(v4, v3);
  v219 = *(v0 + 736);
  v8 = *(v0 + 704);
  v9 = *(v0 + 592);
  v10 = *(v0 + 552);
  v11 = *(v0 + 544);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

  v13 = *(v10 + 8);
  v12 = (v10 + 8);
  v13(v9, v11);
  URL.stopAccessingSecurityScopedResource()();
  while (1)
  {
    v14 = *(v0 + 664);
    v15 = *(v0 + 672) + 1;
    (*(*(v0 + 552) + 8))(*(v0 + 600), *(v0 + 544));
    if (v15 == v14)
    {

      v44 = *(v0 + 8);
      goto LABEL_18;
    }

    v16 = *(v0 + 672) + 1;
    *(v0 + 672) = v16;
    v17 = *(v0 + 656);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v18 = *(v0 + 552);
    v20 = *(v0 + 456);
    v19 = *(v0 + 464);
    v21 = *(v0 + 448);
    v22 = *(v18 + 16);
    v22(*(v0 + 600), v17 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(v18 + 72) * v16, *(v0 + 544));
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v23 = *(v19 + 48);
    v8 = (v19 + 48);
    v11 = v23;
    if ((v23)(v21, 1, v20) != 1)
    {
      break;
    }

    sub_100004F84(*(v0 + 448), &unk_100AD7C40);
LABEL_9:
    v12 = *(v0 + 480);
    v1 = *(v0 + 456);
    v2 = *(v0 + 440);
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    if ((v11)(v2, 1, v1) == 1)
    {
      sub_100004F84(*(v0 + 440), &unk_100AD7C40);
    }

    else
    {
      v12 = *(v0 + 480);
      v1 = *(v0 + 456);
      v30 = *(v0 + 464);
      (*(v30 + 32))(*(v0 + 472), *(v0 + 440), v1);
      static UTType.video.getter();
      v31 = UTType.conforms(to:)();
      v32 = *(v30 + 8);
      v8 = (v30 + 8);
      v11 = v32;
      v32(v12, v1);
      if (v31)
      {
        v11(*(v0 + 472), *(v0 + 456));
LABEL_13:
        if (URL.startAccessingSecurityScopedResource()())
        {
          sub_10057757C(*(v0 + 568));
          *(v0 + 752) = v219;
          if (v219)
          {
            goto LABEL_22;
          }

          v225 = *(v0 + 848);
          v34 = *(v0 + 568);
          v35 = *(v0 + 552);
          v36 = *(v0 + 544);
          v37 = *(v0 + 504);
          v197 = *(v0 + 496);
          v174 = *(v0 + 424);
          v203 = *(v0 + 416);
          v38 = *(v0 + 392);
          v160 = *(v0 + 368);
          v165 = *(v0 + 408);
          v208 = *(v0 + 360);
          v39 = *(v0 + 344);
          v183 = *(v0 + 352);
          v170 = *(v0 + 336);
          v214 = *(v0 + 328);
          v217 = *(v0 + 400);
          v220 = *(v0 + 312);
          v178 = *(v0 + 320);
          v182 = *(v0 + 304);
          (*(v217 + 104))();
          v22(v37, v34, v36);
          (*(v35 + 56))(v37, 0, 1, v36);
          v40 = type metadata accessor for Date();
          (*(*(v40 - 8) + 56))(v160, 1, 1, v40);
          (*(v39 + 104))(v208, v225, v170);
          v226 = v22;
          v161 = *(v217 + 16);
          v161(v174, v165, v38);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for VideoAsset()) + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = 0;
          v41 = *(v220 + 16);
          *(v0 + 760) = v41;
          *(v0 + 768) = (v220 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v41(v178, v214, v182);
          (*(v39 + 16))(v183, v208, v170);
          v161(v203, v174, v38);
          v42 = sub_100285908(v178, v183, v203);
          *(v0 + 776) = v42;
          v43 = *(v220 + 8);
          v43(v214, v182);
          v215 = *(v217 + 8);
          v215(v174, v38);
          (*(v39 + 8))(v208, v170);
          sub_1000082B4(v37, v197, &unk_100AD6DD0);
          v204 = v42;
          if ((*(v35 + 48))(v197, 1, v36) == 1)
          {
            sub_100004F84(*(v0 + 496), &unk_100AD6DD0);
          }

          else
          {
            v59 = *(v0 + 560);
            v60 = v43;
            v61 = *(v0 + 544);
            v62 = *(v0 + 328);
            v63 = *(v0 + 296);
            v64 = *(v0 + 304);
            (*(*(v0 + 552) + 32))(v59, *(v0 + 496), v61);
            v226(v63, v59, v61);
            type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            UUID.init()();
            v65 = UUID.uuidString.getter();
            v67 = v66;
            v60(v62, v64);
            type metadata accessor for AssetAttachment(0);
            v68 = swift_allocObject();
            *(v68 + 16) = 0;
            sub_10068AC78(v63, v68 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v69 = (v68 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v69 = v65;
            v69[1] = v67;
            v70 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v42[v70] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v70] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v71 = *(v0 + 560);
            v72 = *(v0 + 552);
            v73 = *(v0 + 544);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            (*(v72 + 8))(v71, v73);
          }

          v227 = *(v0 + 840);
          v222 = *(v0 + 836);
          v74 = *(v0 + 16);
          v75 = *(v0 + 24);
          v76 = *(v0 + 32);
          v77 = *(v0 + 40);
          v172 = *(v0 + 392);
          v176 = *(v0 + 408);
          v154 = *(v0 + 368);
          v78 = *(v0 + 272);
          v158 = *(v0 + 280);
          v163 = *(v0 + 504);
          v180 = *(v0 + 264);
          v168 = *(v0 + 256);
          v185 = *(v0 + 232);
          v188 = *(v0 + 224);
          v192 = *(v0 + 216);
          v210 = *(v0 + 208);
          v196 = *(v0 + 200);
          v199 = *(v0 + 192);
          sub_1000082B4(v154, *(v0 + 376), &unk_100AD4790);
          v233.origin.x = v74;
          v233.origin.y = v75;
          v233.size.width = v76;
          v233.size.height = v77;
          v79 = NSStringFromCGRect(v233);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v234.origin.x = v74;
          v234.origin.y = v75;
          v234.size.width = v76;
          v234.size.height = v77;
          v80 = NSStringFromCGRect(v234);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v235.origin.x = v74;
          v235.origin.y = v75;
          v235.size.width = v76;
          v235.size.height = v77;
          v81 = NSStringFromCGRect(v235);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
          sub_100004F84(v154, &unk_100AD4790);
          sub_100004F84(v163, &unk_100AD6DD0);
          v215(v176, v172);
          (*(v78 + 32))(v168, v158, v180);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&unk_100AEE0B0);
          v82 = swift_allocObject();
          v83 = *(*v82 + 104);
          v84 = sub_1000F24EC(&qword_100AD5B20);
          (*(*(v84 - 8) + 56))(v82 + v83, 1, 1, v84);
          *(v82 + *(*v82 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v168, v82 + *(*v82 + 120), &unk_100AEE0A0);
          v85 = v204;
          *&v204[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v82;

          *v185 = static AssetPlacement.maxGridCount.getter();
          (*(v188 + 104))(v185, v222, v192);
          (*(v196 + 104))(v210, v227, v199);
          LOBYTE(v82) = JournalFeatureFlags.isEnabled.getter();
          (*(v196 + 8))(v210, v199);
          if (v82)
          {
            *(v0 + 784) = CFAbsoluteTimeGetCurrent();
            v86 = swift_task_alloc();
            *(v0 + 792) = v86;
            *v86 = v0;
            v86[1] = sub_100682158;
            v87 = *(v0 + 232);
LABEL_45:
            v142 = *(v0 + 120);
            v141 = *(v0 + 128);

            return sub_10056B238(v142, v141, v85, v87, 1);
          }

          v88 = swift_task_alloc();
          *(v0 + 816) = v88;
          *v88 = v0;
          v88[1] = sub_1006824C4;
          v89 = *(v0 + 232);
          goto LABEL_49;
        }
      }

      else
      {
        v33 = *(v0 + 472);
        v12 = *(v0 + 480);
        v1 = *(v0 + 456);
        static UTType.movie.getter();
        v2 = UTType.conforms(to:)();
        v11(v12, v1);
        v11(v33, v1);
        if (v2)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v25 = *(v0 + 480);
  v24 = *(v0 + 488);
  v26 = *(v0 + 456);
  v27 = *(v0 + 464);
  (*(v27 + 32))(v24, *(v0 + 448), v26);
  static UTType.image.getter();
  v28 = UTType.conforms(to:)();
  v224 = v22;
  v29 = *(v27 + 8);
  v29(v25, v26);
  v29(v24, v26);
  if ((v28 & 1) == 0 || !URL.startAccessingSecurityScopedResource()())
  {
    goto LABEL_9;
  }

  sub_10057757C(*(v0 + 592));
  *(v0 + 680) = v219;
  if (v219)
  {
LABEL_22:

    goto LABEL_23;
  }

  v166 = *(v0 + 832);
  v49 = *(v0 + 592);
  v50 = *(v0 + 552);
  v51 = *(v0 + 544);
  v184 = v51;
  v52 = *(v0 + 520);
  v191 = *(v0 + 512);
  v53 = *(v0 + 424);
  v162 = *(v0 + 432);
  v195 = *(v0 + 416);
  v54 = *(v0 + 392);
  v156 = *(v0 + 384);
  v179 = *(v0 + 352);
  v198 = *(v0 + 344);
  v205 = *(v0 + 336);
  v209 = *(v0 + 360);
  v216 = *(v0 + 328);
  v171 = *(v0 + 320);
  v221 = *(v0 + 312);
  v175 = *(v0 + 304);
  v218 = *(v0 + 400);
  (*(v218 + 104))();
  v22(v52, v49, v51);
  (*(v50 + 56))(v52, 0, 1, v51);
  v55 = type metadata accessor for Date();
  (*(*(v55 - 8) + 56))(v156, 1, 1, v55);
  (*(v198 + 104))(v209, v166, v205);
  v167 = *(v218 + 16);
  v167(v53, v162, v54);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for PhotoAsset()) + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata) = 0;
  v56 = *(v221 + 16);
  *(v0 + 688) = v56;
  *(v0 + 696) = (v221 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v157 = v56;
  v56(v171, v216, v175);
  (*(v198 + 16))(v179, v209, v205);
  v167(v195, v53, v54);
  v57 = sub_100285908(v171, v179, v195);
  *(v0 + 704) = v57;
  v58 = *(v221 + 8);
  v58(v216, v175);
  v194 = *(v218 + 8);
  v194(v53, v54);
  (*(v198 + 8))(v209, v205);
  sub_1000082B4(v52, v191, &unk_100AD6DD0);
  v12 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  v213 = v57;
  if ((*(v50 + 48))(v191, 1, v184) == 1)
  {
    sub_100004F84(*(v0 + 512), &unk_100AD6DD0);
    goto LABEL_41;
  }

  v211 = v58;
  (*(*(v0 + 552) + 32))(*(v0 + 584), *(v0 + 512), *(v0 + 544));
  v90 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v91 = String._bridgeToObjectiveC()();

  v92 = [v90 fileExistsAtPath:v91];

  if (v92)
  {
    v93 = *(v0 + 584);
    v94 = *(v0 + 552);
    v95 = *(v0 + 544);
    v96 = *(v0 + 328);
    v97 = *(v0 + 296);
    v200 = *(v0 + 304);
    v206 = v93;
    sub_1000F24EC(&unk_100AD4780);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100941D50;
    v224(v97, v93, v95);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v99 = UUID.uuidString.getter();
    v101 = v100;
    v211(v96, v200);
    type metadata accessor for AssetAttachment(0);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    v103 = v97;
    v12 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    sub_10068AC78(v103, v102 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v104 = (v102 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v104 = v99;
    v104[1] = v101;
    *(v98 + 32) = v102;
    (*(v94 + 8))(v206, v95);
    v105 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    *&v57[v105] = v98;

    goto LABEL_41;
  }

  if (qword_100ACFE08 != -1)
  {
    swift_once();
  }

  v106 = *(v0 + 584);
  v107 = *(v0 + 576);
  v108 = *(v0 + 544);
  v109 = type metadata accessor for Logger();
  sub_10000617C(v109, qword_100AE55E0);
  v224(v107, v106, v108);
  v110 = v57;
  v14 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();

  v112 = os_log_type_enabled(v14, v111);
  v1 = *(v0 + 584);
  v11 = *(v0 + 576);
  v8 = *(v0 + 552);
  v2 = *(v0 + 544);
  if (!v112)
  {
LABEL_39:

    v126 = v8[1];
    v126(v11, v2);
    v126(v1, v2);
    goto LABEL_40;
  }

  v201 = v14;
  v113 = *(v0 + 328);
  v189 = v111;
  v114 = *(v0 + 304);
  v228 = *(v0 + 584);
  v115 = swift_slowAlloc();
  v186 = swift_slowAlloc();
  v230[0] = swift_slowAlloc();
  *v115 = 138412802;
  *(v115 + 4) = v110;
  *v186 = v110;
  *(v115 + 12) = 2080;
  v157(v113, &v110[OBJC_IVAR____TtC7Journal5Asset_id], v114);
  sub_10068ACE0(&qword_100AE19B0, &type metadata accessor for UUID);
  v116 = v110;
  v117 = dispatch thunk of CustomStringConvertible.description.getter();
  v119 = v118;
  v211(v113, v114);
  v120 = sub_100008458(v117, v119, v230);

  *(v115 + 14) = v120;
  *(v115 + 22) = 2080;
  sub_10068ACE0(&qword_100ADEFD0, &type metadata accessor for URL);
  v121 = dispatch thunk of CustomStringConvertible.description.getter();
  v123 = v122;
  v124 = v8[1];
  v124(v11, v2);
  v125 = sub_100008458(v121, v123, v230);

  *(v115 + 24) = v125;
  _os_log_impl(&_mh_execute_header, v201, v189, "%@[%s] failed init imageFile does not exist: %s", v115, 0x20u);
  sub_100004F84(v186, &unk_100AD4BB0);

  swift_arrayDestroy();

  v124(v228, v2);
  v12 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
LABEL_40:
  v57 = v213;
LABEL_41:
  v127 = *v12;
  swift_beginAccess();
  v128 = *&v57[v127];
  if (v128 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

LABEL_43:
    v229 = *(v0 + 840);
    v223 = *(v0 + 836);
    v129 = *(v0 + 16);
    v130 = *(v0 + 24);
    v131 = *(v0 + 32);
    v132 = *(v0 + 40);
    v173 = *(v0 + 392);
    v177 = *(v0 + 432);
    v155 = *(v0 + 384);
    v133 = *(v0 + 272);
    v159 = *(v0 + 280);
    v164 = *(v0 + 520);
    v181 = *(v0 + 264);
    v169 = *(v0 + 256);
    v187 = *(v0 + 240);
    v190 = *(v0 + 224);
    v193 = *(v0 + 216);
    v202 = *(v0 + 200);
    v207 = *(v0 + 192);
    v212 = *(v0 + 208);
    sub_1000082B4(v155, *(v0 + 376), &unk_100AD4790);
    v236.origin.x = v129;
    v236.origin.y = v130;
    v236.size.width = v131;
    v236.size.height = v132;
    v134 = NSStringFromCGRect(v236);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v237.origin.x = v129;
    v237.origin.y = v130;
    v237.size.width = v131;
    v237.size.height = v132;
    v135 = NSStringFromCGRect(v237);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v238.origin.x = v129;
    v238.origin.y = v130;
    v238.size.width = v131;
    v238.size.height = v132;
    v136 = NSStringFromCGRect(v238);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v155, &unk_100AD4790);
    sub_100004F84(v164, &unk_100AD6DD0);
    v194(v177, v173);
    (*(v133 + 32))(v169, v159, v181);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0);
    v137 = swift_allocObject();
    v138 = *(*v137 + 104);
    v139 = sub_1000F24EC(&qword_100AD5B20);
    (*(*(v139 - 8) + 56))(v137 + v138, 1, 1, v139);
    *(v137 + *(*v137 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v169, v137 + *(*v137 + 120), &unk_100AEE0A0);
    v85 = v213;
    *&v213[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v137;

    *v187 = static AssetPlacement.maxGridCount.getter();
    (*(v190 + 104))(v187, v223, v193);
    (*(v202 + 104))(v212, v229, v207);
    LOBYTE(v137) = JournalFeatureFlags.isEnabled.getter();
    (*(v202 + 8))(v212, v207);
    if (v137)
    {
      *(v0 + 712) = CFAbsoluteTimeGetCurrent();
      v140 = swift_task_alloc();
      *(v0 + 720) = v140;
      *v140 = v0;
      v140[1] = sub_10067E0EC;
      v87 = *(v0 + 240);
      goto LABEL_45;
    }

    v143 = swift_task_alloc();
    *(v0 + 744) = v143;
    *v143 = v0;
    v143[1] = sub_10067E458;
    v89 = *(v0 + 240);
LABEL_49:
    v145 = *(v0 + 120);
    v144 = *(v0 + 128);

    return sub_1001F8424(v145, v144, v85, v89);
  }

  if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_53:
  v146 = *(v0 + 592);
  v147 = *(v0 + 552);
  v148 = *(v0 + 544);
  v149 = *(v0 + 520);
  v150 = *(v0 + 432);
  v152 = *(v0 + 384);
  v151 = *(v0 + 392);

  sub_100170130();
  swift_allocError();
  *v153 = 0;
  swift_willThrow();

  sub_100004F84(v152, &unk_100AD4790);
  sub_100004F84(v149, &unk_100AD6DD0);
  v194(v150, v151);
  (*(v147 + 8))(v146, v148);
LABEL_23:
  v46 = *(v0 + 600);
  v47 = *(v0 + 552);
  v48 = *(v0 + 544);
  URL.stopAccessingSecurityScopedResource()();
  (*(v47 + 8))(v46, v48);

  v44 = *(v0 + 8);
LABEL_18:

  return v44();
}

uint64_t sub_100682158()
{
  v1 = *v0;

  v2 = *(v1 + 648);
  v3 = *(v1 + 640);

  return _swift_task_switch(sub_100682278, v3, v2);
}

uint64_t sub_100682278()
{
  (*(*(v0 + 168) + 104))(*(v0 + 176), *(v0 + 844), *(v0 + 160));

  v1 = swift_task_alloc();
  *(v0 + 800) = v1;
  *v1 = v0;
  v1[1] = sub_100682368;
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1002D2D78, v3, &type metadata for () + 8);
}

uint64_t sub_100682368()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    v4 = v2[81];
    v5 = v2[80];

    return _swift_task_switch(sub_100684394, v5, v4);
  }
}

uint64_t sub_1006824C4()
{
  v1 = *v0;

  v2 = *(v1 + 648);
  v3 = *(v1 + 640);

  return _swift_task_switch(sub_1006825E4, v3, v2);
}

uint64_t sub_1006825E4()
{
  v226 = v0;
  v214 = *(v0 + 752);
  v3 = *(v0 + 776);
  v4 = *(v0 + 568);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  v8(v4, v6);
  URL.stopAccessingSecurityScopedResource()();
  while (1)
  {
    v9 = *(v0 + 664);
    v10 = *(v0 + 672) + 1;
    (*(*(v0 + 552) + 8))(*(v0 + 600), *(v0 + 544));
    if (v10 == v9)
    {

      v39 = *(v0 + 8);
      goto LABEL_18;
    }

    v11 = *(v0 + 672) + 1;
    *(v0 + 672) = v11;
    v12 = *(v0 + 656);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v13 = *(v0 + 552);
    v15 = *(v0 + 456);
    v14 = *(v0 + 464);
    v16 = *(v0 + 448);
    v17 = *(v13 + 16);
    v17(*(v0 + 600), v12 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(v13 + 72) * v11, *(v0 + 544));
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v18 = *(v14 + 48);
    v3 = (v14 + 48);
    v6 = v18;
    if ((v18)(v16, 1, v15) != 1)
    {
      break;
    }

    sub_100004F84(*(v0 + 448), &unk_100AD7C40);
LABEL_9:
    v7 = *(v0 + 480);
    v1 = *(v0 + 456);
    v2 = *(v0 + 440);
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    if ((v6)(v2, 1, v1) == 1)
    {
      sub_100004F84(*(v0 + 440), &unk_100AD7C40);
    }

    else
    {
      v7 = *(v0 + 480);
      v1 = *(v0 + 456);
      v25 = *(v0 + 464);
      (*(v25 + 32))(*(v0 + 472), *(v0 + 440), v1);
      static UTType.video.getter();
      v26 = UTType.conforms(to:)();
      v27 = *(v25 + 8);
      v3 = (v25 + 8);
      v6 = v27;
      v27(v7, v1);
      if (v26)
      {
        v6(*(v0 + 472), *(v0 + 456));
LABEL_13:
        if (URL.startAccessingSecurityScopedResource()())
        {
          sub_10057757C(*(v0 + 568));
          *(v0 + 752) = v214;
          if (v214)
          {
            goto LABEL_22;
          }

          v220 = *(v0 + 848);
          v29 = *(v0 + 568);
          v30 = *(v0 + 552);
          v31 = *(v0 + 544);
          v32 = *(v0 + 504);
          v192 = *(v0 + 496);
          v169 = *(v0 + 424);
          v198 = *(v0 + 416);
          v33 = *(v0 + 392);
          v155 = *(v0 + 368);
          v160 = *(v0 + 408);
          v203 = *(v0 + 360);
          v34 = *(v0 + 344);
          v178 = *(v0 + 352);
          v165 = *(v0 + 336);
          v209 = *(v0 + 328);
          v212 = *(v0 + 400);
          v215 = *(v0 + 312);
          v173 = *(v0 + 320);
          v177 = *(v0 + 304);
          (*(v212 + 104))();
          v17(v32, v29, v31);
          (*(v30 + 56))(v32, 0, 1, v31);
          v35 = type metadata accessor for Date();
          (*(*(v35 - 8) + 56))(v155, 1, 1, v35);
          (*(v34 + 104))(v203, v220, v165);
          v221 = v17;
          v156 = *(v212 + 16);
          v156(v169, v160, v33);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for VideoAsset()) + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = 0;
          v36 = *(v215 + 16);
          *(v0 + 760) = v36;
          *(v0 + 768) = (v215 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v36(v173, v209, v177);
          (*(v34 + 16))(v178, v203, v165);
          v156(v198, v169, v33);
          v37 = sub_100285908(v173, v178, v198);
          *(v0 + 776) = v37;
          v38 = *(v215 + 8);
          v38(v209, v177);
          v210 = *(v212 + 8);
          v210(v169, v33);
          (*(v34 + 8))(v203, v165);
          sub_1000082B4(v32, v192, &unk_100AD6DD0);
          v199 = v37;
          if ((*(v30 + 48))(v192, 1, v31) == 1)
          {
            sub_100004F84(*(v0 + 496), &unk_100AD6DD0);
          }

          else
          {
            v54 = *(v0 + 560);
            v55 = v38;
            v56 = *(v0 + 544);
            v57 = *(v0 + 328);
            v58 = *(v0 + 296);
            v59 = *(v0 + 304);
            (*(*(v0 + 552) + 32))(v54, *(v0 + 496), v56);
            v221(v58, v54, v56);
            type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            UUID.init()();
            v60 = UUID.uuidString.getter();
            v62 = v61;
            v55(v57, v59);
            type metadata accessor for AssetAttachment(0);
            v63 = swift_allocObject();
            *(v63 + 16) = 0;
            sub_10068AC78(v58, v63 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v64 = (v63 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v64 = v60;
            v64[1] = v62;
            v65 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v37[v65] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v37[v65] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v66 = *(v0 + 560);
            v67 = *(v0 + 552);
            v68 = *(v0 + 544);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            (*(v67 + 8))(v66, v68);
          }

          v222 = *(v0 + 840);
          v217 = *(v0 + 836);
          v69 = *(v0 + 16);
          v70 = *(v0 + 24);
          v71 = *(v0 + 32);
          v72 = *(v0 + 40);
          v167 = *(v0 + 392);
          v171 = *(v0 + 408);
          v149 = *(v0 + 368);
          v73 = *(v0 + 272);
          v153 = *(v0 + 280);
          v158 = *(v0 + 504);
          v175 = *(v0 + 264);
          v163 = *(v0 + 256);
          v180 = *(v0 + 232);
          v183 = *(v0 + 224);
          v187 = *(v0 + 216);
          v205 = *(v0 + 208);
          v191 = *(v0 + 200);
          v194 = *(v0 + 192);
          sub_1000082B4(v149, *(v0 + 376), &unk_100AD4790);
          v228.origin.x = v69;
          v228.origin.y = v70;
          v228.size.width = v71;
          v228.size.height = v72;
          v74 = NSStringFromCGRect(v228);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v229.origin.x = v69;
          v229.origin.y = v70;
          v229.size.width = v71;
          v229.size.height = v72;
          v75 = NSStringFromCGRect(v229);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v230.origin.x = v69;
          v230.origin.y = v70;
          v230.size.width = v71;
          v230.size.height = v72;
          v76 = NSStringFromCGRect(v230);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
          sub_100004F84(v149, &unk_100AD4790);
          sub_100004F84(v158, &unk_100AD6DD0);
          v210(v171, v167);
          (*(v73 + 32))(v163, v153, v175);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&unk_100AEE0B0);
          v77 = swift_allocObject();
          v78 = *(*v77 + 104);
          v79 = sub_1000F24EC(&qword_100AD5B20);
          (*(*(v79 - 8) + 56))(v77 + v78, 1, 1, v79);
          *(v77 + *(*v77 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v163, v77 + *(*v77 + 120), &unk_100AEE0A0);
          v80 = v199;
          *&v199[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v77;

          *v180 = static AssetPlacement.maxGridCount.getter();
          (*(v183 + 104))(v180, v217, v187);
          (*(v191 + 104))(v205, v222, v194);
          LOBYTE(v77) = JournalFeatureFlags.isEnabled.getter();
          (*(v191 + 8))(v205, v194);
          if (v77)
          {
            *(v0 + 784) = CFAbsoluteTimeGetCurrent();
            v81 = swift_task_alloc();
            *(v0 + 792) = v81;
            *v81 = v0;
            v81[1] = sub_100682158;
            v82 = *(v0 + 232);
LABEL_45:
            v137 = *(v0 + 120);
            v136 = *(v0 + 128);

            return sub_10056B238(v137, v136, v80, v82, 1);
          }

          v83 = swift_task_alloc();
          *(v0 + 816) = v83;
          *v83 = v0;
          v83[1] = sub_1006824C4;
          v84 = *(v0 + 232);
          goto LABEL_49;
        }
      }

      else
      {
        v28 = *(v0 + 472);
        v7 = *(v0 + 480);
        v1 = *(v0 + 456);
        static UTType.movie.getter();
        v2 = UTType.conforms(to:)();
        v6(v7, v1);
        v6(v28, v1);
        if (v2)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v20 = *(v0 + 480);
  v19 = *(v0 + 488);
  v21 = *(v0 + 456);
  v22 = *(v0 + 464);
  (*(v22 + 32))(v19, *(v0 + 448), v21);
  static UTType.image.getter();
  v23 = UTType.conforms(to:)();
  v219 = v17;
  v24 = *(v22 + 8);
  v24(v20, v21);
  v24(v19, v21);
  if ((v23 & 1) == 0 || !URL.startAccessingSecurityScopedResource()())
  {
    goto LABEL_9;
  }

  sub_10057757C(*(v0 + 592));
  *(v0 + 680) = v214;
  if (v214)
  {
LABEL_22:

    goto LABEL_23;
  }

  v161 = *(v0 + 832);
  v44 = *(v0 + 592);
  v45 = *(v0 + 552);
  v46 = *(v0 + 544);
  v179 = v46;
  v47 = *(v0 + 520);
  v186 = *(v0 + 512);
  v48 = *(v0 + 424);
  v157 = *(v0 + 432);
  v190 = *(v0 + 416);
  v49 = *(v0 + 392);
  v151 = *(v0 + 384);
  v174 = *(v0 + 352);
  v193 = *(v0 + 344);
  v200 = *(v0 + 336);
  v204 = *(v0 + 360);
  v211 = *(v0 + 328);
  v166 = *(v0 + 320);
  v216 = *(v0 + 312);
  v170 = *(v0 + 304);
  v213 = *(v0 + 400);
  (*(v213 + 104))();
  v17(v47, v44, v46);
  (*(v45 + 56))(v47, 0, 1, v46);
  v50 = type metadata accessor for Date();
  (*(*(v50 - 8) + 56))(v151, 1, 1, v50);
  (*(v193 + 104))(v204, v161, v200);
  v162 = *(v213 + 16);
  v162(v48, v157, v49);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for PhotoAsset()) + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata) = 0;
  v51 = *(v216 + 16);
  *(v0 + 688) = v51;
  *(v0 + 696) = (v216 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v152 = v51;
  v51(v166, v211, v170);
  (*(v193 + 16))(v174, v204, v200);
  v162(v190, v48, v49);
  v52 = sub_100285908(v166, v174, v190);
  *(v0 + 704) = v52;
  v53 = *(v216 + 8);
  v53(v211, v170);
  v189 = *(v213 + 8);
  v189(v48, v49);
  (*(v193 + 8))(v204, v200);
  sub_1000082B4(v47, v186, &unk_100AD6DD0);
  v7 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  v208 = v52;
  if ((*(v45 + 48))(v186, 1, v179) == 1)
  {
    sub_100004F84(*(v0 + 512), &unk_100AD6DD0);
    goto LABEL_41;
  }

  v206 = v53;
  (*(*(v0 + 552) + 32))(*(v0 + 584), *(v0 + 512), *(v0 + 544));
  v85 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v86 = String._bridgeToObjectiveC()();

  v87 = [v85 fileExistsAtPath:v86];

  if (v87)
  {
    v88 = *(v0 + 584);
    v89 = *(v0 + 552);
    v90 = *(v0 + 544);
    v91 = *(v0 + 328);
    v92 = *(v0 + 296);
    v195 = *(v0 + 304);
    v201 = v88;
    sub_1000F24EC(&unk_100AD4780);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_100941D50;
    v219(v92, v88, v90);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v94 = UUID.uuidString.getter();
    v96 = v95;
    v206(v91, v195);
    type metadata accessor for AssetAttachment(0);
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    v98 = v92;
    v7 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    sub_10068AC78(v98, v97 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v99 = (v97 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v99 = v94;
    v99[1] = v96;
    *(v93 + 32) = v97;
    (*(v89 + 8))(v201, v90);
    v100 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    *&v52[v100] = v93;

    goto LABEL_41;
  }

  if (qword_100ACFE08 != -1)
  {
    swift_once();
  }

  v101 = *(v0 + 584);
  v102 = *(v0 + 576);
  v103 = *(v0 + 544);
  v104 = type metadata accessor for Logger();
  sub_10000617C(v104, qword_100AE55E0);
  v219(v102, v101, v103);
  v105 = v52;
  v9 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();

  v107 = os_log_type_enabled(v9, v106);
  v1 = *(v0 + 584);
  v6 = *(v0 + 576);
  v3 = *(v0 + 552);
  v2 = *(v0 + 544);
  if (!v107)
  {
LABEL_39:

    v121 = v3[1];
    v121(v6, v2);
    v121(v1, v2);
    goto LABEL_40;
  }

  v196 = v9;
  v108 = *(v0 + 328);
  v184 = v106;
  v109 = *(v0 + 304);
  v223 = *(v0 + 584);
  v110 = swift_slowAlloc();
  v181 = swift_slowAlloc();
  v225[0] = swift_slowAlloc();
  *v110 = 138412802;
  *(v110 + 4) = v105;
  *v181 = v105;
  *(v110 + 12) = 2080;
  v152(v108, &v105[OBJC_IVAR____TtC7Journal5Asset_id], v109);
  sub_10068ACE0(&qword_100AE19B0, &type metadata accessor for UUID);
  v111 = v105;
  v112 = dispatch thunk of CustomStringConvertible.description.getter();
  v114 = v113;
  v206(v108, v109);
  v115 = sub_100008458(v112, v114, v225);

  *(v110 + 14) = v115;
  *(v110 + 22) = 2080;
  sub_10068ACE0(&qword_100ADEFD0, &type metadata accessor for URL);
  v116 = dispatch thunk of CustomStringConvertible.description.getter();
  v118 = v117;
  v119 = v3[1];
  v119(v6, v2);
  v120 = sub_100008458(v116, v118, v225);

  *(v110 + 24) = v120;
  _os_log_impl(&_mh_execute_header, v196, v184, "%@[%s] failed init imageFile does not exist: %s", v110, 0x20u);
  sub_100004F84(v181, &unk_100AD4BB0);

  swift_arrayDestroy();

  v119(v223, v2);
  v7 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
LABEL_40:
  v52 = v208;
LABEL_41:
  v122 = *v7;
  swift_beginAccess();
  v123 = *&v52[v122];
  if (v123 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

LABEL_43:
    v224 = *(v0 + 840);
    v218 = *(v0 + 836);
    v124 = *(v0 + 16);
    v125 = *(v0 + 24);
    v126 = *(v0 + 32);
    v127 = *(v0 + 40);
    v168 = *(v0 + 392);
    v172 = *(v0 + 432);
    v150 = *(v0 + 384);
    v128 = *(v0 + 272);
    v154 = *(v0 + 280);
    v159 = *(v0 + 520);
    v176 = *(v0 + 264);
    v164 = *(v0 + 256);
    v182 = *(v0 + 240);
    v185 = *(v0 + 224);
    v188 = *(v0 + 216);
    v197 = *(v0 + 200);
    v202 = *(v0 + 192);
    v207 = *(v0 + 208);
    sub_1000082B4(v150, *(v0 + 376), &unk_100AD4790);
    v231.origin.x = v124;
    v231.origin.y = v125;
    v231.size.width = v126;
    v231.size.height = v127;
    v129 = NSStringFromCGRect(v231);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v232.origin.x = v124;
    v232.origin.y = v125;
    v232.size.width = v126;
    v232.size.height = v127;
    v130 = NSStringFromCGRect(v232);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v233.origin.x = v124;
    v233.origin.y = v125;
    v233.size.width = v126;
    v233.size.height = v127;
    v131 = NSStringFromCGRect(v233);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v150, &unk_100AD4790);
    sub_100004F84(v159, &unk_100AD6DD0);
    v189(v172, v168);
    (*(v128 + 32))(v164, v154, v176);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0);
    v132 = swift_allocObject();
    v133 = *(*v132 + 104);
    v134 = sub_1000F24EC(&qword_100AD5B20);
    (*(*(v134 - 8) + 56))(v132 + v133, 1, 1, v134);
    *(v132 + *(*v132 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v164, v132 + *(*v132 + 120), &unk_100AEE0A0);
    v80 = v208;
    *&v208[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v132;

    *v182 = static AssetPlacement.maxGridCount.getter();
    (*(v185 + 104))(v182, v218, v188);
    (*(v197 + 104))(v207, v224, v202);
    LOBYTE(v132) = JournalFeatureFlags.isEnabled.getter();
    (*(v197 + 8))(v207, v202);
    if (v132)
    {
      *(v0 + 712) = CFAbsoluteTimeGetCurrent();
      v135 = swift_task_alloc();
      *(v0 + 720) = v135;
      *v135 = v0;
      v135[1] = sub_10067E0EC;
      v82 = *(v0 + 240);
      goto LABEL_45;
    }

    v138 = swift_task_alloc();
    *(v0 + 744) = v138;
    *v138 = v0;
    v138[1] = sub_10067E458;
    v84 = *(v0 + 240);
LABEL_49:
    v140 = *(v0 + 120);
    v139 = *(v0 + 128);

    return sub_1001F8424(v140, v139, v80, v84);
  }

  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_53:
  v141 = *(v0 + 592);
  v142 = *(v0 + 552);
  v143 = *(v0 + 544);
  v144 = *(v0 + 520);
  v145 = *(v0 + 432);
  v147 = *(v0 + 384);
  v146 = *(v0 + 392);

  sub_100170130();
  swift_allocError();
  *v148 = 0;
  swift_willThrow();

  sub_100004F84(v147, &unk_100AD4790);
  sub_100004F84(v144, &unk_100AD6DD0);
  v189(v145, v146);
  (*(v142 + 8))(v141, v143);
LABEL_23:
  v41 = *(v0 + 600);
  v42 = *(v0 + 552);
  v43 = *(v0 + 544);
  URL.stopAccessingSecurityScopedResource()();
  (*(v42 + 8))(v41, v43);

  v39 = *(v0 + 8);
LABEL_18:

  return v39();
}

uint64_t sub_100684394()
{
  v231 = v0;
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 152);
  (*(v0 + 760))(v7, v4 + OBJC_IVAR____TtC7Journal5Asset_id, v5);
  (*(v6 + 56))(v7, 0, 1, v5);
  sub_1001F81C4(v7);
  sub_100004F84(v7, &qword_100AD1420);
  sub_10056B00C(v4, v3);
  v219 = *(v0 + 808);
  v8 = *(v0 + 776);
  v9 = *(v0 + 568);
  v10 = *(v0 + 552);
  v11 = *(v0 + 544);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  v13 = *(v10 + 8);
  v12 = (v10 + 8);
  v13(v9, v11);
  URL.stopAccessingSecurityScopedResource()();
  while (1)
  {
    v14 = *(v0 + 664);
    v15 = *(v0 + 672) + 1;
    (*(*(v0 + 552) + 8))(*(v0 + 600), *(v0 + 544));
    if (v15 == v14)
    {

      v44 = *(v0 + 8);
      goto LABEL_18;
    }

    v16 = *(v0 + 672) + 1;
    *(v0 + 672) = v16;
    v17 = *(v0 + 656);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v18 = *(v0 + 552);
    v20 = *(v0 + 456);
    v19 = *(v0 + 464);
    v21 = *(v0 + 448);
    v22 = *(v18 + 16);
    v22(*(v0 + 600), v17 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(v18 + 72) * v16, *(v0 + 544));
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v23 = *(v19 + 48);
    v8 = (v19 + 48);
    v11 = v23;
    if ((v23)(v21, 1, v20) != 1)
    {
      break;
    }

    sub_100004F84(*(v0 + 448), &unk_100AD7C40);
LABEL_9:
    v12 = *(v0 + 480);
    v1 = *(v0 + 456);
    v2 = *(v0 + 440);
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    if ((v11)(v2, 1, v1) == 1)
    {
      sub_100004F84(*(v0 + 440), &unk_100AD7C40);
    }

    else
    {
      v12 = *(v0 + 480);
      v1 = *(v0 + 456);
      v30 = *(v0 + 464);
      (*(v30 + 32))(*(v0 + 472), *(v0 + 440), v1);
      static UTType.video.getter();
      v31 = UTType.conforms(to:)();
      v32 = *(v30 + 8);
      v8 = (v30 + 8);
      v11 = v32;
      v32(v12, v1);
      if (v31)
      {
        v11(*(v0 + 472), *(v0 + 456));
LABEL_13:
        if (URL.startAccessingSecurityScopedResource()())
        {
          sub_10057757C(*(v0 + 568));
          *(v0 + 752) = v219;
          if (v219)
          {
            goto LABEL_22;
          }

          v225 = *(v0 + 848);
          v34 = *(v0 + 568);
          v35 = *(v0 + 552);
          v36 = *(v0 + 544);
          v37 = *(v0 + 504);
          v197 = *(v0 + 496);
          v174 = *(v0 + 424);
          v203 = *(v0 + 416);
          v38 = *(v0 + 392);
          v160 = *(v0 + 368);
          v165 = *(v0 + 408);
          v208 = *(v0 + 360);
          v39 = *(v0 + 344);
          v183 = *(v0 + 352);
          v170 = *(v0 + 336);
          v214 = *(v0 + 328);
          v217 = *(v0 + 400);
          v220 = *(v0 + 312);
          v178 = *(v0 + 320);
          v182 = *(v0 + 304);
          (*(v217 + 104))();
          v22(v37, v34, v36);
          (*(v35 + 56))(v37, 0, 1, v36);
          v40 = type metadata accessor for Date();
          (*(*(v40 - 8) + 56))(v160, 1, 1, v40);
          (*(v39 + 104))(v208, v225, v170);
          v226 = v22;
          v161 = *(v217 + 16);
          v161(v174, v165, v38);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for VideoAsset()) + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = 0;
          v41 = *(v220 + 16);
          *(v0 + 760) = v41;
          *(v0 + 768) = (v220 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v41(v178, v214, v182);
          (*(v39 + 16))(v183, v208, v170);
          v161(v203, v174, v38);
          v42 = sub_100285908(v178, v183, v203);
          *(v0 + 776) = v42;
          v43 = *(v220 + 8);
          v43(v214, v182);
          v215 = *(v217 + 8);
          v215(v174, v38);
          (*(v39 + 8))(v208, v170);
          sub_1000082B4(v37, v197, &unk_100AD6DD0);
          v204 = v42;
          if ((*(v35 + 48))(v197, 1, v36) == 1)
          {
            sub_100004F84(*(v0 + 496), &unk_100AD6DD0);
          }

          else
          {
            v59 = *(v0 + 560);
            v60 = v43;
            v61 = *(v0 + 544);
            v62 = *(v0 + 328);
            v63 = *(v0 + 296);
            v64 = *(v0 + 304);
            (*(*(v0 + 552) + 32))(v59, *(v0 + 496), v61);
            v226(v63, v59, v61);
            type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            UUID.init()();
            v65 = UUID.uuidString.getter();
            v67 = v66;
            v60(v62, v64);
            type metadata accessor for AssetAttachment(0);
            v68 = swift_allocObject();
            *(v68 + 16) = 0;
            sub_10068AC78(v63, v68 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v69 = (v68 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v69 = v65;
            v69[1] = v67;
            v70 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v42[v70] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v70] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v71 = *(v0 + 560);
            v72 = *(v0 + 552);
            v73 = *(v0 + 544);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            (*(v72 + 8))(v71, v73);
          }

          v227 = *(v0 + 840);
          v222 = *(v0 + 836);
          v74 = *(v0 + 16);
          v75 = *(v0 + 24);
          v76 = *(v0 + 32);
          v77 = *(v0 + 40);
          v172 = *(v0 + 392);
          v176 = *(v0 + 408);
          v154 = *(v0 + 368);
          v78 = *(v0 + 272);
          v158 = *(v0 + 280);
          v163 = *(v0 + 504);
          v180 = *(v0 + 264);
          v168 = *(v0 + 256);
          v185 = *(v0 + 232);
          v188 = *(v0 + 224);
          v192 = *(v0 + 216);
          v210 = *(v0 + 208);
          v196 = *(v0 + 200);
          v199 = *(v0 + 192);
          sub_1000082B4(v154, *(v0 + 376), &unk_100AD4790);
          v233.origin.x = v74;
          v233.origin.y = v75;
          v233.size.width = v76;
          v233.size.height = v77;
          v79 = NSStringFromCGRect(v233);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v234.origin.x = v74;
          v234.origin.y = v75;
          v234.size.width = v76;
          v234.size.height = v77;
          v80 = NSStringFromCGRect(v234);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v235.origin.x = v74;
          v235.origin.y = v75;
          v235.size.width = v76;
          v235.size.height = v77;
          v81 = NSStringFromCGRect(v235);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
          sub_100004F84(v154, &unk_100AD4790);
          sub_100004F84(v163, &unk_100AD6DD0);
          v215(v176, v172);
          (*(v78 + 32))(v168, v158, v180);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&unk_100AEE0B0);
          v82 = swift_allocObject();
          v83 = *(*v82 + 104);
          v84 = sub_1000F24EC(&qword_100AD5B20);
          (*(*(v84 - 8) + 56))(v82 + v83, 1, 1, v84);
          *(v82 + *(*v82 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v168, v82 + *(*v82 + 120), &unk_100AEE0A0);
          v85 = v204;
          *&v204[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v82;

          *v185 = static AssetPlacement.maxGridCount.getter();
          (*(v188 + 104))(v185, v222, v192);
          (*(v196 + 104))(v210, v227, v199);
          LOBYTE(v82) = JournalFeatureFlags.isEnabled.getter();
          (*(v196 + 8))(v210, v199);
          if (v82)
          {
            *(v0 + 784) = CFAbsoluteTimeGetCurrent();
            v86 = swift_task_alloc();
            *(v0 + 792) = v86;
            *v86 = v0;
            v86[1] = sub_100682158;
            v87 = *(v0 + 232);
LABEL_45:
            v142 = *(v0 + 120);
            v141 = *(v0 + 128);

            return sub_10056B238(v142, v141, v85, v87, 1);
          }

          v88 = swift_task_alloc();
          *(v0 + 816) = v88;
          *v88 = v0;
          v88[1] = sub_1006824C4;
          v89 = *(v0 + 232);
          goto LABEL_49;
        }
      }

      else
      {
        v33 = *(v0 + 472);
        v12 = *(v0 + 480);
        v1 = *(v0 + 456);
        static UTType.movie.getter();
        v2 = UTType.conforms(to:)();
        v11(v12, v1);
        v11(v33, v1);
        if (v2)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v25 = *(v0 + 480);
  v24 = *(v0 + 488);
  v26 = *(v0 + 456);
  v27 = *(v0 + 464);
  (*(v27 + 32))(v24, *(v0 + 448), v26);
  static UTType.image.getter();
  v28 = UTType.conforms(to:)();
  v224 = v22;
  v29 = *(v27 + 8);
  v29(v25, v26);
  v29(v24, v26);
  if ((v28 & 1) == 0 || !URL.startAccessingSecurityScopedResource()())
  {
    goto LABEL_9;
  }

  sub_10057757C(*(v0 + 592));
  *(v0 + 680) = v219;
  if (v219)
  {
LABEL_22:

    goto LABEL_23;
  }

  v166 = *(v0 + 832);
  v49 = *(v0 + 592);
  v50 = *(v0 + 552);
  v51 = *(v0 + 544);
  v184 = v51;
  v52 = *(v0 + 520);
  v191 = *(v0 + 512);
  v53 = *(v0 + 424);
  v162 = *(v0 + 432);
  v195 = *(v0 + 416);
  v54 = *(v0 + 392);
  v156 = *(v0 + 384);
  v179 = *(v0 + 352);
  v198 = *(v0 + 344);
  v205 = *(v0 + 336);
  v209 = *(v0 + 360);
  v216 = *(v0 + 328);
  v171 = *(v0 + 320);
  v221 = *(v0 + 312);
  v175 = *(v0 + 304);
  v218 = *(v0 + 400);
  (*(v218 + 104))();
  v22(v52, v49, v51);
  (*(v50 + 56))(v52, 0, 1, v51);
  v55 = type metadata accessor for Date();
  (*(*(v55 - 8) + 56))(v156, 1, 1, v55);
  (*(v198 + 104))(v209, v166, v205);
  v167 = *(v218 + 16);
  v167(v53, v162, v54);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for PhotoAsset()) + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata) = 0;
  v56 = *(v221 + 16);
  *(v0 + 688) = v56;
  *(v0 + 696) = (v221 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v157 = v56;
  v56(v171, v216, v175);
  (*(v198 + 16))(v179, v209, v205);
  v167(v195, v53, v54);
  v57 = sub_100285908(v171, v179, v195);
  *(v0 + 704) = v57;
  v58 = *(v221 + 8);
  v58(v216, v175);
  v194 = *(v218 + 8);
  v194(v53, v54);
  (*(v198 + 8))(v209, v205);
  sub_1000082B4(v52, v191, &unk_100AD6DD0);
  v12 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  v213 = v57;
  if ((*(v50 + 48))(v191, 1, v184) == 1)
  {
    sub_100004F84(*(v0 + 512), &unk_100AD6DD0);
    goto LABEL_41;
  }

  v211 = v58;
  (*(*(v0 + 552) + 32))(*(v0 + 584), *(v0 + 512), *(v0 + 544));
  v90 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v91 = String._bridgeToObjectiveC()();

  v92 = [v90 fileExistsAtPath:v91];

  if (v92)
  {
    v93 = *(v0 + 584);
    v94 = *(v0 + 552);
    v95 = *(v0 + 544);
    v96 = *(v0 + 328);
    v97 = *(v0 + 296);
    v200 = *(v0 + 304);
    v206 = v93;
    sub_1000F24EC(&unk_100AD4780);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100941D50;
    v224(v97, v93, v95);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v99 = UUID.uuidString.getter();
    v101 = v100;
    v211(v96, v200);
    type metadata accessor for AssetAttachment(0);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    v103 = v97;
    v12 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    sub_10068AC78(v103, v102 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v104 = (v102 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v104 = v99;
    v104[1] = v101;
    *(v98 + 32) = v102;
    (*(v94 + 8))(v206, v95);
    v105 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    *&v57[v105] = v98;

    goto LABEL_41;
  }

  if (qword_100ACFE08 != -1)
  {
    swift_once();
  }

  v106 = *(v0 + 584);
  v107 = *(v0 + 576);
  v108 = *(v0 + 544);
  v109 = type metadata accessor for Logger();
  sub_10000617C(v109, qword_100AE55E0);
  v224(v107, v106, v108);
  v110 = v57;
  v14 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();

  v112 = os_log_type_enabled(v14, v111);
  v1 = *(v0 + 584);
  v11 = *(v0 + 576);
  v8 = *(v0 + 552);
  v2 = *(v0 + 544);
  if (!v112)
  {
LABEL_39:

    v126 = v8[1];
    v126(v11, v2);
    v126(v1, v2);
    goto LABEL_40;
  }

  v201 = v14;
  v113 = *(v0 + 328);
  v189 = v111;
  v114 = *(v0 + 304);
  v228 = *(v0 + 584);
  v115 = swift_slowAlloc();
  v186 = swift_slowAlloc();
  v230[0] = swift_slowAlloc();
  *v115 = 138412802;
  *(v115 + 4) = v110;
  *v186 = v110;
  *(v115 + 12) = 2080;
  v157(v113, &v110[OBJC_IVAR____TtC7Journal5Asset_id], v114);
  sub_10068ACE0(&qword_100AE19B0, &type metadata accessor for UUID);
  v116 = v110;
  v117 = dispatch thunk of CustomStringConvertible.description.getter();
  v119 = v118;
  v211(v113, v114);
  v120 = sub_100008458(v117, v119, v230);

  *(v115 + 14) = v120;
  *(v115 + 22) = 2080;
  sub_10068ACE0(&qword_100ADEFD0, &type metadata accessor for URL);
  v121 = dispatch thunk of CustomStringConvertible.description.getter();
  v123 = v122;
  v124 = v8[1];
  v124(v11, v2);
  v125 = sub_100008458(v121, v123, v230);

  *(v115 + 24) = v125;
  _os_log_impl(&_mh_execute_header, v201, v189, "%@[%s] failed init imageFile does not exist: %s", v115, 0x20u);
  sub_100004F84(v186, &unk_100AD4BB0);

  swift_arrayDestroy();

  v124(v228, v2);
  v12 = &OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
LABEL_40:
  v57 = v213;
LABEL_41:
  v127 = *v12;
  swift_beginAccess();
  v128 = *&v57[v127];
  if (v128 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

LABEL_43:
    v229 = *(v0 + 840);
    v223 = *(v0 + 836);
    v129 = *(v0 + 16);
    v130 = *(v0 + 24);
    v131 = *(v0 + 32);
    v132 = *(v0 + 40);
    v173 = *(v0 + 392);
    v177 = *(v0 + 432);
    v155 = *(v0 + 384);
    v133 = *(v0 + 272);
    v159 = *(v0 + 280);
    v164 = *(v0 + 520);
    v181 = *(v0 + 264);
    v169 = *(v0 + 256);
    v187 = *(v0 + 240);
    v190 = *(v0 + 224);
    v193 = *(v0 + 216);
    v202 = *(v0 + 200);
    v207 = *(v0 + 192);
    v212 = *(v0 + 208);
    sub_1000082B4(v155, *(v0 + 376), &unk_100AD4790);
    v236.origin.x = v129;
    v236.origin.y = v130;
    v236.size.width = v131;
    v236.size.height = v132;
    v134 = NSStringFromCGRect(v236);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v237.origin.x = v129;
    v237.origin.y = v130;
    v237.size.width = v131;
    v237.size.height = v132;
    v135 = NSStringFromCGRect(v237);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v238.origin.x = v129;
    v238.origin.y = v130;
    v238.size.width = v131;
    v238.size.height = v132;
    v136 = NSStringFromCGRect(v238);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v155, &unk_100AD4790);
    sub_100004F84(v164, &unk_100AD6DD0);
    v194(v177, v173);
    (*(v133 + 32))(v169, v159, v181);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0);
    v137 = swift_allocObject();
    v138 = *(*v137 + 104);
    v139 = sub_1000F24EC(&qword_100AD5B20);
    (*(*(v139 - 8) + 56))(v137 + v138, 1, 1, v139);
    *(v137 + *(*v137 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v169, v137 + *(*v137 + 120), &unk_100AEE0A0);
    v85 = v213;
    *&v213[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v137;

    *v187 = static AssetPlacement.maxGridCount.getter();
    (*(v190 + 104))(v187, v223, v193);
    (*(v202 + 104))(v212, v229, v207);
    LOBYTE(v137) = JournalFeatureFlags.isEnabled.getter();
    (*(v202 + 8))(v212, v207);
    if (v137)
    {
      *(v0 + 712) = CFAbsoluteTimeGetCurrent();
      v140 = swift_task_alloc();
      *(v0 + 720) = v140;
      *v140 = v0;
      v140[1] = sub_10067E0EC;
      v87 = *(v0 + 240);
      goto LABEL_45;
    }

    v143 = swift_task_alloc();
    *(v0 + 744) = v143;
    *v143 = v0;
    v143[1] = sub_10067E458;
    v89 = *(v0 + 240);
LABEL_49:
    v145 = *(v0 + 120);
    v144 = *(v0 + 128);

    return sub_1001F8424(v145, v144, v85, v89);
  }

  if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_53:
  v146 = *(v0 + 592);
  v147 = *(v0 + 552);
  v148 = *(v0 + 544);
  v149 = *(v0 + 520);
  v150 = *(v0 + 432);
  v152 = *(v0 + 384);
  v151 = *(v0 + 392);

  sub_100170130();
  swift_allocError();
  *v153 = 0;
  swift_willThrow();

  sub_100004F84(v152, &unk_100AD4790);
  sub_100004F84(v149, &unk_100AD6DD0);
  v194(v150, v151);
  (*(v147 + 8))(v146, v148);
LABEL_23:
  v46 = *(v0 + 600);
  v47 = *(v0 + 552);
  v48 = *(v0 + 544);
  URL.stopAccessingSecurityScopedResource()();
  (*(v47 + 8))(v46, v48);

  v44 = *(v0 + 8);
LABEL_18:

  return v44();
}

uint64_t sub_1006861C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  sub_1000F24EC(&qword_100AD1420);
  v6[27] = swift_task_alloc();
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = type metadata accessor for JournalFeatureFlags();
  v6[31] = v9;
  v6[32] = *(v9 - 8);
  v6[33] = swift_task_alloc();
  v10 = type metadata accessor for AssetPlacement();
  v6[34] = v10;
  v6[35] = *(v10 - 8);
  v6[36] = swift_task_alloc();
  v11 = type metadata accessor for AssetSource();
  v6[37] = v11;
  v6[38] = *(v11 - 8);
  v6[39] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED30);
  v6[40] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v12 = type metadata accessor for PlaceDescriptor();
  v6[44] = v12;
  v6[45] = *(v12 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v6[49] = v13;
  v6[50] = v15;

  return _swift_task_switch(sub_100686510, v13, v15);
}

uint64_t sub_100686510()
{
  v1 = v0[25];
  if (v1)
  {
    v3 = v0[47];
    v2 = v0[48];
    v4 = v0[44];
    v5 = v0[45];
    v6 = v0[24];
    PlaceDescriptor.representations.getter();
    v0[18] = v6;
    v0[19] = v1;

    String.init<A>(_:)();
    PlaceDescriptor.init(representations:commonName:supportingRepresentations:)();
    (*(v5 + 32))(v2, v3, v4);
  }

  else
  {
    (*(v0[45] + 16))(v0[48], v0[23], v0[44]);
  }

  v7 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[44];
  sub_1000065A8(0, &qword_100AEC358);
  (*(v9 + 16))(v8, v7, v10);
  v11 = MKMapItemRequest.init(placeDescriptor:)();
  v0[51] = v11;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_100686738;
  v12 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AE0E48);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039677C;
  v0[13] = &unk_100A77600;
  v0[14] = v12;
  [v11 getMapItemWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100686738()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_100687670;
  }

  else
  {
    v5 = sub_100686868;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100686868()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  *(v0 + 424) = v2;
  sub_1000F24EC(&qword_100AD64A8);
  type metadata accessor for VisitAssetMetadata();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940080;
  if (v1)
  {
    v4 = *(v0 + 192);
  }

  else
  {
    v5 = [v2 name];
    if (v5)
    {
      v6 = v5;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v7;
    }

    else
    {
      v4 = 0;
      v1 = 0xE000000000000000;
    }
  }

  v8._countAndFlagsBits = v4;
  v8._object = v1;
  String.append(_:)(v8);

  v9 = [v2 addressRepresentations];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 cityName];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v12 = [v2 _firstLocalizedCategoryName];
  v44 = v3;
  if (v12 || (v12 = [v2 pointOfInterestCategory]) != 0)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = *(v0 + 336);
  v15 = *(v0 + 344);
  v16 = *(v0 + 328);
  Date.init()();
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 0, 1, v17);
  v18(v14, 1, 1, v17);
  static Date.now.getter();
  v18(v16, 0, 1, v17);
  [v2 _coordinate];
  [v2 _coordinate];
  v19 = [v2 _styleAttributes];
  if (v19)
  {
    v20 = v19;
    sub_1000065A8(0, &qword_100AD5A80);
    NSCoding<>.toData.getter();
  }

  v21 = *(v0 + 320);
  v22 = *(v0 + 304);
  v39 = *(v0 + 312);
  v23 = *(v0 + 296);
  v24 = *(v0 + 280);
  v40 = *(v0 + 288);
  v41 = *(v0 + 272);
  v25 = *(v0 + 256);
  v42 = *(v0 + 248);
  v43 = *(v0 + 264);
  sub_1000065A8(0, &qword_100AD5A90);
  NSCoding<>.toData.getter();
  v26 = [v2 location];
  [v26 horizontalAccuracy];

  v27 = *(v22 + 104);
  v27(v21, enum case for AssetSource.locationPicker(_:), v23);
  (*(v22 + 56))(v21, 0, 1, v23);
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  v27(v39, enum case for AssetSource.intelligentToolbox(_:), v23);
  v28 = sub_10011CEC0(v39, v44);
  *(v0 + 432) = v28;
  *v40 = static AssetPlacement.maxGridCount.getter();
  (*(v24 + 104))(v40, enum case for AssetPlacement.grid(_:), v41);
  (*(v25 + 104))(v43, enum case for JournalFeatureFlags.enhancedSync(_:), v42);
  v29 = JournalFeatureFlags.isEnabled.getter();
  (*(v25 + 8))(v43, v42);
  if (v29)
  {
    *(v0 + 440) = CFAbsoluteTimeGetCurrent();
    v30 = swift_task_alloc();
    *(v0 + 448) = v30;
    *v30 = v0;
    v30[1] = sub_100686E84;
    v31 = *(v0 + 288);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);

    return sub_10056B238(v33, v32, v28, v31, 1);
  }

  else
  {
    v35 = swift_task_alloc();
    *(v0 + 464) = v35;
    *v35 = v0;
    v35[1] = sub_1006871F0;
    v36 = *(v0 + 288);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);

    return sub_1001F8424(v38, v37, v28, v36);
  }
}

uint64_t sub_100686E84()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return _swift_task_switch(sub_100686FA4, v3, v2);
}

uint64_t sub_100686FA4()
{
  (*(v0[29] + 104))(v0[30], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[28]);

  v1 = swift_task_alloc();
  v0[57] = v1;
  *v1 = v0;
  v1[1] = sub_10068709C;
  v2 = v0[30];
  v3 = v0[26];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1002D8344, v3, &type metadata for () + 8);
}

uint64_t sub_10068709C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[29] + 8))(v2[30], v2[28]);

    v4 = v2[49];
    v5 = v2[50];

    return _swift_task_switch(sub_100687460, v4, v5);
  }
}

uint64_t sub_1006871F0()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return _swift_task_switch(sub_100687310, v3, v2);
}

uint64_t sub_100687310()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[44];
  (*(v0[35] + 8))(v0[36], v0[34]);

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100687460()
{
  v1 = v0[55];
  v2 = *(v0 + 54);
  v3 = *(v0 + 27);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, &v2[v4], v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_1001F81C4(v3);
  sub_100004F84(v3, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  v7 = *(v0 + 53);
  v8 = *(v0 + 54);
  v9 = *(v0 + 51);
  v10 = *(v0 + 48);
  v11 = *(v0 + 45);
  v12 = *(v0 + 44);
  (*(*(v0 + 35) + 8))(*(v0 + 36), *(v0 + 34));

  (*(v11 + 8))(v10, v12);

  v13 = *(v0 + 1);

  return v13();
}

uint64_t sub_100687670()
{
  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[44];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006877BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000F24EC(&qword_100AE82A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PlaceDescriptor();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    a1 = *(a1 + 16);
  }

  sub_1000082B4(a2, v9, &qword_100AE82A8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_100004F84(v9, &qword_100AE82A8);
    goto LABEL_10;
  }

  (*(v11 + 32))(v13, v9, v10);
  if (a4)
  {
    result = (*(v11 + 8))(v13, v10);
  }

  else
  {
    PlaceDescriptor.commonName.getter();
    v16 = v15;
    result = (*(v11 + 8))(v13, v10);
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  ++a1;
LABEL_10:
  if (qword_100AD0A20 != -1)
  {
    result = swift_once();
  }

  if (qword_100B30F68 < a1)
  {
    sub_1001928AC();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_100687A18(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v2 - 8);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v41 - v5;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  __chkstk_darwin(v12);
  v43 = &v41 - v13;
  v14 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = *(type metadata accessor for IntentFile() - 8);
      v23 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v56 = (v18 + 48);
      v54 = (v7 + 48);
      v47 = (v7 + 8);
      v48 = (v7 + 32);
      v50 = (v18 + 8);
      v51 = (v18 + 32);
      v24 = *(v22 + 72);
      v46 = v24;
      v55 = v6;
      v42 = v20;
      v52 = v16;
      while (1)
      {
        IntentFile.fileURL.getter();
        if ((*v56)(v16, 1, v17) == 1)
        {
          sub_100004F84(v16, &unk_100AD6DD0);
          goto LABEL_5;
        }

        (*v51)(v20, v16, v17);
        URL.pathExtension.getter();
        static UTType.data.getter();
        v25 = v53;
        v26 = v55;
        UTType.init(filenameExtension:conformingTo:)();
        v27 = *v54;
        if ((*v54)(v25, 1, v26) == 1)
        {
          break;
        }

        v28 = v43;
        (*v48)(v43, v25, v26);
        static UTType.image.getter();
        v49 = UTType.conforms(to:)();
        v29 = *v47;
        (*v47)(v11, v26);
        v30 = v28;
        v20 = v42;
        v29(v30, v26);
        v24 = v46;
        if ((v49 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_15:
        if (!URL.startAccessingSecurityScopedResource()())
        {
          goto LABEL_20;
        }

        v37 = URL.fileSize.getter();
        if (v38)
        {
          v37 = 0;
        }

        v39 = sub_100119B20(v37);
        v16 = v52;
        if (v39)
        {
          sub_1001928AC();
          swift_allocError();
          *v40 = 2;
          swift_willThrow();
          URL.stopAccessingSecurityScopedResource()();
          (*v50)(v20, v17);
          return;
        }

        URL.stopAccessingSecurityScopedResource()();
        (*v50)(v20, v17);
LABEL_5:
        v23 += v24;
        if (!--v21)
        {
          return;
        }
      }

      sub_100004F84(v25, &unk_100AD7C40);
LABEL_10:
      URL.pathExtension.getter();
      static UTType.data.getter();
      v31 = v45;
      UTType.init(filenameExtension:conformingTo:)();
      v32 = v55;
      if (v27(v31, 1, v55) == 1)
      {
        sub_100004F84(v31, &unk_100AD7C40);
LABEL_20:
        (*v50)(v20, v17);
        v16 = v52;
        goto LABEL_5;
      }

      (*v48)(v44, v31, v32);
      static UTType.video.getter();
      v33 = UTType.conforms(to:)();
      v34 = v32;
      v35 = *v47;
      (*v47)(v11, v34);
      if (v33)
      {
        v35(v44, v34);
        v24 = v46;
      }

      else
      {
        static UTType.movie.getter();
        v36 = v44;
        v49 = UTType.conforms(to:)();
        v35(v11, v34);
        v35(v36, v34);
        v24 = v46;
        if ((v49 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_15;
    }
  }
}

uint64_t sub_10068807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v22;
  *(v8 + 240) = v23;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a4;
  *(v8 + 208) = a6;
  *(v8 + 688) = a5;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 176) = a1;
  sub_1000F24EC(&qword_100AE82A8);
  *(v8 + 248) = swift_task_alloc();
  v9 = type metadata accessor for PlaceDescriptor();
  *(v8 + 256) = v9;
  *(v8 + 264) = *(v9 - 8);
  *(v8 + 272) = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 280) = v10;
  *(v8 + 288) = *(v10 - 8);
  *(v8 + 296) = swift_task_alloc();
  v11 = type metadata accessor for EntryDateSource();
  *(v8 + 304) = v11;
  *(v8 + 312) = *(v11 - 8);
  *(v8 + 320) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  *(v8 + 328) = swift_task_alloc();
  v12 = type metadata accessor for Date();
  *(v8 + 336) = v12;
  *(v8 + 344) = *(v12 - 8);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  v13 = type metadata accessor for JournalFeatureFlags();
  *(v8 + 384) = v13;
  *(v8 + 392) = *(v13 - 8);
  *(v8 + 400) = swift_task_alloc();
  v14 = type metadata accessor for CharacterSet();
  *(v8 + 408) = v14;
  *(v8 + 416) = *(v14 - 8);
  *(v8 + 424) = swift_task_alloc();
  v15 = type metadata accessor for AttributedString();
  *(v8 + 432) = v15;
  *(v8 + 440) = *(v15 - 8);
  *(v8 + 448) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v8 + 456) = v16;
  *(v8 + 464) = *(v16 - 8);
  *(v8 + 472) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  *(v8 + 480) = swift_task_alloc();
  sub_1000F24EC(&unk_100ADE5F0);
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  v17 = type metadata accessor for EntrySource();
  *(v8 + 504) = v17;
  *(v8 + 512) = *(v17 - 8);
  *(v8 + 520) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 528) = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 536) = v19;
  *(v8 + 544) = v18;

  return _swift_task_switch(sub_100688580, v19, v18);
}

uint64_t sub_100688580()
{
  sub_1006877BC(v0[25], v0[27], v0[28], v0[29]);
  sub_100687A18(v0[25]);
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[30];
  (*(v0[64] + 104))(v0[65], enum case for EntrySource.blankEntry(_:), v0[63]);
  v7 = type metadata accessor for EntryListType();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = *(v6 + 16);
  UUID.init()();
  (*(v5 + 56))(v3, 0, 1, v4);
  type metadata accessor for JournalEntryMO();
  v10 = static JournalEntryMO.create(type:context:uuid:)();
  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v11 = v10;
  v12 = sub_100035ADC(v11, 1, 1, v9);
  v0[69] = v12;
  sub_1000082B4(v2, v1, &unk_100ADE5F0);
  v104 = v12;
  if ((*(v8 + 48))(v1, 1, v7) == 1)
  {
    v13 = v0[65];
    v15 = v0[63];
    v14 = v0[64];
    v17 = v0[61];
    v16 = v0[62];
    v18 = v0[60];

    sub_100004F84(v18, &qword_100AD1420);
    sub_100004F84(v16, &unk_100ADE5F0);
    (*(v14 + 8))(v13, v15);
    sub_100004F84(v17, &unk_100ADE5F0);
    v19 = v0[23];
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_6:
    v28 = (v0 + 14);
    sub_10077F5F8(v0[22], v19);
    v12[OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle] = 1;
    v29 = sub_1004F9228;
    v101 = 17;
    v102 = &unk_100A775D8;
    v100 = 16;
    v30 = 124;
    v31 = 15;
    v32 = 19;
    v33 = 18;
    goto LABEL_9;
  }

  v20 = v0[61];
  v21 = sub_1000F24EC(&qword_100AD47A0);
  v22 = (*(*(v21 - 8) + 48))(v20, 2, v21);
  v23 = v0[65];
  v25 = v0[63];
  v24 = v0[64];
  v26 = v0[62];
  v27 = v0[60];
  if (v22)
  {

    sub_100004F84(v27, &qword_100AD1420);
    sub_100004F84(v26, &unk_100ADE5F0);
    (*(v24 + 8))(v23, v25);
    sub_10004FF2C(v20, type metadata accessor for EntryListType);
    v19 = v0[23];
    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v103 = v0[65];
    v34 = v0[58];
    v35 = v0[59];
    v36 = v0[57];
    (*(v34 + 32))(v35, v20, v36);

    sub_1007788F0(v35);

    v37 = v35;
    v12 = v104;
    (*(v34 + 8))(v37, v36);
    sub_100004F84(v27, &qword_100AD1420);
    sub_100004F84(v26, &unk_100ADE5F0);
    (*(v24 + 8))(v103, v25);
    v19 = v0[23];
    if (v19)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v28 = (v0 + 2);
  v12[OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle] = sub_100554A40() == 0;
  v29 = sub_1003A9A34;
  v101 = 5;
  v102 = &unk_100A77510;
  v100 = 4;
  v30 = 28;
  v31 = 3;
  v32 = 7;
  v33 = 6;
LABEL_9:
  v38 = *(v12 + 3);
  v39 = swift_allocObject();
  swift_weakInit();
  v0[v33] = v29;
  v0[v32] = v39;
  *v28 = _NSConcreteStackBlock;
  LODWORD(v0[v31]) = 1107296256;
  *(v0 + v30) = 0;
  v0[v100] = sub_100006C7C;
  v0[v101] = v102;
  v40 = _Block_copy(v28);

  [v38 performBlock:v40];
  v41 = v0[55];
  v42 = v0[56];
  v43 = v0[53];
  v44 = v0[54];
  v45 = v0[51];
  v46 = v0[52];
  v47 = v0[24];
  _Block_release(v40);
  sub_1000065A8(0, &qword_100AE4890);
  (*(v41 + 16))(v42, v47, v44);
  v48 = NSAttributedString.init(_:)();
  v0[70] = v48;
  v49 = [v48 string];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v0[20] = v50;
  v0[21] = v52;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000777B4();
  v53 = StringProtocol.trimmingCharacters(in:)();
  v55 = v54;
  (*(v46 + 8))(v43, v45);

  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v53 & 0xFFFFFFFFFFFFLL;
  }

  v57 = v0;
  if (!v56)
  {
    goto LABEL_23;
  }

  v58 = v48;
  v59 = [v58 string];
  if (!v59)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = String._bridgeToObjectiveC()();
  }

  v60 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v59];

  v61 = [objc_opt_self() labelColor];
  v62 = [objc_opt_self() systemFontOfSize:0.0];
  result = [v58 length];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v64 = result;
  v65 = swift_allocObject();
  v65[2] = v62;
  v65[3] = v61;
  v65[4] = 0;
  v65[5] = 0;
  v65[6] = v60;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100080490;
  *(v66 + 24) = v65;
  v57[12] = sub_100080460;
  v57[13] = v66;
  v57[8] = _NSConcreteStackBlock;
  v57[9] = 1107296256;
  v57[10] = sub_10007F714;
  v57[11] = &unk_100A77588;
  v67 = _Block_copy(v57 + 8);
  v68 = v62;
  v69 = v61;
  v70 = v60;

  [v58 enumerateAttributesInRange:0 options:v64 usingBlock:{0, v67}];

  _Block_release(v67);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v73 = v57[49];
  v72 = v57[50];
  v74 = v57[48];
  (*(v73 + 104))(v72, enum case for JournalFeatureFlags.enhancedSync(_:), v74);
  v75 = JournalFeatureFlags.isEnabled.getter();
  (*(v73 + 8))(v72, v74);
  if (v75)
  {
    sub_100780694(v70);
  }

  else
  {
    v76 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText;
    v77 = *&v104[OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText];
    if (!v77 || (v78 = v70, v79 = v77, v80 = static NSObject.== infix(_:_:)(), v79, v78, (v80 & 1) == 0))
    {
      v104[OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged] = 1;
    }

    v81 = *&v104[v76];
    *&v104[v76] = v70;
    v70 = v81;
  }

LABEL_23:
  v82 = v57[42];
  v83 = v57[43];
  v84 = v57[41];
  sub_1000082B4(v57[26], v84, &unk_100AD4790);
  if ((*(v83 + 48))(v84, 1, v82) == 1)
  {
    v85 = v57[66];
    v86 = v57[40];
    v88 = v57[38];
    v87 = v57[39];
    sub_100004F84(v57[41], &unk_100AD4790);
    Date.init()();
    (*(v87 + 104))(v86, enum case for EntryDateSource.unknown(_:), v88);

    v89 = swift_task_alloc();
    v57[74] = v89;
    *v89 = v57;
    v89[1] = sub_100689504;
    v90 = v57[44];
    v91 = v57[40];
    v92 = v85;
  }

  else
  {
    v93 = *(v57[43] + 32);
    v93(v57[47], v57[41], v57[42]);
    static Date.now.getter();
    sub_10068ACE0(&qword_100AD2698, &type metadata accessor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v93(v57[46], v57[45], v57[42]);
    }

    else
    {
      v94 = v57[46];
      v95 = v57[47];
      v96 = v57[42];
      v97 = v57[43];
      (*(v97 + 8))(v57[45], v96);
      (*(v97 + 16))(v94, v95, v96);
    }

    v98 = v57[66];
    (*(v57[39] + 104))(v57[40], enum case for EntryDateSource.unknown(_:), v57[38]);

    v99 = swift_task_alloc();
    v57[71] = v99;
    *v99 = v57;
    v99[1] = sub_100689238;
    v90 = v57[46];
    v91 = v57[40];
    v92 = v98;
  }

  return sub_10078281C(v92, &protocol witness table for MainActor, v90, v91);
}

uint64_t sub_100689238()
{
  v1 = *v0;
  v2 = *v0;
  v12 = *(*v0 + 368);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 336);
  v5 = *(*v0 + 320);
  v6 = *(*v0 + 312);
  v7 = *(*v0 + 304);

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  *(v2 + 576) = v8;
  *(v2 + 584) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v12, v4);
  v9 = *(v1 + 544);
  v10 = *(v1 + 536);

  return _swift_task_switch(sub_100689450, v10, v9);
}

uint64_t sub_100689450()
{
  (*(v0 + 576))(*(v0 + 376), *(v0 + 336));
  v1 = *(v0 + 528);
  *(v0 + 600) = v1;

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  *(v0 + 616) = v4;
  *(v0 + 608) = v2;

  return _swift_task_switch(sub_1006897A8, v2, v4);
}

uint64_t sub_100689504()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 336);
  v5 = *(*v0 + 320);
  v6 = *(*v0 + 312);
  v7 = *(*v0 + 304);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 544);
  v9 = *(v1 + 536);

  return _swift_task_switch(sub_100689708, v9, v8);
}

uint64_t sub_100689708()
{
  v1 = v0[66];
  v0[75] = v1;

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[77] = v4;
  v0[76] = v2;

  return _swift_task_switch(sub_1006897A8, v2, v4);
}

uint64_t sub_1006897A8()
{
  v1 = v0[69];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = swift_allocObject();
  v0[78] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);

  v6 = swift_task_alloc();
  v0[79] = v6;
  *v6 = v0;
  v6[1] = sub_1006898D4;
  v7 = v0[37];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v6, v7, sub_100673C5C, v5, &type metadata for () + 8);
}

uint64_t sub_1006898D4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[36] + 8))(v2[37], v2[35]);

    v4 = v2[77];
    v5 = v2[76];

    return _swift_task_switch(sub_100689A2C, v5, v4);
  }
}

uint64_t sub_100689A2C()
{

  v1 = *(v0 + 544);
  v2 = *(v0 + 536);

  return _swift_task_switch(sub_100689A94, v2, v1);
}

uint64_t sub_100689A94()
{

  v1 = swift_task_alloc();
  *(v0 + 640) = v1;
  *v1 = v0;
  v1[1] = sub_100689B40;
  v2 = *(v0 + 600);

  return sub_100780A08(v2);
}

uint64_t sub_100689B40()
{
  v1 = *v0;

  v2 = *(v1 + 544);
  v3 = *(v1 + 536);

  return _swift_task_switch(sub_100689C84, v3, v2);
}

uint64_t sub_100689C84()
{
  v1 = *(v0 + 688);
  if (v1 != 2)
  {
    v2 = *(v0 + 552);
    v3 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked);
    *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked) = v1 & 1;
    sub_10078333C(v3);
  }

  v4 = *(v0 + 200);
  if (v4)
  {

    v5 = swift_task_alloc();
    *(v0 + 648) = v5;
    *v5 = v0;
    v5[1] = sub_10068A00C;
    v6 = *(v0 + 600);

    return sub_10067BA1C(v6, &protocol witness table for MainActor, v4);
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 264);
    v10 = *(v0 + 248);
    sub_1000082B4(*(v0 + 216), v10, &qword_100AE82A8);
    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      v11 = *(v0 + 248);

      sub_100004F84(v11, &qword_100AE82A8);

      v12 = *(v0 + 8);
      v13 = *(v0 + 552);

      return v12(v13);
    }

    else
    {
      v14 = *(v0 + 232);
      (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));

      v15 = swift_task_alloc();
      *(v0 + 664) = v15;
      *v15 = v0;
      if (v14)
      {
        v15[1] = sub_10068A3EC;
        v16 = *(v0 + 272);
        v17 = *(v0 + 224);
        v18 = *(v0 + 232);
        v19 = *(v0 + 600);
      }

      else
      {
        v15[1] = sub_10068A6B4;
        v16 = *(v0 + 272);
        v17 = *(v0 + 224);
        v19 = *(v0 + 600);
        v18 = 0;
      }

      return sub_1006861C4(v19, &protocol witness table for MainActor, v16, v17, v18);
    }
  }
}

uint64_t sub_10068A00C()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_10068A808;
  }

  else
  {

    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_10068A130;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10068A130()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  sub_1000082B4(*(v0 + 216), v3, &qword_100AE82A8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 248);

    sub_100004F84(v4, &qword_100AE82A8);

    v5 = *(v0 + 8);
    v6 = *(v0 + 552);

    return v5(v6);
  }

  else
  {
    v8 = *(v0 + 232);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));

    v9 = swift_task_alloc();
    *(v0 + 664) = v9;
    *v9 = v0;
    if (v8)
    {
      v9[1] = sub_10068A3EC;
      v10 = *(v0 + 272);
      v11 = *(v0 + 224);
      v12 = *(v0 + 232);
      v13 = *(v0 + 600);
    }

    else
    {
      v9[1] = sub_10068A6B4;
      v10 = *(v0 + 272);
      v11 = *(v0 + 224);
      v13 = *(v0 + 600);
      v12 = 0;
    }

    return sub_1006861C4(v13, &protocol witness table for MainActor, v10, v11, v12);
  }
}

uint64_t sub_10068A3EC()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 544);
  v4 = *(v2 + 536);
  if (v0)
  {
    v5 = sub_10068A970;
  }

  else
  {
    v5 = sub_10068A540;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10068A540()
{
  v1 = v0[70];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];
  v6 = v0[69];

  return v5(v6);
}

uint64_t sub_10068A6B4()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  v3 = *(v2 + 544);
  v4 = *(v2 + 536);
  if (v0)
  {
    v5 = sub_10068AAF4;
  }

  else
  {
    v5 = sub_10068AD44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10068A808()
{
  v1 = *(v0 + 560);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10068A970()
{
  v1 = v0[70];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10068AAF4()
{
  v1 = v0[70];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10068AC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10068ACE0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10068AD50()
{
  v1 = OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC____lazy_storage___fetchedResultsController;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC____lazy_storage___fetchedResultsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC____lazy_storage___fetchedResultsController);
  }

  else
  {
    v4 = sub_10068ADB4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10068ADB4(uint64_t a1)
{
  type metadata accessor for JournalEntryAssetMO();
  v2 = static JournalEntryAssetMO.fetchRequest()();
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithKey:v4 ascending:1];

  sub_1000F24EC(&unk_100AD4780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100941D50;
  *(v6 + 32) = v5;
  sub_1000065A8(0, &qword_100AD5B00);
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setSortDescriptors:isa];

  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100940080;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100031B20();
  strcpy((v9 + 32), "assetMetaData");
  *(v9 + 46) = -4864;
  NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  type metadata accessor for JournalEntryMO();
  v10 = static JournalEntryMO.fetchRequest()();
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() andPredicateWithSubpredicates:v11];

  [v2 setPredicate:v12];
  v13 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v2 managedObjectContext:*(a1 + OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_context) sectionNameKeyPath:0 cacheName:0];

  return v13;
}

void sub_10068B0A8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AssetsMissingMetadataVC();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = sub_10068AD50();
  [v1 setDelegate:v0];

  if (![v0 tableView])
  {
    __break(1u);
  }

  *(swift_allocObject() + 16) = v0;
  objc_allocWithZone(sub_1000F24EC(&qword_100AEC3D8));
  v2 = v0;
  v3 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v4 = *&v2[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_dataSource];
  *&v2[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_dataSource] = v3;

  v5 = *&v2[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC____lazy_storage___fetchedResultsController];
  v8 = 0;
  if ([v5 performFetch:&v8])
  {
    v6 = v8;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10068C55C();
}

id sub_10068B238(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for FileStoreConfiguration();
  v168 = *(v6 - 8);
  v169 = v6;
  __chkstk_darwin(v6);
  v167 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v170 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ByteCountFormatStyle.Units();
  *&v182 = *(v11 - 8);
  __chkstk_darwin(v11);
  v177 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for ByteCountFormatStyle.Style();
  v175 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for ByteCountFormatStyle();
  v179 = *(v173 - 8);
  __chkstk_darwin(v173);
  v176 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v172 = *(v15 - 8);
  __chkstk_darwin(v15);
  v166 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v17 - 8);
  v19 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v162 - v22;
  v24 = [*(a4 + OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_context) objectWithID:{*a3, v21}];
  type metadata accessor for JournalEntryAssetMO();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    return [objc_allocWithZone(UITableViewCell) init];
  }

  v26 = v25;
  v164 = v8;
  v165 = v11;
  v163 = v9;
  v27 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  v28 = objc_allocWithZone(type metadata accessor for Asset());
  v171 = v24;
  v29 = sub_100038FE8(v26);
  v181 = v27;
  v30 = [v27 textLabel];
  if (v30)
  {
    v31 = v30;
    AssetType.rawValue.getter();
    v28 = String._bridgeToObjectiveC()();

    [v31 setText:v28];
  }

  v180 = v29;
  v32 = [v181 textLabel];
  if (v32)
  {
    v33 = v32;
    v34 = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightBold];
    [v33 setFont:v34];
  }

  v35 = [v181 detailTextLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setNumberOfLines:0];
  }

  v37 = [v181 textLabel];
  if (v37)
  {
    v38 = v37;
    [v37 setNumberOfLines:0];
  }

  v39 = 0xD000000000000012;
  v190 = _swiftEmptyArrayStorage;
  v40 = v180;
  v41 = *&v180[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (!v41)
  {
    goto LABEL_67;
  }

  *&v188 = 0;
  *(&v188 + 1) = 0xE000000000000000;
  v42 = v41;
  _StringGuts.grow(_:)(100);
  v43._countAndFlagsBits = 0xD000000000000013;
  v43._object = 0x80000001008E83E0;
  String.append(_:)(v43);
  v44 = [v42 isUploadedToCloud];
  v45 = v44 == 0;
  if (v44)
  {
    v46 = 5457241;
  }

  else
  {
    v46 = 20302;
  }

  v47 = 0xE300000000000000;
  if (v45)
  {
    v48 = 0xE200000000000000;
  }

  else
  {
    v48 = 0xE300000000000000;
  }

  v49 = v48;
  String.append(_:)(*&v46);

  v50._countAndFlagsBits = 0x203A7972746E450ALL;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v51 = [v42 entry];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 CKDescription];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v55;
  }

  else
  {
    v54 = 7104878;
  }

  v56 = v172;
  v57._countAndFlagsBits = v54;
  v57._object = v47;
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0x49746E657261500ALL;
  v58._object = 0xEB00000000203A64;
  String.append(_:)(v58);
  v59 = [v42 parentID];
  if (v59)
  {
    v60 = v59;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v56 + 56))(v19, 0, 1, v15);
  }

  else
  {
    (*(v56 + 56))(v19, 1, 1, v15);
  }

  v40 = v180;
  v61 = v173;
  sub_100024EC0(v19, v23);
  v39 = 0xD000000000000012;
  if ((*(v56 + 48))(v23, 1, v15))
  {
    sub_10029D1EC(v23);
    v62 = 0xE300000000000000;
    v63 = 7104878;
  }

  else
  {
    v64 = v166;
    (*(v56 + 16))(v166, v23, v15);
    sub_10029D1EC(v23);
    v65 = UUID.uuidString.getter();
    v62 = v66;
    (*(v56 + 8))(v64, v15);
    v63 = v65;
  }

  v67 = v62;
  String.append(_:)(*&v63);

  v68._countAndFlagsBits = 0x7461646174654D0ALL;
  v68._object = 0xEB00000000203A61;
  String.append(_:)(v68);
  v69 = [v42 assetMetaData];
  v28 = v42;
  if (!v69)
  {
    object = 0xE100000000000000;
    countAndFlagsBits = 48;
    goto LABEL_40;
  }

  v70 = v69;
  v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = v73;
  v75 = v73 >> 62;
  if ((v73 >> 62) > 1)
  {
    if (v75 != 2)
    {
      sub_1000340DC(v71, v73);
      v76 = 0;
      goto LABEL_39;
    }

    v80 = *(v71 + 16);
    v79 = *(v71 + 24);
    sub_1000340DC(v71, v74);
    v76 = v79 - v80;
    if (!__OFSUB__(v79, v80))
    {
      goto LABEL_39;
    }

    __break(1u);
LABEL_36:
    result = sub_1000340DC(v71, v74);
    LODWORD(v76) = HIDWORD(v71) - v71;
    if (__OFSUB__(HIDWORD(v71), v71))
    {
      __break(1u);
      goto LABEL_96;
    }

    v76 = v76;
    goto LABEL_39;
  }

  if (v75)
  {
    goto LABEL_36;
  }

  sub_1000340DC(v71, v73);
  v76 = BYTE6(v73);
LABEL_39:
  v183 = v76;
  v83 = v174;
  v82 = v175;
  v84 = v178;
  (*(v175 + 104))(v174, enum case for ByteCountFormatStyle.Style.memory(_:), v178);
  v85 = v177;
  static ByteCountFormatStyle.Units.all.getter();
  v86 = v176;
  static FormatStyle<>.byteCount(style:allowedUnits:spellsOutZero:includesActualByteCount:)();
  (*(v182 + 8))(v85, v165);
  (*(v82 + 8))(v83, v84);
  sub_1000F6568();
  sub_10068CE9C();
  sub_10026D574();
  BinaryInteger.formatted<A>(_:)();
  (v179[1])(v86, v61);
  object = v184._object;
  countAndFlagsBits = v184._countAndFlagsBits;
  v39 = 0xD000000000000012;
  v42 = v28;
LABEL_40:
  v87 = object;
  String.append(_:)(*&countAndFlagsBits);

  v88._object = 0x80000001008E8400;
  v88._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v88);
  v89 = sub_1000958AC(0);
  if (!v89 || (v90 = v89, v91 = [v89 data], v90, !v91))
  {
    v98 = 0xE100000000000000;
    v99 = 48;
LABEL_54:
    v107 = v98;
    String.append(_:)(*&v99);

    v108._countAndFlagsBits = 0xD000000000000015;
    v108._object = 0x8000000100900550;
    String.append(_:)(v108);
    v109 = [v42 isRemovedFromCloud];
    v110 = v109 == 0;
    if (v109)
    {
      v111 = 1702195828;
    }

    else
    {
      v111 = 0x65736C6166;
    }

    if (v110)
    {
      v112 = 0xE500000000000000;
    }

    else
    {
      v112 = 0xE400000000000000;
    }

    v113 = v112;
    String.append(_:)(*&v111);

    v115 = *(&v188 + 1);
    v114 = v188;
    v116 = [v42 fileAttachment];
    if (v116)
    {
      v117 = v116;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = v167;
      static FileStoreConfiguration.shared.getter();
      v119 = v170;
      FileStoreConfiguration.getAttachmentURL(from:)();

      (*(v168 + 8))(v118, v169);
      v184._countAndFlagsBits = 0;
      v184._object = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v184._countAndFlagsBits = 0xD000000000000019;
      v184._object = 0x80000001008E8420;
      URL.fileSize.getter();
      if (v120)
      {
        v121 = 0xE100000000000000;
        v122 = 48;
      }

      else
      {
        v122 = sub_100787220();
        v121 = v123;
      }

      v124 = v121;
      String.append(_:)(*&v122);

      v125._countAndFlagsBits = 0x736574796220;
      v125._object = 0xE600000000000000;
      String.append(_:)(v125);
      String.append(_:)(v184);

      (*(v163 + 8))(v119, v164);
      v115 = *(&v188 + 1);
      v114 = v188;
    }

    v126 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
    v128 = *(v126 + 2);
    v127 = *(v126 + 3);
    v129 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      goto LABEL_94;
    }

    while (1)
    {

      *(v126 + 2) = v129;
      v130 = &v126[16 * v128];
      *(v130 + 4) = v114;
      *(v130 + 5) = v115;
      v190 = v126;
LABEL_67:
      v129 = sub_1000F24EC(&unk_100AD9A60);
      inited = swift_initStackObject();
      v182 = xmmword_100940080;
      *(inited + 16) = xmmword_100940080;
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *&v188 = v39;
      *(&v188 + 1) = 0x80000001008E83C0;
      v128 = OBJC_IVAR____TtC7Journal5Asset_attachments;
      v132 = *&v40[OBJC_IVAR____TtC7Journal5Asset_attachments];
      v133 = v132 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v181;
      v184._countAndFlagsBits = v133;
      v134._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v134);

      v135._countAndFlagsBits = 14889;
      v135._object = 0xE200000000000000;
      String.append(_:)(v135);
      v136 = *(&v188 + 1);
      *(inited + 32) = v188;
      *(inited + 40) = v136;
      v126 = &v190;
      sub_1006AD7E8(inited);
      v114 = *&v40[v128];
      if (v114 >> 62)
      {
        v115 = _CocoaArrayWrapper.endIndex.getter();
        if (!v115)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v127 = v114 & 0xFFFFFFFFFFFFFF8;
        v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v115)
        {
          goto LABEL_78;
        }
      }

      if (v115 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_94:
      v126 = sub_10009BCC8((v127 > 1), v129, 1, v126);
    }

    v137 = 0;
    do
    {
      if ((v114 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v137;
      v138 = swift_initStackObject();
      *(v138 + 16) = v182;
      *(v138 + 32) = sub_10080F78C();
      *(v138 + 40) = v139;
      sub_1006AD7E8(v138);
    }

    while (v115 != v137);

    v40 = v180;
LABEL_78:
    swift_getObjectType();
    v140 = swift_conformsToProtocol2();
    if (v140 && v40)
    {
      v141 = v140;
      v142 = v40;
      ObjectType = swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v145 = type metadata accessor for Optional();
      v179 = &v162;
      v146 = *(v145 - 8);
      __chkstk_darwin(v145);
      v148 = &v162 - v147;
      v149 = v142;
      sub_10078B684(ObjectType, v141, v148);
      v150 = *(AssociatedTypeWitness - 8);
      if ((*(v150 + 48))(v148, 1, AssociatedTypeWitness) == 1)
      {

        (*(v146 + 8))(v148, v145);
      }

      else
      {
        v185 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v187 = swift_getAssociatedConformanceWitness();
        v151 = sub_10001A770(&v184._countAndFlagsBits);
        (*(v150 + 32))(v151, v148, AssociatedTypeWitness);
        sub_10029D1D4(&v184._countAndFlagsBits, &v188);
        sub_10000CA14(&v188, v189);
        v152 = sub_10057634C();
        if (v153)
        {
          v154 = v152;
          v155 = v153;
          v156 = swift_initStackObject();
          *(v156 + 16) = v182;
          v184._countAndFlagsBits = 0x617461646174654DLL;
          v184._object = 0xEA00000000000A3ALL;
          v157._countAndFlagsBits = v154;
          v157._object = v155;
          String.append(_:)(v157);

          v158 = v184._object;
          *(v156 + 32) = v184._countAndFlagsBits;
          *(v156 + 40) = v158;
          sub_1006AD7E8(v156);
        }

        sub_10000BA7C(&v188);
      }

      v40 = v180;
      v39 = v181;
    }

    v159 = [v39 detailTextLabel];
    if (v159)
    {
      v160 = v159;
      *&v188 = v190;
      sub_1000F24EC(&qword_100AD60A0);
      sub_10009BDD4();
      BidirectionalCollection<>.joined(separator:)();

      v161 = String._bridgeToObjectiveC()();

      [v160 setText:v161];
    }

    else
    {
    }

    return v39;
  }

  v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;

  v95 = v94;
  v96 = v94 >> 62;
  if ((v94 >> 62) > 1)
  {
    if (v96 != 2)
    {
      sub_1000340DC(v92, v94);
      v97 = 0;
      goto LABEL_53;
    }

    v101 = *(v92 + 16);
    v100 = *(v92 + 24);
    sub_1000340DC(v92, v95);
    v97 = v100 - v101;
    if (!__OFSUB__(v100, v101))
    {
      goto LABEL_53;
    }

    __break(1u);
  }

  else if (!v96)
  {
    sub_1000340DC(v92, v94);
    v97 = BYTE6(v94);
LABEL_53:
    v183 = v97;
    v103 = v174;
    v102 = v175;
    v104 = v178;
    (*(v175 + 104))(v174, enum case for ByteCountFormatStyle.Style.memory(_:), v178);
    v105 = v177;
    static ByteCountFormatStyle.Units.all.getter();
    v106 = v176;
    static FormatStyle<>.byteCount(style:allowedUnits:spellsOutZero:includesActualByteCount:)();
    (*(v182 + 8))(v105, v165);
    (*(v102 + 8))(v103, v104);
    sub_1000F6568();
    sub_10068CE9C();
    sub_10026D574();
    BinaryInteger.formatted<A>(_:)();
    (v179[1])(v106, v61);
    v98 = v184._object;
    v99 = v184._countAndFlagsBits;
    v42 = v28;
    goto LABEL_54;
  }

  result = sub_1000340DC(v92, v95);
  LODWORD(v97) = HIDWORD(v92) - v92;
  if (!__OFSUB__(HIDWORD(v92), v92))
  {
    v97 = v97;
    goto LABEL_53;
  }

LABEL_96:
  __break(1u);
  return result;
}

void sub_10068C55C()
{
  v1 = [v0 navigationItem];
  _StringGuts.grow(_:)(28);

  v2 = sub_10068AD50();
  v3 = [v2 fetchedObjects];

  if (v3)
  {
    type metadata accessor for JournalEntryAssetMO();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v1 setTitle:v7];
}

id sub_10068C840(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_dataSource] = 0;
  v3 = OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_context;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_cancellable] = 0;
  *&v1[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC____lazy_storage___fetchedResultsController] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AssetsMissingMetadataVC();
  v5 = v4;
  return objc_msgSendSuper2(&v7, "initWithStyle:", a1);
}

id sub_10068C938(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_dataSource] = 0;
  v6 = OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_context;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC____lazy_storage___fetchedResultsController] = 0;
  v8 = v7;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for AssetsMissingMetadataVC();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_10068CAB0(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_dataSource] = 0;
  v3 = OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_context;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_cancellable] = 0;
  *&v1[OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC____lazy_storage___fetchedResultsController] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AssetsMissingMetadataVC();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10068CBC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetsMissingMetadataVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10068CC9C()
{
  result = qword_100AEC3A8;
  if (!qword_100AEC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC3A8);
  }

  return result;
}

unint64_t sub_10068CCF0()
{
  result = qword_100AEC3C8;
  if (!qword_100AEC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC3C8);
  }

  return result;
}

id sub_10068CD4C()
{
  type metadata accessor for AssetsMissingMetadataVC();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

  return v1;
}

uint64_t sub_10068CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10068CF08();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10068CE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10068CF08();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10068CE74()
{
  sub_10068CF08();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10068CE9C()
{
  result = qword_100ADAD40;
  if (!qword_100ADAD40)
  {
    type metadata accessor for ByteCountFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADAD40);
  }

  return result;
}

unint64_t sub_10068CF08()
{
  result = qword_100AEC3E0;
  if (!qword_100AEC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC3E0);
  }

  return result;
}

uint64_t type metadata accessor for CanvasDatePickerViewController()
{
  result = qword_100AEC3F0;
  if (!qword_100AEC3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10068CFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v5 - 8);
  v27[0] = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CanvasDatePicker();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  type metadata accessor for CanvasDatePickerViewModel(0);
  v14 = swift_allocObject();

  static Date.now.getter();
  v15 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  v16 = type metadata accessor for EntryDateSource();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) = 1;
  *(v14 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates) = _swiftEmptyArrayStorage;
  *(v14 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType) = 3;
  ObservationRegistrar.init()();
  *(v14 + 16) = a1;
  v17 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  v18 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 16);
  v27[2] = a1;
  v20(v14 + v18, a1 + v17, v19);
  swift_getKeyPath();
  v29 = v14;
  v30 = a2;
  v31 = v28;
  v32 = v14;
  sub_10068D8DC();
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v28 = a2;
  swift_unknownObjectRelease();

  Bindable<A>.init(wrappedValue:)();
  v21 = *(v8 + 28);
  *&v13[v21] = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990);
  swift_storeEnumTagMultiPayload();
  sub_10068D934(v13, v10);
  v22 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  [v22 setModalPresentationStyle:7];
  v23 = [v22 popoverPresentationController];

  if (v23)
  {
    [v23 setDelegate:v22];
  }

  v24 = [v22 popoverPresentationController];
  if (v24)
  {
    v25 = v24;
    [v24 setPermittedArrowDirections:3];

    swift_unknownObjectRelease();

    sub_10068D998(v13);
  }

  else
  {
    sub_10068D998(v13);

    swift_unknownObjectRelease();
  }

  return v22;
}

uint64_t sub_10068D408()
{
  type metadata accessor for CanvasDatePickerViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10068D448(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CanvasDatePickerViewController();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v4];
  }

  else
  {
    __break(1u);
  }
}

id sub_10068D568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasDatePickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10068D5A8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 2)
  {
    v6 = a3;
    v7 = a1;
    v8 = [v6 presentedViewController];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
    }

    else
    {

      v13 = [v6 presentedViewController];
      v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v13];

      v6 = v7;
      v7 = v13;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_10068D6A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10068D8DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10068D730()
{
  swift_getKeyPath();
  sub_10068D8DC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10068D7F4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.calendar.setter();
}

unint64_t sub_10068D8DC()
{
  result = qword_100AEC4A0;
  if (!qword_100AEC4A0)
  {
    type metadata accessor for CanvasDatePickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC4A0);
  }

  return result;
}

uint64_t sub_10068D934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasDatePicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068D998(uint64_t a1)
{
  v2 = type metadata accessor for CanvasDatePicker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068DA0C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0990 != -1)
  {
    swift_once();
  }

  v6 = qword_100B30E68;
  if (!qword_100B30E68)
  {
    return 0;
  }

  sub_1000F24EC(&unk_100AD4780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941D60;
  *(v7 + 32) = [objc_opt_self() whiteColor];
  *(v7 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  sub_10018D564();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = objc_opt_self();
  v10 = [v9 configurationWithPaletteColors:isa];

  v11 = [v9 configurationWithPointSize:100.0];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  v13 = [v6 imageWithConfiguration:v12];
  if (!v13)
  {
    return 0;
  }

  v14 = sub_1006966EC(v5, v13, 0xD000000000000012, 0x8000000100900630);
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  strcpy(v21, "<img src=../");
  HIWORD(v21[1]) = -4864;
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v17._countAndFlagsBits = 47;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v14;
  v18._object = v16;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x8000000100900650;
  String.append(_:)(v19);

  return v21[0];
}

uint64_t sub_10068DD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_10068DDE4, v5, v7);
}

uint64_t sub_10068DDE4()
{
  v1 = v0[4];
  v2 = sub_10068DA0C(v1);
  v0[8] = v3;
  sub_10068FFD0(v1);
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10068DED8;
  v6 = v0[4];
  v8 = v0[2];
  v7 = v0[3];

  return sub_100847498(v8, v7, v6, 0, 0, 0, 0, v2);
}

uint64_t sub_10068DED8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100365F68;
  }

  else
  {

    v6[12] = a2;
    v6[13] = a1;
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100365F4C;
  }

  return _swift_task_switch(v9, v7, v8);
}

double sub_10068E01C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD6F70);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for MusicAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata))
  {

    sub_10025BEA0(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = _s6ResultVMa_6(0);
      *(a1 + 24) = v11;
      *(a1 + 32) = sub_10068FC78(&qword_100AEC4C0, _s6ResultVMa_6);
      *(a1 + 40) = sub_10068FC78(&qword_100AEC4C8, _s6ResultVMa_6);
      v12 = sub_10001A770(a1);
      MusicAssetMetadata.mediaURL.getter();
      v13 = MusicAssetMetadata.artistName.getter();
      v26 = v14;
      v27 = v13;
      v15 = MusicAssetMetadata.song.getter();
      v17 = v16;
      v18 = MusicAssetMetadata.albumName.getter();
      v20 = v19;
      MusicAssetMetadata.startTime.getter();
      (*(v7 + 8))(v10, v6);
      v22 = (v12 + v11[5]);
      v23 = v26;
      *v22 = v27;
      v22[1] = v23;
      v24 = (v12 + v11[6]);
      *v24 = v15;
      v24[1] = v17;
      v25 = (v12 + v11[7]);
      *v25 = v18;
      v25[1] = v20;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD6F70);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_10068E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_10068E374, v5, v7);
}

uint64_t sub_10068E374()
{
  v1 = v0[4];
  v2 = sub_10068DA0C(v1);
  v0[8] = v3;
  sub_1006902A4(v1);
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10068E468;
  v6 = v0[4];
  v8 = v0[2];
  v7 = v0[3];

  return sub_100847498(v8, v7, v6, 0, 0, 0, 0, v2);
}

uint64_t sub_10068E468(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100690E58;
  }

  else
  {

    v6[12] = a2;
    v6[13] = a1;
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100690E54;
  }

  return _swift_task_switch(v9, v7, v8);
}

double sub_10068E5AC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD2A70);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for PodcastAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata))
  {

    sub_10025C244(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = PodcastAssetMetadata.title.getter();
      v13 = v12;
      v14 = PodcastAssetMetadata.author.getter();
      v16 = v15;
      *(a1 + 24) = _s6ResultVMa_5(0);
      *(a1 + 32) = sub_10068FC78(&qword_100AEC4D0, _s6ResultVMa_5);
      *(a1 + 40) = sub_10068FC78(&qword_100AEC4D8, _s6ResultVMa_5);
      v17 = sub_10001A770(a1);
      PodcastAssetMetadata.mediaURL.getter();
      PodcastAssetMetadata.timePlayed.getter();
      (*(v7 + 8))(v10, v6);
      *v17 = v11;
      v17[1] = v13;
      v17[2] = v14;
      v17[3] = v16;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD2A70);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_10068E84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_10068E8E0, v5, v7);
}

uint64_t sub_10068E8E0()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_10068E998;
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];

  return sub_100847498(v4, v3, v2, 0, 0, 0, 0, 0);
}

uint64_t sub_10068E998(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v6[9] = a2;
    v6[10] = a1;
    v10 = v6[6];
    v11 = v6[7];

    return _swift_task_switch(sub_10068EAF0, v10, v11);
  }
}

void sub_10068EB0C(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD4318);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  if (!*(v1 + OBJC_IVAR____TtC7Journal9BookAsset_metadata))
  {
    goto LABEL_4;
  }

  sub_10025C5E8(v5);

  v6 = type metadata accessor for BookAssetMetadata();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100004F84(v5, &qword_100AD4318);
LABEL_4:
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = sub_10068FC78(&qword_100AD42D0, &type metadata accessor for BookAssetMetadata);
  *(a1 + 40) = sub_10068FC78(&qword_100AD42D8, &type metadata accessor for BookAssetMetadata);
  v8 = sub_10001A770(a1);
  (*(v7 + 32))(v8, v5, v6);
}

uint64_t sub_10068ECC4(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AEC628);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_100690788();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for URL();
  sub_10068FC78(&qword_100AE9620, &type metadata accessor for URL);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    _s6ResultVMa_6(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for Date();
    sub_10068FC78(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10068EF58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1000F24EC(&qword_100AEC618);
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = _s6ResultVMa_6(0);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_100690788();
  v31 = v11;
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_10000BA7C(a1);
  }

  v16 = v29;
  type metadata accessor for URL();
  v37 = 0;
  sub_10068FC78(&qword_100AE9610, &type metadata accessor for URL);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100021CEC(v8, v14, &unk_100AD6DD0);
  v36 = 1;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = &v14[v12[5]];
  *v18 = v17;
  v18[1] = v19;
  v35 = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = &v14[v12[6]];
  *v21 = v20;
  v21[1] = v22;
  v34 = 3;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = &v14[v12[7]];
  *v24 = v23;
  v24[1] = v25;
  type metadata accessor for Date();
  v33 = 4;
  sub_10068FC78(&qword_100AE4998, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v16 + 8))(v31, v30);
  sub_100021CEC(v5, &v14[v12[8]], &unk_100AD4790);
  sub_100690830(v14, v28, _s6ResultVMa_6);
  sub_10000BA7C(a1);
  return sub_100690898(v14, _s6ResultVMa_6);
}

uint64_t sub_10068F488(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AEC640);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_1006907DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    _s6ResultVMa_5(0);
    v8[13] = 2;
    type metadata accessor for URL();
    sub_10068FC78(&qword_100AE9620, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[12] = 3;
    type metadata accessor for Date();
    sub_10068FC78(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10068F71C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = sub_1000F24EC(&qword_100AEC630);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = _s6ResultVMa_5(0);
  __chkstk_darwin(v12);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CA14(a1, a1[3]);
  sub_1006907DC();
  v32 = v11;
  v15 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_10000BA7C(a1);
  }

  v28 = v5;
  v33 = v12;
  v37 = 0;
  v16 = v30;
  v17 = v31;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  *v14 = v18;
  v14[1] = v19;
  v36 = 1;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27[1] = v20;
  v14[2] = v21;
  v14[3] = v22;
  type metadata accessor for URL();
  v35 = 2;
  sub_10068FC78(&qword_100AE9610, &type metadata accessor for URL);
  v23 = v8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v33;
  sub_100021CEC(v23, v14 + *(v33 + 24), &unk_100AD6DD0);
  type metadata accessor for Date();
  v34 = 3;
  sub_10068FC78(&qword_100AE4998, &type metadata accessor for Date);
  v25 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v16 + 8))(v32, v17);
  sub_100021CEC(v25, *(v24 + 28), &unk_100AD4790);
  sub_100690830(0, v29, _s6ResultVMa_5);
  sub_10000BA7C(a1);
  return sub_100690898(0, _s6ResultVMa_5);
}

uint64_t sub_10068FBC8(uint64_t a1)
{
  result = sub_10068FC78(&qword_100AEC4A8, type metadata accessor for BookAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10068FC20(uint64_t a1)
{
  result = sub_10068FC78(&qword_100AEC4B0, type metadata accessor for PodcastAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10068FC78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10068FCC0(uint64_t a1)
{
  result = sub_10068FC78(&qword_100AEC4B8, type metadata accessor for MusicAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10068FD18()
{
  v1 = *v0;
  v2 = 0x4C5255616964656DLL;
  v3 = 1735290739;
  v4 = 0x6D614E6D75626C61;
  if (v1 != 3)
  {
    v4 = 0x6D69547472617473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614E747369747261;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10068FDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100690B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10068FDE0(uint64_t a1)
{
  v2 = sub_100690788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10068FE1C(uint64_t a1)
{
  v2 = sub_100690788();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10068FE88()
{
  v1 = 0x656C746974;
  v2 = 0x4C5255616964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x79616C50656D6974;
  }

  if (*v0)
  {
    v1 = 0x726F68747561;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10068FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100690CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10068FF28(uint64_t a1)
{
  v2 = sub_1006907DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10068FF64(uint64_t a1)
{
  v2 = sub_1006907DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10068FFD0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() _systemImageNamed:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() whiteColor];
  v9 = [v7 imageWithTintColor:v8 renderingMode:2];

  v10 = [objc_opt_self() configurationWithPointSize:100.0];
  v11 = [v9 imageWithConfiguration:v10];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_1006966EC(v5, v11, 0x6F6349636973756DLL, 0xEE00636965682E6ELL);
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  strcpy(v19, "<img src=../");
  HIWORD(v19[1]) = -4864;
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v15._countAndFlagsBits = 47;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17._object = 0x8000000100900610;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v17);

  return v19[0];
}

uint64_t sub_1006902A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() _systemImageNamed:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() whiteColor];
  v9 = [v7 imageWithTintColor:v8 renderingMode:2];

  v10 = [objc_opt_self() configurationWithPointSize:100.0];
  v11 = [v9 imageWithConfiguration:v10];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_1006966EC(v5, v11, 0xD000000000000010, 0x8000000100900670);
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  strcpy(v19, "<img src=../");
  HIWORD(v19[1]) = -4864;
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v15._countAndFlagsBits = 47;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x8000000100900610;
  String.append(_:)(v17);

  return v19[0];
}

void sub_1006905B0()
{
  sub_10034652C();
  if (v0 <= 0x3F)
  {
    sub_10000A2EC(319, &qword_100AD2EE8, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_10000A2EC(319, &qword_100AD59F0, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1006906AC()
{
  sub_10000A2EC(319, &qword_100AD2EE8, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_10034652C();
    if (v1 <= 0x3F)
    {
      sub_10000A2EC(319, &qword_100AD59F0, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100690788()
{
  result = qword_100AEC620;
  if (!qword_100AEC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC620);
  }

  return result;
}

unint64_t sub_1006907DC()
{
  result = qword_100AEC638;
  if (!qword_100AEC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC638);
  }

  return result;
}

uint64_t sub_100690830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100690898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10069091C()
{
  result = qword_100AEC648;
  if (!qword_100AEC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC648);
  }

  return result;
}

unint64_t sub_100690974()
{
  result = qword_100AEC650;
  if (!qword_100AEC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC650);
  }

  return result;
}

unint64_t sub_1006909CC()
{
  result = qword_100AEC658;
  if (!qword_100AEC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC658);
  }

  return result;
}

unint64_t sub_100690A24()
{
  result = qword_100AEC660;
  if (!qword_100AEC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC660);
  }

  return result;
}

unint64_t sub_100690A7C()
{
  result = qword_100AEC668;
  if (!qword_100AEC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC668);
  }

  return result;
}

unint64_t sub_100690AD4()
{
  result = qword_100AEC670;
  if (!qword_100AEC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC670);
  }

  return result;
}

uint64_t sub_100690B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1735290739 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100690CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100690E5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  return sub_10000BA7C(&v7);
}

uint64_t sub_100690EF4(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD7C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100690F5C()
{
  v0 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;

  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100690EF4(v2);
    v10 = 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    static UTType.video.getter();
    v11 = UTType.conforms(to:)();
    v12 = *(v4 + 8);
    v12(v6, v3);
    if (v11)
    {
      v12(v9, v3);
      v10 = 1;
    }

    else
    {
      static UTType.movie.getter();
      v10 = UTType.conforms(to:)();
      v12(v6, v3);
      v12(v9, v3);
    }
  }

  return v10 & 1;
}

uint64_t sub_1006911A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;

  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100690EF4(v6);
    v14 = 0;
  }

  else
  {
    v15 = (*(v8 + 32))(v13, v6, v7);
    a3(v15);
    v14 = UTType.conforms(to:)();
    v16 = *(v8 + 8);
    v16(v11, v7);
    v16(v13, v7);
  }

  return v14 & 1;
}

unint64_t sub_100691390(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1000065A8(0, &qword_100ADC670);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1006914A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = 0;
    v7 = (a3 + 40);
    do
    {
      if (*v7)
      {
        if (a2)
        {
          v8 = *(v7 - 1) == a1 && *v7 == a2;
          if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v7 += 2;
      ++v6;
    }

    while (v3 != v6);
  }

  return 0;
}

unint64_t sub_100691540(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for Asset();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100691630(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100692980(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1006916BC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100692994(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    sub_10002432C((v9 + 32), a2);
    result = memmove((v9 + 32), (v9 + 64), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100691750@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1006929A8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for VisitAssetMetadata();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100691858(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1006929BC(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1006918E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100692A0C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_100691970(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100692A20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100691A14(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100692A34(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[4 * a1];
    v7 = v6[4];
    v8 = v5 - 1;
    memmove(v6 + 4, v6 + 8, 32 * (v5 - 1 - a1));
    v3[2] = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100691AB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100692A48(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100691B3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100692A5C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100691BF8(uint64_t a1, uint64_t a2)
{
  v122 = a1;
  v123 = a2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v118 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD8D38);
  __chkstk_darwin(v5 - 8);
  v7 = &v95 - v6;
  v8 = sub_1000F24EC(&qword_100AD8D40);
  v119 = *(v8 - 8);
  v120 = v8;
  __chkstk_darwin(v8);
  v117 = &v95 - v9;
  v115 = sub_1000F24EC(&qword_100AD8D48);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v95 - v10;
  v11 = sub_1000F24EC(&qword_100AD8D50);
  v111 = *(v11 - 8);
  v112 = v11;
  __chkstk_darwin(v11);
  v109 = &v95 - v12;
  v116 = sub_1000F24EC(&qword_100AD8D58);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v121 = &v95 - v13;
  v108 = type metadata accessor for WorkoutHeartRateFormatStyle();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v124 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v105 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v95 - v18;
  v20 = sub_1000F24EC(&unk_100AD4790);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v95 - v25;
  v27 = __chkstk_darwin(v24);
  v125 = &v95 - v28;
  __chkstk_darwin(v27);
  v126 = &v95 - v29;
  v30 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v30 - 8);
  v32 = &v95 - v31;
  v33 = type metadata accessor for WorkoutRouteAssetMetadata();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata))
  {
    (*(v34 + 56))(v32, 1, 1, v33);
    goto LABEL_8;
  }

  sub_10025B758(v32);

  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
LABEL_8:
    sub_100004F84(v32, &qword_100AD5B28);
    return 0;
  }

  v104 = v7;
  v102 = v34;
  v37 = *(v34 + 32);
  v103 = v33;
  v37(v36, v32, v33);
  v38 = WorkoutRouteAssetMetadata.type.getter();
  v40 = v39;
  WorkoutRouteAssetMetadata.startTime.getter();
  WorkoutRouteAssetMetadata.endTime.getter();
  v97 = COERCE_DOUBLE(WorkoutRouteAssetMetadata.mindfulnessHeartRate.getter());
  v96 = v41;
  v95 = WorkoutRouteAssetMetadata.caloriesBurnt.getter();
  v98 = v42;
  v101 = WorkoutRouteAssetMetadata.distance.getter();
  v100 = v43;
  v44 = sub_10009B77C(0, 1, 1, _swiftEmptyArrayStorage);
  v46 = v44[2];
  v45 = v44[3];
  if (v46 >= v45 >> 1)
  {
    v44 = sub_10009B77C((v45 > 1), v46 + 1, 1, v44);
  }

  v44[2] = v46 + 1;
  v47 = &v44[2 * v46];
  v47[4] = v38;
  v47[5] = v40;
  sub_100088AC8(v126, v26);
  v48 = v124;
  v49 = *(v124 + 48);
  v50 = v49(v26, 1, v15);
  v99 = v36;
  if (v50 == 1)
  {
    v51 = v26;
  }

  else
  {
    v53 = *(v48 + 32);
    v53(v19, v26, v15);
    sub_100088AC8(v125, v23);
    if (v49(v23, 1, v15) != 1)
    {
      v53(v105, v23, v15);
      Date.timeIntervalSince(_:)();
      if (qword_100AD02E8 != -1)
      {
        v94 = v56;
        swift_once();
        v56 = v94;
      }

      v57 = [qword_100AF0058 stringFromTimeInterval:v56 + 0.5];
      if (v57)
      {
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }

      v55 = v104;
      v63 = v44[2];
      v62 = v44[3];
      if (v63 >= v62 >> 1)
      {
        v44 = sub_10009B77C((v62 > 1), v63 + 1, 1, v44);
      }

      v64 = *(v124 + 8);
      v64(v105, v15);
      v64(v19, v15);
      v44[2] = v63 + 1;
      v65 = &v44[2 * v63];
      v65[4] = v59;
      v65[5] = v61;
      v54 = v123;
      goto LABEL_20;
    }

    (*(v48 + 8))(v19, v15);
    v51 = v23;
  }

  sub_100004F84(v51, &unk_100AD4790);
  v54 = v123;
  v55 = v104;
LABEL_20:
  v66 = v122;
  if ((v96 & 1) == 0 && v97 > 0.0)
  {
    v127 = v97;
    v67 = v106;
    static FormatStyle<>.beatsPerMinute.getter();
    sub_10009BA68();
    sub_100692928();
    v68 = v108;
    BinaryFloatingPoint.formatted<A>(_:)();
    (*(v107 + 8))(v67, v68);
    v69 = v128;
    v70 = v129;
    v72 = v44[2];
    v71 = v44[3];
    if (v72 >= v71 >> 1)
    {
      v44 = sub_10009B77C((v71 > 1), v72 + 1, 1, v44);
    }

    v44[2] = v72 + 1;
    v73 = &v44[2 * v72];
    v73[4] = v69;
    v73[5] = v70;
  }

  if (v98)
  {
    v74 = v44[2];
  }

  else
  {
    v75 = [objc_opt_self() kilocalories];
    sub_1000065A8(0, &qword_100AD8D60);
    Measurement.init(value:unit:)();
    v76 = v110;
    static Measurement<>.FormatStyle.UnitWidth.wide.getter();
    v77 = v117;
    static MeasurementFormatUnitUsage<>.workout.getter();
    static Locale.autoupdatingCurrent.getter();
    sub_10009BA68();
    FloatingPointFormatStyle.init(locale:)();
    v78 = sub_1000F24EC(&qword_100AD8D68);
    (*(*(v78 - 8) + 56))(v55, 0, 1, v78);
    v79 = v109;
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    sub_100004F84(v55, &qword_100AD8D38);
    (*(v119 + 8))(v77, v120);
    (*(v113 + 8))(v76, v115);
    sub_10009BABC();
    v80 = v116;
    v81 = v112;
    Measurement<>.formatted<A>(_:)();
    (*(v111 + 8))(v79, v81);
    v82 = v128;
    v83 = v129;
    v85 = v44[2];
    v84 = v44[3];
    v74 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      v44 = sub_10009B77C((v84 > 1), v85 + 1, 1, v44);
    }

    (*(v114 + 8))(v121, v80);
    v44[2] = v74;
    v86 = &v44[2 * v85];
    v86[4] = v82;
    v86[5] = v83;
  }

  v87 = v44[3];
  if (v74 >= v87 >> 1)
  {
    v44 = sub_10009B77C((v87 > 1), v74 + 1, 1, v44);
  }

  v44[2] = v74 + 1;
  v88 = &v44[2 * v74];
  v89 = v100;
  v88[4] = v101;
  v88[5] = v89;
  v128 = v44;
  if (v54)
  {
    v90 = sub_1006914A0(v66, v54, v44);
    if ((v91 & 1) == 0 && !v90)
    {
      sub_100691858(0);
    }
  }

  sub_10009BB20(8236, 0xE200000000000000, v128);
  v93 = v92;

  sub_100004F84(v125, &unk_100AD4790);
  sub_100004F84(v126, &unk_100AD4790);
  (*(v102 + 8))(v99, v103);
  return v93;
}

unint64_t sub_100692928()
{
  result = qword_100AEC7A0;
  if (!qword_100AEC7A0)
  {
    type metadata accessor for WorkoutHeartRateFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC7A0);
  }

  return result;
}

uint64_t sub_100692A5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100692B18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_100034298(&qword_100AECDE8, &type metadata accessor for Calendar);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_100692DB8(uint64_t a1)
{
  v3 = type metadata accessor for InsightsDataManager.Streaks(0);
  v4 = __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1006958DC(v1 + v9, v8, type metadata accessor for InsightsDataManager.Streaks);
  if (!sub_100889658(v8, a1) || !sub_100889658(&v8[v3[5]], a1 + v3[5]) || !sub_100889658(&v8[v3[6]], a1 + v3[6]) || !sub_100889658(&v8[v3[7]], a1 + v3[7]) || !sub_100889658(&v8[v3[8]], a1 + v3[8]))
  {
    sub_10069597C(v8, type metadata accessor for InsightsDataManager.Streaks);
    goto LABEL_9;
  }

  v10 = sub_100889658(&v8[v3[9]], a1 + v3[9]);
  sub_10069597C(v8, type metadata accessor for InsightsDataManager.Streaks);
  if (!v10)
  {
LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return sub_10069597C(a1, type metadata accessor for InsightsDataManager.Streaks);
  }

  sub_1006958DC(a1, v6, type metadata accessor for InsightsDataManager.Streaks);
  swift_beginAccess();
  sub_100695878(v6, v1 + v9);
  swift_endAccess();
  return sub_10069597C(a1, type metadata accessor for InsightsDataManager.Streaks);
}

uint64_t sub_100693098@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  v4 = type metadata accessor for Calendar();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100693190(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  v5 = type metadata accessor for Calendar();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10069322C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal19InsightsDataManager__referenceDate;
  swift_beginAccess();
  return sub_100088AC8(v5 + v3, a1);
}

uint64_t sub_1006932F4(uint64_t a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7Journal19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_100088AC8(v1 + v6, v5);
  v7 = sub_1006954E8(v5, a1);
  sub_100004F84(v5, &unk_100AD4790);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_100088AC8(a1, v5);
    swift_beginAccess();
    sub_100041B1C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100004F84(a1, &unk_100AD4790);
}

uint64_t sub_1006934E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_100221D8C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100693550()
{
  swift_getKeyPath();
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);

  return v1;
}

uint64_t sub_100693668@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_1006958DC(v9 + v7, a3, a2);
}

uint64_t sub_100693738()
{
  swift_getKeyPath();
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime);

  return v1;
}

uint64_t sub_100693810()
{
  swift_getKeyPath();
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1006938BC()
{
  swift_getKeyPath();
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100693968@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__updateTask);
}

uint64_t sub_100693A48()
{
  sub_10069597C(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__lastUpdated, type metadata accessor for InsightsDataManager.LastUpdate);

  v1 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  v2 = type metadata accessor for Calendar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__referenceDate, &unk_100AD4790);

  sub_10069597C(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  sub_10069597C(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks, type metadata accessor for InsightsDataManager.Streaks);

  v3 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100693C00()
{
  sub_100693A48();

  return swift_deallocClassInstance();
}

uint64_t sub_100693C60(uint64_t *a1, int a2)
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

uint64_t sub_100693CA8(uint64_t result, int a2, int a3)
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

uint64_t sub_100693CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100693D30(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100693DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100693E08(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100693E70(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100693E88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100693ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100693F28()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InsightsDataManager.AssetCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InsightsDataManager.AssetCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10069410C(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AECEB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_100695AC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_100034298(&qword_100AD8280, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    v13 = 1;
    type metadata accessor for Date();
    sub_100034298(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_1000F24EC(&qword_100AECE98);
    sub_100695B68(&qword_100AECEB8, sub_100695BEC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006943A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for Date();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&qword_100AECE88);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for InsightsDataManager.EntrySummary(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_100695AC0();
  v29 = v8;
  v12 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_10000BA7C(a1);
  }

  v30 = a1;
  v13 = v25;
  v14 = v26;
  v34 = 0;
  sub_100034298(&qword_100AD81F0, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v24 + 32);
  v21 = v11;
  v16 = v28;
  v28 = v5;
  v15(v11, v16, v5);
  v33 = 1;
  sub_100034298(&qword_100AE4998, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 32))(&v21[*(v9 + 20)], v4, v14);
  sub_1000F24EC(&qword_100AECE98);
  v32 = 2;
  sub_100695B68(&qword_100AECEA0, sub_100695B14);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v21;
  v18 = v30;
  (*(v13 + 8))(v29, v27);
  *(v17 + *(v9 + 24)) = v31;
  sub_1006958DC(v17, v22, type metadata accessor for InsightsDataManager.EntrySummary);
  sub_10000BA7C(v18);
  return sub_10069597C(v17, type metadata accessor for InsightsDataManager.EntrySummary);
}

uint64_t sub_1006948D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000AC110(*a1);
  v5 = v4;
  if (v3 == sub_1000AC110(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100694960()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000AC110(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006949C4()
{
  sub_1000AC110(*v0);
  String.hash(into:)();
}

Swift::Int sub_100694A18()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000AC110(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100694A78@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006957D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100694AA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000AC110(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100694B88()
{
  result = qword_100AECDB0;
  if (!qword_100AECDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECDB0);
  }

  return result;
}

uint64_t sub_100694C24()
{
  v1 = 0x7461447972746E65;
  if (*v0 != 1)
  {
    v1 = 0x7079547465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100694C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100695D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100694CA4(uint64_t a1)
{
  v2 = sub_100695AC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100694CE0(uint64_t a1)
{
  v2 = sub_100695AC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100694D4C(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

LABEL_8:
    Hasher._combine(_:)(4uLL);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();

    goto LABEL_12;
  }

  if (!v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_11:
  Hasher._combine(_:)(v4);
LABEL_12:
  if (*(v1 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v1 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  sub_1006950A4(a1, *(v1 + 24));
  return NSObject.hash(into:)();
}

id sub_100694E48@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_10025A7B0(v2);
}

Swift::Int sub_100694E54()
{
  Hasher.init(_seed:)();
  sub_100694D4C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100694E98()
{
  Hasher.init(_seed:)();
  sub_100694D4C(v1);
  return Hasher._finalize()();
}

uint64_t sub_100694ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1006952BC(v5, v7) & 1;
}

unint64_t sub_100694F24()
{
  result = qword_100AECDB8;
  if (!qword_100AECDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECDB8);
  }

  return result;
}

unint64_t sub_100694F7C()
{
  result = qword_100AECDC0;
  if (!qword_100AECDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECDC0);
  }

  return result;
}

unint64_t sub_100694FD8()
{
  result = qword_100AECDC8;
  if (!qword_100AECDC8)
  {
    sub_1000F2A18(&qword_100AECDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECDC8);
  }

  return result;
}

uint64_t sub_10069503C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1006950A4(uint64_t a1, uint64_t a2)
{
  v3 = Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000065A8(0, &qword_100AD43F0);
    sub_1001E4B10();
    Set.Iterator.init(_cocoa:)();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  while (a2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_20:
      sub_100014FF8();
      Hasher._combine(_:)(v11);
      return;
    }

    sub_1000065A8(0, &qword_100AD43F0);
    swift_dynamicCast();
    v15 = v18;
LABEL_10:
    v16 = NSObject._rawHashValue(seed:)(v3);

    v11 ^= v16;
  }

  if (v7)
  {
    v13 = v6;
LABEL_9:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(a2 + 48) + ((v13 << 9) | (8 * v14)));
    v15 = v18;
    goto LABEL_10;
  }

  v17 = v6;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      goto LABEL_20;
    }

    v7 = *(v4 + 8 * v13);
    ++v17;
    if (v7)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}