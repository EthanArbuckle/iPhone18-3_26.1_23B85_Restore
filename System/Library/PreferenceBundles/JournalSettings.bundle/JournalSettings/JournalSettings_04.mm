uint64_t sub_62BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1792C(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_1792C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = sub_6568C;
  *(v11 + 40) = v6;
  *(a1 + 8) = v7;
  return result;
}

void sub_62CCC(void *a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v5 = a1;
    sub_3A90(&unk_C8830);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;
  a3(&v5);
}

uint64_t sub_62D4C()
{
  v0 = sub_90AF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90AE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_902A0();
  __chkstk_darwin(v5 - 8);
  sub_2561C(0, &qword_C4360);
  sub_90240();
  sub_90AD0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_90B30();
  qword_D05A8 = result;
  return result;
}

uint64_t sub_62F0C()
{
  v0 = sub_90AF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90AE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_902A0();
  __chkstk_darwin(v5 - 8);
  sub_2561C(0, &qword_C4360);
  sub_90260();
  sub_90AD0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_90B30();
  qword_D05B0 = result;
  return result;
}

uint64_t sub_630CC()
{
  v0 = sub_90AF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90AE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_902A0();
  __chkstk_darwin(v5 - 8);
  sub_2561C(0, &qword_C4360);
  sub_90270();
  sub_90AD0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_90B30();
  qword_D05B8 = result;
  return result;
}

uint64_t sub_6328C(uint64_t a1)
{
  v3 = sub_8F2F0();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3A90(&qword_C7760);
  __chkstk_darwin(v7);
  v62 = &v57 - v8;
  v9 = sub_3A90(&qword_C4808);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = sub_8F530();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  sub_17DF4(a1, &v67, &qword_C5418);
  if (v69)
  {
    type metadata accessor for Asset();
    if (swift_dynamicCast())
    {
      v61 = v6;
      v22 = v65;
      ObjectType = swift_getObjectType();
      if (ObjectType == swift_getObjectType() && (sub_8F320() & 1) != 0)
      {
        v57 = v14;
        v58 = v12;
        sub_8FE10();
        sub_65724(&qword_C76A8, &type metadata accessor for AssetType);
        v59 = v1;
        sub_906E0();
        v60 = v22;
        sub_906E0();
        if (v67 == v65 && v68 == v66)
        {
        }

        else
        {
          v26 = sub_910F0();

          if ((v26 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v27 = *(v16 + 16);
        v27(v21, &v59[OBJC_IVAR____TtC15JournalSettings5Asset_source], v15);
        v27(v19, &v60[OBJC_IVAR____TtC15JournalSettings5Asset_source], v15);
        sub_65724(&qword_C7768, &type metadata accessor for AssetSource);
        sub_906E0();
        sub_906E0();
        if (v67 == v65 && v68 == v66)
        {
          v28 = *(v16 + 8);
          v28(v19, v15);
          v28(v21, v15);

          v30 = v57;
          v29 = v58;
        }

        else
        {
          v31 = sub_910F0();
          v32 = *(v16 + 8);
          v32(v19, v15);
          v32(v21, v15);

          v30 = v57;
          v29 = v58;
          if ((v31 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v33 = v59;
        v34 = *&v59[OBJC_IVAR____TtC15JournalSettings5Asset_title];
        v35 = *&v60[OBJC_IVAR____TtC15JournalSettings5Asset_title];
        if (v34)
        {
          if (!v35)
          {
            goto LABEL_28;
          }

          sub_2561C(0, &qword_C67F0);
          v36 = v35;
          v37 = v34;
          v38 = sub_90CB0();
          v33 = v59;
          v39 = v38;

          if ((v39 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (v35)
        {
          goto LABEL_28;
        }

        sub_17DF4(&v33[OBJC_IVAR____TtC15JournalSettings5Asset_suggestionDate], v30, &qword_C4808);
        v40 = OBJC_IVAR____TtC15JournalSettings5Asset_suggestionDate;
        v41 = *(v7 + 48);
        v42 = v62;
        sub_17DF4(v30, v62, &qword_C4808);
        v43 = &v60[v40];
        v44 = v42;
        sub_17DF4(v43, v42 + v41, &qword_C4808);
        v45 = *(v64 + 48);
        v46 = v42;
        v47 = v63;
        if (v45(v46, 1, v63) == 1)
        {
          sub_8EF0(v30, &qword_C4808);
          if (v45(v44 + v41, 1, v47) == 1)
          {
            v48 = sub_8EF0(v44, &qword_C4808);
LABEL_30:
            v54 = (*&stru_1F8.segname[(swift_isaMask & *v33) - 8])(v48);
            v55 = v60;
            v56 = (*&stru_1F8.segname[(swift_isaMask & *v60) - 8])();

            v24 = v54 ^ v56 ^ 1;
            return v24 & 1;
          }

          goto LABEL_27;
        }

        sub_17DF4(v44, v29, &qword_C4808);
        if (v45(v44 + v41, 1, v47) == 1)
        {
          sub_8EF0(v30, &qword_C4808);
          (*(v64 + 8))(v29, v47);
LABEL_27:
          sub_8EF0(v44, &qword_C7760);
          goto LABEL_28;
        }

        v49 = v64;
        v50 = v61;
        (*(v64 + 32))(v61, v44 + v41, v47);
        sub_65724(&qword_C67D0, &type metadata accessor for Date);
        v51 = sub_904D0();
        v33 = v59;
        v52 = v51;
        v53 = *(v49 + 8);
        v53(v50, v47);
        sub_8EF0(v30, &qword_C4808);
        v53(v29, v47);
        v48 = sub_8EF0(v44, &qword_C4808);
        if (v52)
        {
          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_8EF0(&v67, &qword_C5418);
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

Swift::Int sub_63BA8()
{
  v1 = v0;
  v2 = sub_8F2F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4808);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_8F530();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_911E0();
  sub_8F350();
  sub_65724(&qword_C5AD8, &type metadata accessor for UUID);
  sub_90470();
  sub_8FE10();
  sub_65724(&qword_C7750, &type metadata accessor for AssetType);
  sub_90470();
  (*(v10 + 16))(v12, v0 + OBJC_IVAR____TtC15JournalSettings5Asset_source, v9);
  sub_65724(&qword_C7758, &type metadata accessor for AssetSource);
  sub_90470();
  (*(v10 + 8))(v12, v9);
  v13 = *(v0 + OBJC_IVAR____TtC15JournalSettings5Asset_title);
  if (v13)
  {
    sub_911A0(1u);
    v14 = v13;
    sub_90CC0();
  }

  else
  {
    sub_911A0(0);
  }

  sub_17DF4(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_suggestionDate, v8, &qword_C4808);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_911A0(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_911A0(1u);
    sub_65724(&qword_C6AB8, &type metadata accessor for Date);
    sub_90470();
    (*(v3 + 8))(v5, v2);
  }

  return sub_911C0();
}

id sub_63FA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = &dword_0 + 2;
  }

  *a2 = result;
  return result;
}

id sub_63FF4()
{
  v1 = sub_8F350();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC15JournalSettings5Asset_thumbnailCacheKey + 8];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC15JournalSettings5Asset_thumbnailCacheKey];

    sub_251B4(v6, v5, 0);
  }

  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC15JournalSettings5Asset_id], v1);
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = sub_442E0(ObjectType, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v0[OBJC_IVAR____TtC15JournalSettings5Asset_attachmentIdsMissingFile];

  sub_C140(1, v4, v9, v10);

  (*(v2 + 8))(v4, v1);
  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver:v0];

  v12 = type metadata accessor for Asset();
  v14.receiver = v0;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t type metadata accessor for Asset()
{
  result = qword_C7728;
  if (!qword_C7728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_64464(uint64_t a1)
{
  sub_62340();
  v2 = [*(a1 + OBJC_IVAR____TtC15JournalSettings5Asset_delegates) allObjects];
  v3 = sub_90740();

  if (v3 >> 62)
  {
    v4 = sub_90FA0();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_90EC0();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7 && v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:

  v10 = *(a1 + OBJC_IVAR____TtC15JournalSettings5Asset_didUpdate);
  if (v10)
  {

    v10(v11);

    sub_31D8C(v10);
  }
}

void sub_64628(uint64_t a1)
{
  sub_62340();
  v2 = *(a1 + OBJC_IVAR____TtC15JournalSettings5Asset_didUpdateMediaFile);
  if (v2)
  {

    v2(v3);

    sub_31D8C(v2);
  }
}

uint64_t sub_646B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_8ED50();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8ED20();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_647A0(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, char *a5, uint64_t a6, void *a7, char *a8, char a9, uint64_t a10)
{
  v48 = a8;
  v49 = a5;
  v50 = a7;
  v51 = a3;
  v52 = a4;
  v47 = a10;
  v12 = sub_902A0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  if (qword_C3A10 != -1)
  {
    swift_once();
  }

  v19 = sub_60354(a1, a2);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 imageByPreparingForDisplay];

    if (v21)
    {
      v50 = v21;
      v51(v21);

      v22 = v50;
LABEL_18:

      return;
    }
  }

  v23 = sub_25664(a1, a2);
  if (v23)
  {
    v48 = v23;
    v24 = *&v23[qword_D0570];
    if (v24 >> 62)
    {
      v25 = sub_90FA0();
    }

    else
    {
      v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    }

    if (v25 == v50)
    {
      v26 = swift_allocObject();
      v27 = v52;
      *(v26 + 16) = v51;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_65810;
      *(v28 + 24) = v26;
      v29 = *&v48[qword_C7320];
      __chkstk_darwin(v48);
      *(&v46 - 2) = sub_657F4;
      *(&v46 - 1) = v28;

      os_unfair_lock_lock(v29 + 10);
      sub_657F8(&v29[4]);
      os_unfair_lock_unlock(v29 + 10);

      return;
    }

    sub_64CA8(v49, v51, v52);
    v22 = v48;
    goto LABEL_18;
  }

  sub_25904(a1, a2);
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    sub_90B00();
    v34 = sub_90280();
    v35 = *(v13 + 8);
    v35(v18, v12);
    sub_90B00();
    v36 = sub_90280();
    v35(v16, v12);
    if (v34 >= v36 && ((v37 = *&v32[qword_D0570], v37 >> 62) ? (v38 = sub_90FA0()) : (v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8))), v38 == v50))
    {
      v39 = swift_allocObject();
      v40 = v52;
      *(v39 + 16) = v51;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_65640;
      *(v41 + 24) = v39;
      v42 = *&v32[qword_C7320];
      v43 = __chkstk_darwin(v41);
      *(&v46 - 2) = sub_6566C;
      *(&v46 - 1) = v43;

      os_unfair_lock_lock(v42 + 10);
      sub_65670(&v42[4]);
      os_unfair_lock_unlock(v42 + 10);
    }

    else
    {
      sub_64CA8(v49, v51, v52);
    }
  }

  else
  {
    sub_64CA8(v49, v51, v52);
    v45 = v47;
    v44 = v48;

    sub_C140(0, v44, a9 & 1, v45);
  }
}

id sub_64CA8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_65810;
  *(v7 + 24) = v6;
  v8 = *&a1[qword_C7320];

  os_unfair_lock_lock(v8 + 10);
  sub_657F8(&v8[4]);
  os_unfair_lock_unlock(v8 + 10);

  sub_2561C(0, &qword_C5308);
  if (qword_C3A28 != -1)
  {
    swift_once();
  }

  if (sub_90CB0())
  {
    [a1 setQualityOfService:9];
  }

  else
  {
    if (qword_C3A30 != -1)
    {
      swift_once();
    }

    if (sub_90CB0())
    {
      v9 = a1;
      v10 = -1;
    }

    else
    {
      v9 = a1;
      v10 = 25;
    }

    [v9 setQualityOfService:v10];
  }

  return sub_254D0(a1);
}

void sub_64EB0()
{
  sub_8F350();
  if (v0 <= 0x3F)
  {
    sub_8FE10();
    if (v1 <= 0x3F)
    {
      sub_8F530();
      if (v2 <= 0x3F)
      {
        sub_65100(319, &qword_C57A8, &type metadata accessor for UUID);
        if (v3 <= 0x3F)
        {
          sub_65100(319, &qword_C7738, &type metadata accessor for Date);
          if (v4 <= 0x3F)
          {
            sub_65100(319, &qword_C7740, &type metadata accessor for URL);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_65100(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_90D10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_651C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15JournalSettings5Asset_id;
  v5 = sub_8F350();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_65288(uint64_t a1)
{
  v3 = sub_8EEF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dataAttachments];
  if (!v7)
  {
    sub_2561C(0, &qword_C7770);
    v7 = sub_90C20();
  }

  sub_90C30();

  sub_8EEE0();
  while (v14)
  {
    sub_C8E4(&v13, &v12);
    sub_8F4E0();
    if (swift_dynamicCast())
    {
      v8 = v11;
      if ([v11 index] == a1)
      {
        goto LABEL_10;
      }
    }

    sub_8EEE0();
  }

  v8 = 0;
LABEL_10:
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_65440()
{
  v1 = sub_8F350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_65540()
{
  v1 = *(sub_8F350() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  sub_647A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_655F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_65608()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6568C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_656E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65724(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_65774@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = &dword_0 + 2;
  }

  *a1 = result;
  return result;
}

uint64_t sub_65814(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_6B7EC(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_65950(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5)
{
  v37 = a5;
  v34 = a1;
  v35 = a4;
  v8 = sub_8FA20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3A90(&qword_C67D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v36 = a2;
  v38 = a3;
  v15 = sub_3A90(a2);
  v33 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v32 - v20;
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v24 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_17DF4(v5 + v24, v14, &qword_C67D8);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_8EF0(v14, &qword_C67D8);
    v25 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    v26 = sub_8EF0(v14, &qword_C67D8);
    v27 = v35;
    v35(v26);
    (*(v9 + 8))(v11, v8);
    v28 = v33;
    v29 = (*(v33 + 32))(v23, v21, v15);
    v27(v29);
    sub_6F1E0(v37, v36);
    v25 = sub_90390();
    v30 = *(v28 + 8);
    v30(v18, v15);
    v30(v23, v15);
  }

  return v25 & 1;
}

uint64_t sub_65C94(void *a1)
{
  v2 = v1;
  v4 = sub_3A90(&qword_C7D58);
  __chkstk_darwin(v4 - 8);
  v96 = &v89 - v5;
  v97 = sub_8F990();
  v99 = *(v97 - 8);
  v6 = __chkstk_darwin(v97);
  v93 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v7;
  __chkstk_darwin(v6);
  v94 = &v89 - v8;
  v9 = sub_90310();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A90(&qword_C67D8);
  v14 = __chkstk_darwin(v13 - 8);
  v105 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v101 = &v89 - v17;
  v18 = __chkstk_darwin(v16);
  v106 = &v89 - v19;
  __chkstk_darwin(v18);
  v21 = &v89 - v20;
  v22 = sub_8FA20();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v92 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v98 = &v89 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v89 - v29;
  __chkstk_darwin(v28);
  v32 = &v89 - v31;
  v33 = *(v23 + 16);
  v91 = v23 + 16;
  v90 = v33;
  v33(&v89 - v31, a1, v22);
  v34 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v104 = v34;
  sub_17DF4(v2 + v34, v21, &qword_C67D8);
  v107 = *(v23 + 48);
  v108 = v22;
  if (v107(v21, 1, v22) == 1)
  {
    v35 = v32;
    sub_8EF0(v21, &qword_C67D8);
  }

  else
  {
    v36 = v21;
    v37 = v108;
    (*(v23 + 32))(v30, v36, v108);
    v35 = v32;
    sub_8FA00();
    (*(v10 + 8))(v12, v9);
    (*(v23 + 8))(v30, v37);
  }

  v38 = v23;
  v39 = sub_23BBC(&off_B3828);
  v40 = v105;
  v41 = v106;
  if (qword_C39F8 != -1)
  {
    swift_once();
  }

  v100 = qword_D0520;
  v102 = *algn_D0528;
  sub_17DF4(v2 + v104, v41, &qword_C67D8);
  v42 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager;
  v43 = *(v2 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager);
  v44 = v35;
  v45 = v107;
  v103 = v39;
  if (!v43)
  {
    goto LABEL_13;
  }

  v46 = qword_C3A48;
  v95 = v43;
  if (v46 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v47 = sub_900D0();
    sub_7FF0(v47, qword_C7798);
    v48 = v102;

    v49 = sub_900B0();
    v50 = sub_90A60();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v44;
      v53 = v38;
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v51 = 136315138;

      v55 = sub_76D20(v100, v48, aBlock);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_0, v49, v50, "undoable (%s)", v51, 0xCu);
      sub_7FA4(v54);
      v38 = v53;
      v44 = v52;
      v40 = v105;

      v41 = v106;
    }

    v56 = v95;
    v57 = [v95 groupingLevel];
    v45 = v107;
    if (!v57)
    {
      [v56 beginUndoGrouping];
    }

LABEL_13:
    sub_6922C(v2, v44);
    v58 = *(v2 + v42);
    if (!v58)
    {

      v60 = &qword_C67D8;
      v59 = v41;
      goto LABEL_22;
    }

    v42 = v101;
    sub_17DF4(v41, v101, &qword_C67D8);
    if (v45(v42, 1, v108) == 1)
    {

      sub_8EF0(v41, &qword_C67D8);
      v59 = v42;
      v60 = &qword_C67D8;
      goto LABEL_22;
    }

    v61 = v42;
    v42 = v98;
    v62 = v108;
    (*(v38 + 32))(v98, v61, v108);
    sub_17DF4(v2 + v104, v40, &qword_C67D8);
    if (v45(v40, 1, v62))
    {

      (*(v38 + 8))(v42, v108);
      sub_8EF0(v41, &qword_C67D8);
      sub_8EF0(v40, &qword_C67D8);
      v63 = v96;
      (*(v99 + 56))(v96, 1, 1, v97);
LABEL_21:
      v60 = &qword_C7D58;
      v59 = v63;
      goto LABEL_22;
    }

    v64 = v92;
    v65 = v108;
    v90(v92, v40, v108);
    v107 = v58;
    sub_8EF0(v40, &qword_C67D8);
    v66 = v96;
    sub_8F9B0();
    v67 = v65;
    v63 = v66;
    v105 = *(v38 + 8);
    (v105)(v64, v67);
    v68 = v99;
    v69 = v97;
    if ((*(v99 + 48))(v63, 1, v97) == 1)
    {

      (v105)(v42, v108);
      sub_8EF0(v41, &qword_C67D8);
      goto LABEL_21;
    }

    v73 = v68;
    v95 = *(v68 + 32);
    v74 = v94;
    (v95)(v94, v63, v69);
    v75 = v69;
    v76 = sub_90550();
    [v107 setActionName:v76];

    v77 = v74;
    v78 = v75;
    (*(v73 + 16))(v93, v77, v75);
    v79 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v104 = v38;
    v80 = (v89 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
    v101 = v44;
    v83 = swift_allocObject();
    (v95)(v83 + v79, v93, v78);
    *(v83 + v80) = v103;
    v38 = v104;
    v84 = (v83 + v81);
    v42 = v108;
    v85 = v102;
    *v84 = v100;
    v84[1] = v85;
    v86 = (v83 + v82);
    v87 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
    v44 = v101;
    *v86 = 0;
    v86[1] = 0;
    *v87 = 0;
    v87[1] = 0;
    type metadata accessor for EntryViewModel();

    v88 = v107;
    sub_90A00();

    (*(v99 + 8))(v94, v78);
    (v105)(v98, v42);
    v60 = &qword_C67D8;
    v59 = v106;
LABEL_22:
    sub_8EF0(v59, v60);
    v70 = *(v2 + 24);
    v71 = swift_allocObject();
    *(v71 + 16) = sub_6EFE8;
    *(v71 + 24) = v2;
    aBlock[4] = sub_6EFFC;
    v110 = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_668D4;
    aBlock[3] = &unk_B5D08;
    v40 = _Block_copy(aBlock);
    v41 = v110;

    [v70 performBlockAndWait:v40];
    _Block_release(v40);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  (*(v38 + 8))(v44, v108);
}

uint64_t sub_66954(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_900D0();
  sub_8F9C(v7, a2);
  v8 = sub_7FF0(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_7FF0(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_66A80()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_25DEC(v0 + 48);
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_uuid, &qword_C57E0);

  v2 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_uniqueID;
  v3 = sub_8F350();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes, &qword_C67D8);

  v4 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_date;
  v5 = sub_8F2F0();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_dateSource, &qword_C67C8);
  v6(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_displayDate, v5);
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_bundleId, &qword_C57E0);
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_bundleDate, &qword_C4808);
  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_bundleEndDate, &qword_C4808);

  sub_8EF0(v0 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_originalUpdatedDate, &qword_C4808);
  return v0;
}

uint64_t sub_66D70()
{
  sub_66A80();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntryViewModel()
{
  result = qword_C7800;
  if (!qword_C7800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_66E1C()
{
  sub_683F8(319, &qword_C57A8, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_8F350();
    if (v1 <= 0x3F)
    {
      sub_683F8(319, &qword_C7810, &type metadata accessor for MergeableEntryAttributes);
      if (v2 <= 0x3F)
      {
        sub_8F2F0();
        if (v3 <= 0x3F)
        {
          sub_683F8(319, &unk_C7818, &type metadata accessor for EntryDateSource);
          if (v4 <= 0x3F)
          {
            sub_683F8(319, &qword_C7738, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_670D0(void *a1)
{
  v2 = sub_8F4D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.enhancedSync(_:), v2);
  v6 = sub_8F4C0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_C3A40 != -1)
    {
      swift_once();
    }

    v7 = sub_900D0();
    sub_7FF0(v7, qword_C7780);
    v8 = sub_900B0();
    v9 = sub_90A70();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Replacing mergeable title with a non-mergeable string. This may result in an incorrect merge.", v10, 2u);
    }

    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = [objc_allocWithZone(NSAttributedString) init];
    }

    v12 = a1;
    sub_672CC(v11);
  }

  else
  {
    sub_67640(a1);
  }
}

uint64_t sub_672CC(uint64_t a1)
{
  v25 = a1;
  v2 = sub_8FA20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C67D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_3A90(&qword_C7D60);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_17DF4(v1 + v18, v8, &qword_C67D8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_8EF0(v8, &qword_C67D8);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_8EF0(v8, &qword_C67D8);
  sub_8FA10();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_6B174(&qword_C7D68, &type metadata accessor for MergeableTitleAttributeScope);
  sub_90360();

  sub_6A46C(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

void sub_67640(void *a1)
{
  v2 = v1;
  v4 = sub_8ED10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [a1 string];
    v9 = sub_90590();
    v11 = v10;

    aBlock = v9;
    v22 = v11;
    sub_8ED00();
    sub_39C40();
    v12 = sub_90D50();
    v14 = v13;
    (*(v5 + 8))(v7, v4);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = a1;
    }

    else
    {
      a1 = 0;
    }
  }

  v17 = *(v2 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_attributedTitle);
  *(v2 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_attributedTitle) = a1;

  v18 = *(v2 + 24);
  v19 = swift_allocObject();
  swift_weakInit();
  v25 = sub_6EFA4;
  v26 = v19;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_7E2E8;
  v24 = &unk_B5C90;
  v20 = _Block_copy(&aBlock);

  [v18 performBlock:v20];
  _Block_release(v20);
}

void sub_67868(void *a1)
{
  v2 = v1;
  v4 = sub_8F4D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.enhancedSync(_:), v4);
  v8 = sub_8F4C0();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_attributedText;
    v15 = *(v2 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_attributedText);
    if (a1)
    {
      if (v15)
      {
        sub_2561C(0, &qword_C67F0);
        v16 = a1;
        v17 = v15;
        v18 = sub_90CB0();

        if (v18)
        {
          goto LABEL_16;
        }
      }
    }

    else if (!v15)
    {
LABEL_16:
      v13 = *(v2 + v14);
      *(v2 + v14) = a1;
      v20 = a1;
      goto LABEL_17;
    }

    *(v2 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_textChanged) = 1;
    goto LABEL_16;
  }

  if (qword_C3A40 != -1)
  {
    swift_once();
  }

  v9 = sub_900D0();
  sub_7FF0(v9, qword_C7780);
  v10 = sub_900B0();
  v11 = sub_90A70();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
  }

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(NSAttributedString) init];
  }

  v19 = a1;
  sub_67AD8(v13);
LABEL_17:
}

uint64_t sub_67AD8(uint64_t a1)
{
  v25 = a1;
  v2 = sub_8FA20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C67D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_3A90(&qword_C67F8);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_17DF4(v1 + v18, v8, &qword_C67D8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_8EF0(v8, &qword_C67D8);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_8EF0(v8, &qword_C67D8);
  sub_8F9C0();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_6B174(&qword_C6800, &type metadata accessor for MergeableTextAttributeScope);
  sub_90360();

  sub_69968(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

uint64_t sub_67E60(uint64_t a1, void *a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    isa = *(result + *a2);
    if (isa)
    {
      v8 = v6;
      v9 = isa;
      v10 = sub_90B50();
      v12 = v11;

      if (v12 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_8F020().super.isa;
        sub_41B24(v10, v12);
      }
    }

    else
    {
      v13 = v6;
    }

    [v6 *a3];

    sub_68164();
  }

  return result;
}

uint64_t sub_67F50(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_bookmarked) != (result & 1))
  {
    v2 = *(v1 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_6F234;
    *(v4 + 24) = v3;
    v6[4] = sub_6F254;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_668D4;
    v6[3] = &unk_B5D80;
    v5 = _Block_copy(v6);

    [v2 performBlockAndWait:v5];
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      v6[0] = sub_23BBC(&off_B3850);
      sub_90210();
    }
  }

  return result;
}

uint64_t sub_680F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 32) setFlagged:*(result + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_bookmarked)];
    sub_68164();
  }

  return result;
}

void sub_68164()
{
  v1 = sub_8F2F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4808);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(v0 + 32);
  [v11 setIsUploadedToCloud:0];
  if ((*(v0 + 40) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_originalUpdatedDate;
    swift_beginAccess();
    v19 = v12;
    sub_17DF4(v0 + v12, v10, &qword_C4808);
    LODWORD(v12) = (*(v2 + 48))(v10, 1, v1);
    sub_8EF0(v10, &qword_C4808);
    if (v12 == 1)
    {
      v13 = [v11 updatedDate];
      if (v13)
      {
        v14 = v13;
        sub_8F2B0();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v2 + 56))(v8, v15, 1, v1);
      v16 = v19;
      swift_beginAccess();
      sub_685EC(v8, v0 + v16);
      swift_endAccess();
    }
  }

  sub_8F2C0();
  isa = sub_8F270().super.isa;
  (*(v2 + 8))(v4, v1);
  [v11 setUpdatedDate:isa];
}

void sub_683F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_90D10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_68470()
{
  result = qword_C7D40;
  if (!qword_C7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7D40);
  }

  return result;
}

unint64_t sub_684C8()
{
  result = qword_C7D48;
  if (!qword_C7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7D48);
  }

  return result;
}

unint64_t sub_68520()
{
  result = qword_C7D50;
  if (!qword_C7D50)
  {
    sub_2561C(255, &qword_C67C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7D50);
  }

  return result;
}

uint64_t sub_68588@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EntryViewModel();
  result = sub_90200();
  *a1 = result;
  return result;
}

id sub_685C8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_id);
  *a1 = v2;
  return v2;
}

uint64_t sub_685EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C4808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6865C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v99 = a8;
  v110 = a7;
  v107 = a4;
  v108 = a5;
  v112 = a3;
  v12 = sub_3A90(&qword_C7D58);
  __chkstk_darwin(v12 - 8);
  v105 = &v92 - v13;
  v14 = sub_8FA20();
  v111 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v100 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v92 - v17;
  v18 = sub_3A90(&qword_C67D8);
  v19 = __chkstk_darwin(v18 - 8);
  v104 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - v22;
  __chkstk_darwin(v21);
  v25 = &v92 - v24;
  v26 = sub_8F990();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v98 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v101 = &v92 - v31;
  v97 = v32;
  __chkstk_darwin(v30);
  v34 = &v92 - v33;
  v35 = *(v27 + 16);
  v114 = v36;
  v96 = v27 + 16;
  v95 = v35;
  (v35)(&v92 - v33, a2);
  v37 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v103 = v37;
  v113 = v25;
  sub_17DF4(v37 + a1, v25, &qword_C67D8);
  v38 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager;
  v39 = *(a1 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager);
  v109 = a6;
  if (v39)
  {
    v40 = qword_C3A48;
    v102 = v39;
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_900D0();
    sub_7FF0(v41, qword_C7798);
    v42 = v108;

    v43 = sub_900B0();
    v44 = sub_90A60();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = a1;
      v47 = v46;
      v115 = v46;
      *v45 = 136315138;
      v48 = v42 == 0;
      v94 = v27;
      v49 = v23;
      if (v42)
      {
        v50 = v107;
      }

      else
      {
        v50 = 45;
      }

      v51 = v42;
      v52 = v34;
      v53 = v14;
      if (v48)
      {
        v54 = 0xE100000000000000;
      }

      else
      {
        v54 = v51;
      }

      v55 = sub_76D20(v50, v54, &v115);
      v14 = v53;
      v34 = v52;

      *(v45 + 4) = v55;
      v23 = v49;
      v27 = v94;
      _os_log_impl(&dword_0, v43, v44, "undoable (%s)", v45, 0xCu);
      sub_7FA4(v47);
      a1 = v93;
    }

    a6 = v109;
    v56 = v102;
    if (![v102 groupingLevel])
    {
      [v56 beginUndoGrouping];
    }
  }

  sub_68FE0(a1, v34);
  if (a6)
  {
    a6();
  }

  v57 = *(a1 + v38);
  if (!v57)
  {
    v62 = &qword_C67D8;
    v61 = v113;
    goto LABEL_26;
  }

  v58 = v113;
  sub_17DF4(v113, v23, &qword_C67D8);
  v59 = v111;
  v60 = *(v111 + 48);
  if (v60(v23, 1, v14) == 1)
  {
    sub_8EF0(v58, &qword_C67D8);
    v61 = v23;
    v62 = &qword_C67D8;
LABEL_26:
    sub_8EF0(v61, v62);
    return (*(v27 + 8))(v34, v114);
  }

  v63 = *(v59 + 32);
  v64 = v59;
  v65 = v106;
  v63(v106, v23, v14);
  v66 = v104;
  sub_17DF4(v103 + a1, v104, &qword_C67D8);
  if (v60(v66, 1, v14))
  {
    (*(v64 + 8))(v65, v14);
    sub_8EF0(v113, &qword_C67D8);
    sub_8EF0(v66, &qword_C67D8);
    v67 = v105;
    (*(v27 + 56))(v105, 1, 1, v114);
LABEL_25:
    v62 = &qword_C7D58;
    v61 = v67;
    goto LABEL_26;
  }

  v68 = v100;
  (*(v64 + 16))(v100, v66, v14);
  v103 = v57;
  sub_8EF0(v66, &qword_C67D8);
  v67 = v105;
  sub_8F9B0();
  v71 = *(v64 + 8);
  v70 = v64 + 8;
  v69 = v71;
  (v71)(v68, v14);
  if ((*(v27 + 48))(v67, 1, v114) == 1)
  {

    (v69)(v65, v14);
    sub_8EF0(v113, &qword_C67D8);
    goto LABEL_25;
  }

  v100 = v69;
  v93 = a1;
  v102 = v34;
  v111 = v70;
  v104 = v14;
  v92 = a9;
  v105 = *(v27 + 32);
  (v105)(v101, v67, v114);
  v73 = v108;
  if (v108)
  {
    v74 = sub_90550();
    [v103 setActionName:v74];
  }

  v75 = v98;
  v76 = v114;
  v95(v98, v101, v114);
  v77 = *(v27 + 80);
  v94 = v27;
  v78 = (v77 + 16) & ~v77;
  v79 = (v97 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v82 + v78;
  v27 = v94;
  (v105)(v83, v75, v76);
  *(v82 + v79) = v112;
  v84 = (v82 + v80);
  *v84 = v107;
  v84[1] = v73;
  v85 = (v82 + v81);
  v86 = v99;
  v87 = v92;
  *v85 = v99;
  v85[1] = v87;
  v88 = (v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
  v90 = v109;
  v89 = v110;
  *v88 = v109;
  v88[1] = v89;

  sub_322F0(v86);
  sub_322F0(v90);
  type metadata accessor for EntryViewModel();
  v91 = v103;
  sub_90A00();

  (*(v27 + 8))(v101, v76);
  (v100)(v106, v104);
  sub_8EF0(v113, &qword_C67D8);
  v34 = v102;
  return (*(v27 + 8))(v34, v114);
}

void sub_68FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C7D58);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_66A1C();
  v9 = v8;
  v10 = sub_8FA20();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_8F990();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v6, a2, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    sub_8F9D0();
    sub_8EF0(v6, &qword_C7D58);
  }

  (v7)(v18, 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(a1 + 56);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(a2, a1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v15 = *(a1 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager);
  if (v15)
  {
    swift_beginAccess();
    v16 = v15;

    sub_65814(v17);
    swift_endAccess();
  }
}

uint64_t sub_6922C(uint64_t a1, uint64_t a2)
{
  v3 = sub_8FA20();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = sub_3A90(&qword_C7D70);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8 + 16;
  v10 = sub_66A1C();
  if ((*(v4 + 48))(v11, 1, v3))
  {
    (v10)(v16, 0);
    v12 = 1;
  }

  else
  {
    swift_beginAccess();
    (*(v4 + 16))(v6, a2, v3);
    sub_8FA00();
    (*(v4 + 8))(v6, v3);
    (v10)(v16, 0);
    v12 = 0;
  }

  v13 = sub_90310();
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  return sub_8EF0(v9, &qword_C7D70);
}

uint64_t sub_69450()
{
  v1 = v0;
  v39 = sub_3A90(&qword_C57E0);
  __chkstk_darwin(v39);
  v38 = &v35[-v2];
  v3 = sub_3A90(&qword_C67D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = sub_8FA20();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  v13 = sub_8F4D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, enum case for JournalFeatureFlags.enhancedSync(_:), v13);
  v17 = sub_8F4C0();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_17DF4(v1 + v19, v5, &qword_C67D8);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_8EF0(v5, &qword_C67D8);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v20 = *(v1 + 32);
      v21 = [v20 mergeableAttributes];
      if (v21)
      {
      }

      else
      {
        if (qword_C3A40 != -1)
        {
          swift_once();
        }

        v22 = sub_900D0();
        sub_7FF0(v22, qword_C7780);

        v23 = sub_900B0();
        v24 = sub_90A80();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v41 = v37;
          *v25 = 136446466;
          v40 = *(v1 + 16);
          v26 = sub_905E0();
          v28 = sub_76D20(v26, v27, &v41);
          v36 = v24;
          v29 = v28;

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          sub_17DF4(v1 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_uuid, v38, &qword_C57E0);
          v30 = sub_905E0();
          v32 = sub_76D20(v30, v31, &v41);

          *(v25 + 14) = v32;
          _os_log_impl(&dword_0, v23, v36, "Migrating legacy fields to mergeable attributes (mode: %{public}s) for entry ID %{public}s", v25, 0x16u);
          swift_arrayDestroy();
        }
      }

      (*(v7 + 16))(v10, v12, v6);
      v33 = objc_allocWithZone(sub_8FD90());
      v34 = sub_8FDA0();
      [v20 setMergeableAttributes:v34];

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

uint64_t sub_69968(uint64_t a1)
{
  v3 = sub_3A90(&qword_C7D58);
  __chkstk_darwin(v3 - 8);
  v89 = &v82 - v4;
  v5 = sub_8F990();
  v90 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v86 = &v82 - v8;
  v9 = sub_8FA20();
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  v11 = __chkstk_darwin(v9);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v82 - v13;
  v14 = sub_3A90(&qword_C67D8);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v93 = &v82 - v18;
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = sub_3A90(&qword_C67F8);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v100 = &v82 - v23;
  v101 = v1;
  v24 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager;
  v25 = *(v1 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager);
  v99 = v20;
  if (v25)
  {
    v26 = v21;
    v27 = OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity;
    v28 = *&v25[OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity];
    v29 = *(v28 + 24);
    v30 = v25;
    if (v29)
    {
      sub_3E640();
      v28 = *&v25[v27];
      v31 = *(v28 + 24);
      *(v28 + 24) = 0;
      if (v31)
      {
        *(v28 + 16) = 0;
      }
    }

    v21 = v26;
    v20 = v99;

    v32 = *(v28 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    *(v28 + 16) = v34;
  }

  v88 = v5;
  v94 = sub_23BBC(&off_B37D8);
  if (qword_C3A00 != -1)
  {
    swift_once();
  }

  v35 = *algn_D0538;
  v92 = qword_D0530;
  (*(v22 + 16))(v100, a1, v21);
  v36 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
  v37 = v101;
  swift_beginAccess();
  v87 = v36;
  sub_17DF4(v37 + v36, v20, &qword_C67D8);
  v38 = *(v37 + v24);
  v5 = v97;
  v96 = v35;
  if (v38)
  {
    v39 = qword_C3A48;
    v20 = v38;
    if (v39 == -1)
    {
LABEL_11:
      v40 = sub_900D0();
      sub_7FF0(v40, qword_C7798);

      v41 = sub_900B0();
      v42 = sub_90A60();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102[0] = v44;
        *v43 = 136315138;

        v45 = v22;
        v46 = v21;
        v47 = sub_76D20(v92, v96, v102);

        *(v43 + 4) = v47;
        v21 = v46;
        v22 = v45;
        v5 = v97;
        _os_log_impl(&dword_0, v41, v42, "undoable (%s)", v43, 0xCu);
        sub_7FA4(v44);
      }

      if (![v20 groupingLevel])
      {
        [v20 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_31:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v48 = sub_66A1C();
  v49 = *(v98 + 48);
  if (!v49(v50, 1, v5))
  {
    sub_8F9E0();
  }

  (v48)(v102, 0);
  v51 = *(v101 + v24);
  v52 = v99;
  v53 = v95;
  if (v51)
  {
    v54 = v93;
    sub_17DF4(v99, v93, &qword_C67D8);
    if (v49(v54, 1, v5) == 1)
    {

      sub_8EF0(v52, &qword_C67D8);
      (*(v22 + 8))(v100, v21);
      v55 = v54;
      v56 = &qword_C67D8;
    }

    else
    {
      v82 = v22;
      v58 = v54;
      v59 = v98;
      v60 = v91;
      (*(v98 + 32))(v91, v58, v5);
      sub_17DF4(v87 + v101, v53, &qword_C67D8);
      if (v49(v53, 1, v5))
      {

        (*(v59 + 8))(v60, v5);
        sub_8EF0(v52, &qword_C67D8);
        (*(v82 + 8))(v100, v21);
        sub_8EF0(v53, &qword_C67D8);
        v61 = v89;
        (*(v90 + 56))(v89, 1, 1, v88);
      }

      else
      {
        v62 = v53;
        v63 = v85;
        (*(v59 + 16))(v85, v62, v5);
        v93 = v51;
        sub_8EF0(v62, &qword_C67D8);
        v61 = v89;
        sub_8F9B0();
        v66 = *(v59 + 8);
        v65 = v59 + 8;
        v64 = v66;
        (v66)(v63, v5);
        v67 = v90;
        v68 = v88;
        if ((*(v90 + 48))(v61, 1, v88) != 1)
        {
          v87 = *(v67 + 32);
          v87(v86, v61, v68);
          v69 = sub_90550();
          v95 = v64;
          v70 = v69;
          [v93 setActionName:v69];

          v71 = v84;
          (*(v67 + 16))(v84, v86, v68);
          v72 = (*(v67 + 80) + 16) & ~*(v67 + 80);
          v73 = (v83 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
          v89 = v21;
          v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
          v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
          v98 = v65;
          v76 = swift_allocObject();
          v87((v76 + v72), v71, v68);
          *(v76 + v73) = v94;
          v77 = (v76 + v74);
          v78 = v96;
          *v77 = v92;
          v77[1] = v78;
          v79 = (v76 + v75);
          v80 = (v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v79 = 0;
          v79[1] = 0;
          *v80 = 0;
          v80[1] = 0;
          type metadata accessor for EntryViewModel();

          v81 = v93;
          sub_90A00();

          (*(v67 + 8))(v86, v68);
          v95(v91, v97);
          sub_8EF0(v99, &qword_C67D8);
          result = (*(v82 + 8))(v100, v89);
          goto LABEL_28;
        }

        (v64)(v60, v5);
        sub_8EF0(v52, &qword_C67D8);
        (*(v82 + 8))(v100, v21);
      }

      v56 = &qword_C7D58;
      v55 = v61;
    }

    result = sub_8EF0(v55, v56);
  }

  else
  {

    sub_8EF0(v52, &qword_C67D8);
    result = (*(v22 + 8))(v100, v21);
  }

LABEL_28:
  *(v101 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_textChanged) = 1;
  return result;
}

void sub_6A46C(id a1)
{
  v2 = v1;
  v4 = sub_3A90(&qword_C7D58);
  __chkstk_darwin(v4 - 8);
  v86 = v79 - v5;
  v87 = sub_8F990();
  v88 = *(v87 - 8);
  v6 = __chkstk_darwin(v87);
  v84 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v85 = v79 - v8;
  v9 = sub_8FA20();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v93 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = v79 - v13;
  v14 = sub_3A90(&qword_C67D8);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v96 = (v79 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = v79 - v20;
  __chkstk_darwin(v19);
  v99 = v79 - v22;
  v23 = sub_3A90(&qword_C7D60);
  v101 = *(v23 - 8);
  v102 = v23;
  v24 = __chkstk_darwin(v23);
  v89 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v100 = v79 - v26;
  v27 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager;
  v28 = *(v1 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_undoManager);
  v98 = v10;
  if (v28)
  {
    v29 = OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity;
    v30 = *&v28[OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity];
    v31 = *(v30 + 24);
    v10 = v28;
    if (v31 != 1)
    {
      sub_3E640();
      v30 = *&v28[v29];
      v32 = *(v30 + 24);
      *(v30 + 24) = 1;
      if (v32 != 1)
      {
        *(v30 + 16) = 0;
      }
    }

    v33 = *(v30 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      __break(1u);
      goto LABEL_34;
    }

    *(v30 + 16) = v35;

    v10 = v98;
  }

  v94 = sub_23BBC(&off_B3800);
  if (qword_C3A00 != -1)
  {
    swift_once();
  }

  v28 = *algn_D0538;
  v90 = qword_D0530;
  (*(v101 + 16))(v100, a1, v102);
  v36 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v97 = v36;
  sub_17DF4(v2 + v36, v99, &qword_C67D8);
  v37 = *(v2 + v27);
  v91 = v28;
  if (v37)
  {
    v38 = qword_C3A48;
    a1 = v37;
    if (v38 == -1)
    {
LABEL_11:
      v39 = sub_900D0();
      sub_7FF0(v39, qword_C7798);

      v40 = sub_900B0();
      v41 = sub_90A60();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v9;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103[0] = v44;
        *v43 = 136315138;

        v45 = sub_76D20(v90, v28, v103);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_0, v40, v41, "undoable (%s)", v43, 0xCu);
        sub_7FA4(v44);

        v9 = v42;
        v10 = v98;
      }

      if (![a1 groupingLevel])
      {
        [a1 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_34:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v46 = sub_66A1C();
  v47 = *(v10 + 6);
  if (!v47(v48, 1, v9))
  {
    sub_8F9F0();
  }

  (v46)(v103, 0);
  v49 = *(v2 + v27);
  v50 = v99;
  v51 = v96;
  if (!v49)
  {

    sub_8EF0(v50, &qword_C67D8);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_22;
  }

  sub_17DF4(v99, v21, &qword_C67D8);
  if (v47(v21, 1, v9) == 1)
  {

    sub_8EF0(v50, &qword_C67D8);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_8EF0(v21, &qword_C67D8);
LABEL_22:
    v53 = v95;
    v54 = v97;
    goto LABEL_28;
  }

  v55 = v92;
  (*(v10 + 4))(v92, v21, v9);
  v54 = v97;
  sub_17DF4(v2 + v97, v51, &qword_C67D8);
  if (v47(v51, 1, v9))
  {

    (*(v10 + 1))(v55, v9);
    sub_8EF0(v50, &qword_C67D8);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_8EF0(v51, &qword_C67D8);
    v56 = v86;
    (*(v88 + 56))(v86, 1, 1, v87);
LABEL_27:
    v53 = v95;
    sub_8EF0(v56, &qword_C7D58);
    goto LABEL_28;
  }

  v57 = v93;
  (*(v10 + 2))(v93, v51, v9);
  v82 = v49;
  sub_8EF0(v51, &qword_C67D8);
  v56 = v86;
  sub_8F9B0();
  v96 = *(v10 + 1);
  v96(v57, v9);
  v58 = v88;
  v59 = v87;
  if ((*(v88 + 48))(v56, 1, v87) == 1)
  {

    v96(v92, v9);
    sub_8EF0(v99, &qword_C67D8);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_27;
  }

  v66 = *(v58 + 32);
  v79[1] = v58 + 32;
  v80 = v66;
  v66(v85, v56, v59);
  v67 = sub_90550();
  v81 = v10 + 8;
  v68 = v67;
  [v82 setActionName:v67];

  (*(v58 + 16))(v84, v85, v59);
  v69 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v70 = (v83 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = v9;
  v73 = swift_allocObject();
  v80(v73 + v69, v84, v59);
  *(v73 + v70) = v94;
  v74 = (v73 + v71);
  v75 = v91;
  *v74 = v90;
  v74[1] = v75;
  v76 = (v73 + v72);
  v77 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = v86;
  v54 = v97;
  v10 = v98;
  *v76 = 0;
  v76[1] = 0;
  *v77 = 0;
  v77[1] = 0;
  type metadata accessor for EntryViewModel();

  v78 = v82;
  sub_90A00();

  (*(v88 + 8))(v85, v59);
  v96(v92, v9);
  sub_8EF0(v99, &qword_C67D8);
  v52 = *(v101 + 8);
  v52(v100, v102);
  v53 = v95;
LABEL_28:
  sub_17DF4(v2 + v54, v53, &qword_C67D8);
  if (v47(v53, 1, v9))
  {
    sub_8EF0(v53, &qword_C67D8);
    v60 = 0;
  }

  else
  {
    v61 = v93;
    (*(v10 + 2))(v93, v53, v9);
    sub_8EF0(v53, &qword_C67D8);
    v62 = v89;
    sub_8FA10();
    (*(v10 + 1))(v61, v9);
    v63 = [objc_allocWithZone(UITraitCollection) init];
    v64 = sub_2C544();
    v103[3] = &_s22TitleAttributeProviderVN;
    v103[4] = v64;
    sub_4F01C(v103);
    sub_6B174(&qword_C7D68, &type metadata accessor for MergeableTitleAttributeScope);
    v65 = v102;
    v60 = sub_90350();

    sub_7FA4(v103);
    v52(v62, v65);
  }

  sub_67640(v60);

  *(v2 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_textChanged) = 1;
}

uint64_t sub_6B174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6B1BC(double *a1, double a2, double a3)
{
  v7 = *v3;
  sub_91180();
  sub_3F058(a2, a3);
  v8 = sub_911D0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2 && v12[1] == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v12;
    a3 = v12[1];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_6CD54(v10, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_6B2D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  sub_91180();
  v21 = v4;
  sub_8F350();
  sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
  v9 = a2;
  sub_90470();
  v10 = sub_911D0();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_39BDC(*(v8 + 48) + v14 * v12, v7);
      v15 = sub_8F320();
      sub_39C94(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_39C94(a2);
    sub_39BDC(*(v8 + 48) + v14 * v12, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_39BDC(v9, v7);
    v22 = *v16;
    sub_6CEBC(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    sub_39B78(v9, v20);
    return 1;
  }
}

uint64_t sub_6B50C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_8F350();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
  v33 = a2;
  v11 = sub_90460();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_6B174(&qword_C5808, &type metadata accessor for UUID);
      v21 = sub_904D0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_6D110(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_6B7EC(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_91180();
  sub_91190(a2);
  v6 = sub_911D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_6D3B4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_6B8E4(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_91180();
  sub_4E570(a2);
  sub_90630();

  v6 = sub_911D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_6D514(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    goto LABEL_48;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 1954047348;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x64724F7465737361;
        v10 = 0xED0000676E697265;
        break;
      case 2:
        v11 = 0xD000000000000015;
        v10 = 0x8000000000092880;
        break;
      case 3:
        v10 = 0xE500000000000000;
        v11 = 0x656C746974;
        break;
      case 4:
        v11 = 0x7461447972746E65;
        v10 = 0xE900000000000065;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x6449656C646E7562;
        break;
      case 6:
        v10 = 0xEA00000000006574;
        v11 = 0x6144656C646E7562;
        break;
      case 7:
        v11 = 0x72756F5365746164;
        v10 = 0xEA00000000006563;
        break;
      case 8:
        v10 = 0xE700000000000000;
        v11 = 0x64656767616C66;
        break;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
        break;
      case 0xA:
        v11 = 0xD000000000000013;
        v10 = 0x80000000000928E0;
        break;
      case 0xB:
        v11 = 0xD000000000000011;
        v10 = 0x8000000000092900;
        break;
      case 0xC:
        v10 = 0xE500000000000000;
        v11 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v12 = 0xE400000000000000;
    v13 = 1954047348;
    switch(a2)
    {
      case 1:
        v12 = 0xED0000676E697265;
        if (v11 == 0x64724F7465737361)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      case 2:
        v12 = 0x8000000000092880;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 3:
        v12 = 0xE500000000000000;
        if (v11 != 0x656C746974)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 4:
        v12 = 0xE900000000000065;
        if (v11 != 0x7461447972746E65)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 5:
        v12 = 0xE800000000000000;
        if (v11 != 0x6449656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 6:
        v12 = 0xEA00000000006574;
        if (v11 != 0x6144656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 7:
        v12 = 0xEA00000000006563;
        if (v11 != 0x72756F5365746164)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 8:
        v12 = 0xE700000000000000;
        if (v11 != 0x64656767616C66)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 9:
        v12 = 0xE600000000000000;
        if (v11 != 0x74706D6F7270)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x80000000000928E0;
        goto LABEL_38;
      case 11:
        v12 = 0x8000000000092900;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 12:
        v12 = 0xE500000000000000;
        if (v11 != 0x726568746FLL)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      default:
LABEL_38:
        if (v11 != v13)
        {
          goto LABEL_40;
        }

LABEL_39:
        if (v10 != v12)
        {
LABEL_40:
          v14 = sub_910F0();

          if (v14)
          {
            goto LABEL_47;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_45;
          }

          continue;
        }

LABEL_47:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_48:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_6BDE0()
{
  v1 = *v0;
  sub_3A90(&qword_C7D90);
  result = sub_90E70();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v1 + 48) + 16 * (v13 | (v4 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_91180();
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      sub_911B0(*&v19);
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      sub_911B0(*&v20);
      result = sub_911D0();
      v21 = -1 << *(v3 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v3 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v3 + 16);
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v4 >= v9)
      {
        break;
      }

      v15 = v5[v4];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v1 + 32);
    if (v28 >= 64)
    {
      bzero((v1 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v28;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_6C060()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_3A90(&qword_C7D98);
  result = sub_90E70();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_39B78(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_91180();
      sub_8F350();
      sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
      sub_90470();
      result = sub_911D0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_39B78(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_6C398()
{
  v1 = v0;
  v35 = sub_8F350();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_3A90(qword_C7DA0);
  result = sub_90E70();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
      result = sub_90460();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_6C6F4()
{
  v1 = v0;
  v2 = *v0;
  sub_3A90(&qword_C5180);
  result = sub_90E70();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_91180();
      sub_91190(v16);
      result = sub_911D0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_6C944()
{
  v1 = v0;
  v2 = *v0;
  sub_3A90(&qword_C7D88);
  v3 = sub_90E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_91180();
      sub_90630();

      v12 = sub_911D0();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x6CD20);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_6CD54(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_6BDE0();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      sub_6DA6C();
      result = v9;
      goto LABEL_15;
    }

    sub_6E0FC();
  }

  v10 = *v4;
  sub_91180();
  sub_3F058(a3, a4);
  v11 = sub_911D0();
  v12 = -1 << *(v10 + 32);
  result = v11 & ~v12;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * result);
      if (*v14 == a3 && v14[1] == a4)
      {
        goto LABEL_18;
      }

      result = (result + 1) & v13;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_15:
  v16 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v17 = (*(v16 + 48) + 16 * result);
  *v17 = a3;
  v17[1] = a4;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_91110();
  __break(1u);
  return result;
}

uint64_t sub_6CEBC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_6C060();
  }

  else
  {
    if (v11 > v10)
    {
      sub_6DBB0();
      goto LABEL_12;
    }

    sub_6E340();
  }

  v12 = *v3;
  sub_91180();
  sub_8F350();
  sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
  sub_90470();
  v13 = sub_911D0();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_39BDC(*(v12 + 48) + v16 * a2, v9);
      v17 = sub_8F320();
      sub_39C94(v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_39B78(a1, *(v18 + 48) + *(v25 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_91110();
  __break(1u);
  return result;
}

uint64_t sub_6D110(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_8F350();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_6C398();
  }

  else
  {
    if (v11 > v10)
    {
      sub_6DD94();
      goto LABEL_12;
    }

    sub_6E648();
  }

  v12 = *v3;
  sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
  v13 = sub_90460();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_6B174(&qword_C5808, &type metadata accessor for UUID);
      v21 = sub_904D0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_91110();
  __break(1u);
  return result;
}

Swift::Int sub_6D3B4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_6C6F4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_6DFCC(&qword_C5180);
      a2 = v7;
      goto LABEL_12;
    }

    sub_6E964();
  }

  v8 = *v3;
  sub_91180();
  sub_91190(v4);
  result = sub_911D0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_91110();
  __break(1u);
  return result;
}

Swift::Int sub_6D514(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_6C944();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_6DFCC(&qword_C7D88);
        goto LABEL_52;
      }

      sub_6EB84();
    }

    v9 = *v3;
    sub_91180();
    sub_4E570(v6);
    sub_90630();

    result = sub_911D0();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE400000000000000;
        v13 = 1954047348;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0x64724F7465737361;
            v12 = 0xED0000676E697265;
            break;
          case 2:
            v13 = 0xD000000000000015;
            v12 = 0x8000000000092880;
            break;
          case 3:
            v12 = 0xE500000000000000;
            v13 = 0x656C746974;
            break;
          case 4:
            v13 = 0x7461447972746E65;
            v12 = 0xE900000000000065;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x6449656C646E7562;
            break;
          case 6:
            v12 = 0xEA00000000006574;
            v13 = 0x6144656C646E7562;
            break;
          case 7:
            v13 = 0x72756F5365746164;
            v12 = 0xEA00000000006563;
            break;
          case 8:
            v12 = 0xE700000000000000;
            v13 = 0x64656767616C66;
            break;
          case 9:
            v12 = 0xE600000000000000;
            v13 = 0x74706D6F7270;
            break;
          case 0xA:
            v13 = 0xD000000000000013;
            v12 = 0x80000000000928E0;
            break;
          case 0xB:
            v13 = 0xD000000000000011;
            v12 = 0x8000000000092900;
            break;
          case 0xC:
            v12 = 0xE500000000000000;
            v13 = 0x726568746FLL;
            break;
          default:
            break;
        }

        v14 = 0xE400000000000000;
        v15 = 1954047348;
        switch(v6)
        {
          case 1:
            v14 = 0xED0000676E697265;
            if (v13 != 0x64724F7465737361)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 2:
            v14 = 0x8000000000092880;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v14 = 0xE500000000000000;
            if (v13 != 0x656C746974)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v14 = 0xE900000000000065;
            if (v13 != 0x7461447972746E65)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v14 = 0xE800000000000000;
            if (v13 != 0x6449656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v14 = 0xEA00000000006574;
            if (v13 != 0x6144656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v14 = 0xEA00000000006563;
            if (v13 != 0x72756F5365746164)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 8:
            v14 = 0xE700000000000000;
            if (v13 != 0x64656767616C66)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v14 = 0xE600000000000000;
            if (v13 != 0x74706D6F7270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v15 = 0xD000000000000013;
            v14 = 0x80000000000928E0;
            goto LABEL_45;
          case 11:
            v14 = 0x8000000000092900;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v14 = 0xE500000000000000;
            if (v13 != 0x726568746FLL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v13 != v15)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v12 == v14)
            {
              goto LABEL_55;
            }

LABEL_47:
            v16 = sub_910F0();

            if (v16)
            {
              goto LABEL_56;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_52:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_55:

LABEL_56:
    sub_91110();
    __break(1u);
    JUMPOUT(0x6DA04);
  }

  *(v17 + 16) = v20;
  return result;
}

void *sub_6DA6C()
{
  v1 = v0;
  sub_3A90(&qword_C7D90);
  v2 = *v0;
  v3 = sub_90E60();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_6DBB0()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A90(&qword_C7D98);
  v6 = *v0;
  v7 = sub_90E60();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_39BDC(*(v6 + 48) + v21, v5);
        result = sub_39B78(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_6DD94()
{
  v1 = v0;
  v2 = sub_8F350();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A90(qword_C7DA0);
  v6 = *v0;
  v7 = sub_90E60();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_6DFCC(uint64_t *a1)
{
  v2 = v1;
  sub_3A90(a1);
  v3 = *v1;
  v4 = sub_90E60();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_6E0FC()
{
  v1 = *v0;
  sub_3A90(&qword_C7D90);
  result = sub_90E70();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v15 = (*(v1 + 48) + 16 * (v12 | (v4 << 6)));
      v16 = *v15;
      v17 = v15[1];
      sub_91180();
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      sub_911B0(*&v18);
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      sub_911B0(*&v19);
      result = sub_911D0();
      v20 = -1 << *(v3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v9 + 8 * v22);
          if (v26 != -1)
          {
            v10 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v10 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v3 + 48) + 16 * v10);
      *v11 = v16;
      v11[1] = v17;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_30;
      }

      v14 = *(v1 + 56 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v7 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_6E340()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_3A90(&qword_C7D98);
  result = sub_90E70();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_39BDC(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_91180();
      sub_8F350();
      sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
      sub_90470();
      result = sub_911D0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_39B78(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_6E648()
{
  v1 = v0;
  v32 = sub_8F350();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_3A90(qword_C7DA0);
  v6 = sub_90E70();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_6B174(&qword_C5AD8, &type metadata accessor for UUID);
      result = sub_90460();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_6E964()
{
  v1 = v0;
  v2 = *v0;
  sub_3A90(&qword_C5180);
  result = sub_90E70();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_91180();
      sub_91190(v15);
      result = sub_911D0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_6EB84()
{
  v1 = v0;
  v2 = *v0;
  sub_3A90(&qword_C7D88);
  v3 = sub_90E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_91180();
      sub_90630();

      v12 = sub_911D0();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x6EF30);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_6EF6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6EFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6F024()
{
  v1 = sub_8F990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_6F114(uint64_t a1)
{
  v3 = *(sub_8F990() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_6865C(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_6F1E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_3D20(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_6F2B4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_6F320()
{
  v0 = sub_8F930();
  sub_8F9C(v0, qword_D06E8);
  sub_7FF0(v0, qword_D06E8);
  return sub_8F920();
}

NSString sub_6F36C()
{
  result = sub_90550();
  qword_D0700 = result;
  return result;
}

uint64_t type metadata accessor for CanvasContentInputType()
{
  result = qword_C7E98;
  if (!qword_C7E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6F3F0()
{
  sub_6F464();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_6F464()
{
  if (!qword_C7EA8)
  {
    sub_31BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_C7EA8);
    }
  }
}

uint64_t sub_6F4BC(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_3A90(&qword_C8080);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_3A90(&qword_C8088);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_3A90(&qword_C8090);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_FCAC(a1, a1[3]);
  sub_73AA0();
  sub_91210();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_73AF4();
    sub_91060();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_73B48();
    sub_91060();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_6F784@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_6F7C0(uint64_t a1)
{
  v2 = sub_73AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6F7FC(uint64_t a1)
{
  v2 = sub_73AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6F838()
{
  if (*v0)
  {
    return 2036625250;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_6F868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_910F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_910F0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_6F94C(uint64_t a1)
{
  v2 = sub_73AA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6F988(uint64_t a1)
{
  v2 = sub_73AA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6F9C4(uint64_t a1)
{
  v2 = sub_73B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6FA00(uint64_t a1)
{
  v2 = sub_73B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6FA3C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_73664(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_6FA8C()
{
  result = qword_C7ED8;
  if (!qword_C7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7ED8);
  }

  return result;
}

uint64_t sub_6FAE0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0x7055776F6C6C6F66;
    if (a1 != 10)
    {
      v7 = 0x776F6C667265766FLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0x6E6F697461636F6CLL;
    }

    if (a1 == 6)
    {
      v8 = 0x6369506F69647561;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0xD000000000000010;
    v3 = 0x6369506F746F6870;
    if (a1 != 4)
    {
      v3 = 0x69506172656D6163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6472616F6279656BLL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_6FCA4(void *a1)
{
  v2 = sub_3A90(&qword_C7FD0);
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = &v54 - v3;
  v4 = sub_3A90(&qword_C7FD8);
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v83 = &v54 - v5;
  v6 = sub_3A90(&qword_C7FE0);
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v54 - v7;
  v8 = sub_3A90(&qword_C7FE8);
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v54 - v9;
  v10 = sub_3A90(&qword_C7FF0);
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v74 = sub_3A90(&qword_C7FF8);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v54 - v12;
  v70 = sub_3A90(&qword_C8000);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v54 - v13;
  v65 = sub_3A90(&qword_C8008);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v54 - v14;
  v68 = sub_3A90(&qword_C8010);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v54 - v15;
  v16 = sub_3A90(&qword_C57E0);
  __chkstk_darwin(v16 - 8);
  v61 = &v54 - v17;
  v60 = sub_3A90(&qword_C8018);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v54 - v18;
  v58 = sub_3A90(&qword_C8020);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v54 - v19;
  v21 = sub_3A90(&qword_C8028);
  v55 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3A90(&qword_C8030);
  v28 = *(v27 - 8);
  v91 = v27;
  v92 = v28;
  __chkstk_darwin(v27);
  v30 = &v54 - v29;
  sub_FCAC(a1, a1[3]);
  sub_72A68();
  v90 = v30;
  sub_91210();
  sub_72994(v89, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v103 = 9;
        sub_72BC8();
        v37 = v80;
        v38 = v90;
        v39 = v91;
        sub_91060();
        v41 = v81;
        v40 = v82;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v104 = 10;
        sub_72B74();
        v37 = v83;
        v38 = v90;
        v39 = v91;
        sub_91060();
        v41 = v84;
        v40 = v85;
      }

      else
      {
        v105 = 11;
        sub_72ABC();
        v37 = v86;
        v38 = v90;
        v39 = v91;
        sub_91060();
        v41 = v87;
        v40 = v88;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v99 = 5;
        sub_72D18();
        v48 = v66;
        v38 = v90;
        v39 = v91;
        sub_91060();
        (*(v69 + 8))(v48, v70);
        return (*(v92 + 8))(v38, v39);
      }

      if (EnumCaseMultiPayload == 7)
      {
        v101 = 7;
        sub_72C70();
        v37 = v73;
        v38 = v90;
        v39 = v91;
        sub_91060();
        v41 = v75;
        v40 = v76;
      }

      else
      {
        v102 = 8;
        sub_72C1C();
        v37 = v77;
        v38 = v90;
        v39 = v91;
        sub_91060();
        v41 = v78;
        v40 = v79;
      }
    }

    (*(v41 + 8))(v37, v40);
    return (*(v92 + 8))(v38, v39);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v93 = 0;
      sub_72F10();
      v50 = v90;
      v49 = v91;
      sub_91060();
      (*(v55 + 8))(v23, v21);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v96 = 2;
        sub_72E14();
        v42 = v56;
        v43 = v90;
        v44 = v91;
        sub_91060();
        (*(v59 + 8))(v42, v60);
        return (*(v92 + 8))(v43, v44);
      }

      v98 = 4;
      sub_72D6C();
      v53 = v62;
      v50 = v90;
      v49 = v91;
      sub_91060();
      (*(v63 + 8))(v53, v65);
    }

    return (*(v92 + 8))(v50, v49);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v32 = v61;
        sub_4EA70(v26, v61);
        v97 = 3;
        sub_72DC0();
        v33 = v64;
        v35 = v90;
        v34 = v91;
        sub_91060();
        sub_8F350();
        sub_7361C(&qword_C8038, &type metadata accessor for UUID);
        v36 = v68;
        sub_91070();
        (*(v67 + 8))(v33, v36);
        sub_8EF0(v32, &qword_C57E0);
      }

      else
      {
        v100 = 6;
        sub_72CC4();
        v51 = v71;
        v35 = v90;
        v34 = v91;
        sub_91060();
        v52 = v74;
        sub_91080();
        (*(v72 + 8))(v51, v52);
      }
    }

    else
    {
      v46 = *v26;
      v95 = 1;
      sub_72E68();
      v35 = v90;
      v34 = v91;
      sub_91060();
      v94 = v46;
      sub_72F64();
      v47 = v58;
      sub_91090();
      (*(v57 + 8))(v20, v47);
    }

    return (*(v92 + 8))(v35, v34);
  }
}

void sub_70A00()
{
  v1 = sub_8F350();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C57E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72994(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v15 = 9;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v15 = 10;
      }

      else
      {
        v15 = 11;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v15 = 5;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v15 = 7;
    }

    else
    {
      v15 = 8;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = *v13;
    sub_91190(1uLL);
    v15 = v16;
LABEL_25:
    sub_91190(v15);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_4EA70(v13, v10);
    sub_91190(3uLL);
    sub_729F8(v10, v8);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      sub_911A0(0);
    }

    else
    {
      (*(v2 + 32))(v4, v8, v1);
      sub_911A0(1u);
      sub_7361C(&qword_C5AD8, &type metadata accessor for UUID);
      sub_90470();
      (*(v2 + 8))(v4, v1);
    }

    sub_8EF0(v10, &qword_C57E0);
  }

  else
  {
    v17 = *v13;
    sub_91190(6uLL);
    sub_911A0(v17);
  }
}

uint64_t sub_70D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v114 = sub_3A90(&qword_C7EE8);
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v123 = &v85 - v3;
  v113 = sub_3A90(&qword_C7EF0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v122 = &v85 - v4;
  v111 = sub_3A90(&qword_C7EF8);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v119 = &v85 - v5;
  v109 = sub_3A90(&qword_C7F00);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v121 = &v85 - v6;
  v107 = sub_3A90(&qword_C7F08);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v120 = &v85 - v7;
  v105 = sub_3A90(&qword_C7F10);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v126 = &v85 - v8;
  v103 = sub_3A90(&qword_C7F18);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v118 = &v85 - v9;
  v100 = sub_3A90(&qword_C7F20);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v117 = &v85 - v10;
  v99 = sub_3A90(&qword_C7F28);
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v125 = &v85 - v11;
  v97 = sub_3A90(&qword_C7F30);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v115 = &v85 - v12;
  v95 = sub_3A90(&qword_C7F38);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v116 = &v85 - v13;
  v92 = sub_3A90(&qword_C7F40);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v124 = &v85 - v14;
  v15 = sub_3A90(&qword_C7F48);
  v129 = *(v15 - 8);
  v130 = v15;
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = type metadata accessor for CanvasContentInputType();
  v19 = __chkstk_darwin(v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v85 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v85 - v26;
  __chkstk_darwin(v25);
  v29 = &v85 - v28;
  v30 = a1[3];
  v132 = a1;
  sub_FCAC(a1, v30);
  sub_72A68();
  v31 = v131;
  sub_91200();
  if (!v31)
  {
    v86 = v27;
    v87 = v21;
    v32 = v124;
    v88 = v24;
    v34 = v125;
    v33 = v126;
    v90 = 0;
    v35 = v127;
    v91 = v18;
    v89 = v29;
    v36 = v128;
    v131 = v17;
    v37 = sub_91050();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 12))
    {
      v44 = sub_90EE0();
      swift_allocError();
      v46 = v45;
      sub_3A90(&qword_C7F58);
      *v46 = v91;
      v48 = v130;
      v47 = v131;
      sub_91010();
      sub_90ED0();
      (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
      swift_willThrow();
      goto LABEL_11;
    }

    if (*(v37 + 32) <= 5u)
    {
      if (*(v37 + 32) <= 2u)
      {
        v39 = v90;
        if (*(v37 + 32))
        {
          v127 = v37;
          v40 = v130;
          if (v38 == 1)
          {
            v135 = 1;
            sub_72E68();
            v41 = v116;
            v42 = v131;
            sub_91000();
            v43 = v129;
            if (v39)
            {
              (*(v129 + 8))(v42, v40);
LABEL_12:
              swift_unknownObjectRelease();
              return sub_7FA4(v132);
            }

            sub_72EBC();
            v80 = v95;
            sub_91040();
            (*(v94 + 8))(v41, v80);
            (*(v43 + 8))(v42, v40);
            swift_unknownObjectRelease();
            v83 = v86;
            *v86 = v134;
            goto LABEL_50;
          }

          v136 = 2;
          sub_72E14();
          v73 = v115;
          v74 = v131;
          sub_91000();
          v75 = v129;
          if (v39)
          {
            (*(v129 + 8))(v74, v40);
            goto LABEL_12;
          }

          (*(v96 + 8))(v73, v97);
          (*(v75 + 8))(v74, v40);
          swift_unknownObjectRelease();
          v56 = v89;
LABEL_46:
          swift_storeEnumTagMultiPayload();
LABEL_52:
          v53 = v36;
          goto LABEL_53;
        }

        v133 = 0;
        sub_72F10();
        v48 = v130;
        v47 = v131;
        sub_91000();
        if (!v39)
        {
          (*(v93 + 8))(v32, v92);
          (*(v129 + 8))(v47, v48);
          swift_unknownObjectRelease();
          v56 = v89;
          goto LABEL_46;
        }

LABEL_11:
        (*(v129 + 8))(v47, v48);
        goto LABEL_12;
      }

      v57 = v90;
      if (v38 != 3)
      {
        v58 = v129;
        v59 = v131;
        if (v38 == 4)
        {
          v138 = 4;
          sub_72D6C();
          v60 = v117;
          v61 = v130;
          sub_91000();
          if (!v57)
          {
            v53 = v36;
            (*(v98 + 8))(v60, v100);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        else
        {
          v139 = 5;
          sub_72D18();
          v77 = v118;
          v61 = v130;
          sub_91000();
          if (!v57)
          {
            v53 = v36;
            (*(v102 + 8))(v77, v103);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        (*(v58 + 8))(v59, v61);
        goto LABEL_12;
      }

      v137 = 3;
      sub_72DC0();
      v68 = v34;
      v63 = v130;
      v52 = v131;
      sub_91000();
      v51 = v129;
      if (!v57)
      {
        sub_8F350();
        sub_7361C(&qword_C7FA8, &type metadata accessor for UUID);
        v69 = v88;
        v70 = v99;
        sub_91020();
        (*(v101 + 8))(v68, v70);
        (*(v51 + 8))(v52, v130);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v84 = v69;
LABEL_51:
        v56 = v89;
        sub_72B10(v84, v89);
        goto LABEL_52;
      }

LABEL_34:
      (*(v51 + 8))(v52, v63);
      goto LABEL_12;
    }

    v51 = v129;
    v50 = v130;
    v52 = v131;
    if (*(v37 + 32) <= 8u)
    {
      if (v38 == 6)
      {
        v140 = 6;
        sub_72CC4();
        v65 = v33;
        v63 = v50;
        v66 = v90;
        sub_91000();
        if (!v66)
        {
          v67 = v105;
          v81 = sub_91030();
          (*(v104 + 8))(v65, v67);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v82 = v81 & 1;
          v83 = v87;
          *v87 = v82;
LABEL_50:
          swift_storeEnumTagMultiPayload();
          v84 = v83;
          goto LABEL_51;
        }

        goto LABEL_34;
      }

      v53 = v36;
      v54 = v90;
      if (v38 == 7)
      {
        v141 = 7;
        sub_72C70();
        v55 = v120;
        sub_91000();
        if (!v54)
        {
          (*(v106 + 8))(v55, v107);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      else
      {
        v142 = 8;
        sub_72C1C();
        v76 = v121;
        sub_91000();
        if (!v54)
        {
          (*(v108 + 8))(v76, v109);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      (*(v51 + 8))(v52, v130);
      goto LABEL_12;
    }

    v53 = v36;
    if (v38 == 9)
    {
      v143 = 9;
      sub_72BC8();
      v71 = v119;
      v63 = v50;
      v72 = v90;
      sub_91000();
      if (!v72)
      {
        (*(v110 + 8))(v71, v111);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (v38 == 10)
    {
      v144 = 10;
      sub_72B74();
      v62 = v122;
      v63 = v50;
      v64 = v90;
      sub_91000();
      if (!v64)
      {
        (*(v112 + 8))(v62, v113);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    v145 = 11;
    sub_72ABC();
    v78 = v123;
    v79 = v90;
    sub_91000();
    if (v79)
    {
      (*(v51 + 8))(v52, v50);
      swift_unknownObjectRelease();
      return sub_7FA4(v132);
    }

    (*(v35 + 8))(v78, v114);
    (*(v51 + 8))(v52, v50);
    swift_unknownObjectRelease();
    v56 = v89;
    swift_storeEnumTagMultiPayload();
    v53 = v36;
LABEL_53:
    sub_72B10(v56, v53);
  }

  return sub_7FA4(v132);
}

uint64_t sub_72108(uint64_t a1)
{
  v2 = sub_72CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72144(uint64_t a1)
{
  v2 = sub_72CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_72180(uint64_t a1)
{
  v2 = sub_72D18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_721BC(uint64_t a1)
{
  v2 = sub_72D18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_72200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_74A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_72234(uint64_t a1)
{
  v2 = sub_72A68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72270(uint64_t a1)
{
  v2 = sub_72A68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_722AC(uint64_t a1)
{
  v2 = sub_72E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_722E8(uint64_t a1)
{
  v2 = sub_72E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_72324(uint64_t a1)
{
  v2 = sub_72B74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72360(uint64_t a1)
{
  v2 = sub_72B74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_723A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_910F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_72428(uint64_t a1)
{
  v2 = sub_72E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72464(uint64_t a1)
{
  v2 = sub_72E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_724A0(uint64_t a1)
{
  v2 = sub_72C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_724DC(uint64_t a1)
{
  v2 = sub_72C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_72518(uint64_t a1)
{
  v2 = sub_72F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72554(uint64_t a1)
{
  v2 = sub_72F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_72590(uint64_t a1)
{
  v2 = sub_72ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_725CC(uint64_t a1)
{
  v2 = sub_72ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_72608(uint64_t a1)
{
  v2 = sub_72D6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72644(uint64_t a1)
{
  v2 = sub_72D6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_72680(uint64_t a1)
{
  v2 = sub_72BC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_726BC(uint64_t a1)
{
  v2 = sub_72BC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_726F8(uint64_t a1)
{
  v2 = sub_72C1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72734(uint64_t a1)
{
  v2 = sub_72C1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7278C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000000095BA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_910F0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_72820(uint64_t a1)
{
  v2 = sub_72DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7285C(uint64_t a1)
{
  v2 = sub_72DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_72898()
{
  sub_91180();
  sub_70A00();
  return sub_911D0();
}

Swift::Int sub_728DC()
{
  sub_91180();
  sub_70A00();
  return sub_911D0();
}

uint64_t sub_72994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_729F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C57E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_72A68()
{
  result = qword_C7F50;
  if (!qword_C7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F50);
  }

  return result;
}

unint64_t sub_72ABC()
{
  result = qword_C7F60;
  if (!qword_C7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F60);
  }

  return result;
}

uint64_t sub_72B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_72B74()
{
  result = qword_C7F68;
  if (!qword_C7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F68);
  }

  return result;
}

unint64_t sub_72BC8()
{
  result = qword_C7F70;
  if (!qword_C7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F70);
  }

  return result;
}

unint64_t sub_72C1C()
{
  result = qword_C7F78;
  if (!qword_C7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F78);
  }

  return result;
}

unint64_t sub_72C70()
{
  result = qword_C7F80;
  if (!qword_C7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F80);
  }

  return result;
}

unint64_t sub_72CC4()
{
  result = qword_C7F88;
  if (!qword_C7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F88);
  }

  return result;
}

unint64_t sub_72D18()
{
  result = qword_C7F90;
  if (!qword_C7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F90);
  }

  return result;
}

unint64_t sub_72D6C()
{
  result = qword_C7F98;
  if (!qword_C7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F98);
  }

  return result;
}

unint64_t sub_72DC0()
{
  result = qword_C7FA0;
  if (!qword_C7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7FA0);
  }

  return result;
}

unint64_t sub_72E14()
{
  result = qword_C7FB0;
  if (!qword_C7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7FB0);
  }

  return result;
}

unint64_t sub_72E68()
{
  result = qword_C7FB8;
  if (!qword_C7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7FB8);
  }

  return result;
}

unint64_t sub_72EBC()
{
  result = qword_C7FC0;
  if (!qword_C7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7FC0);
  }

  return result;
}

unint64_t sub_72F10()
{
  result = qword_C7FC8;
  if (!qword_C7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7FC8);
  }

  return result;
}

unint64_t sub_72F64()
{
  result = qword_C8040;
  if (!qword_C8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8040);
  }

  return result;
}

uint64_t sub_72FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_8F350();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C57E0);
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - v7;
  v8 = sub_3A90(&qword_C5800);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_3A90(&qword_C8048);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = *(v21 + 56);
  sub_72994(a1, &v38 - v22);
  sub_72994(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_38;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_38;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_72994(v23, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v8 + 48);
        sub_4EA70(v17, v10);
        sub_4EA70(&v23[v24], &v10[v26]);
        v28 = v40;
        v27 = v41;
        v29 = *(v40 + 48);
        if (v29(v10, 1, v41) == 1)
        {
          if (v29(&v10[v26], 1, v27) == 1)
          {
            sub_8EF0(v10, &qword_C57E0);
LABEL_38:
            sub_735C0(v23);
            v32 = 1;
            return v32 & 1;
          }
        }

        else
        {
          v34 = v39;
          sub_729F8(v10, v39);
          if (v29(&v10[v26], 1, v27) != 1)
          {
            v35 = v38;
            (*(v28 + 32))(v38, &v10[v26], v27);
            sub_7361C(&qword_C5808, &type metadata accessor for UUID);
            v36 = sub_904D0();
            v37 = *(v28 + 8);
            v37(v35, v27);
            v37(v34, v27);
            sub_8EF0(v10, &qword_C57E0);
            if (v36)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          }

          (*(v28 + 8))(v34, v27);
        }

        sub_8EF0(v10, &qword_C5800);
LABEL_46:
        sub_735C0(v23);
        goto LABEL_41;
      }

      sub_8EF0(v17, &qword_C57E0);
LABEL_40:
      sub_8EF0(v23, &qword_C8048);
LABEL_41:
      v32 = 0;
      return v32 & 1;
    }

    sub_72994(v23, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_40;
    }

    v30 = *v14;
  }

  else
  {
    sub_72994(v23, v19);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }

    v30 = *v19;
  }

  v31 = v30 ^ v23[v24];
  sub_735C0(v23);
  v32 = v31 ^ 1;
  return v32 & 1;
}

uint64_t sub_735C0(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7361C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_73664(void *a1)
{
  v24 = sub_3A90(&qword_C8050);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_3A90(&qword_C8058);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_3A90(&qword_C8060);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_FCAC(a1, a1[3]);
  sub_73AA0();
  v10 = v26;
  sub_91200();
  if (v10)
  {
    return sub_7FA4(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_91050();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_90EE0();
    swift_allocError();
    v18 = v17;
    sub_3A90(&qword_C7F58);
    *v18 = &type metadata for CanvasContentInputType.KeyboardFocus;
    sub_91010();
    sub_90ED0();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_7FA4(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_73AF4();
    sub_91000();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_73B48();
    sub_91000();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_7FA4(v26);
  return v27;
}

unint64_t sub_73AA0()
{
  result = qword_C8068;
  if (!qword_C8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8068);
  }

  return result;
}

unint64_t sub_73AF4()
{
  result = qword_C8070;
  if (!qword_C8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8070);
  }

  return result;
}

unint64_t sub_73B48()
{
  result = qword_C8078;
  if (!qword_C8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8078);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasContentInputType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasContentInputType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_73DE8()
{
  result = qword_C8098;
  if (!qword_C8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8098);
  }

  return result;
}

unint64_t sub_73E40()
{
  result = qword_C80A0;
  if (!qword_C80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80A0);
  }

  return result;
}

unint64_t sub_73E98()
{
  result = qword_C80A8;
  if (!qword_C80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80A8);
  }

  return result;
}

unint64_t sub_73EF0()
{
  result = qword_C80B0;
  if (!qword_C80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80B0);
  }

  return result;
}

unint64_t sub_73F48()
{
  result = qword_C80B8;
  if (!qword_C80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80B8);
  }

  return result;
}

unint64_t sub_73FA0()
{
  result = qword_C80C0;
  if (!qword_C80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80C0);
  }

  return result;
}

unint64_t sub_73FF8()
{
  result = qword_C80C8;
  if (!qword_C80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80C8);
  }

  return result;
}

unint64_t sub_74050()
{
  result = qword_C80D0;
  if (!qword_C80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80D0);
  }

  return result;
}

unint64_t sub_740A8()
{
  result = qword_C80D8;
  if (!qword_C80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80D8);
  }

  return result;
}

unint64_t sub_74100()
{
  result = qword_C80E0;
  if (!qword_C80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80E0);
  }

  return result;
}

unint64_t sub_74158()
{
  result = qword_C80E8;
  if (!qword_C80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80E8);
  }

  return result;
}

unint64_t sub_741B0()
{
  result = qword_C80F0;
  if (!qword_C80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80F0);
  }

  return result;
}

unint64_t sub_74208()
{
  result = qword_C80F8;
  if (!qword_C80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C80F8);
  }

  return result;
}

unint64_t sub_74260()
{
  result = qword_C8100;
  if (!qword_C8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8100);
  }

  return result;
}

unint64_t sub_742B8()
{
  result = qword_C8108;
  if (!qword_C8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8108);
  }

  return result;
}

unint64_t sub_74310()
{
  result = qword_C8110;
  if (!qword_C8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8110);
  }

  return result;
}

unint64_t sub_74368()
{
  result = qword_C8118;
  if (!qword_C8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8118);
  }

  return result;
}

unint64_t sub_743C0()
{
  result = qword_C8120;
  if (!qword_C8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8120);
  }

  return result;
}

unint64_t sub_74418()
{
  result = qword_C8128;
  if (!qword_C8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8128);
  }

  return result;
}

unint64_t sub_74470()
{
  result = qword_C8130;
  if (!qword_C8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8130);
  }

  return result;
}

unint64_t sub_744C8()
{
  result = qword_C8138;
  if (!qword_C8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8138);
  }

  return result;
}

unint64_t sub_74520()
{
  result = qword_C8140;
  if (!qword_C8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8140);
  }

  return result;
}

unint64_t sub_74578()
{
  result = qword_C8148;
  if (!qword_C8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8148);
  }

  return result;
}

unint64_t sub_745D0()
{
  result = qword_C8150;
  if (!qword_C8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8150);
  }

  return result;
}

unint64_t sub_74628()
{
  result = qword_C8158;
  if (!qword_C8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8158);
  }

  return result;
}

unint64_t sub_74680()
{
  result = qword_C8160;
  if (!qword_C8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8160);
  }

  return result;
}

unint64_t sub_746D8()
{
  result = qword_C8168;
  if (!qword_C8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8168);
  }

  return result;
}

unint64_t sub_74730()
{
  result = qword_C8170;
  if (!qword_C8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8170);
  }

  return result;
}

unint64_t sub_74788()
{
  result = qword_C8178;
  if (!qword_C8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8178);
  }

  return result;
}

unint64_t sub_747E0()
{
  result = qword_C8180;
  if (!qword_C8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8180);
  }

  return result;
}

unint64_t sub_74838()
{
  result = qword_C8188;
  if (!qword_C8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8188);
  }

  return result;
}

unint64_t sub_74890()
{
  result = qword_C8190;
  if (!qword_C8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8190);
  }

  return result;
}

unint64_t sub_748E8()
{
  result = qword_C8198;
  if (!qword_C8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C8198);
  }

  return result;
}

unint64_t sub_74940()
{
  result = qword_C81A0;
  if (!qword_C81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C81A0);
  }

  return result;
}

unint64_t sub_74998()
{
  result = qword_C81A8;
  if (!qword_C81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C81A8);
  }

  return result;
}

unint64_t sub_749F0()
{
  result = qword_C81B0;
  if (!qword_C81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C81B0);
  }

  return result;
}

unint64_t sub_74A48()
{
  result = qword_C81B8;
  if (!qword_C81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C81B8);
  }

  return result;
}

uint64_t sub_74A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E496F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_910F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000 || (sub_910F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000095B20 == a2 || (sub_910F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000095B40 == a2 || (sub_910F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369506F746F6870 && a2 == 0xEB0000000072656BLL || (sub_910F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69506172656D6163 && a2 == 0xEC00000072656B63 || (sub_910F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369506F69647561 && a2 == 0xEB0000000072656BLL || (sub_910F0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0072656B636950 || (sub_910F0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000095B60 == a2 || (sub_910F0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000095B80 == a2 || (sub_910F0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7055776F6C6C6F66 && a2 == -1192481450101870000 || (sub_910F0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x776F6C667265766FLL && a2 == 0xEC0000006D657449)
  {

    return 11;
  }

  else
  {
    v6 = sub_910F0();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_74EA4()
{
  v1[2] = v0;
  sub_3A90(&qword_C8228);
  v1[3] = swift_task_alloc();
  v2 = sub_909C0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_909E0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_909D0();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_75060, 0, 0);
}

uint64_t sub_75060()
{
  (*(v0[9] + 16))(v0[10], v0[2], v0[8]);
  sub_7851C(&qword_C8230, &type metadata accessor for CSSearchQuery.Results);
  sub_908B0();
  v0[14] = _swiftEmptyArrayStorage;
  v1 = sub_7851C(&qword_C8238, &type metadata accessor for CSSearchQuery.Results.Iterator);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_751C0;
  v3 = v0[11];
  v4 = v0[3];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_751C0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_755B0;
  }

  else
  {
    v3 = sub_752F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_752F4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_8EF0(v3, &qword_C8228);

    v4 = v0[1];
    v5 = v0[14];

    return v4(v5);
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[14];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_17A60(0, *(v11 + 16) + 1, 1, v0[14]);
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_17A60(v12 > 1, v13 + 1, 1, v11);
    }

    v14 = v0[6];
    v15 = v0[4];
    v16 = v0[5];
    (*(v16 + 8))(v0[7], v15);
    *(v11 + 16) = v13 + 1;
    v9(v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v14, v15);
    v0[14] = v11;
    v17 = sub_7851C(&qword_C8238, &type metadata accessor for CSSearchQuery.Results.Iterator);
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_751C0;
    v19 = v0[11];
    v20 = v0[3];

    return dispatch thunk of AsyncIteratorProtocol.next()(v20, v19, v17);
  }
}

uint64_t sub_755B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_75648()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C81C0);
  sub_7FF0(v0, qword_C81C0);
  return sub_900C0();
}

uint64_t sub_7578C(uint64_t a1, void *a2)
{
  v3 = sub_FCAC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_3A90(&unk_C8830);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_759B4(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_75A70;

  return sub_772C8(0, 0, a1);
}

uint64_t sub_75A70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_75CFC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_75DAC;

  return sub_78564(0);
}

uint64_t sub_75DAC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_8EE90();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

void sub_75F10(const char *a1, double a2)
{
  if (qword_C3A60 != -1)
  {
    swift_once();
  }

  v4 = sub_900D0();
  sub_7FF0(v4, qword_C81C0);
  oslog = sub_900B0();
  v5 = sub_90A80();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_3A90(&qword_C5008);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_98740;
    Current = CFAbsoluteTimeGetCurrent();
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = Current - a2;
    v10 = sub_905A0();
    v12 = sub_76D20(v10, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, oslog, v5, a1, v6, 0xCu);
    sub_7FA4(v7);
  }
}

void sub_760C8(uint64_t a1, void *a2)
{
  v4 = sub_3A90(&qword_C8240);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = objc_allocWithZone(CSSearchableIndex);
  v9 = NSFileProtectionCompleteUnlessOpen;
  v10 = sub_90550();
  v11 = sub_90550();
  v12 = [v8 initWithName:v10 protectionClass:v9 bundleIdentifier:v11];

  (*(v5 + 16))(v7, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  aBlock[4] = sub_79040;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7E2E8;
  aBlock[3] = &unk_B6438;
  v15 = _Block_copy(aBlock);

  [a2 searchableIndex:v12 reindexAllSearchableItemsWithAcknowledgementHandler:v15];
  _Block_release(v15);
}

uint64_t sub_76498(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v2[4] = swift_getObjCClassMetadata();
  v4 = a1;

  return _swift_task_switch(sub_76524, 0, 0);
}

uint64_t sub_76524()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_8F060();
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_76624;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_76624()
{

  return _swift_task_switch(sub_7673C, 0, 0);
}

uint64_t sub_7673C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_75F10("SpotlightUtilities.reindexAllSearchableItems completed in %s seconds.", *(v0 + 40));

  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

id sub_7680C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_76864(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_DE1C;

  return v6();
}

uint64_t sub_7694C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_3BC8;

  return v7();
}

uint64_t sub_76A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_3CB58(a3, v23 - v10);
  v12 = sub_90880();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_8EF0(v11, &qword_C8820);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_90870();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_907F0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_90600() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_8EF0(a3, &qword_C8820);

    return v21;
  }

LABEL_8:
  sub_8EF0(a3, &qword_C8820);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_76D20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_76DEC(v11, 0, 0, 1, a1, a2);
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
    sub_7F40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7FA4(v11);
  return v7;
}

unint64_t sub_76DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_76EF8(a5, a6);
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
    result = sub_90F10();
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

double *sub_76EF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_76F44(a1, a2);
  sub_77074(&off_B3340);
  return v3;
}

double *sub_76F44(uint64_t a1, unint64_t a2)
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

  v6 = sub_77160(v5, 0);
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

  result = sub_90F10();
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
        v10 = sub_90650();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_77160(v10, 0);
        result = sub_90E90();
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

uint64_t sub_77074(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_771D4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

double *sub_77160(uint64_t a1, uint64_t a2)
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

  sub_3A90(&qword_C8220);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double *sub_771D4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C8220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_772C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 336) = a3;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  v5 = sub_909C0();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  v6 = sub_909E0();
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_907F0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v3 + 216) = v7;
  *(v3 + 224) = v9;

  return _swift_task_switch(sub_77418, v7, v9);
}

uint64_t sub_77418()
{
  sub_8F060();
  *(v0 + 232) = v1;
  if (qword_C3A60 != -1)
  {
    swift_once();
  }

  v2 = sub_900D0();
  *(v0 + 240) = sub_7FF0(v2, qword_C81C0);
  v3 = sub_900B0();
  v4 = sub_90A80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 336);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_0, v3, v4, "SpotlightUtilities.setDisableSearchInSpotlightFlag disableSearchInSpotlight: %{BOOL}d", v6, 8u);
  }

  v7 = objc_allocWithZone(CSSearchQuery);
  v8 = sub_90550();
  v9 = [v7 initWithQueryString:v8 queryContext:0];
  *(v0 + 248) = v9;

  sub_3A90(&qword_C8200);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_98740;
  *(v0 + 256) = NSFileProtectionCompleteUnlessOpen;
  *(v10 + 32) = NSFileProtectionCompleteUnlessOpen;
  type metadata accessor for FileProtectionType(0);
  v11 = NSFileProtectionCompleteUnlessOpen;
  isa = sub_90730().super.isa;

  [v9 setProtectionClasses:isa];

  sub_909F0();
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_7768C;

  return sub_74EA4();
}

uint64_t sub_7768C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  (*(v3[25] + 8))(v3[26], v3[24]);
  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = sub_781C0;
  }

  else
  {
    v7 = sub_7781C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_7781C()
{

  v1 = sub_900B0();
  v2 = sub_90A80();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 272);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_0, v1, v2, "SpotlightUtilities.setDisableSearchInSpotlightFlag found %ld searchable items", v5, 0xCu);
  }

  else
  {
  }

  v6 = *(v0 + 272);
  v7 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 336)];
  *(v0 + 288) = v7;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = *(v0 + 176);
    v10 = *(v9 + 16);
    v9 += 16;
    v51 = v10;
    v11 = *(v0 + 272) + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = (v9 - 8);
    v13 = _swiftEmptyArrayStorage;
    v50 = *(v9 + 56);
    while (1)
    {
      v14 = *(v0 + 184);
      v15 = *(v0 + 168);
      v51(v14, v11, v15);
      v16 = sub_909B0();
      (*v12)(v14, v15);
      v17 = [v16 attributeSet];
      v18 = [v17 disableSearchInSpotlight];

      if (!v18)
      {
        break;
      }

      sub_2561C(0, &qword_C8218);
      v19 = v7;
      v20 = sub_90CB0();

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_7:
      v11 += v50;
      if (!--v8)
      {

        goto LABEL_17;
      }
    }

    v21 = v7;
LABEL_12:
    v22 = [v16 attributeSet];
    [v22 setDisableSearchInSpotlight:v7];

    [v16 setIsUpdate:1];
    v23 = v16;
    sub_90720();
    if (*(&dword_10 + (*(v0 + 144) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 144) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_90770();
    }

    sub_907A0();

    v13 = *(v0 + 144);
    goto LABEL_7;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_17:
  *(v0 + 296) = v13;
  v24 = sub_900B0();
  v25 = sub_90A80();
  v26 = &_sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF_ptr;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 256);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = objc_allocWithZone(CSSearchableIndex);
    v31 = v27;
    v32 = sub_90550();
    v33 = sub_90550();
    v34 = [v30 initWithName:v32 protectionClass:v31 bundleIdentifier:v33];

    *(v28 + 4) = v34;
    *v29 = v34;
    _os_log_impl(&dword_0, v24, v25, "SpotlightUtilities.setDisableSearchInSpotlightFlag searchableIndex = %@", v28, 0xCu);
    sub_8EF0(v29, &qword_C3FB8);

    v26 = &_sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF_ptr;
  }

  v35 = sub_900B0();
  v36 = sub_90A80();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    if (v13 >> 62)
    {
      v38 = sub_90FA0();
    }

    else
    {
      v38 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    }

    *(v37 + 4) = v38;

    _os_log_impl(&dword_0, v35, v36, "SpotlightUtilities.setDisableSearchInSpotlightFlag updated = %ld items", v37, 0xCu);
  }

  else
  {
  }

  v39 = *(v0 + 256);
  v40 = objc_allocWithZone(v26[404]);
  v41 = v39;
  v42 = sub_90550();
  v43 = sub_90550();
  v44 = [v40 initWithName:v42 protectionClass:v41 bundleIdentifier:v43];
  *(v0 + 304) = v44;

  sub_2561C(0, &qword_C8208);
  isa = sub_90730().super.isa;
  *(v0 + 312) = isa;
  v46 = v41;
  v47 = sub_90550();
  *(v0 + 320) = v47;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_77F08;
  v48 = swift_continuation_init();
  *(v0 + 136) = sub_3A90(&qword_C8210);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_7578C;
  *(v0 + 104) = &unk_B6320;
  *(v0 + 112) = v48;
  [v44 indexSearchableItems:isa deleteSearchableItemsWithIdentifiers:0 clientState:0 clientStateName:0 protectionClass:v46 forBundleID:v47 options:256 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_77F08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {

    v3 = *(v1 + 216);
    v4 = *(v1 + 224);
    v5 = sub_7834C;
  }

  else
  {
    v3 = *(v1 + 216);
    v4 = *(v1 + 224);
    v5 = sub_78020;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_78020()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 256);

  v4 = sub_900B0();
  v5 = sub_90A80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7 >> 62)
    {
      v9 = sub_90FA0();
    }

    else
    {
      v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    v10 = *(v0 + 288);
    v11 = *(v0 + 248);

    *(v8 + 4) = v9;

    _os_log_impl(&dword_0, v4, v5, "SpotlightUtilities.setDisableSearchInSpotlightFlag update of %ld items was successful", v8, 0xCu);
  }

  else
  {
    v10 = *(v0 + 288);
    v11 = *(v0 + 248);
    swift_bridgeObjectRelease_n();
  }

  sub_75F10("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_781C0()
{
  swift_errorRetain();
  v1 = sub_900B0();
  v2 = sub_90A70();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "SpotlightUtilities.setDisableSearchInSpotlightFlag error %@", v3, 0xCu);
    sub_8EF0(v4, &qword_C3FB8);
  }

  else
  {
  }

  sub_75F10("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_7834C()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  swift_willThrow();

  swift_errorRetain();
  v7 = sub_900B0();
  v8 = sub_90A70();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, "SpotlightUtilities.setDisableSearchInSpotlightFlag error %@", v9, 0xCu);
    sub_8EF0(v10, &qword_C3FB8);
  }

  else
  {
  }

  sub_75F10("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_7851C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_78564(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v2 = sub_907F0();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  *(v1 + 144) = v2;
  *(v1 + 152) = v4;

  return _swift_task_switch(sub_785F0, v2, v4);
}

uint64_t sub_785F0()
{
  sub_8F060();
  v0[20] = v1;
  v2 = objc_allocWithZone(CSSearchableIndex);
  v3 = NSFileProtectionCompleteUnlessOpen;
  v4 = sub_90550();
  v5 = sub_90550();
  v6 = [v2 initWithName:v4 protectionClass:v3 bundleIdentifier:v5];
  v0[21] = v6;

  isa = sub_90730().super.isa;
  v0[22] = isa;
  v0[2] = v0;
  v0[3] = sub_787C0;
  v8 = swift_continuation_init();
  v0[17] = sub_3A90(&qword_C8210);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_7578C;
  v0[13] = &unk_B64D8;
  v0[14] = v8;
  [v6 deleteSearchableItemsWithDomainIdentifiers:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_787C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);
  if (v2)
  {
    v5 = sub_7896C;
  }

  else
  {
    v5 = sub_788F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_788F0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  sub_75F10("SpotlightUtilities.deleteAllSearchableItems completed in %s seconds.", v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_7896C()
{
  v1 = *(v0 + 22);
  v2 = *(v0 + 21);
  v3 = v0[20];
  swift_willThrow();

  sub_75F10("SpotlightUtilities.deleteAllSearchableItems completed in %s seconds.", v3);
  v4 = *(v0 + 1);

  return v4();
}

uint64_t sub_78B78()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_78BB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_DE1C;

  return sub_76498(v2, v3);
}

uint64_t sub_78C6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_DE1C;

  return sub_76864(v2, v3, v4);
}

uint64_t sub_78D30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_DE1C;

  return sub_7694C(a1, v4, v5, v6);
}

uint64_t sub_78DFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_78E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_DE1C;

  return sub_3AA30(a1, v4);
}

uint64_t sub_78EEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3BC8;

  return sub_3AA30(a1, v4);
}

uint64_t sub_78FAC()
{
  v1 = sub_3A90(&qword_C8240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_790AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_790C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_790FC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_DE1C;

  return sub_75CFC(v2);
}

uint64_t sub_791A8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_791E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_3BC8;

  return sub_759B4(v2, v3);
}

uint64_t sub_79294()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_792F4(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = [v4 superview];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v4 bottomAnchor];
  v11 = [v9 bottomAnchor];
  v12 = [v10 *off_B6578[a1]];

  if (v12)
  {
    [v12 setConstant:-a3];
    if (a2)
    {
      [v12 setActive:1];
    }
  }

  else if (a2)
  {
    v12 = 0;
  }

  return v12;
}

id sub_79420(int a1)
{
  v2 = v1;
  if (a1 && (v10 = v1, v4 = [v1 fontDescriptor], v5 = objc_msgSend(v10, "fontDescriptor"), v6 = objc_msgSend(v5, "symbolicTraits"), v5, v7 = objc_msgSend(v4, "fontDescriptorWithSymbolicTraits:", v6 | a1), v4, v2 = v10, v7))
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

    return v8;
  }

  else
  {

    return v2;
  }
}

id sub_79528(double a1)
{
  v2 = v1;
  v4 = [v1 fontDescriptor];
  v5 = [v4 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_7B378();
  v6 = sub_90450();

  v28 = v6;
  if (*(v6 + 16) && (v7 = sub_79E5C(UIFontDescriptorTraitsAttribute), (v8 & 1) != 0) && (sub_7F40(*(v6 + 56) + 32 * v7, &v26), sub_3A90(&qword_C82B0), (swift_dynamicCast() & 1) != 0))
  {
    v9 = *&v25[0];
  }

  else
  {
    v9 = sub_7AF60(_swiftEmptyArrayStorage, &qword_C82B8, &unk_9CDB0, &qword_C82C0);
  }

  type metadata accessor for Weight(0);
  v27 = v10;
  *&v26 = a1;
  sub_C8E4(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_86090(v25, UIFontWeightTrait, isUniquelyReferenced_nonNull_native);
  sub_79FC0(UIFontDescriptorNameAttribute, sub_86760, &v26);
  sub_8EF0(&v26, &qword_C5418);
  v27 = sub_3A90(&qword_C82B0);
  *&v26 = v9;
  sub_C8E4(&v26, v25);
  v12 = v28;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_85ED0(v25, UIFontDescriptorTraitsAttribute, v13);
  v28 = v12;
  v14 = [v2 familyName];
  v15 = sub_90590();
  v17 = v16;

  v27 = &type metadata for String;
  *&v26 = v15;
  *(&v26 + 1) = v17;
  sub_C8E4(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_85ED0(v25, UIFontDescriptorFamilyAttribute, v18);
  v19 = objc_allocWithZone(UIFontDescriptor);
  isa = sub_90440().super.isa;
  v21 = [v19 initWithFontAttributes:{isa, v12}];

  [v2 pointSize];
  v23 = [objc_opt_self() fontWithDescriptor:v21 size:v22];

  return v23;
}

id sub_79878@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6 > 1)
  {
    v26 = a3;
    if (v6 == 2)
    {
      v25 = a2[1];
      sub_3A90(&qword_C8248);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_98740;
      *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
      sub_3A90(&qword_C8270);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_98740;
      sub_3A90(&qword_C8278);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_98750;
      v18 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      *(v17 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      v19 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
      *(v17 + 40) = v5;
      *(v17 + 48) = v19;
      *(v17 + 56) = v25;
      v20 = UIFontDescriptorFeatureSettingsAttribute;
      v21 = v18;
      v22 = v19;
      v23 = sub_7AE74(v17);
      swift_setDeallocating();
      sub_3A90(&qword_C8280);
      swift_arrayDestroy();
      *(v16 + 32) = v23;
      *(inited + 64) = sub_3A90(&qword_C8288);
      *(inited + 40) = v16;
      sub_7AF60(inited, &qword_C8298, &unk_9C9F0, &qword_C8268);
      swift_setDeallocating();
      sub_8EF0(inited + 32, &qword_C8268);
      type metadata accessor for AttributeName(0);
      sub_7B378();
      v12.super.isa = sub_90440().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    else
    {
      if (v6 != 3)
      {
        result = [v4 fontDescriptorWithDesign:v5];
        if (!result)
        {
          result = v4;
        }

        goto LABEL_12;
      }

      sub_3A90(&qword_C8248);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_98740;
      *(v7 + 32) = UIFontDescriptorTraitsAttribute;
      sub_3A90(&qword_C8250);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_98740;
      *(v8 + 32) = UIFontWeightTrait;
      *(v8 + 40) = v5;
      v9 = UIFontDescriptorTraitsAttribute;
      v10 = UIFontWeightTrait;
      v11 = sub_7B078(v8);
      swift_setDeallocating();
      sub_8EF0(v8 + 32, &qword_C8258);
      *(v7 + 64) = sub_3A90(&qword_C8260);
      *(v7 + 40) = v11;
      sub_7AF60(v7, &qword_C8298, &unk_9C9F0, &qword_C8268);
      swift_setDeallocating();
      sub_8EF0(v7 + 32, &qword_C8268);
      type metadata accessor for AttributeName(0);
      sub_7B378();
      v12.super.isa = sub_90440().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    v24 = v13;

    result = v24;
LABEL_12:
    a3 = v26;
    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") & ~v5}];
    if (result)
    {
      goto LABEL_13;
    }

LABEL_15:
    result = v4;
    goto LABEL_13;
  }

  result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") | v5}];
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_13:
  *a3 = result;
  return result;
}

unint64_t sub_79CF0(double a1, double a2)
{
  sub_91180();
  sub_3F058(a1, a2);
  v4 = sub_911D0();

  return sub_7A4C4(v4, a1, a2);
}

unint64_t sub_79D64(unsigned __int8 a1)
{
  v2 = sub_32E84();

  return sub_7A53C(a1, v2);
}

unint64_t sub_79DA8(char a1)
{
  sub_91180();
  sub_91190(a1 & 1);
  v2 = sub_911D0();

  return sub_7A7C4(a1 & 1, v2);
}

unint64_t sub_79E14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_90E30(*(v2 + 40));

  return sub_7A834(a1, v4);
}

unint64_t sub_79E5C(uint64_t a1)
{
  sub_90590();
  sub_91180();
  sub_90630();
  v2 = sub_911D0();

  return sub_7A8FC(a1, v2);
}

unint64_t sub_79EEC(uint64_t a1, uint64_t a2)
{
  sub_91180();
  sub_90630();
  v4 = sub_911D0();

  return sub_7AA00(a1, a2, v4);
}

unint64_t sub_79F64(uint64_t a1)
{
  v2 = sub_91170();

  return sub_7AAB8(a1, v2);
}

double sub_79FC0@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v7 = sub_79E5C(a1);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a2();
      v11 = v13;
    }

    sub_C8E4((*(v11 + 56) + 32 * v9), a3);
    sub_7A2FC(v9, v11);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int sub_7A070(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_90DF0() + 1) & ~v5;
    do
    {
      sub_91180();
      sub_90630();

      result = sub_911D0();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_7A2FC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_90DF0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_90590();
      sub_91180();
      v11 = v10;
      sub_90630();
      v12 = sub_911D0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_7A4C4(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_7A53C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xEA00000000006C6CLL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v13 = 0xE500000000000000;
            v12 = 0x6C6C616D73;
          }

          else
          {
            v13 = 0xEA00000000006E65;
            v12 = 0x657263536C6C7566;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0x6D756964656DLL;
          }

          else
          {
            v12 = 0x61546D756964656DLL;
          }

          if (v7 == 4)
          {
            v13 = 0xE600000000000000;
          }

          else
          {
            v13 = 0xEA00000000006C6CLL;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x69576D756964656DLL;
        }

        else
        {
          v8 = 0x656772616CLL;
        }

        if (v7 == 2)
        {
          v9 = 0xEA00000000006564;
        }

        else
        {
          v9 = 0xE500000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x656772614C78;
        }

        else
        {
          v10 = 0x6154656772614C78;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xEA00000000006C6CLL;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 0xEA00000000006E65;
      v15 = 0x657263536C6C7566;
      if (v6 == 6)
      {
        v15 = 0x6C6C616D73;
        v14 = 0xE500000000000000;
      }

      v16 = 0x61546D756964656DLL;
      if (v6 == 4)
      {
        v16 = 0x6D756964656DLL;
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xEA00000000006C6CLL;
      }

      if (v6 <= 5)
      {
        v15 = v16;
        v14 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x69576D756964656DLL;
      }

      else
      {
        v18 = 0x656772616CLL;
      }

      if (v6 == 2)
      {
        v19 = 0xEA00000000006564;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v6)
      {
        v20 = 0x656772614C78;
      }

      else
      {
        v20 = 0x6154656772614C78;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v15;
      v22 = v6 <= 3 ? v19 : v14;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_910F0();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xEA00000000006C6CLL;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}