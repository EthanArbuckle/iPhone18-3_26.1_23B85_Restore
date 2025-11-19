void sub_B37D8(void *a1)
{
  v2 = v1;
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_1B47C4();
    v5 = sub_1B4794();
  }

  v22 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v5];

  v6 = sub_1B4E14();
  v7 = *(v2 + 40);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v8 & 0x8000000000000000) == 0 && v8)
  {
    v9 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v9)
    {
      sub_1B47C4();
      v9 = sub_1B4794();
    }

    v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v9];

    sub_2B0C(&qword_22B2A8, &qword_1C3900);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C35E0;
    v12 = objc_allocWithZone(NSSortDescriptor);
    v13 = sub_1B4794();
    v14 = [v12 initWithKey:v13 ascending:1];

    *(v11 + 32) = v14;
    sub_B7CB0(0, &qword_22B2B0, NSSortDescriptor_ptr);
    isa = sub_1B4AA4().super.isa;

    [v10 setSortDescriptors:isa];

    [v10 setFetchLimit:v8];
    v16 = sub_1B4E24();
    v21 = v16;
    if (v16 >> 62)
    {
      v17 = sub_1B5284();
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
      if (!v17)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v19 = sub_1B50B4();
        }

        else
        {
          v19 = *(v21 + 8 * i + 32);
        }

        v20 = v19;
        [a1 deleteObject:v19];
      }

      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
    return;
  }

LABEL_20:
}

void sub_B3C60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_B64DC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AC00;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlock:v15];
  _Block_release(v15);
}

uint64_t sub_B3E48(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = a3;
  v41 = a2;
  v40 = sub_1B40C4();
  v4 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v38 = (v5 + 8);

  v11 = 0;
  while (v9)
  {
LABEL_12:
    v17 = __clz(__rbit64(v9)) | (v11 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = *(*(a1 + 56) + 16 * v17 + 8);
    type metadata accessor for CachedPersonalizationBookMetadataGenre();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v21 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v21)
    {
      sub_1B47C4();
      v21 = sub_1B4794();
    }

    v22 = [objc_opt_self() insertNewObjectForEntityForName:v21 inManagedObjectContext:{v41, v37}];

    v23 = swift_dynamicCastClass();
    if (v23)
    {
      if (v18 < 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        swift_once();
        goto LABEL_23;
      }

      v12 = v23;
      [v23 setGenreID:v18];
      isa = sub_1B4AA4().super.isa;

      [v12 setPath:isa];

      v14 = v39;
      sub_1B40B4();
      v15.super.isa = sub_1B4034().super.isa;
      (*v38)(v14, v40);
      [v12 setLastAccessDate:v15.super.isa];
    }

    else
    {

      if (qword_2282C0 != -1)
      {
        swift_once();
      }

      v24 = sub_1B4644();
      sub_50E58(v24, qword_260C00);
      v15.super.isa = sub_1B4624();
      v25 = sub_1B4D94();
      if (os_log_type_enabled(v15.super.isa, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v15.super.isa, v25, "Failed to create genre metadata", v26, 2u);
      }
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v16 >= v10)
    {
      break;
    }

    v9 = *(a1 + 64 + 8 * v16);
    ++v11;
    if (v9)
    {
      v11 = v16;
      goto LABEL_12;
    }
  }

  v27 = v41;
  if (([v41 hasChanges] & 1) == 0)
  {
    goto LABEL_26;
  }

  v42 = 0;
  if ([v27 save:&v42])
  {
    v28 = v42;
    goto LABEL_26;
  }

  v29 = v42;
  sub_1B3E64();

  swift_willThrow();
  if (qword_2282C0 != -1)
  {
    goto LABEL_29;
  }

LABEL_23:
  v30 = sub_1B4644();
  sub_50E58(v30, qword_260C00);
  swift_errorRetain();
  v31 = sub_1B4624();
  v32 = sub_1B4D94();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&dword_0, v31, v32, "Failed to save cache insertions %@", v33, 0xCu);
    sub_42F48(v34, &qword_22B250, &qword_1C3850);
  }

  else
  {
  }

LABEL_26:
  v42 = 0;
  sub_2B0C(&qword_22B248, &qword_1C3848);
  return sub_1B4BE4();
}

uint64_t sub_B4380(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return MetadataCache.fetchMetadataFor(bookIDs:audiobookIDs:)(a1, a2);
}

uint64_t sub_B4428(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B9584;

  return MetadataCache.fetchMetadataFor(storeIDs:)(a1);
}

uint64_t sub_B44C0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B9584;

  return MetadataCache.fetchMetadataFor(genreIDs:)(a1);
}

void sub_B4558(char **a1, uint64_t a2)
{
  sub_430C8(a2, v20);
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = v21;
  v7 = [v21 path];
  if (!v7)
  {
    goto LABEL_13;
  }

  v2 = v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_13:
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v20[0] = 0;
  sub_1B4AB4();

  v4 = v20[0];
  v8 = _swiftEmptyArrayStorage;
  if (v20[0])
  {
    v9 = *(v20[0] + 16);
    if (v9)
    {
      v18 = a1;
      v19 = v3;
      v20[0] = _swiftEmptyArrayStorage;
      v2 = v20;
      sub_3741C(0, v9, 0);
      v10 = 32;
      v8 = v20[0];
      while (1)
      {
        v11 = *&v4[v10];
        if (v11 < 0)
        {
          break;
        }

        v20[0] = v8;
        v13 = v8[2];
        v12 = v8[3];
        a1 = (v13 + 1);
        if (v13 >= v12 >> 1)
        {
          v2 = v20;
          sub_3741C((v12 > 1), v13 + 1, 1);
          v8 = v20[0];
        }

        v8[2] = a1;
        v8[v13 + 4] = v11;
        v10 += 8;
        if (!--v9)
        {

          a1 = v18;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_14:
  v14 = [v6 genreID];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v2 = v14;
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v4 = sub_33C6C(0, *(v4 + 2) + 1, 1, v4);
  }

  v16 = *(v4 + 2);
  v15 = *(v4 + 3);
  if (v16 >= v15 >> 1)
  {
    v4 = sub_33C6C((v15 > 1), v16 + 1, 1, v4);
  }

  *(v4 + 2) = v16 + 1;
  v17 = &v4[16 * v16];
  *(v17 + 4) = v2;
  *(v17 + 5) = v8;
  *a1 = v4;
}

void *sub_B478C(void *a1)
{
  v1 = [a1 authors];
  if (v1)
  {
    v2 = v1;
    v4 = 0;
    type metadata accessor for CachedPersonalizationBookMetadataAuthor();
    sub_B9010(&qword_22B2E0, type metadata accessor for CachedPersonalizationBookMetadataAuthor);
    sub_1B4CA4();
  }

  return _swiftEmptySetSingleton;
}

void sub_B48AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 seriesMembership];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 seriesID];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    v7 = [v4 ordinal];
    v8 = [v4 isOrdered];
    v9 = [v4 mappedSeriesID];
    if (v9)
    {
      v10 = [v4 mappedSeriesID];

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_6:
        v10 = 0;
        v11 = 0;
        *a2 = 0;
        *(a2 + 8) = 0;
        v12 = 2;
LABEL_9:
        *(a2 + 16) = v12;
        *(a2 + 24) = v10;
        *(a2 + 32) = v11;
        return;
      }
    }

    else
    {

      v10 = 0;
    }

    v11 = v9 == 0;
    v12 = v8;
    *a2 = v7;
    *(a2 + 8) = v6;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_B49A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_B4EF4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_32F04((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_B4EF4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_B4EF4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_B50E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_B5188(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_B5328(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_B8C20(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_B5328(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = 0;
  if (v4)
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = a3 + 32;
    v9 = *(a4 + 40);
    v10 = ~(-1 << *(a4 + 32));
    while (1)
    {
      v12 = *(v8 + 8 * v6);
      v13 = sub_1B57E4();
      v14 = v13 & v10;
      v15 = (v13 & v10) >> 6;
      v16 = 1 << (v13 & v10);
      if ((v16 & *(v7 + 8 * v15)) != 0)
      {
        while (*(*(a4 + 48) + 8 * v14) != v12)
        {
          v14 = (v14 + 1) & v10;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v7 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        v11 = a1[v15];
        a1[v15] = v11 | v16;
        if ((v11 & v16) == 0 && __OFADD__(v5++, 1))
        {
          break;
        }
      }

LABEL_4:
      if (++v6 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_12:

  return sub_3D71C(a1, a2, v5, a4);
}

uint64_t sub_B5458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = *(a1 + 16);
  *a2 = *a1;
}

uint64_t sub_B5534()
{
  v1 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_B5614()
{
  v1 = *(sub_2B0C(&qword_22B230, &qword_1C37F8) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_A8368(v2, v3, v4, v5);
}

uint64_t sub_B5688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B56A0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v72 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v53 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v20)
  {
    v19 = v9;
    v20 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = *(*(a1 + 48) + 8 * v22);
    v24 = *(a1 + 56) + 88 * v22;
    v25 = *(v24 + 16);
    v57[0] = *v24;
    v57[1] = v25;
    v27 = *(v24 + 48);
    v26 = *(v24 + 64);
    v28 = *(v24 + 32);
    v58 = *(v24 + 80);
    v57[3] = v27;
    v57[4] = v26;
    v57[2] = v28;
    v29 = *(v24 + 48);
    *&v56[40] = *(v24 + 32);
    *&v56[56] = v29;
    *&v56[72] = *(v24 + 64);
    *&v56[88] = *(v24 + 80);
    v30 = *(v24 + 16);
    *&v56[8] = *v24;
    *&v56[24] = v30;
    *v56 = v23;
    sub_5EDD8(v57, &v59);
    a2(&v65, v56);
    v61 = *&v56[32];
    v62 = *&v56[48];
    v63 = *&v56[64];
    v64 = *&v56[80];
    v59 = *v56;
    v60 = *&v56[16];
    sub_42F48(&v59, &qword_22B298, &qword_1C38E0);
    if (!*(&v66 + 1))
    {
LABEL_22:
      sub_417B8();
    }

    v31 = a4;
    v32 = v65;
    v33 = *v72;
    v35 = sub_43124(v65);
    v36 = *(v33 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (*(v33 + 24) >= v38)
    {
      if ((v31 & 1) == 0)
      {
        sub_1864C4();
      }
    }

    else
    {
      v40 = v72;
      sub_17FD40(v38, v31 & 1);
      v41 = *v40;
      v42 = sub_43124(v32);
      if ((v39 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v35 = v42;
    }

    v9 = (v19 - 1) & v19;
    if (v39)
    {
      v12 = *(*v72 + 56) + 88 * v35;
      v13 = *(v12 + 16);
      v59 = *v12;
      v60 = v13;
      v15 = *(v12 + 48);
      v14 = *(v12 + 64);
      v16 = *(v12 + 32);
      *&v64 = *(v12 + 80);
      v62 = v15;
      v63 = v14;
      v61 = v16;
      v17 = v69;
      *(v12 + 32) = v68;
      *(v12 + 48) = v17;
      *(v12 + 64) = v70;
      *(v12 + 80) = v71;
      v18 = v67;
      *v12 = v66;
      *(v12 + 16) = v18;
      sub_85554(&v59);
    }

    else
    {
      v44 = *v72;
      v44[(v35 >> 6) + 8] |= 1 << v35;
      *(v44[6] + 8 * v35) = v32;
      v45 = v44[7] + 88 * v35;
      v46 = v67;
      *v45 = v66;
      *(v45 + 16) = v46;
      *(v45 + 80) = v71;
      v47 = v70;
      v48 = v68;
      *(v45 + 48) = v69;
      *(v45 + 64) = v47;
      *(v45 + 32) = v48;
      v49 = v44[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_25;
      }

      v44[2] = v51;
    }

    a4 = 1;
  }

  v21 = i;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v10)
    {
      goto LABEL_22;
    }

    v19 = *(v6 + 8 * v20);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

void sub_B5A00(void *a1)
{
  v2 = sub_1B40C4();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4054();
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v7)
  {
    sub_1B47C4();
    v7 = sub_1B4794();
  }

  v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v7];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C00E0;
  *(v9 + 56) = &type metadata for String;
  strcpy((v9 + 32), "lastAccessDate");
  *(v9 + 47) = -18;
  *(v9 + 88) = v2;
  v10 = sub_40528((v9 + 64));
  (*(v34 + 16))(v10, v5, v2);
  *(v9 + 120) = &type metadata for String;
  strcpy((v9 + 96), "lastAccessDate");
  *(v9 + 111) = -18;
  v11 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

  [v8 setPredicate:v13];
  v14 = sub_1B4E24();
  v23 = v14;
  v32 = v8;
  v33 = v2;
  if (!(v14 >> 62))
  {
    v24 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    v25 = v5;
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_21:

    (*(v34 + 8))(v25, v33);
    return;
  }

  v24 = sub_1B5284();
  v25 = v5;
  if (!v24)
  {
    goto LABEL_21;
  }

LABEL_8:
  v26 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = sub_1B50B4();
    }

    else
    {
      if (v26 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      v27 = *(v23 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    [a1 deleteObject:v27];

    ++v26;
    v30 = v29 == v24;
    v25 = v5;
    if (v30)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  swift_once();
  v15 = sub_1B4644();
  sub_50E58(v15, qword_260C00);
  swift_errorRetain();
  v16 = sub_1B4624();
  v17 = sub_1B4D94();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v20 = sub_1B5794();
    v22 = sub_60FF4(v20, v21, &v35);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v16, v17, "Failed to retire old genre cache entries %s", v18, 0xCu);
    sub_2BF8(v19);
  }

  else
  {
  }
}

uint64_t sub_B5EB0()
{
  v1 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = *(v0 + 40);

  v9 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B5FA0(uint64_t a1)
{
  v4 = *(sub_2B0C(&qword_22B230, &qword_1C37F8) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_7A038;

  return sub_A8BB4(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_B60C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (1)
  {
    v14 = v9;
    v15 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = (*(a1 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    v46[0] = v18;
    v46[1] = v21;
    v46[2] = v20;

    a2(v47, v46);

    v22 = v48;
    if (!v48)
    {
LABEL_22:
      sub_417B8();
    }

    v23 = v47[0];
    v45 = v47[1];
    v24 = *v49;
    v26 = sub_43124(v47[0]);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_186684();
      }
    }

    else
    {
      v31 = v49;
      sub_180090(v29, a4 & 1);
      v32 = *v31;
      v33 = sub_43124(v23);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v26 = v33;
    }

    v35 = *v49;
    if (v30)
    {
      v12 = (v35[7] + 16 * v26);
      v13 = v12[1];
      *v12 = v45;
      v12[1] = v22;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      *(v35[6] + 8 * v26) = v23;
      v36 = (v35[7] + 16 * v26);
      *v36 = v45;
      v36[1] = v22;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v15;
    v6 = v42;
    v9 = (v14 - 1) & v14;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_22;
    }

    v14 = *(v6 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_B6338(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7A038;

  return sub_AE840(a1, a2, v7, v6);
}

uint64_t sub_B63F8()
{
  v1 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_B64DC()
{
  v1 = *(sub_2B0C(&qword_22B248, &qword_1C3848) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_B3E48(v3, v4, v0 + v2);
}

uint64_t sub_B659C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_7A038;

  return sub_B195C(a1, v11, v12, v1 + v7, v13, v14, v1 + v10);
}

uint64_t sub_B66E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v83 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v60 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v28)
  {
    v27 = v9;
    v28 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v30 = __clz(__rbit64(v27)) | (v28 << 6);
    v31 = *(*(a1 + 48) + 8 * v30);
    v32 = *(a1 + 56) + 88 * v30;
    v33 = *(v32 + 16);
    v64 = *v32;
    v65 = v33;
    v35 = *(v32 + 48);
    v34 = *(v32 + 64);
    v36 = *(v32 + 32);
    v69 = *(v32 + 80);
    v67 = v35;
    v68 = v34;
    v66 = v36;
    *&v63[40] = *(v32 + 32);
    *&v63[56] = *(v32 + 48);
    *&v63[72] = *(v32 + 64);
    *&v63[88] = *(v32 + 80);
    *&v63[8] = *v32;
    *&v63[24] = *(v32 + 16);
    *v63 = v31;
    sub_5EDD8(&v64, &v70);
    a2(&v76, v63);
    v72 = *&v63[32];
    v73 = *&v63[48];
    v74 = *&v63[64];
    v75 = *&v63[80];
    v70 = *v63;
    v71 = *&v63[16];
    sub_42F48(&v70, &qword_22B298, &qword_1C38E0);
    if (!*(&v77 + 1))
    {
LABEL_22:
      sub_417B8();
    }

    v37 = a4;
    v38 = v76;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    *&v75 = v82;
    v70 = v77;
    v71 = v78;
    v39 = *v83;
    v41 = sub_43124(v76);
    v42 = *(v39 + 16);
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_24;
    }

    v45 = v40;
    if (*(v39 + 24) >= v44)
    {
      if ((v37 & 1) == 0)
      {
        sub_1864C4();
      }
    }

    else
    {
      v46 = v83;
      sub_17FD40(v44, v37 & 1);
      v47 = *v46;
      v48 = sub_43124(v38);
      if ((v45 & 1) != (v49 & 1))
      {
        goto LABEL_26;
      }

      v41 = v48;
    }

    v9 = (v27 - 1) & v27;
    if (v45)
    {
      v12 = *v83;
      v13 = *(*v83 + 56) + 88 * v41;
      v14 = *(v13 + 16);
      v64 = *v13;
      v65 = v14;
      v16 = *(v13 + 48);
      v15 = *(v13 + 64);
      v17 = *(v13 + 32);
      v69 = *(v13 + 80);
      v67 = v16;
      v68 = v15;
      v66 = v17;
      sub_5EDD8(&v64, v63);
      sub_85554(&v70);
      v18 = *(v12 + 56) + 88 * v41;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      *&v63[80] = *(v18 + 80);
      *&v63[48] = v20;
      *&v63[64] = v21;
      v22 = *(v18 + 16);
      *v63 = *v18;
      *&v63[16] = v22;
      *&v63[32] = v19;
      v24 = v67;
      v23 = v68;
      v25 = v66;
      *(v18 + 80) = v69;
      *(v18 + 48) = v24;
      *(v18 + 64) = v23;
      *(v18 + 32) = v25;
      v26 = v65;
      *v18 = v64;
      *(v18 + 16) = v26;
      sub_85554(v63);
    }

    else
    {
      v50 = *v83;
      v50[(v41 >> 6) + 8] |= 1 << v41;
      *(v50[6] + 8 * v41) = v38;
      v51 = v50[7] + 88 * v41;
      v52 = v71;
      *v51 = v70;
      *(v51 + 16) = v52;
      v53 = v72;
      v54 = v73;
      v55 = v74;
      *(v51 + 80) = v75;
      *(v51 + 48) = v54;
      *(v51 + 64) = v55;
      *(v51 + 32) = v53;
      v56 = v50[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_25;
      }

      v50[2] = v58;
    }

    a4 = 1;
  }

  v29 = i;
  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v28 >= v10)
    {
      goto LABEL_22;
    }

    v27 = *(v6 + 8 * v28);
    ++v29;
    if (v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_B6A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *))
{
  v40 = a4;
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = *(a3 + 56) + 88 * v14;
    v17 = *(v16 + 16);
    v36[0] = *v16;
    v36[1] = v17;
    v19 = *(v16 + 48);
    v18 = *(v16 + 64);
    v20 = *(v16 + 32);
    v37 = *(v16 + 80);
    v36[3] = v19;
    v36[4] = v18;
    v36[2] = v20;
    v21 = *(v16 + 16);
    v30 = *v16;
    v31 = v21;
    v22 = *(v16 + 32);
    v23 = *(v16 + 48);
    v24 = *(v16 + 64);
    v35 = *(v16 + 80);
    v33 = v23;
    v34 = v24;
    v32 = v22;
    sub_5EDD8(v36, v29);
    LOBYTE(v15) = v40(v15, &v30);
    v38[2] = v32;
    v38[3] = v33;
    v38[4] = v34;
    v39 = v35;
    v38[0] = v30;
    v38[1] = v31;
    result = sub_85554(v38);
    if (v15)
    {
      *(v27 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_561EC(v27, a2, v28, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_561EC(v27, a2, v28, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_B6C68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    v18 = v9;
    v19 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v21 = __clz(__rbit64(v18)) | (v19 << 6);
    v22 = *(*(a1 + 48) + 8 * v21);
    v23 = (*(a1 + 56) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v51[0] = v22;
    v51[1] = v25;
    v51[2] = v24;

    a2(v52, v51);

    v26 = v53;
    if (!v53)
    {
LABEL_22:
      sub_417B8();
    }

    v27 = v52[0];
    v48 = v52[1];
    v28 = *v54;
    v30 = sub_43124(v52[0]);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_24;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_186684();
      }
    }

    else
    {
      v35 = v54;
      sub_180090(v33, a4 & 1);
      v36 = *v35;
      v37 = sub_43124(v27);
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_26;
      }

      v30 = v37;
    }

    v50 = (v18 - 1) & v18;
    v39 = *v54;
    if (v34)
    {
      v12 = 16 * v30;
      v13 = (v39[7] + v12);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v39[7] + v12);
      v17 = v16[1];
      *v16 = v15;
      v16[1] = v14;
    }

    else
    {
      v39[(v30 >> 6) + 8] |= 1 << v30;
      *(v39[6] + 8 * v30) = v27;
      v40 = (v39[7] + 16 * v30);
      *v40 = v48;
      v40[1] = v26;
      v41 = v39[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v39[2] = v43;
    }

    a4 = 1;
    v11 = v19;
    v9 = v50;
  }

  v20 = v11;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v10)
    {
      goto LABEL_22;
    }

    v18 = *(v6 + 8 * v19);
    ++v20;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_B6F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v22 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = (*(a3 + 56) + 16 * v15);
    v18 = v17[1];
    v23[0] = *v17;
    v23[1] = v18;

    v19 = a4(v16, v23);

    if (v19)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_56454(v22, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_56454(v22, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_B7060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v13 = &v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_B50E8(v16, v11, v9, a2, a3, a5);

  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t sub_B71F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_7A038;

  return sub_B0810(a1, v10, v11, v12, v1 + v7, v1 + v9, v13);
}

uint64_t sub_B73A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_2B0C(&qword_22B280, &unk_1C3888) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_7A038;

  return sub_B0E3C(a1, v13, v14, v15, v1 + v7, v1 + v9, v16, v1 + v12);
}

uint64_t sub_B753C()
{
  v1 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_B7618()
{
  v1 = *(sub_2B0C(&qword_22B288, &qword_1D1D30) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_A5EB0();
}

uint64_t sub_B76B4()
{
  v1 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = *(v0 + 32);

  v9 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_B77A4()
{
  v1 = *(sub_2B0C(&qword_22B290, &qword_1C38C0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_A6284(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_B781C()
{
  v1 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  v10 = *(v0 + 56);

  v11 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B791C(uint64_t a1)
{
  v3 = *(sub_2B0C(&qword_22B290, &qword_1C38C0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = v1 + ((*(v3 + 80) + 80) & ~*(v3 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_226C;

  return sub_A7288(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_B7A50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_7A038;

  return sub_A9444(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_B7B24()
{
  v1 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_B7C10()
{
  v1 = *(sub_2B0C(&qword_22B248, &qword_1C3848) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_B232C(v3, v4, v6, v0 + v2);
}

uint64_t sub_B7CB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_B7D18(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B7D50()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v15 = *(v2 + 64);
  v5 = (v15 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + v7 + 8) & ~v3;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6);

  v13 = *(v0 + v7);

  v10(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v15, v3 | 7);
}

uint64_t sub_B7E88(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v6 + v10 + 8) & ~v6;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v8);
  v15 = *(v1 + v9);
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_7A038;

  return sub_AD99C(a1, v12, v13, v1 + v7, v14, v15, v16, v1 + v11);
}

uint64_t sub_B7FEC()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + v7 + 8) & ~v3;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = *(v0 + v6);

  v12 = *(v0 + v7);

  v10(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v5, v3 | 7);
}

uint64_t sub_B8104(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_7A038;

  return sub_AE098(a1, v11, v12, v1 + v7, v13, v14, v1 + v10);
}

uint64_t sub_B8250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_B82C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_B8320()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v0 + 32);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  v13 = *(v0 + v7);

  v14 = *(v0 + v8);

  v15 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_B8450(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1B40F4() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_7A038;

  return sub_AB7AC(a1, v11, v12, v13, v1 + v6, v1 + v8, v14, v15);
}

uint64_t sub_B85C4()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  v11 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_B86CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_226C;

  return sub_ACB18(a1, v10, v11, v12, v1 + v7, v1 + v9, v13);
}

uint64_t sub_B8878(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B40F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v7 + v8) & ~v7;
  v11 = (v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_2B0C(a1, a2);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v14 + v11 + 8) & ~v14;
  v21 = v7 | v14;
  v22 = *(v13 + 64);
  v16 = *(v2 + 16);
  swift_unknownObjectRelease();
  v17 = *(v2 + 32);

  v18 = *(v6 + 8);
  v18(v2 + v8, v5);
  v18(v2 + v10, v5);
  v19 = *(v2 + v11);

  (*(v13 + 8))(v2 + v15, v12);

  return _swift_deallocObject(v2, v15 + v22, v21 | 7);
}

uint64_t sub_B8A20(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_2B0C(&qword_22B2D8, &qword_1C3948) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_7A038;

  return sub_ACDEC(a1, v13, v14, v15, v1 + v7, v1 + v9, v16, v1 + v12);
}

uint64_t sub_B8BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_B8C20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_B5328(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_B8C64()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v7;
  v21 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v7 + 8) & ~v9;
  v22 = v3 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 32);

  v15 = *(v2 + 8);
  v15(v0 + v4, v1);
  v15(v0 + v6, v1);
  v16 = *(v0 + v20);

  (*(v8 + 8))(v0 + v10, v21);
  v17 = *(v0 + v11);

  v18 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8, v22 | 7);
}

uint64_t sub_B8E38(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1B40F4() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_2B0C(&qword_22B2D8, &qword_1C3948) - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v20 = v1[2];
  v14 = v1[4];
  v15 = *(v1 + v9);
  v16 = *(v1 + v12);
  v17 = *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_7A038;

  return sub_ABEA4(a1, v20, v13, v14, v1 + v6, v1 + v8, v15, v1 + v11);
}

uint64_t sub_B9010(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_B90C4()
{
  if (!qword_22B360)
  {
    v0 = sub_1B4CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_22B360);
    }
  }
}

uint64_t sub_B9144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B40F4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + *(a3 + 20));
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_2B0C(a4, a5);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 24);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_B92AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_1B40F4();
  v13 = *(result - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v15 = sub_2B0C(a5, a6);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_B9408(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1B40F4();
  if (v9 <= 0x3F)
  {
    sub_B90C4();
    if (v10 <= 0x3F)
    {
      sub_B94C4(319, a4, a5, a6);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B94C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1CC1C(a3, a4);
    sub_1CC1C(&qword_229560, &unk_1BFC70);
    v5 = sub_1B4BF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_B9588(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v11 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v3;
      v12 = *(*v3 + 16);
      if (v12 > result)
      {
        v4 = a2;
        if (v12 > a2)
        {
          v40 = v3;
          v41 = 7 * result;
          v13 = &v2[7 * result + 4];
          v32 = 7 * a2;
          v33 = *(v13 + 40);
          v14 = &v2[7 * a2 + 4];
          v6 = *v14;
          v7 = *(v14 + 8);
          v8 = *(v14 + 16);
          v9 = *(v14 + 24);
          v10 = *(v14 + 32);
          v5 = *(v14 + 40);
          LOBYTE(v3) = *(v14 + 48);
          v37 = *(v13 + 8);
          v38 = *v13;
          v35 = *(v13 + 24);
          v36 = *(v13 + 16);
          v34 = *(v13 + 32);
          v39 = *(v13 + 48);
          sub_CBA28(*v13);
          sub_CBA28(v6);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = sub_56ACC(v2);
        v2 = result;
LABEL_6:
        if (v2[2] <= v11)
        {
          __break(1u);
        }

        else
        {
          v15 = v2 + 4;
          v16 = &v2[v41 + 4];
          v17 = *v16;
          v18 = v16[1];
          v19 = v16[2];
          v20 = v16[3];
          v21 = v16[4];
          v22 = v16[5];
          *v16 = v6;
          v16[1] = v7;
          v16[2] = v8;
          v16[3] = v9;
          v16[4] = v10;
          v16[5] = v5;
          v23 = *(v16 + 48);
          *(v16 + 48) = v3;
          result = sub_CB990(v17);
          if (v2[2] > v4)
          {
            v24 = &v15[v32];
            v25 = v15[v32];
            v26 = v15[v32 + 1];
            v27 = v15[v32 + 2];
            v28 = v15[v32 + 3];
            v29 = v15[v32 + 4];
            v30 = v15[v32 + 5];
            *v24 = v38;
            v24[1] = v37;
            v24[2] = v36;
            v24[3] = v35;
            v24[4] = v34;
            v24[5] = v33;
            v31 = LOBYTE(v15[v32 + 6]);
            *(v24 + 48) = v39;
            result = sub_CB990(v25);
            *v40 = v2;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_B972C(unint64_t a1, unint64_t a2)
{
  v8 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v16 = &v19 - v15;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > a1)
      {
        v4 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v17 = *(v14 + 72);
        a1 *= v17;
        sub_43050(v3 + v4 + a1, &v19 - v15, &qword_229408, &unk_1BCC10);
        if (v5 > a2)
        {
          v5 = v17 * a2;
          sub_43050(v3 + v4 + v17 * a2, v12, &qword_229408, &unk_1BCC10);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v3 = sub_56AE0(v3);
LABEL_6:
        v18 = v3 + v4;
        result = sub_CBCD4(v12, &v18[a1]);
        if (v3[2] <= a2)
        {
          __break(1u);
        }

        else
        {
          result = sub_CBCD4(v16, &v18[v5]);
          *v2 = v3;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

Swift::Int sub_B98E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BE4(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 2);
          if (v14 >= *(v12 - 3))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = *(v12 + 5);
          result = v12[48];
          v18 = *(v12 - 8);
          *v13 = *(v12 - 24);
          *(v12 + 2) = v18;
          v19 = *(v12 + 1);
          *(v12 - 3) = v14;
          *(v12 - 2) = v15;
          *(v12 - 8) = v16;
          *v12 = v17;
          v12[8] = result;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v21[0] = v7 + 4;
    v21[1] = v6;
    sub_C60DC(v21, v22, v23, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_B9A4C()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22B440);
  sub_50E58(v0, qword_22B440);
  return sub_1B4634();
}

char *sub_B9AD0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = sub_35274(*(v1 + 16), 0);
    v7 = sub_3FA2C(v36, v6 + 32, v5, v1);

    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v8 = qword_2282C8;

  if (v8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v9 = sub_1B4644();
  sub_50E58(v9, qword_22B440);

  v10 = sub_1B4624();
  v11 = sub_1B4DB4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = v3;
    v36[0] = swift_slowAlloc();
    v13 = v36[0];
    *v12 = 136315138;
    sub_C04B0(v6);
    v16 = sub_60FF4(v14, v15, v36);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "selectCandidateHighScoringSingleItems clusterableBooksAscendingByScore=%s", v12, 0xCu);
    sub_2BF8(v13);
    v3 = v35;
  }

  if (!v5)
  {
LABEL_22:

    return _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v18 = *(v6 + 2);
  if (v3 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v3;
  }

  v20 = -v5;
  v21 = 0.0;
  v22 = 88;
  v23 = *(v6 + 2);
  while (1)
  {
    if (!v23)
    {
      __break(1u);
      goto LABEL_25;
    }

    v24 = *&v6[v22];
    if (v17 >= v19 && v4 >= v5 && v2 * (v21 / v17) <= v24)
    {
      break;
    }

    ++v17;
    v21 = v21 + v24;
    --v23;
    --v5;
    v22 += 136;
    if (!(v20 + v17))
    {
      goto LABEL_22;
    }
  }

  v25 = sub_35274(v23, 0);
  v26 = sub_3F8D4(v36, v25 + 32, v23, v6, (v6 + 32), v17, (2 * v18) | 1);

  result = swift_unknownObjectRelease();
  if (v26 == v23)
  {

    v28 = sub_1B4624();
    v29 = sub_1B4DB4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v30 = 136315138;
      sub_C04B0(v25);
      v34 = sub_60FF4(v32, v33, v36);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v28, v29, "selectCandidateHighScoringSingleItems candidates=%s", v30, 0xCu);
      sub_2BF8(v31);
    }

    return v25;
  }

  __break(1u);
  return result;
}

void *sub_B9E78(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for ScoredCollectionRecommendation();
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  __chkstk_darwin(v5);
  v98 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B0C(&qword_22B498, &qword_1C3A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v97 - v10);
  v12 = type metadata accessor for CollectionRecommendation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v111 = &v97 - v18;
  v19 = a1[1];
  v113 = *a1;
  v118 = v19;
  v20 = a1[2];
  v21 = v2[7];
  v148 = v2[6];
  v149 = v21;
  v22 = v2[9];
  v150 = v2[8];
  v151 = v22;
  v23 = v2[3];
  v144 = v2[2];
  v145 = v23;
  v24 = v2[5];
  v146 = v2[4];
  v147 = v24;
  v25 = v2[1];
  v142 = *v2;
  v143 = v25;
  v26 = *(v2 + 20);
  v27 = *(v2 + 184);
  v139 = *(v2 + 168);
  v140 = v27;
  v141 = *(v2 + 200);
  v138 = _swiftEmptySetSingleton;
  v137 = _swiftEmptySetSingleton;
  v136 = _swiftEmptySetSingleton;
  if (!v20 || v26 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = sub_130C10(_swiftEmptyArrayStorage);
  v107 = *(a2 + 16);
  if (v107)
  {
    v117 = v28;
    v109 = v26;
    v102 = v17;
    v103 = 0;
    v29 = 0;
    v30 = v20 + 56;
    v105 = (v13 + 48);
    v106 = a2 + 32;
    v108 = _swiftEmptyArrayStorage;
    v97 = v11;
    v101 = v12;
    v104 = v20;
LABEL_6:
    v31 = v106 + 136 * v29;
    v32 = *(v31 + 48);
    v129 = *(v31 + 32);
    v130 = v32;
    v135 = *(v31 + 128);
    v33 = *(v31 + 112);
    v133 = *(v31 + 96);
    v134 = v33;
    v34 = *(v31 + 80);
    v131 = *(v31 + 64);
    v132 = v34;
    v35 = *(v31 + 16);
    v127 = *v31;
    v128 = v35;
    v114 = v29 + 1;
    v36 = 1 << *(v20 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v20 + 56);
    v119 = *(&v133 + 1);
    v39 = v134;
    v40 = v134;
    v112 = v127;
    v116 = BYTE8(v127);
    sub_429F8(&v127, v122);
    v41 = (v36 + 63) >> 6;
    v110 = v40;
    v115 = (v40 != 2) & v39;

    v42 = 0;
    while (1)
    {
      do
      {
        if (!v38)
        {
          while (1)
          {
            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              __break(1u);
              goto LABEL_71;
            }

            if (v44 >= v41)
            {
              break;
            }

            v43 = *(v30 + 8 * v44);
            ++v42;
            if (v43)
            {
              v42 = v44;
              goto LABEL_16;
            }
          }

          sub_5C740(&v127);

          v29 = v114;
          if (v114 != v107)
          {
            goto LABEL_6;
          }

          v95 = v103;
          goto LABEL_68;
        }

        v43 = v38;
LABEL_16:
        v38 = (v43 - 1) & v43;
      }

      while ((v118 & 1) != 0);
      v45 = __clz(__rbit64(v43)) | (v42 << 6);
      v46 = *(v20 + 48);
      v47 = *(v46 + v45);
      if (*(v46 + v45))
      {
        if (v47 != 1)
        {
          goto LABEL_25;
        }

        if (v116)
        {
LABEL_24:

          goto LABEL_25;
        }
      }

      else if ((v116 & 1) == 0)
      {
        goto LABEL_24;
      }

      v48 = sub_1B5604();

      if (v48)
      {
LABEL_25:
        if (*(v117 + 16) && (v49 = sub_3AF28(v47), (v50 & 1) != 0))
        {
          if (*(*(v117 + 56) + 8 * v49) < v113)
          {
LABEL_30:
            if (v115 && (v51 = v136, v136[2]) && (v52 = v136[5], v53 = sub_1B57E4(), v54 = -1 << *(v51 + 32), v55 = v53 & ~v54, ((*(v51 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v55) & 1) != 0))
            {
              v56 = ~v54;
              while (*(v51[6] + 8 * v55) != v119)
              {
                v55 = (v55 + 1) & v56;
                if (((*(v51 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v55) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              sub_111CE0(v122, v112);
            }

            else
            {
LABEL_36:
              v122[6] = v148;
              v122[7] = v149;
              v122[8] = v150;
              v122[9] = v151;
              v122[2] = v144;
              v122[3] = v145;
              v122[4] = v146;
              v122[5] = v147;
              v122[0] = v142;
              v122[1] = v143;
              v123 = v109;
              v124 = v139;
              v125 = v140;
              v126 = v141;
              v120[6] = v133;
              v120[7] = v134;
              v121 = v135;
              v120[2] = v129;
              v120[3] = v130;
              v120[4] = v131;
              v120[5] = v132;
              v120[0] = v127;
              v120[1] = v128;
              sub_C0794(v120, v11);
              if ((*v105)(v11, 1, v12) == 1)
              {
                sub_42F48(v11, &qword_22B498, &qword_1C3A60);
              }

              else
              {
                v57 = v111;
                sub_CBA88(v11, v111, type metadata accessor for CollectionRecommendation);
                v58 = v57;
                v59 = v102;
                sub_CB8C0(v58, v102, type metadata accessor for CollectionRecommendation);
                if (swift_getEnumCaseMultiPayload() != 9)
                {
                  sub_25FBC(v59, type metadata accessor for CollectionRecommendation);
                  goto LABEL_44;
                }

                v60 = *v59;
                v61 = v59[7];
                v62 = v59[8];
                v63 = v59[9];
                v96 = v59[10];
                sub_CBD44(v59[2], v59[3], v59[4], v59[5], v59[6]);
                v64 = v137;
                v20 = v104;
                if (v137[2] && (v65 = v137[5], v66 = sub_1B57E4(), v67 = -1 << *(v64 + 32), v68 = v66 & ~v67, ((*(v64 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v68) & 1) != 0))
                {
                  v69 = ~v67;
                  while (*(v64[6] + 8 * v68) != v60)
                  {
                    v68 = (v68 + 1) & v69;
                    if (((*(v64 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v68) & 1) == 0)
                    {
                      goto LABEL_44;
                    }
                  }

                  sub_111CE0(v122, v112);
                  sub_25FBC(v111, type metadata accessor for CollectionRecommendation);
                  v12 = v101;
                }

                else
                {
LABEL_44:
                  v70 = v98;
                  sub_CB8C0(v111, v98, type metadata accessor for CollectionRecommendation);
                  v71 = v100;
                  *(v70 + *(v100 + 20)) = v47;
                  *(v70 + *(v71 + 24)) = 0;
                  *(v70 + *(v71 + 28)) = 0;
                  v72 = v108;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v72 = sub_33C88(0, v72[2] + 1, 1, v72);
                  }

                  v74 = v72[2];
                  v73 = v72[3];
                  v108 = v72;
                  if (v74 >= v73 >> 1)
                  {
                    v108 = sub_33C88(v73 > 1, v74 + 1, 1, v108);
                  }

                  v75 = v108;
                  v108[2] = v74 + 1;
                  sub_CBA88(v70, v75 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v74, type metadata accessor for ScoredCollectionRecommendation);
                  if (v110 != 2)
                  {
                    v76 = v119;
                    sub_111CE0(v122, v119);
                    sub_111CE0(v122, v76);
                  }

                  sub_111CE0(v122, v112);
                  sub_41C08(v103);
                  v77 = v117;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v122[0] = v77;
                  v80 = sub_3AF28(v47);
                  v81 = *(v77 + 16);
                  v82 = (v79 & 1) == 0;
                  v83 = v81 + v82;
                  if (__OFADD__(v81, v82))
                  {
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    result = sub_1B5784();
                    __break(1u);
                    return result;
                  }

                  v84 = v79;
                  if (*(v77 + 24) >= v83)
                  {
                    v87 = v108;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_186C14();
                      v87 = v108;
                    }

                    v12 = v101;
                  }

                  else
                  {
                    sub_1809A4(v83, isUniquelyReferenced_nonNull_native);
                    v85 = sub_3AF28(v47);
                    if ((v84 & 1) != (v86 & 1))
                    {
                      goto LABEL_74;
                    }

                    v80 = v85;
                    v12 = v101;
                    v87 = v108;
                  }

                  v88 = *&v122[0];
                  v117 = *&v122[0];
                  if ((v84 & 1) == 0)
                  {
                    sub_15BB28(v80, v47, 0, *&v122[0]);
                    v88 = v117;
                  }

                  v89 = *(v88 + 56);
                  v90 = *(v89 + 8 * v80);
                  v91 = __OFADD__(v90, 1);
                  v92 = v90 + 1;
                  if (v91)
                  {
                    goto LABEL_73;
                  }

                  *(v89 + 8 * v80) = v92;
                  sub_25FBC(v111, type metadata accessor for CollectionRecommendation);
                  v93 = v87[2];
                  v103 = sub_CC290;
                  v11 = v97;
                  v20 = v104;
                  if (v93 == v109)
                  {
LABEL_71:

                    sub_5C740(&v127);

                    return v108;
                  }
                }
              }
            }
          }
        }

        else if (v113 > 0)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v108 = _swiftEmptyArrayStorage;
  v95 = 0;
LABEL_68:

  sub_41C08(v95);
  return v108;
}

uint64_t sub_BA88C(uint64_t a1)
{
  v2 = type metadata accessor for ScoredCollectionRecommendation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0x202020200A5BLL;
  v24 = 0xE600000000000000;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_3747C(0, v7, 0);
    v8 = v22;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_CB8C0(v9, v6, type metadata accessor for ScoredCollectionRecommendation);
      v11 = sub_C4AF4();
      v13 = v12;
      sub_25FBC(v6, type metadata accessor for ScoredCollectionRecommendation);
      v22 = v8;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_3747C((v14 > 1), v15 + 1, 1);
        v8 = v22;
      }

      v8[2] = v15 + 1;
      v16 = &v8[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v22 = v8;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
  v17 = sub_1B4764();
  v19 = v18;

  v25._countAndFlagsBits = v17;
  v25._object = v19;
  sub_1B48D4(v25);

  v26._countAndFlagsBits = 93;
  v26._object = 0xE100000000000000;
  sub_1B48D4(v26);
  return v23;
}

uint64_t sub_BAAD4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v52 = *(a1 + 24);
  v5 = *(a1 + 40);
  LOBYTE(v6) = *(a1 + 48);
  v7 = *v1;
  sub_CB9F0(a1, v53);
  result = swift_isUniquelyReferenced_nonNull_native();
  v39 = v1;
  if ((result & 1) == 0)
  {
LABEL_19:
    result = sub_33CB0(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_33CB0((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v51 = v7 + 4;
  v11 = &v7[7 * v10 + 4];
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = v4;
  *(v11 + 24) = v52;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6 & 1;
  if (v10 < 2)
  {
LABEL_14:
    *v39 = v7;
  }

  else
  {
    v50 = v7;
    while (1)
    {
      v12 = v7[2];
      if (v10 >> 1 >= v12)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v3 = &v51[7 * (v10 >> 1)];
      if (!*v3)
      {
        break;
      }

      if (v10 >= v12)
      {
        goto LABEL_16;
      }

      v43 = v10 >> 1;
      *&v52 = v10;
      v2 = &v51[7 * v10];
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_21;
      }

      v13 = *(v3 + 2);
      v44 = *(v3 + 3);
      v46 = *(v3 + 4);
      v48 = *(v3 + 5);
      v14 = *(v3 + 48);
      v16 = v2[4];
      v15 = v2[5];
      v5 = v2[2];
      v17 = v2[3];
      v18 = v3[1];
      v19 = *(v2 + 1);
      v4 = *(v2 + 48);
      sub_CBA28(*v3);
      sub_CBA28(v6);

      v7 = v50;
      if (v19 >= v18)
      {
        goto LABEL_14;
      }

      if (v10 >= v50[2])
      {
        goto LABEL_17;
      }

      v20 = v2[5];
      v22 = *v3;
      v21 = *(v3 + 1);
      v24 = *(v3 + 2);
      v23 = *(v3 + 3);
      v4 = *(v3 + 4);
      v5 = *(v3 + 5);
      LOBYTE(v6) = *(v3 + 48);
      v45 = v2[1];
      v47 = *v2;
      v41 = v2[3];
      v42 = v2[2];
      v40 = v2[4];
      v49 = *(v2 + 48);
      sub_CBA28(*v2);
      sub_CBA28(v22);
      v25 = *v2;
      v26 = v2[1];
      v27 = v2[2];
      v28 = v2[3];
      v29 = v2[4];
      v30 = v2[5];
      *v2 = v22;
      v2[1] = v21;
      v7 = v50;
      v2[2] = v24;
      v2[3] = v23;
      v2[4] = v4;
      v2[5] = v5;
      v31 = *(v2 + 48);
      *(v2 + 48) = v6;
      sub_CB990(v25);
      v10 = v43;
      if (v43 >= v50[2])
      {
        goto LABEL_18;
      }

      v32 = *v3;
      v33 = *(v3 + 1);
      v34 = *(v3 + 2);
      v35 = *(v3 + 3);
      v36 = *(v3 + 4);
      v37 = *(v3 + 5);
      *v3 = v47;
      *(v3 + 1) = v45;
      *(v3 + 2) = v42;
      *(v3 + 3) = v41;
      *(v3 + 4) = v40;
      *(v3 + 5) = v20;
      v38 = *(v3 + 48);
      *(v3 + 48) = v49;
      result = sub_CB990(v32);
      if (v52 <= 3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_BADCC(uint64_t a1)
{
  v3 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3 - 8);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  sub_CB8C0(a1, &v30 - v14, type metadata accessor for ScoredCollectionRecommendation);
  v16 = type metadata accessor for ScoredCollectionRecommendation();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 0, 1, v16);
  v31 = v1;
  v18 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_19:
    v18 = sub_33E18(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_33E18(v19 > 1, v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  v21 = v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v32 = v4[9];
  v33 = v21;
  result = sub_CBBF4(v15, &v21[v32 * v20]);
  *v31 = v18;
  if (v20 >= 2)
  {
    v4 = (v17 + 48);
    while (1)
    {
      v23 = v20 >> 1;
      v24 = v18[2];
      if (v20 >> 1 >= v24)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v17 = &v33[v23 * v32];
      sub_43050(v17, v13, &qword_229408, &unk_1BCC10);
      v15 = *v4;
      result = (*v4)(v13, 1, v16);
      if (result == 1)
      {
        break;
      }

      if (v20 >= v24)
      {
        goto LABEL_16;
      }

      v25 = &v33[v20 * v32];
      sub_43050(v25, v10, &qword_229408, &unk_1BCC10);
      result = (v15)(v10, 1, v16);
      if (result == 1)
      {
        goto LABEL_21;
      }

      v26 = *(v16 + 28);
      v27 = *&v13[v26];
      v28 = *&v10[v26];
      sub_25FBC(v10, type metadata accessor for ScoredCollectionRecommendation);
      result = sub_25FBC(v13, type metadata accessor for ScoredCollectionRecommendation);
      v15 = v30;
      if (v28 >= v27)
      {
        return result;
      }

      if (v20 >= v18[2])
      {
        goto LABEL_17;
      }

      sub_43050(v25, v30, &qword_229408, &unk_1BCC10);
      sub_CBC64(v17, v25);
      if (v23 >= v18[2])
      {
        goto LABEL_18;
      }

      result = sub_CBCD4(v15, v17);
      *v31 = v18;
      v29 = v20 > 3;
      v20 >>= 1;
      if (!v29)
      {
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

void *sub_BB174(uint64_t a1)
{
  v2 = type metadata accessor for ScoredCollectionRecommendation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = v6;
  v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = *(v12 + 72);
  v18 = _swiftEmptyArrayStorage;
  v25 = v3;
  v26 = v2;
  do
  {
    sub_43050(v16, v14, &qword_229408, &unk_1BCC10);
    sub_CBBF4(v14, v11);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      sub_42F48(v11, &qword_229408, &unk_1BCC10);
    }

    else
    {
      v19 = v24;
      sub_CBA88(v11, v24, type metadata accessor for ScoredCollectionRecommendation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_33C88(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_33C88(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_CBA88(v19, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for ScoredCollectionRecommendation);
      v2 = v26;
    }

    v16 += v17;
    --v15;
  }

  while (v15);
  return v18;
}

uint64_t sub_BB45C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 8;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = v3 + 56 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 24);
    ++v1;
    v5 += 56;
    if (v7)
    {
      v8 = *(v5 - 24);
      v9 = *(v5 - 16);
      v10 = *(v5 - 8);
      v11 = *v5;
      v12 = *(v5 + 8);
      v16 = *(v5 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_33DFC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_33DFC((v13 > 1), v14 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[56 * v14];
      *(v15 + 4) = v7;
      *(v15 + 5) = v8;
      *(v15 + 6) = v9;
      *(v15 + 7) = v10;
      *(v15 + 8) = v11;
      *(v15 + 9) = v12;
      v15[80] = v16 & 1;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_BB5BC(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  v355 = type metadata accessor for CollectionRecommendation(0);
  v6 = *(*(v355 - 8) + 64);
  v7 = __chkstk_darwin(v355);
  v353 = &v337 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v345 = &v337 - v9;
  v10 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v352 = &v337 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v351 = &v337 - v15;
  __chkstk_darwin(v14);
  v360 = &v337 - v16;
  v368 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v380 = *(v368 - 8);
  v17 = *(v380 + 64);
  v18 = __chkstk_darwin(v368);
  v350 = &v337 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v349 = &v337 - v21;
  __chkstk_darwin(v20);
  v359 = &v337 - v22;
  v23 = type metadata accessor for ScoredCollectionRecommendation();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v354 = &v337 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v381 = (&v337 - v29);
  __chkstk_darwin(v28);
  v31 = &v337 - v30;
  v32 = v1[11];
  v424 = v1[10];
  v425 = v32;
  v426 = v1[12];
  v33 = v1[7];
  v420 = v1[6];
  v421 = v33;
  v34 = v1[9];
  v422 = v1[8];
  v423 = v34;
  v35 = v1[3];
  v416 = v1[2];
  v417 = v35;
  v36 = v1[5];
  v418 = v1[4];
  v419 = v36;
  v37 = v1[1];
  v414 = *v1;
  v427 = *(v1 + 26);
  v415 = v37;

  sub_C766C(v5, v4, &v409);
  v38 = swift_allocObject();
  sub_2B0C(&qword_229400, &unk_1BC4A0);
  v39 = *(sub_2B0C(&qword_229408, &unk_1BCC10) - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BCA80;
  v43 = *(v24 + 56);
  v376 = v23;
  v43(v42 + v41, 1, 1, v23);
  *(v38 + 16) = v42;
  v361 = v38 + 16;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  *(v44 + 184) = v424;
  *(v44 + 200) = v425;
  *(v44 + 216) = v426;
  *(v44 + 232) = v427;
  *(v44 + 120) = v420;
  *(v44 + 136) = v421;
  *(v44 + 152) = v422;
  *(v44 + 168) = v423;
  *(v44 + 56) = v416;
  *(v44 + 72) = v417;
  *(v44 + 88) = v418;
  *(v44 + 104) = v419;
  *(v44 + 24) = v414;
  v356 = v44;
  *(v44 + 40) = v415;
  v45 = v5;
  v46 = *(v5 + 16);

  sub_CBBBC(&v414, &v394);

  sub_CBBBC(&v414, &v394);

  sub_CBBBC(&v414, &v394);
  v358 = v38;

  sub_CBBBC(&v414, &v394);
  if (v46)
  {
    v47 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v48 = *(v24 + 72);
    v49 = v45 + v47;
    v50 = _swiftEmptyArrayStorage;
    do
    {
      sub_CB8C0(v49, v31, type metadata accessor for ScoredCollectionRecommendation);
      if (v31[*(v376 + 24)] == 1)
      {
        sub_CBA88(v31, v381, type metadata accessor for ScoredCollectionRecommendation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v394 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_37934(0, v50[2] + 1, 1);
          v50 = v394;
        }

        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          sub_37934(v52 > 1, v53 + 1, 1);
          v50 = v394;
        }

        v50[2] = v53 + 1;
        sub_CBA88(v381, v50 + v47 + v53 * v48, type metadata accessor for ScoredCollectionRecommendation);
      }

      else
      {
        sub_25FBC(v31, type metadata accessor for ScoredCollectionRecommendation);
      }

      v49 += v48;
      --v46;
    }

    while (v46);
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  v54 = v50[2];

  if (!v54)
  {
    v55 = v415;
    v56 = v415 + 64;
    v57 = 1 << *(v415 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v415 + 64);
    v60 = (v57 + 63) >> 6;

    v61 = 0;
    if (v59)
    {
      while (1)
      {
        v62 = v61;
LABEL_21:
        v63 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v64 = v63 | (v62 << 6);
        LOBYTE(v63) = *(*(v55 + 48) + v64);
        v65 = *(v55 + 56) + 24 * v64;
        v66 = *v65;
        v67 = *(v65 + 8);
        v68 = *(v65 + 16);
        LOBYTE(v394) = v63;
        *(&v394 + 1) = v66;
        LOBYTE(v395) = v67;
        *(&v395 + 1) = v68;

        sub_C0FE8(&v394);

        if (!v59)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_281;
      }

      if (v62 >= v60)
      {
        break;
      }

      v59 = *(v56 + 8 * v62);
      ++v61;
      if (v59)
      {
        v61 = v62;
        goto LABEL_21;
      }
    }
  }

  v69 = v361;
  swift_beginAccess();
  if (*(*v69 + 16) != 1 || v54 >= v416 || (v338 = *(*(&v425 + 1) + 16)) == 0)
  {
    *&v394 = v409;
    sub_42F48(&v394, &qword_2292C8, &unk_1BCB00);
    *&v428[0] = v410;
    sub_42F48(v428, &qword_2292C8, &unk_1BCB00);
    *&v393[0] = v411;
    sub_42F48(v393, &qword_229300, &qword_1BC3B8);
    *v386 = v412;
    sub_42F48(v386, &qword_2292C8, &unk_1BCB00);
    *&v384[0] = v413;
    v73 = v384;
    goto LABEL_29;
  }

  v70 = 0;
  v71 = v426;
  v72 = *(v426 + 16);
  v339 = *(&v425 + 1);
  v337 = *(&v425 + 1) + 32;
  v373 = v426 + 32;
  v374 = v72;
  v343 = 0x80000000001D4780;
  v344 = 0x80000000001D47A0;
  v341 = 0x80000000001D4740;
  v342 = 0x80000000001D4760;
  v340 = 0x80000000001D4FE0;
  v362 = (v380 + 48);
  v347 = (v380 + 16);
  v348 = (v380 + 32);
  v346 = (v380 + 8);
  v367 = v426;
  while (1)
  {
    if (v70 >= *(v339 + 16))
    {
      goto LABEL_285;
    }

    if (v374)
    {
      break;
    }

LABEL_30:
    if (++v70 == v338)
    {
      goto LABEL_276;
    }
  }

  v81 = 0;
  v82 = *(v337 + v70);
  v83 = v413;
  v363 = v70;
  v372 = v82;
  v375 = v413;
  while (2)
  {
    if (v81 >= *(v71 + 16))
    {
      goto LABEL_280;
    }

    LODWORD(v380) = *(v373 + v81);
    if (*(v83 + 16) && (v84 = sub_3AA80(v82), (v85 & 1) != 0))
    {
      v86 = *(*(v83 + 56) + 8 * v84);

      if (!v86[2])
      {
        goto LABEL_45;
      }
    }

    else
    {
      v86 = _swiftEmptyDictionarySingleton;
      if (!_swiftEmptyDictionarySingleton[2])
      {
        goto LABEL_45;
      }
    }

    v87 = sub_3AF28(v380);
    if (v88)
    {
      v89 = *(v86[7] + 8 * v87);
      goto LABEL_46;
    }

LABEL_45:
    v89 = 0;
LABEL_46:
    ++v81;

    switch(v82)
    {
      case 1:

        goto LABEL_49;
      default:
        v90 = sub_1B5604();

        if (v90)
        {
LABEL_49:
          v83 = v375;
          if (v89 > 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v83 = v375;
          if (v89 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }
        }

        v381 = v409;
        v371 = v81;
        if (v82 > 2)
        {
          if (v82 != 3)
          {
            if (v82 != 5)
            {
              if (v82 != 8)
              {
                goto LABEL_36;
              }

              v404 = v424;
              v405 = v425;
              v406 = v426;
              v407 = v427;
              v400 = v420;
              v401 = v421;
              v402 = v422;
              v403 = v423;
              v396 = v416;
              v397 = v417;
              v398 = v418;
              v399 = v419;
              v394 = v414;
              v395 = v415;
              v386[0] = v380;
              v91 = v358;

              sub_CBBBC(&v414, v393);
              sub_C8964(v386, v381, 1, &v394, v91, &v414);
              goto LABEL_271;
            }

            v257 = *(*(&v418 + 1) + 64);
            v366 = *(&v418 + 1) + 64;
            v258 = 1 << *(*(&v418 + 1) + 32);
            if (v258 < 64)
            {
              v259 = ~(-1 << v258);
            }

            else
            {
              v259 = -1;
            }

            v377 = v259 & v257;
            v364 = *(&v418 + 1);
            v365 = (v258 + 63) >> 6;
            v370 = v410;
            v260 = v410 + 7;
            v261 = v381 + 7;

            v262 = 0;
            v369 = v260;
            while (2)
            {
              v263 = v377;
              if (v377)
              {
                v264 = v262;
LABEL_214:
                v265 = (v264 << 9) | (8 * __clz(__rbit64(v263)));
                v266 = *(*(v364 + 48) + v265);
                v267 = *(*(v364 + 56) + v265);
                v377 = (v263 - 1) & v263;
                v378 = v267;
                if (v370[2])
                {
                  v268 = v370;
                  v269 = v370[5];
                  v270 = sub_1B57E4();
                  v271 = -1 << *(v268 + 32);
                  v272 = v270 & ~v271;
                  if ((*(v260 + ((v272 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v272))
                  {
                    v273 = ~v271;
                    while (*(v370[6] + 8 * v272) != v266)
                    {
                      v272 = (v272 + 1) & v273;
                      if (((*(v260 + ((v272 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v272) & 1) == 0)
                      {
                        goto LABEL_219;
                      }
                    }

                    v262 = v264;
                    continue;
                  }
                }

LABEL_219:
                v357 = v266;
                v274 = v378;
                v275 = *(v378 + 16);

                if (!v275)
                {
                  v277 = _swiftEmptyArrayStorage;
LABEL_245:
                  if ((v422 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_284;
                  }

                  v307 = v277[2];
                  if (v307 >= v422)
                  {
                    v308 = v422;
                  }

                  else
                  {
                    v308 = v277[2];
                  }

                  if (v422)
                  {
                    v309 = v308;
                  }

                  else
                  {
                    v309 = 0;
                  }

                  if (v307 != v309)
                  {
                    sub_5136C(v277, (v277 + 4), 0, (2 * v309) | 1);
                    v335 = v334;

                    v277 = v335;
                  }

                  LODWORD(v82) = v372;
                  v260 = v369;
                  v310 = v277[2];
                  if (v310)
                  {
                    *v386 = _swiftEmptyArrayStorage;
                    sub_9ACC4(v310);
                    v311 = *v386;
                    v312 = v310 - 1;
                    for (i = 4; ; i += 17)
                    {
                      v314 = *&v277[i];
                      v315 = *&v277[i + 2];
                      v316 = *&v277[i + 4];
                      v397 = *&v277[i + 6];
                      v396 = v316;
                      v395 = v315;
                      v394 = v314;
                      sub_42BA4(&v394, v393);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_375F8(0, v311[2] + 1, 1);
                        v311 = *v386;
                      }

                      v318 = v311[2];
                      v317 = v311[3];
                      if (v318 >= v317 >> 1)
                      {
                        sub_375F8((v317 > 1), v318 + 1, 1);
                        v311 = *v386;
                      }

                      v311[2] = v318 + 1;
                      v319 = &v311[8 * v318];
                      v320 = v394;
                      v321 = v395;
                      v322 = v397;
                      v319[4] = v396;
                      v319[5] = v322;
                      v319[2] = v320;
                      v319[3] = v321;
                      if (!v312)
                      {
                        break;
                      }

                      --v312;
                    }

                    LODWORD(v82) = v372;
                    v260 = v369;
                  }

                  else
                  {

                    v311 = _swiftEmptyArrayStorage;
                  }

                  if (v311[2] < *(&v421 + 1))
                  {

                    v262 = v264;
                    v81 = v371;
                  }

                  else
                  {
                    *&v394 = v311;
                    sub_2B0C(&qword_229500, &unk_1BC580);
                    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
                    v323 = v351;
                    sub_1B43C4();
                    v324 = v368;
                    if ((*v362)(v323, 1, v368) == 1)
                    {
                      sub_42F48(v323, &qword_2296F0, &unk_1C3A10);
                    }

                    else
                    {
                      v325 = v349;
                      (*v348)(v349, v323, v324);
                      v326 = sub_2B0C(&qword_229740, &qword_1C6EE0);
                      v327 = *(v326 + 48);
                      v328 = *(v326 + 64);
                      v329 = v353;
                      (*v347)(v353, v325, v324);
                      *(v329 + v327) = v357;
                      *(v329 + v328) = 2;
                      swift_storeEnumTagMultiPayload();
                      v330 = sub_1AB914(*(&v422 + 1));
                      v331 = v354;
                      sub_CB8C0(v329, v354, type metadata accessor for CollectionRecommendation);
                      v332 = v376;
                      *(v331 + *(v376 + 20)) = v380;
                      *(v331 + *(v332 + 24)) = 1;
                      *(v331 + *(v332 + 28)) = v330;
                      v82 = v427;
                      swift_beginAccess();
                      v333 = v82;
                      LODWORD(v82) = v372;
                      sub_BE058(v331, v333);
                      swift_endAccess();
                      sub_25FBC(v331, type metadata accessor for ScoredCollectionRecommendation);
                      sub_25FBC(v329, type metadata accessor for CollectionRecommendation);
                      (*v346)(v349, v324);
                    }

                    v262 = v264;
                    v81 = v371;
                    v260 = v369;
                  }

                  continue;
                }

                v276 = 0;
                v379 = v274 + 32;
                v277 = _swiftEmptyArrayStorage;
                while (2)
                {
                  if (v276 >= *(v274 + 16))
                  {
                    goto LABEL_275;
                  }

                  v278 = (v379 + 136 * v276);
                  v394 = *v278;
                  v279 = v278[1];
                  v280 = v278[2];
                  v281 = v278[3];
                  v398 = v278[4];
                  v397 = v281;
                  v396 = v280;
                  v395 = v279;
                  v282 = v278[5];
                  v283 = v278[6];
                  v284 = v278[7];
                  LOBYTE(v402) = *(v278 + 128);
                  v401 = v284;
                  v400 = v283;
                  v399 = v282;
                  ++v276;
                  v285 = BYTE8(v394);
                  if (v381[2])
                  {
                    v286 = v394;
                    v287 = v381;
                    v288 = v381[5];
                    v289 = sub_1B57E4();
                    v290 = *(v287 + 32);
                    v274 = v378;
                    v291 = -1 << v290;
                    v292 = v289 & ~(-1 << v290);
                    if ((*(v261 + ((v292 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v292))
                    {
                      v293 = ~v291;
                      while (*(v381[6] + 8 * v292) != v286)
                      {
                        v292 = (v292 + 1) & v293;
                        if (((*(v261 + ((v292 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v292) & 1) == 0)
                        {
                          goto LABEL_229;
                        }
                      }

LABEL_222:
                      if (v276 == v275)
                      {
                        goto LABEL_245;
                      }

                      continue;
                    }
                  }

                  break;
                }

LABEL_229:
                if (v380)
                {
                  if (v380 == 1)
                  {
                    if ((v285 & 1) == 0)
                    {
                      v294 = sub_1B5604();
                      sub_429F8(&v394, v393);

                      if (v294)
                      {
                        goto LABEL_239;
                      }

LABEL_221:
                      sub_5C740(&v394);
                      goto LABEL_222;
                    }

                    goto LABEL_238;
                  }

                  sub_429F8(&v394, v393);
                }

                else
                {
                  if (v285)
                  {
                    v295 = sub_1B5604();
                    sub_429F8(&v394, v393);

                    if (v295)
                    {
                      goto LABEL_239;
                    }

                    goto LABEL_221;
                  }

LABEL_238:
                  sub_429F8(&v394, v393);
                }

LABEL_239:
                v296 = swift_isUniquelyReferenced_nonNull_native();
                *v386 = v277;
                if ((v296 & 1) == 0)
                {
                  sub_37574(0, v277[2] + 1, 1);
                  v277 = *v386;
                }

                v298 = v277[2];
                v297 = v277[3];
                v299 = v298 + 1;
                if (v298 >= v297 >> 1)
                {
                  sub_37574((v297 > 1), v298 + 1, 1);
                  v299 = v298 + 1;
                  v277 = *v386;
                }

                v277[2] = v299;
                v300 = &v277[17 * v298];
                *(v300 + 2) = v394;
                v301 = v395;
                v302 = v396;
                v303 = v398;
                *(v300 + 5) = v397;
                *(v300 + 6) = v303;
                *(v300 + 3) = v301;
                *(v300 + 4) = v302;
                v304 = v399;
                v305 = v400;
                v306 = v401;
                *(v300 + 160) = v402;
                *(v300 + 8) = v305;
                *(v300 + 9) = v306;
                *(v300 + 7) = v304;
                goto LABEL_222;
              }

              break;
            }

            while (1)
            {
              v264 = v262 + 1;
              if (__OFADD__(v262, 1))
              {
                break;
              }

              if (v264 >= v365)
              {
                goto LABEL_34;
              }

              v263 = *(v366 + 8 * v264);
              ++v262;
              if (v263)
              {
                goto LABEL_214;
              }
            }

LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
            JUMPOUT(0xBDF54);
          }

          v178 = *(v419 + 64);
          v366 = v419 + 64;
          v179 = 1 << *(v419 + 32);
          if (v179 < 64)
          {
            v180 = ~(-1 << v179);
          }

          else
          {
            v180 = -1;
          }

          v377 = v180 & v178;
          v364 = v419;
          v365 = (v179 + 63) >> 6;
          v370 = v412;
          v181 = v412 + 7;
          v182 = v381 + 7;

          v183 = 0;
          v369 = v181;
          while (1)
          {
            while (1)
            {
              v184 = v377;
              if (!v377)
              {
                while (1)
                {
                  v185 = v183 + 1;
                  if (__OFADD__(v183, 1))
                  {
                    break;
                  }

                  if (v185 >= v365)
                  {
LABEL_34:

                    v70 = v363;
                    v71 = v367;
                    goto LABEL_35;
                  }

                  v184 = *(v366 + 8 * v185);
                  ++v183;
                  if (v184)
                  {
                    goto LABEL_148;
                  }
                }

                __break(1u);
LABEL_278:
                __break(1u);
                goto LABEL_279;
              }

              v185 = v183;
LABEL_148:
              v186 = (v185 << 9) | (8 * __clz(__rbit64(v184)));
              v187 = *(*(v364 + 48) + v186);
              v188 = *(*(v364 + 56) + v186);
              v377 = (v184 - 1) & v184;
              v378 = v188;
              if (!v370[2])
              {
                break;
              }

              v189 = v370;
              v190 = v370[5];
              v191 = sub_1B57E4();
              v192 = -1 << *(v189 + 32);
              v193 = v191 & ~v192;
              if (((*(v181 + ((v193 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v193) & 1) == 0)
              {
                break;
              }

              v194 = ~v192;
              while (*(v370[6] + 8 * v193) != v187)
              {
                v193 = (v193 + 1) & v194;
                if (((*(v181 + ((v193 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v193) & 1) == 0)
                {
                  goto LABEL_153;
                }
              }

              v183 = v185;
            }

LABEL_153:
            v357 = v187;
            v195 = v378;
            v196 = *(v378 + 16);

            if (v196)
            {
              break;
            }

            v198 = _swiftEmptyArrayStorage;
LABEL_179:
            if ((v422 & 0x8000000000000000) != 0)
            {
              goto LABEL_283;
            }

            v228 = v198[2];
            if (v228 >= v422)
            {
              v229 = v422;
            }

            else
            {
              v229 = v198[2];
            }

            if (v422)
            {
              v230 = v229;
            }

            else
            {
              v230 = 0;
            }

            if (v228 != v230)
            {
              sub_5136C(v198, (v198 + 4), 0, (2 * v230) | 1);
              v256 = v255;

              v198 = v256;
            }

            LODWORD(v82) = v372;
            v181 = v369;
            v231 = v198[2];
            if (v231)
            {
              *v386 = _swiftEmptyArrayStorage;
              sub_9ACC4(v231);
              v232 = *v386;
              v233 = v231 - 1;
              for (j = 4; ; j += 17)
              {
                v235 = *&v198[j];
                v236 = *&v198[j + 2];
                v237 = *&v198[j + 4];
                v397 = *&v198[j + 6];
                v396 = v237;
                v395 = v236;
                v394 = v235;
                sub_42BA4(&v394, v393);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_375F8(0, v232[2] + 1, 1);
                  v232 = *v386;
                }

                v239 = v232[2];
                v238 = v232[3];
                if (v239 >= v238 >> 1)
                {
                  sub_375F8((v238 > 1), v239 + 1, 1);
                  v232 = *v386;
                }

                v232[2] = v239 + 1;
                v240 = &v232[8 * v239];
                v241 = v394;
                v242 = v395;
                v243 = v397;
                v240[4] = v396;
                v240[5] = v243;
                v240[2] = v241;
                v240[3] = v242;
                if (!v233)
                {
                  break;
                }

                --v233;
              }

              LODWORD(v82) = v372;
              v181 = v369;
            }

            else
            {

              v232 = _swiftEmptyArrayStorage;
            }

            if (v232[2] < *(&v421 + 1))
            {

              v183 = v185;
              v81 = v371;
            }

            else
            {
              *&v394 = v232;
              sub_2B0C(&qword_229500, &unk_1BC580);
              sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
              v244 = v352;
              sub_1B43C4();
              v245 = v368;
              if ((*v362)(v244, 1, v368) == 1)
              {
                sub_42F48(v244, &qword_2296F0, &unk_1C3A10);
              }

              else
              {
                v246 = v350;
                (*v348)(v350, v244, v245);
                v247 = sub_2B0C(&qword_229740, &qword_1C6EE0);
                v248 = *(v247 + 48);
                v249 = *(v247 + 64);
                v250 = v353;
                (*v347)(v353, v246, v245);
                *(v250 + v248) = v357;
                *(v250 + v249) = 2;
                swift_storeEnumTagMultiPayload();
                v251 = sub_1AB914(*(&v422 + 1));
                v252 = v354;
                sub_CB8C0(v250, v354, type metadata accessor for CollectionRecommendation);
                v253 = v376;
                *(v252 + *(v376 + 20)) = v380;
                *(v252 + *(v253 + 24)) = 1;
                *(v252 + *(v253 + 28)) = v251;
                v82 = v427;
                swift_beginAccess();
                v254 = v82;
                LODWORD(v82) = v372;
                sub_BE058(v252, v254);
                swift_endAccess();
                sub_25FBC(v252, type metadata accessor for ScoredCollectionRecommendation);
                sub_25FBC(v250, type metadata accessor for CollectionRecommendation);
                (*v346)(v350, v245);
              }

              v183 = v185;
              v81 = v371;
              v181 = v369;
            }
          }

          v197 = 0;
          v379 = v195 + 32;
          v198 = _swiftEmptyArrayStorage;
          while (2)
          {
            if (v197 >= *(v195 + 16))
            {
              goto LABEL_274;
            }

            v199 = (v379 + 136 * v197);
            v394 = *v199;
            v200 = v199[1];
            v201 = v199[2];
            v202 = v199[3];
            v398 = v199[4];
            v397 = v202;
            v396 = v201;
            v395 = v200;
            v203 = v199[5];
            v204 = v199[6];
            v205 = v199[7];
            LOBYTE(v402) = *(v199 + 128);
            v401 = v205;
            v400 = v204;
            v399 = v203;
            ++v197;
            v206 = BYTE8(v394);
            if (v381[2])
            {
              v207 = v394;
              v208 = v381;
              v209 = v381[5];
              v210 = sub_1B57E4();
              v211 = *(v208 + 32);
              v195 = v378;
              v212 = -1 << v211;
              v213 = v210 & ~(-1 << v211);
              if ((*(v182 + ((v213 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v213))
              {
                v214 = ~v212;
                while (*(v381[6] + 8 * v213) != v207)
                {
                  v213 = (v213 + 1) & v214;
                  if (((*(v182 + ((v213 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v213) & 1) == 0)
                  {
                    goto LABEL_163;
                  }
                }

LABEL_156:
                if (v197 == v196)
                {
                  goto LABEL_179;
                }

                continue;
              }
            }

            break;
          }

LABEL_163:
          if (v380)
          {
            if (v380 == 1)
            {
              if ((v206 & 1) == 0)
              {
                v215 = sub_1B5604();
                sub_429F8(&v394, v393);

                if (v215)
                {
                  goto LABEL_173;
                }

LABEL_155:
                sub_5C740(&v394);
                goto LABEL_156;
              }

              goto LABEL_172;
            }

            sub_429F8(&v394, v393);
          }

          else
          {
            if (v206)
            {
              v216 = sub_1B5604();
              sub_429F8(&v394, v393);

              if (v216)
              {
                goto LABEL_173;
              }

              goto LABEL_155;
            }

LABEL_172:
            sub_429F8(&v394, v393);
          }

LABEL_173:
          v217 = swift_isUniquelyReferenced_nonNull_native();
          *v386 = v198;
          if ((v217 & 1) == 0)
          {
            sub_37574(0, v198[2] + 1, 1);
            v198 = *v386;
          }

          v219 = v198[2];
          v218 = v198[3];
          v220 = v219 + 1;
          if (v219 >= v218 >> 1)
          {
            sub_37574((v218 > 1), v219 + 1, 1);
            v220 = v219 + 1;
            v198 = *v386;
          }

          v198[2] = v220;
          v221 = &v198[17 * v219];
          *(v221 + 2) = v394;
          v222 = v395;
          v223 = v396;
          v224 = v398;
          *(v221 + 5) = v397;
          *(v221 + 6) = v224;
          *(v221 + 3) = v222;
          *(v221 + 4) = v223;
          v225 = v399;
          v226 = v400;
          v227 = v401;
          *(v221 + 160) = v402;
          *(v221 + 8) = v226;
          *(v221 + 9) = v227;
          *(v221 + 7) = v225;
          goto LABEL_156;
        }

        if (v82 == 1)
        {
          v404 = v424;
          v405 = v425;
          v406 = v426;
          v407 = v427;
          v400 = v420;
          v401 = v421;
          v402 = v422;
          v403 = v423;
          v396 = v416;
          v397 = v417;
          v398 = v418;
          v399 = v419;
          v394 = v414;
          v395 = v415;
          v386[0] = v380;
          v336 = v358;

          sub_CBBBC(&v414, v393);
          sub_C8158(v386, v381, 1, &v394, v336, &v414);
LABEL_271:
          sub_CB960(&v414);

LABEL_35:
          v83 = v375;
LABEL_36:
          if (v81 == v374)
          {
            goto LABEL_30;
          }

          continue;
        }

        if (v82 != 2)
        {
          goto LABEL_36;
        }

        v92 = *(&v419 + 1) + 64;
        v93 = 1 << *(*(&v419 + 1) + 32);
        if (v93 < 64)
        {
          v94 = ~(-1 << v93);
        }

        else
        {
          v94 = -1;
        }

        v95 = v94 & *(*(&v419 + 1) + 64);
        v96 = (v93 + 63) >> 6;
        v377 = v411 + 56;
        v378 = v411;
        v97 = v381 + 7;
        v366 = *(&v419 + 1);

        v98 = 0;
        v364 = v96;
        v365 = v92;
        if (!v95)
        {
          while (1)
          {
LABEL_63:
            v99 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              goto LABEL_278;
            }

            if (v99 >= v96)
            {
              break;
            }

            v95 = *(v92 + 8 * v99);
            ++v98;
            if (v95)
            {
              v98 = v99;
              goto LABEL_67;
            }
          }

          v81 = v371;
          LODWORD(v82) = v372;
          goto LABEL_35;
        }

LABEL_67:
        while (2)
        {
          v369 = v98;
          v370 = ((v95 - 1) & v95);
          v100 = __clz(__rbit64(v95)) | (v98 << 6);
          v101 = (*(v366 + 48) + 568 * v100);
          memcpy(v428, v101, 0x231uLL);
          v102 = *(*(v366 + 56) + 8 * v100);
          memmove(&v394, v101, 0x231uLL);
          v408 = v102;
          memcpy(v393, v428, 0x231uLL);
          if (*(v378 + 16))
          {
            v103 = *&v428[0];
            v104 = *(v378 + 40);
            v384[2] = *(&v428[2] + 8);
            v384[3] = *(&v428[3] + 8);
            v384[4] = *(&v428[4] + 8);
            *&v384[5] = *(&v428[5] + 1);
            v384[0] = *(v428 + 8);
            v384[1] = *(&v428[1] + 8);
            v391 = v428[8];
            v390 = v428[7];
            v389 = v428[6];
            v105 = *&v393[9];
            v388 = *(&v428[9] + 8);
            memcpy(v392, &v428[10] + 8, sizeof(v392));
            v106 = LOBYTE(v393[35]);
            sub_1B57F4();
            sub_1B5834(v103);

            sub_4299C(v428, v386);
            Book.Metadata.hash(into:)(v387);
            if (v105 >> 1 == 0xFFFFFFFF)
            {
              sub_1B5814(0);
            }

            else
            {
              v384[0] = v389;
              v384[1] = v390;
              v384[2] = v391;
              *&v384[3] = v105;
              *(&v384[3] + 8) = v388;
              v383[0] = v389;
              v383[1] = v390;
              v383[2] = v391;
              v383[3] = v384[3];
              *&v383[4] = *(&v388 + 1);
              sub_1B5814(1u);
              sub_42CD4(v384, v386);
              InternalAffinitySource.hash(into:)(v387);
              *&v386[16] = v383[1];
              *&v386[32] = v383[2];
              *&v386[48] = v383[3];
              *&v386[64] = *&v383[4];
              *v386 = v383[0];
              sub_42D30(v386);
            }

            memcpy(v385, v392, 0x179uLL);
            if (sub_42D84(v385) == 1)
            {
              sub_1B5814(0);
            }

            else
            {
              memcpy(v386, v392, 0x179uLL);
              sub_1B5814(1u);
              BookHistory.hash(into:)();
            }

            sub_12CC70(v387, *(&v428[34] + 1));
            if (v106 == 12)
            {
              sub_1B5814(0);
            }

            else
            {
              v386[0] = v106;
              sub_1B5814(1u);
              PositiveAffinitySource.hash(into:)();
            }

            v107 = sub_1B5844();
            v108 = -1 << *(v378 + 32);
            v109 = v107 & ~v108;
            if ((*(v377 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109))
            {
              v110 = ~v108;
              while (1)
              {
                v111 = *(v378 + 48) + 568 * v109;
                memcpy(v384, v111, 0x231uLL);
                memcpy(v383, v111, 0x231uLL);
                sub_4299C(v384, &v382);
                LOBYTE(v111) = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v383, v393);
                memcpy(v386, v383, sizeof(v386));
                sub_2601C(v386);
                if (v111)
                {
                  break;
                }

                v109 = (v109 + 1) & v110;
                if (((*(v377 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
                {
                  goto LABEL_82;
                }
              }

              sub_42F48(&v394, &qword_22B480, &unk_1C3A28);
LABEL_136:
              v96 = v364;
              v92 = v365;
              v98 = v369;
              v95 = v370;
              if (!v370)
              {
                goto LABEL_63;
              }

              continue;
            }
          }

          else
          {

            sub_4299C(v428, v386);
          }

          break;
        }

LABEL_82:
        v112 = *(v102 + 16);
        if (!v112)
        {
          v114 = _swiftEmptyArrayStorage;
LABEL_108:
          if ((v422 & 0x8000000000000000) != 0)
          {
            goto LABEL_282;
          }

          v144 = v114[2];
          if (v144 >= v422)
          {
            v145 = v422;
          }

          else
          {
            v145 = v114[2];
          }

          if (v422)
          {
            v146 = v145;
          }

          else
          {
            v146 = 0;
          }

          if (v144 != v146)
          {
            sub_5136C(v114, (v114 + 4), 0, (2 * v146) | 1);
            v148 = v147;

            v144 = v148[2];
            v114 = v148;
          }

          v149 = _swiftEmptyArrayStorage;
          if (v144)
          {
            *&v384[0] = _swiftEmptyArrayStorage;
            sub_9ACC4(v144);
            v149 = *&v384[0];
            v150 = v144 - 1;
            for (k = 4; ; k += 17)
            {
              v152 = *&v114[k];
              v153 = *&v114[k + 2];
              v154 = *&v114[k + 4];
              v393[3] = *&v114[k + 6];
              v393[2] = v154;
              v393[1] = v153;
              v393[0] = v152;
              sub_42BA4(v393, v386);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_375F8(0, v149[2] + 1, 1);
                v149 = *&v384[0];
              }

              v156 = v149[2];
              v155 = v149[3];
              if (v156 >= v155 >> 1)
              {
                sub_375F8((v155 > 1), v156 + 1, 1);
                v149 = *&v384[0];
              }

              v149[2] = v156 + 1;
              v157 = &v149[8 * v156];
              v158 = v393[0];
              v159 = v393[1];
              v160 = v393[3];
              v157[4] = v393[2];
              v157[5] = v160;
              v157[2] = v158;
              v157[3] = v159;
              if (!v150)
              {
                break;
              }

              --v150;
            }
          }

          v162 = v359;
          v161 = v360;
          v71 = v367;
          v163 = v368;
          if (v149[2] >= *(&v421 + 1))
          {
            *&v393[0] = v149;
            sub_2B0C(&qword_229500, &unk_1BC580);
            sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
            sub_1B43C4();
            if ((*v362)(v161, 1, v163) != 1)
            {
              (*v348)(v162, v161, v163);
              v164 = v420;
              if (*(v420 + 16) && (v165 = sub_3ABBC(v428), (v166 & 1) != 0))
              {
                v167 = *(*(v164 + 56) + 8 * v165);
                v168 = sub_2B0C(&qword_228F40, &unk_1BB360);
                v169 = *(v168 + 48);
                v170 = v345;
                (*v347)(v345, v162, v163);
                memcpy(&v170[v169], v428, 0x231uLL);
                *&v170[*(v168 + 64)] = v167;

                v171 = v170;
              }

              else
              {
                v172 = *(sub_2B0C(&qword_228F40, &unk_1BB360) + 48);
                v171 = v345;
                (*v347)(v345, v162, v163);
                memcpy((v171 + v172), v428, 0x231uLL);
                *(v171 + *(sub_2B0C(&qword_228F40, &unk_1BB360) + 64)) = _swiftEmptySetSingleton;
              }

              swift_storeEnumTagMultiPayload();
              v173 = *(&v422 + 1);
              sub_4299C(v428, v393);
              v174 = sub_1AB914(v173);
              v175 = v354;
              sub_CB8C0(v171, v354, type metadata accessor for CollectionRecommendation);
              v176 = v376;
              *(v175 + *(v376 + 20)) = v380;
              *(v175 + *(v176 + 24)) = 1;
              *(v175 + *(v176 + 28)) = v174;
              v177 = v427;
              swift_beginAccess();
              sub_BE058(v175, v177);
              swift_endAccess();
              sub_25FBC(v175, type metadata accessor for ScoredCollectionRecommendation);
              sub_25FBC(v171, type metadata accessor for CollectionRecommendation);
              (*v346)(v162, v163);
              sub_42F48(&v394, &qword_22B480, &unk_1C3A28);
              v70 = v363;
              v71 = v367;
              goto LABEL_136;
            }

            sub_42F48(v161, &qword_2296F0, &unk_1C3A10);
          }

          else
          {
          }

          sub_42F48(&v394, &qword_22B480, &unk_1C3A28);
          v70 = v363;
          goto LABEL_136;
        }

        v113 = 0;
        v379 = v102 + 32;
        v114 = _swiftEmptyArrayStorage;
        while (2)
        {
          if (v113 < *(v102 + 16))
          {
            v115 = v379 + 136 * v113;
            v393[0] = *v115;
            v116 = *(v115 + 16);
            v117 = *(v115 + 32);
            v118 = *(v115 + 48);
            v393[4] = *(v115 + 64);
            v393[3] = v118;
            v393[2] = v117;
            v393[1] = v116;
            v119 = *(v115 + 80);
            v120 = *(v115 + 96);
            v121 = *(v115 + 112);
            LOBYTE(v393[8]) = *(v115 + 128);
            v393[7] = v121;
            v393[6] = v120;
            v393[5] = v119;
            ++v113;
            v122 = BYTE8(v393[0]);
            if (v381[2])
            {
              v123 = *&v393[0];
              v124 = v102;
              v125 = v381;
              v126 = v381[5];
              v127 = sub_1B57E4();
              v128 = *(v125 + 32);
              v102 = v124;
              v129 = -1 << v128;
              v130 = v127 & ~(-1 << v128);
              if ((*(v97 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130))
              {
                v131 = ~v129;
                while (*(v381[6] + 8 * v130) != v123)
                {
                  v130 = (v130 + 1) & v131;
                  if (((*(v97 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }

LABEL_85:
                if (v113 == v112)
                {
                  goto LABEL_108;
                }

                continue;
              }
            }

LABEL_92:
            if (v380)
            {
              if (v380 == 1)
              {
                if ((v122 & 1) == 0)
                {
                  v132 = sub_1B5604();
                  sub_429F8(v393, v386);

                  if (v132)
                  {
                    goto LABEL_102;
                  }

LABEL_84:
                  sub_5C740(v393);
                  goto LABEL_85;
                }

                goto LABEL_101;
              }

              sub_429F8(v393, v386);
            }

            else
            {
              if (v122)
              {
                v133 = sub_1B5604();
                sub_429F8(v393, v386);

                if (v133)
                {
                  goto LABEL_102;
                }

                goto LABEL_84;
              }

LABEL_101:
              sub_429F8(v393, v386);
            }

LABEL_102:
            v134 = swift_isUniquelyReferenced_nonNull_native();
            *&v384[0] = v114;
            if ((v134 & 1) == 0)
            {
              sub_37574(0, v114[2] + 1, 1);
              v114 = *&v384[0];
            }

            v136 = v114[2];
            v135 = v114[3];
            if (v136 >= v135 >> 1)
            {
              sub_37574((v135 > 1), v136 + 1, 1);
              v114 = *&v384[0];
            }

            v114[2] = v136 + 1;
            v137 = &v114[17 * v136];
            *(v137 + 2) = v393[0];
            v138 = v393[1];
            v139 = v393[2];
            v140 = v393[4];
            *(v137 + 5) = v393[3];
            *(v137 + 6) = v140;
            *(v137 + 3) = v138;
            *(v137 + 4) = v139;
            v141 = v393[5];
            v142 = v393[6];
            v143 = v393[7];
            *(v137 + 160) = v393[8];
            *(v137 + 8) = v142;
            *(v137 + 9) = v143;
            *(v137 + 7) = v141;
            goto LABEL_85;
          }

          break;
        }

        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        *&v394 = v409;
        sub_42F48(&v394, &qword_2292C8, &unk_1BCB00);
        *&v393[0] = v410;
        sub_42F48(v393, &qword_2292C8, &unk_1BCB00);
        *v386 = v411;
        sub_42F48(v386, &qword_229300, &qword_1BC3B8);
        *&v384[0] = v412;
        sub_42F48(v384, &qword_2292C8, &unk_1BCB00);
        *&v383[0] = v413;
        v73 = v383;
LABEL_29:
        sub_42F48(v73, &qword_22B478, &qword_1C3A20);
        v74 = *(v358 + 16);

        v76 = sub_BB174(v75);
        v78 = v77;

        v79 = sub_C6EA8(v76, v78);

        sub_CB960(&v414);

        sub_CB960(&v414);

        sub_CB960(&v414);

        return v79;
    }
  }
}

uint64_t sub_BDF88(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 <= a2)
  {
    goto LABEL_7;
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 == 1)
  {
LABEL_13:
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  if (!*(v3 + 88))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v3 + 96) >= *(result + 8))
  {
    return result;
  }

  v5 = result;
  sub_C5694();
  result = v5;
LABEL_7:

  return sub_BAAD4(result);
}

uint64_t sub_BE058(uint64_t a1, uint64_t a2)
{
  v5 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ScoredCollectionRecommendation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v2 + 16);
  if (v15 > a2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
LABEL_13:
        result = sub_1B5234();
        __break(1u);
        return result;
      }

      sub_43050(*v2 + *(v6 + 72) + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v9, &qword_229408, &unk_1BCC10);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        sub_CBA88(v9, v14, type metadata accessor for ScoredCollectionRecommendation);
        v16 = *(v10 + 28);
        v17 = *(a1 + v16);
        v18 = *&v14[v16];
        result = sub_25FBC(v14, type metadata accessor for ScoredCollectionRecommendation);
        if (v18 < v17)
        {
          sub_C5ADC();
          return sub_BADCC(a1);
        }

        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return sub_BADCC(a1);
}

uint64_t sub_BE2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v98 = type metadata accessor for CollectionRecommendation(0);
  v6 = *(*(v98 - 8) + 64);
  v7 = __chkstk_darwin(v98);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v80 - v10;
  v83 = type metadata accessor for ScoredCollectionRecommendation();
  v11 = *(v83 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v83);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v100 = &v80 - v17;
  __chkstk_darwin(v16);
  v19 = &v80 - v18;
  v91 = a1;
  CollectionRecommendation.collectionRecommendationType.getter(v101);
  v99 = v101[0];
  v20 = v3[3];
  v21 = *(v20 + 16);

  v22 = 1.0;
  v23 = 1.0;
  if (v21)
  {
    v24 = sub_3AA80(v99);
    if (v25)
    {
      v23 = *(*(v20 + 56) + 8 * v24);
    }
  }

  v26 = v3[4];
  v27 = *(v26 + 16);

  v90 = v26;
  if (v27)
  {
    v28 = sub_3AA80(v99);
    if (v29)
    {
      v22 = *(*(v90 + 56) + 8 * v28);
    }
  }

  v84 = v20;
  v85 = v15;
  v87 = v3;
  v88 = a2;
  v30 = *v3;
  v31 = *(*v3 + 16);
  v86 = v11;
  v82 = v30;
  v89 = v31;
  if (v31)
  {
    v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v33 = *(v11 + 72);
    v34 = v30 + v32;
    v96 = 0x80000000001D47A0;
    v97 = v32;
    v94 = 0x80000000001D4760;
    v95 = 0x80000000001D4780;
    v93 = 0x80000000001D4740;
    v35 = _swiftEmptyArrayStorage;
    v92 = 0x80000000001D4FE0;
    while (2)
    {
      sub_CB8C0(v34, v19, type metadata accessor for ScoredCollectionRecommendation);
      sub_CB8C0(v19, v9, type metadata accessor for CollectionRecommendation);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v36 = 0xE500000000000000;
          v37 = 0x736B6F6F62;
          break;
        case 2u:
          v40 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v101, &v9[*(v40 + 48)], 0x231uLL);
          sub_2601C(v101);
          v41 = *&v9[*(v40 + 64)];

          v42 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v42 - 8) + 8))(v9, v42);
          v37 = 0xD000000000000010;
          v36 = v92;
          break;
        case 3u:
          v43 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v43 - 8) + 8))(v9, v43);
          v37 = 0x417942736B6F6F62;
          v36 = 0xED0000726F687475;
          break;
        case 4u:
          v39 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v39 - 8) + 8))(v9, v39);
          v37 = 0xD000000000000017;
          v36 = v93;
          break;
        case 5u:
          v45 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v45 - 8) + 8))(v9, v45);
          v37 = 0x476E49736B6F6F62;
          v36 = 0xEC00000065726E65;
          break;
        case 6u:
          v46 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v46 - 8) + 8))(v9, v46);
          v37 = 0xD000000000000011;
          v36 = v94;
          break;
        case 7u:
          v44 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v44 - 8) + 8))(v9, v44);
          v37 = 0xD000000000000011;
          v36 = v95;
          break;
        case 8u:
          v47 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v47 - 8) + 8))(v9, v47);
          v37 = 0xD000000000000013;
          v36 = v96;
          break;
        case 9u:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v36 = 0xE600000000000000;
          v37 = 0x736569726573;
          break;
        case 0xAu:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v38 = 1954047342;
          goto LABEL_24;
        case 0xBu:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v38 = 1701998445;
LABEL_24:
          v37 = v38 | 0x65536E4900000000;
          v36 = 0xEC00000073656972;
          break;
        case 0xCu:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v37 = 0x6867696C68676968;
          v36 = 0xEA00000000007374;
          break;
        default:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v36 = 0xE400000000000000;
          v37 = 1802465122;
          break;
      }

      v48 = 0xE400000000000000;
      v49 = 1802465122;
      switch(v99)
      {
        case 1:
          v48 = 0xE500000000000000;
          if (v37 == 0x736B6F6F62)
          {
            goto LABEL_49;
          }

          goto LABEL_52;
        case 2:
          v48 = v92;
          if (v37 != 0xD000000000000010)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 3:
          v48 = 0xED0000726F687475;
          if (v37 != 0x417942736B6F6F62)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 4:
          v48 = v93;
          if (v37 != 0xD000000000000017)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 5:
          v50 = 0x476E49736B6F6F62;
          v51 = 1701998181;
          goto LABEL_43;
        case 6:
          v48 = v94;
          if (v37 != 0xD000000000000011)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 7:
          v48 = v95;
          if (v37 != 0xD000000000000011)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 8:
          v48 = v96;
          if (v37 != 0xD000000000000013)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 9:
          v48 = 0xE600000000000000;
          if (v37 != 0x736569726573)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 10:
          v49 = 0x65536E497478656ELL;
          v48 = 0xEC00000073656972;
          goto LABEL_48;
        case 11:
          v50 = 0x65536E4965726F6DLL;
          v51 = 1936025970;
LABEL_43:
          v48 = v51 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v37 != v50)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 12:
          v48 = 0xEA00000000007374;
          if (v37 != 0x6867696C68676968)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        default:
LABEL_48:
          if (v37 != v49)
          {
            goto LABEL_52;
          }

LABEL_49:
          if (v36 == v48)
          {
          }

          else
          {
LABEL_52:
            v52 = sub_1B5604();

            if ((v52 & 1) == 0)
            {
              sub_25FBC(v19, type metadata accessor for ScoredCollectionRecommendation);
              goto LABEL_10;
            }
          }

          sub_CBA88(v19, v100, type metadata accessor for ScoredCollectionRecommendation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v102 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_37934(0, v35[2] + 1, 1);
            v35 = v102;
          }

          v55 = v35[2];
          v54 = v35[3];
          if (v55 >= v54 >> 1)
          {
            sub_37934(v54 > 1, v55 + 1, 1);
            v35 = v102;
          }

          v35[2] = v55 + 1;
          sub_CBA88(v100, v35 + v97 + v55 * v33, type metadata accessor for ScoredCollectionRecommendation);
LABEL_10:
          v34 += v33;
          if (--v31)
          {
            continue;
          }

          goto LABEL_59;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_59:
  v56 = v35[2];

  v57 = v81;
  sub_CB8C0(v91, v81, type metadata accessor for CollectionRecommendation);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v58 = *(v57 + *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48));
    v59 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v59 - 8) + 8))(v57, v59);
    v61 = v87;
    v60 = v88;
    v62 = v87[5];
    v63 = 1.0;
    v65 = v85;
    v64 = v86;
    v66 = v90;
    if (*(v62 + 16))
    {
      v67 = sub_43124(v58);
      if (v68)
      {
        v63 = *(*(v62 + 56) + 8 * v67);
      }
    }
  }

  else
  {
    sub_25FBC(v57, type metadata accessor for CollectionRecommendation);
    v63 = 1.0;
    v61 = v87;
    v60 = v88;
    v65 = v85;
    v64 = v86;
    v66 = v90;
  }

  v69 = *(v91 + *(v83 + 28));
  v71 = *(v61 + 1);
  v70 = *(v61 + 2);
  sub_CB8C0(v91, v65, type metadata accessor for ScoredCollectionRecommendation);
  v72 = v82;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_33C88(0, v89 + 1, 1, v72);
  }

  v74 = v72[2];
  v73 = v72[3];
  v75 = v72;
  if (v74 >= v73 >> 1)
  {
    v75 = sub_33C88(v73 > 1, v74 + 1, 1, v72);
  }

  v76 = v69 * pow(v70, v89);
  v77 = v71 + v63 * (v23 * (v76 * pow(v22, v56)));
  *(v75 + 16) = v74 + 1;
  sub_CBA88(v65, v75 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v74, type metadata accessor for ScoredCollectionRecommendation);
  v78 = v61[5];

  *v60 = v75;
  *(v60 + 8) = v77;
  *(v60 + 16) = v70;
  *(v60 + 24) = v84;
  *(v60 + 32) = v66;
  *(v60 + 40) = result;
  *(v60 + 48) = 0;
  return result;
}

uint64_t sub_BEF28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  v6 = sub_BB45C(v5);
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_BEF94@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 32);
    v6 = *(result + 40);
    v5 = *(result + 48);
    v7 = *(result + 56);
    v8 = *(result + 64);
    v9 = *(result + 72);
    v10 = *(result + 80);
    v11 = result;

    v12 = v11 + 8;
    v13 = 1;
LABEL_3:
    v14 = (v12 + 56 * v13);
    while (1)
    {
      if (v3 == v13)
      {
        *a2 = v4;
        *(a2 + 8) = v6;
        *(a2 + 16) = v5;
        *(a2 + 24) = v7;
        *(a2 + 32) = v8;
        *(a2 + 40) = v9;
        *(a2 + 48) = v10 & 1;
        return result;
      }

      if (v13 >= v3)
      {
        break;
      }

      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_12;
      }

      v16 = v14[4];
      ++v13;
      v14 += 7;
      if (v6 < v16)
      {
        v21 = v12;
        v4 = *(v14 - 4);
        v5 = *(v14 - 2);
        v17 = *(v14 - 1);
        v18 = *v14;
        v19 = *(v14 + 1);
        v20 = *(v14 + 16);

        v12 = v21;
        v13 = v15;
        v6 = v16;
        v7 = v17;
        v10 = v20;
        v8 = v18;
        v9 = v19;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_BF11C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_BF160(uint64_t a1)
{
  v3 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v134 - v5;
  v7 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v151 = *(v7 - 8);
  v8 = *(v151 + 64);
  __chkstk_darwin(v7);
  v149 = &v134 - v9;
  v10 = type metadata accessor for CollectionRecommendation(0);
  v144 = *(v10 - 8);
  v11 = *(v144 + 64);
  v12 = __chkstk_darwin(v10);
  v145 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v134 - v14;
  v16 = v1[2];
  if (!*(v16 + 16) || (v17 = v1[13], v18 = v1[16], v141 = v1[15], v146 = v18, v19 = sub_3AA80(12), (v20 & 1) == 0) || (v21 = *(v16 + 56) + 24 * v19, (*(v21 + 8) & 1) != 0) || *v21 < 1)
  {

    return a1;
  }

  v152 = v17;
  v137 = v10;
  v147 = v7;
  v143 = v6;
  v22 = *(a1 + 16);
  v155 = *(v21 + 16);
  v135 = a1;
  if (v22)
  {
    v23 = a1 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v24 = *(v144 + 72);

    v25 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_CB8C0(v23, v15, type metadata accessor for CollectionRecommendation);
      v27 = CollectionRecommendation.books.getter();
      result = sub_25FBC(v15, type metadata accessor for CollectionRecommendation);
      v28 = *(v27 + 2);
      v29 = *(v25 + 2);
      v30 = v29 + v28;
      if (__OFADD__(v29, v28))
      {
        goto LABEL_128;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v30 <= *(v25 + 3) >> 1)
      {
        if (*(v27 + 2))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v29 <= v30)
        {
          v31 = v29 + v28;
        }

        else
        {
          v31 = v29;
        }

        result = sub_3349C(result, v31, 1, v25);
        v25 = result;
        if (*(v27 + 2))
        {
LABEL_18:
          if ((*(v25 + 3) >> 1) - *(v25 + 2) < v28)
          {
            goto LABEL_130;
          }

          swift_arrayInitWithCopy();

          if (v28)
          {
            v32 = *(v25 + 2);
            v33 = __OFADD__(v32, v28);
            v34 = v32 + v28;
            if (v33)
            {
              goto LABEL_131;
            }

            *(v25 + 2) = v34;
          }

          goto LABEL_8;
        }
      }

      if (v28)
      {
        goto LABEL_129;
      }

LABEL_8:
      v23 += v24;
      if (!--v22)
      {
        goto LABEL_25;
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_25:
  v35 = *(v25 + 2);
  v36 = v152;
  if (v35)
  {
    *&v158 = _swiftEmptyArrayStorage;
    sub_3741C(0, v35, 0);
    v37 = v158;
    v38 = *(v158 + 16);
    v39 = 32;
    do
    {
      v40 = *&v25[v39];
      *&v158 = v37;
      v41 = v37[3];
      if (v38 >= v41 >> 1)
      {
        sub_3741C((v41 > 1), v38 + 1, 1);
        v37 = v158;
      }

      v37[2] = v38 + 1;
      v37[v38 + 4] = v40;
      v39 += 64;
      ++v38;
      --v35;
    }

    while (v35);
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  v42 = sub_40854(v37);

  v43 = 0;
  v44 = v155;
  v154 = v155 + 56;
  v156 = v36 + 32;
  v45 = v42 + 56;
  v142 = (v151 + 48);
  v136 = (v151 + 16);
  v138 = (v151 + 8);
  v139 = (v151 + 32);
  v140 = _swiftEmptyArrayStorage;
  v153 = v42;
  while (1)
  {
    if (!*(v44 + 16))
    {
      goto LABEL_35;
    }

    v151 = v43;
    v46 = *(&off_2131F8 + v43 + 32);
    v47 = *(v44 + 40);
    sub_1B57F4();

    sub_1B4884();

    v48 = sub_1B5844();
    v49 = -1 << *(v44 + 32);
    v50 = v48 & ~v49;
    if ((*(v154 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
    {
      break;
    }

LABEL_33:

LABEL_34:
    v43 = v151;
LABEL_35:
    if (++v43 == 3)
    {

      *&v158 = v135;

      sub_5F428(v140);
      return v158;
    }
  }

  v51 = ~v49;
  while (!*(*(v155 + 48) + v50))
  {
    v53 = 0xE500000000000000;
    v52 = 0x6B6F6F6265;
    if (!v46)
    {
      goto LABEL_53;
    }

LABEL_44:
    if (v46 == 1)
    {
      v54 = 0x6F6F626F69647561;
    }

    else
    {
      v54 = 0x646578696DLL;
    }

    if (v46 == 1)
    {
      v55 = 0xE90000000000006BLL;
    }

    else
    {
      v55 = 0xE500000000000000;
    }

    if (v52 == v54)
    {
      goto LABEL_54;
    }

LABEL_55:
    v56 = sub_1B5604();

    if (v56)
    {
      goto LABEL_59;
    }

    v50 = (v50 + 1) & v51;
    if (((*(v154 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      v44 = v155;
      goto LABEL_33;
    }
  }

  if (*(*(v155 + 48) + v50) == 1)
  {
    v52 = 0x6F6F626F69647561;
    v53 = 0xE90000000000006BLL;
    if (!v46)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v53 = 0xE500000000000000;
  v52 = 0x646578696DLL;
  if (v46)
  {
    goto LABEL_44;
  }

LABEL_53:
  v55 = 0xE500000000000000;
  if (v52 != 0x6B6F6F6265)
  {
    goto LABEL_55;
  }

LABEL_54:
  if (v53 != v55)
  {
    goto LABEL_55;
  }

LABEL_59:

  v57 = *(v36 + 16);
  v58 = v153;
  if (!v57)
  {
    v60 = _swiftEmptyArrayStorage;
LABEL_76:
    v82 = v60[2];
    if (v82)
    {
      v83 = 0;
      v150 = v60 + 4;
      v148 = v82 - 1;
      v84 = _swiftEmptyArrayStorage;
LABEL_78:
      v85 = &v150[17 * v83];
      v86 = v83;
      while (1)
      {
        if (v86 >= v60[2])
        {
          goto LABEL_127;
        }

        v158 = *v85;
        v87 = *(v85 + 1);
        v88 = *(v85 + 2);
        v89 = *(v85 + 4);
        v161 = *(v85 + 3);
        v162 = v89;
        v159 = v87;
        v160 = v88;
        v90 = *(v85 + 5);
        v91 = *(v85 + 6);
        v92 = *(v85 + 7);
        v166 = *(v85 + 128);
        v164 = v91;
        v165 = v92;
        v163 = v90;
        if (v46)
        {
          if (v46 != 1)
          {
            sub_429F8(&v158, v157);
            goto LABEL_91;
          }

          if (BYTE8(v158))
          {
            goto LABEL_90;
          }

          v93 = sub_1B5604();
          sub_429F8(&v158, v157);

          if (v93)
          {
            goto LABEL_91;
          }
        }

        else
        {
          if ((BYTE8(v158) & 1) == 0)
          {
LABEL_90:
            sub_429F8(&v158, v157);

LABEL_91:
            result = swift_isUniquelyReferenced_nonNull_native();
            v167 = v84;
            if ((result & 1) == 0)
            {
              result = sub_37574(0, v84[2] + 1, 1);
              v84 = v167;
            }

            v96 = v84[2];
            v95 = v84[3];
            v97 = v96 + 1;
            if (v96 >= v95 >> 1)
            {
              result = sub_37574((v95 > 1), v96 + 1, 1);
              v97 = v96 + 1;
              v84 = v167;
            }

            v83 = v86 + 1;
            v84[2] = v97;
            v98 = &v84[17 * v96];
            *(v98 + 2) = v158;
            v99 = v159;
            v100 = v160;
            v101 = v162;
            *(v98 + 5) = v161;
            *(v98 + 6) = v101;
            *(v98 + 3) = v99;
            *(v98 + 4) = v100;
            v102 = v163;
            v103 = v164;
            v104 = v165;
            *(v98 + 160) = v166;
            *(v98 + 8) = v103;
            *(v98 + 9) = v104;
            *(v98 + 7) = v102;
            if (v148 != v86)
            {
              goto LABEL_78;
            }

            goto LABEL_98;
          }

          v94 = sub_1B5604();
          sub_429F8(&v158, v157);

          if (v94)
          {
            goto LABEL_91;
          }
        }

        ++v86;
        result = sub_5C740(&v158);
        v85 += 17;
        if (v82 == v86)
        {
          goto LABEL_98;
        }
      }
    }

    v84 = _swiftEmptyArrayStorage;
LABEL_98:

    v105 = v84[2];
    if (v105)
    {
      v167 = _swiftEmptyArrayStorage;
      sub_375F8(0, v105, 0);
      v106 = v167;
      v107 = v105 - 1;
      for (i = 4; ; i += 17)
      {
        v109 = *&v84[i];
        v110 = *&v84[i + 2];
        v111 = *&v84[i + 6];
        v160 = *&v84[i + 4];
        v161 = v111;
        v158 = v109;
        v159 = v110;
        sub_42BA4(&v158, v157);
        v167 = v106;
        v113 = v106[2];
        v112 = v106[3];
        if (v113 >= v112 >> 1)
        {
          sub_375F8((v112 > 1), v113 + 1, 1);
          v106 = v167;
        }

        v106[2] = v113 + 1;
        v114 = &v106[8 * v113];
        v115 = v158;
        v116 = v159;
        v117 = v161;
        v114[4] = v160;
        v114[5] = v117;
        v114[2] = v115;
        v114[3] = v116;
        if (!v107)
        {
          break;
        }

        --v107;
      }
    }

    else
    {

      v106 = _swiftEmptyArrayStorage;
    }

    v36 = v152;
    v119 = sub_43174(v146, v106);
    v121 = v120;
    v123 = v122;
    if (v122)
    {
      v125 = v118;
      sub_1B5744();
      swift_unknownObjectRetain_n();
      v126 = swift_dynamicCastClass();
      if (!v126)
      {
        swift_unknownObjectRelease();
        v126 = _swiftEmptyArrayStorage;
      }

      v127 = v126[2];

      if (__OFSUB__(v123 >> 1, v121))
      {
        goto LABEL_132;
      }

      if (v127 == (v123 >> 1) - v121)
      {
        v124 = swift_dynamicCastClass();
        v36 = v152;
        if (!v124)
        {
          swift_unknownObjectRelease();
          v124 = _swiftEmptyArrayStorage;
        }

LABEL_114:
        *&v158 = v124;
        sub_2B0C(&qword_229500, &unk_1BC580);
        sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
        v128 = v143;
        sub_1B43C4();
        v129 = v147;
        if ((*v142)(v128, 1, v147) == 1)
        {
          swift_unknownObjectRelease();
          sub_42F48(v128, &qword_2296F0, &unk_1C3A10);
          v44 = v155;
        }

        else
        {
          result = (*v139)(v149, v128, v129);
          v130 = (v123 >> 1) - v121;
          if (__OFSUB__(v123 >> 1, v121))
          {
            goto LABEL_133;
          }

          v44 = v155;
          if (v130 >= v141)
          {
            (*v136)(v145, v149, v147);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v140 = sub_33474(0, v140[2] + 1, 1, v140);
            }

            v132 = v140[2];
            v131 = v140[3];
            if (v132 >= v131 >> 1)
            {
              v140 = sub_33474(v131 > 1, v132 + 1, 1, v140);
            }

            swift_unknownObjectRelease();
            (*v138)(v149, v147);
            v133 = v140;
            v140[2] = v132 + 1;
            sub_CBA88(v145, v133 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v132, type metadata accessor for CollectionRecommendation);
          }

          else
          {
            (*v138)(v149, v147);
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_34;
      }

      swift_unknownObjectRelease();
      v118 = v125;
      v36 = v152;
    }

    sub_511BC(v119, v118, v121, v123);
    goto LABEL_114;
  }

  v59 = 0;
  v60 = _swiftEmptyArrayStorage;
  while (v59 < *(v36 + 16))
  {
    v61 = (v156 + 136 * v59);
    v62 = v61[1];
    v63 = v61[2];
    v64 = v61[4];
    v161 = v61[3];
    v162 = v64;
    v159 = v62;
    v160 = v63;
    v65 = v61[5];
    v66 = v61[6];
    v67 = v61[7];
    v166 = *(v61 + 128);
    v164 = v66;
    v165 = v67;
    v163 = v65;
    v158 = *v61;
    ++v59;
    if (*(v58 + 16) && (v68 = v158, v69 = *(v58 + 40), result = sub_1B57E4(), v70 = -1 << *(v58 + 32), v71 = result & ~v70, ((*(v45 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) != 0))
    {
      v72 = ~v70;
      while (*(*(v58 + 48) + 8 * v71) != v68)
      {
        v71 = (v71 + 1) & v72;
        if (((*(v45 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      sub_429F8(&v158, v157);
      result = swift_isUniquelyReferenced_nonNull_native();
      v167 = v60;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v60[2] + 1, 1);
        v60 = v167;
      }

      v74 = v60[2];
      v73 = v60[3];
      if (v74 >= v73 >> 1)
      {
        result = sub_37574((v73 > 1), v74 + 1, 1);
        v60 = v167;
      }

      v60[2] = v74 + 1;
      v75 = &v60[17 * v74];
      *(v75 + 2) = v158;
      v76 = v159;
      v77 = v160;
      v78 = v162;
      *(v75 + 5) = v161;
      *(v75 + 6) = v78;
      *(v75 + 3) = v76;
      *(v75 + 4) = v77;
      v79 = v163;
      v80 = v164;
      v81 = v165;
      *(v75 + 160) = v166;
      *(v75 + 8) = v80;
      *(v75 + 9) = v81;
      *(v75 + 7) = v79;
      v36 = v152;
      v58 = v153;
      if (v59 == v57)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_61:
      if (v59 == v57)
      {
        goto LABEL_76;
      }
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_BFFCC(void *__src, char **a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x231uLL);
  sub_4299C(__dst, v30);
  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *a2;
  v8 = v30[0];
  *a2 = 0x8000000000000000;
  v10 = sub_3ABBC(__dst);
  v11 = *(v8 + 2);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_15:
    v8 = sub_33358(0, *(v8 + 2) + 1, 1, v8);
    *(v3 + 8 * v10) = v8;
    goto LABEL_11;
  }

  v14 = v9;
  if (*(v8 + 3) >= v13)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_186EBC();
      v8 = v30[0];
    }
  }

  else
  {
    sub_1810D4(v13, isUniquelyReferenced_nonNull_native);
    v8 = v30[0];
    v15 = sub_3ABBC(__dst);
    if ((v14 & 1) != (v16 & 1))
    {
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v10 = v15;
  }

  v17 = *a2;
  *a2 = v8;

  v18 = *a2;
  if (v14)
  {
    sub_2601C(__dst);
  }

  else
  {
    sub_15BB6C(v10, __dst, _swiftEmptyArrayStorage, *a2);
  }

  v3 = *(v18 + 7);
  v8 = *(v3 + 8 * v10);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8 * v10) = v8;
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v21 = *(v8 + 2);
  v20 = *(v8 + 3);
  if (v21 >= v20 >> 1)
  {
    v8 = sub_33358((v20 > 1), v21 + 1, 1, v8);
    *(v3 + 8 * v10) = v8;
  }

  *(v8 + 2) = v21 + 1;
  v22 = &v8[136 * v21];
  *(v22 + 2) = *a3;
  v23 = *(a3 + 16);
  v24 = *(a3 + 32);
  v25 = *(a3 + 64);
  *(v22 + 5) = *(a3 + 48);
  *(v22 + 6) = v25;
  *(v22 + 3) = v23;
  *(v22 + 4) = v24;
  v26 = *(a3 + 80);
  v27 = *(a3 + 96);
  v28 = *(a3 + 112);
  v22[160] = *(a3 + 128);
  *(v22 + 8) = v27;
  *(v22 + 9) = v28;
  *(v22 + 7) = v26;
  return sub_429F8(a3, v30);
}

uint64_t sub_C01C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = v1 - 2;
  if (v2)
  {
    v25 = v3;
    v5 = *(a1 + 48);
    v30 = *(a1 + 32);
    v31 = v5;
    v6 = *(a1 + 80);
    v32 = *(a1 + 64);
    v33 = v6;
    v7 = sub_880FC();

    for (i = 168; ; i += 136)
    {
      v9 = *(a1 + i + 80);
      v10 = *(a1 + i + 112);
      v36 = *(a1 + i + 96);
      v37 = v10;
      v11 = *(a1 + i + 16);
      v12 = *(a1 + i + 48);
      v32 = *(a1 + i + 32);
      v33 = v12;
      v13 = *(a1 + i + 48);
      v34 = *(a1 + i + 64);
      v35 = v9;
      v14 = *(a1 + i + 16);
      v30 = *(a1 + i);
      v31 = v14;
      *&v26[136] = v30;
      v27 = v11;
      v38 = *(a1 + i + 128);
      v28 = v32;
      v29 = v13;
      sub_429F8(&v30, v26);
      v15 = sub_880FC();
      v16 = v7[32];
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v19 = 8 * v18;

      if (v17 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        __chkstk_darwin(isStackAllocationSafe);
        bzero(&v24 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v19);
        v21 = sub_C6BC8(&v24 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v18, v7, v15);

        sub_5C740(&v30);
      }

      else
      {
        v22 = swift_slowAlloc();

        v21 = sub_C68E4(v22, v18, v7, v15);

        swift_bridgeObjectRelease_n();

        sub_5C740(&v30);
      }

      v7 = v21;
      if (!*(v21 + 16))
      {

        return 0;
      }

      if (!v25)
      {
        break;
      }

      --v25;
    }
  }

  return 1;
}

void sub_C04B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3747C(0, v1, 0);
    v3 = (a1 + 88);
    while (1)
    {
      v4 = *(v3 - 48);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v15 = *(v3 - 7);
      v16._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v16);

      v17._countAndFlagsBits = 58;
      v17._object = 0xE100000000000000;
      sub_1B48D4(v17);
      sub_1B51F4();
      v18._countAndFlagsBits = 58;
      v18._object = 0xE100000000000000;
      sub_1B48D4(v18);
      sub_2B0C(&qword_22A048, &unk_1BFC60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BCA80;
      *(v8 + 56) = &type metadata for Double;
      *(v8 + 64) = &protocol witness table for Double;
      *(v8 + 32) = v7;
      v19._countAndFlagsBits = sub_1B47F4();
      sub_1B48D4(v19);

      v20._countAndFlagsBits = 58;
      v20._object = 0xE100000000000000;
      sub_1B48D4(v20);
      if (!v6)
      {
        break;
      }

      v21._countAndFlagsBits = sub_C5268();
      sub_1B48D4(v21);

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_3747C((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = 0;
      v11[5] = 0xE000000000000000;
      v3 += 17;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
    v12 = sub_1B4764();
    v14 = v13;

    v22._countAndFlagsBits = v12;
    v22._object = v14;
    sub_1B48D4(v22);

    v23._countAndFlagsBits = 93;
    v23._object = 0xE100000000000000;
    sub_1B48D4(v23);
  }
}

uint64_t sub_C0794@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v68 = a2;
  v3 = a1[1];
  v75 = *a1;
  v76 = v3;
  v4 = a1[3];
  v77 = a1[2];
  v78 = v4;
  v6 = *(a1 + 12);
  v5 = *(a1 + 13);
  v7 = *(a1 + 112);
  v8 = *(a1 + 15);
  v9 = *(a1 + 128);
  v10 = *(v2 + 64);
  v11 = *(v2 + 152);
  v12 = sub_2AF30(10, v11);
  if (v12)
  {
    v13 = v7;
    if (v7 == 2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = sub_2AF30(11, v11);
    v13 = v7;
    if ((v12 & 1) == 0 || v7 == 2)
    {
      goto LABEL_43;
    }
  }

  v65 = v6;
  v66 = v11;
  v14 = 0;
  v71[0] = v6;
  v71[1] = v5;
  v67 = v5;
  v64 = v13;
  v72 = v13 & 1;
  v73 = v8;
  v74 = v9 & 1;
  __chkstk_darwin(v12);
  v62[2] = v71;
  v15 = v10;
  v16 = v10[32];
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = 8 * v18;

  if (v17 > 0xD)
  {
LABEL_61:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_64;
    }
  }

  __chkstk_darwin(v20);
  v21 = v62 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v21, v19);
  v22 = 0;
  v23 = 0;
  v24 = 1 << v15[32];
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v15 + 7);
  v19 = v67;
  while (1)
  {
    if (!v26)
    {
      v29 = v23;
      while (1)
      {
        v23 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v23 >= ((v24 + 63) >> 6))
        {
          goto LABEL_23;
        }

        v30 = *&v15[8 * v23 + 56];
        ++v29;
        if (v30)
        {
          v26 = (v30 - 1) & v30;
          v28 = __clz(__rbit64(v30)) | (v23 << 6);
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

    v27 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v28 = v27 | (v23 << 6);
LABEL_17:
    v31 = *(v15 + 6) + 40 * v28;
    if (*(v31 + 8) == v19 || (*(v31 + 32) & 1) == 0 && *(v31 + 24) == v19)
    {
      *&v21[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
      if (__OFADD__(v22++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  v18 = sub_3D908(v21, v18, v22, v15);
  while (1)
  {
    v33 = *(v18 + 16);
    if (!v33)
    {
      break;
    }

    v63 = v14;
    v34 = sub_3542C(v33, 0);
    v35 = sub_3FB64(v70, (v34 + 32), v33, v18);
    v14 = v70[1];
    v15 = v70[3];

    sub_417B8();
    if (v35 == v33)
    {
      v19 = v67;
      v14 = v63;
      goto LABEL_28;
    }

    __break(1u);
LABEL_64:
    v61 = swift_slowAlloc();
    v18 = sub_C6974(v61, v18, v15, sub_CBDAC);

    v19 = v67;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_28:
  v70[0] = v34;
  sub_B98E0(v70);
  if (v14)
  {

    __break(1u);
    return result;
  }

  v36 = v70[0];
  v37 = *(v70[0] + 2);
  if (v37)
  {
    v70[0] = _swiftEmptyArrayStorage;
    sub_37904(0, v37, 0);
    v38 = v70[0];
    v39 = *(v70[0] + 2);
    v40 = 32;
    do
    {
      v41 = *&v36[v40];
      v70[0] = v38;
      v42 = *(v38 + 3);
      if (v39 >= v42 >> 1)
      {
        sub_37904((v42 > 1), v39 + 1, 1);
        v38 = v70[0];
      }

      *(v38 + 2) = v39 + 1;
      *&v38[8 * v39 + 32] = v41;
      v40 += 40;
      ++v39;
      --v37;
    }

    while (v37);

    v19 = v67;
  }

  else
  {

    v38 = _swiftEmptyArrayStorage;
  }

  v43 = *(v38 + 2);
  v6 = v65;
  v11 = v66;
  if (v43)
  {
    v44 = *&v38[8 * v43 + 24];

    if (v64)
    {
      if (__OFADD__(v44, 1))
      {
        __break(1u);
      }

      if (v44 + 1 == v6 && (sub_2AF30(10, v11) & 1) != 0)
      {
        goto LABEL_54;
      }
    }

    else if (sub_2AF30(11, v11))
    {
LABEL_54:
      v46 = v76;
      v47 = v68;
      *v68 = v75;
      v47[1] = v46;
      v48 = v78;
      v47[2] = v77;
      v47[3] = v48;
      v49 = type metadata accessor for CollectionRecommendation(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v49 - 8) + 56))(v47, 0, 1, v49);
      return sub_42BA4(&v75, v70);
    }

    goto LABEL_55;
  }

  v5 = v19;

  v13 = v64;
LABEL_43:
  if ((sub_2AF30(9, v11) & 1) == 0)
  {
    v45 = (v13 != 2) & v13;
    goto LABEL_47;
  }

  if (v13 == 2)
  {
    v45 = 0;
LABEL_47:
    if ((sub_2AF30(0, v11) & 1) != 0 && (v45 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if ((v13 & 1) != 0 && v6 >= 2)
  {
    sub_2AF30(0, v11);
LABEL_55:
    v51 = type metadata accessor for CollectionRecommendation(0);
    return (*(*(v51 - 8) + 56))(v68, 1, 1, v51);
  }

  v52 = BYTE8(v75);
  v53 = v78;
  if (v78)
  {
    sub_42BA4(&v75, v70);
    v54 = v53;
  }

  else
  {
    sub_42BA4(&v75, v70);
    v54 = sub_130214(_swiftEmptyArrayStorage);
  }

  *&v69[23] = v76;
  *&v69[7] = v75;
  *&v69[39] = v77;
  *&v69[55] = v78;
  v55 = *v69;
  v56 = v68;
  *(v68 + 25) = *&v69[16];
  v57 = *&v69[48];
  *(v56 + 41) = *&v69[32];
  *(v56 + 57) = v57;
  v58 = *(&v78 + 1);
  *v56 = v5;
  *(v56 + 8) = v52;
  v59 = *&v69[63];
  *(v56 + 9) = v55;
  *(v56 + 9) = v59;
  *(v56 + 10) = v54;
  *(v56 + 11) = v58;
  v60 = type metadata accessor for CollectionRecommendation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v60 - 8) + 56))(v56, 0, 1, v60);
}

uint64_t sub_C0EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_2B0C(&qword_22B4A0, &qword_1C3A68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  *(inited + 48) = v4;
  *(inited + 56) = v5 & 1;
  v7 = *(a2 + 8);
  v8 = v3 == v7;
  v9 = (v4 == v7) & ~v5;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

uint64_t sub_C0F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 208);
  swift_beginAccess();
  sub_BE058(a1, v4);
  return swift_endAccess();
}

uint64_t sub_C0FE8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v353 = v2;
  v354 = v3;
  v364 = v4;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v348 = type metadata accessor for ScoredCollectionRecommendation();
  v10 = *(*(v348 - 8) + 64);
  __chkstk_darwin(v348);
  v347 = &v331[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v340 = type metadata accessor for CollectionRecommendation(0);
  v12 = *(*(v340 - 8) + 64);
  __chkstk_darwin(v340);
  v346 = &v331[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v338 = &v331[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v337 = &v331[-v19];
  __chkstk_darwin(v18);
  v341 = &v331[-v20];
  v356 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v21 = *(*(v356 - 8) + 64);
  v22 = __chkstk_darwin(v356 - 8);
  v334 = &v331[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v333 = &v331[-v25];
  __chkstk_darwin(v24);
  v336 = &v331[-v27];
  v28 = *v9;
  v29 = *(v8 + 16);
  v30 = v29 + 56;
  v31 = 1 << *(v29 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v29 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = *v8;
  if (*(v8 + 8))
  {
    v35 = 1;
  }

  v359 = v35;
  v355 = (v26 + 48);
  v339 = (v26 + 16);
  v344 = (v26 + 8);
  v345 = (v26 + 32);

  v37 = 0;
  v360 = v34;
  v361 = v29 + 56;
  v351 = v6;
  v350 = v28;
  v349 = v29;
  while (1)
  {
LABEL_7:
    if (!v33)
    {
      do
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_312;
        }

        if (v38 >= v34)
        {
        }

        v33 = *(v30 + 8 * v38);
        ++v37;
      }

      while (!v33);
      v37 = v38;
    }

    v362 = v37;
    v368 = *(*(v29 + 48) + (__clz(__rbit64(v33)) | (v37 << 6)));
    v39 = *(v6 + 32);
    if (*(v39 + 16) && (v40 = sub_3AA80(v28), (v41 & 1) != 0))
    {
      v42 = *(*(v39 + 56) + 8 * v40);
    }

    else
    {
      v42 = _swiftEmptyDictionarySingleton;
    }

    v33 &= v33 - 1;
    v43 = v42[2];
    v363 = v33;
    if (v43 && (v44 = sub_3AF28(v368), (v45 & 1) != 0))
    {
      v46 = *(v42[7] + 8 * v44);

      v47 = v46 < v359;
      v37 = v362;
      v33 = v363;
      if (!v47)
      {
        continue;
      }
    }

    else
    {

      v37 = v362;
      if (v359 <= 0)
      {
        continue;
      }
    }

    v369 = *v6;
    if (v28 <= 2)
    {
      break;
    }

    switch(v28)
    {
      case 3:
        v159 = *(v6 + 24);
        v160 = *(v364 + 80);
        v161 = *(v160 + 64);
        v358 = v160 + 64;
        v162 = 1 << *(v160 + 32);
        if (v162 < 64)
        {
          v163 = ~(-1 << v162);
        }

        else
        {
          v163 = -1;
        }

        v365 = v163 & v161;
        v357 = (v162 + 63) >> 6;
        *&v335 = v159 + 56;
        v164 = v369 + 7;
        v352 = v160;

        v165 = 0;
        v343 = v159;
        while (1)
        {
          v166 = v365;
          if (!v365)
          {
            break;
          }

          v167 = v165;
LABEL_188:
          v365 = (v166 - 1) & v166;
          v168 = (v167 << 9) | (8 * __clz(__rbit64(v166)));
          v169 = *(*(v352 + 48) + v168);
          v367 = *(*(v352 + 56) + v168);
          if (*(v159 + 16) && (v170 = *(v159 + 40), result = sub_1B57E4(), v171 = -1 << *(v159 + 32), v172 = result & ~v171, ((*(v335 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) != 0))
          {
            v173 = ~v171;
            while (*(*(v159 + 48) + 8 * v172) != v169)
            {
              v172 = (v172 + 1) & v173;
              if (((*(v335 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) == 0)
              {
                goto LABEL_193;
              }
            }

            v165 = v167;
          }

          else
          {
LABEL_193:
            v342 = v169;
            v174 = *(v367 + 16);

            if (v174)
            {
              v175 = 0;
              v176 = result + 32;
              v366 = _swiftEmptyArrayStorage;
              v177 = v367;
              while (1)
              {
                if (v175 >= *(v177 + 16))
                {
                  goto LABEL_313;
                }

                v178 = v176 + 136 * v175;
                v377[0] = *v178;
                v179 = *(v178 + 16);
                v180 = *(v178 + 32);
                v181 = *(v178 + 64);
                v377[3] = *(v178 + 48);
                v377[4] = v181;
                v377[1] = v179;
                v377[2] = v180;
                v182 = *(v178 + 80);
                v183 = *(v178 + 96);
                v184 = *(v178 + 112);
                LOBYTE(v377[8]) = *(v178 + 128);
                v377[6] = v183;
                v377[7] = v184;
                v377[5] = v182;
                ++v175;
                v185 = BYTE8(v377[0]);
                if (v369[2])
                {
                  v186 = *&v377[0];
                  v187 = v369;
                  v188 = v369[5];
                  result = sub_1B57E4();
                  v189 = *(v187 + 32);
                  v177 = v367;
                  v190 = -1 << v189;
                  v191 = result & ~(-1 << v189);
                  if ((*(v164 + ((v191 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v191))
                  {
                    v192 = ~v190;
                    while (*(v369[6] + 8 * v191) != v186)
                    {
                      v191 = (v191 + 1) & v192;
                      if (((*(v164 + ((v191 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v191) & 1) == 0)
                      {
                        goto LABEL_203;
                      }
                    }

                    goto LABEL_196;
                  }
                }

LABEL_203:
                if (v368)
                {
                  if (v368 != 1)
                  {
                    sub_429F8(v377, v386);
LABEL_213:
                    v195 = v366;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    v196 = v195;
                    *&v388[0] = v195;
                    if ((result & 1) == 0)
                    {
                      result = sub_37574(0, v195[2] + 1, 1);
                      v177 = v367;
                      v196 = *&v388[0];
                    }

                    v198 = v196[2];
                    v197 = v196[3];
                    if (v198 >= v197 >> 1)
                    {
                      result = sub_37574((v197 > 1), v198 + 1, 1);
                      v177 = v367;
                      v196 = *&v388[0];
                    }

                    v196[2] = v198 + 1;
                    v366 = v196;
                    v199 = &v196[17 * v198];
                    *(v199 + 2) = v377[0];
                    v200 = v377[1];
                    v201 = v377[2];
                    v202 = v377[4];
                    *(v199 + 5) = v377[3];
                    *(v199 + 6) = v202;
                    *(v199 + 3) = v200;
                    *(v199 + 4) = v201;
                    v203 = v377[5];
                    v204 = v377[6];
                    v205 = v377[7];
                    *(v199 + 160) = v377[8];
                    *(v199 + 8) = v204;
                    *(v199 + 9) = v205;
                    *(v199 + 7) = v203;
                    goto LABEL_196;
                  }

                  if (v185)
                  {
                    goto LABEL_212;
                  }

                  v193 = sub_1B5604();
                  sub_429F8(v377, v386);

                  if (v193)
                  {
                    goto LABEL_213;
                  }
                }

                else
                {
                  if ((v185 & 1) == 0)
                  {
LABEL_212:
                    sub_429F8(v377, v386);

                    goto LABEL_213;
                  }

                  v194 = sub_1B5604();
                  sub_429F8(v377, v386);

                  if (v194)
                  {
                    goto LABEL_213;
                  }
                }

                result = sub_5C740(v377);
LABEL_196:
                if (v175 == v174)
                {
                  goto LABEL_219;
                }
              }
            }

            v366 = _swiftEmptyArrayStorage;
LABEL_219:
            v206 = v364;
            v210 = sub_43174(*(v364 + 128), v366);
            if ((v209 & 1) == 0)
            {
              goto LABEL_220;
            }

            v213 = v209;
            v214 = v208;
            v215 = v207;
            sub_1B5744();
            swift_unknownObjectRetain_n();
            v216 = swift_dynamicCastClass();
            if (!v216)
            {
              swift_unknownObjectRelease();
              v216 = _swiftEmptyArrayStorage;
            }

            v217 = v216[2];

            if (__OFSUB__(v213 >> 1, v214))
            {
              goto LABEL_320;
            }

            if (v217 != (v213 >> 1) - v214)
            {
              swift_unknownObjectRelease();
              v209 = v213;
              v208 = v214;
              v207 = v215;
              v206 = v364;
LABEL_220:
              sub_5136C(v210, v207, v208, v209);
              v212 = v211;
              v33 = v363;
              goto LABEL_235;
            }

            v212 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v33 = v363;
            v206 = v364;
            if (v212)
            {
              v218 = v212[2];
              if (!v218)
              {
                goto LABEL_236;
              }

              goto LABEL_227;
            }

            v212 = _swiftEmptyArrayStorage;
LABEL_235:
            swift_unknownObjectRelease();
            v218 = v212[2];
            if (!v218)
            {
LABEL_236:

              v219 = _swiftEmptyArrayStorage;
              goto LABEL_237;
            }

LABEL_227:
            *&v388[0] = _swiftEmptyArrayStorage;
            sub_375F8(0, v218, 0);
            v219 = *&v388[0];
            v220 = v218 - 1;
            for (i = 4; ; i += 17)
            {
              v222 = *&v212[i];
              v223 = *&v212[i + 2];
              v224 = *&v212[i + 6];
              v377[2] = *&v212[i + 4];
              v377[3] = v224;
              v377[0] = v222;
              v377[1] = v223;
              sub_42BA4(v377, v386);
              *&v388[0] = v219;
              v226 = v219[2];
              v225 = v219[3];
              if (v226 >= v225 >> 1)
              {
                sub_375F8((v225 > 1), v226 + 1, 1);
                v219 = *&v388[0];
              }

              v219[2] = v226 + 1;
              v227 = &v219[8 * v226];
              v228 = v377[0];
              v229 = v377[1];
              v230 = v377[3];
              v227[4] = v377[2];
              v227[5] = v230;
              v227[2] = v228;
              v227[3] = v229;
              if (!v220)
              {
                break;
              }

              --v220;
            }

            v33 = v363;
            v206 = v364;
LABEL_237:
            if (v219[2] < *(v206 + 120))
            {
            }

            else
            {
              *&v377[0] = v219;
              sub_2B0C(&qword_229500, &unk_1BC580);
              sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
              v231 = v338;
              sub_1B43C4();
              v232 = v356;
              if ((*v355)(v231, 1, v356) == 1)
              {
                sub_42F48(v231, &qword_2296F0, &unk_1C3A10);
              }

              else
              {
                v233 = v334;
                (*v345)(v334, v231, v232);
                v234 = sub_2B0C(&qword_229740, &qword_1C6EE0);
                v235 = *(v234 + 48);
                v236 = *(v234 + 64);
                v237 = v346;
                (*v339)(v346, v233, v232);
                *&v237[v235] = v342;
                v237[v236] = 2;
                swift_storeEnumTagMultiPayload();
                v238 = sub_1AB914(*(v364 + 136));
                v239 = v347;
                sub_CB8C0(v237, v347, type metadata accessor for CollectionRecommendation);
                v240 = v348;
                v239[*(v348 + 20)] = v368;
                v239[*(v240 + 24)] = 0;
                *&v239[*(v240 + 28)] = v238;
                v353(v239);
                v241 = v239;
                v33 = v363;
                sub_25FBC(v241, type metadata accessor for ScoredCollectionRecommendation);
                sub_25FBC(v237, type metadata accessor for CollectionRecommendation);
                (*v344)(v233, v232);
              }
            }

            v165 = v167;
            v34 = v360;
            v30 = v361;
            v159 = v343;
          }
        }

        while (1)
        {
          v167 = v165 + 1;
          if (__OFADD__(v165, 1))
          {
            goto LABEL_315;
          }

          if (v167 >= v357)
          {
            break;
          }

          v166 = *(v358 + 8 * v167);
          ++v165;
          if (v166)
          {
            goto LABEL_188;
          }
        }

LABEL_307:

        v6 = v351;
        v28 = v350;
        v29 = v349;
        v37 = v362;
        break;
      case 5:
        v242 = *(v6 + 8);
        v243 = *(v364 + 72);
        v244 = *(v243 + 64);
        v358 = v243 + 64;
        v245 = 1 << *(v243 + 32);
        if (v245 < 64)
        {
          v246 = ~(-1 << v245);
        }

        else
        {
          v246 = -1;
        }

        v365 = v246 & v244;
        v357 = (v245 + 63) >> 6;
        *&v335 = v242 + 56;
        v247 = v369 + 7;
        v352 = v243;

        v248 = 0;
        v343 = v242;
        while (1)
        {
          while (1)
          {
            v249 = v365;
            if (!v365)
            {
              while (1)
              {
                v250 = v248 + 1;
                if (__OFADD__(v248, 1))
                {
                  goto LABEL_316;
                }

                if (v250 >= v357)
                {
                  goto LABEL_307;
                }

                v249 = *(v358 + 8 * v250);
                ++v248;
                if (v249)
                {
                  goto LABEL_252;
                }
              }
            }

            v250 = v248;
LABEL_252:
            v365 = (v249 - 1) & v249;
            v251 = (v250 << 9) | (8 * __clz(__rbit64(v249)));
            v252 = *(*(v352 + 48) + v251);
            v367 = *(*(v352 + 56) + v251);
            if (!*(v242 + 16))
            {
              break;
            }

            v253 = *(v242 + 40);
            result = sub_1B57E4();
            v254 = -1 << *(v242 + 32);
            v255 = result & ~v254;
            if (((*(v335 + ((v255 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v255) & 1) == 0)
            {
              break;
            }

            v256 = ~v254;
            while (*(*(v242 + 48) + 8 * v255) != v252)
            {
              v255 = (v255 + 1) & v256;
              if (((*(v335 + ((v255 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v255) & 1) == 0)
              {
                goto LABEL_257;
              }
            }

            v248 = v250;
          }

LABEL_257:
          v342 = v252;
          v257 = *(v367 + 16);

          if (v257)
          {
            v258 = 0;
            v259 = result + 32;
            v366 = _swiftEmptyArrayStorage;
            v260 = v367;
            while (1)
            {
              if (v258 >= *(v260 + 16))
              {
                goto LABEL_314;
              }

              v261 = v259 + 136 * v258;
              v377[0] = *v261;
              v262 = *(v261 + 16);
              v263 = *(v261 + 32);
              v264 = *(v261 + 64);
              v377[3] = *(v261 + 48);
              v377[4] = v264;
              v377[1] = v262;
              v377[2] = v263;
              v265 = *(v261 + 80);
              v266 = *(v261 + 96);
              v267 = *(v261 + 112);
              LOBYTE(v377[8]) = *(v261 + 128);
              v377[6] = v266;
              v377[7] = v267;
              v377[5] = v265;
              ++v258;
              v268 = BYTE8(v377[0]);
              if (v369[2])
              {
                v269 = *&v377[0];
                v270 = v369;
                v271 = v369[5];
                result = sub_1B57E4();
                v272 = *(v270 + 32);
                v260 = v367;
                v273 = -1 << v272;
                v274 = result & ~(-1 << v272);
                if ((*(v247 + ((v274 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v274))
                {
                  v275 = ~v273;
                  while (*(v369[6] + 8 * v274) != v269)
                  {
                    v274 = (v274 + 1) & v275;
                    if (((*(v247 + ((v274 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v274) & 1) == 0)
                    {
                      goto LABEL_267;
                    }
                  }

                  goto LABEL_260;
                }
              }

LABEL_267:
              if (v368)
              {
                if (v368 != 1)
                {
                  sub_429F8(v377, v386);
LABEL_277:
                  v278 = v366;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  v279 = v278;
                  *&v388[0] = v278;
                  if ((result & 1) == 0)
                  {
                    result = sub_37574(0, v278[2] + 1, 1);
                    v260 = v367;
                    v279 = *&v388[0];
                  }

                  v281 = v279[2];
                  v280 = v279[3];
                  if (v281 >= v280 >> 1)
                  {
                    result = sub_37574((v280 > 1), v281 + 1, 1);
                    v260 = v367;
                    v279 = *&v388[0];
                  }

                  v279[2] = v281 + 1;
                  v366 = v279;
                  v282 = &v279[17 * v281];
                  *(v282 + 2) = v377[0];
                  v283 = v377[1];
                  v284 = v377[2];
                  v285 = v377[4];
                  *(v282 + 5) = v377[3];
                  *(v282 + 6) = v285;
                  *(v282 + 3) = v283;
                  *(v282 + 4) = v284;
                  v286 = v377[5];
                  v287 = v377[6];
                  v288 = v377[7];
                  *(v282 + 160) = v377[8];
                  *(v282 + 8) = v287;
                  *(v282 + 9) = v288;
                  *(v282 + 7) = v286;
                  goto LABEL_260;
                }

                if (v268)
                {
                  goto LABEL_276;
                }

                v276 = sub_1B5604();
                sub_429F8(v377, v386);

                if (v276)
                {
                  goto LABEL_277;
                }
              }

              else
              {
                if ((v268 & 1) == 0)
                {
LABEL_276:
                  sub_429F8(v377, v386);

                  goto LABEL_277;
                }

                v277 = sub_1B5604();
                sub_429F8(v377, v386);

                if (v277)
                {
                  goto LABEL_277;
                }
              }

              result = sub_5C740(v377);
LABEL_260:
              if (v258 == v257)
              {
                goto LABEL_283;
              }
            }
          }

          v366 = _swiftEmptyArrayStorage;
LABEL_283:
          v292 = sub_43174(*(v364 + 128), v366);
          if ((v291 & 1) == 0)
          {
            goto LABEL_284;
          }

          v295 = v291;
          v296 = v290;
          v297 = v289;
          sub_1B5744();
          swift_unknownObjectRetain_n();
          v298 = swift_dynamicCastClass();
          if (!v298)
          {
            swift_unknownObjectRelease();
            v298 = _swiftEmptyArrayStorage;
          }

          v299 = v298[2];

          if (__OFSUB__(v295 >> 1, v296))
          {
            goto LABEL_319;
          }

          if (v299 != (v295 >> 1) - v296)
          {
            break;
          }

          v294 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v34 = v360;
          v30 = v361;
          v33 = v363;
          if (v294)
          {
            v300 = v294[2];
            if (!v300)
            {
              goto LABEL_300;
            }

            goto LABEL_291;
          }

          v294 = _swiftEmptyArrayStorage;
LABEL_299:
          swift_unknownObjectRelease();
          v300 = v294[2];
          if (!v300)
          {
LABEL_300:

            v301 = _swiftEmptyArrayStorage;
            v313 = v364;
            goto LABEL_301;
          }

LABEL_291:
          *&v388[0] = _swiftEmptyArrayStorage;
          sub_375F8(0, v300, 0);
          v301 = *&v388[0];
          v302 = v300 - 1;
          for (j = 4; ; j += 17)
          {
            v304 = *&v294[j];
            v305 = *&v294[j + 2];
            v306 = *&v294[j + 6];
            v377[2] = *&v294[j + 4];
            v377[3] = v306;
            v377[0] = v304;
            v377[1] = v305;
            sub_42BA4(v377, v386);
            *&v388[0] = v301;
            v308 = v301[2];
            v307 = v301[3];
            if (v308 >= v307 >> 1)
            {
              sub_375F8((v307 > 1), v308 + 1, 1);
              v301 = *&v388[0];
            }

            v301[2] = v308 + 1;
            v309 = &v301[8 * v308];
            v310 = v377[0];
            v311 = v377[1];
            v312 = v377[3];
            v309[4] = v377[2];
            v309[5] = v312;
            v309[2] = v310;
            v309[3] = v311;
            if (!v302)
            {
              break;
            }

            --v302;
          }

          v33 = v363;
          v313 = v364;
          v34 = v360;
          v30 = v361;
LABEL_301:
          if (v301[2] < *(v313 + 120))
          {

            v248 = v250;
            v242 = v343;
          }

          else
          {
            *&v377[0] = v301;
            sub_2B0C(&qword_229500, &unk_1BC580);
            sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
            v314 = v337;
            sub_1B43C4();
            v315 = v356;
            if ((*v355)(v314, 1, v356) == 1)
            {
              sub_42F48(v314, &qword_2296F0, &unk_1C3A10);
            }

            else
            {
              v316 = v333;
              (*v345)(v333, v314, v315);
              v317 = sub_2B0C(&qword_229740, &qword_1C6EE0);
              v318 = *(v317 + 48);
              v319 = *(v317 + 64);
              v320 = v346;
              (*v339)(v346, v316, v315);
              *&v320[v318] = v342;
              v320[v319] = 2;
              swift_storeEnumTagMultiPayload();
              v321 = sub_1AB914(*(v364 + 136));
              v322 = v347;
              sub_CB8C0(v320, v347, type metadata accessor for CollectionRecommendation);
              v323 = v348;
              v322[*(v348 + 20)] = v368;
              v322[*(v323 + 24)] = 0;
              *&v322[*(v323 + 28)] = v321;
              v353(v322);
              v324 = v322;
              v33 = v363;
              sub_25FBC(v324, type metadata accessor for ScoredCollectionRecommendation);
              sub_25FBC(v320, type metadata accessor for CollectionRecommendation);
              (*v344)(v316, v315);
            }

            v248 = v250;
            v34 = v360;
            v30 = v361;
            v242 = v343;
          }
        }

        swift_unknownObjectRelease();
        v291 = v295;
        v290 = v296;
        v289 = v297;
LABEL_284:
        sub_5136C(v292, v289, v290, v291);
        v294 = v293;
        v34 = v360;
        v30 = v361;
        v33 = v363;
        goto LABEL_299;
      case 8:
        v48 = *(v364 + 176);
        v377[10] = *(v364 + 160);
        v377[11] = v48;
        v377[12] = *(v364 + 192);
        *&v377[13] = *(v364 + 208);
        v49 = *(v364 + 112);
        v377[6] = *(v364 + 96);
        v377[7] = v49;
        v50 = *(v364 + 144);
        v377[8] = *(v364 + 128);
        v377[9] = v50;
        v51 = *(v364 + 48);
        v377[2] = *(v364 + 32);
        v377[3] = v51;
        v52 = *(v364 + 80);
        v377[4] = *(v364 + 64);
        v377[5] = v52;
        v53 = *(v364 + 16);
        v377[0] = *v364;
        v377[1] = v53;
        v386[0] = v368;
        result = sub_C3F48(v386, v369, 0, v353, v354);
        v37 = v362;
        break;
    }
  }

  if (v28 == 1)
  {
    v325 = *(v364 + 176);
    v377[10] = *(v364 + 160);
    v377[11] = v325;
    v377[12] = *(v364 + 192);
    *&v377[13] = *(v364 + 208);
    v326 = *(v364 + 112);
    v377[6] = *(v364 + 96);
    v377[7] = v326;
    v327 = *(v364 + 144);
    v377[8] = *(v364 + 128);
    v377[9] = v327;
    v328 = *(v364 + 48);
    v377[2] = *(v364 + 32);
    v377[3] = v328;
    v329 = *(v364 + 80);
    v377[4] = *(v364 + 64);
    v377[5] = v329;
    v330 = *(v364 + 16);
    v377[0] = *v364;
    v377[1] = v330;
    v386[0] = v368;
    result = sub_C375C(v386, v369, 0, v353, v354);
    v37 = v362;
    goto LABEL_7;
  }

  if (v28 != 2)
  {
    goto LABEL_7;
  }

  v54 = *(v6 + 16);
  v55 = *(v364 + 88);
  v56 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v358 = v58 & *(v55 + 64);
  v59 = (v57 + 63) >> 6;
  v365 = v54;
  v366 = (v54 + 56);
  v60 = v369 + 7;
  v352 = v55;

  v61 = 0;
  v342 = v59;
  v343 = v56;
  v62 = v358;
  if (v358)
  {
    goto LABEL_33;
  }

  do
  {
LABEL_34:
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_317;
    }

    if (v63 >= v59)
    {

      v6 = v351;
      v28 = v350;
      v29 = v349;
      v34 = v360;
      v30 = v361;
      v37 = v362;
      goto LABEL_7;
    }

    v62 = *(v56 + 8 * v63);
    ++v61;
  }

  while (!v62);
  while (2)
  {
    v357 = v63;
    v358 = (v62 - 1) & v62;
    v64 = __clz(__rbit64(v62)) | (v63 << 6);
    v65 = (*(v352 + 48) + 568 * v64);
    memcpy(v385, v65, 0x231uLL);
    v66 = *(*(v352 + 56) + 8 * v64);
    memmove(v386, v65, 0x231uLL);
    v387 = v66;
    memcpy(v384, v385, 0x231uLL);
    memcpy(v388, v385, 0x231uLL);
    v67 = *(v365 + 16);
    v367 = v66;
    if (v67)
    {
      v68 = *(v365 + 40);
      memcpy(v377, v385, 0x231uLL);
      sub_1B57F4();
      sub_4299C(v385, v383);

      SeedBook.hash(into:)(v378);
      result = sub_1B5844();
      v69 = v365;
      v70 = -1 << *(v365 + 32);
      v71 = result & ~v70;
      if (((*(v366 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
      {
        goto LABEL_124;
      }

      v72 = ~v70;
LABEL_43:
      result = memcpy(v383, (*(v69 + 48) + 568 * v71), sizeof(v383));
      if (*v383 != *&v388[0])
      {
        goto LABEL_42;
      }

      v73 = v72;
      if (v383[8])
      {
        v74 = 0x6F6F626F69647561;
      }

      else
      {
        v74 = 0x6B6F6F6265;
      }

      if (v383[8])
      {
        v75 = 0xE90000000000006BLL;
      }

      else
      {
        v75 = 0xE500000000000000;
      }

      if (BYTE8(v388[0]))
      {
        v76 = 0x6F6F626F69647561;
      }

      else
      {
        v76 = 0x6B6F6F6265;
      }

      if (BYTE8(v388[0]))
      {
        v77 = 0xE90000000000006BLL;
      }

      else
      {
        v77 = 0xE500000000000000;
      }

      if (v74 == v76 && v75 == v77)
      {
        sub_4299C(v383, v377);
        sub_5EDD8(&v383[8], v377);
        sub_5EDD8(v388 + 8, v377);
      }

      else
      {
        v79 = sub_1B5604();
        sub_4299C(v383, v377);
        sub_5EDD8(&v383[8], v377);
        sub_5EDD8(v388 + 8, v377);

        if ((v79 & 1) == 0)
        {
          sub_85554(v388 + 8);
          sub_85554(&v383[8]);
          goto LABEL_62;
        }
      }

      v80 = sub_9144(*&v383[16], *&v388[1]);
      v69 = v365;
      if ((v80 & 1) == 0 || (sub_2E0DC(*&v383[24], *(&v388[1] + 1)) & 1) == 0)
      {
        sub_85554(v388 + 8);
        sub_85554(&v383[8]);
        result = sub_2601C(v383);
        goto LABEL_41;
      }

      v81 = BYTE8(v388[2]);
      v72 = v73;
      if (v383[40])
      {
        if (!BYTE8(v388[2]))
        {
          goto LABEL_81;
        }

LABEL_72:
        if (v383[64] == 2)
        {
          if (LOBYTE(v388[4]) != 2)
          {
            goto LABEL_81;
          }

LABEL_77:
          v82 = *(&v388[5] + 1);
          if (*&v383[88])
          {
            if (!*(&v388[5] + 1))
            {
              sub_85554(v388 + 8);
              sub_85554(&v383[8]);
              goto LABEL_91;
            }

            v83 = sub_80F4(*&v383[88], *(&v388[5] + 1));
            sub_85554(v388 + 8);
            sub_85554(&v383[8]);
            if ((v83 & 1) == 0)
            {
LABEL_91:
              result = sub_2601C(v383);
              v69 = v365;
              goto LABEL_42;
            }
          }

          else
          {
            sub_85554(v388 + 8);
            sub_85554(&v383[8]);
            if (v82)
            {
              goto LABEL_91;
            }
          }

          v381 = *&v383[112];
          v382 = *&v383[128];
          v84 = *&v383[144];
          v379 = *&v383[152];
          v380 = *&v383[96];
          if (*&v383[144] >> 1 == 0xFFFFFFFFLL)
          {
            if (*&v388[9] >> 1 == 0xFFFFFFFFLL)
            {
              v377[0] = *&v383[96];
              v377[1] = *&v383[112];
              v377[2] = *&v383[128];
              *&v377[3] = *&v383[144];
              *(&v377[3] + 8) = *&v383[152];
              sub_43050(&v383[96], v378, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v388[6], v378, &qword_22A4E0, &unk_1C01D0);
              sub_42F48(v377, &qword_22A4E0, &unk_1C01D0);
              v72 = v73;
              goto LABEL_87;
            }

LABEL_93:
            v377[0] = *&v383[96];
            v377[1] = *&v383[112];
            v377[2] = *&v383[128];
            *(&v377[3] + 8) = *&v383[152];
            *(&v377[4] + 8) = v388[6];
            *(&v377[5] + 8) = v388[7];
            *(&v377[6] + 8) = v388[8];
            *&v377[3] = *&v383[144];
            *(&v377[7] + 1) = *&v388[9];
            v377[8] = *(&v388[9] + 8);
            sub_43050(&v383[96], v378, &qword_22A4E0, &unk_1C01D0);
            sub_43050(&v388[6], v378, &qword_22A4E0, &unk_1C01D0);
            sub_42F48(v377, &qword_22B488, &qword_1C3A38);
LABEL_62:
            result = sub_2601C(v383);
            v69 = v365;
LABEL_41:
            v72 = v73;
            goto LABEL_42;
          }

          v378[0] = *&v383[96];
          v378[1] = *&v383[112];
          v378[2] = *&v383[128];
          *&v378[3] = *&v383[144];
          *(&v378[3] + 8) = *&v383[152];
          if (*&v388[9] >> 1 == 0xFFFFFFFFLL)
          {
            goto LABEL_93;
          }

          v376[0] = v388[6];
          v376[1] = v388[7];
          v376[2] = v388[8];
          *&v376[3] = *&v388[9];
          *(&v376[3] + 8) = *(&v388[9] + 8);
          v86 = *(&v388[9] + 8);
          v87 = BYTE8(v378[0]);
          v377[0] = v378[0];
          v377[1] = v378[1];
          v377[2] = v378[2];
          LOBYTE(v377[3]) = v383[144];
          BYTE7(v377[3]) = v383[151];
          *(&v377[3] + 5) = *&v383[148] >> 8;
          *(&v377[3] + 1) = *&v383[144] >> 8;
          *(&v377[4] + 8) = v388[6];
          *(&v377[3] + 8) = *(&v378[3] + 8);
          *(&v377[5] + 8) = v388[7];
          *(&v377[6] + 8) = v388[8];
          *(&v377[7] + 1) = *&v388[9];
          v377[8] = *(&v388[9] + 8);
          v88 = *&v383[144] >> 62;
          if ((*&v383[144] >> 62) > 1)
          {
            if (v88 == 2)
            {
              if (*&v388[9] >> 62 != 2)
              {
                goto LABEL_117;
              }

              v374[0] = v378[0];
              v374[1] = v378[1];
              v374[2] = v378[2];
              LOBYTE(v374[3]) = v383[144] & 1;
              v370 = v388[6];
              v371 = v388[7];
              v372 = v388[8];
              v373 = v388[9] & 1;
              v335 = *(&v378[3] + 8);
              v332 = _s20BooksPersonalization19FeatureAffinityInfoV2eeoiySbAC_ACtFZ_0(v374, &v370);
              sub_43050(v378, v375, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v383[96], v375, &qword_22A4E0, &unk_1C01D0);
              v72 = v73;
              sub_43050(&v388[6], v375, &qword_22A4E0, &unk_1C01D0);
              sub_42F48(v377, &qword_22B490, &unk_1C3A40);
              if ((v332 & 1) != 0 && *&v335 == *&v86 && *(&v335 + 1) == *(&v86 + 1))
              {
                goto LABEL_112;
              }
            }

            else if (*&v388[9] >> 62 == 3 && (v335 = v388[6], (sub_9024(*&v378[0], *&v388[6]) & 1) != 0))
            {
              v92 = BYTE8(v335);
              sub_43050(v378, v375, &qword_22A4E0, &unk_1C01D0);
              sub_43050(v378, v375, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v383[96], v375, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v388[6], v375, &qword_22A4E0, &unk_1C01D0);
              sub_43050(v376, v375, &qword_22A4E0, &unk_1C01D0);
              v93 = sub_27D7C(v87, v92);
              sub_42F48(v377, &qword_22B490, &unk_1C3A40);
              sub_42F48(v376, &qword_22A4E0, &unk_1C01D0);
              v72 = v73;
              sub_42F48(v378, &qword_22A4E0, &unk_1C01D0);
              if (v93)
              {
                goto LABEL_112;
              }
            }

            else
            {
LABEL_117:
              sub_43050(v378, v375, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v383[96], v375, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v388[6], v375, &qword_22A4E0, &unk_1C01D0);
              sub_42F48(v377, &qword_22B490, &unk_1C3A40);
            }
          }

          else
          {
            if (v88)
            {
              if (*&v388[9] >> 62 != 1)
              {
                goto LABEL_117;
              }
            }

            else if (*&v388[9] >> 62)
            {
              goto LABEL_117;
            }

            v374[0] = v378[0];
            v374[1] = v378[1];
            v374[2] = v378[2];
            LOBYTE(v374[3]) = v383[144] & 1;
            v370 = v388[6];
            v371 = v388[7];
            v372 = v388[8];
            v373 = v388[9] & 1;
            v91 = _s20BooksPersonalization19FeatureAffinityInfoV2eeoiySbAC_ACtFZ_0(v374, &v370);
            sub_43050(v378, v375, &qword_22A4E0, &unk_1C01D0);
            sub_43050(&v383[96], v375, &qword_22A4E0, &unk_1C01D0);
            sub_43050(&v388[6], v375, &qword_22A4E0, &unk_1C01D0);
            sub_42F48(v377, &qword_22B490, &unk_1C3A40);
            if (v91)
            {
LABEL_112:
              v375[0] = v380;
              v375[1] = v381;
              v375[2] = v382;
              *&v375[3] = v84;
              *(&v375[3] + 8) = v379;
              sub_42F48(v375, &qword_22A4E0, &unk_1C01D0);
LABEL_87:
              memcpy(v377, &v383[168], 0x179uLL);
              memcpy(&v377[24], &v388[10] + 8, 0x179uLL);
              memcpy(v378, &v383[168], 0x179uLL);
              if (sub_42D84(v378) == 1)
              {
                memcpy(v376, &v377[24], 0x179uLL);
                v85 = sub_42D84(v376);
                v69 = v365;
                if (v85 == 1)
                {
LABEL_100:
                  if (sub_C554C(*&v383[552], *(&v388[34] + 1)))
                  {
                    v90 = LOBYTE(v388[35]);
                    if (v383[560] == 12)
                    {
                      result = sub_2601C(v383);
                      if (v90 == 12)
                      {
                        goto LABEL_176;
                      }
                    }

                    else
                    {
                      LOBYTE(v377[0]) = v383[560];
                      if (LOBYTE(v388[35]) == 12)
                      {
                        result = sub_2601C(v383);
                      }

                      else
                      {
                        LOBYTE(v376[0]) = v388[35];
                        v94 = _s20BooksPersonalization22PositiveAffinitySourceO2eeoiySbAC_ACtFZ_0(v377, v376);
                        result = sub_2601C(v383);
                        if (v94)
                        {
LABEL_176:
                          result = sub_42F48(v386, &qword_22B480, &unk_1C3A28);
                          v61 = v357;
                          v33 = v363;
LABEL_173:
                          v59 = v342;
                          v56 = v343;
                          v62 = v358;
                          if (!v358)
                          {
                            goto LABEL_34;
                          }

LABEL_33:
                          v63 = v61;
                          continue;
                        }
                      }
                    }

                    v69 = v365;
                    goto LABEL_42;
                  }
                }
              }

              else
              {
                memcpy(v375, v377, 0x179uLL);
                memcpy(v376, &v377[24], 0x179uLL);
                v89 = sub_42D84(v376);
                v69 = v365;
                if (v89 != 1)
                {
                  memcpy(v374, &v377[24], 0x179uLL);
                  if (_s20BooksPersonalization11BookHistoryV2eeoiySbAC_ACtFZ_0(v375, v374))
                  {
                    goto LABEL_100;
                  }
                }
              }

LABEL_82:
              result = sub_2601C(v383);
              goto LABEL_42;
            }
          }

          v375[0] = v380;
          v375[1] = v381;
          v375[2] = v382;
          *&v375[3] = v84;
          *(&v375[3] + 8) = v379;
          sub_42F48(v375, &qword_22A4E0, &unk_1C01D0);
          result = sub_2601C(v383);
          v69 = v365;
LABEL_42:
          v71 = (v71 + 1) & v72;
          if (((*(v366 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
          {
            goto LABEL_124;
          }

          goto LABEL_43;
        }

        v377[0] = *&v383[48];
        v377[1] = *&v383[64];
        LOBYTE(v377[2]) = v383[80];
        if (LOBYTE(v388[4]) != 2)
        {
          v378[0] = v388[3];
          LOBYTE(v378[1]) = v388[4] & 1;
          *(&v378[1] + 1) = *(&v388[4] + 1);
          LOBYTE(v378[2]) = v388[5] & 1;
          if (_s20BooksPersonalization4BookV8MetadataV16SeriesMembershipV2eeoiySbAG_AGtFZ_0(v377, v378))
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        if (*&v383[32] != *&v388[2])
        {
          v81 = 1;
        }

        if ((v81 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

LABEL_81:
      sub_85554(v388 + 8);
      sub_85554(&v383[8]);
      goto LABEL_82;
    }

    break;
  }

  sub_4299C(v385, v377);

LABEL_124:
  v95 = v367;
  v96 = *(v367 + 16);
  if (!v96)
  {
    v99 = _swiftEmptyArrayStorage;
LABEL_150:
    v129 = sub_43174(*(v364 + 128), v99);
    if (v128)
    {
      v132 = v128;
      v133 = v127;
      v134 = v126;
      sub_1B5744();
      swift_unknownObjectRetain_n();
      v135 = swift_dynamicCastClass();
      if (!v135)
      {
        swift_unknownObjectRelease();
        v135 = _swiftEmptyArrayStorage;
      }

      v136 = v135[2];

      if (__OFSUB__(v132 >> 1, v133))
      {
        goto LABEL_318;
      }

      if (v136 == (v132 >> 1) - v133)
      {
        v131 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v131)
        {
          v137 = v131[2];
          if (!v137)
          {
LABEL_166:

            v138 = _swiftEmptyArrayStorage;
LABEL_167:
            v33 = v363;
            if (v138[2] >= *(v364 + 120))
            {
              *&v377[0] = v138;
              sub_2B0C(&qword_229500, &unk_1BC580);
              sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
              v150 = v341;
              sub_1B43C4();
              v151 = v356;
              if ((*v355)(v150, 1, v356) == 1)
              {
                sub_42F48(v150, &qword_2296F0, &unk_1C3A10);
              }

              else
              {
                v152 = v336;
                (*v345)(v336, v150, v151);
                v153 = v346;
                v154 = v364;
                sub_C48DC(v152, v384, v364, v346);
                v155 = sub_1AB914(*(v154 + 136));
                v156 = v347;
                sub_CB8C0(v153, v347, type metadata accessor for CollectionRecommendation);
                v157 = v348;
                v156[*(v348 + 20)] = v368;
                v156[*(v157 + 24)] = 0;
                *&v156[*(v157 + 28)] = v155;
                v353(v156);
                v158 = v156;
                v33 = v363;
                sub_25FBC(v158, type metadata accessor for ScoredCollectionRecommendation);
                sub_25FBC(v153, type metadata accessor for CollectionRecommendation);
                (*v344)(v152, v151);
              }
            }

            else
            {
            }

            result = sub_42F48(v386, &qword_22B480, &unk_1C3A28);
            v61 = v357;
            goto LABEL_173;
          }

LABEL_158:
          *&v378[0] = _swiftEmptyArrayStorage;
          sub_375F8(0, v137, 0);
          v138 = *&v378[0];
          v139 = v137 - 1;
          for (k = 4; ; k += 17)
          {
            v141 = *&v131[k];
            v142 = *&v131[k + 2];
            v143 = *&v131[k + 6];
            v377[2] = *&v131[k + 4];
            v377[3] = v143;
            v377[0] = v141;
            v377[1] = v142;
            sub_42BA4(v377, v383);
            *&v378[0] = v138;
            v145 = v138[2];
            v144 = v138[3];
            if (v145 >= v144 >> 1)
            {
              sub_375F8((v144 > 1), v145 + 1, 1);
              v138 = *&v378[0];
            }

            v138[2] = v145 + 1;
            v146 = &v138[8 * v145];
            v147 = v377[0];
            v148 = v377[1];
            v149 = v377[3];
            v146[4] = v377[2];
            v146[5] = v149;
            v146[2] = v147;
            v146[3] = v148;
            if (!v139)
            {
              break;
            }

            --v139;
          }

          goto LABEL_167;
        }

        v131 = _swiftEmptyArrayStorage;
LABEL_165:
        swift_unknownObjectRelease();
        v137 = v131[2];
        if (!v137)
        {
          goto LABEL_166;
        }

        goto LABEL_158;
      }

      swift_unknownObjectRelease();
      v128 = v132;
      v127 = v133;
      v126 = v134;
    }

    sub_5136C(v129, v126, v127, v128);
    v131 = v130;
    goto LABEL_165;
  }

  v97 = 0;
  v98 = v367 + 32;
  v99 = _swiftEmptyArrayStorage;
  while (v97 < *(v95 + 16))
  {
    v100 = v98 + 136 * v97;
    v377[0] = *v100;
    v101 = *(v100 + 16);
    v102 = *(v100 + 32);
    v103 = *(v100 + 64);
    v377[3] = *(v100 + 48);
    v377[4] = v103;
    v377[1] = v101;
    v377[2] = v102;
    v104 = *(v100 + 80);
    v105 = *(v100 + 96);
    v106 = *(v100 + 112);
    LOBYTE(v377[8]) = *(v100 + 128);
    v377[6] = v105;
    v377[7] = v106;
    v377[5] = v104;
    ++v97;
    v107 = BYTE8(v377[0]);
    if (v369[2])
    {
      v108 = *&v377[0];
      v109 = v369;
      v110 = v369[5];
      result = sub_1B57E4();
      v111 = *(v109 + 32);
      v95 = v367;
      v112 = -1 << v111;
      v113 = result & ~(-1 << v111);
      if ((*(v60 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113))
      {
        v114 = ~v112;
        while (*(v369[6] + 8 * v113) != v108)
        {
          v113 = (v113 + 1) & v114;
          if (((*(v60 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_127;
      }
    }

LABEL_134:
    if (v368)
    {
      if (v368 != 1)
      {
        sub_429F8(v377, v383);
LABEL_144:
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v378[0] = v99;
        if ((result & 1) == 0)
        {
          result = sub_37574(0, v99[2] + 1, 1);
          v99 = *&v378[0];
        }

        v118 = v99[2];
        v117 = v99[3];
        if (v118 >= v117 >> 1)
        {
          result = sub_37574((v117 > 1), v118 + 1, 1);
          v99 = *&v378[0];
        }

        v99[2] = v118 + 1;
        v119 = &v99[17 * v118];
        *(v119 + 2) = v377[0];
        v120 = v377[1];
        v121 = v377[2];
        v122 = v377[4];
        *(v119 + 5) = v377[3];
        *(v119 + 6) = v122;
        *(v119 + 3) = v120;
        *(v119 + 4) = v121;
        v123 = v377[5];
        v124 = v377[6];
        v125 = v377[7];
        *(v119 + 160) = v377[8];
        *(v119 + 8) = v124;
        *(v119 + 9) = v125;
        *(v119 + 7) = v123;
        goto LABEL_127;
      }

      if (v107)
      {
        goto LABEL_143;
      }

      v115 = sub_1B5604();
      sub_429F8(v377, v383);

      if (v115)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if ((v107 & 1) == 0)
      {
LABEL_143:
        sub_429F8(v377, v383);

        goto LABEL_144;
      }

      v116 = sub_1B5604();
      sub_429F8(v377, v383);

      if (v116)
      {
        goto LABEL_144;
      }
    }

    result = sub_5C740(v377);
LABEL_127:
    if (v97 == v96)
    {
      goto LABEL_150;
    }
  }

  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
  return result;
}