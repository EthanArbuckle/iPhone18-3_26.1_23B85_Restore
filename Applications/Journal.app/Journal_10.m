BOOL sub_10011A520()
{
  v38 = type metadata accessor for VisitAssetMetadata();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AEED30);
  v37 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v33 - v8;
  v10 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for MultiPinMapAssetMetadata();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_11;
  }

  sub_1000768B4(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_11:
    sub_100004F84(v12, &unk_100AD5B30);
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  (*(v14 + 32))(v16, v12, v13);
  v17 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v14 + 8))(v16, v13);
  v18 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v19 = *(v17 + 16);
    if (v19)
    {
      v34 = v7;
      v39 = _swiftEmptyArrayStorage;
      sub_100199A44(0, v19, 0);
      v18 = v39;
      v21 = *(v1 + 16);
      v20 = v1 + 16;
      v22 = *(v20 + 64);
      v33[1] = v17;
      v23 = v17 + ((v22 + 32) & ~v22);
      v35 = *(v20 + 56);
      v36 = v21;
      do
      {
        v24 = v38;
        v36(v3, v23, v38);
        VisitAssetMetadata.assetSource.getter();
        (*(v20 - 8))(v3, v24);
        v39 = v18;
        v26 = v18[2];
        v25 = v18[3];
        if (v26 >= v25 >> 1)
        {
          sub_100199A44(v25 > 1, v26 + 1, 1);
          v18 = v39;
        }

        v18[2] = v26 + 1;
        sub_100021CEC(v9, v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v26, &unk_100AEED30);
        v23 += v35;
        --v19;
      }

      while (v19);

      v7 = v34;
    }

    else
    {
    }
  }

LABEL_12:
  v27 = enum case for AssetSource.automatic(_:);
  v28 = type metadata accessor for AssetSource();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v7, v27, v28);
  (*(v29 + 56))(v7, 0, 1, v28);
  LOBYTE(v27) = sub_1006B7490(v7, v18);
  sub_100004F84(v7, &unk_100AEED30);
  if (v27)
  {
    v30 = sub_1008906D0(v18);

    v31 = *(v30 + 16);

    return v31 == 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10011AA48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 185) = a3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = sub_1000F24EC(&qword_100AD38D0);
  *(v4 + 72) = swift_task_alloc();
  v7 = sub_1000F24EC(&unk_100AD5B30);
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 - 8);
  *(v4 + 96) = swift_task_alloc();
  v8 = type metadata accessor for MultiPinMapAssetMetadata();
  *(v4 + 104) = v8;
  *(v4 + 112) = *(v8 - 8);
  *(v4 + 120) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v4 + 128) = v9;
  *(v4 + 136) = v11;

  return _swift_task_switch(sub_10011AC4C, v9, v11);
}

uint64_t sub_10011AC4C()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  if (!*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v4 + 56))(*(v0 + 96), 1, 1, *(v0 + 104));
    goto LABEL_9;
  }

  sub_1000768B4(v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_9:
    sub_100004F84(*(v0 + 96), &unk_100AD5B30);
LABEL_10:

    v20 = *(v0 + 8);

    return v20();
  }

  (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
  if (MultiPinMapAssetMetadata.isSlim.getter() == 2)
  {
    v6 = *(v0 + 32);
    v7 = *&v6[OBJC_IVAR____TtC7Journal5Asset_context];
    *(v0 + 160) = v7;
    if (v7)
    {
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 185);
      v12 = swift_allocObject();
      *(v0 + 168) = v12;
      *(v12 + 16) = v6;
      *(v12 + 24) = v11;
      (*(v9 + 104))(v8, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);
      v13 = v6;
      v7;
      v14 = swift_task_alloc();
      *(v0 + 176) = v14;
      v15 = sub_1000F24EC(&qword_100AD38E0);
      *v14 = v0;
      v14[1] = sub_10011B5A8;
      v16 = *(v0 + 56);
      v17 = sub_10011D4B4;
      v18 = v0 + 184;
      v19 = v12;

      return NSManagedObjectContext.perform<A>(schedule:_:)(v18, v16, v17, v19, v15);
    }

    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    goto LABEL_10;
  }

  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 104);
  v25 = *(v0 + 80);
  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  MultiPinMapAssetMetadata.isSlim.setter();
  (*(v22 + 16))(v27, v23, v24);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8);
  v28 = swift_allocObject();
  (*(v26 + 56))(v28 + *(*v28 + 104), 1, 1, v25);
  *(v28 + *(*v28 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v27, v28 + *(*v28 + 120), &qword_100AD38D0);
  *(v1 + v2) = v28;

  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (!v18)
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(schedule:_:)(v18, v16, v17, v19, v15);
  }

  v29 = v18;
  v30 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v32 = v30;
  v33 = swift_task_alloc();
  *(v0 + 144) = v33;
  *v33 = v0;
  v33[1] = sub_10011B0CC;
  v34 = *(v0 + 24);
  v35 = *(v0 + 16);

  return sub_10078BBDC(v35, v34, ObjectType, v29);
}

uint64_t sub_10011B0CC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10011B1EC, v3, v2);
}

uint64_t sub_10011B1EC()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10011B2A0;
  v2 = *(v0 + 16);

  return sub_1001DA5A8(v2);
}

uint64_t sub_10011B2A0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10011B3C0, v3, v2);
}

uint64_t sub_10011B3C0()
{
  v1 = *(v0 + 32);
  v2 = *&v1[OBJC_IVAR____TtC7Journal5Asset_context];
  *(v0 + 160) = v2;
  if (v2)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 185);
    v7 = swift_allocObject();
    *(v0 + 168) = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
    v8 = v1;
    v2;
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    v10 = sub_1000F24EC(&qword_100AD38E0);
    *v9 = v0;
    v9[1] = sub_10011B5A8;
    v11 = *(v0 + 56);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 184, v11, sub_10011D4B4, v7, v10);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10011B5A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[20];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v5 = v2[16];
    v6 = v2[17];

    return _swift_task_switch(sub_10011B6FC, v5, v6);
  }
}

uint64_t sub_10011B6FC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10011B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v5 = type metadata accessor for VisitAssetMetadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for MultiPinMapAssetMetadata();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v13 + 56))(v11, 1, 1, v12, v14);
    goto LABEL_15;
  }

  sub_1000768B4(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_15:
    sub_100004F84(v11, &unk_100AD5B30);
    goto LABEL_16;
  }

  (*(v13 + 32))(v16, v11, v12);
  v17 = MultiPinMapAssetMetadata.visitsData.getter();
  result = (*(v13 + 8))(v16, v12);
  if (!v17)
  {
LABEL_16:
    v24 = *(v6 + 56);
    v25 = a3;
    return v24(v25, 1, 1, v5);
  }

  v27 = a3;
  v19 = *(v17 + 16);
  if (!v19)
  {
LABEL_19:

    v24 = *(v6 + 56);
    v25 = v27;
    return v24(v25, 1, 1, v5);
  }

  v20 = 0;
  v28 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  while (v20 < *(v17 + 16))
  {
    (*(v6 + 16))(v8, v28 + *(v6 + 72) * v20, v5);
    v21 = VisitAssetMetadata.id.getter();
    if (v30)
    {
      if (v21 == v29 && v22 == v30)
      {

LABEL_21:

        v26 = v27;
        (*(v6 + 32))(v27, v8, v5);
        return (*(v6 + 56))(v26, 0, 1, v5);
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    ++v20;
    result = (*(v6 + 8))(v8, v5);
    if (v19 == v20)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_10011BB64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPinMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10011BBC8(char *a1)
{
  v166 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v139 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1000F24EC(&qword_100AD38B8);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v127 - v5;
  v133 = sub_1000F24EC(&unk_100AEBEA0);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v127 - v6;
  v136 = sub_1000F24EC(&qword_100AD38C0);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v127 - v7;
  v129 = type metadata accessor for UTType();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v142 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v127 - v14;
  v16 = __chkstk_darwin(v13);
  v141 = &v127 - v17;
  __chkstk_darwin(v16);
  v19 = &v127 - v18;
  v165 = type metadata accessor for VisitAssetMetadata();
  v20 = *(v165 - 8);
  __chkstk_darwin(v165);
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&unk_100AD4790);
  v24 = __chkstk_darwin(v23 - 8);
  v147 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v127 - v27;
  v29 = __chkstk_darwin(v26);
  v146 = &v127 - v30;
  v31 = __chkstk_darwin(v29);
  v161 = &v127 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v127 - v34;
  __chkstk_darwin(v33);
  v36 = *(v10 + 56);
  v149 = &v127 - v37;
  v36();
  v150 = v35;
  v167 = v9;
  v151 = v36;
  v152 = v10 + 56;
  (v36)(v35, 1, 1, v9);
  v38 = *(v166 + 2);
  if (v38)
  {
    v145 = v15;
    v39 = *(v20 + 16);
    v40 = v20 + 16;
    v41 = &v166[(*(v20 + 80) + 32) & ~*(v20 + 80)];
    v156 = (v10 + 32);
    v157 = v39;
    v143 = (v10 + 8);
    v42 = _swiftEmptyArrayStorage;
    v43 = *(v40 + 56);
    v159 = v28;
    v160 = v40;
    v154 = (v40 - 8);
    v155 = v43;
    v44 = &unk_10093B4E0;
    v153 = _swiftEmptyArrayStorage;
    v45 = v19;
    v144 = v19;
    v158 = v22;
    v164 = (v10 + 48);
    v39(v22, v41, v165);
    while (1)
    {
      v46 = VisitAssetMetadata.placeName.getter();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_10009BCC8(0, *(v42 + 2) + 1, 1, v42);
        }

        v51 = *(v42 + 2);
        v50 = *(v42 + 3);
        if (v51 >= v50 >> 1)
        {
          v42 = sub_10009BCC8((v50 > 1), v51 + 1, 1, v42);
        }

        *(v42 + 2) = v51 + 1;
        v52 = &v42[16 * v51];
        *(v52 + 4) = v48;
        *(v52 + 5) = v49;
      }

      v53 = VisitAssetMetadata.mapItemData.getter();
      v166 = v42;
      if (v54 >> 60 != 15)
      {
        v55 = v53;
        v56 = v54;
        sub_10011D468();
        v57 = static NSCoding<>.create(from:)();
        sub_10003A5C8(v55, v56);
        if (v57)
        {
          v58 = [v57 _addressFormattedAsSinglelineAddress];
          if (v58 || (v58 = [v57 name]) != 0)
          {
            v59 = v58;
            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;
          }

          else
          {
            v98 = VisitAssetMetadata.placeName.getter();
            if (!v99)
            {

              goto LABEL_22;
            }

            v61 = v99;
            v148 = v98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_10009BCC8(0, *(v153 + 2) + 1, 1, v153);
          }

          v63 = *(v153 + 2);
          v62 = *(v153 + 3);
          if (v63 >= v62 >> 1)
          {
            v153 = sub_10009BCC8((v62 > 1), v63 + 1, 1, v153);
          }

          v64 = v153;
          *(v153 + 2) = v63 + 1;
          v65 = &v64[16 * v63];
          *(v65 + 4) = v148;
          *(v65 + 5) = v61;
        }
      }

LABEL_22:
      v66 = v161;
      VisitAssetMetadata.visitStartTime.getter();
      v67 = *v164;
      v68 = (*v164)(v66, 1, v167);
      v162 = v41;
      v163 = v38;
      if (v68 == 1)
      {
        sub_100004F84(v66, &unk_100AD4790);
LABEL_26:
        v42 = v166;
        v76 = v159;
        goto LABEL_31;
      }

      v69 = v66;
      v70 = *v156;
      v71 = v44;
      v72 = v167;
      (*v156)(v45, v69, v167);
      v73 = v149;
      v74 = v146;
      sub_1000082B4(v149, v146, &unk_100AD4790);
      if (v67(v74, 1, v72) == 1)
      {
        sub_100004F84(v73, &unk_100AD4790);
        sub_100004F84(v74, &unk_100AD4790);
        v75 = v167;
        v70(v73, v45, v167);
        (v151)(v73, 0, 1, v75);
        v22 = v158;
        v44 = v71;
        v41 = v162;
        v38 = v163;
        goto LABEL_26;
      }

      v77 = v141;
      v78 = v74;
      v79 = v167;
      v70(v141, v78, v167);
      v80 = static Date.< infix(_:_:)();
      v81 = *v143;
      (*v143)(v77, v79);
      if (v80)
      {
        v82 = v149;
        sub_100004F84(v149, &unk_100AD4790);
        v83 = v167;
        v70(v82, v45, v167);
        (v151)(v82, 0, 1, v83);
        v44 = &unk_10093B4E0;
        v42 = v166;
        v22 = v158;
        v76 = v159;
      }

      else
      {
        v81(v45, v167);
        v42 = v166;
        v22 = v158;
        v76 = v159;
        v44 = &unk_10093B4E0;
      }

      v41 = v162;
      v38 = v163;
LABEL_31:
      VisitAssetMetadata.visitEndTime.getter();
      if (v67(v76, 1, v167) == 1)
      {
        (*v154)(v22, v165);
        sub_100004F84(v76, &unk_100AD4790);
      }

      else
      {
        v84 = v76;
        v85 = *v156;
        v86 = v145;
        v87 = v167;
        (*v156)(v145, v84, v167);
        v88 = v150;
        v89 = v44;
        v90 = v147;
        sub_1000082B4(v150, v147, &unk_100AD4790);
        if (v67(v90, 1, v87) == 1)
        {
          v91 = v158;
          (*v154)(v158, v165);
          sub_100004F84(v88, &unk_100AD4790);
          sub_100004F84(v90, &unk_100AD4790);
          v85(v88, v86, v87);
          (v151)(v88, 0, 1, v87);
          v45 = v144;
          v42 = v166;
          v41 = v162;
          v38 = v163;
          v22 = v91;
          v44 = v89;
        }

        else
        {
          v92 = v142;
          v85(v142, v90, v87);
          v93 = static Date.> infix(_:_:)();
          v94 = *v143;
          (*v143)(v92, v87);
          v22 = v158;
          (*v154)(v158, v165);
          if (v93)
          {
            v95 = v150;
            sub_100004F84(v150, &unk_100AD4790);
            v96 = v167;
            v85(v95, v86, v167);
            v97 = v96;
            v44 = &unk_10093B4E0;
            (v151)(v95, 0, 1, v97);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
          }

          else
          {
            v94(v86, v167);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
            v44 = &unk_10093B4E0;
          }
        }
      }

      v41 += v155;
      if (!--v38)
      {
        goto LABEL_41;
      }

      v157(v22, v41, v165);
    }
  }

  v42 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
LABEL_41:
  v100 = v127;
  static UTType.calendarEvent.getter();
  v101 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v167 = [v101 initWithContentType:isa];

  (*(v128 + 8))(v100, v129);
  v168 = v42;
  v103 = v132;
  v104 = v130;
  v105 = v133;
  (*(v132 + 104))(v130, enum case for ListFormatStyle.ListType.and<A, B>(_:), v133);
  v106 = v137;
  v107 = v135;
  v108 = v138;
  (*(v137 + 104))(v135, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v138);
  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD38C8, &qword_100AD60A0);
  v109 = v131;
  static FormatStyle.list<A>(type:width:)();
  (*(v106 + 8))(v107, v108);
  (*(v103 + 8))(v104, v105);
  sub_10000B58C(&unk_100AEBEB0, &qword_100AD38C0);
  v110 = v136;
  Sequence.formatted<A>(_:)();
  (*(v134 + 8))(v109, v110);

  v111 = v169;
  v112 = v170;
  v168 = v153;
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  v113 = BidirectionalCollection<>.joined(separator:)();
  v115 = v114;

  v116 = v167;
  sub_10012B77C(v111, v112, v113, v115);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v117 = String.init(localized:table:bundle:locale:comment:)();
  v119 = v118;
  sub_1000F24EC(&unk_100AD9A60);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_100940080;
  v121 = v149;
  v122 = sub_10012C00C(v117, v119, v149);
  v124 = v123;

  *(v120 + 32) = v122;
  *(v120 + 40) = v124;
  v125 = Array._bridgeToObjectiveC()().super.isa;

  [v116 setAlternateNames:v125];

  sub_100004F84(v150, &unk_100AD4790);
  sub_100004F84(v121, &unk_100AD4790);
  return v116;
}

void *sub_10011CCB8()
{
  v1 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  sub_1000768B4(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_100004F84(v3, &unk_100AD5B30);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_10011BBC8(v8);

    return v9;
  }

  return 0;
}

char *sub_10011CEC0(char *a1, uint64_t a2)
{
  v52 = a2;
  v55 = a1;
  v53 = sub_1000F24EC(&qword_100AD38D0);
  __chkstk_darwin(v53);
  v51 = &v40 - v2;
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UUID();
  v40 = *(v47 - 8);
  v5 = v40;
  __chkstk_darwin(v47);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v40 - v8;
  v9 = type metadata accessor for AssetSource();
  v44 = *(v9 - 8);
  v10 = v44;
  __chkstk_darwin(v9);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v43 = &v40 - v13;
  v15 = type metadata accessor for AssetType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v40 - v21;
  v23 = *(v16 + 104);
  v41 = v15;
  v23(&v40 - v21, enum case for AssetType.multiPinMap(_:), v15, v20);
  v42 = *(v10 + 16);
  v42(v14, v55, v9);
  v24 = v54;
  UUID.init()();
  v25 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset());
  *&v25[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = 0;
  v26 = *(v5 + 16);
  v27 = v45;
  v28 = v47;
  v26(v45, v24, v47);
  (*(v16 + 16))(v18, v22, v15);
  v29 = v46;
  v30 = v43;
  v42(v46, v43, v9);
  v31 = sub_100285908(v27, v18, v29);
  (*(v40 + 8))(v54, v28);
  v32 = *(v44 + 8);
  v32(v30, v9);
  (*(v16 + 8))(v22, v41);
  v33 = v31;
  v34 = v48;
  MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
  v32(v55, v9);
  v35 = v51;
  (*(v49 + 32))(v51, v34, v50);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8);
  v36 = swift_allocObject();
  v37 = *(*v36 + 104);
  v38 = sub_1000F24EC(&unk_100AD5B30);
  (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
  *(v36 + *(*v36 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v35, v36 + *(*v36 + 120), &qword_100AD38D0);
  *&v33[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = v36;

  return v33;
}

unint64_t sub_10011D468()
{
  result = qword_100AD5A90;
  if (!qword_100AD5A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5A90);
  }

  return result;
}

uint64_t sub_10011D4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v36 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v36);
  v35 = &v31 - v3;
  v4 = type metadata accessor for InsightsHighlightsView(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = v6;
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000F24EC(&qword_100AD3B48);
  __chkstk_darwin(v38);
  v13 = &v31 - v12;
  v33 = v4;
  v14 = v2 + *(v4 + 44);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v15, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v15) = v39;
  }

  v39 = static Alignment.center.getter();
  v40 = v17;
  sub_100122F6C();
  v18 = AnyLayout.init<A>(_:)();
  *v13 = v15;
  *(v13 + 1) = v18;
  v19 = sub_1000F24EC(&qword_100AD3B58);
  sub_10011D9DC(v2, &v13[*(v19 + 44)]);
  sub_100122FC0(v2, v7, type metadata accessor for InsightsHighlightsView);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = v13;
  v21 = swift_allocObject();
  sub_100123034(v7, v21 + v20);
  v22 = &v13[*(v38 + 36)];
  v23 = sub_1000F24EC(&qword_100AD3B68);
  static TaskPriority.userInitiated.getter();
  sub_1000082B4(v2, &v22[*(v23 + 40)], &unk_100AD9850);
  *v22 = &unk_100942168;
  *(v22 + 1) = v21;
  sub_1000F24EC(&qword_100AD3A58);
  v24 = v35;
  State.wrappedValue.getter();
  sub_100122FC0(v2, v7, type metadata accessor for InsightsHighlightsView);
  v25 = swift_allocObject();
  sub_100123034(v7, v25 + v20);
  sub_1001231E4();
  sub_1001235B0();
  v26 = v37;
  v27 = v32;
  View.onChange<A>(of:initial:_:)();

  sub_100004F84(v24, &unk_100AD9850);
  sub_100004F84(v27, &qword_100AD3B48);
  sub_100122FC0(v2, v7, type metadata accessor for InsightsHighlightsView);
  v28 = swift_allocObject();
  sub_100123034(v7, v28 + v20);
  result = sub_1000F24EC(&qword_100AD3BE0);
  v30 = (v26 + *(result + 36));
  *v30 = sub_1001236AC;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

uint64_t sub_10011D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  *(&v85 + 1) = type metadata accessor for PlainButtonStyle();
  v76 = *(*(&v85 + 1) - 8);
  __chkstk_darwin(*(&v85 + 1));
  v75 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsightsHighlightsView(0);
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v4);
  v72 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = sub_1000F24EC(&qword_100AD3BB0);
  v74 = *(v85 - 8);
  __chkstk_darwin(v85);
  v73 = &v69 - v6;
  v86 = sub_1000F24EC(&qword_100AD3C10);
  v78 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = &v69 - v7;
  v84 = type metadata accessor for Date();
  v82 = *(v84 - 8);
  v8 = *(v82 + 64);
  v9 = __chkstk_darwin(v84);
  __chkstk_darwin(v9);
  v79 = &v69 - v10;
  v87 = sub_1000F24EC(&qword_100AD3C18);
  __chkstk_darwin(v87);
  v12 = &v69 - v11;
  v80 = sub_1000F24EC(&qword_100AD3C20);
  __chkstk_darwin(v80);
  v81 = &v69 - v13;
  v88 = sub_1000F24EC(&qword_100AD3BA8);
  __chkstk_darwin(v88);
  v83 = &v69 - v14;
  v15 = type metadata accessor for InsightsHighlightsView.Phase(0);
  __chkstk_darwin(v15);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AD3A50);
  v21 = a1;
  State.wrappedValue.getter();
  sub_100122FC0(v20, v17, type metadata accessor for InsightsHighlightsView.Phase);
  sub_100123924(v20, type metadata accessor for InsightsHighlightsView.LoadingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100123924(v17, type metadata accessor for InsightsHighlightsView.Phase);
      LocalizedStringKey.init(stringLiteral:)();
      v23 = Text.init(_:tableName:bundle:comment:)();
      v25 = v24;
      v27 = v26;
      static Font.headline.getter();
      v28 = Text.font(_:)();
      v30 = v29;
      v32 = v31;

      sub_1000594D0(v23, v25, v27 & 1);

      LODWORD(v90) = static HierarchicalShapeStyle.secondary.getter();
      v33 = Text.foregroundStyle<A>(_:)();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      sub_1000594D0(v28, v30, v32 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v97 = v37 & 1;
      *v12 = v33;
      *(v12 + 1) = v35;
      v12[16] = v37 & 1;
      *(v12 + 3) = v39;
      v40 = v95;
      *(v12 + 6) = v94;
      *(v12 + 7) = v40;
      *(v12 + 8) = v96;
      v41 = v91;
      *(v12 + 2) = v90;
      *(v12 + 3) = v41;
      v42 = v93;
      *(v12 + 4) = v92;
      *(v12 + 5) = v42;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD3BC8);
      sub_1001233E0();
      sub_10012352C();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v66 = sub_10000B58C(&qword_100AD3BB8, &qword_100AD3BB0);
      v67 = sub_100123664(&qword_100AD2918, &type metadata accessor for PlainButtonStyle);
      v90 = v85;
      *&v91 = v66;
      *(&v91 + 1) = v67;
      swift_getOpaqueTypeConformance2();
      v68 = v83;
      _ConditionalContent<>.init(storage:)();
      sub_1000082B4(v68, v12, &qword_100AD3BA8);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD3BC8);
      sub_1001233E0();
      sub_10012352C();
      _ConditionalContent<>.init(storage:)();
      return sub_100004F84(v68, &qword_100AD3BA8);
    }
  }

  else
  {
    v70 = *v17;
    v44 = sub_1000F24EC(&qword_100AD3B60);
    v45 = v82;
    v46 = *(v82 + 32);
    v47 = v17 + *(v44 + 48);
    v48 = v79;
    v49 = v84;
    v46(v79, v47, v84);
    v50 = v21;
    v51 = v72;
    sub_100122FC0(v50, v72, type metadata accessor for InsightsHighlightsView);
    v52 = *(v45 + 16);
    v69 = v12;
    v52(&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v49);
    v53 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v54 = (v5 + *(v45 + 80) + v53) & ~*(v45 + 80);
    v55 = swift_allocObject();
    sub_100123034(v51, v55 + v53);
    v56 = (v46)(v55 + v54, &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
    __chkstk_darwin(v56);
    sub_1000F24EC(&qword_100AD3C28);
    sub_10000B58C(&qword_100AD3C30, &qword_100AD3C28);
    v57 = v73;
    Button.init(action:label:)();
    v58 = v75;
    PlainButtonStyle.init()();
    v59 = sub_10000B58C(&qword_100AD3BB8, &qword_100AD3BB0);
    v60 = sub_100123664(&qword_100AD2918, &type metadata accessor for PlainButtonStyle);
    v61 = v77;
    v62 = v85;
    View.buttonStyle<A>(_:)();
    (*(v76 + 8))(v58, *(&v62 + 1));
    (*(v74 + 8))(v57, v62);
    v63 = v78;
    v64 = v86;
    (*(v78 + 16))(v81, v61, v86);
    swift_storeEnumTagMultiPayload();
    v90 = v62;
    *&v91 = v59;
    *(&v91 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    v65 = v83;
    _ConditionalContent<>.init(storage:)();
    sub_1000082B4(v65, v69, &qword_100AD3BA8);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD3BC8);
    sub_1001233E0();
    sub_10012352C();
    _ConditionalContent<>.init(storage:)();

    sub_100004F84(v65, &qword_100AD3BA8);
    (*(v63 + 8))(v61, v64);
    return (*(v82 + 8))(v79, v84);
  }
}

uint64_t sub_10011E6B4()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD9850);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  type metadata accessor for InsightsHighlightsView(0);
  sub_100048878(v3);
  if (qword_100AD0BA8 != -1)
  {
    swift_once();
  }

  Calendar.dateComponents(_:from:)();
  (*(v1 + 8))(v3, v0);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1000082B4(v9, v7, &unk_100AD9850);
  sub_1000F24EC(&qword_100AD3A58);
  State.wrappedValue.setter();
  return sub_100004F84(v9, &unk_100AD9850);
}

uint64_t sub_10011E8FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.bottomLeading.getter();
  a3[1] = v6;
  v7 = sub_1000F24EC(&qword_100AD3C38);
  return sub_10011E95C(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_10011E95C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v117 = a2;
  v123 = a3;
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v121 = *(v4 - 8);
  v122 = v4;
  __chkstk_darwin(v4);
  v116 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Date.FormatStyle();
  v113 = *(v120 - 8);
  v7 = __chkstk_darwin(v120);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v110 = &v90 - v10;
  __chkstk_darwin(v9);
  v115 = &v90 - v11;
  v12 = type metadata accessor for Date();
  v103 = *(v12 - 8);
  v104 = v12;
  __chkstk_darwin(v12);
  v109 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessibilityChildBehavior();
  v101 = *(v14 - 8);
  v102 = v14;
  __chkstk_darwin(v14);
  v100 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000F24EC(&qword_100AD3C40);
  __chkstk_darwin(v105);
  v99 = &v90 - v16;
  v17 = sub_1000F24EC(&qword_100AD3C48);
  v107 = *(v17 - 8);
  v108 = v17;
  __chkstk_darwin(v17);
  v19 = &v90 - v18;
  v20 = sub_1000F24EC(&qword_100AD3C50);
  v21 = __chkstk_darwin(v20 - 8);
  v119 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v118 = &v90 - v23;
  type metadata accessor for PhotoAsset();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    KeyPath = swift_getKeyPath();
    *&v128 = v25;
    *(&v128 + 1) = KeyPath;
    LOBYTE(v129) = 0;
    v27 = a1;

    sub_1000F24EC(&qword_100AD3C88);
    sub_1000F24EC(&qword_100AD3C98);
    sub_10000B58C(&qword_100AD3C80, &qword_100AD3C88);
    sub_10000B58C(&qword_100AD3C90, &qword_100AD3C98);
LABEL_5:
    _ConditionalContent<>.init(storage:)();
    v128 = v131;
    LOWORD(v129) = v132;
    goto LABEL_6;
  }

  type metadata accessor for LivePhotoAsset();
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v30 = swift_getKeyPath();
    *&v128 = v29;
    *(&v128 + 1) = v30;
    LOBYTE(v129) = 1;
    v31 = a1;

    sub_1000F24EC(&qword_100AD3C88);
    sub_1000F24EC(&qword_100AD3C98);
    sub_10000B58C(&qword_100AD3C80, &qword_100AD3C88);
    sub_10000B58C(&qword_100AD3C90, &qword_100AD3C98);
    goto LABEL_5;
  }

  type metadata accessor for VideoAsset();
  v86 = swift_dynamicCastClass();
  if (!v86)
  {
    v128 = 0uLL;
    LOBYTE(v129) = 1;
    sub_1000F24EC(&qword_100AD3C58);
    sub_10000B58C(&qword_100AD3C60, &qword_100AD3C58);
    _ConditionalContent<>.init(storage:)();
    v128 = v131;
    LOBYTE(v129) = v132;
    BYTE1(v129) = 1;
    sub_1000F24EC(&qword_100AD3C68);
    sub_1000F24EC(&qword_100AD3C70);
    sub_100123AE8();
    sub_100123BC8();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_7;
  }

  v87 = v86;
  v88 = swift_getKeyPath();
  *&v128 = v87;
  *(&v128 + 1) = v88;
  LOBYTE(v129) = 0;
  v89 = a1;

  sub_1000F24EC(&qword_100AD3C58);
  sub_10000B58C(&qword_100AD3C60, &qword_100AD3C58);
  _ConditionalContent<>.init(storage:)();
  v128 = v131;
  LOBYTE(v129) = v132;
  BYTE1(v129) = 1;
LABEL_6:
  sub_1000F24EC(&qword_100AD3C68);
  sub_1000F24EC(&qword_100AD3C70);
  sub_100123AE8();
  sub_100123BC8();
  _ConditionalContent<>.init(storage:)();

LABEL_7:
  v32 = v131;
  v33 = v132;
  v34 = BYTE1(v132);
  v93 = v131;
  v94 = v132;
  v95 = *(&v131 + 1);
  v96 = BYTE1(v132);
  sub_1000F24EC(&qword_100AD3CA8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100940050;
  v98 = sub_100123C80;
  v97 = sub_100123CB8;
  sub_100123EF4(v32, *(&v32 + 1), v33, v34, sub_100123C80, sub_100123CB8);
  static Color.black.getter();
  v36 = Color.opacity(_:)();

  *(v35 + 32) = v36;
  *(v35 + 40) = static Color.clear.getter();
  static UnitPoint.bottomLeading.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v124 = v139;
  v37 = v140;
  v38 = v141;
  v39 = v142;
  v40 = v143;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v126[6] = v144;
  *&v126[22] = v145;
  *&v126[38] = v146;
  v41 = static HorizontalAlignment.leading.getter();
  LOBYTE(v131) = 0;
  v42 = v117;
  sub_10011F98C(v117, v127);
  *&v125[7] = v127[0];
  *&v125[23] = v127[1];
  *&v125[39] = v127[2];
  *&v125[55] = v127[3];
  v43 = v131;
  v44 = swift_getKeyPath();
  v45 = sub_1000F24EC(&qword_100AD3CB0);
  v46 = v99;
  v47 = &v99[*(v45 + 36)];
  v48 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v49 = enum case for ColorScheme.dark(_:);
  v50 = type metadata accessor for ColorScheme();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v44;
  v51 = *v125;
  *(v46 + 33) = *&v125[16];
  v52 = *&v125[48];
  *(v46 + 49) = *&v125[32];
  *(v46 + 65) = v52;
  *v46 = v41;
  *(v46 + 8) = 0xC000000000000000;
  *(v46 + 16) = v43;
  *(v46 + 80) = *&v125[63];
  *(v46 + 17) = v51;
  v53 = static Color.black.getter();
  v54 = v46 + *(sub_1000F24EC(&qword_100AD3CB8) + 36);
  *v54 = v53;
  *(v54 + 8) = xmmword_100941FD0;
  *(v54 + 24) = 0x4000000000000000;
  LOBYTE(v53) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v55 = v105;
  v56 = v46 + *(v105 + 36);
  *v56 = v53;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;
  v61 = v100;
  static AccessibilityChildBehavior.ignore.getter();
  v91 = sub_100123CF8();
  v92 = v19;
  View.accessibilityElement(children:)();
  (*(v101 + 8))(v61, v102);
  sub_100004F84(v46, &qword_100AD3C40);
  (*(v103 + 16))(v109, v42, v104);
  v62 = v106;
  static FormatStyle<>.dateTime.getter();
  v63 = v111;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v64 = v110;
  Date.FormatStyle.month(_:)();
  (*(v112 + 8))(v63, v114);
  v65 = *(v113 + 8);
  v66 = v120;
  v65(v62, v120);
  v67 = v116;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v121 + 8))(v67, v122);
  v65(v64, v66);
  sub_100123664(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
  sub_100123664(&qword_100AD5BF0, &type metadata accessor for Date);
  v68 = Text.init<A>(_:format:)();
  v70 = v69;
  LOBYTE(v67) = v71;
  *&v131 = v55;
  *(&v131 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  v72 = v118;
  v73 = v108;
  v74 = v92;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v68, v70, v67 & 1);

  (*(v107 + 8))(v74, v73);
  v75 = v119;
  sub_1000082B4(v72, v119, &qword_100AD3C50);
  v77 = v123;
  v76 = v124;
  v78 = v93;
  v79 = v95;
  *v123 = v93;
  v77[1] = v79;
  LOBYTE(v74) = v94;
  *(v77 + 16) = v94;
  LOBYTE(v73) = v96;
  *(v77 + 17) = v96;
  *&v128 = v76;
  *(&v128 + 1) = v37;
  *&v129 = v38;
  *(&v129 + 1) = v39;
  *&v130[0] = v40;
  WORD4(v130[0]) = 256;
  *(v130 + 10) = *v126;
  *(&v130[1] + 10) = *&v126[16];
  *(&v130[2] + 10) = *&v126[32];
  *(&v130[3] + 1) = *&v126[46];
  v80 = v128;
  *(v77 + 5) = v129;
  *(v77 + 3) = v80;
  v81 = v130[0];
  v82 = v130[1];
  v83 = v130[2];
  *(v77 + 13) = v130[3];
  *(v77 + 11) = v83;
  *(v77 + 9) = v82;
  *(v77 + 7) = v81;
  v84 = sub_1000F24EC(&qword_100AD3CF0);
  sub_1000082B4(v75, v77 + *(v84 + 64), &qword_100AD3C50);
  sub_100123EF4(v78, v79, v74, v73, v98, v97);
  sub_1000082B4(&v128, &v131, qword_100AD3CF8);
  sub_100123EF4(v78, v79, v74, v73, sub_100123F0C, sub_100123F44);
  sub_100004F84(v72, &qword_100AD3C50);
  sub_100004F84(v75, &qword_100AD3C50);
  *&v131 = v124;
  *(&v131 + 1) = v37;
  v132 = v38;
  v133 = v39;
  v134 = v40;
  v135 = 256;
  v136 = *v126;
  v137 = *&v126[16];
  *v138 = *&v126[32];
  *&v138[14] = *&v126[46];
  sub_100004F84(&v131, qword_100AD3CF8);
  return sub_100123EF4(v78, v79, v74, v73, sub_100123F0C, sub_100123F44);
}

uint64_t sub_10011F8DC(void **a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = *(*a2 + *a5);
  *(*a2 + *a5) = *a1;
  v9 = v7;

  return a6();
}

void sub_10011F928(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
  *(*a2 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset) = *a1;
  v3 = v2;
  sub_100099584(v4);
}

uint64_t sub_10011F98C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v56 = a2;
  v3 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = type metadata accessor for Date();
  v14 = *(v51 - 8);
  __chkstk_darwin(v51);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v14 + 16);
  v50(v16, a1);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v48 = v10 + 8;
  v49 = v17;
  v43[0] = v9;
  v17(v13, v9);
  v43[2] = sub_100123664(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
  v43[1] = sub_100123664(&qword_100AD5BF0, &type metadata accessor for Date);
  v18 = Text.init<A>(_:format:)();
  v20 = v19;
  LOBYTE(v8) = v21;
  static Font.footnote.getter();
  Font.bold()();

  v22 = Text.font(_:)();
  v46 = v23;
  v47 = v22;
  v45 = v24;
  v44 = v25;

  sub_1000594D0(v18, v20, v8 & 1);

  (v50)(v16, v52, v51);
  static FormatStyle<>.dateTime.getter();
  v26 = v53;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v54 + 8))(v26, v55);
  v49(v13, v43[0]);
  v27 = Text.init<A>(_:format:)();
  v29 = v28;
  LOBYTE(v18) = v30;
  static Font.title.getter();
  Font.bold()();

  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v16) = v34;
  v36 = v35;

  sub_1000594D0(v27, v29, v18 & 1);

  v37 = v44 & 1;
  v57 = v44 & 1;
  v59 = v44 & 1;
  v58 = v16 & 1;
  v38 = v56;
  v39 = v46;
  v40 = v47;
  v41 = v45;
  *v56 = v47;
  v38[1] = v41;
  *(v38 + 16) = v37;
  v38[3] = v39;
  v38[4] = v31;
  v38[5] = v33;
  *(v38 + 48) = v16 & 1;
  v38[7] = v36;
  sub_1000F24DC(v40, v41, v37);

  sub_1000F24DC(v31, v33, v16 & 1);

  sub_1000594D0(v31, v33, v16 & 1);

  sub_1000594D0(v40, v41, v57);
}

uint64_t sub_10011FED0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011FF68, v3, v2);
}

uint64_t sub_10011FF68()
{

  sub_10011FFCC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011FFCC()
{
  v186 = type metadata accessor for EnvironmentValues();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = v177 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1000F24EC(&qword_100AD3BE8);
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v194 = v177 - v2;
  v193 = type metadata accessor for AssetType();
  v192 = *(v193 - 8);
  v3 = __chkstk_darwin(v193);
  v191 = v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v190 = v177 - v6;
  __chkstk_darwin(v5);
  v189 = v177 - v7;
  v8 = type metadata accessor for Calendar.Component();
  v209 = *(v8 - 8);
  v210 = v8;
  __chkstk_darwin(v8);
  v199 = v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v10 - 8);
  v200 = v177 - v11;
  v204 = type metadata accessor for DateInterval();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AD4790);
  v14 = __chkstk_darwin(v13 - 8);
  v179 = v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v180 = v177 - v17;
  __chkstk_darwin(v16);
  v208 = v177 - v18;
  v197 = sub_1000F24EC(&qword_100AD99C0);
  __chkstk_darwin(v197);
  v198 = v177 - v19;
  v212 = type metadata accessor for InsightsHighlightsView.Phase(0);
  __chkstk_darwin(v212);
  v213 = v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  v21 = __chkstk_darwin(v195);
  v196 = v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v211 = (v177 - v23);
  v24 = type metadata accessor for Date();
  v223 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v178 = v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v188 = v177 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = v177 - v30;
  __chkstk_darwin(v29);
  v205 = v177 - v32;
  v217 = type metadata accessor for Calendar();
  v220 = *(v217 - 1);
  __chkstk_darwin(v217);
  v34 = v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000F24EC(&unk_100AD9850);
  v36 = __chkstk_darwin(v35 - 8);
  v187 = v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v214 = (v177 - v39);
  v40 = __chkstk_darwin(v38);
  v201 = v177 - v41;
  __chkstk_darwin(v40);
  v43 = v177 - v42;
  v44 = type metadata accessor for DateComponents();
  v45 = *(v44 - 8);
  v46 = __chkstk_darwin(v44);
  v183 = v177 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = v177 - v48;
  v224 = v0;
  sub_1000082B4(v0, v43, &unk_100AD9850);
  v50 = *(v45 + 48);
  v51 = v50(v43, 1, v44);
  v221 = v44;
  v222 = v24;
  v218 = v45;
  v219 = v34;
  v216 = v31;
  v206 = v50;
  v207 = (v45 + 48);
  if (v51 == 1)
  {
    v177[1] = type metadata accessor for InsightsHighlightsView(0);
    sub_100048878(v34);
    sub_1000F24EC(&qword_100AD3BF0);
    v52 = v209;
    v53 = *(v209 + 72);
    v54 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100941FE0;
    v56 = v55 + v54;
    v57 = *(v52 + 104);
    v58 = v210;
    v57(v56, enum case for Calendar.Component.calendar(_:), v210);
    v57(v56 + v53, enum case for Calendar.Component.era(_:), v58);
    v57(v56 + 2 * v53, enum case for Calendar.Component.year(_:), v58);
    v57(v56 + 3 * v53, enum case for Calendar.Component.month(_:), v58);
    v44 = v221;
    sub_10005FF80(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000F24EC(&qword_100AD3A48);
    v59 = v205;
    State.wrappedValue.getter();
    v60 = v49;
    v61 = v219;
    Calendar.dateComponents(_:from:)();
    v45 = v218;

    (v223[1])(v59, v24);
    (*(v220 + 8))(v61, v217);
    if (v206(v43, 1, v44) != 1)
    {
      sub_100004F84(v43, &unk_100AD9850);
    }
  }

  else
  {
    v60 = v49;
    (*(v45 + 32))(v49, v43, v44);
  }

  v62 = type metadata accessor for InsightsHighlightsView(0);
  sub_1000F24EC(&qword_100AD3A50);
  v63 = v211;
  State.wrappedValue.getter();
  v64 = v213;
  sub_100122FC0(v63, v213, type metadata accessor for InsightsHighlightsView.Phase);
  sub_100123924(v63, type metadata accessor for InsightsHighlightsView.LoadingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v66 = v214;
  v215 = v60;
  if (EnumCaseMultiPayload)
  {
    sub_100123924(v64, type metadata accessor for InsightsHighlightsView.Phase);
    v68 = v219;
    v67 = v220;
    v69 = v222;
    v70 = v216;
    goto LABEL_18;
  }

  v212 = *v64;
  v71 = sub_1000F24EC(&qword_100AD3B60);
  (v223[1])(v64 + *(v71 + 48), v222);
  v72 = v196;
  State.wrappedValue.getter();
  v73 = v201;
  sub_1000082B4(v72 + *(v195 + 20), v201, &unk_100AD9850);
  sub_100123924(v72, type metadata accessor for InsightsHighlightsView.LoadingState);
  v74 = v60;
  v75 = v73;
  (*(v45 + 16))(v66, v74, v44);
  (*(v45 + 56))(v66, 0, 1, v44);
  v76 = *(v197 + 48);
  v77 = v66;
  v78 = v198;
  sub_1000082B4(v75, v198, &unk_100AD9850);
  sub_1000082B4(v77, v78 + v76, &unk_100AD9850);
  v79 = v206;
  v80 = v206(v78, 1, v44);
  v68 = v219;
  if (v80 == 1)
  {
    sub_100004F84(v77, &unk_100AD9850);
    sub_100004F84(v75, &unk_100AD9850);
    v81 = v79(v78 + v76, 1, v44);
    v69 = v222;
    v70 = v216;
    if (v81 == 1)
    {
      sub_100004F84(v78, &unk_100AD9850);
      v67 = v220;
      v82 = v215;
      v83 = v212;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v84 = v187;
  sub_1000082B4(v78, v187, &unk_100AD9850);
  v85 = v79(v78 + v76, 1, v44);
  v70 = v216;
  if (v85 == 1)
  {
    sub_100004F84(v214, &unk_100AD9850);
    sub_100004F84(v201, &unk_100AD9850);
    (*(v45 + 8))(v84, v44);
    v69 = v222;
LABEL_12:
    sub_100004F84(v78, &qword_100AD99C0);
    v67 = v220;
    v83 = v212;
LABEL_17:

    goto LABEL_18;
  }

  v86 = v78 + v76;
  v87 = v183;
  (*(v45 + 32))(v183, v86, v44);
  sub_100123664(&qword_100AD99B0, &type metadata accessor for DateComponents);
  LODWORD(v213) = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = v84;
  v89 = *(v45 + 8);
  v89(v87, v44);
  sub_100004F84(v214, &unk_100AD9850);
  sub_100004F84(v201, &unk_100AD9850);
  v90 = v88;
  v70 = v216;
  v89(v90, v44);
  v69 = v222;
  v82 = v215;
  sub_100004F84(v78, &unk_100AD9850);
  v67 = v220;
  v83 = v212;
  if ((v213 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v91 = *&v83[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (!v91)
  {
    goto LABEL_17;
  }

  v92 = v91;
  if ([v92 isDeleted])
  {
  }

  else
  {
    sub_1000065A8(0, &qword_100ADB900);
    v166 = static NSPredicate.allNotDeletedAssets.getter();
    LODWORD(v220) = [v166 evaluateWithObject:v92];

    if (v220)
    {
      return (*(v45 + 8))(v82, v221);
    }
  }

LABEL_18:
  v220 = v62;
  sub_100048878(v68);
  v93 = v208;
  Calendar.date(from:)();
  v94 = *(v67 + 8);
  v95 = v217;
  v94(v68, v217);
  v96 = (v223 + 6);
  v214 = v223[6];
  if ((v214)(v93, 1, v69) == 1)
  {
    v97 = &unk_100AD4790;
    v98 = v93;
LABEL_22:
    sub_100004F84(v98, v97);
    v106 = v215;
    sub_100123984();
    v107 = swift_allocError();
    *v108 = 1;
    swift_willThrow();
    v110 = v220;
    v109 = v221;
    v111 = v218;
    goto LABEL_38;
  }

  v99 = v223[4];
  v212 = (v223 + 4);
  v213 = v96;
  v211 = v99;
  v99(v70, v93, v69);
  sub_100048878(v68);
  v100 = v209;
  v101 = v210;
  v102 = v199;
  (*(v209 + 104))(v199, enum case for Calendar.Component.month(_:), v210);
  v103 = v200;
  Calendar.dateInterval(of:for:)();
  (*(v100 + 8))(v102, v101);
  v94(v68, v95);
  v104 = v203;
  v105 = v204;
  if ((*(v203 + 48))(v103, 1, v204) == 1)
  {
    (v223[1])(v70, v222);
    v97 = &qword_100AD3750;
    v98 = v103;
    goto LABEL_22;
  }

  (*(v104 + 32))(v202, v103, v105);
  v210 = type metadata accessor for JournalEntryAssetMO();
  v206 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_100941D60;
  v113 = v112;
  v209 = v112;
  v208 = sub_1000065A8(0, &qword_100ADB900);
  *(v113 + 32) = static NSPredicate.allNotDeletedAssets.getter();
  v207 = "I result type display";
  sub_1000F24EC(&unk_100AD5B10);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_100941FF0;
  *(v114 + 56) = &type metadata for String;
  v219 = sub_100031B20();
  *(v114 + 64) = v219;
  *(v114 + 32) = 0x7079547465737361;
  *(v114 + 40) = 0xE900000000000065;
  sub_1000F24EC(&unk_100AD9A60);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_100942000;
  v116 = v192;
  v117 = *(v192 + 104);
  v118 = v189;
  v119 = v193;
  v117(v189, enum case for AssetType.photo(_:), v193);
  v120 = AssetType.rawValue.getter();
  v122 = v121;
  v123 = *(v116 + 8);
  v123(v118, v119);
  *(v115 + 32) = v120;
  *(v115 + 40) = v122;
  v124 = v190;
  v117(v190, enum case for AssetType.livePhoto(_:), v119);
  v125 = AssetType.rawValue.getter();
  v127 = v126;
  v123(v124, v119);
  *(v115 + 48) = v125;
  *(v115 + 56) = v127;
  v128 = v191;
  v117(v191, enum case for AssetType.video(_:), v119);
  v129 = AssetType.rawValue.getter();
  v131 = v130;
  v123(v128, v119);
  *(v115 + 64) = v129;
  *(v115 + 72) = v131;
  *(v114 + 96) = sub_1000F24EC(&qword_100AD60A0);
  v132 = sub_10000B58C(&qword_100AD3C00, &qword_100AD60A0);
  *(v114 + 72) = v115;
  v133 = v219;
  *(v114 + 136) = &type metadata for String;
  *(v114 + 144) = v133;
  *(v114 + 104) = v132;
  *(v114 + 112) = 0x6E652E7972746E65;
  *(v114 + 120) = 0xEF65746144797274;
  v134 = v205;
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v136 = v223 + 1;
  v137 = v223[1];
  v138 = v134;
  v139 = v222;
  v137(v138, v222);
  v140 = sub_1000065A8(0, &unk_100AE5E10);
  *(v114 + 176) = v140;
  v141 = sub_10011949C();
  *(v114 + 152) = isa;
  *(v114 + 216) = &type metadata for String;
  *(v114 + 224) = v133;
  *(v114 + 184) = v141;
  *(v114 + 192) = 0x6E652E7972746E65;
  *(v114 + 200) = 0xEF65746144797274;
  v142 = v188;
  DateInterval.end.getter();
  v143 = Date._bridgeToObjectiveC()().super.isa;
  v219 = v136;
  v217 = v137;
  v137(v142, v139);
  *(v114 + 256) = v140;
  *(v114 + 264) = v141;
  *(v114 + 232) = v143;
  *(v209 + 40) = NSPredicate.init(format:_:)();
  v144 = Array._bridgeToObjectiveC()().super.isa;

  v145 = [objc_opt_self() andPredicateWithSubpredicates:v144];

  v146 = v206;
  [v206 setPredicate:v145];

  v147 = Array._bridgeToObjectiveC()().super.isa;
  v148 = v146;
  [v146 setRelationshipKeyPathsForPrefetching:v147];

  v149 = v224 + *(v220 + 40);
  v150 = *v149;
  if (*(v149 + 8) == 1)
  {
    v151 = v150;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v152 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v153 = v184;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100123028(v150, 0);
    (*(v185 + 8))(v153, v186);
    v151 = v225;
  }

  v154 = v194;
  NSManagedObjectContext.fetch<A>(_:batchSize:)();
  v155 = v204;
  v156 = v203;
  v157 = v222;
  v158 = v216;

  v159 = sub_10012370C();
  (*(v181 + 8))(v154, v182);
  v106 = v215;
  if (v159)
  {
    v160 = [v159 entry];
    if (v160)
    {
      v161 = v160;
      v162 = [v160 entryDate];

      if (v162)
      {
        v163 = v179;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v164 = v163;
        v165 = 0;
        v157 = v222;
      }

      else
      {
        v165 = 1;
        v157 = v222;
        v164 = v179;
      }

      (v223[7])(v164, v165, 1, v157);
      v169 = v164;
      v168 = v180;
      sub_100021CEC(v169, v180, &unk_100AD4790);
      if ((v214)(v168, 1, v157) != 1)
      {
        v172 = v178;
        v211(v178, v168, v157);
        v173 = v157;
        v174 = sub_100039CE0();
        v223 = v177;
        __chkstk_darwin(*(v224 + *(v220 + 48)));
        v177[-4] = v175;
        v177[-3] = v174;
        v177[-2] = v172;
        v177[-1] = v106;
        withAnimation<A>(_:_:)();

        (*(v156 + 8))(v202, v155);
        v176 = v217;
        (v217)(v216, v173);
        v176(v172, v173);
        return (*(v218 + 8))(v106, v221);
      }
    }

    else
    {

      v168 = v180;
      (v223[7])(v180, 1, 1, v157);
    }

    sub_100004F84(v168, &unk_100AD4790);
  }

  sub_100123984();
  v107 = swift_allocError();
  *v170 = 0;
  swift_willThrow();

  (*(v156 + 8))(v202, v155);
  (v217)(v158, v157);
  v109 = v221;
  v111 = v218;
  v110 = v220;
LABEL_38:
  (*(v111 + 8))(v106, v109);
  __chkstk_darwin(*(v224 + *(v110 + 48)));
  v177[-2] = v171;
  v177[-1] = v107;
  withAnimation<A>(_:_:)();
}

uint64_t sub_100121AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a2, v7, &unk_100AD9850);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100004F84(v7, &unk_100AD9850);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = type metadata accessor for InsightsHighlightsView(0);
  (*(a3 + *(v13 + 20)))(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100121C84()
{
  v0 = sub_1000F24EC(&unk_100AD9850);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for DateComponents();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for InsightsHighlightsView(0);
  sub_1000082B4(v5, v3, &unk_100AD9850);
  sub_1000F24EC(&qword_100AD3A58);
  State.wrappedValue.setter();
  return sub_100004F84(v5, &unk_100AD9850);
}

uint64_t sub_100121DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v40 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v35 - v8;
  v9 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_100021CEC(a1, a4, &unk_100AD9850);
  v22 = type metadata accessor for InsightsHighlightsView(0);
  v23 = (a4 + v22[5]);
  v24 = v37;
  *v23 = v36;
  v23[1] = v24;
  static Date.now.getter();
  (*(v16 + 16))(v18, v21, v15);
  State.init(wrappedValue:)();
  (*(v16 + 8))(v21, v15);
  type metadata accessor for InsightsHighlightsView.Phase(0);
  swift_storeEnumTagMultiPayload();
  v25 = *(v9 + 20);
  v26 = type metadata accessor for DateComponents();
  v27 = *(*(v26 - 8) + 56);
  v27(&v14[v25], 1, 1, v26);
  sub_100122FC0(v14, v11, type metadata accessor for InsightsHighlightsView.LoadingState);
  State.init(wrappedValue:)();
  sub_100123924(v14, type metadata accessor for InsightsHighlightsView.LoadingState);
  v28 = v38;
  v27(v38, 1, 1, v26);
  sub_1000082B4(v28, v39, &unk_100AD9850);
  State.init(wrappedValue:)();
  sub_100004F84(v28, &unk_100AD9850);
  v29 = v22[9];
  *(a4 + v29) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990);
  swift_storeEnumTagMultiPayload();
  v30 = a4 + v22[10];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  v31 = a4 + v22[11];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  v32 = v22[12];
  static Animation.spring(response:dampingFraction:blendDuration:)();
  v33 = Animation.delay(_:)();

  *(a4 + v32) = v33;
  return result;
}

uint64_t sub_1001222CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100122348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1001223C4()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void (*sub_10012255C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100113D90;
}

uint64_t sub_1001225E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v21 - v12;
  v14 = *(sub_1000F24EC(&qword_100AD3B60) + 48);
  *v13 = a2;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(&v13[v14], a3, v15);
  type metadata accessor for InsightsHighlightsView.Phase(0);
  swift_storeEnumTagMultiPayload();
  v16 = *(v8 + 28);
  v17 = type metadata accessor for DateComponents();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v13[v16], a4, v17);
  (*(v18 + 56))(&v13[v16], 0, 1, v17);
  type metadata accessor for InsightsHighlightsView(0);
  sub_100122FC0(v13, v11, type metadata accessor for InsightsHighlightsView.LoadingState);
  v19 = a2;
  sub_1000F24EC(&qword_100AD3A50);
  State.wrappedValue.setter();
  return sub_100123924(v13, type metadata accessor for InsightsHighlightsView.LoadingState);
}

uint64_t sub_100122800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v12 - v9;
  *(&v12 - v9) = a2;
  type metadata accessor for InsightsHighlightsView.Phase(0);
  swift_storeEnumTagMultiPayload();
  sub_1000082B4(a1, &v10[*(v5 + 28)], &unk_100AD9850);
  type metadata accessor for InsightsHighlightsView(0);
  sub_100122FC0(v10, v8, type metadata accessor for InsightsHighlightsView.LoadingState);
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD3A50);
  State.wrappedValue.setter();
  return sub_100123924(v10, type metadata accessor for InsightsHighlightsView.LoadingState);
}

void sub_1001229A8()
{
  sub_100122A1C();
  if (v0 <= 0x3F)
  {
    sub_100122A8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100122A1C()
{
  if (!qword_100AD3978)
  {
    type metadata accessor for Asset();
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AD3978);
    }
  }
}

unint64_t sub_100122A8C()
{
  result = qword_100AD3980;
  if (!qword_100AD3980)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AD3980);
  }

  return result;
}

void sub_100122B18()
{
  type metadata accessor for InsightsHighlightsView.Phase(319);
  if (v0 <= 0x3F)
  {
    sub_100122DD0(319, &qword_100AD3A18, &type metadata accessor for DateComponents, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100122BF4()
{
  sub_100122DD0(319, &qword_100AD3A18, &type metadata accessor for DateComponents, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100087C9C();
    if (v1 <= 0x3F)
    {
      sub_100122DD0(319, &qword_100AD3AD8, &type metadata accessor for Date, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100122DD0(319, &qword_100AD3AE0, type metadata accessor for InsightsHighlightsView.LoadingState, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100122E34();
          if (v4 <= 0x3F)
          {
            sub_100122DD0(319, &qword_100AF70F0, &type metadata accessor for Calendar, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_100122E98();
              if (v6 <= 0x3F)
              {
                sub_100122F00();
                if (v7 <= 0x3F)
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
}

void sub_100122DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100122E34()
{
  if (!qword_100AD3AE8)
  {
    sub_1000F2A18(&unk_100AD9850);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD3AE8);
    }
  }
}

void sub_100122E98()
{
  if (!qword_100AD3AF0)
  {
    sub_1000065A8(255, &unk_100AD3AF8);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD3AF0);
    }
  }
}

void sub_100122F00()
{
  if (!qword_100AD9860[0])
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, qword_100AD9860);
    }
  }
}

unint64_t sub_100122F6C()
{
  result = qword_100AD3B50;
  if (!qword_100AD3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B50);
  }

  return result;
}

uint64_t sub_100122FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100123028(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100123034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsHighlightsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100123098()
{
  v2 = *(type metadata accessor for InsightsHighlightsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032ECC;

  return sub_10011FED0(v0 + v3);
}

uint64_t sub_100123164(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InsightsHighlightsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100121AC8(a1, a2, v6);
}

unint64_t sub_1001231E4()
{
  result = qword_100AD3B70;
  if (!qword_100AD3B70)
  {
    sub_1000F2A18(&qword_100AD3B48);
    sub_10012329C();
    sub_10000B58C(&qword_100AD3BD0, &qword_100AD3B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B70);
  }

  return result;
}

unint64_t sub_10012329C()
{
  result = qword_100AD3B78;
  if (!qword_100AD3B78)
  {
    sub_1000F2A18(&qword_100AD3B58);
    sub_10000B58C(&qword_100AD3B80, &qword_100AD3B88);
    sub_100123354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B78);
  }

  return result;
}

unint64_t sub_100123354()
{
  result = qword_100AD3B90;
  if (!qword_100AD3B90)
  {
    sub_1000F2A18(&qword_100AD3B98);
    sub_1001233E0();
    sub_10012352C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B90);
  }

  return result;
}

unint64_t sub_1001233E0()
{
  result = qword_100AD3BA0;
  if (!qword_100AD3BA0)
  {
    sub_1000F2A18(&qword_100AD3BA8);
    sub_1000F2A18(&qword_100AD3BB0);
    type metadata accessor for PlainButtonStyle();
    sub_10000B58C(&qword_100AD3BB8, &qword_100AD3BB0);
    sub_100123664(&qword_100AD2918, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BA0);
  }

  return result;
}

unint64_t sub_10012352C()
{
  result = qword_100AD3BC0;
  if (!qword_100AD3BC0)
  {
    sub_1000F2A18(&qword_100AD3BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BC0);
  }

  return result;
}

unint64_t sub_1001235B0()
{
  result = qword_100AD3BD8;
  if (!qword_100AD3BD8)
  {
    sub_1000F2A18(&unk_100AD9850);
    sub_100123664(&qword_100AD99B0, &type metadata accessor for DateComponents);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BD8);
  }

  return result;
}

uint64_t sub_100123664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001236AC()
{
  type metadata accessor for InsightsHighlightsView(0);

  return sub_100121C84();
}

unint64_t sub_10012370C()
{
  v0 = sub_1000F24EC(&qword_100AD3C08);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v12 - v5;
  sub_1000F24EC(&qword_100AD3BE8);
  v12[0] = type metadata accessor for JournalEntryAssetMO();
  swift_getOpaqueTypeConformance2();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    return 0;
  }

  result = dispatch thunk of Collection.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1001C2FA4(result);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v9 = dispatch thunk of Collection.subscript.read();
  v11 = *v10;
  v9(v12, 0);
  v8(v6, v0);
  return v11;
}

uint64_t sub_100123924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100123984()
{
  result = qword_100AD3BF8;
  if (!qword_100AD3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BF8);
  }

  return result;
}

uint64_t sub_100123A14()
{
  type metadata accessor for InsightsHighlightsView(0);
  type metadata accessor for Date();

  return sub_10011E6B4();
}

unint64_t sub_100123AE8()
{
  result = qword_100AD3C78;
  if (!qword_100AD3C78)
  {
    sub_1000F2A18(&qword_100AD3C68);
    sub_10000B58C(&qword_100AD3C80, &qword_100AD3C88);
    sub_10000B58C(&qword_100AD3C90, &qword_100AD3C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3C78);
  }

  return result;
}

unint64_t sub_100123BC8()
{
  result = qword_100AD3CA0;
  if (!qword_100AD3CA0)
  {
    sub_1000F2A18(&qword_100AD3C70);
    sub_10000B58C(&qword_100AD3C60, &qword_100AD3C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CA0);
  }

  return result;
}

uint64_t sub_100123C80(void *a1)
{
  v1 = a1;
}

void *sub_100123CB8(void *result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = result;
  }

  return result;
}

unint64_t sub_100123CF8()
{
  result = qword_100AD3CC0;
  if (!qword_100AD3CC0)
  {
    sub_1000F2A18(&qword_100AD3C40);
    sub_100123D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CC0);
  }

  return result;
}

unint64_t sub_100123D84()
{
  result = qword_100AD3CC8;
  if (!qword_100AD3CC8)
  {
    sub_1000F2A18(&qword_100AD3CB8);
    sub_100123E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CC8);
  }

  return result;
}

unint64_t sub_100123E10()
{
  result = qword_100AD3CD0;
  if (!qword_100AD3CD0)
  {
    sub_1000F2A18(&qword_100AD3CB0);
    sub_10000B58C(&qword_100AD3CD8, &qword_100AD3CE0);
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CD0);
  }

  return result;
}

uint64_t sub_100123EF4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3 & 1;
  if (a4)
  {
    return a6(a1, a2, v6);
  }

  else
  {
    return a5(a1, a2, v6);
  }
}

uint64_t sub_100123F0C(void *a1)
{
}

void *sub_100123F44(void *result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100123F94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Suggestion.ItemContent.Failure(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Suggestion.ItemContent.Failure(uint64_t result, int a2, int a3)
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

uint64_t sub_10012406C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001240B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100124100()
{
  result = qword_100AD3D80;
  if (!qword_100AD3D80)
  {
    sub_1000F2A18(&qword_100AD3BE0);
    sub_1000F2A18(&qword_100AD3B48);
    sub_1000F2A18(&unk_100AD9850);
    sub_1001231E4();
    sub_1001235B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D80);
  }

  return result;
}

unint64_t sub_1001241F8()
{
  result = qword_100AD3D88;
  if (!qword_100AD3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D88);
  }

  return result;
}

unint64_t sub_100124250()
{
  result = qword_100AD3D90;
  if (!qword_100AD3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D90);
  }

  return result;
}

unint64_t sub_1001242C4()
{
  result = qword_100AD3D98;
  if (!qword_100AD3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D98);
  }

  return result;
}

void *sub_100124324()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = *((swift_isaMask & *v0) + 0xB0);
  v2 = v0;
  v1(3);

  return v2;
}

void sub_1001243A4(void *a1, char *a2, uint64_t a3)
{
  v48 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  v10 = sub_1000F24EC(&qword_100AD1420);
  v11 = __chkstk_darwin(v10 - 8);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v40 - v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v50 = a1;
  v18 = a1;
  v45 = a3;
  swift_getAtKeyPath();
  v44 = v18;

  v19 = v51;
  v49 = v5;
  v46 = v6;
  if (v51)
  {
    v20 = *(v6 + 16);
    v20(v17, &v51[OBJC_IVAR____TtC7Journal5Asset_id], v5);

    v21 = *(v6 + 56);
    v21(v17, 0, 1, v5);
  }

  else
  {
    v21 = *(v6 + 56);
    v21(v17, 1, 1, v5);
    v20 = *(v6 + 16);
  }

  v22 = v48;
  v23 = v49;
  v20(v15, &v48[OBJC_IVAR____TtC7Journal5Asset_id], v49);
  v21(v15, 0, 1, v23);
  v24 = *(v8 + 48);
  v25 = v47;
  sub_1000082B4(v17, v47, &qword_100AD1420);
  sub_1000082B4(v15, v25 + v24, &qword_100AD1420);
  v26 = v46;
  v27 = *(v46 + 48);
  if (v27(v25, 1, v23) != 1)
  {
    v30 = v26;
    v41 = v17;
    v31 = v43;
    sub_1000082B4(v25, v43, &qword_100AD1420);
    v32 = v49;
    if (v27(v25 + v24, 1, v49) != 1)
    {
      v35 = v25 + v24;
      v36 = v42;
      (*(v26 + 32))(v42, v35, v32);
      sub_100123664(&qword_100AD9220, &type metadata accessor for UUID);
      v29 = v48;
      v37 = v48;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v30 + 8);
      v39(v36, v32);
      sub_100004F84(v15, &qword_100AD1420);
      sub_100004F84(v41, &qword_100AD1420);
      v39(v31, v32);
      sub_100004F84(v25, &qword_100AD1420);
      if (v38)
      {
        goto LABEL_12;
      }

LABEL_10:
      v50 = v29;
      v51 = v44;
      v34 = v44;
      swift_setAtReferenceWritableKeyPath();

      return;
    }

    v29 = v48;
    v33 = v48;
    sub_100004F84(v15, &qword_100AD1420);
    sub_100004F84(v41, &qword_100AD1420);
    (*(v26 + 8))(v31, v32);
LABEL_9:
    sub_100004F84(v25, &unk_100AEEE20);
    goto LABEL_10;
  }

  v28 = v22;
  sub_100004F84(v15, &qword_100AD1420);
  sub_100004F84(v17, &qword_100AD1420);
  v29 = v22;
  if (v27(v25 + v24, 1, v49) != 1)
  {
    goto LABEL_9;
  }

  sub_100004F84(v25, &qword_100AD1420);
LABEL_12:
}

void sub_10012491C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringArrayForKey:v6];

  if (v7)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v18[0] = a1;
  v18[1] = a2;
  __chkstk_darwin(v8);
  v17[2] = v18;

  v10 = sub_100194FF0(sub_100124B50, v17, v9);

  if (v10)
  {
  }

  else
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10009BCC8(0, *(v9 + 2) + 1, 1, v9);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_10009BCC8((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = a1;
    *(v13 + 5) = a2;
    v14 = [v4 standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = String._bridgeToObjectiveC()();
    [v14 setObject:isa forKey:v16];
  }
}

void sub_100124B70(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringArrayForKey:v6];

  if (v7)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 5;
    while (1)
    {
      v12 = *(v11 - 1) == a1 && *v11 == a2;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v10;
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }

    sub_100691630(v10);

    v13 = [v4 standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = String._bridgeToObjectiveC()();
    [v13 setObject:isa forKey:v15];
  }

  else
  {
LABEL_12:
  }
}

id sub_100124EB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100124FB4(uint64_t a1, double a2, double a3)
{
  v7 = type metadata accessor for RoutePinAnnotation();
  v16.receiver = objc_allocWithZone(v7);
  v16.super_class = v7;
  v8 = objc_msgSendSuper2(&v16, "init");
  [v8 setGeotaggables:a1];
  [v8 setCoordinate:{a2, a3}];
  v9 = v8;
  [v9 setCoordinate:{a2, a3}];
  [v9 setGeotaggables:a1];
  v10 = OBJC_IVAR____TtC7Journal16RoutePinRenderer_pipelineComponentProvider;
  v11 = *(v3 + OBJC_IVAR____TtC7Journal16RoutePinRenderer_pipelineComponentProvider);
  if (v11)
  {
    v12 = [v11 renderer];
  }

  else
  {
    v12 = 0;
  }

  [v9 setRenderer:v12];
  swift_unknownObjectRelease();
  v13 = *(v3 + v10);
  if (v13)
  {
    v14 = [v13 selectionHandler];
  }

  else
  {
    v14 = 0;
  }

  [v9 setSelectionHandler:v14];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1001251C0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for RoutePinAnnotation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    swift_unknownObjectRetain();
    v8 = [a2 dequeueReusableAnnotationViewWithIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier forAnnotation:v7];
    type metadata accessor for EntryMapMarkerAnnotationView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      [v9 setAnnotation:a1];
      v11 = v8;
      [v10 setClusteringIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];
      v12 = v11;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v13 = String._bridgeToObjectiveC()();

      [v10 setAccessibilityLabel:v13];

      swift_unknownObjectRelease();
      return v10;
    }

    else
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MacSettingsNotificationsTab()
{
  result = qword_100AD3ED0;
  if (!qword_100AD3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100125448()
{
  sub_1001254B4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001254B4()
{
  if (!qword_100AD3EE0)
  {
    type metadata accessor for NotificationSettingsViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD3EE0);
    }
  }
}

uint64_t sub_100125528@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MacSettingsNotificationsTab();
  v25 = *(v3 - 8);
  v24 = *(v25 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD3F10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v26 = v1;
  sub_1000F24EC(&qword_100AD3F18);
  sub_100129018();
  Form.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  sub_10000B58C(&qword_100AD3F88, &qword_100AD3F10);
  View.navigationTitle(_:)();
  sub_1000594D0(v10, v12, v14 & 1);

  (*(v7 + 8))(v9, v6);
  v15 = v23;
  sub_1001292CC(v23, v5);
  v16 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v17 = swift_allocObject();
  sub_100129330(v5, v17 + v16);
  v18 = (a1 + *(sub_1000F24EC(&qword_100AD3F90) + 36));
  *v18 = sub_100129394;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  sub_1001292CC(v15, v5);
  v19 = swift_allocObject();
  sub_100129330(v5, v19 + v16);
  result = sub_1000F24EC(&qword_100AD3F98);
  v21 = (a1 + *(result + 36));
  *v21 = 0;
  v21[1] = 0;
  v21[2] = sub_1001293AC;
  v21[3] = v19;
  return result;
}

uint64_t sub_100125884@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v88 = sub_1000F24EC(&qword_100AD3F80);
  __chkstk_darwin(v88);
  v70 = &v62 - v1;
  v72 = sub_1000F24EC(&qword_100AD3FA0);
  v71 = *(v72 - 8);
  v2 = __chkstk_darwin(v72);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v79 = &v62 - v4;
  v69 = sub_1000F24EC(&qword_100AD3FA8);
  v78 = *(v69 - 8);
  v5 = __chkstk_darwin(v69);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v62 - v7;
  v65 = sub_1000F24EC(&qword_100AD3F70);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v62 - v8;
  v83 = sub_1000F24EC(&qword_100AD3F60);
  v9 = __chkstk_darwin(v83);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v62 - v11;
  v85 = sub_1000F24EC(&qword_100AD3FB0);
  __chkstk_darwin(v85);
  v84 = &v62 - v12;
  v80 = sub_1000F24EC(&qword_100AD3FB8);
  __chkstk_darwin(v80);
  v81 = &v62 - v13;
  v87 = sub_1000F24EC(&qword_100AD3F30);
  __chkstk_darwin(v87);
  v82 = &v62 - v14;
  v75 = sub_1000F24EC(&qword_100AD3F50);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v62 - v15;
  v16 = sub_1000F24EC(&qword_100AD3F40);
  v17 = __chkstk_darwin(v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v62 - v20;
  sub_1000F24EC(&qword_100AD3E70);
  Bindable.wrappedValue.getter();
  v21 = v89;
  swift_getKeyPath();
  *&v89 = v21;
  sub_1001295A4(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v21 + 24);
  v23 = [v22 authorizationStatus];

  if (v23)
  {
    v24 = v83;
    Bindable.wrappedValue.getter();
    v25 = v89;
    swift_getKeyPath();
    *&v89 = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v25 + 24);
    v27 = [v26 authorizationStatus];

    if (v27 == 2)
    {
      __chkstk_darwin(v28);
      sub_1000F24EC(&qword_100AD3FE0);
      v83 = &protocol conformance descriptor for TupleView<A>;
      sub_10000B58C(&qword_100AD3FE8, &qword_100AD3FE0);
      v29 = v77;
      v30 = Section<>.init(content:)();
      __chkstk_darwin(v30);
      sub_1000F24EC(&qword_100AD3FF0);
      sub_10000B58C(&qword_100AD3FF8, &qword_100AD3FF0);
      v31 = v79;
      Section<>.init(content:)();
      v32 = *(v78 + 16);
      v33 = v66;
      v34 = v29;
      v35 = v69;
      v32(v66, v34, v69);
      v36 = v71;
      v37 = *(v71 + 16);
      v38 = v68;
      v39 = v72;
      v37(v68, v31, v72);
      v40 = v70;
      v32(v70, v33, v35);
      v41 = sub_1000F24EC(&qword_100AD4000);
      v37((v40 + *(v41 + 48)), v38, v39);
      v42 = *(v36 + 8);
      v42(v38, v39);
      v43 = *(v78 + 8);
      v43(v33, v35);
      sub_1000BC154(v40, v84);
      swift_storeEnumTagMultiPayload();
      sub_1001290D0();
      sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80);
      _ConditionalContent<>.init(storage:)();
      sub_1000BC1C4(v40);
      v42(v79, v39);
      return (v43)(v77, v35);
    }

    sub_1000F24EC(&qword_100AD3FC0);
    sub_1000F24EC(&qword_100AD3FC8);
    sub_10000B58C(&qword_100AD3FD0, &qword_100AD3FC0);
    sub_10000B58C(&qword_100AD3FD8, &qword_100AD3FC8);
    v54 = v62;
    ContentUnavailableView.init(label:description:actions:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v55 = v63;
    (*(v64 + 32))(v63, v54, v65);
    v56 = (v55 + v24[9]);
    v57 = v94;
    v56[4] = v93;
    v56[5] = v57;
    v56[6] = v95;
    v58 = v90;
    *v56 = v89;
    v56[1] = v58;
    v59 = v92;
    v56[2] = v91;
    v56[3] = v59;
    v60 = v67;
    sub_100021CEC(v55, v67, &qword_100AD3F60);
    sub_1000082B4(v60, v81, &qword_100AD3F60);
    swift_storeEnumTagMultiPayload();
    sub_10012915C();
    sub_100129214();
    v61 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_1000082B4(v61, v84, &qword_100AD3F30);
    swift_storeEnumTagMultiPayload();
    sub_1001290D0();
    sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80);
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v61, &qword_100AD3F30);
    v52 = v60;
    v53 = &qword_100AD3F60;
  }

  else
  {
    sub_1000F24EC(&qword_100AD3FC0);
    sub_1000F24EC(&qword_100AD4008);
    sub_10000B58C(&qword_100AD3FD0, &qword_100AD3FC0);
    sub_10000B58C(&qword_100AD4010, &qword_100AD4008);
    v45 = v73;
    ContentUnavailableView.init(label:description:actions:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v74 + 32))(v19, v45, v75);
    v46 = &v19[*(v16 + 36)];
    v47 = v94;
    *(v46 + 4) = v93;
    *(v46 + 5) = v47;
    *(v46 + 6) = v95;
    v48 = v90;
    *v46 = v89;
    *(v46 + 1) = v48;
    v49 = v92;
    *(v46 + 2) = v91;
    *(v46 + 3) = v49;
    v50 = v76;
    sub_100021CEC(v19, v76, &qword_100AD3F40);
    sub_1000082B4(v50, v81, &qword_100AD3F40);
    swift_storeEnumTagMultiPayload();
    sub_10012915C();
    sub_100129214();
    v51 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_1000082B4(v51, v84, &qword_100AD3F30);
    swift_storeEnumTagMultiPayload();
    sub_1001290D0();
    sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80);
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v51, &qword_100AD3F30);
    v52 = v50;
    v53 = &qword_100AD3F40;
  }

  return sub_100004F84(v52, v53);
}

uint64_t sub_100126820@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001268AC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001268F4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001269C4()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1003E98E8(0, 0, v2, &unk_1009427B8, v5);
}

uint64_t sub_100126AD0(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100126B68, v3, v2);
}

uint64_t sub_100126B68()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100126C54;

  return sub_1003C1F2C(v1, &protocol witness table for MainActor, 1);
}

uint64_t sub_100126C54(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_100126E18;
  }

  else
  {

    *(v4 + 56) = a1 & 1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_100126DAC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100126DAC()
{
  v1 = *(v0 + 56);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100126E18()
{

  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100126E84@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100126F64@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100126FF0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100127038@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001270C4()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1008B4384(v2);
  sub_1001295EC(v5);
  v6 = type metadata accessor for URL();
  result = (*(*(v6 - 8) + 48))(v2, 1, v6);
  if (result != 1)
  {
    return Link.init(sensitiveUrl:label:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_100127220@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001272AC@<X0>(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = sub_1000F24EC(&qword_100AD4088);
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v69 = v61 - v4;
  v5 = sub_1000F24EC(&qword_100AD4090);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = __chkstk_darwin(v5);
  v66 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v61 - v8;
  v9 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v9 - 8);
  v61[2] = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD2690);
  __chkstk_darwin(v11 - 8);
  v61[1] = v61 - v12;
  v13 = sub_1000F24EC(&qword_100AD4018);
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = __chkstk_darwin(v13);
  v62 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = v61 - v16;
  v17 = sub_1000F24EC(&qword_100AD4098);
  v18 = __chkstk_darwin(v17 - 8);
  v77 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v76 = v61 - v20;
  v21 = sub_1000F24EC(&qword_100AD3E70);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v61 - v23;
  v25 = sub_1000F24EC(&qword_100AD4068);
  v73 = *(v25 - 8);
  v74 = v25;
  v26 = __chkstk_darwin(v25);
  v75 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v61 - v28;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v30 = *(v22 + 8);
  v30(v24, v21);
  v72 = v29;
  Toggle.init(isOn:label:)();
  v65 = a1;
  Bindable.wrappedValue.getter();
  v31 = v81;
  swift_getKeyPath();
  v81 = v31;
  sub_1001295A4(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v81 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v31 + 24) authorizationStatus] == 2 && (swift_getKeyPath(), v81 = v31, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v31 + 64) >> 62 != 1))
  {
    v44 = [*(v31 + 16) isJournalingScheduleEnabled];

    if (v44)
    {
      v45 = v65;
      Bindable.projectedValue.getter();
      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v30(v24, v21);
      static DatePickerComponents.hourAndMinute.getter();
      v46 = v70;
      v47 = DatePicker.init(selection:displayedComponents:label:)();
      __chkstk_darwin(v47);
      v61[-2] = v45;
      type metadata accessor for SettingsWeekdayToggles();
      sub_1001295A4(&qword_100AD40A8, type metadata accessor for SettingsWeekdayToggles);
      v48 = v71;
      LabeledContent<>.init(content:label:)();
      v49 = v63;
      v50 = v64;
      v51 = *(v63 + 16);
      v52 = v62;
      v51(v62, v46, v64);
      v54 = v66;
      v53 = v67;
      v65 = *(v67 + 16);
      v55 = v48;
      v56 = v68;
      v65(v66, v55, v68);
      v57 = v69;
      v51(v69, v52, v50);
      v58 = sub_1000F24EC(&qword_100AD40B0);
      v65(v57 + *(v58 + 48), v54, v56);
      v59 = *(v53 + 8);
      v59(v71, v56);
      v60 = *(v49 + 8);
      v60(v70, v50);
      v59(v54, v56);
      v60(v52, v50);
      v33 = v76;
      sub_100021CEC(v57, v76, &qword_100AD4088);
      v32 = 0;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v32 = 1;
  v33 = v76;
LABEL_5:
  (*(v78 + 56))(v33, v32, 1, v79);
  v35 = v72;
  v34 = v73;
  v36 = *(v73 + 16);
  v37 = v74;
  v38 = v75;
  v36(v75, v72, v74);
  v39 = v77;
  sub_1000082B4(v33, v77, &qword_100AD4098);
  v40 = v80;
  v36(v80, v38, v37);
  v41 = sub_1000F24EC(&qword_100AD40A0);
  sub_1000082B4(v39, &v40[*(v41 + 48)], &qword_100AD4098);
  sub_100004F84(v33, &qword_100AD4098);
  v42 = *(v34 + 8);
  v42(v35, v37);
  sub_100004F84(v39, &qword_100AD4098);
  return (v42)(v38, v37);
}

uint64_t sub_100127C8C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1003F06FC(v4);
}

uint64_t sub_100127D58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD3E70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v3 + 8))(v5, v2);
  *a1 = v8[1];
  *(a1 + 8) = v9;
  v6 = *(type metadata accessor for SettingsWeekdayToggles() + 20);
  *(a1 + v6) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100127EAC(uint64_t *a1)
{
  v1 = *a1;

  v3 = sub_1003EF734(v5);
  if (*v2)
  {
    *v2 = v1;
  }

  (v3)(v5, 0);
  return sub_1003F1768(0);
}

uint64_t sub_100127F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v79 = a1;
  v78 = a2;
  v2 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v2 - 8);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD2690);
  __chkstk_darwin(v4 - 8);
  v59 = &v56 - v5;
  v75 = sub_1000F24EC(&qword_100AD4018);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v58 = &v56 - v6;
  v7 = sub_1000F24EC(&qword_100AD4020);
  v8 = __chkstk_darwin(v7 - 8);
  v77 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v56 - v10;
  v11 = sub_1000F24EC(&qword_100AD3E70);
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  v66 = sub_1000F24EC(&qword_100AD4028);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v56 - v14;
  v73 = sub_1000F24EC(&qword_100AD4030);
  v72 = *(v73 - 8);
  v15 = __chkstk_darwin(v73);
  v71 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = &v56 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v83 = v18;
  v82 = v19;
  v21 = v20;
  v84 = v22;
  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v80 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v81 = v28;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v63 = v11;
  Bindable<A>.subscript.getter();

  v30 = *(v85 + 8);
  v57 = v13;
  v85 += 8;
  v56 = v30;
  v30(v13, v11);
  v69 = v103;
  v62 = v104;
  v61 = v105;
  v95 = v18;
  v31 = v82;
  v96 = v82;
  v70 = v21;
  LOBYTE(v13) = v21 & 1;
  v97 = v21 & 1;
  v32 = v84;
  v98 = v84;
  v99 = v23;
  v100 = v25;
  v68 = v27;
  v101 = v27 & 1;
  v102 = v29;
  sub_1000F24EC(&qword_100AD4038);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038);
  v33 = v64;
  Toggle.init(isOn:label:)();
  v86 = v79;
  v87 = v83;
  v88 = v31;
  v89 = v13;
  v90 = v32;
  v91 = v80;
  v69 = v25;
  v92 = v25;
  v93 = v27 & 1;
  v94 = v81;
  sub_1000F24EC(&qword_100AD4048);
  sub_10000B58C(&qword_100AD4050, &qword_100AD4028);
  sub_10000B58C(&qword_100AD4058, &qword_100AD4048);
  v34 = v65;
  v35 = v66;
  v36 = v63;
  View.accessibilityRepresentation<A>(representation:)();
  (*(v67 + 8))(v33, v35);
  Bindable.wrappedValue.getter();
  v37 = v103;
  swift_getKeyPath();
  v103 = v37;
  sub_1001295A4(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v103 = v37;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v37 + 24) authorizationStatus] == 2 && (swift_getKeyPath(), v103 = v37, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v37 + 64) >> 62 != 1))
  {
    v52 = [*(v37 + 16) isStreakReminderEnabled];

    if (v52)
    {
      v53 = v57;
      Bindable.projectedValue.getter();
      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v56(v53, v36);
      static DatePickerComponents.hourAndMinute.getter();
      v54 = v58;
      DatePicker.init(selection:displayedComponents:label:)();
      v41 = v74;
      v39 = v76;
      v55 = v75;
      (*(v74 + 32))(v76, v54, v75);
      v40 = v55;
      v38 = 0;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v38 = 1;
  v39 = v76;
  v40 = v75;
  v41 = v74;
LABEL_5:
  (*(v41 + 56))(v39, v38, 1, v40);
  v42 = v72;
  v43 = *(v72 + 16);
  v44 = v71;
  v45 = v34;
  v46 = v73;
  v43(v71, v34, v73);
  v47 = v77;
  sub_1000082B4(v39, v77, &qword_100AD4020);
  v48 = v78;
  v43(v78, v44, v46);
  v49 = sub_1000F24EC(&qword_100AD4060);
  sub_1000082B4(v47, &v48[*(v49 + 48)], &qword_100AD4020);
  sub_1000594D0(v83, v82, v70 & 1);

  sub_1000594D0(v80, v69, v68 & 1);

  sub_100004F84(v39, &qword_100AD4020);
  v50 = *(v42 + 8);
  v50(v45, v46);
  sub_100004F84(v47, &qword_100AD4020);
  return (v50)(v44, v46);
}

uint64_t sub_100128A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = a3 & 1;
  v14 = a7 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  sub_1000F24DC(a1, a2, a3 & 1);

  sub_1000F24DC(a5, a6, v14);

  sub_1000F24DC(a1, a2, v13);

  sub_1000F24DC(a5, a6, v14);

  sub_1000594D0(a5, a6, v14);

  sub_1000594D0(a1, a2, v13);
}

uint64_t sub_100128B78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9)
{
  v38 = a7;
  v36 = a5;
  v37 = a6;
  v33 = a4;
  v34 = a8;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v35 = a9;
  v9 = sub_1000F24EC(&qword_100AD3E70);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = sub_1000F24EC(&qword_100AD4068);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = sub_1000F24EC(&qword_100AD4070);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v29 - v21;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v39 = v30;
  v40 = v31;
  v41 = v32 & 1;
  v42 = v33;
  Toggle.init(isOn:label:)();
  sub_10000B58C(&qword_100AD4078, &qword_100AD4068);
  View.accessibilityLabel(_:)();
  (*(v14 + 8))(v16, v13);
  sub_1000082B4(v22, v20, &qword_100AD4070);
  v23 = v34;
  sub_1000082B4(v20, v34, &qword_100AD4070);
  v24 = v23 + *(sub_1000F24EC(&qword_100AD4080) + 48);
  v26 = v36;
  v25 = v37;
  *v24 = v36;
  *(v24 + 8) = v25;
  v27 = v38;
  LOBYTE(v23) = v38 & 1;
  *(v24 + 16) = v38 & 1;
  *(v24 + 24) = v35;
  sub_1000F24DC(v26, v25, v27 & 1);

  sub_1000F24DC(v26, v25, v23);

  sub_100004F84(v22, &qword_100AD4070);
  sub_1000594D0(v26, v25, v23);

  return sub_100004F84(v20, &qword_100AD4070);
}

uint64_t sub_100128F34@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100128FB0(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1000F24EC(&qword_100AD3E70);
  v3 = Bindable.wrappedValue.getter();
  a2(v3);
}

unint64_t sub_100129018()
{
  result = qword_100AD3F20;
  if (!qword_100AD3F20)
  {
    sub_1000F2A18(&qword_100AD3F18);
    sub_1001290D0();
    sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F20);
  }

  return result;
}

unint64_t sub_1001290D0()
{
  result = qword_100AD3F28;
  if (!qword_100AD3F28)
  {
    sub_1000F2A18(&qword_100AD3F30);
    sub_10012915C();
    sub_100129214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F28);
  }

  return result;
}

unint64_t sub_10012915C()
{
  result = qword_100AD3F38;
  if (!qword_100AD3F38)
  {
    sub_1000F2A18(&qword_100AD3F40);
    sub_10000B58C(&qword_100AD3F48, &qword_100AD3F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F38);
  }

  return result;
}

unint64_t sub_100129214()
{
  result = qword_100AD3F58;
  if (!qword_100AD3F58)
  {
    sub_1000F2A18(&qword_100AD3F60);
    sub_10000B58C(&qword_100AD3F68, &qword_100AD3F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F58);
  }

  return result;
}

uint64_t sub_1001292CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSettingsNotificationsTab();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100129330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSettingsNotificationsTab();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100129438(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return sub_100126AD0(a1);
}

uint64_t sub_100129548@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_1000F24DC(v2, v3, v4);
}

uint64_t sub_1001295A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001295EC(uint64_t a1)
{
  v2 = type metadata accessor for OpenSensitiveURLAction.Destination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100129648()
{
  result = qword_100AD40B8;
  if (!qword_100AD40B8)
  {
    sub_1000F2A18(&qword_100AD3F98);
    sub_1001296D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD40B8);
  }

  return result;
}

unint64_t sub_1001296D4()
{
  result = qword_100AD40C0;
  if (!qword_100AD40C0)
  {
    sub_1000F2A18(&qword_100AD3F90);
    sub_1000F2A18(&qword_100AD3F10);
    sub_10000B58C(&qword_100AD3F88, &qword_100AD3F10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD40C0);
  }

  return result;
}

id sub_100129814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDeviceInfoProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012986C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD40F0);
  v1 = sub_10000617C(v0, qword_100AD40F0);
  if (qword_100AD0190 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSObject *sub_100129968()
{
  v1 = sub_1000F24EC(&qword_100AD4230);
  v90 = *(v1 - 8);
  v91 = v1;
  __chkstk_darwin(v1);
  v89 = &v79 - v2;
  v3 = sub_1000F24EC(&qword_100AD4238);
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v79 - v4;
  v5 = sub_1000F24EC(&qword_100AD4240);
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v83 = &v79 - v6;
  v7 = sub_1000F24EC(&qword_100AD4248);
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v79 - v8;
  v9 = sub_1000F24EC(&qword_100AD4250);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v99 = type metadata accessor for NSNotificationCenter.ObservationToken();
  v13 = *(v99 - 8);
  v14 = __chkstk_darwin(v99);
  v95 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v93 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v79 - v21;
  __chkstk_darwin(v20);
  v98 = &v79 - v22;
  *&v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_observationTokens] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_propertiesToRefresh] = &_swiftEmptySetSingleton;
  v23 = &v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity;
  type metadata accessor for UndoableActivity();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 3;
  *&v0[v24] = v25;
  v26 = type metadata accessor for EntryUndoManager();
  v100.receiver = v0;
  v100.super_class = v26;
  v27 = objc_msgSendSuper2(&v100, "init");
  v28 = qword_100ACF950;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000617C(v30, qword_100AD40F0);
  v31 = v29;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412546;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2048;
    *(v35 + 14) = [v31 groupingLevel];

    _os_log_impl(&_mh_execute_header, v32, v33, "Created new undoManager: %@, initial level:%ld", v35, 0x16u);
    sub_10012B714(v36);
  }

  else
  {

    v32 = v31;
  }

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  type metadata accessor for NSUndoManager.DidOpenUndoGroupMessage();
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4258, &qword_100AD4250);
  v39 = v31;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v10 + 8))(v12, v9);
  v40 = OBJC_IVAR____TtC7Journal16EntryUndoManager_observationTokens;
  v41 = *(&v39->isa + OBJC_IVAR____TtC7Journal16EntryUndoManager_observationTokens);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_1003E4B30(0, *(v41 + 2) + 1, 1, v41);
    *(&v39->isa + v40) = v41;
  }

  v43 = v97;
  v45 = *(v41 + 2);
  v44 = *(v41 + 3);
  if (v45 >= v44 >> 1)
  {
    v41 = sub_1003E4B30(v44 > 1, v45 + 1, 1, v41);
  }

  *(v41 + 2) = v45 + 1;
  v47 = *(v43 + 32);
  v46 = v43 + 32;
  v97 = (*(v46 + 48) + 32) & ~*(v46 + 48);
  v96 = *(v46 + 40);
  v48 = v98;
  v98 = v47;
  (v47)(v41 + v97 + v96 * v45, v48, v99);
  *(&v39->isa + v40) = v41;
  v49 = [v37 defaultCenter];
  type metadata accessor for NSUndoManager.DidCloseUndoGroupMessage();
  v50 = v80;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4260, &qword_100AD4248);
  v51 = v82;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v81 + 8))(v50, v51);
  v52 = *(&v39->isa + v40);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v52;
  if ((v53 & 1) == 0)
  {
    v52 = sub_1003E4B30(0, *(v52 + 2) + 1, 1, v52);
    *(&v39->isa + v40) = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = sub_1003E4B30(v54 > 1, v55 + 1, 1, v52);
  }

  *(v52 + 2) = v55 + 1;
  (v98)(v52 + v97 + v55 * v96, v92, v99);
  *(&v39->isa + v40) = v52;
  v56 = v37;
  v57 = [v37 defaultCenter];
  type metadata accessor for NSUndoManager.WillCloseUndoGroupMessage();
  v58 = v83;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4268, &qword_100AD4240);
  v59 = v85;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v84 + 8))(v58, v59);
  v60 = *(&v39->isa + v40);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1003E4B30(0, *(v60 + 2) + 1, 1, v60);
    *(&v39->isa + v40) = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1003E4B30(v62 > 1, v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  (v98)(v60 + v97 + v63 * v96, v93, v99);
  *(&v39->isa + v40) = v60;
  v64 = [v56 defaultCenter];
  type metadata accessor for NSUndoManager.DidUndoChangeMessage();
  v65 = v86;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4270, &qword_100AD4238);
  v66 = v88;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v87 + 8))(v65, v66);
  v67 = *(&v39->isa + v40);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1003E4B30(0, *(v67 + 2) + 1, 1, v67);
    *(&v39->isa + v40) = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1003E4B30(v69 > 1, v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  (v98)(v67 + v97 + v70 * v96, v94, v99);
  *(&v39->isa + v40) = v67;
  v71 = [v56 defaultCenter];
  type metadata accessor for NSUndoManager.DidRedoChangeMessage();
  v72 = v89;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10012B6C0(&qword_100AD4278, &qword_100AD4230);
  v73 = v91;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v90 + 8))(v72, v73);
  v74 = *(&v39->isa + v40);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1003E4B30(0, *(v74 + 2) + 1, 1, v74);
    *(&v39->isa + v40) = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1003E4B30(v76 > 1, v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  (v98)(v74 + v97 + v77 * v96, v95);
  *(&v39->isa + v40) = v74;
  [v39 beginUndoGrouping];

  return v39;
}

void sub_10012A694(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AD40F0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_10012B714(v11);
    }

    else
    {

      v8 = v7;
    }
  }
}

void sub_10012A818(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AD40F0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_10012B714(v11);
    }

    else
    {

      v8 = v7;
    }

    sub_10012A9C8();
  }
}

uint64_t sub_10012A9C8()
{
  v1 = OBJC_IVAR____TtC7Journal16EntryUndoManager_propertiesToRefresh;
  result = swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo);
    if (v3)
    {
      sub_100021E80(*(v0 + OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo));

      v3(v4);
      sub_100004DF8(v3);
    }

    *(v0 + v1) = &_swiftEmptySetSingleton;

    *(*(v0 + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  }

  return result;
}

void sub_10012AA98()
{
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD40F0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = [v2 groupingLevel];
    *(v5 + 12) = 2048;
    *(v5 + 14) = (*(&v2->isa + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity))[2];

    _os_log_impl(&_mh_execute_header, v3, v4, "textViewDidOpenUndoGroup, groupingLevel: %ld, size: %ld", v5, 0x16u);
  }

  else
  {

    v3 = v2;
  }

  if ((*(&v2->isa + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity))[2] >= 3)
  {
    sub_10012B2C8();
  }
}

id sub_10012ABE8()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "EntryUndoManager.undo()", v5, 2u);
  }

  sub_10012ACEC();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v7, "undo");
}

uint64_t sub_10012ACEC()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "endUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (result >= 1)
  {

    return [v1 endUndoGrouping];
  }

  return result;
}

void sub_10012AE54()
{
  v1 = [v0 groupingLevel];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EntryUndoManager();
  objc_msgSendSuper2(&v7, "beginUndoGrouping");
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v1;
    *(v6 + 12) = 2048;
    *(v6 + 14) = [v3 groupingLevel];

    _os_log_impl(&_mh_execute_header, v4, v5, "beginUndoGrouping, level: %ld -> %ld", v6, 0x16u);
  }

  else
  {

    v4 = v3;
  }
}

void sub_10012AFF0()
{
  if ([v0 groupingLevel] < 1)
  {
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AD40F0);
    v11 = v0;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v11 groupingLevel];

      _os_log_impl(&_mh_execute_header, oslog, v8, "endUndoGrouping skipped, current level: %ld", v9, 0xCu);

      v10 = oslog;
    }

    else
    {

      v10 = v11;
    }
  }

  else
  {
    v1 = [v0 groupingLevel];
    v13.receiver = v0;
    v13.super_class = type metadata accessor for EntryUndoManager();
    objc_msgSendSuper2(&v13, "endUndoGrouping");
    *(*&v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity] + 16) = 0;
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AD40F0);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v1;
      *(v6 + 12) = 2048;
      *(v6 + 14) = [v3 groupingLevel];

      _os_log_impl(&_mh_execute_header, v4, v5, "endUndoGrouping, level: %ld -> %ld", v6, 0x16u);
    }

    else
    {
    }
  }
}

id sub_10012B2C8()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "markUndoPoint", v5, 2u);
  }

  sub_10012ACEC();
  result = sub_10012B3C0();
  *(*(v1 + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  return result;
}

id sub_10012B3C0()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "beginUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (!result)
  {

    return [v1 beginUndoGrouping];
  }

  return result;
}

id sub_10012B4DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10012B5B8()
{
  result = qword_100AD4228;
  if (!qword_100AD4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4228);
  }

  return result;
}

uint64_t sub_10012B6C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012B714(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10012B77C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = HIBYTE(a2) & 0xF;
  v10 = HIBYTE(a4) & 0xF;
  if (a2)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    v12 = a1;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v13 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  v12 = a3;
  if (v13)
  {
LABEL_9:
    sub_10012BD5C(10, v12);
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  [v4 setDisplayName:v14];

  if (a4)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15 = v10;
    }

    if (v15)
    {
      goto LABEL_19;
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v16 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = v9;
  }

  if (v16)
  {
LABEL_19:
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
LABEL_20:
    v17 = 0;
  }

  v18 = v17;
  [v4 setContentDescription:?];
}

uint64_t sub_10012B8BC()
{
  v1 = v0;
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AssetType.photo(_:))
  {
    return 0x6F746F6870;
  }

  if (v6 == enum case for AssetType.livePhoto(_:))
  {
    return 0x746F68706576696CLL;
  }

  if (v6 == enum case for AssetType.video(_:))
  {
    return 0x6F65646976;
  }

  if (v6 == enum case for AssetType.music(_:))
  {
    return 0x636973756DLL;
  }

  if (v6 == enum case for AssetType.podcast(_:))
  {
    return 0x6F702E656C707061;
  }

  if (v6 == enum case for AssetType.book(_:))
  {
    return 1802465122;
  }

  if (v6 == enum case for AssetType.audio(_:))
  {
    return 0x6D726F6665766177;
  }

  if (v6 == enum case for AssetType.visit(_:))
  {
    return 0x6E697070616DLL;
  }

  v8 = v6;
  result = 7364973;
  if (v8 != enum case for AssetType.multiPinMap(_:) && v8 != enum case for AssetType.genericMap(_:))
  {
    if (v8 == enum case for AssetType.link(_:))
    {
      return 1802398060;
    }

    else if (v8 == enum case for AssetType.contact(_:))
    {
      return 0xD000000000000012;
    }

    else if (v8 == enum case for AssetType.workoutIcon(_:))
    {
      return 0x722E657275676966;
    }

    else if (v8 == enum case for AssetType.workoutRoute(_:))
    {
      return 0x6574756F72;
    }

    else if (v8 == enum case for AssetType.stateOfMind(_:))
    {
      return 0xD000000000000011;
    }

    else if (v8 == enum case for AssetType.motionActivity(_:))
    {
      return 0x772E657275676966;
    }

    else
    {
      if (v8 != enum case for AssetType.thirdPartyMedia(_:))
      {
        (*(v3 + 8))(v5, v2);
        return 0x6F746F6870;
      }

      return 0x6F6E2E636973756DLL;
    }
  }

  return result;
}

uint64_t sub_10012BC9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10012BCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10012BD5C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = v5;

  sub_1000F24EC(&qword_100AD1EF0);
  sub_1000777B4();
  sub_10000B58C(&qword_100AD1EF8, &qword_100AD1EF0);
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  swift_beginAccess();
  if (*(v5 + 32))
  {
  }

  else
  {
    String.subscript.getter();
    a2 = static String._fromSubstring(_:)();
  }

  return a2;
}

uint64_t sub_10012BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    if (v17 >= a9)
    {
      result = swift_beginAccess();
      *(a10 + 16) = a5;
      *(a10 + 24) = a6;
      *(a10 + 32) = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t sub_10012C00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v12 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimeZone();
  __chkstk_darwin(v14 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  __chkstk_darwin(v16 - 8);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  __chkstk_darwin(v18 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F24EC(&qword_100AD4280);
  __chkstk_darwin(v20 - 8);
  v69 = &v67 - v21;
  v22 = sub_1000F24EC(&qword_100AD4288);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - v23;
  v25 = type metadata accessor for Date.FormatStyle();
  v67 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v68 = &v67 - v30;
  v31 = __chkstk_darwin(v29);
  v70 = &v67 - v32;
  v33 = __chkstk_darwin(v31);
  v72 = &v67 - v34;
  __chkstk_darwin(v33);
  v73 = &v67 - v35;
  v36 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v36 - 8);
  v38 = &v67 - v37;
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v91 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;

  v43 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_10009BCC8((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[16 * v45];
  v47 = v90;
  *(v46 + 4) = v89;
  *(v46 + 5) = v42;
  sub_100088AC8(v47, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_10012C9CC(v38);
  }

  else
  {
    v48 = *(v40 + 32);
    v90 = v39;
    v48(v91, v38, v39);
    v49 = type metadata accessor for Date.FormatStyle.DateStyle();
    (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
    v50 = type metadata accessor for Date.FormatStyle.TimeStyle();
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static FormatStyleCapitalizationContext.unknown.getter();
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v51 = v77;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    v52 = v68;
    Date.FormatStyle.year(_:)();
    (*(v78 + 8))(v51, v79);
    v53 = *(v67 + 8);
    v53(v28, v25);
    v54 = v80;
    static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
    v55 = v70;
    Date.FormatStyle.weekday(_:)();
    (*(v81 + 8))(v54, v82);
    v53(v52, v25);
    v56 = v83;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v57 = v72;
    Date.FormatStyle.month(_:)();
    (*(v84 + 8))(v56, v85);
    v53(v55, v25);
    v58 = v86;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v59 = v73;
    Date.FormatStyle.day(_:)();
    (*(v87 + 8))(v58, v88);
    v53(v57, v25);
    sub_10012CA34();
    Date.formatted<A>(_:)();
    v53(v59, v25);
    v60 = v92;
    v61 = v93;
    v63 = *(v43 + 2);
    v62 = *(v43 + 3);
    if (v63 >= v62 >> 1)
    {
      v43 = sub_10009BCC8((v62 > 1), v63 + 1, 1, v43);
    }

    (*(v40 + 8))(v91, v90);
    *(v43 + 2) = v63 + 1;
    v64 = &v43[16 * v63];
    *(v64 + 4) = v60;
    *(v64 + 5) = v61;
  }

  v92 = v43;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  v65 = BidirectionalCollection<>.joined(separator:)();

  return v65;
}

uint64_t sub_10012C9CC(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10012CA34()
{
  result = qword_100AD3CE8;
  if (!qword_100AD3CE8)
  {
    type metadata accessor for Date.FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CE8);
  }

  return result;
}

unint64_t sub_10012CAB8()
{
  result = qword_100AD4290;
  if (!qword_100AD4290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD4290);
  }

  return result;
}

uint64_t sub_10012CB04()
{
  v1 = sub_1000F24EC(&qword_100AD4318);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2];
  v4 = type metadata accessor for BookAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC7Journal9BookAsset_metadata))
  {

    sub_10025C5E8(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_1000F24EC(&qword_100AD38F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940050;
      *(inited + 32) = BookAssetMetadata.title.getter();
      *(inited + 40) = v9;
      *(inited + 48) = BookAssetMetadata.author.getter();
      *(inited + 56) = v10;
      sub_10009BB20(8236, 0xE200000000000000, inited);
      v12 = v11;
      swift_setDeallocating();
      sub_1000F24EC(&unk_100AE4870);
      swift_arrayDestroy();
      (*(v5 + 8))(v7, v4);
      return v12;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_100004F84(v3, &qword_100AD4318);
  return 0;
}

id sub_10012CD74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10012CE10()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v40[1] = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v41 = v40 - v6;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD4318);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = type metadata accessor for BookAssetMetadata();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AB394(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100004F84(v13, &qword_100AD4318);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    static UTType.audio.getter();
    v19 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v18 = [v19 initWithContentType:isa];

    (*(v8 + 8))(v10, v7);
    BookAssetMetadata.title.getter();
    if (v21)
    {
      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    [v18 setDisplayName:v22];

    BookAssetMetadata.author.getter();
    if (v23)
    {
      v24 = String._bridgeToObjectiveC()();
    }

    else
    {
      v24 = 0;
    }

    v25 = v41;
    [v18 setContentDescription:v24];

    v26 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v26 && (v27 = [v26 entry]) != 0)
    {
      v28 = v27;
      JournalEntryMO.displayDate.getter();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = type metadata accessor for Date();
    (*(*(v30 - 8) + 56))(v25, v29, 1, v30);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v31 = String.init(localized:table:bundle:locale:comment:)();
    v33 = v32;
    sub_1000F24EC(&unk_100AD9A60);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100940080;
    v35 = sub_10012C00C(v31, v33, v25);
    v37 = v36;

    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v18 setAlternateNames:v38];

    sub_100004F84(v25, &unk_100AD4790);
    (*(v15 + 8))(v17, v14);
  }

  return v18;
}

uint64_t sub_10012D3DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BookAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012D420()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

id sub_10012D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone];
  *v8 = 0;
  v8[1] = 0;
  sub_1000F24EC(&qword_100AD4380);
  UIViewController.ViewLoading.init()();
  v4[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style] = 0;
  type metadata accessor for JournalMembershipListViewModel();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel] = sub_100675190(a1);
  v9 = *v8;
  *v8 = a2;
  v8[1] = a3;
  sub_100021E80(a2);
  sub_100004DF8(v9);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for JournalMembershipListViewController();
  v10 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
  [v10 setModalPresentationStyle:7];
  v11 = [v10 popoverPresentationController];

  if (v11)
  {
    [v11 setDelegate:v10];
    sub_100004DF8(a2);
  }

  else
  {
    sub_100004DF8(a2);
  }

  return v10;
}

uint64_t sub_10012D798()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

id sub_10012D80C()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style))
  {
    if (*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style) == 1)
    {
      [v0 setPreferredContentSize:{380.0, 275.0}];
      result = [v0 collectionView];
      if (result)
      {
        v2 = result;
        v3 = [objc_opt_self() systemBackgroundColor];
        [v2 setBackgroundColor:v3];

        v4 = [v0 navigationItem];
        [v4 setRightBarButtonItem:0];

        v5 = [v0 navigationItem];
        [v5 setLeftBarButtonItem:0];

        sub_1000F24EC(&unk_100AD4780);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_100941830;
        v7 = objc_opt_self();
        *(v6 + 32) = [v7 flexibleSpaceItem];
        *(v6 + 40) = sub_10035FF58(v0, "cancel:");
        v8 = _UISolariumEnabled();
        v9 = 5.0;
        if (v8)
        {
          v9 = 0.0;
        }

        v10 = [v7 fixedSpaceItemOfWidth:v9];
        [v10 _setPrefersNoPlatter:1];
        *(v6 + 48) = v10;
        *(v6 + 56) = sub_10036032C(v0, "done:");
        sub_1000065A8(0, &qword_100AD43B0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v0 setToolbarItems:isa];

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_15;
    }

    [v0 setPreferredContentSize:{0.0, 0.0}];
    result = [v0 collectionView];
    if (!result)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v15 = result;
    v16 = [objc_opt_self() systemGroupedBackgroundColor];
    [v15 setBackgroundColor:v16];

    v17 = [v0 navigationItem];
    v18 = objc_allocWithZone(UIBarButtonItem);
    v19 = v0;
    v20 = [v18 initWithBarButtonSystemItem:0 target:v19 action:"done:"];
    [v17 setRightBarButtonItem:v20];

    v21 = [v19 navigationItem];
    v22 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v19 action:"cancel:"];

    [v21 setLeftBarButtonItem:v22];
    [v19 setToolbarItems:0];
  }

  else
  {
    [v0 setPreferredContentSize:{290.0, 0.0}];
    result = [v0 collectionView];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v12 = result;
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor:v13];

    v14 = [v0 navigationItem];
    [v14 setRightBarButtonItem:0];

    [v0 setToolbarItems:0];
  }

LABEL_11:

  return sub_100131838();
}

id sub_10012DC7C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1001329A0;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029CCC;
  aBlock[3] = &unk_100A5DDE0;
  v5 = _Block_copy(aBlock);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  v7 = [objc_allocWithZone(UICollectionView) initWithFrame:v6 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v0 setCollectionView:v7];
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  [result setAlwaysBounceVertical:0];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  [result setAllowsSelection:0];

  result = [v0 collectionView];
  if (result)
  {
    v13 = result;
    v14 = [v0 traitCollection];
    v15 = [v14 userInterfaceIdiom];

    [v13 setAllowsFocus:v15 != 5];
    v16 = sub_10012E154();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v16;
    v17 = v0;
    static UIViewController.ViewLoading.subscript.setter();
    v18 = [v17 navigationItem];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:defaultValue:table:bundle:locale:comment:)();
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19];

    v20 = objc_opt_self();
    v21 = [v20 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"cancel:"];
    [v17 addKeyCommand:v21];

    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 keyCommandWithInput:v22 modifierFlags:0 action:"done:"];

    [v17 addKeyCommand:v23];
    return sub_10012D80C();
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_10012E154()
{
  v1 = v0;
  v45 = sub_1000F24EC(&qword_100ADE610);
  v43 = *(v45 - 8);
  v2 = *(v43 + 64);
  v3 = __chkstk_darwin(v45);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v3);
  v42 = &v38 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - v7;
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v46 = sub_1000F24EC(&unk_100AD43E0);
  v41 = *(v46 - 8);
  v11 = *(v41 + 64);
  v12 = __chkstk_darwin(v46);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1000065A8(0, &qword_100AD4D40);
  sub_1000065A8(0, &qword_100AD43F0);
  v15 = v14;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v10;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = v8;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  result = [v1 collectionView];
  if (result)
  {
    v18 = v40;
    v19 = v41;
    v20 = *(v41 + 16);
    v39 = v14;
    v21 = v46;
    v20(v40, v15, v46);
    v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v23 = swift_allocObject();
    (*(v19 + 32))(v23 + v22, v18, v21);
    v24 = objc_allocWithZone(sub_1000F24EC(&qword_100AD4380));
    v40 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v25 = v42;
    v26 = v43;
    v27 = *(v43 + 16);
    v38 = v16;
    v28 = v16;
    v29 = v45;
    v27(v42, v28, v45);
    v30 = v44;
    v27(v44, v47, v29);
    v31 = *(v26 + 80);
    v32 = (v31 + 16) & ~v31;
    v33 = (v2 + v31 + v32) & ~v31;
    v34 = swift_allocObject();
    v35 = *(v26 + 32);
    v35(v34 + v32, v25, v29);
    v35(v34 + v33, v30, v29);
    v36 = v40;
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    v37 = *(v26 + 8);
    v37(v47, v29);
    v37(v38, v29);
    (*(v19 + 8))(v39, v46);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10012E690(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalMembershipListViewController();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  if (([v1 isMovingFromParentViewController] & 1) != 0 || (objc_msgSend(v1, "isBeingDismissed") & 1) != 0 || (v3 = objc_msgSend(v1, "navigationController")) != 0 && (v4 = v3, v5 = objc_msgSend(v3, "isBeingDismissed"), v4, v5))
  {
    if (!*(v1 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style))
    {
      sub_100675820();
    }
  }
}

id sub_10012E7B0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for JournalMembershipListViewController();
  result = objc_msgSendSuper2(&v4, "viewDidLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style) != 1)
  {
    result = [v0 collectionView];
    if (result)
    {
      v2 = result;
      [result layoutIfNeeded];

      result = [v0 collectionView];
      if (result)
      {
        v3 = result;
        [result contentSize];

        [v0 preferredContentSize];
        return [v0 setPreferredContentSize:?];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_10012E8E8(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v9)
  {
    v4 = [*(*(v1 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel) + 24) objectWithID:v9];
    type metadata accessor for JournalMO();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = sub_100675310(v5) != 0;
      sub_10012EA18(v7, v6);
    }
  }
}

uint64_t sub_10012EA18(char a1, void *a2)
{
  v4 = sub_1000F24EC(&qword_100AD43B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_100675424(a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v18;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v16 = v5;
    v17 = v4;
    v5 = 0;
    v4 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_6;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v12 = *(v8 + 8 * v5 + 32);
LABEL_6:
      ++v5;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (i == v5)
      {

        v4 = v17;
        v13 = v18;
        v5 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_16:
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v13);

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v14 = v18;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v5 + 8))(v7, v4);
}

id sub_10012EE38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalMembershipListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JournalMembershipListViewController()
{
  result = qword_100AD4368;
  if (!qword_100AD4368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012EF60()
{
  sub_10012F010();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10012F010()
{
  if (!qword_100AD4378)
  {
    sub_1000F2A18(&qword_100AD4380);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD4378);
    }
  }
}

Swift::Int sub_10012F074()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10012F0B4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10012F14C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

id sub_10012F1F0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension:1.0];
  v12 = [v10 estimatedDimension:48.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100941D50;
  *(v17 + 32) = v15;
  sub_1000065A8(0, &unk_100AD8A80);
  v57 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = v16;
  v20 = v14;
  v21 = [v19 verticalGroupWithLayoutSize:v14 subitems:isa];

  v22 = [objc_opt_self() sectionWithGroup:v21];
  [v22 setContentInsetsReference:2];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v24 = Strong[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style];

  if (v24)
  {
    if (v24 != 1)
    {
      (*(v49 + 104))(v6, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v50);
      UICollectionLayoutListConfiguration.init(appearance:)();
      (*(v52 + 104))(v51, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v53);
      UICollectionLayoutListConfiguration.footerMode.setter();
      v46 = [objc_opt_self() clearColor];
      UICollectionLayoutListConfiguration.backgroundColor.setter();
      UICollectionLayoutListConfiguration.headerTopPadding.setter();
      sub_1000065A8(0, &unk_100AD4440);
      v47 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();

      (*(v54 + 8))(v9, v55);
      return v47;
    }

    v25 = v21;
    v26 = [v10 fractionalWidthDimension:1.0];
    v27 = [v10 estimatedDimension:44.0];
    v28 = [v13 sizeWithWidthDimension:v26 heightDimension:v27];

    v29 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v28 elementKind:UICollectionElementKindSectionFooter alignment:4];
    v30 = v29;
    v31 = [v22 boundarySupplementaryItems];
    sub_1000065A8(0, &unk_100ADE680);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v33 = Array._bridgeToObjectiveC()().super.isa;

    [v22 setBoundarySupplementaryItems:v33];

    [v22 setContentInsets:{0.0, 10.0, 0.0, 10.0}];
  }

  else
  {
    v25 = v21;
    v34 = [v10 fractionalWidthDimension:1.0];
    v35 = [v10 estimatedDimension:44.0];
    v36 = [v13 sizeWithWidthDimension:v34 heightDimension:v35];

    v37 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v36 elementKind:UICollectionElementKindSectionHeader alignment:1 absoluteOffset:{0.0, 10.0}];
    v30 = v37;
    v38 = [v22 boundarySupplementaryItems];
    sub_1000065A8(0, &unk_100ADE680);
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v39;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40 = Array._bridgeToObjectiveC()().super.isa;

    [v22 setBoundarySupplementaryItems:v40];

    v41 = swift_unknownObjectUnownedLoadStrong();
    v42 = [v41 traitCollection];

    v43 = [v42 userInterfaceIdiom];
    if (v43 == 5)
    {
      v44 = 16.0;
    }

    else
    {
      v44 = 0.0;
    }

    if (v43 == 5)
    {
      v45 = 16.0;
    }

    else
    {
      v45 = 10.0;
    }

    [v22 setContentInsets:{10.0, v44, 8.0, v45}];
  }

  return v22;
}

void sub_10012FA0C(void *a1, uint64_t a2, uint64_t *a3)
{
  v91 = a1;
  v4 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v4 - 8);
  v87 = &v78[-v5];
  v6 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = &v78[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UICellAccessory.Placement();
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = __chkstk_darwin(v8);
  v83 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v86 = &v78[-v11];
  v12 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v12 - 8);
  v14 = &v78[-v13];
  v15 = type metadata accessor for JournalSidebarViewModel(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v92 = &v78[-v20];
  v21 = *a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = *&Strong[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel];

  v93 = [*(v23 + 24) objectWithID:v21];

  type metadata accessor for JournalMO();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    v26 = v93;
    sub_1005208D8(v25, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      sub_100004F84(v14, &unk_100AD4400);
    }

    else
    {
      v28 = v14;
      v29 = v92;
      sub_100132B1C(v28, v92);
      v30 = swift_unknownObjectUnownedLoadStrong();
      v31 = v30[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style];

      sub_100132B80(v29, v19);
      v32 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v33 = v32 + v17;
      v34 = swift_allocObject();
      sub_100132B1C(v19, v34 + v32);
      *(v34 + v33) = v31;
      v35 = v91;
      UICollectionViewCell.configurationUpdateHandler.setter();
      v36 = swift_unknownObjectUnownedLoadStrong();

      v37 = sub_100675310(v25);

      if (v37)
      {
        v38 = 1;
      }

      else
      {
        v39 = swift_unknownObjectUnownedLoadStrong();

        v38 = sub_100675264();
      }

      [v35 setUserInteractionEnabled:v38 & 1];
      v40 = [v35 traitCollection];
      v41 = [v40 userInterfaceIdiom];

      sub_1000F24EC(&unk_100AD4410);
      v42 = *(type metadata accessor for UICellAccessory() - 8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100940080;
      if (v41 == 5)
      {
        v79 = v37;
        v45 = v37 == 0;
        v46 = swift_allocObject();
        v47 = swift_unknownObjectUnownedLoadStrong();
        swift_unknownObjectWeakInit();

        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        *(v48 + 24) = v25;
        v82 = v46;
        v49 = *(sub_1000F24EC(&qword_100AD4E00) + 48);
        v93 = v26;
        v50 = v86;
        v51 = &v86[v49];
        v52 = enum case for UICellAccessory.DisplayedState.always(_:);
        v53 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v53 - 8) + 104))(v50, v52, v53);
        *v51 = variable initialization expression of RecentSearch.tokens;
        v51[1] = 0;
        v80 = v43;
        v81 = v44;
        v54 = v84;
        v55 = v85;
        (*(v84 + 104))(v50, enum case for UICellAccessory.Placement.trailing(_:), v85);
        v56 = v93;

        sub_10014A450(v35);
        v58 = v57;
        [v57 setPreferredStyle:1];
        [v58 setOn:v45];
        [v58 setEnabled:v38 & 1];
        *(v58 + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch_isMixed) = v79 == 2;
        sub_10051B784();
        sub_1000065A8(0, &qword_100AD4420);
        String._bridgeToObjectiveC()();
        v59 = swift_allocObject();
        *(v59 + 16) = sub_100132C84;
        *(v59 + 24) = v48;

        v60 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v58 addAction:v60 forControlEvents:0x2000];
        (*(v54 + 16))(v83, v50, v55);
        v61 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v61 - 8) + 56))(v87, 1, 1, v61);
        v62 = v58;
        v63 = v88;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        static UICellAccessory.customView(configuration:)();

        (*(v89 + 8))(v63, v90);
        v64 = v50;
        v26 = v93;
        (*(v54 + 8))(v64, v55);
      }

      else
      {
        sub_10014A468(v35);
        v66 = v65;
        v67 = String._bridgeToObjectiveC()();
        v68 = [objc_opt_self() systemImageNamed:v67];

        [v66 setImage:v68];
        if (v38)
        {
          v69 = 0;
        }

        else
        {
          v69 = [objc_opt_self() quaternaryLabelColor];
        }

        [v66 setTintColor:v69];

        v70 = sub_1000F24EC(&qword_100AD4E00);
        v71 = v86;
        v72 = &v86[*(v70 + 48)];
        v73 = enum case for UICellAccessory.DisplayedState.always(_:);
        v74 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v74 - 8) + 104))(v71, v73, v74);
        *v72 = variable initialization expression of RecentSearch.tokens;
        v72[1] = 0;
        (*(v84 + 104))(v71, enum case for UICellAccessory.Placement.trailing(_:), v85);
        v75 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v75 - 8) + 56))(v87, 1, 1, v75);
        v76 = v66;
        v77 = v88;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        static UICellAccessory.customView(configuration:)();

        (*(v89 + 8))(v77, v90);
      }

      UICollectionViewListCell.accessories.setter();

      sub_1000292C4(v92, type metadata accessor for JournalSidebarViewModel);
    }
  }

  else
  {
    v27 = v93;
  }
}

uint64_t sub_100130520(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v76 = a4;
  v71 = a3;
  v85 = a1;
  v5 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v5 - 8);
  v84 = &v69 - v6;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Font.TextStyle();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MergeableJournalAttributes.Icon();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for JournalMembershipBadge();
  __chkstk_darwin(v72);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UIListContentConfiguration();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v69 - v21;
  static UIListContentConfiguration.cell()();
  v23 = type metadata accessor for UICellConfigurationState();
  v89 = v23;
  v90 = &protocol witness table for UICellConfigurationState;
  v24 = sub_10001A770(v88);
  v25 = *(*(v23 - 8) + 16);
  v86 = a2;
  v25(v24, a2, v23);
  UIListContentConfiguration.updated(for:)();
  v75 = v17;
  v26 = *(v17 + 8);
  v80 = v16;
  v77 = v26;
  v78 = v17 + 8;
  v26(v20, v16);
  sub_10000BA7C(v88);
  v27 = v71;

  UIListContentConfiguration.text.setter();
  v69 = objc_opt_self();
  v28 = [v69 labelColor];
  v79 = v22;
  v29 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v29(v88, 0);
  v30 = *(v27 + 16);
  v31 = sub_1005215F4();
  v33 = v32;
  v34 = type metadata accessor for JournalSidebarViewModel(0);
  (*(v11 + 16))(v13, v27 + *(v34 + 28), v10);
  if ((*(v11 + 88))(v13, v10) == enum case for MergeableJournalAttributes.Icon.emoji(_:))
  {
    (*(v11 + 96))(v13, v10);
    v35 = *v13;
    v36 = v13[1];
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    v35 = 0;
    v36 = 0;
  }

  v37 = UICellConfigurationState.traitCollection.getter();
  v38 = [v37 userInterfaceIdiom];

  if (v38 == 5)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  *v15 = v30;
  *(v15 + 1) = v31;
  *(v15 + 2) = v33;
  *(v15 + 3) = v35;
  *(v15 + 4) = v36;
  v15[40] = v39;
  v88[0] = 0x4030000000000000;
  v40 = enum case for Font.TextStyle.footnote(_:);
  v41 = *(v73 + 104);
  v42 = v70;
  v43 = v74;
  v41(v70, enum case for Font.TextStyle.footnote(_:), v74);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v88[0] = 0x4038000000000000;
  v41(v42, v40, v43);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v88[0] = 0x4040000000000000;
  v41(v42, v40, v43);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v44 = UICellConfigurationState.traitCollection.getter();
  sub_1003AC4EC(v44);

  sub_1000292C4(v15, type metadata accessor for JournalMembershipBadge);
  v45 = v79;
  UIListContentConfiguration.image.setter();
  v46 = UIListContentConfiguration.imageProperties.modify();
  v47 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *(v48 + 8) = 0x4038000000000000;
  v47(v87, 0);
  v46(v88, 0);
  v49 = v76;
  if (v76)
  {
    v51 = v80;
    v50 = v81;
    if (v76 == 1)
    {
      v52 = UIListContentConfiguration.directionalLayoutMargins.modify();
      *v53 = 0x4010000000000000;
      v52(v88, 0);
      v54 = UIListContentConfiguration.directionalLayoutMargins.modify();
      *(v55 + 16) = 0x4010000000000000;
      v54(v88, 0);
    }
  }

  else
  {
    v56 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *v57 = 0x4020000000000000;
    v56(v88, 0);
    v58 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *(v59 + 16) = 0x4020000000000000;
    v58(v88, 0);
    v51 = v80;
    v50 = v81;
  }

  v89 = v51;
  v90 = &protocol witness table for UIListContentConfiguration;
  v60 = sub_10001A770(v88);
  (*(v75 + 16))(v60, v45, v51);
  UICollectionViewCell.contentConfiguration.setter();
  if (v49)
  {
    v61 = v84;
    if (v49 == 1)
    {
      static UIBackgroundConfiguration.clear()();
    }

    else
    {
      static UIBackgroundConfiguration.listCell()();
    }

    (*(v82 + 56))(v61, 0, 1, v83);
    UICollectionViewCell.backgroundConfiguration.setter();
  }

  else
  {
    static UIBackgroundConfiguration.clear()();
    UIBackgroundConfiguration.cornerRadius.setter();
    UIBackgroundConfiguration.backgroundInsets.setter();
    if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
    {
      v62 = [objc_opt_self() effectWithStyle:8];
      v63 = [objc_opt_self() effectForBlurEffect:v62 style:6];

      UIBackgroundConfiguration.visualEffect.setter();
      v64 = [v69 whiteColor];
      UIBackgroundConfiguration.backgroundColor.setter();
    }

    v66 = v82;
    v65 = v83;
    v67 = v84;
    (*(v82 + 16))(v84, v50, v83);
    (*(v66 + 56))(v67, 0, 1, v65);
    UICollectionViewCell.backgroundConfiguration.setter();
    (*(v66 + 8))(v50, v65);
  }

  return v77(v45, v51);
}

void sub_100130E84(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10012EA18(a1 & 1, a3);
  }
}

uint64_t sub_100130EF4(uint64_t a1)
{
  v25 = a1;
  v24 = type metadata accessor for UIListContentConfiguration.TextProperties.TextTransform();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UIListContentConfiguration.TextProperties.TextAlignment();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.header()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v12 = [objc_opt_self() labelColor];
  v13 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v13(v26, 0);
  (*(v3 + 104))(v5, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v22);
  v14 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.alignment.setter();
  v14(v26, 0);
  (*(v1 + 104))(v23, enum case for UIListContentConfiguration.TextProperties.TextTransform.none(_:), v24);
  v15 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.transform.setter();
  v15(v26, 0);
  v16 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *v17 = 0x4028000000000000;
  v16(v26, 0);
  v18 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v19 + 16) = 0x4028000000000000;
  v18(v26, 0);
  v26[3] = v8;
  v26[4] = &protocol witness table for UIListContentConfiguration;
  v20 = sub_10001A770(v26);
  (*(v9 + 16))(v20, v11, v8);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100131358()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.footer()();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001008E03A0;
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = *&Strong[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel];

  v10 = *(v9 + 16);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17[0] = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v12._countAndFlagsBits = 0x656972746E652029;
  v12._object = 0xEA00000000002E73;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v13 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v14 + 16) = 0x4032000000000000;
  v13(v17, 0);
  v17[3] = v3;
  v17[4] = &protocol witness table for UIListContentConfiguration;
  v15 = sub_10001A770(v17);
  (*(v4 + 16))(v15, v6, v3);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10013167C(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  sub_1000065A8(0, &qword_100AD4D40);
  sub_1000065A8(0, &qword_100AD43F0);
  v4 = v3;
  v5 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v5;
}

uint64_t sub_10013172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {
    goto LABEL_12;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_13;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  sub_1000065A8(0, &qword_100AD4D40);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

uint64_t sub_100131838()
{
  v1 = sub_1000F24EC(&qword_100AD43B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - v3;
  sub_1001328F0();
  sub_100132944();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A563A0);
  v5 = *(*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel) + 32);
  swift_getKeyPath();
  v16 = v5;
  sub_100095244();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!v5[4])
  {
    sub_100772990();
  }

  swift_getKeyPath();
  v16 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5[4])
  {
    v6 = v5[4];
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_16:

LABEL_17:
    LOBYTE(v16) = 1;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v13 = v16;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v2 + 8))(v4, v1);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_8:
  v16 = _swiftEmptyArrayStorage;

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v14[1] = v0;
    v15 = v2;
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);

    v2 = v15;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_100131B80()
{
  v1 = v0;
  v2 = [v0 presentingViewController];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 presentedViewController];
    if (v3 && (v4 = v3, v5 = [v3 isBeingDismissed], v4, !v5))
    {
      sub_100675820();
      if (*&v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone])
      {
        v6 = *&v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone + 8];
        aBlock[4] = *&v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone];
        aBlock[5] = v6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006C7C;
        aBlock[3] = &unk_100A5DD90;
        v7 = _Block_copy(aBlock);
      }

      else
      {
        v7 = 0;
      }

      [v8 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }

    else
    {
    }
  }
}

void sub_100131D04()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v5 = v1;
    v2 = [v1 presentedViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isBeingDismissed];

      if ((v4 & 1) == 0)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

uint64_t sub_100131DD0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_100004F84(v9, &qword_100AD13D0);
}

void sub_100131F78(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 containerTraitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 1)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        [v6 setPrefersGrabberVisible:1];
      }

      v8 = v3;
      [v8 preferredContentSize];
      v9 = [v8 view];

      if (v9)
      {
        [v9 safeAreaInsets];

        [a1 maximumDetentValue];
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 setPrefersGrabberVisible:0];
  }
}

uint64_t sub_100132198(void *a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  v4 = [a1 presentedViewController];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    v6 = [a1 presentedViewController];
    v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v6];

    v8 = [v2 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    [v7 setToolbarHidden:v9 != 5];
    return v7;
  }

  return result;
}

uint64_t sub_10013238C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1001323D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100132434()
{
  result = qword_100AD4388;
  if (!qword_100AD4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4388);
  }

  return result;
}

unint64_t sub_10013248C()
{
  result = qword_100AD4390;
  if (!qword_100AD4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4390);
  }

  return result;
}

unint64_t sub_1001324E4()
{
  result = qword_100AD4398;
  if (!qword_100AD4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4398);
  }

  return result;
}

uint64_t sub_100132538@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1001325B8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_100132630(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_1000F24EC(&unk_100AD4780);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100941D60;
    sub_1000065A8(0, &qword_100AD85C0);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = a1;

    v9 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    *(v4 + 32) = v9;
    *(v4 + 40) = [objc_opt_self() largeDetent];
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setDetents:isa];
  }
}

id sub_10013282C(uint64_t a1)
{
  v2 = 0;
  if (a1 != -1 && a1 != 7)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 5)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  v5 = OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style;
  v6 = v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style];
  v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style] = v2;
  result = [v1 isViewLoaded];
  if (result && v1[v5] != v6)
  {

    return sub_10012D80C();
  }

  return result;
}

unint64_t sub_1001328F0()
{
  result = qword_100AD43C0;
  if (!qword_100AD43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD43C0);
  }

  return result;
}

unint64_t sub_100132944()
{
  result = qword_100AD43C8;
  if (!qword_100AD43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD43C8);
  }

  return result;
}

uint64_t sub_1001329B8(uint64_t a1, uint64_t a2, void **a3)
{
  sub_1000F24EC(&unk_100AD43E0);

  return sub_10013167C(a1, a2, a3);
}

uint64_t sub_100132A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100ADE610);

  return sub_10013172C(a1, a2, a3);
}

uint64_t sub_100132B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalSidebarViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalSidebarViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132BE4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for JournalSidebarViewModel(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_100130520(a1, a2, v6, v7);
}

void *sub_100132C9C()
{
  v1 = [v0 length];
  sub_1000F24EC(&qword_100AD44C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = NSDocumentTypeDocumentAttribute;
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v3;
  *(inited + 40) = NSHTMLTextDocumentType;
  v4 = NSDocumentTypeDocumentAttribute;
  v5 = NSHTMLTextDocumentType;
  sub_100363504(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &unk_100ADFF20);
  type metadata accessor for DocumentAttributeKey(0);
  sub_1000AA710(&qword_100AD1B98, type metadata accessor for DocumentAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21[0] = 0;
  v7 = [v0 dataFromRange:0 documentAttributes:v1 error:{isa, v21}];

  v8 = v21[0];
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_100049ED8(v9, v11);
    v12 = sub_1001336A4(v9, v11);
    if (v13)
    {
      v14 = v12;
      sub_1000340DC(v9, v11);
LABEL_11:
      sub_1000340DC(v9, v11);
      return v14;
    }

    v19 = v9;
    v20 = v11;
    sub_100049ED8(v9, v11);
    sub_1000F24EC(&qword_100AD44C8);
    if (swift_dynamicCast())
    {
      sub_100018480(v17, v21);
      sub_10000CA14(v21, v22);
      HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
      sub_1000340DC(v9, v11);
      if (HasContiguous)
      {
        sub_10000CA14(v21, v22);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        sub_1000340DC(v9, v11);
        v14 = *&v17[0];
        sub_10000BA7C(v21);
        return v14;
      }

      sub_10000BA7C(v21);
    }

    else
    {
      sub_1000340DC(v9, v11);
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_100004F84(v17, &qword_100AD44D0);
    }

    v14 = sub_100133480(v9, v11);
    goto LABEL_11;
  }

  v14 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return v14;
}

uint64_t sub_100133014(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (*(result + 24))
  {
    *a5 = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10013302C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = v40 - v14;
  if (a2 < 0)
  {
    goto LABEL_19;
  }

  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  v16 = v12;
  if ([v3 length] < a2 + a3)
  {
    goto LABEL_19;
  }

  v42 = 0;
  v43 = 0;
  if ([v3 attribute:NSParagraphAttachmentAttributeName atIndex:a2 effectiveRange:&v42])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46[0] = v44;
  v46[1] = v45;
  if (!*(&v45 + 1))
  {
    sub_100004F84(v46, &qword_100AD13D0);
    goto LABEL_19;
  }

  sub_1000065A8(0, &qword_100ADC5F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v23 = 0;
    return v23 & 1;
  }

  v17 = v41;
  if (v42 != a2 || v43 != a3)
  {

    goto LABEL_19;
  }

  v18 = [v41 textAttachment];
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v18)
  {
    v19 = v18;
LABEL_23:

    sub_1000065A8(0, &unk_100AD43A0);
    v23 = static NSObject.== infix(_:_:)();

    return v23 & 1;
  }

  v19 = [a1 textAttachment];
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  if (!v20 || !v19)
  {

    goto LABEL_23;
  }

  v40[2] = v20;
  sub_1000065A8(0, &unk_100AD43A0);
  v40[1] = swift_getObjectType();
  v21 = v18;
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    v40[0] = swift_getObjectType();
    dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
    dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
    v25 = static UUID.== infix(_:_:)();
    v26 = *(v8 + 8);
    v26(v10, v16);
    v26(v15, v16);
    if (v25)
    {
      v27 = dispatch thunk of AssetTextAttachmentProtocol.anchorAlignment.getter();
      v29 = v28;
      v30 = dispatch thunk of AssetTextAttachmentProtocol.anchorAlignment.getter();
      if (v29)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if ((v31 & 1) != 0 || v27 != v30)
      {
        goto LABEL_32;
      }

      dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
      v33 = v32;
      v35 = v34;
      dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
      v37 = v36;
      v39 = v38;

      if (v33 == v37)
      {
        v23 = v35 == v39;
        return v23 & 1;
      }

      goto LABEL_19;
    }

LABEL_32:

    goto LABEL_19;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100133480(uint64_t a1, unint64_t a2)
{
  sub_100049ED8(a1, a2);
  sub_100133528(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_1001334EC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100133528(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1000340DC(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100008524(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_1000340DC(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1001336A4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_100133850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD9210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100133964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalDividerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001339A8()
{
  v0 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:12.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  qword_100B2F390 = v2;
}

id sub_100133A64(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_xImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView;
  v12 = [objc_opt_self() effectWithStyle:8];
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v12];

  *&v4[v11] = v13;
  v14 = &v4[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion];
  *v14 = DebugData.init(name:);
  v14[1] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CanvasAssetDeleteView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_100133BF8();

  return v15;
}

void sub_100133BF8()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter];
  [v0 addSubview:v1];
  [v1 insertSubview:*&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView] atIndex:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 widthAnchor];
  v3 = [v2 constraintEqualToConstant:20.0];

  [v3 setActive:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 heightAnchor];
  v5 = [v1 widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 multiplier:1.0];

  [v6 setActive:1];
  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v1 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:6.0];
    [v11 setActive:1];
  }

  v12 = [v1 superview];
  if (v12)
  {
    v13 = v12;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v1 trailingAnchor];
    v15 = [v13 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:-6.0];
    [v16 setActive:1];
  }

  v17 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_xImageView];
  [v1 bounds];
  [v17 setFrame:?];
  if (qword_100ACF958 != -1)
  {
    swift_once();
  }

  [v17 setImage:qword_100B2F390];
  if (qword_100ACF960 != -1)
  {
    swift_once();
  }

  [v17 setTintColor:qword_100B2F398];
  [v1 addSubview:v17];
  v18 = [v17 superview];
  if (v18)
  {
    v19 = v18;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v19 centerXAnchor];
    v21 = [v17 centerXAnchor];
    v22 = [v21 constraintEqualToAnchor:v20];

    [v22 setConstant:0.0];
    [v22 setActive:1];
  }

  v23 = [v17 superview];
  if (v23)
  {
    v24 = v23;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v17 centerYAnchor];
    v26 = [v24 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:0.0];
    [v27 setActive:1];
  }

  v32 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tapAction:"];
  [v0 addGestureRecognizer:?];
  if (qword_100AD07E0 != -1)
  {
    swift_once();
  }

  v28 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityLabel:v28];

  v29 = UIAccessibilityTraitButton;
  v30 = [v0 accessibilityTraits];
  if ((v29 & ~v30) != 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  [v0 setAccessibilityTraits:v31 | v30];
}

id sub_100134204()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CanvasAssetDeleteView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter];
  v2 = [v1 layer];
  [v1 frame];
  [v2 setCornerRadius:v3 * 0.5];

  v4 = [v1 layer];
  [v4 setMasksToBounds:1];

  v5 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView];
  [v1 bounds];
  return [v5 setFrame:?];
}

void sub_100134488()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [v2 fontDescriptor];
  v4 = [v2 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptorWithSymbolicTraits:v5 | 2];
  if (v6)
  {
    v7 = [v0 fontWithDescriptor:v6 size:0.0];

    v2 = v7;
  }

  qword_100B2F3A0 = v2;
}

void sub_1001345A4()
{
  if (qword_100ACF968 != -1)
  {
    swift_once();
  }

  v0 = qword_100B2F3A0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_100B2F3A8 = v3;
}

void sub_100134640()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  qword_100B2F3B0 = v1;
}

void sub_100134808()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = enum case for JournalFeatureFlags.portraitAssetGrid(_:);
  v62 = *(v1 + 104);
  v62(v3, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v0);
  v6 = JournalFeatureFlags.isEnabled.getter();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = objc_opt_self();
  if (v6)
  {
    v9 = [v8 effectWithStyle:7];
  }

  else
  {
    v9 = [v8 _effectWithBlurRadius:10.0 scale:1.0];
  }

  v10 = v9;
  [v4 setEffect:v10];

  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 blackColor];
  v14 = [v13 colorWithAlphaComponent:0.2];

  [v12 setBackgroundColor:v14];
  v15 = v64;
  [v64 addSubview:v12];
  v63 = v12;
  sub_100013178(0.0);

  v16 = [objc_allocWithZone(UIStackView) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAxis:0];
  [v16 setDistribution:2];
  [v16 setAlignment:3];
  [v15 addSubview:v16];
  v62(v3, v5, v0);
  v17 = JournalFeatureFlags.isEnabled.getter();
  v7(v3, v0);
  v18 = [v16 superview];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v16 leadingAnchor];
      v21 = [v19 leadingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v22 setConstant:6.0];
      [v22 setActive:1];
    }

    v23 = [v16 superview];
    if (v23)
    {
      v24 = v23;
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = [v16 trailingAnchor];
      v26 = [v24 trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];

      [v27 setConstant:-8.0];
      [v27 setActive:1];
    }

    v28 = [v16 superview];
    if (v28)
    {
      v29 = v28;
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v30 = [v16 topAnchor];
      v31 = [v29 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];

      [v32 setConstant:0.0];
      [v32 setActive:1];
    }

    v33 = sub_100028DA0(0, 1, 0.0);
LABEL_27:

    goto LABEL_28;
  }

  if (v18)
  {
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [v19 centerXAnchor];
    v35 = [v16 centerXAnchor];
    v36 = [v35 constraintEqualToAnchor:v34];

    [v36 setConstant:0.0];
    if (v36)
    {
      [v36 setActive:1];
    }
  }

  v37 = [v16 superview];
  if (v37)
  {
    v38 = v37;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v16 centerYAnchor];
    v40 = [v38 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    [v41 setConstant:0.0];
    if (v41)
    {
      [v41 setActive:1];
    }
  }

  v42 = [v16 superview];
  if (v42)
  {
    v43 = v42;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [v16 leadingAnchor];
    v45 = [v43 leadingAnchor];
    v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];

    [v46 setConstant:6.0];
    if (v46)
    {
      [v46 setActive:1];
    }
  }

  v47 = [v16 superview];
  if (v47)
  {
    v33 = v47;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = [v16 trailingAnchor];
    v49 = [v33 trailingAnchor];
    v50 = [v48 constraintLessThanOrEqualToAnchor:v49];

    [v50 setConstant:6.0];
    if (v50)
    {
      [v50 setActive:1];
    }

    goto LABEL_27;
  }

LABEL_28:
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  if (qword_100ACF970 != -1)
  {
    swift_once();
  }

  v51 = qword_100B2F3A8;
  v52 = String._bridgeToObjectiveC()();
  v53 = [objc_opt_self() systemImageNamed:v52 withConfiguration:v51];

  if (v53)
  {
    if (qword_100ACF978 != -1)
    {
      swift_once();
    }

    v54 = [v53 imageWithTintColor:qword_100B2F3B0];
  }

  else
  {
    v54 = 0;
  }

  v55 = [objc_allocWithZone(UIImageView) initWithImage:v54];
  [v55 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  if (qword_100ACF978 != -1)
  {
    swift_once();
  }

  [v55 setTintColor:qword_100B2F3B0];
  [v55 setOverrideUserInterfaceStyle:1];
  [v16 addArrangedSubview:v55];
  v56 = [objc_allocWithZone(UILabel) init];
  v57 = *&v64[OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel];
  *&v64[OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel] = v56;
  v58 = v56;

  if (v58)
  {
    if (qword_100ACF980 != -1)
    {
      swift_once();
    }

    [v58 setTextColor:qword_100B2F3B8];
    if (qword_100ACF968 != -1)
    {
      swift_once();
    }

    [v58 setFont:qword_100B2F3A0];
    [v58 setPreferredVibrancy:1];
    [v58 setAdjustsFontForContentSizeCategory:1];
    [v58 setAdjustsFontSizeToFitWidth:1];
    [v16 addArrangedSubview:v58];
    v59 = [objc_allocWithZone(UIButton) init];
    v60 = v64;
    [v59 addTarget:v64 action:"tapActionWithSender:" forControlEvents:64];
    [v60 addSubview:v59];
    sub_100013178(0.0);
  }

  else
  {
  }
}

void sub_100135358(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  v6 = a1;

  v4(v5);
}

void sub_1001353BC(uint64_t a1)
{
  v3 = [objc_opt_self() mainBundle];
  v11._object = 0x80000001008E05A0;
  v4._countAndFlagsBits = 25637;
  v4._object = 0xE200000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v11);

  sub_1000F24EC(&unk_100AD5B10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  static String.localizedStringWithFormat(_:_:)();

  v7 = *(v1 + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel);
  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();

    [v8 setText:v9];
  }

  else
  {
  }
}

id sub_100135570(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10013561C()
{
  v1 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_xImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView;
  v4 = [objc_opt_self() effectWithStyle:8];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *(v0 + v3) = v5;
  v6 = (v0 + OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion);
  *v6 = DebugData.init(name:);
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10013573C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer;
  *&v4[v9] = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer;
  *&v4[v10] = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView;
  *&v4[v11] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v12 = OBJC_IVAR____TtC7Journal18ResizingHandleView_lightBorderColor;
  v13 = objc_opt_self();
  *&v4[v12] = [v13 whiteColor];
  v14 = OBJC_IVAR____TtC7Journal18ResizingHandleView_darkBorderColor;
  *&v4[v14] = [v13 blackColor];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ResizingHandleView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_100135A00();

  return v15;
}

id sub_1001358A8(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer;
  *&v1[v3] = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer;
  *&v1[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView;
  *&v1[v5] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v6 = OBJC_IVAR____TtC7Journal18ResizingHandleView_lightBorderColor;
  v7 = objc_opt_self();
  *&v1[v6] = [v7 whiteColor];
  v8 = OBJC_IVAR____TtC7Journal18ResizingHandleView_darkBorderColor;
  *&v1[v8] = [v7 blackColor];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ResizingHandleView();
  v9 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_100135A00();
  }

  return v10;
}

uint64_t sub_100135A00()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v2];
  sub_100013178(0.0);

  v3 = [v1 layer];
  [v3 setMasksToBounds:0];

  v4 = [v1 layer];
  [v4 setHitTestsAsOpaque:1];

  v5 = [v1 layer];
  v6 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer];
  [v5 setMask:v6];

  v7 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
  v8 = [v6 path];
  [v7 setPath:v8];

  v9 = [objc_opt_self() clearColor];
  v10 = [v9 CGColor];

  [v7 setFillColor:v10];
  [v7 setLineWidth:2.0];
  [v1 bounds];
  [v7 setFrame:?];
  v11 = [v1 layer];
  [v11 addSublayer:v7];

  v12 = [v1 traitCollection];
  v13 = [v12 userInterfaceStyle];

  sub_100135D14(v13 == 2);
  sub_1000F24EC(&unk_100AEBEC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940050;
  *(v14 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v14 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v14 + 48) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v14 + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  type metadata accessor for ResizingHandleView();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void sub_100135D14(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView];
  v4 = objc_opt_self();
  if (a1)
  {
    v5 = 12;
  }

  else
  {
    v5 = 17;
  }

  if (a1)
  {
    v6 = &OBJC_IVAR____TtC7Journal18ResizingHandleView_darkBorderColor;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC7Journal18ResizingHandleView_lightBorderColor;
  }

  v7 = [v4 effectWithStyle:v5];
  [v3 setEffect:v7];

  [v1 setBackgroundColor:*&v1[*v6]];
  v8 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
  v9 = [*&v1[*v6] CGColor];
  [v8 setStrokeColor:v9];
}

void sub_100135E1C()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ResizingHandleView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  [v0 bounds];
  Mutable = CGPathCreateMutable();
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  v11 = 0x3FF0000000000000;
  v12 = 0;
  v13 = 0;
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  v3 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();

  v4 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer];
  [v4 setPath:v3];
  v5 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
  v6 = [v4 path];
  [v5 setPath:v6];
}

id sub_100135F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResizingHandleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013606C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4D6C7566646E696DLL;
  }

  else
  {
    v3 = 0x4D664F6574617473;
  }

  if (v2)
  {
    v4 = 0xEB00000000646E69;
  }

  else
  {
    v4 = 0xEE00736574756E69;
  }

  if (*a2)
  {
    v5 = 0x4D6C7566646E696DLL;
  }

  else
  {
    v5 = 0x4D664F6574617473;
  }

  if (*a2)
  {
    v6 = 0xEE00736574756E69;
  }

  else
  {
    v6 = 0xEB00000000646E69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100136128()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001361C0()
{
  String.hash(into:)();
}

Swift::Int sub_100136244()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001362D8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100A563C8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100136338(uint64_t *a1@<X8>)
{
  v2 = 0x4D664F6574617473;
  if (*v1)
  {
    v2 = 0x4D6C7566646E696DLL;
  }

  v3 = 0xEB00000000646E69;
  if (*v1)
  {
    v3 = 0xEE00736574756E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100136530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
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

  v4[4] = v5;
  v4[5] = v7;

  return _swift_task_switch(sub_1001365C0, v5, v7);
}

uint64_t sub_1001365C0()
{
  if ([objc_opt_self() isHealthDataAvailable])
  {
    v1 = v0[2];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 32);
      sub_1000065A8(0, &qword_100AD46D0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      while ((*v3 & 1) != 0)
      {
        if ([ObjCClassFromMetadata categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession])
        {
          goto LABEL_5;
        }

LABEL_8:
        ++v3;
        if (!--v2)
        {
          goto LABEL_17;
        }
      }

      v5 = [ObjCClassFromMetadata stateOfMindType];
LABEL_5:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }

LABEL_17:
    v11 = sub_1008908A8(_swiftEmptyArrayStorage);
    v0[6] = v11;

    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100495988(_swiftEmptyArrayStorage);
      v12 = v14;
    }

    else
    {
      v12 = &_swiftEmptySetSingleton;
    }

    v0[7] = v12;
    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = sub_1001368A8;

    return HKHealthStore.requestAuthorization(toShare:read:)(v11, v12);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "HealthKit is not available on this device", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001368A8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100136BFC;
  }

  else
  {
    v5 = sub_100136A14;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100136A14()
{
  [*(v0 + 24) setHasSeenBothHealthTCCs:1];
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100136AC8;

  return sub_10051C65C();
}

uint64_t sub_100136AC8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100136BE8, v3, v2);
}

uint64_t sub_100136BFC()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136315394;
    v6 = Array.description.getter();
    v8 = sub_100008458(v6, v7, &v12);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Encountered error when requesting authorization from HKHealthStore for healthTypes: %s: %@", v3, 0x16u);
    sub_10012B714(v4);

    sub_10000BA7C(v5);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_100136AC8;

  return sub_10051C65C();
}

uint64_t sub_100136E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100136E48, 0, 0);
}

uint64_t sub_100136E48()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100136EE0;
  v2 = *(v0 + 24);

  return sub_100136530(0, 0, v2);
}

uint64_t sub_100136EE0()
{

  return _swift_task_switch(sub_100136FDC, 0, 0);
}

uint64_t sub_100136FDC()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100137040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[18] = a3;
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[21] = v6;
  v5[22] = v8;

  return _swift_task_switch(sub_1001370D4, v6, v8);
}

uint64_t sub_1001370D4()
{
  if ([objc_opt_self() isHealthDataAvailable])
  {
    sub_1000065A8(0, &qword_100AD46D0);
    v1 = [swift_getObjCClassFromMetadata() categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    v0[23] = v1;
    if (v1)
    {
      v2 = v0[20];
      v3 = v1;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v5 = Date._bridgeToObjectiveC()().super.isa;
      v6 = [objc_opt_self() categorySampleWithType:v3 value:0 startDate:isa endDate:v5];
      v0[24] = v6;

      v7 = *(v2 + 16);
      v0[2] = v0;
      v0[3] = sub_1001373D0;
      v8 = swift_continuation_init();
      v0[17] = sub_1000F24EC(&unk_100AE1D70);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1006273FC;
      v0[13] = &unk_100A5DEF8;
      v0[14] = v8;
      [v7 saveObject:v6 withCompletion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Couldn't create a HKCategoryType of type .mindfulSession";
      goto LABEL_10;
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "HealthKit is not available on this device";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001373D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_100137564;
  }

  else
  {
    v5 = sub_100137500;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100137500()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100137564()
{
  swift_willThrow();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  v5 = v0[23];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Saving a mindfulSessionCategory type encountered an error : %@", v6, 0xCu);
    sub_10012B714(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001376E4()
{
  v1 = OBJC_IVAR____TtC7Journal13HealthManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1001377AC()
{
  result = qword_100AD46D8;
  if (!qword_100AD46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD46D8);
  }

  return result;
}

uint64_t sub_100137914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

char *sub_100137980(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController;
  *&v1[v3] = [objc_allocWithZone(UIPageViewController) initWithTransitionStyle:1 navigationOrientation:0 options:0];
  v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition] = 0;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  v4 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
  v5 = type metadata accessor for DateComponents();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for InsightsCalendarDetailViewController();
  v7 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  v8 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController;
  v9 = *&v7[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController];
  v10 = v7;
  [v10 addChildViewController:v9];
  [*&v7[v8] didMoveToParentViewController:v10];

  (*(v6 + 8))(a1, v5);
  return v10;
}

void sub_100137BA0(char a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController) viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v9 = v6;

  type metadata accessor for InsightsEntriesViewController();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    if ([v7 isEditing])
    {
      [v8 setEditing:0 animated:a1 & 1];
      sub_100139550(a1 & 1);
      sub_10013973C();
    }
  }
}

uint64_t sub_100137D94(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController;
  *(v1 + v3) = [objc_allocWithZone(UIPageViewController) initWithTransitionStyle:1 navigationOrientation:0 options:0];
  *(v1 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition) = 0;
  v15 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__composeItem;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  v14 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__previousButtonItem;
  UIViewController.ViewLoading.init()();
  v13 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__nextButtonItem;
  UIViewController.ViewLoading.init()();
  v4 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__moveItem;
  UIViewController.ViewLoading.init()();
  v5 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__bookmarkItem;
  UIViewController.ViewLoading.init()();
  v6 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__deleteItem;
  UIViewController.ViewLoading.init()();
  v7 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__doneButtonItem;
  UIViewController.ViewLoading.init()();
  v8 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__selectAllButton;
  UIViewController.ViewLoading.init()();
  v9 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__deselectAllButton;
  UIViewController.ViewLoading.init()();

  v10 = sub_1000F24EC(&unk_100AEED40);
  v11 = *(*(v10 - 8) + 8);
  v11(v1 + v15, v10);
  v11(v1 + v14, v10);
  v11(v1 + v13, v10);
  v11(v1 + v4, v10);
  v11(v1 + v5, v10);
  v11(v1 + v6, v10);
  v11(v1 + v7, v10);
  v11(v1 + v8, v10);
  v11(v1 + v9, v10);
  type metadata accessor for InsightsCalendarDetailViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100138070()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for InsightsCalendarDetailViewController();
  v35.receiver = v0;
  v35.super_class = v4;
  objc_msgSendSuper2(&v35, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = *&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController];
  [v8 setDataSource:v1];
  [v8 setDelegate:v1];
  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  result = [v8 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v33 = v4;
  [v9 addSubview:result];

  result = [v8 view];
  if (result)
  {
    v11 = result;
    sub_100013178(0.0);

    sub_1000065A8(0, &qword_100AD43B0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = String._bridgeToObjectiveC()();
    v13 = objc_opt_self();
    v14 = [v13 systemImageNamed:v12];

    swift_unknownObjectRetain();
    UIBarButtonItem.init(title:image:target:action:menu:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v1;
    static UIViewController.ViewLoading.subscript.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v13 systemImageNamed:v16];

    swift_unknownObjectRetain();
    UIBarButtonItem.init(title:image:target:action:menu:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v15;
    static UIViewController.ViewLoading.subscript.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v13 systemImageNamed:v19];

    swift_unknownObjectRetain();
    v21 = UIBarButtonItem.init(title:image:target:action:menu:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v34[0] = v21;
    v22 = v18;
    static UIViewController.ViewLoading.subscript.setter();
    v23 = [v22 navigationItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v23 setRightBarButtonItem:v34[0]];

    v24 = [v22 navigationItem];
    [v24 setLargeTitleDisplayMode:2];

    sub_1000F24EC(&unk_100AD4780);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100941830;
    v26 = objc_opt_self();
    *(v25 + 32) = [v26 flexibleSpaceItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v25 + 40) = v34[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v25 + 48) = v34[0];
    *(v25 + 56) = [v26 flexibleSpaceItem];
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 setToolbarItems:isa];

    sub_100138930();
    v28 = objc_opt_self();
    v29 = [v28 keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"navigateToPreviousDay"];
    [v29 setWantsPriorityOverSystemBehavior:1];
    [v22 addKeyCommand:v29];
    v30 = [v28 keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"navigateToNextDay"];
    [v30 setWantsPriorityOverSystemBehavior:1];
    [v22 addKeyCommand:v30];
    sub_100139178(0, 0);
    sub_1000F24EC(&unk_100AEBEC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100940080;
    *(v31 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v31 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    v34[3] = v33;
    v34[0] = v22;
    v32 = v22;
    UIViewController.registerForTraitChanges(_:target:action:)();

    swift_unknownObjectRelease();

    return sub_10000BA7C(v34);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100138930()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  sub_1000065A8(0, &qword_100AD43B0);
  sub_1000065A8(0, &qword_100AD4420);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed:v3];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v26.value.super.isa = 0;
  v32.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v26, v32, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v0;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (qword_100AD08F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100B30DD0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v27.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27.value.super.isa = 0;
  v33.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v27, v33, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v6;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v4 systemImageNamed:v10];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v28.value.super.isa = 0;
  v34.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v28, v34, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v9;
  static UIViewController.ViewLoading.subscript.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25.is_nil = 0;
  UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v25, v31);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17.value._countAndFlagsBits = v14;
  v17.value._object = v16;
  v29.value.super.isa = 0;
  v35.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v17, v29, v35, v40);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v13;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22.value._countAndFlagsBits = v19;
  v22.value._object = v21;
  v30.value.super.isa = 0;
  v36.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v22, v30, v36, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v18;
  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_100139178(uint64_t a1, int a2)
{
  v3 = v2;
  v24 = a2;
  v25 = a1;
  v4 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  *(v2 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition) = 1;
  v7 = objc_allocWithZone(type metadata accessor for InsightsEntriesViewController());
  *&v7[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model] = 0;
  v8 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(&v7[v8], 1, 1, v9);
  v12 = sub_100013708(0, 0);
  v13 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
  swift_beginAccess();
  (*(v10 + 16))(v6, v3 + v13, v9);
  v11(v6, 0, 1, v9);
  v14 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  swift_beginAccess();
  sub_10013E988(v6, &v12[v14]);
  swift_endAccess();
  sub_10016448C();
  sub_100004F84(v6, &unk_100AD9850);
  *&v12[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate + 8] = &off_100A5E018;
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate + 8] = &off_100A5DFB0;
  swift_unknownObjectWeakAssign();
  v15 = *(v3 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController);
  sub_1000F24EC(&unk_100AD4780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100941D50;
  *(v16 + 32) = v12;
  sub_1000065A8(0, &qword_100AD4C80);
  v17 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  aBlock[4] = sub_10013E9F8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003264C;
  aBlock[3] = &unk_100A5E0C8;
  v21 = _Block_copy(aBlock);
  v22 = v17;

  [v15 setViewControllers:isa direction:v25 animated:v24 & 1 completion:v21];
  _Block_release(v21);

  sub_10013B4B0();
}

void sub_100139550(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController] viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v13 = v6;

  type metadata accessor for InsightsEntriesViewController();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    sub_100139D08(a1 & 1);
    sub_10013C898(a1 & 1);
    if ([v8 isEditing])
    {
      v9 = [v1 traitCollection];
      v10 = [v9 horizontalSizeClass];

      v11 = v10 != 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v1 navigationController];
    [v12 setToolbarHidden:v11 animated:a1 & 1];
  }
}

void sub_10013973C()
{
  v30 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v28[1] = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v28[0] = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v31 = v0;
  v16 = sub_10013A18C();
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  if (![v16 isEditing])
  {

LABEL_7:
    v23 = [v31 navigationItem];
    sub_10013AD44(v10);
    static Date.FormatStyle.DateStyle.abbreviated.getter();
    static Date.FormatStyle.TimeStyle.omitted.getter();
    Date.formatted(date:time:)();
    (*(v1 + 8))(v3, v30);
    (*(v4 + 8))(v6, v29);
    (*(v8 + 8))(v10, v7);
    v24 = String._bridgeToObjectiveC()();

    [v23 setTitle:v24];
    goto LABEL_14;
  }

  v18 = *&v17[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (!v18)
  {
    v19 = v17;
    goto LABEL_9;
  }

  v19 = v17;
  v20 = [v18 indexPathsForSelectedItems];
  if (!v20)
  {
LABEL_9:
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v21 = v20;
  type metadata accessor for IndexPath();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v21;
LABEL_10:

  v25 = v22[2];

  if (v25)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
    v32 = v25;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v27._countAndFlagsBits = 0x73656972746E4520;
    v27._object = 0xE800000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v23 = [v31 navigationItem];
  }

  else
  {
    v23 = [v31 navigationItem];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v24 = String._bridgeToObjectiveC()();

  [v23 setTitle:v24];

LABEL_14:
}

void sub_100139D08(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController] viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_19:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v21 = v6;

  type metadata accessor for InsightsEntriesViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 isEditing];
  v9 = [v1 navigationItem];
  v10 = v9;
  if (v8)
  {
    [v9 setHidesBackButton:1];

LABEL_10:

    return;
  }

  sub_1000F24EC(&unk_100AD4780);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100941D50;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v11 + 32) = v22;
  sub_1000065A8(0, &qword_100AD43B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRightBarButtonItems:isa animated:a1 & 1];

  v13 = [v1 navigationItem];
  v14 = [(objc_class *)v13 leftBarButtonItems];
  if (v14)
  {
    v15 = v14;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = Array._bridgeToObjectiveC()().super.isa;

    [(objc_class *)v13 setLeftBarButtonItems:v16];

    v13 = v16;
  }

  else
  {
    [(objc_class *)v13 setLeftBarButtonItems:0];
  }

  v17 = [v1 navigationItem];
  [v17 setHidesBackButton:0];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100941830;
  v19 = objc_opt_self();
  *(v18 + 32) = [v19 flexibleSpaceItem];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v18 + 40) = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v18 + 48) = v22;
  *(v18 + 56) = [v19 flexibleSpaceItem];
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:v20];
}

id sub_10013A18C()
{
  result = [*(v0 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController) viewControllers];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_1000065A8(0, &qword_100AD4C80);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  type metadata accessor for InsightsEntriesViewController();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}