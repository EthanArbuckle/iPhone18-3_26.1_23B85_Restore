uint64_t sub_249F8(uint64_t a1, void *a2)
{
  v3 = sub_22CB8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_24AAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24AE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_24B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22EB0;

  return sub_23740(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24C30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_24C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_16268;

  return sub_24360(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24D5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  return v1;
}

uint64_t sub_24DD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();
}

void *sub_24E5C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_34F44(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_81C08();
    v7 = result;
    v8 = 0;
    v44 = *(v1 + 36);
    v37 = v1 + 72;
    v38 = v2;
    v39 = v1 + 64;
    v40 = v1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_32;
      }

      if (v44 != *(v1 + 36))
      {
        goto LABEL_33;
      }

      v41 = v8;
      v12 = *(v1 + 56);
      v13 = (*(v1 + 48) + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v12 + 8 * v7);
      swift_bridgeObjectRetain_n();
      v17 = v16;
      v18 = [v17 longLongValue];
      if (v18 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x8000000000000000;
      }

      if (qword_B7840 != -1)
      {
        swift_once();
      }

      v20 = qword_BCF60;
      v42 = v19;
      v43 = v14;
      if (*(qword_BCF60 + 16) && (v21 = sub_34B30(v14, v15), (v22 & 1) != 0))
      {
        v23 = (*(v20 + 56) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      v26 = v4;
      v45 = v4;
      v27 = v4[2];
      v28 = v26[3];
      if (v27 >= v28 >> 1)
      {
        result = sub_34F44((v28 > 1), v27 + 1, 1);
        v26 = v45;
      }

      v26[2] = v27 + 1;
      v29 = &v26[5 * v27];
      v29[4] = v43;
      v29[5] = v15;
      v29[6] = v42;
      v29[7] = v24;
      v29[8] = v25;
      v1 = v40;
      v9 = 1 << *(v40 + 32);
      if (v7 >= v9)
      {
        goto LABEL_34;
      }

      v5 = v39;
      v30 = *(v39 + 8 * v11);
      if ((v30 & (1 << v7)) == 0)
      {
        goto LABEL_35;
      }

      v4 = v26;
      if (v44 != *(v40 + 36))
      {
        goto LABEL_36;
      }

      v31 = v30 & (-2 << (v7 & 0x3F));
      if (v31)
      {
        v9 = __clz(__rbit64(v31)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v38;
      }

      else
      {
        v32 = v11 << 6;
        v33 = v11 + 1;
        v34 = (v37 + 8 * v11);
        v10 = v38;
        while (v33 < (v9 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_3B8D4(v7, v44, 0);
            v9 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_3B8D4(v7, v44, 0);
      }

LABEL_4:
      v8 = v41 + 1;
      v7 = v9;
      if (v41 + 1 == v10)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_2516C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_81C08();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_3BD70(v3, *(a1 + 36), 0, a1);

  return v5;
}

void sub_251E8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_37D18(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_34BEC(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_38778();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_3748C(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_252EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_147EC(&unk_B8230, qword_88A50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_80A38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_14FD4(a1, &unk_B8230, qword_88A50);
    sub_3576C(a2, a3, v10);

    return sub_14FD4(v10, &unk_B8230, qword_88A50);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_37FE4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_254C4()
{
  v0 = type metadata accessor for Application();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v32 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  sub_26ADC(v36);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  sub_26ADC(v36);
  v8 = v37;
  v35 = *(v37 + 16);
  if (v35)
  {
    v9 = 0;
    v34 = v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = &_swiftEmptyDictionarySingleton;
    v33 = v37;
    while (v9 < *(v8 + 16))
    {
      v11 = v1;
      v12 = *(v1 + 72);
      sub_3B948(v34 + v12 * v9, v7, type metadata accessor for Application);
      v14 = *v7;
      v13 = v7[1];
      v15 = v7;
      v16 = v7;
      v17 = v5;
      sub_3B948(v16, v5, type metadata accessor for Application);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v10;
      v19 = sub_34B30(v14, v13);
      v21 = v10[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_18;
      }

      v25 = v20;
      if (v10[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v19;
          sub_3834C();
          v19 = v30;
        }
      }

      else
      {
        sub_358F0(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_34B30(v14, v13);
        if ((v25 & 1) != (v26 & 1))
        {
          goto LABEL_20;
        }
      }

      v5 = v17;
      v10 = v36;
      v7 = v15;
      if (v25)
      {
        sub_3BAA0(v5, v36[7] + v19 * v12);
      }

      else
      {
        v36[(v19 >> 6) + 8] |= 1 << v19;
        v27 = (v10[6] + 16 * v19);
        *v27 = v14;
        v27[1] = v13;
        sub_3C81C(v5, v10[7] + v19 * v12, type metadata accessor for Application);
        v28 = v10[2];
        v23 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v23)
        {
          goto LABEL_19;
        }

        v10[2] = v29;
      }

      ++v9;
      sub_3CBD0(v15, type metadata accessor for Application);
      v1 = v11;
      v8 = v33;
      if (v35 == v9)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_81E38();
    __break(1u);
  }

  else
  {
    v10 = &_swiftEmptyDictionarySingleton;
LABEL_16:

    return v10;
  }

  return result;
}

uint64_t sub_2588C(uint64_t a1)
{
  v3 = sub_147EC(&unk_B8240, &qword_88F50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v97 = &v95 - v5;
  v6 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v95 - v8;
  v116 = type metadata accessor for Application();
  v10 = *(v116 - 1);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v116);
  v99 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v98 = &v95 - v15;
  v16 = __chkstk_darwin(v14);
  v104 = &v95 - v17;
  v18 = __chkstk_darwin(v16);
  v100 = &v95 - v19;
  v20 = __chkstk_darwin(v18);
  v113 = &v95 - v21;
  v22 = __chkstk_darwin(v20);
  v109 = &v95 - v23;
  v24 = __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v28 = &v95 - v25;
  v96 = v1;
  v29 = *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_systemBundleIDs];
  v30 = *(v29 + 16);
  v105 = v10;
  if (v30)
  {
    v107 = v26;
    v115 = (v10 + 56);
    v31 = (v29 + 40);
    v32 = _swiftEmptyArrayStorage;
    *&v27 = 136315650;
    v101 = v27;
    v108 = v9;
    v106 = &v95 - v25;
    do
    {
      v34 = *(v31 - 1);
      v35 = *v31;
      v36 = *(a1 + 16);

      if (v36)
      {
        v37 = sub_34B30(v34, v35);
        if (v38)
        {
          v114 = v34;
          v39 = *(a1 + 56);
          v112 = *(v10 + 72);
          sub_3B948(v39 + v112 * v37, v28, type metadata accessor for Application);
          if (qword_B7850 != -1)
          {
            swift_once();
          }

          v40 = sub_80BC8();
          sub_19818(v40, qword_BCF70);
          v41 = v28;
          v42 = v28;
          v43 = v107;
          sub_3B948(v41, v107, type metadata accessor for Application);
          v44 = v42;
          v45 = v109;
          sub_3B948(v44, v109, type metadata accessor for Application);

          v46 = sub_80BB8();
          v47 = sub_81B08();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v117[0] = v103;
            *v48 = v101;
            *(v48 + 4) = sub_34588(v114, v35, v117);
            *(v48 + 12) = 2080;
            v49 = *(v43 + 48);
            v50 = sub_81E68();
            v110 = v32;
            v111 = a1;
            v51 = v50;
            v53 = v52;
            v102 = v47;
            sub_3CBD0(v43, type metadata accessor for Application);
            v54 = sub_34588(v51, v53, v117);

            *(v48 + 14) = v54;
            *(v48 + 22) = 2080;
            v55 = *(v45 + 56);
            v56 = sub_81E68();
            v58 = v57;
            sub_3CBD0(v45, type metadata accessor for Application);
            v59 = v56;
            a1 = v111;
            v60 = sub_34588(v59, v58, v117);
            v32 = v110;

            *(v48 + 24) = v60;
            _os_log_impl(&dword_0, v46, v102, "Updating %s with fixed size %s and data size %s", v48, 0x20u);
            swift_arrayDestroy();

            v10 = v105;
          }

          else
          {

            sub_3CBD0(v45, type metadata accessor for Application);
            sub_3CBD0(v43, type metadata accessor for Application);
          }

          v28 = v106;
          sub_3B948(v106, v113, type metadata accessor for Application);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_34040(0, v32[2] + 1, 1, v32, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          }

          v62 = v32[2];
          v61 = v32[3];
          if (v62 >= v61 >> 1)
          {
            v32 = sub_34040(v61 > 1, v62 + 1, 1, v32, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          }

          sub_3CBD0(v28, type metadata accessor for Application);
          v32[2] = v62 + 1;
          sub_3C81C(v113, v32 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v62 * v112, type metadata accessor for Application);
          v9 = v108;
          v34 = v114;
        }
      }

      v63 = sub_34B30(v34, v35);
      v65 = v64;

      if (v65)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117[0] = a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_3834C();
          a1 = v117[0];
        }

        v67 = *(*(a1 + 48) + 16 * v63 + 8);

        sub_3C81C(*(a1 + 56) + *(v10 + 72) * v63, v9, type metadata accessor for Application);
        sub_37654(v63, a1, type metadata accessor for Application);
        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      (*v115)(v9, v33, 1, v116);
      sub_14FD4(v9, &qword_B7E50, &qword_8A3F0);
      v31 += 2;
      --v30;
    }

    while (v30);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  if (*(a1 + 16))
  {
    v110 = v32;
    v68 = a1 + 64;
    v69 = 1 << *(a1 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(a1 + 64);
    v72 = (v69 + 63) >> 6;

    v74 = 0;
    v115 = _swiftEmptyArrayStorage;
    v116 = _swiftEmptyArrayStorage;
    v111 = a1;
    while (v71)
    {
LABEL_33:
      v77 = *(v10 + 72);
      v78 = v100;
      sub_3B948(*(a1 + 56) + v77 * (__clz(__rbit64(v71)) | (v74 << 6)), v100, type metadata accessor for Application);
      v79 = v78;
      v80 = v104;
      sub_3C81C(v79, v104, type metadata accessor for Application);
      if (*(v80 + 131) == 1)
      {
        sub_3B948(v80, v98, type metadata accessor for Application);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_34040(0, v116[2] + 1, 1, v116, &qword_B82B8, &qword_89148, type metadata accessor for Application);
        }

        v82 = v116[2];
        v81 = v116[3];
        v83 = v82 + 1;
        if (v82 >= v81 >> 1)
        {
          v84 = sub_34040(v81 > 1, v82 + 1, 1, v116, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          v75 = v98;
          v116 = v84;
        }

        else
        {
          v84 = v116;
          v75 = v98;
        }
      }

      else
      {
        sub_3B948(v80, v99, type metadata accessor for Application);
        v84 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_34040(0, v84[2] + 1, 1, v84, &qword_B82B8, &qword_89148, type metadata accessor for Application);
        }

        v82 = v84[2];
        v85 = v84[3];
        v83 = v82 + 1;
        if (v82 < v85 >> 1)
        {
          v115 = v84;
          v75 = v99;
        }

        else
        {
          v84 = sub_34040(v85 > 1, v82 + 1, 1, v84, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          v75 = v99;
          v115 = v84;
        }
      }

      v71 &= v71 - 1;
      sub_3CBD0(v104, type metadata accessor for Application);
      v84[2] = v83;
      v10 = v105;
      result = sub_3C81C(v75, v84 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + v82 * v77, type metadata accessor for Application);
      a1 = v111;
    }

    while (1)
    {
      v76 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        return result;
      }

      if (v76 >= v72)
      {
        break;
      }

      v71 = *(v68 + 8 * v76);
      ++v74;
      if (v71)
      {
        v74 = v76;
        goto LABEL_33;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v117[0] = v110;
    v86 = v96;
    sub_80C78();
    swift_getKeyPath();
    swift_getKeyPath();
    v117[0] = v115;
    v87 = v86;
    sub_80C78();
    if (!v116[2] && (swift_getKeyPath(), swift_getKeyPath(), sub_80C68(), , , v94 = *(v117[0] + 16), , v94) && *(*&v87[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs] + 16))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v117[0] = v116;
      v88 = v87;
      sub_80C78();
    }

    sub_26D24();
    v89 = sub_81AB8();
    v90 = v97;
    (*(*(v89 - 8) + 56))(v97, 1, 1, v89);
    sub_81A88();
    v91 = v87;
    v92 = sub_81A78();
    v93 = swift_allocObject();
    v93[2] = v92;
    v93[3] = &protocol witness table for MainActor;
    v93[4] = v91;
    sub_68AE4(0, 0, v90, &unk_89158, v93);
  }

  else
  {
  }
}

uint64_t (*sub_26510(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_39218(v6, a2, a3);
  return sub_26598;
}

void (*sub_2659C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_392C8(v6, a2, a3);
  return sub_3CD2C;
}

void sub_26624(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26684()
{
  v0 = sub_80BC8();
  sub_3BBB8(v0, qword_BCF70);
  v1 = sub_19818(v0, qword_BCF70);
  v2 = sub_80BA8();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26710()
{
  result = [objc_allocWithZone(type metadata accessor for StorageShared()) init];
  qword_BCF88 = result;
  return result;
}

uint64_t sub_26744(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();
}

uint64_t sub_267C0(uint64_t a1, void **a2)
{
  v4 = sub_817E8();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_3B948(a1, &v14 - v9, &type metadata accessor for Volume);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3B948(v10, v8, &type metadata accessor for Volume);
  v12 = v11;
  sub_80C78();
  return sub_3CBD0(v10, &type metadata accessor for Volume);
}

uint64_t sub_26988()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  return v1;
}

uint64_t sub_269F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  return v1;
}

uint64_t sub_26A68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  return v1;
}

uint64_t sub_26ADC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_34040(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_B82B8, &qword_89148, type metadata accessor for Application);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Application();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C2C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_3421C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_26D24()
{
  isUniquelyReferenced_nonNull_native = &v79;
  v2 = type metadata accessor for Application();
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_817E8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_254C4() + 16);

  if (v10)
  {
    v63 = v0;
    v11 = sub_254C4();
    v6 = v11 + 64;
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;
    v66 = v11;

    v16 = 0;
    v0 = &_swiftEmptyDictionarySingleton;
    v64 = v5;
    if (v14)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_8:
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v27 >= v15)
      {
        break;
      }

      v14 = *(v6 + 8 * v27);
      ++v16;
      if (v14)
      {
        while (1)
        {
          sub_3B948(*(v66 + 56) + *(v65 + 72) * (__clz(__rbit64(v14)) | (v27 << 6)), v5, type metadata accessor for Application);
          sub_629C8(v5, v83);
          v9 = *(&v83[0] + 1);
          v28 = *&v83[0];
          v81 = v83[0];
          v82 = v83[1];
          v67 = v84;
          v79 = v85;
          v80[0] = *v86;
          *(v80 + 9) = *&v86[9];
          v29 = v0[2];

          if (v29)
          {
            v30 = sub_34B30(v28, v9);
            if (v31)
            {
              v32 = *(v0[7] + 88 * v30 + 32);
              v67 = v84 + v32;
              if (__OFADD__(v84, v32))
              {
                goto LABEL_35;
              }
            }
          }

          v76 = v81;
          v77 = v82;
          *&v78[0] = v67;
          *(v78 + 8) = v79;
          *(&v78[1] + 8) = v80[0];
          *(&v78[2] + 1) = *(v80 + 9);
          sub_3BC1C(&v76, &v71);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v0;
          v33 = sub_34B30(v28, v9);
          v35 = v0[2];
          v36 = (v34 & 1) == 0;
          v37 = __OFADD__(v35, v36);
          v38 = v35 + v36;
          if (v37)
          {
            goto LABEL_33;
          }

          v39 = v34;
          if (v0[3] >= v38)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v49 = v33;
              sub_38A3C();
              v33 = v49;
            }
          }

          else
          {
            sub_365D0(v38, isUniquelyReferenced_nonNull_native);
            v33 = sub_34B30(v28, v9);
            if ((v39 & 1) != (v40 & 1))
            {
              result = sub_81E38();
              __break(1u);
              return result;
            }
          }

          isUniquelyReferenced_nonNull_native = &v79;
          v14 &= v14 - 1;
          if (v39)
          {
            v17 = v33;

            v0 = v70;
            v18 = v70[7] + 88 * v17;
            v19 = *(v18 + 16);
            v68[0] = *v18;
            v68[1] = v19;
            v20 = *(v18 + 32);
            v21 = *(v18 + 48);
            v22 = *(v18 + 64);
            v69 = *(v18 + 80);
            v68[3] = v21;
            v68[4] = v22;
            v68[2] = v20;
            v24 = v78[1];
            v23 = v78[2];
            v25 = v78[0];
            *(v18 + 80) = v78[3];
            *(v18 + 48) = v24;
            *(v18 + 64) = v23;
            *(v18 + 32) = v25;
            v26 = v77;
            *v18 = v76;
            *(v18 + 16) = v26;
            sub_3BC78(v68);
            v71 = v81;
            v72 = v82;
            v73 = v67;
            v74 = v79;
            v75[0] = v80[0];
            *(v75 + 9) = *(v80 + 9);
            sub_3BC78(&v71);
            v5 = v64;
            sub_3CBD0(v64, type metadata accessor for Application);
            v16 = v27;
            if (!v14)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v0 = v70;
            v70[(v33 >> 6) + 8] |= 1 << v33;
            v41 = (v0[6] + 16 * v33);
            *v41 = v28;
            v41[1] = v9;
            v42 = v0[7] + 88 * v33;
            v43 = v78[3];
            v45 = v78[1];
            v44 = v78[2];
            *(v42 + 32) = v78[0];
            *(v42 + 48) = v45;
            *(v42 + 64) = v44;
            *(v42 + 80) = v43;
            v46 = v77;
            *v42 = v76;
            *(v42 + 16) = v46;
            v71 = v81;
            v72 = v82;
            v73 = v67;
            v74 = v79;
            v75[0] = v80[0];
            *(v75 + 9) = *(v80 + 9);
            sub_3BC78(&v71);
            v5 = v64;
            sub_3CBD0(v64, type metadata accessor for Application);
            v47 = v0[2];
            v37 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v37)
            {
              goto LABEL_34;
            }

            v0[2] = v48;
            v16 = v27;
            if (!v14)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v27 = v16;
        }
      }
    }

    v50 = v0[2];
    if (v50)
    {
      v51 = sub_343C4(v0[2], 0);
      v0 = sub_3A014(&v76, v51 + 32, v50, v0);
      sub_208C0();
      v52 = v63;
      if (v0 != v50)
      {
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {

      v51 = _swiftEmptyArrayStorage;
      v52 = v63;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v76 = v51;
    v60 = v52;
  }

  else
  {
LABEL_27:
    sub_147EC(&qword_B82C8, &qword_891B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_886D0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    v53 = *&v9[*(v6 + 32)];
    sub_3CBD0(v9, &type metadata accessor for Volume);
    v54 = sub_818E8();
    v55 = sub_818E8();
    v56 = STLocalizedString(v54);

    sub_81928();
    if (qword_B78B0 != -1)
    {
LABEL_36:
      swift_once();
    }

    sub_81798();
    v57 = *(isUniquelyReferenced_nonNull_native + 136);
    *(v15 + 64) = *(isUniquelyReferenced_nonNull_native + 120);
    *(v15 + 80) = v57;
    *(v15 + 96) = *(isUniquelyReferenced_nonNull_native + 152);
    *(v15 + 112) = v86[24];
    v58 = *(isUniquelyReferenced_nonNull_native + 104);
    *(v15 + 32) = *(isUniquelyReferenced_nonNull_native + 88);
    *(v15 + 48) = v58;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v76 = v15;
    v59 = v0;
  }

  return sub_80C78();
}

uint64_t sub_27478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_27510, v6, v5);
}

uint64_t sub_27510()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController);
  v0[6] = v1;
  v0[7] = sub_254C4();

  return _swift_task_switch(sub_2758C, v1, 0);
}

uint64_t sub_2758C()
{
  v1 = v0[6];
  sub_51AE0(v0[7]);

  v2 = v0[4];
  v3 = v0[5];

  return _swift_task_switch(sub_15E64, v2, v3);
}

id sub_275FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v158 = &v125 - v4;
  v129 = sub_809D8();
  v128 = *(v129 - 8);
  v5 = *(v128 + 64);
  v6 = __chkstk_darwin(v129);
  v126 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v127 = &v125 - v8;
  v9 = sub_147EC(&qword_B8358, &qword_893D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v154 = &v125 - v11;
  v12 = sub_817E8();
  v13 = *(v12 - 8);
  v152 = v12;
  v153 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v155 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v156 = &v125 - v18;
  __chkstk_darwin(v17);
  v125 = &v125 - v19;
  v20 = sub_147EC(&qword_B8298, &qword_88FC0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v151 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v150 = &v125 - v25;
  v26 = __chkstk_darwin(v24);
  v149 = &v125 - v27;
  __chkstk_darwin(v26);
  v148 = &v125 - v28;
  v29 = sub_80A38();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v146 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_81818();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v147 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_147EC(&qword_B8360, &qword_893D8);
  v144 = *(v145 - 8);
  v35 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = &v125 - v36;
  v142 = sub_147EC(&qword_B8368, &qword_893E0);
  v141 = *(v142 - 8);
  v37 = *(v141 + 64);
  __chkstk_darwin(v142);
  v140 = &v125 - v38;
  v139 = sub_147EC(&qword_B8370, &qword_893E8);
  v138 = *(v139 - 8);
  v39 = *(v138 + 64);
  __chkstk_darwin(v139);
  v137 = &v125 - v40;
  v136 = sub_147EC(&qword_B8378, &qword_893F0);
  v135 = *(v136 - 8);
  v41 = *(v135 + 64);
  __chkstk_darwin(v136);
  v43 = &v125 - v42;
  v134 = sub_147EC(&qword_B8380, &qword_893F8);
  v133 = *(v134 - 8);
  v44 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = &v125 - v45;
  v131 = sub_147EC(&qword_B8388, &qword_89400);
  v130 = *(v131 - 8);
  v46 = *(v130 + 64);
  __chkstk_darwin(v131);
  v48 = &v125 - v47;
  v49 = sub_147EC(&qword_B8390, &qword_89408);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  v53 = &v125 - v52;
  v54 = &v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_deviceName];
  v55 = localizedDeviceName();
  v56 = sub_81928();
  v58 = v57;

  *v54 = v56;
  v54[1] = v58;
  v59 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__categories;
  v160[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B8170, &qword_88E78);
  sub_80C58();
  (*(v50 + 32))(&v1[v59], v53, v49);
  v60 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__recommendations;
  v160[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B8180, &qword_88E80);
  sub_80C58();
  (*(v130 + 32))(&v1[v60], v48, v131);
  v61 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__followups;
  v160[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B8190, &qword_88E88);
  v62 = v132;
  sub_80C58();
  (*(v133 + 32))(&v1[v61], v62, v134);
  v63 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__visibleItems;
  v160[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B81A0, &qword_88E90);
  sub_80C58();
  v64 = *(v135 + 32);
  v65 = v136;
  v64(&v1[v63], v43, v136);
  v66 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__hiddenItems;
  v160[0] = _swiftEmptyArrayStorage;
  sub_80C58();
  v64(&v1[v66], v43, v65);
  v67 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__systemItems;
  v160[0] = _swiftEmptyArrayStorage;
  sub_80C58();
  v64(&v1[v67], v43, v65);
  v68 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__currentSearch;
  v160[0] = 0;
  v160[1] = 0xE000000000000000;
  v69 = v137;
  sub_80C58();
  (*(v138 + 32))(&v1[v68], v69, v139);
  v70 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__gatheringFailed;
  LOBYTE(v160[0]) = 0;
  v71 = v140;
  sub_80C58();
  (*(v141 + 32))(&v1[v70], v71, v142);
  v72 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__deepLinkDestination;
  v160[0] = 0;
  sub_147EC(&qword_B81C0, &qword_88E98);
  v73 = v143;
  sub_80C58();
  (*(v144 + 32))(&v1[v72], v73, v145);
  v74 = &v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
  *v74 = 0;
  v74[1] = 0;
  v75 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_systemDataInternalDetails;
  *&v1[v75] = sub_3B0CC(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_syncedMediaSizes] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lastSizerResults] = 0;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription] = 0;
  v76 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs] = &_swiftEmptySetSingleton;
  v145 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs] = &_swiftEmptySetSingleton;
  v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce] = 1;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries] = 0;
  v77 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_systemBundleIDs;
  sub_147EC(&qword_B82D8, &qword_891C0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_88E30;
  *(v78 + 32) = sub_81928();
  *(v78 + 40) = v79;
  *(v78 + 48) = sub_81928();
  *(v78 + 56) = v80;
  *(v78 + 64) = sub_81928();
  *(v78 + 72) = v81;
  *&v1[v77] = v78;
  v82 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesByApplications;
  *&v1[v82] = sub_3B1C8(_swiftEmptyArrayStorage);
  v83 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesStreams;
  v84 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v85 = [v84 InFocus];
  swift_unknownObjectRelease();
  *&v1[v83] = v85;
  v160[3] = &type metadata for StorageManagementFeature;
  v160[4] = sub_3C0A0();
  LOBYTE(v85) = sub_80AB8();
  sub_20FD0(v160);
  v86 = SAAppSizer_ptr;
  if ((v85 & 1) == 0)
  {
    v86 = &off_A9208;
  }

  v87 = [objc_allocWithZone(*v86) init];
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer] = v87;
  type metadata accessor for RecommendationController();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController] = sub_51888();
  type metadata accessor for SoftwareUpdateController();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_softwareUpdateController] = sub_5601C();
  sub_80A18();
  v88 = sub_816D8();
  v89 = *(*(v88 - 8) + 56);
  v89(v148, 1, 1, v88);
  v89(v149, 1, 1, v88);
  v89(v150, 1, 1, v88);
  v89(v151, 1, 1, v88);
  v90 = v147;
  sub_817F8();
  sub_3C81C(v90, &v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats], &type metadata accessor for TimeStats);
  v91 = objc_opt_self();
  v92 = [v91 hiddenAppBundleIdentifiers];
  v93 = sub_81AD8();

  v94 = *&v1[v76];
  *&v1[v76] = v93;
  v95 = v152;

  v96 = [v91 lockedAppBundleIdentifiers];
  v97 = sub_81AD8();

  v98 = *&v1[v145];
  *&v1[v145] = v97;
  v99 = v154;

  sub_817B8();
  if ((*(v153 + 48))(v99, 1, v95) == 1)
  {
    v101 = v155;
    v100 = v156;
    sub_14FD4(v99, &qword_B8358, &qword_893D0);
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v102 = sub_80BC8();
    sub_19818(v102, qword_BCF70);
    v103 = sub_80BB8();
    v104 = sub_81B18();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "Failed to get volume placeholder with correct sizes, displaying an empty one", v105, 2u);
    }

    v106 = sub_817C8();
    v107 = *v106;
    v108 = v106[1];

    v109 = v127;
    sub_80998();

    sub_81E58();
    v110 = v128;
    v111 = v129;
    (*(v128 + 16))(v126, v109, v129);
    v112 = v100;
    sub_817D8();
    (*(v110 + 8))(v109, v111);
    swift_beginAccess();
    sub_3B948(v100, v101, &type metadata accessor for Volume);
    sub_80C58();
    sub_3CBD0(v100, &type metadata accessor for Volume);
    swift_endAccess();
  }

  else
  {
    v113 = v125;
    sub_3C81C(v99, v125, &type metadata accessor for Volume);
    v112 = v156;
    sub_3B948(v113, v156, &type metadata accessor for Volume);
    swift_beginAccess();
    sub_3B948(v112, v155, &type metadata accessor for Volume);
    sub_80C58();
    sub_3CBD0(v112, &type metadata accessor for Volume);
    swift_endAccess();
    sub_3CBD0(v113, &type metadata accessor for Volume);
  }

  v159.receiver = v1;
  v159.super_class = ObjectType;
  v114 = objc_msgSendSuper2(&v159, "init");
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v114;
  sub_80C68();

  v116 = *(v112 + *(v95 + 28));
  sub_3CBD0(v112, &type metadata accessor for Volume);
  if (v116 >= 1)
  {
    sub_26D24();
  }

  v117 = objc_opt_self();
  v118 = [v117 defaultCenter];
  [v118 addObserver:v115 selector:"startHandlers" name:UIApplicationDidBecomeActiveNotification object:0];

  v119 = [v117 defaultCenter];
  [v119 addObserver:v115 selector:"stopHandlers" name:UIApplicationDidEnterBackgroundNotification object:0];

  v120 = sub_81AB8();
  v121 = v158;
  (*(*(v120 - 8) + 56))(v158, 1, 1, v120);
  sub_81A88();
  v122 = sub_81A78();
  v123 = swift_allocObject();
  v123[2] = v122;
  v123[3] = &protocol witness table for MainActor;
  v123[4] = v115;
  sub_68AE4(0, 0, v121, &unk_89418, v123);

  return v115;
}

uint64_t sub_28904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_2899C, v6, v5);
}

uint64_t sub_2899C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_289C8, v1, 0);
}

uint64_t sub_289C8()
{
  sub_3A590(*(v0 + 16), *(v0 + 48));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_3CD38, v1, v2);
}

id sub_28A54()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for StorageShared()
{
  result = qword_B8150;
  if (!qword_B8150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28F58()
{
  v1 = sub_147EC(&qword_B8298, &qword_88FC0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &aBlock[-1] - v6;
  v8 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries;
  if (*&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries] <= 2)
  {
    v9 = &v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats];
    swift_beginAccess();
    v26 = sub_81818();
    sub_14F6C(&v9[*(v26 + 20)], v7, &qword_B8298, &qword_88FC0);
    v10 = sub_816D8();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    sub_14FD4(v7, &qword_B8298, &qword_88FC0);
    if (v12 == 1)
    {
      sub_816C8();
      (*(v11 + 56))(v5, 0, 1, v10);
      swift_beginAccess();
      sub_3C9DC(v5, &v9[*(v26 + 20)], &qword_B8298, &qword_88FC0);
      swift_endAccess();
    }

    v13 = *&v0[v8];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *&v0[v8] = v15;
      v16 = *&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer];
      v17 = swift_allocObject();
      *(v17 + 16) = v0;
      aBlock[4] = sub_3BEBC;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2EF54;
      aBlock[3] = &unk_AB770;
      v18 = _Block_copy(aBlock);
      v19 = v16;
      v20 = v0;

      [v19 startObservingWithUpdateHandler:v18];
      _Block_release(v18);

      sub_2EFD0();
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  v21 = v0;
  sub_80C78();
  if (qword_B7850 != -1)
  {
LABEL_11:
    swift_once();
  }

  v22 = sub_80BC8();
  sub_19818(v22, qword_BCF70);
  v23 = sub_80BB8();
  v24 = sub_81B28();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Failed to gather app list after 3 tries, aborting.", v25, 2u);
  }
}

uint64_t sub_29320(void *a1, uint64_t a2, char *a3)
{
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  if (a1)
  {
    v10 = a2 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  if (v10)
  {
    *&a3[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries] = 0;
    v19 = sub_81AB8();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    sub_81A88();
    v20 = a1;
    v21 = a3;
    v22 = sub_81A78();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    v23[5] = v20;
    v24 = &unk_89258;
  }

  else
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v12 = sub_80BC8();
    sub_19818(v12, qword_BCF70);
    swift_errorRetain();
    v13 = sub_80BB8();
    v14 = sub_81B18();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v15 + 4) = v17;
      *v16 = v18;
      _os_log_impl(&dword_0, v13, v14, "Failed to update app sizes with error %@", v15, 0xCu);
      sub_14FD4(v16, &qword_B7BA8, &qword_8A5F0);
    }

    v25 = sub_81AB8();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    sub_81A88();
    v26 = a3;
    v27 = sub_81A78();
    v23 = swift_allocObject();
    v23[2] = v27;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v26;
    v24 = &unk_89240;
  }

  sub_68AE4(0, 0, v9, v24, v23);

  return v11;
}

uint64_t sub_29650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_81A88();
  v5[3] = sub_81A78();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2970C;

  return sub_29848(a5);
}

uint64_t sub_2970C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_81A58();

  return _swift_task_switch(sub_3CD38, v5, v4);
}

uint64_t sub_29848(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_809D8();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = *(sub_817E8() - 8);
  v2[37] = v6;
  v2[38] = *(v6 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v7 = sub_147EC(&qword_B8228, &qword_88F48);
  v2[41] = v7;
  v8 = *(v7 - 8);
  v2[42] = v8;
  v9 = *(v8 + 64) + 15;
  v2[43] = swift_task_alloc();
  v10 = *(*(sub_147EC(&unk_B8230, qword_88A50) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v11 = *(*(sub_147EC(&qword_B7E50, &qword_8A3F0) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v12 = type metadata accessor for Application();
  v2[50] = v12;
  v13 = *(v12 - 8);
  v2[51] = v13;
  v14 = *(v13 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v15 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_29B40, 0, 0);
}

uint64_t sub_29B40()
{
  v1 = v0[56];
  v2 = v0[32];
  v3 = sub_81AB8();
  v0[57] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[58] = v5;
  v0[59] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[60] = sub_81A88();
  v6 = v2;
  v7 = sub_81A78();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_68AE4(0, 0, v1, &unk_88F60, v8);

  v0[25] = sub_3B3B4(_swiftEmptyArrayStorage);
  v0[61] = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs;
  v0[62] = sub_81A78();
  v10 = sub_81A58();

  return _swift_task_switch(sub_29CBC, v10, v9);
}

uint64_t sub_29CBC()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[32];

  v0[63] = *(v3 + v2);

  return _swift_task_switch(sub_29D38, 0, 0);
}

uint64_t sub_29D38()
{
  v1 = v0[60];
  v0[64] = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs;
  v0[65] = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_29DD0, v3, v2);
}

uint64_t sub_29DD0()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[32];

  v0[66] = *(v3 + v2);

  return _swift_task_switch(sub_29E50, 0, 0);
}

uint64_t sub_29E50()
{
  v156 = (v0 + 2);
  v152 = (v0 + 6);
  v154 = (v0 + 10);
  v148 = (v0 + 18);
  v150 = (v0 + 14);
  v2 = [v0[31] appData];
  v3 = &qword_88C78;
  v4 = sub_147EC(&qword_B7E58, &qword_88C78);
  v5 = sub_1A7F4(0, &qword_B8250, SAAppSize_ptr);
  sub_14F24(&qword_B8258, &qword_B7E58, &qword_88C78);
  v6 = sub_81838();
  v0[67] = v6;

  v7 = 0;
  v8 = *(v6 + 32);
  *(v0 + 640) = v8;
  v9 = 1 << v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v6 + 64);
  v0[68] = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesByApplications;
  v162 = v0;
  if (v11)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v2 = v0[67];
    if (v12 >= (((1 << *(v0 + 640)) + 63) >> 6))
    {
      v43 = v0[66];
      v44 = v0[63];
      v45 = v0[50];
      v46 = v0[51];

      v5 = @"com.apple.fakeapp.SystemData";
      v47 = sub_81928();
      v49 = sub_26510(v152, v47, v48);
      v51 = v50;
      v52 = *(v46 + 48);
      if (!v52(v50, 1, v45))
      {
        v145 = v0[50];
        v158 = v52;
        v53 = v0[43];
        v141 = v0[41];
        v143 = v0[42];
        v54 = [v0[31] systemDataDetails];
        sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
        v55 = sub_81838();

        v156 = @"com.apple.fakeapp.SystemData";
        v56 = sub_24E5C(v55);

        v0[30] = v56;
        swift_getKeyPath();
        sub_80908();
        sub_147EC(&qword_B8268, &qword_88FA0);
        sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
        sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
        v0 = v162;
        v57 = sub_819B8();
        v58 = v53;
        v52 = v158;
        (*(v143 + 8))(v58, v141);
        v5 = @"com.apple.fakeapp.SystemData";

        v59 = *(v145 + 84);
        v60 = *(v51 + v59);
        *(v51 + v59) = v57;
      }

      v49();

      v1 = @"com.apple.fakeapp.System";
      v61 = sub_81928();
      v63 = v0[25];
      v7 = v154;
      if (!*(v63 + 16))
      {

        goto LABEL_77;
      }

      v64 = sub_34B30(v61, v62);
      v66 = v65;

      if ((v66 & 1) == 0)
      {
        goto LABEL_77;
      }

      v156 = @"com.apple.fakeapp.SystemData";
      v158 = v52;
      v68 = v0[52];
      v67 = v0[53];
      v69 = v0[42];
      v3 = v0[43];
      v146 = v0[41];
      v70 = v0[31];
      sub_3B948(*(v63 + 56) + *(v0[51] + 72) * v64, v68, type metadata accessor for Application);
      sub_3C81C(v68, v67, type metadata accessor for Application);
      v71 = [v70 systemDetails];
      sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
      v72 = sub_81838();

      v73 = sub_24E5C(v72);

      v0[29] = v73;
      swift_getKeyPath();
      sub_80908();
      v5 = sub_147EC(&qword_B8268, &qword_88FA0);
      sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
      sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
      v74 = sub_819B8();
      (*(v69 + 8))(v3, v146);

      v75 = 0;
      v4 = *(v74 + 16);
      v2 = _swiftEmptyArrayStorage;
LABEL_46:
      v76 = 40 * v75 + 48;
      v7 = v154;
      while (v4 != v75)
      {
        if (v75 >= *(v74 + 16))
        {
          goto LABEL_85;
        }

        v5 = *(v74 + v76);
        v76 += 40;
        ++v75;
        if (v5 != 0x8000000000000000)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_33F3C(0, *(v2 + 2) + 1, 1, v2);
          }

          v78 = *(v2 + 2);
          v77 = *(v2 + 3);
          v3 = v78 + 1;
          if (v78 >= v77 >> 1)
          {
            v2 = sub_33F3C((v77 > 1), v78 + 1, 1, v2);
          }

          *(v2 + 2) = v3;
          *&v2[8 * v78 + 32] = v5;
          goto LABEL_46;
        }
      }

      v0 = v162;
      v79 = v162[50];
      v3 = sub_81A38();

      v80 = sub_81928();
      v4 = v81;
      v2 = sub_26510(v150, v80, v81);
      v83 = v82;
      v84 = v79;
      v52 = v158;
      if (!(v158)(v82, 1, v84))
      {
        v88 = *(v162[50] + 84);
        v89 = *(v83 + v88);
        *(v83 + v88) = v74;
      }

      v5 = @"com.apple.fakeapp.SystemData";
      (v2)();

      if (v3 < 100000001)
      {
        goto LABEL_76;
      }

      v90 = v162[53];
      v91 = v90[6];
      v92 = v90[7];
      v93 = __OFADD__(v91, v92);
      v94 = v91 + v92;
      if (v93)
      {
        goto LABEL_90;
      }

      v150 = (v94 - v3);
      if (__OFSUB__(v94, v3))
      {
        goto LABEL_91;
      }

      v95 = v162[50];
      v6 = v90[2];
      v3 = v90[3];
      v96 = sub_81928();
      v98 = v97;

      v2 = sub_26510(v148, v96, v98);
      v4 = v99;
      if ((v158)(v99, 1, v95))
      {

        goto LABEL_75;
      }

LABEL_71:
      v5 = v6;
      v7 = *(v0[50] + 84);
      v1 = *(v4 + v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v7) = v1;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_72;
      }

      goto LABEL_92;
    }

    v11 = *&v2[8 * v12 + 64];
    ++v7;
    if (!v11)
    {
      continue;
    }

    v7 = v12;
LABEL_12:
    v0[70] = v7;
    v0[69] = v11;
    v158 = (v11 - 1) & v11;
    v13 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
    v14 = *(*(v2 + 6) + v13);
    v0[71] = v14;
    v2 = *(*(v2 + 7) + v13);
    v0[72] = v2;
    v0[26] = v14;
    v0[27] = v14;
    v0 = v14;
    v16 = v14 + 56;
    v15 = *(v14 + 56);
    v17 = -1 << *(v14 + 32);
    v18 = -v17 < 64 ? ~(-1 << -v17) : -1;
    v3 = v18 & v15;
    v1 = ((63 - v17) >> 6);
    swift_bridgeObjectRetain_n();
    v160 = v2;
    v19 = 0;
LABEL_17:
    if (v3)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v20 >= v1)
      {
        break;
      }

      v3 = *(v16 + 8 * v20);
      ++v19;
      if (v3)
      {
        v19 = v20;
LABEL_22:
        v21 = (v0[6] + ((v19 << 10) | (16 * __clz(__rbit64(v3)))));
        v4 = *v21;
        v6 = v21[1];
        v22 = qword_B7888;

        if (v22 != -1)
        {
          swift_once();
        }

        v3 &= v3 - 1;
        v2 = qword_BD078;
        if (*(qword_BD078 + 16))
        {
          v4 = sub_34B30(v4, v6);
          v24 = v23;

          if (v24)
          {
            v25 = *(v2 + 7) + 144 * v4;
            v6 = *(v25 + 120);
            v4 = *(v25 + 128);

            sub_2FEF0(v6);
            v2 = (v162 + 27);
            sub_2FEF0(v4);
          }
        }

        else
        {
        }

        goto LABEL_17;
      }
    }

    v3 = v0;
    v0 = v162;
    v26 = v162[66];
    v27 = v162[63];

    v6 = sub_2FFF4(v26, v162[26]);

    v2 = v162[27];
    v5 = sub_2FFF4(v27, v2);

    if (*(v3 + 16) >= 2uLL)
    {
      break;
    }

    v28 = sub_2516C(v3);
    v4 = v29;

    v162[74] = v4;
    if (!v4)
    {

      v11 = v158;
      if (v158)
      {
        goto LABEL_7;
      }

      continue;
    }

    v162[75] = v28;
    v30 = v162[25];
    if (*(v30 + 16) && (v31 = sub_34B30(v28, v4), (v32 & 1) != 0))
    {
      sub_3B948(*(v30 + 56) + *(v162[51] + 72) * v31, v162[48], type metadata accessor for Application);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = v162[50];
    v35 = v162[51];
    v36 = v162[48];
    (*(v35 + 56))(v36, v33, 1, v34);
    v1 = *(v35 + 48);
    v162[76] = v1;
    v162[77] = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if ((v1)(v36, 1, v34))
    {
      sub_14FD4(v162[48], &qword_B7E50, &qword_8A3F0);
      v100 = swift_task_alloc();
      v162[78] = v100;
      *v100 = v162;
      v100[1] = sub_2C474;
      v101 = v162[47];

      return sub_1D58C(v101, v28, v4, v160, (v6 & 1) == 0, (v5 & 1) == 0);
    }

    v37 = v162[50];
    v38 = v162[48];
    v5 = *(v38 + 56);
    v158 = *(v38 + 48);
    sub_14FD4(v38, &qword_B7E50, &qword_8A3F0);
    v7 = v156;
    v2 = sub_26510(v156, v28, v4);
    v6 = v39;
    v40 = (v1)(v39, 1, v37);
    v3 = v160;
    if (!v40)
    {
      v41 = sub_7CFD8(v160);
      if (__OFADD__(v158, v41))
      {
        goto LABEL_88;
      }

      if (__OFADD__(v5, v42))
      {
        while (1)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v1 = sub_33E1C(0, (v1->data + 1), 1, v1);
          *(v4 + v7) = v1;
LABEL_72:
          data = v1->data;
          length = v1->length;
          if (data >= length >> 1)
          {
            v1 = sub_33E1C((length > 1), data + 1, 1, v1);
            *(v4 + v7) = v1;
          }

          v7 = v154;
          v1->data = (data + 1);
          v105 = &v1->isa + 5 * data;
          v105[4] = 7565161;
          v105[5] = 0xE300000000000000;
          v105[6] = v150;
          v105[7] = v5;
          v105[8] = v3;
          v0 = v162;
LABEL_75:
          v5 = v156;
          (v2)();

          v52 = v158;
LABEL_76:
          sub_3CBD0(v0[53], type metadata accessor for Application);
LABEL_77:
          v1 = v0[50];
          v106 = sub_81928();
          v3 = sub_26510(v7, v106, v107);
          v4 = v108;
          if (!v52(v108, 1, v1))
          {
            v109 = v0[42];
            v1 = v0[43];
            v156 = v0[41];
            v158 = v0[50];
            v110 = [v0[31] systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v111 = sub_81838();

            v112 = sub_24E5C(v111);

            v0[28] = v112;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
            v0 = v162;
            v113 = sub_819B8();
            v114 = *(v109 + 8);
            v5 = v109 + 8;
            v114(v1, v156);
            v7 = v154;

            v115 = *(v158 + 84);
            v116 = *(v4 + v115);
            *(v4 + v115) = v113;
          }

          (v3)(v7, 0);
          v2 = v0[31];

          if (([v2 diskCapacity] & 0x8000000000000000) != 0)
          {
LABEL_86:
            __break(1u);
          }

          else if (([v0[31] diskUsed] & 0x8000000000000000) == 0)
          {
            v140 = v0[60];
            v136 = v0[58];
            v137 = v0[59];
            v134 = v0[56];
            v135 = v0[57];
            v142 = v0[55];
            v144 = v0[54];
            v147 = v0[53];
            v149 = v0[52];
            v151 = v0[49];
            v153 = v0[48];
            v155 = v0[47];
            v157 = v0[46];
            v159 = v0[45];
            v161 = v0[44];
            v163 = v0[43];
            v117 = v0[40];
            v138 = v0[37];
            v139 = v0[38];
            v119 = v0[35];
            v118 = v0[36];
            v120 = v0[33];
            v121 = v0[34];
            v132 = v0[32];
            v133 = v0[39];
            v122 = sub_817C8();
            v123 = *v122;
            v124 = v122[1];

            sub_80998();

            sub_81E58();
            (*(v121 + 16))(v119, v118, v120);
            sub_817D8();
            (*(v121 + 8))(v118, v120);
            v136(v134, 1, 1, v135);
            v125 = v0[25];
            sub_3B948(v117, v133, &type metadata accessor for Volume);
            v126 = v132;

            v127 = sub_81A78();
            v128 = (*(v138 + 80) + 48) & ~*(v138 + 80);
            v129 = swift_allocObject();
            v129[2] = v127;
            v129[3] = &protocol witness table for MainActor;
            v129[4] = v126;
            v129[5] = v125;
            sub_3C81C(v133, v129 + v128, &type metadata accessor for Volume);
            sub_68AE4(0, 0, v134, &unk_88F78, v129);

            sub_3CBD0(v117, &type metadata accessor for Volume);
            v130 = v0[25];

            v131 = v0[1];

            return v131();
          }

          __break(1u);
LABEL_88:
          __break(1u);
        }
      }

      *(v6 + 48) = v158 + v41;
      *(v6 + 56) = v5 + v42;
      v7 = v156;
    }

    (v2)(v7, 0);

    v7 = v162[70];
    v11 = (v162[69] - 1) & v162[69];
    if (v11)
    {
LABEL_7:
      v2 = v0[67];
      goto LABEL_12;
    }
  }

  v85 = swift_task_alloc();
  v162[73] = v85;
  *v85 = v162;
  v85[1] = sub_2B0DC;
  v86 = v162[49];

  return sub_1BDA8(v86, v3, v160, (v6 & 1) == 0, (v5 & 1) == 0);
}

uint64_t sub_2B0DC()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 568);
  v4 = *v0;

  return _swift_task_switch(sub_2B1F4, 0, 0);
}

unint64_t sub_2B1F4()
{
  v156 = (v1 + 16);
  v161 = (v1 + 80);
  LOBYTE(v4) = v1 + 112;
  v152 = (v1 + 144);
  v5 = *(v1 + 392);
  v6 = (*(*(v1 + 408) + 48))(v5, 1, *(v1 + 400));
  v7 = *(v1 + 576);
  v158 = (v1 + 48);
  if (v6 == 1)
  {

    sub_14FD4(v5, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v0 = *(v1 + 432);
    v8 = *(v1 + 440);
    sub_3C81C(v5, v8, type metadata accessor for Application);
    v2 = *v8;
    v3 = v8[1];
    sub_3B948(v8, v0, type metadata accessor for Application);
    v9 = *(v1 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_37A0C(v0, v2, v3, isUniquelyReferenced_nonNull_native);

    sub_3CBD0(v8, type metadata accessor for Application);
    *(v1 + 200) = v9;
  }

  v154 = (v1 + 112);
  v167 = v1;
LABEL_5:
  v11 = *(v1 + 560);
  v12 = (*(v1 + 552) - 1) & *(v1 + 552);
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v13 = *(v1 + 536);
LABEL_11:
    *(v1 + 560) = v11;
    *(v1 + 552) = v12;
    v163 = (v12 - 1) & v12;
    v15 = (v11 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v13 + 48) + v15);
    *(v1 + 568) = v16;
    v17 = *(*(v13 + 56) + v15);
    *(v1 + 576) = v17;
    *(v1 + 208) = v16;
    *(v1 + 216) = v16;
    v18 = v16;
    v20 = v16 + 56;
    v19 = *(v16 + 56);
    v21 = -1 << *(v16 + 32);
    v22 = -v21 < 64 ? ~(-1 << -v21) : -1;
    v23 = v22 & v19;
    v24 = (63 - v21) >> 6;
    swift_bridgeObjectRetain_n();
    v165 = v17;
    v25 = 0;
    while (v23)
    {
LABEL_21:
      v27 = (v18[6] + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
      v0 = *v27;
      v28 = v27[1];
      v29 = qword_B7888;

      if (v29 != -1)
      {
        swift_once();
      }

      v23 &= v23 - 1;
      v17 = qword_BD078;
      if (*(qword_BD078 + 16))
      {
        v0 = sub_34B30(v0, v28);
        v2 = v30;

        if (v2)
        {
          v31 = *(v17 + 7) + 144 * v0;
          v32 = *(v31 + 120);
          v0 = *(v31 + 128);

          v2 = v18;
          sub_2FEF0(v32);
          v17 = (v167 + 216);
          sub_2FEF0(v0);
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_21;
      }
    }

    v33 = v18;
    v1 = v167;
    v34 = *(v167 + 528);
    v35 = *(v167 + 504);

    LOBYTE(v4) = sub_2FFF4(v34, *(v167 + 208));

    v2 = sub_2FFF4(v35, *(v167 + 216));

    if (*(v33 + 16) >= 2uLL)
    {
      break;
    }

    v0 = sub_2516C(v33);
    v3 = v36;

    *(v167 + 592) = v3;
    if (v3)
    {
      *(v167 + 600) = v0;
      v37 = *(v167 + 200);
      if (*(v37 + 16) && (v38 = sub_34B30(v0, v3), (v39 & 1) != 0))
      {
        sub_3B948(*(v37 + 56) + *(*(v167 + 408) + 72) * v38, *(v167 + 384), type metadata accessor for Application);
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = *(v167 + 400);
      v42 = *(v167 + 408);
      v43 = *(v167 + 384);
      (*(v42 + 56))(v43, v40, 1, v41);
      v44 = *(v42 + 48);
      *(v167 + 608) = v44;
      *(v167 + 616) = (v42 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v44(v43, 1, v41))
      {
        goto LABEL_83;
      }

      v45 = *(v167 + 400);
      v46 = *(v167 + 384);
      v4 = *(v46 + 48);
      v2 = *(v46 + 56);
      sub_14FD4(v46, &qword_B7E50, &qword_8A3F0);
      v47 = sub_26510(v156, v0, v3);
      v49 = v48;
      v0 = v165;
      if (v44(v48, 1, v45))
      {
        goto LABEL_39;
      }

      result = sub_7CFD8(v165);
      if (__OFADD__(v4, result))
      {
        __break(1u);
LABEL_92:
        __break(1u);
        return result;
      }

      if (__OFADD__(v2, v51))
      {
        goto LABEL_92;
      }

      *(v49 + 48) = v4 + result;
      *(v49 + 56) = v2 + v51;
LABEL_39:
      (v47)(v156, 0);

      v1 = v167;
      goto LABEL_5;
    }

    v12 = v163;
    if (!v163)
    {
LABEL_7:
      while (1)
      {
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v13 = *(v1 + 536);
        if (v14 >= (((1 << *(v1 + 640)) + 63) >> 6))
        {
          v52 = *(v1 + 528);
          v53 = *(v1 + 504);
          v0 = *(v1 + 400);
          v54 = *(v1 + 408);

          v55 = sub_81928();
          v57 = sub_26510(v158, v55, v56);
          v24 = v58;
          v165 = *(v54 + 48);
          if (!(v165)(v58, 1, v0))
          {
            v149 = *(v1 + 400);
            v59 = *(v1 + 344);
            v146 = *(v1 + 328);
            v147 = *(v1 + 336);
            v60 = [*(v1 + 248) systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v61 = sub_81838();

            v62 = sub_24E5C(v61);

            *(v1 + 240) = v62;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
            v0 = v146;
            v63 = sub_819B8();
            (*(v147 + 8))(v59, v146);

            v64 = *(v149 + 84);
            v65 = *(v24 + v64);
            *(v24 + v64) = v63;
          }

          (v57)(v158, 0);

          v66 = @"com.apple.fakeapp.System";
          v67 = sub_81928();
          v69 = *(v1 + 200);
          if (*(v69 + 16))
          {
            v70 = sub_34B30(v67, v68);
            v72 = v71;

            if (v72)
            {
              v74 = *(v167 + 416);
              v73 = *(v167 + 424);
              v4 = *(v167 + 336);
              v75 = *(v167 + 344);
              v159 = *(v167 + 328);
              v76 = *(v167 + 248);
              sub_3B948(*(v69 + 56) + *(*(v167 + 408) + 72) * v70, v74, type metadata accessor for Application);
              sub_3C81C(v74, v73, type metadata accessor for Application);
              v77 = [v76 systemDetails];
              sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
              v78 = sub_81838();

              v0 = 0;
              v79 = sub_24E5C(v78);

              *(v167 + 232) = v79;
              swift_getKeyPath();
              sub_80908();
              v3 = sub_147EC(&qword_B8268, &qword_88FA0);
              sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
              sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
              v23 = sub_819B8();
              (*(v4 + 8))(v75, v159);

              v1 = 0;
              v2 = *(v23 + 16);
              v80 = _swiftEmptyArrayStorage;
              LOBYTE(v4) = 48;
              while (1)
              {
                v81 = 40 * v1 + 48;
                do
                {
                  if (v2 == v1)
                  {
                    v24 = *(v167 + 400);
                    v84 = sub_81A38();

                    v85 = sub_81928();
                    v2 = v86;
                    v0 = v154;
                    v17 = sub_26510(v154, v85, v86);
                    v88 = v87;
                    if (!(v165)(v87, 1, v24))
                    {
                      v91 = *(*(v167 + 400) + 84);
                      v92 = *(v88 + v91);
                      *(v88 + v91) = v23;
                    }

                    v18 = v161;
                    (v17)(v154, 0);

                    if (v84 < 100000001)
                    {
                      goto LABEL_73;
                    }

                    v93 = *(v167 + 424);
                    v94 = v93[6];
                    v95 = v93[7];
                    v96 = __OFADD__(v94, v95);
                    v97 = v94 + v95;
                    if (v96)
                    {
                      goto LABEL_88;
                    }

                    v18 = (v97 - v84);
                    if (__OFSUB__(v97, v84))
                    {
                      goto LABEL_89;
                    }

                    v0 = v167;
                    v98 = *(v167 + 400);
                    v24 = v93[2];
                    v23 = v93[3];
                    v99 = sub_81928();
                    v101 = v100;

                    v102 = v152;
                    v17 = sub_26510(v152, v99, v101);
                    v2 = v103;
                    if ((v165)(v103, 1, v98))
                    {

                      while (1)
                      {
                        (v17)(v102, 0);

                        v18 = v161;
LABEL_73:
                        v83 = v167;
                        sub_3CBD0(*(v167 + 424), type metadata accessor for Application);
LABEL_74:
                        v108 = *(v83 + 400);
                        v109 = sub_81928();
                        v23 = v110;
                        v2 = sub_26510(v18, v109, v110);
                        v66 = v111;
                        if (!(v165)(v111, 1, v108))
                        {
                          v113 = *(v83 + 336);
                          v112 = *(v83 + 344);
                          v165 = *(v83 + 328);
                          v167 = *(v83 + 400);
                          v114 = [*(v83 + 248) systemDataDetails];
                          sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
                          v115 = sub_81838();

                          v0 = sub_24E5C(v115);

                          *(v83 + 224) = v0;
                          swift_getKeyPath();
                          sub_80908();
                          sub_147EC(&qword_B8268, &qword_88FA0);
                          v24 = sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
                          sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
                          v116 = sub_819B8();
                          (*(v113 + 8))(v112, v165);
                          v18 = v161;

                          v117 = *(v167 + 84);
                          v118 = *&v66[v117];
                          *&v66[v117] = v116;
                        }

                        (v2)(v18, 0);
                        v17 = *(v83 + 248);

                        v119 = [v17 diskCapacity];
                        if ((v119 & 0x8000000000000000) != 0)
                        {
                          __break(1u);
                        }

                        else
                        {
                          v18 = v119;
                          if (([*(v83 + 248) diskUsed] & 0x8000000000000000) == 0)
                          {
                            v145 = *(v83 + 480);
                            v141 = *(v83 + 464);
                            v142 = *(v83 + 472);
                            v139 = *(v83 + 448);
                            v140 = *(v83 + 456);
                            v148 = *(v83 + 440);
                            v150 = *(v83 + 432);
                            v151 = *(v83 + 424);
                            v153 = *(v83 + 416);
                            v155 = *(v83 + 392);
                            v157 = *(v83 + 384);
                            v160 = *(v83 + 376);
                            v162 = *(v83 + 368);
                            v164 = *(v83 + 360);
                            v166 = *(v83 + 352);
                            v168 = *(v83 + 344);
                            v120 = *(v83 + 320);
                            v143 = *(v83 + 296);
                            v144 = *(v83 + 304);
                            v122 = *(v83 + 280);
                            v121 = *(v83 + 288);
                            v123 = *(v83 + 264);
                            v124 = *(v83 + 272);
                            v137 = *(v83 + 256);
                            v138 = *(v83 + 312);
                            v125 = sub_817C8();
                            v126 = *v125;
                            v127 = v125[1];

                            sub_80998();

                            sub_81E58();
                            (*(v124 + 16))(v122, v121, v123);
                            sub_817D8();
                            (*(v124 + 8))(v121, v123);
                            v141(v139, 1, 1, v140);
                            v128 = *(v83 + 200);
                            sub_3B948(v120, v138, &type metadata accessor for Volume);
                            v129 = v137;

                            v130 = sub_81A78();
                            v131 = (*(v143 + 80) + 48) & ~*(v143 + 80);
                            v132 = swift_allocObject();
                            v132[2] = v130;
                            v132[3] = &protocol witness table for MainActor;
                            v132[4] = v129;
                            v132[5] = v128;
                            sub_3C81C(v138, v132 + v131, &type metadata accessor for Volume);
                            sub_68AE4(0, 0, v139, &unk_88F78, v132);

                            sub_3CBD0(v120, &type metadata accessor for Volume);
                            v133 = *(v83 + 200);

                            v134 = *(v83 + 8);

                            return v134();
                          }
                        }

                        __break(1u);
LABEL_88:
                        __break(1u);
LABEL_89:
                        __break(1u);
LABEL_90:
                        v66 = sub_33E1C(0, *(v66 + 2) + 1, 1, v66);
                        *(v2 + v0) = v66;
LABEL_69:
                        v106 = *(v66 + 2);
                        v105 = *(v66 + 3);
                        if (v106 >= v105 >> 1)
                        {
                          v66 = sub_33E1C((v105 > 1), v106 + 1, 1, v66);
                          *(v2 + v0) = v66;
                        }

                        *(v66 + 2) = v106 + 1;
                        v107 = &v66[40 * v106];
                        *(v107 + 4) = 7565161;
                        *(v107 + 5) = 0xE300000000000000;
                        *(v107 + 6) = v18;
                        *(v107 + 7) = v24;
                        *(v107 + 8) = v23;
                        v102 = v152;
                      }
                    }

LABEL_68:
                    v0 = *(*(v0 + 400) + 84);
                    v66 = *(v2 + v0);
                    v104 = swift_isUniquelyReferenced_nonNull_native();
                    *(v2 + v0) = v66;
                    if (v104)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_90;
                  }

                  if (v1 >= *(v23 + 16))
                  {
                    goto LABEL_82;
                  }

                  v3 = *(v23 + v81);
                  v81 += 40;
                  ++v1;
                }

                while (v3 == 0x8000000000000000);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v80 = sub_33F3C(0, *(v80 + 2) + 1, 1, v80);
                }

                v0 = *(v80 + 2);
                v82 = *(v80 + 3);
                if (v0 >= v82 >> 1)
                {
                  v80 = sub_33F3C((v82 > 1), v0 + 1, 1, v80);
                }

                *(v80 + 2) = v0 + 1;
                *&v80[8 * v0 + 32] = v3;
              }
            }
          }

          else
          {
          }

          v83 = v167;
          v18 = v161;
          goto LABEL_74;
        }

        v12 = *(v13 + 8 * v14 + 64);
        ++v11;
        if (v12)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      sub_14FD4(*(v1 + 384), &qword_B7E50, &qword_8A3F0);
      v135 = swift_task_alloc();
      *(v1 + 624) = v135;
      *v135 = v1;
      v135[1] = sub_2C474;
      v136 = *(v1 + 376);

      return sub_1D58C(v136, v0, v3, v165, (v4 & 1) == 0, (v2 & 1) == 0);
    }
  }

  v89 = swift_task_alloc();
  *(v167 + 584) = v89;
  *v89 = v167;
  v89[1] = sub_2B0DC;
  v90 = *(v167 + 392);

  return sub_1BDA8(v90, v33, v165, (v4 & 1) == 0, (v2 & 1) == 0);
}

uint64_t sub_2C474()
{
  v1 = *(*v0 + 624);
  v3 = *v0;

  return _swift_task_switch(sub_2C570, 0, 0);
}

uint64_t sub_2C570()
{
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  if (!v3(v5, 1, v4))
  {
    v13 = *(v0 + 480);
    *(v0 + 632) = sub_81A78();
    v14 = sub_81A58();
    v16 = v15;
    v17 = sub_2D8E8;
    v18 = v14;
    v19 = v16;

    return _swift_task_switch(v17, v18, v19);
  }

  v6 = v0 + 16;
  v174 = (v0 + 48);
  v176 = v0 + 80;
  v172 = (v0 + 112);
  v7 = *(v0 + 368);
  v168 = (v0 + 144);
  sub_14F6C(v5, v7, &qword_B7E50, &qword_8A3F0);
  v8 = v3(v7, 1, v4);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 576);
  if (v8 == 1)
  {
    v12 = *(v0 + 360);
    v2 = &qword_B7E50;
    v1 = &qword_8A3F0;
    sub_14FD4(*(v0 + 368), &qword_B7E50, &qword_8A3F0);
    sub_355EC(v9, v10, v12);

    sub_14FD4(v12, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v20 = *(v0 + 432);
    sub_3C81C(*(v0 + 368), v20, type metadata accessor for Application);
    v21 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_37A0C(v20, v9, v10, isUniquelyReferenced_nonNull_native);

    *(v0 + 200) = v21;
  }

  sub_14FD4(*(v0 + 376), &qword_B7E50, &qword_8A3F0);
  v184 = v0;
  v170 = (v0 + 16);
  while (1)
  {
    v23 = *(v0 + 560);
    v24 = (*(v0 + 552) - 1) & *(v0 + 552);
    if (!v24)
    {
      goto LABEL_11;
    }

LABEL_10:
    v25 = *(v0 + 536);
LABEL_15:
    *(v0 + 560) = v23;
    *(v0 + 552) = v24;
    v178 = (v24 - 1) & v24;
    v27 = (v23 << 9) | (8 * __clz(__rbit64(v24)));
    v28 = *(*(v25 + 48) + v27);
    *(v0 + 568) = v28;
    v29 = *(*(v25 + 56) + v27);
    *(v0 + 576) = v29;
    *(v0 + 208) = v28;
    *(v0 + 216) = v28;
    v0 = v28;
    v31 = v28 + 56;
    v30 = *(v28 + 56);
    v32 = -1 << *(v28 + 32);
    v33 = -v32 < 64 ? ~(-1 << -v32) : -1;
    v34 = v33 & v30;
    v35 = (63 - v32) >> 6;
    swift_bridgeObjectRetain_n();
    v182 = v29;
    v36 = 0;
LABEL_20:
    if (v34)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v37 >= v35)
      {
        break;
      }

      v34 = *(v31 + 8 * v37);
      ++v36;
      if (v34)
      {
        v36 = v37;
LABEL_25:
        v38 = (*(v0 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v34)))));
        v39 = *v38;
        v10 = v38[1];
        v40 = qword_B7888;

        if (v40 != -1)
        {
          swift_once();
        }

        v34 &= v34 - 1;
        v29 = qword_BD078;
        if (*(qword_BD078 + 16))
        {
          v41 = sub_34B30(v39, v10);
          v2 = v42;

          if (v2)
          {
            v43 = *(v29 + 7) + 144 * v41;
            v10 = *(v43 + 120);
            v44 = *(v43 + 128);

            v2 = v0;
            sub_2FEF0(v10);
            v29 = (v184 + 216);
            sub_2FEF0(v44);
          }
        }

        else
        {
        }

        goto LABEL_20;
      }
    }

    v45 = v0;
    v0 = v184;
    v46 = *(v184 + 528);
    v10 = *(v184 + 504);

    LOBYTE(v9) = sub_2FFF4(v46, *(v184 + 208));

    LOBYTE(v1) = sub_2FFF4(v10, *(v184 + 216));

    if (*(v45 + 16) >= 2uLL)
    {
      break;
    }

    v6 = sub_2516C(v45);
    v2 = v47;

    *(v184 + 592) = v2;
    if (!v2)
    {

      v24 = v178;
      if (v178)
      {
        goto LABEL_10;
      }

LABEL_11:
      while (2)
      {
        v26 = v23 + 1;
        if (!__OFADD__(v23, 1))
        {
          v25 = *(v0 + 536);
          if (v26 < (((1 << *(v0 + 640)) + 63) >> 6))
          {
            v24 = *(v25 + 8 * v26 + 64);
            ++v23;
            if (!v24)
            {
              continue;
            }

            v23 = v26;
            goto LABEL_15;
          }

          v60 = *(v0 + 528);
          v61 = *(v0 + 504);
          v62 = *(v0 + 400);
          v63 = *(v0 + 408);

          v64 = sub_81928();
          v65 = v174;
          v67 = sub_26510(v174, v64, v66);
          v69 = v68;
          v70 = *(v63 + 48);
          if (!v70(v68, 1, v62))
          {
            v165 = *(v0 + 400);
            v71 = *(v184 + 344);
            v163 = *(v184 + 336);
            v72 = *(v184 + 328);
            v73 = [*(v184 + 248) systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v74 = sub_81838();

            v170 = v70;
            v75 = sub_24E5C(v74);

            *(v184 + 240) = v75;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
            v65 = v174;
            v76 = v72;
            v77 = sub_819B8();
            v0 = v184;
            (*(v163 + 8))(v71, v76);
            v70 = v170;

            v78 = *(v165 + 84);
            v79 = *(v69 + v78);
            *(v69 + v78) = v77;
          }

          (v67)(v65, 0);

          v23 = @"com.apple.fakeapp.System";
          v80 = sub_81928();
          v82 = *(v0 + 200);
          v9 = v176;
          if (!*(v82 + 16))
          {

            goto LABEL_77;
          }

          v83 = sub_34B30(v80, v81);
          v85 = v84;

          if ((v85 & 1) == 0)
          {
            goto LABEL_77;
          }

          v170 = v70;
          v1 = *(v0 + 416);
          v86 = *(v0 + 424);
          v88 = *(v0 + 336);
          v87 = *(v0 + 344);
          v174 = *(v0 + 328);
          v89 = *(v0 + 248);
          sub_3B948(*(v82 + 56) + *(*(v0 + 408) + 72) * v83, v1, type metadata accessor for Application);
          sub_3C81C(v1, v86, type metadata accessor for Application);
          v90 = [v89 systemDetails];
          sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
          v91 = sub_81838();

          v92 = sub_24E5C(v91);
          v182 = 0;

          *(v0 + 232) = v92;
          swift_getKeyPath();
          sub_80908();
          LOBYTE(v1) = sub_147EC(&qword_B8268, &qword_88FA0);
          sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
          sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
          v2 = sub_819B8();
          (*(v88 + 8))(v87, v174);

          v0 = 0;
          v93 = *(v2 + 16);
          v94 = _swiftEmptyArrayStorage;
          v6 = 48;
LABEL_49:
          v95 = 40 * v0 + 48;
          v9 = v176;
          while (v93 != v0)
          {
            if (v0 >= *(v2 + 16))
            {
              goto LABEL_85;
            }

            v1 = *(v2 + v95);
            v95 += 40;
            ++v0;
            if (v1 != 0x8000000000000000)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_33F3C(0, *(v94 + 2) + 1, 1, v94);
              }

              v97 = *(v94 + 2);
              v96 = *(v94 + 3);
              if (v97 >= v96 >> 1)
              {
                v94 = sub_33F3C((v96 > 1), v97 + 1, 1, v94);
              }

              *(v94 + 2) = v97 + 1;
              *&v94[8 * v97 + 32] = v1;
              goto LABEL_49;
            }
          }

          v0 = v184;
          v98 = *(v184 + 400);
          v99 = sub_81A38();

          v100 = sub_81928();
          v102 = v101;
          v29 = sub_26510(v172, v100, v101);
          v104 = v103;
          if (!v170(v103, 1, v98))
          {
            v108 = *(*(v184 + 400) + 84);
            v109 = *(v104 + v108);
            *(v104 + v108) = v2;
          }

          v29();

          v70 = v170;
          if (v99 < 100000001)
          {
            goto LABEL_76;
          }

          v110 = *(v184 + 424);
          v111 = v110[6];
          v112 = v110[7];
          v113 = __OFADD__(v111, v112);
          v114 = v111 + v112;
          if (v113)
          {
            goto LABEL_91;
          }

          v174 = (v114 - v99);
          if (__OFSUB__(v114, v99))
          {
            goto LABEL_92;
          }

          v115 = *(v184 + 400);
          v10 = v110[2];
          v2 = v110[3];
          v116 = sub_81928();
          v118 = v117;

          v29 = sub_26510(v168, v116, v118);
          v23 = v119;
          if (v170(v119, 1, v115))
          {

            while (1)
            {
              v29();

LABEL_76:
              sub_3CBD0(*(v0 + 424), type metadata accessor for Application);
LABEL_77:
              v124 = *(v0 + 400);
              v125 = sub_81928();
              v23 = v126;
              v2 = sub_26510(v9, v125, v126);
              v102 = v127;
              if (!v70(v127, 1, v124))
              {
                v180 = *(v0 + 400);
                v129 = *(v0 + 336);
                v128 = *(v0 + 344);
                v174 = *(v0 + 328);
                v130 = [*(v0 + 248) systemDataDetails];
                sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
                v131 = sub_81838();

                v132 = sub_24E5C(v131);

                *(v0 + 224) = v132;
                swift_getKeyPath();
                sub_80908();
                sub_147EC(&qword_B8268, &qword_88FA0);
                sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
                sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
                v0 = v184;
                v133 = sub_819B8();
                v134 = *(v129 + 8);
                v70 = (v129 + 8);
                v134(v128, v174);
                v9 = v176;

                v135 = *(v180 + 84);
                v136 = *&v102[v135];
                *&v102[v135] = v133;
              }

              (v2)(v9, 0);
              v29 = *(v0 + 248);

              if (([v29 diskCapacity] & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (([*(v0 + 248) diskUsed] & 0x8000000000000000) == 0)
              {
                v162 = *(v0 + 480);
                v158 = *(v0 + 464);
                v159 = *(v0 + 472);
                v156 = *(v0 + 448);
                v157 = *(v0 + 456);
                v164 = *(v0 + 440);
                v166 = *(v0 + 432);
                v167 = *(v0 + 424);
                v169 = *(v0 + 416);
                v171 = *(v0 + 392);
                v173 = *(v0 + 384);
                v175 = *(v0 + 376);
                v177 = *(v0 + 368);
                v181 = *(v0 + 360);
                v183 = *(v0 + 352);
                v185 = *(v0 + 344);
                v137 = *(v0 + 320);
                v160 = *(v0 + 296);
                v161 = *(v0 + 304);
                v139 = *(v0 + 280);
                v138 = *(v0 + 288);
                v140 = *(v0 + 264);
                v141 = *(v0 + 272);
                v154 = *(v0 + 256);
                v155 = *(v0 + 312);
                v142 = sub_817C8();
                v143 = *v142;
                v144 = v142[1];

                sub_80998();

                sub_81E58();
                (*(v141 + 16))(v139, v138, v140);
                sub_817D8();
                (*(v141 + 8))(v138, v140);
                v158(v156, 1, 1, v157);
                v145 = *(v0 + 200);
                sub_3B948(v137, v155, &type metadata accessor for Volume);
                v146 = v154;

                v147 = sub_81A78();
                v148 = (*(v160 + 80) + 48) & ~*(v160 + 80);
                v149 = swift_allocObject();
                v149[2] = v147;
                v149[3] = &protocol witness table for MainActor;
                v149[4] = v146;
                v149[5] = v145;
                sub_3C81C(v155, v149 + v148, &type metadata accessor for Volume);
                sub_68AE4(0, 0, v156, &unk_88F78, v149);

                sub_3CBD0(v137, &type metadata accessor for Volume);
                v150 = *(v0 + 200);

                v151 = *(v0 + 8);

                return v151();
              }

              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              v102 = sub_33E1C(0, *(v102 + 2) + 1, 1, v102);
              *(v23 + v9) = v102;
LABEL_72:
              v122 = *(v102 + 2);
              v121 = *(v102 + 3);
              if (v122 >= v121 >> 1)
              {
                v102 = sub_33E1C((v121 > 1), v122 + 1, 1, v102);
                *(v23 + v9) = v102;
              }

              v9 = v176;
              *(v102 + 2) = v122 + 1;
              v123 = &v102[40 * v122];
              *(v123 + 4) = 7565161;
              *(v123 + 5) = 0xE300000000000000;
              *(v123 + 6) = v174;
              *(v123 + 7) = v70;
              *(v123 + 8) = v2;
              v0 = v184;
              v70 = v170;
            }
          }

LABEL_71:
          v70 = v10;
          v9 = *(*(v0 + 400) + 84);
          v102 = *(v23 + v9);
          v120 = swift_isUniquelyReferenced_nonNull_native();
          *(v23 + v9) = v102;
          if (v120)
          {
            goto LABEL_72;
          }

          goto LABEL_93;
        }

        break;
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      sub_14FD4(*(v0 + 384), &qword_B7E50, &qword_8A3F0);
      v152 = swift_task_alloc();
      *(v0 + 624) = v152;
      *v152 = v0;
      v152[1] = sub_2C474;
      v153 = *(v0 + 376);

      return sub_1D58C(v153, v6, v2, v182, (v9 & 1) == 0, (v1 & 1) == 0);
    }

    *(v184 + 600) = v6;
    v48 = *(v184 + 200);
    if (*(v48 + 16) && (v49 = sub_34B30(v6, v2), (v50 & 1) != 0))
    {
      sub_3B948(*(v48 + 56) + *(*(v184 + 408) + 72) * v49, *(v184 + 384), type metadata accessor for Application);
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = *(v184 + 400);
    v53 = *(v184 + 408);
    v54 = *(v184 + 384);
    (*(v53 + 56))(v54, v51, 1, v52);
    v55 = *(v53 + 48);
    *(v184 + 608) = v55;
    *(v184 + 616) = (v53 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v55(v54, 1, v52))
    {
      goto LABEL_86;
    }

    v9 = *(v184 + 400);
    v56 = *(v184 + 384);
    v1 = *(v56 + 56);
    v179 = *(v56 + 48);
    sub_14FD4(v56, &qword_B7E50, &qword_8A3F0);
    v57 = sub_26510(v170, v6, v2);
    v10 = v58;
    v59 = v55(v58, 1, v9);
    LOBYTE(v9) = v182;
    if (!v59)
    {
      v17 = sub_7CFD8(v182);
      if (__OFADD__(v179, v17))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        return _swift_task_switch(v17, v18, v19);
      }

      if (__OFADD__(v1, v18))
      {
        goto LABEL_95;
      }

      *(v10 + 48) = v179 + v17;
      *(v10 + 56) = v1 + v18;
    }

    (v57)(v170, 0);
  }

  v105 = swift_task_alloc();
  *(v184 + 584) = v105;
  *v105 = v184;
  v105[1] = sub_2B0DC;
  v106 = *(v184 + 392);

  return sub_1BDA8(v106, v45, v182, (v9 & 1) == 0, (v1 & 1) == 0);
}

uint64_t sub_2D8E8()
{
  v1 = v0[79];
  v2 = v0[68];
  v3 = v0[32];

  swift_beginAccess();
  v4 = *(v3 + v2);
  if (*(v4 + 16))
  {
    v5 = sub_34B30(v0[75], v0[74]);
    v6 = v0[44];
    if (v7)
    {
      v8 = v5;
      v9 = *(v4 + 56);
      v10 = sub_80A38();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v6, v9 + *(v11 + 72) * v8, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_80A38();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }
  }

  else
  {
    v12 = v0[44];
    v13 = sub_80A38();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  swift_endAccess();

  return _swift_task_switch(sub_2DAC4, 0, 0);
}

unint64_t sub_2DAC4()
{
  v165 = (v0 + 16);
  v169 = (v0 + 48);
  v171 = v0 + 80;
  v167 = (v0 + 112);
  v163 = (v0 + 144);
  sub_3C9DC(*(v0 + 352), *(v0 + 376) + *(*(v0 + 400) + 72), &unk_B8230, qword_88A50);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v6 = *(v0 + 400);
  v7 = *(v0 + 368);
  sub_14F6C(*(v0 + 376), v7, &qword_B7E50, &qword_8A3F0);
  v8 = v5(v7, 1, v6);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 576);
  if (v8 == 1)
  {
    v12 = *(v0 + 360);
    v1 = &qword_B7E50;
    v2 = &qword_8A3F0;
    sub_14FD4(*(v0 + 368), &qword_B7E50, &qword_8A3F0);
    sub_355EC(v9, v10, v12);

    sub_14FD4(v12, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v13 = *(v0 + 432);
    sub_3C81C(*(v0 + 368), v13, type metadata accessor for Application);
    v14 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_37A0C(v13, v9, v10, isUniquelyReferenced_nonNull_native);

    *(v0 + 200) = v14;
  }

  sub_14FD4(*(v0 + 376), &qword_B7E50, &qword_8A3F0);
  v179 = v0;
  while (1)
  {
    v16 = *(v0 + 560);
    v17 = (*(v0 + 552) - 1) & *(v0 + 552);
    if (!v17)
    {
      goto LABEL_7;
    }

LABEL_6:
    v18 = *(v0 + 536);
LABEL_11:
    *(v0 + 560) = v16;
    *(v0 + 552) = v17;
    v173 = (v17 - 1) & v17;
    v20 = (v16 << 9) | (8 * __clz(__rbit64(v17)));
    v21 = *(*(v18 + 48) + v20);
    *(v0 + 568) = v21;
    v22 = *(*(v18 + 56) + v20);
    *(v0 + 576) = v22;
    *(v0 + 208) = v21;
    *(v0 + 216) = v21;
    v0 = v21;
    v24 = v21 + 56;
    v23 = *(v21 + 56);
    v25 = -1 << *(v21 + 32);
    v26 = -v25 < 64 ? ~(-1 << -v25) : -1;
    v27 = v26 & v23;
    v28 = (63 - v25) >> 6;
    swift_bridgeObjectRetain_n();
    v177 = v22;
    v29 = 0;
LABEL_16:
    if (v27)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_67;
      }

      if (v30 >= v28)
      {
        break;
      }

      v27 = *(v24 + 8 * v30);
      ++v29;
      if (v27)
      {
        v29 = v30;
LABEL_21:
        v31 = (*(v0 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
        v32 = *v31;
        v10 = v31[1];
        v33 = qword_B7888;

        if (v33 != -1)
        {
          swift_once();
        }

        v27 &= v27 - 1;
        v22 = qword_BD078;
        if (*(qword_BD078 + 16))
        {
          v34 = sub_34B30(v32, v10);
          v1 = v35;

          if (v1)
          {
            v36 = *(v22 + 7) + 144 * v34;
            v10 = *(v36 + 120);
            v37 = *(v36 + 128);

            v1 = v0;
            sub_2FEF0(v10);
            v22 = (v179 + 216);
            sub_2FEF0(v37);
          }
        }

        else
        {
        }

        goto LABEL_16;
      }
    }

    v38 = v0;
    v0 = v179;
    v39 = *(v179 + 528);
    v10 = *(v179 + 504);

    LOBYTE(v9) = sub_2FFF4(v39, *(v179 + 208));

    LOBYTE(v2) = sub_2FFF4(v10, *(v179 + 216));

    if (*(v38 + 16) >= 2uLL)
    {
      break;
    }

    v3 = sub_2516C(v38);
    v1 = v40;

    *(v179 + 592) = v1;
    if (!v1)
    {

      v17 = v173;
      if (v173)
      {
        goto LABEL_6;
      }

LABEL_7:
      while (2)
      {
        v19 = v16 + 1;
        if (!__OFADD__(v16, 1))
        {
          v18 = *(v0 + 536);
          if (v19 < (((1 << *(v0 + 640)) + 63) >> 6))
          {
            v17 = *(v18 + 8 * v19 + 64);
            ++v16;
            if (!v17)
            {
              continue;
            }

            v16 = v19;
            goto LABEL_11;
          }

          v56 = *(v0 + 528);
          v57 = *(v0 + 504);
          v58 = *(v0 + 400);
          v59 = *(v0 + 408);

          v60 = sub_81928();
          v61 = v169;
          v63 = sub_26510(v169, v60, v62);
          v65 = v64;
          v66 = *(v59 + 48);
          if (!v66(v64, 1, v58))
          {
            v160 = *(v0 + 400);
            v67 = *(v179 + 344);
            v158 = *(v179 + 336);
            v68 = *(v179 + 328);
            v69 = [*(v179 + 248) systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v70 = sub_81838();

            v165 = v66;
            v71 = sub_24E5C(v70);

            *(v179 + 240) = v71;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
            v61 = v169;
            v72 = v68;
            v73 = sub_819B8();
            v0 = v179;
            (*(v158 + 8))(v67, v72);
            v66 = v165;

            v74 = *(v160 + 84);
            v75 = *(v65 + v74);
            *(v65 + v74) = v73;
          }

          (v63)(v61, 0);

          v16 = @"com.apple.fakeapp.System";
          v76 = sub_81928();
          v78 = *(v0 + 200);
          v9 = v171;
          if (!*(v78 + 16))
          {

            goto LABEL_73;
          }

          v79 = sub_34B30(v76, v77);
          v81 = v80;

          if ((v81 & 1) == 0)
          {
            goto LABEL_73;
          }

          v165 = v66;
          v2 = *(v0 + 416);
          v82 = *(v0 + 424);
          v84 = *(v0 + 336);
          v83 = *(v0 + 344);
          v169 = *(v0 + 328);
          v85 = *(v0 + 248);
          sub_3B948(*(v78 + 56) + *(*(v0 + 408) + 72) * v79, v2, type metadata accessor for Application);
          sub_3C81C(v2, v82, type metadata accessor for Application);
          v86 = [v85 systemDetails];
          sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
          v87 = sub_81838();

          v88 = sub_24E5C(v87);
          v177 = 0;

          *(v0 + 232) = v88;
          swift_getKeyPath();
          sub_80908();
          LOBYTE(v2) = sub_147EC(&qword_B8268, &qword_88FA0);
          sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
          sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
          v1 = sub_819B8();
          (*(v84 + 8))(v83, v169);

          v0 = 0;
          v89 = *(v1 + 16);
          v90 = _swiftEmptyArrayStorage;
          v3 = 48;
LABEL_45:
          v91 = 40 * v0 + 48;
          v9 = v171;
          while (v89 != v0)
          {
            if (v0 >= *(v1 + 16))
            {
              goto LABEL_81;
            }

            v2 = *(v1 + v91);
            v91 += 40;
            ++v0;
            if (v2 != 0x8000000000000000)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = sub_33F3C(0, *(v90 + 2) + 1, 1, v90);
              }

              v93 = *(v90 + 2);
              v92 = *(v90 + 3);
              if (v93 >= v92 >> 1)
              {
                v90 = sub_33F3C((v92 > 1), v93 + 1, 1, v90);
              }

              *(v90 + 2) = v93 + 1;
              *&v90[8 * v93 + 32] = v2;
              goto LABEL_45;
            }
          }

          v0 = v179;
          v94 = *(v179 + 400);
          v95 = sub_81A38();

          v96 = sub_81928();
          v98 = v97;
          v22 = sub_26510(v167, v96, v97);
          v100 = v99;
          if (!v165(v99, 1, v94))
          {
            v103 = *(*(v179 + 400) + 84);
            v104 = *(v100 + v103);
            *(v100 + v103) = v1;
          }

          v22();

          v66 = v165;
          if (v95 < 100000001)
          {
            goto LABEL_72;
          }

          v105 = *(v179 + 424);
          v106 = v105[6];
          v107 = v105[7];
          v108 = __OFADD__(v106, v107);
          v109 = v106 + v107;
          if (v108)
          {
            goto LABEL_87;
          }

          v169 = (v109 - v95);
          if (__OFSUB__(v109, v95))
          {
            goto LABEL_88;
          }

          v110 = *(v179 + 400);
          v10 = v105[2];
          v1 = v105[3];
          v111 = sub_81928();
          v113 = v112;

          v22 = sub_26510(v163, v111, v113);
          v16 = v114;
          if (v165(v114, 1, v110))
          {

            while (1)
            {
              v22();

LABEL_72:
              sub_3CBD0(*(v0 + 424), type metadata accessor for Application);
LABEL_73:
              v119 = *(v0 + 400);
              v120 = sub_81928();
              v16 = v121;
              v1 = sub_26510(v9, v120, v121);
              v98 = v122;
              if (!v66(v122, 1, v119))
              {
                v175 = *(v0 + 400);
                v124 = *(v0 + 336);
                v123 = *(v0 + 344);
                v169 = *(v0 + 328);
                v125 = [*(v0 + 248) systemDataDetails];
                sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
                v126 = sub_81838();

                v127 = sub_24E5C(v126);

                *(v0 + 224) = v127;
                swift_getKeyPath();
                sub_80908();
                sub_147EC(&qword_B8268, &qword_88FA0);
                sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0);
                sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48);
                v0 = v179;
                v128 = sub_819B8();
                v129 = *(v124 + 8);
                v66 = (v124 + 8);
                v129(v123, v169);
                v9 = v171;

                v130 = *(v175 + 84);
                v131 = *&v98[v130];
                *&v98[v130] = v128;
              }

              (v1)(v9, 0);
              v22 = *(v0 + 248);

              if (([v22 diskCapacity] & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (([*(v0 + 248) diskUsed] & 0x8000000000000000) == 0)
              {
                v157 = *(v0 + 480);
                v153 = *(v0 + 464);
                v154 = *(v0 + 472);
                v151 = *(v0 + 448);
                v152 = *(v0 + 456);
                v159 = *(v0 + 440);
                v161 = *(v0 + 432);
                v162 = *(v0 + 424);
                v164 = *(v0 + 416);
                v166 = *(v0 + 392);
                v168 = *(v0 + 384);
                v170 = *(v0 + 376);
                v172 = *(v0 + 368);
                v176 = *(v0 + 360);
                v178 = *(v0 + 352);
                v180 = *(v0 + 344);
                v132 = *(v0 + 320);
                v155 = *(v0 + 296);
                v156 = *(v0 + 304);
                v134 = *(v0 + 280);
                v133 = *(v0 + 288);
                v135 = *(v0 + 264);
                v136 = *(v0 + 272);
                v149 = *(v0 + 256);
                v150 = *(v0 + 312);
                v137 = sub_817C8();
                v138 = *v137;
                v139 = v137[1];

                sub_80998();

                sub_81E58();
                (*(v136 + 16))(v134, v133, v135);
                sub_817D8();
                (*(v136 + 8))(v133, v135);
                v153(v151, 1, 1, v152);
                v140 = *(v0 + 200);
                sub_3B948(v132, v150, &type metadata accessor for Volume);
                v141 = v149;

                v142 = sub_81A78();
                v143 = (*(v155 + 80) + 48) & ~*(v155 + 80);
                v144 = swift_allocObject();
                v144[2] = v142;
                v144[3] = &protocol witness table for MainActor;
                v144[4] = v141;
                v144[5] = v140;
                sub_3C81C(v150, v144 + v143, &type metadata accessor for Volume);
                sub_68AE4(0, 0, v151, &unk_88F78, v144);

                sub_3CBD0(v132, &type metadata accessor for Volume);
                v145 = *(v0 + 200);

                v146 = *(v0 + 8);

                return v146();
              }

              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              v98 = sub_33E1C(0, *(v98 + 2) + 1, 1, v98);
              *(v16 + v9) = v98;
LABEL_68:
              v117 = *(v98 + 2);
              v116 = *(v98 + 3);
              if (v117 >= v116 >> 1)
              {
                v98 = sub_33E1C((v116 > 1), v117 + 1, 1, v98);
                *(v16 + v9) = v98;
              }

              v9 = v171;
              *(v98 + 2) = v117 + 1;
              v118 = &v98[40 * v117];
              *(v118 + 4) = 7565161;
              *(v118 + 5) = 0xE300000000000000;
              *(v118 + 6) = v169;
              *(v118 + 7) = v66;
              *(v118 + 8) = v1;
              v0 = v179;
              v66 = v165;
            }
          }

LABEL_67:
          v66 = v10;
          v9 = *(*(v0 + 400) + 84);
          v98 = *(v16 + v9);
          v115 = swift_isUniquelyReferenced_nonNull_native();
          *(v16 + v9) = v98;
          if (v115)
          {
            goto LABEL_68;
          }

          goto LABEL_89;
        }

        break;
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      sub_14FD4(*(v0 + 384), &qword_B7E50, &qword_8A3F0);
      v147 = swift_task_alloc();
      *(v0 + 624) = v147;
      *v147 = v0;
      v147[1] = sub_2C474;
      v148 = *(v0 + 376);

      return sub_1D58C(v148, v3, v1, v177, (v9 & 1) == 0, (v2 & 1) == 0);
    }

    *(v179 + 600) = v3;
    v41 = *(v179 + 200);
    if (*(v41 + 16) && (v42 = sub_34B30(v3, v1), (v43 & 1) != 0))
    {
      sub_3B948(*(v41 + 56) + *(*(v179 + 408) + 72) * v42, *(v179 + 384), type metadata accessor for Application);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = *(v179 + 400);
    v46 = *(v179 + 408);
    v47 = *(v179 + 384);
    (*(v46 + 56))(v47, v44, 1, v45);
    v48 = *(v46 + 48);
    *(v179 + 608) = v48;
    *(v179 + 616) = (v46 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v48(v47, 1, v45))
    {
      goto LABEL_82;
    }

    v9 = *(v179 + 400);
    v49 = *(v179 + 384);
    v2 = *(v49 + 56);
    v174 = *(v49 + 48);
    sub_14FD4(v49, &qword_B7E50, &qword_8A3F0);
    v50 = v165;
    v51 = sub_26510(v165, v3, v1);
    v10 = v52;
    v53 = v48(v52, 1, v9);
    LOBYTE(v9) = v177;
    if (!v53)
    {
      result = sub_7CFD8(v177);
      if (__OFADD__(v174, result))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        return result;
      }

      if (__OFADD__(v2, v55))
      {
        goto LABEL_91;
      }

      *(v10 + 48) = v174 + result;
      *(v10 + 56) = v2 + v55;
      v50 = v165;
    }

    (v51)(v50, 0);
  }

  v101 = swift_task_alloc();
  *(v179 + 584) = v101;
  *v101 = v179;
  v101[1] = sub_2B0DC;
  v102 = *(v179 + 392);

  return sub_1BDA8(v102, v38, v177, (v9 & 1) == 0, (v2 & 1) == 0);
}

uint64_t sub_2EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_81A88();
  *(v4 + 64) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_2EE70, v6, v5);
}

uint64_t sub_2EE70()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer;
  [*(v2 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer) stopObserving];
  v0[5] = &type metadata for StorageManagementFeature;
  v0[6] = sub_3C0A0();
  v4 = sub_80AB8();
  sub_20FD0(v0 + 2);
  v5 = SAAppSizer_ptr;
  if ((v4 & 1) == 0)
  {
    v5 = &off_A9208;
  }

  v6 = [objc_allocWithZone(*v5) init];
  v7 = *(v2 + v3);
  *(v2 + v3) = v6;

  sub_28F58();
  v8 = v0[1];

  return v8();
}

uint64_t sub_2EF54(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = a3;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_2EFD0()
{
  v1 = [*&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesStreams] publisher];
  v14 = sub_2F234;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_2F28C;
  v13 = &unk_AB798;
  v2 = _Block_copy(&v10);
  v3 = [v1 filterWithIsIncluded:v2];
  _Block_release(v2);

  v14 = nullsub_1;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_3CD30;
  v13 = &unk_AB7C0;
  v4 = _Block_copy(&v10);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v14 = sub_3BEDC;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_3CD30;
  v13 = &unk_AB810;
  v6 = _Block_copy(&v10);
  v7 = v0;

  v8 = [v3 sinkWithCompletion:v4 receiveInput:v6];
  _Block_release(v6);
  _Block_release(v4);

  return sub_2F5DC();
}

id sub_2F234(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 starting];

  return v3;
}

uint64_t sub_2F28C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_2F2E4(void *a1)
{
  v2 = sub_147EC(&unk_B8230, qword_88A50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_80A38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = [a1 eventBody];
  if (v14)
  {
    v23 = v14;
    v15 = [v14 absoluteTimestamp];
    if (v15)
    {
      v16 = v15;
      sub_80A08();

      (*(v7 + 32))(v13, v11, v6);
      v17 = [v23 bundleID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_81928();
        v21 = v20;

        (*(v7 + 16))(v5, v13, v6);
        (*(v7 + 56))(v5, 0, 1, v6);
        swift_beginAccess();
        sub_252EC(v5, v19, v21);
        swift_endAccess();
      }

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      v22 = v23;
    }
  }
}

void sub_2F574(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2F5DC()
{
  v1 = sub_147EC(&unk_B8230, qword_88A50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v67 - v3;
  v5 = type metadata accessor for Application();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  v7 = __chkstk_darwin(v5);
  v80 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v67 - v9);
  v11 = sub_147EC(&qword_B8308, &qword_89228);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v79 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v73 = &v67 - v16;
  __chkstk_darwin(v15);
  v81 = (&v67 - v17);
  v77 = v0;
  v18 = sub_254C4();
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v72 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesByApplications;
  v23 = (v20 + 63) >> 6;
  v76 = v18;

  v24 = 0;
  v25 = &_swiftEmptyDictionarySingleton;
  v68 = v23;
  v69 = v19;
  v70 = v11;
  v71 = v4;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = *(v76 + 56);
    v29 = (*(v76 + 48) + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v78 = *(v74 + 72);
    v32 = v81;
    sub_3B948(v28 + v78 * v27, v81 + *(v11 + 48), type metadata accessor for Application);
    *v32 = v31;
    v32[1] = v30;
    v33 = v32;
    v34 = v73;
    sub_14F6C(v33, v73, &qword_B8308, &qword_89228);
    v35 = *(v34 + 8);

    sub_3C81C(v34 + *(v11 + 48), v10, type metadata accessor for Application);
    v37 = *v10;
    v36 = v10[1];
    v38 = v77;
    v39 = v72;
    swift_beginAccess();
    v40 = *(v38 + v39);
    if (*(v40 + 16) && (v41 = sub_34B30(v37, v36), (v42 & 1) != 0))
    {
      v43 = v41;
      v44 = *(v40 + 56);
      v45 = sub_80A38();
      v46 = *(v45 - 8);
      (*(v46 + 16))(v4, v44 + *(v46 + 72) * v43, v45);
      (*(v46 + 56))(v4, 0, 1, v45);
    }

    else
    {
      v47 = sub_80A38();
      (*(*(v47 - 8) + 56))(v4, 1, 1, v47);
    }

    swift_endAccess();
    sub_3C9DC(v4, v10 + *(v75 + 72), &unk_B8230, qword_88A50);
    v48 = v79;
    sub_14F6C(v81, v79, &qword_B8308, &qword_89228);
    v49 = v10;
    v50 = *v48;
    v51 = v48[1];
    v52 = v49;
    sub_3B948(v49, v80, type metadata accessor for Application);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v25;
    v55 = sub_34B30(v50, v51);
    v56 = v25[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_28;
    }

    v59 = v54;
    if (v25[3] >= v58)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v54)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_3834C();
        if (v59)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_358F0(v58, isUniquelyReferenced_nonNull_native);
      v60 = sub_34B30(v50, v51);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_30;
      }

      v55 = v60;
      if (v59)
      {
LABEL_4:

        v25 = v82;
        sub_3BAA0(v80, v82[7] + v55 * v78);
        sub_14FD4(v81, &qword_B8308, &qword_89228);
        goto LABEL_5;
      }
    }

    v25 = v82;
    v82[(v55 >> 6) + 8] |= 1 << v55;
    v62 = (v25[6] + 16 * v55);
    *v62 = v50;
    v62[1] = v51;
    sub_3C81C(v80, v25[7] + v55 * v78, type metadata accessor for Application);
    sub_14FD4(v81, &qword_B8308, &qword_89228);
    v63 = v25[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_29;
    }

    v25[2] = v65;
LABEL_5:
    v22 &= v22 - 1;
    v11 = v70;
    sub_3CBD0(v79 + *(v70 + 48), type metadata accessor for Application);
    v10 = v52;
    sub_3CBD0(v52, type metadata accessor for Application);
    v4 = v71;
    v23 = v68;
    v19 = v69;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      return sub_2588C(v25);
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_81E38();
  __break(1u);
  return result;
}

uint64_t sub_2FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(sub_147EC(&qword_B8298, &qword_88FC0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  sub_81A88();
  v4[11] = sub_81A78();
  v7 = sub_81A58();

  return _swift_task_switch(sub_2FD38, v7, v6);
}

uint64_t sub_2FD38()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];

  v4 = v3 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  swift_beginAccess();
  v5 = sub_81818();
  sub_14F6C(v4 + *(v5 + 24), v2, &qword_B8298, &qword_88FC0);
  v6 = sub_816D8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v2, 1, v6);
  sub_14FD4(v2, &qword_B8298, &qword_88FC0);
  if (v8 == 1)
  {
    v9 = v0[9];
    sub_816C8();
    (*(v7 + 56))(v9, 0, 1, v6);
    swift_beginAccess();
    sub_3C9DC(v9, v4 + *(v5 + 24), &qword_B8298, &qword_88FC0);
    swift_endAccess();
  }

  v11 = v0[9];
  v10 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2FEF0(uint64_t result)
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
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1F3E4(&v13, v11, v12);

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

uint64_t sub_2FFF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_81E78();

      sub_81968();
      v20 = sub_81EB8();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_81E18() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_301DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = *(*(sub_817E8() - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v8 = *(*(sub_147EC(&qword_B8298, &qword_88FC0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = sub_81A88();
  v6[17] = sub_81A78();
  v10 = sub_81A58();
  v6[18] = v10;
  v6[19] = v9;

  return _swift_task_switch(sub_302F8, v10, v9);
}

uint64_t sub_302F8()
{
  v1 = v0[15];
  v2 = v0[9] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  swift_beginAccess();
  v3 = sub_81818();
  sub_14F6C(v2 + *(v3 + 28), v1, &qword_B8298, &qword_88FC0);
  v4 = sub_816D8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  sub_14FD4(v1, &qword_B8298, &qword_88FC0);
  if (v6 == 1)
  {
    v7 = v0[14];
    sub_816C8();
    (*(v5 + 56))(v7, 0, 1, v4);
    swift_beginAccess();
    sub_3C9DC(v7, v2 + *(v3 + 28), &qword_B8298, &qword_88FC0);
    swift_endAccess();
  }

  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[9];

  sub_2588C(v14);
  sub_3B948(v12, v9, &type metadata accessor for Volume);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3B948(v9, v10, &type metadata accessor for Volume);
  v15 = v13;
  sub_80C78();
  sub_3CBD0(v9, &type metadata accessor for Volume);
  sub_3096C();
  v0[20] = sub_81A78();
  v17 = sub_81A58();
  v0[21] = v17;
  v0[22] = v16;

  return _swift_task_switch(sub_30574, v17, v16);
}

uint64_t sub_30574()
{
  v1 = sub_817A8();
  v2 = *v1;
  *(v0 + 184) = *v1;
  v3 = *(*v2 + 88);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_306A0;

  return v7();
}

uint64_t sub_306A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 200) = a1;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);

  return _swift_task_switch(sub_307EC, v6, v5);
}

uint64_t sub_307EC()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[9];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v1;
  v4 = v3;
  sub_80C78();
  v5 = v0[18];
  v6 = v0[19];

  return _swift_task_switch(sub_308A8, v5, v6);
}

uint64_t sub_308A8()
{
  v1 = v0[17];
  v2 = v0[9];

  v3 = *(v2 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback + 8);

    v3(v5);
    sub_3B938(v3);
  }

  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_3096C()
{
  v0 = sub_147EC(&qword_B82A0, &qword_89058);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v41 - v2;
  v50 = type metadata accessor for SyncedContent();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v50);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v41 - v8;
  v9 = type metadata accessor for Application();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v45 = &v41 - v14;
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = [objc_opt_self() defaultMediaLibrary];
  v18 = 0;
  v54 = comAppleBooks;
  v51 = comAppleTV;
  v55 = comAppleMusic;
  v52 = _swiftEmptyArrayStorage;
  v53 = v17;
  v42 = v4;
  v43 = comApplePodcasts;
  v19 = &off_AACF0;
  v44 = (v4 + 48);
  while (1)
  {
    v20 = v19[v18 + 4];
    result = [v17 usageForSyncedMediaOfType:v20];
    if (result < 0)
    {
      break;
    }

    v22 = result;
    if (result)
    {
      if (v20 <= 3)
      {
        if (v20 != 1 && v20 != 2)
        {
          goto LABEL_3;
        }
      }

      else if (v20 != 4 && v20 != 512 && v20 != 2048)
      {
        goto LABEL_3;
      }

      v23 = sub_81928();
      v25 = v24;
      v26 = sub_254C4();
      if (*(v26 + 16))
      {
        v27 = v19;
        v28 = v16;
        v29 = v3;
        v30 = sub_34B30(v23, v25);
        v32 = v31;

        if (v32)
        {
          v33 = *(v26 + 56) + *(v47 + 72) * v30;
          v34 = v45;
          sub_3B948(v33, v45, type metadata accessor for Application);

          sub_3C81C(v34, v28, type metadata accessor for Application);
          v35 = v46;
          sub_3B948(v28, v46, type metadata accessor for Application);
          v3 = v29;
          sub_3CFA8(v20, v22, v35, v29);
          if ((*v44)(v29, 1, v50) != 1)
          {
            v36 = v48;
            sub_3C81C(v29, v48, type metadata accessor for SyncedContent);
            sub_3B948(v36, v49, type metadata accessor for SyncedContent);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_34040(0, v52[2] + 1, 1, v52, &qword_B82A8, &qword_89060, type metadata accessor for SyncedContent);
            }

            v16 = v28;
            v38 = v52[2];
            v37 = v52[3];
            v19 = v27;
            if (v38 >= v37 >> 1)
            {
              v52 = sub_34040(v37 > 1, v38 + 1, 1, v52, &qword_B82A8, &qword_89060, type metadata accessor for SyncedContent);
            }

            v17 = v53;
            sub_3CBD0(v48, type metadata accessor for SyncedContent);
            sub_3CBD0(v16, type metadata accessor for Application);
            v39 = v52;
            v52[2] = v38 + 1;
            sub_3C81C(v49, v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38, type metadata accessor for SyncedContent);
            goto LABEL_3;
          }

          sub_3CBD0(v28, type metadata accessor for Application);
          sub_14FD4(v29, &qword_B82A0, &qword_89058);
          v16 = v28;
        }

        else
        {

          v3 = v29;
          v16 = v28;
        }

        v19 = v27;
        v17 = v53;
      }

      else
      {
      }
    }

LABEL_3:
    if (++v18 == 5)
    {

      v40 = *(v56 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_syncedMediaSizes);
      *(v56 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_syncedMediaSizes) = v52;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_30F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[199] = a5;
  v5[198] = a4;
  v6 = *(*(sub_147EC(&qword_B8298, &qword_88FC0) - 8) + 64) + 15;
  v5[200] = swift_task_alloc();
  v5[201] = swift_task_alloc();
  sub_81A88();
  v5[202] = sub_81A78();
  v8 = sub_81A58();

  return _swift_task_switch(sub_31030, v8, v7);
}

uint64_t sub_31030()
{
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1584);

  v4 = v3 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  swift_beginAccess();
  v5 = sub_81818();
  sub_14F6C(v4 + *(v5 + 32), v2, &qword_B8298, &qword_88FC0);
  v6 = sub_816D8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v2, 1, v6);
  sub_14FD4(v2, &qword_B8298, &qword_88FC0);
  if (v8 == 1)
  {
    v9 = *(v0 + 1600);
    sub_816C8();
    (*(v7 + 56))(v9, 0, 1, v6);
    swift_beginAccess();
    sub_3C9DC(v9, v4 + *(v5 + 32), &qword_B8298, &qword_88FC0);
    swift_endAccess();
  }

  v10 = *(v0 + 1584);
  v11 = *(v10 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs);
  v12 = *(v10 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs);
  v13 = *(v0 + 1592);
  *(v10 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce) = 1;
  v14 = *(v13 + 16);

  v92 = v12;

  v16 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v17 = 0;
    v90 = *(v0 + 1592) + 32;
    v18 = v11 + 56;
    while (1)
    {
      if (v17 >= v14)
      {
        goto LABEL_50;
      }

      v19 = v90 + 216 * v17;
      v20 = *(v19 + 16);
      *(v0 + 16) = *v19;
      *(v0 + 32) = v20;
      v21 = *(v19 + 32);
      v22 = *(v19 + 48);
      v23 = *(v19 + 80);
      *(v0 + 80) = *(v19 + 64);
      *(v0 + 96) = v23;
      *(v0 + 48) = v21;
      *(v0 + 64) = v22;
      v24 = *(v19 + 96);
      v25 = *(v19 + 112);
      v26 = *(v19 + 144);
      *(v0 + 144) = *(v19 + 128);
      *(v0 + 160) = v26;
      *(v0 + 112) = v24;
      *(v0 + 128) = v25;
      v27 = *(v19 + 160);
      v28 = *(v19 + 176);
      v29 = *(v19 + 192);
      *(v0 + 224) = *(v19 + 208);
      *(v0 + 192) = v28;
      *(v0 + 208) = v29;
      *(v0 + 176) = v27;
      if (__OFADD__(v17++, 1))
      {
        goto LABEL_51;
      }

      if (!*(v11 + 16))
      {
        break;
      }

      v31 = v16;
      v33 = *(v0 + 32);
      v32 = *(v0 + 40);
      v34 = *(v11 + 40);
      sub_81E78();
      sub_3C168(v0 + 16, v0 + 232);

      sub_81968();
      v35 = sub_81EB8();
      v36 = -1 << *(v11 + 32);
      v37 = v35 & ~v36;
      if ((*(v18 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        while (1)
        {
          v39 = (*(v11 + 48) + 16 * v37);
          v40 = *v39 == v33 && v39[1] == v32;
          if (v40 || (sub_81E18() & 1) != 0)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v18 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        result = sub_3C1C4(v0 + 16);
        v16 = v31;
        if (v17 == v14)
        {
          goto LABEL_25;
        }
      }

      else
      {
LABEL_17:

        v16 = v31;
LABEL_18:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_34F64(0, v16[2] + 1, 1);
        }

        v42 = v16[2];
        v41 = v16[3];
        if (v42 >= v41 >> 1)
        {
          result = sub_34F64((v41 > 1), v42 + 1, 1);
        }

        v16[2] = v42 + 1;
        v43 = &v16[27 * v42];
        v44 = *(v0 + 32);
        *(v43 + 2) = *(v0 + 16);
        *(v43 + 3) = v44;
        v45 = *(v0 + 48);
        v46 = *(v0 + 64);
        v47 = *(v0 + 96);
        *(v43 + 6) = *(v0 + 80);
        *(v43 + 7) = v47;
        *(v43 + 4) = v45;
        *(v43 + 5) = v46;
        v48 = *(v0 + 112);
        v49 = *(v0 + 128);
        v50 = *(v0 + 160);
        *(v43 + 10) = *(v0 + 144);
        *(v43 + 11) = v50;
        *(v43 + 8) = v48;
        *(v43 + 9) = v49;
        v51 = *(v0 + 176);
        v52 = *(v0 + 192);
        v53 = *(v0 + 208);
        *(v43 + 240) = *(v0 + 224);
        *(v43 + 13) = v52;
        *(v43 + 14) = v53;
        *(v43 + 12) = v51;
        if (v17 == v14)
        {
          goto LABEL_25;
        }
      }
    }

    sub_3C168(v0 + 16, v0 + 448);
    goto LABEL_18;
  }

LABEL_25:

  v54 = v16[2];
  if (!v54)
  {
    goto LABEL_46;
  }

  v88 = v16;
  sub_34F64(0, v54, 0);
  result = v92;
  if (v16[2])
  {
    v55 = 0;
    v89 = v16 + 4;
    v91 = v54;
    v56 = v92 + 56;
    v57 = 1;
    while (1)
    {
      v58 = &v89[27 * v55];
      v55 = v57;
      v59 = *(v58 + 1);
      *(v0 + 664) = *v58;
      *(v0 + 680) = v59;
      v60 = *(v58 + 2);
      v61 = *(v58 + 3);
      v62 = *(v58 + 5);
      *(v0 + 728) = *(v58 + 4);
      *(v0 + 744) = v62;
      *(v0 + 696) = v60;
      *(v0 + 712) = v61;
      v63 = *(v58 + 6);
      v64 = *(v58 + 7);
      v65 = *(v58 + 9);
      *(v0 + 792) = *(v58 + 8);
      *(v0 + 808) = v65;
      *(v0 + 760) = v63;
      *(v0 + 776) = v64;
      v66 = *(v58 + 10);
      v67 = *(v58 + 11);
      v68 = *(v58 + 12);
      *(v0 + 872) = *(v58 + 208);
      *(v0 + 840) = v67;
      *(v0 + 856) = v68;
      *(v0 + 824) = v66;
      v93 = *v58;
      v96 = *(v58 + 3);
      v97 = *(v58 + 4);
      v94 = *(v58 + 1);
      v95 = *(v58 + 2);
      v101 = *(v58 + 8);
      v99 = *(v58 + 6);
      v100 = *(v58 + 7);
      v98 = *(v58 + 5);
      v104 = *(v58 + 11);
      v105 = *(v58 + 12);
      v102 = *(v58 + 9);
      v103 = *(v58 + 10);
      if (*(result + 16))
      {
        v69 = *(v0 + 680);
        v70 = *(v0 + 688);
        v71 = result;
        v72 = *(result + 40);
        sub_81E78();
        sub_3C168(v0 + 664, v0 + 880);
        sub_3C168(v0 + 664, v0 + 1096);
        sub_81968();
        v73 = sub_81EB8();
        v74 = -1 << *(v71 + 32);
        v75 = v73 & ~v74;
        if ((*(v56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
        {
          v76 = ~v74;
          while (1)
          {
            v77 = (*(v92 + 48) + 16 * v75);
            v78 = *v77 == v69 && v77[1] == v70;
            if (v78 || (sub_81E18() & 1) != 0)
            {
              break;
            }

            v75 = (v75 + 1) & v76;
            if (((*(v56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          sub_3C1C4(v0 + 664);
          v79 = 1;
        }

        else
        {
LABEL_37:
          sub_3C1C4(v0 + 664);
          v79 = 0;
        }

        v16 = v88;
      }

      else
      {
        sub_3C168(v0 + 664, v0 + 1312);
        v79 = 0;
      }

      v81 = _swiftEmptyArrayStorage[2];
      v80 = _swiftEmptyArrayStorage[3];
      result = v92;
      if (v81 >= v80 >> 1)
      {
        sub_34F64((v80 > 1), v81 + 1, 1);
        v16 = v88;
        result = v92;
      }

      _swiftEmptyArrayStorage[2] = v81 + 1;
      v82 = &_swiftEmptyArrayStorage[27 * v81];
      *(v82 + 2) = v93;
      *(v82 + 5) = v96;
      *(v82 + 6) = v97;
      *(v82 + 3) = v94;
      *(v82 + 4) = v95;
      *(v82 + 9) = v100;
      *(v82 + 10) = v101;
      *(v82 + 7) = v98;
      *(v82 + 8) = v99;
      *(v82 + 13) = v104;
      *(v82 + 14) = v105;
      *(v82 + 11) = v102;
      *(v82 + 12) = v103;
      *(v82 + 240) = v79;
      if (v55 == v91)
      {
        break;
      }

      v57 = v55 + 1;
      if (v55 >= v16[2])
      {
        goto LABEL_49;
      }
    }

LABEL_46:

    v83 = *(v0 + 1608);
    v84 = *(v0 + 1600);
    v85 = *(v0 + 1584);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1576) = _swiftEmptyArrayStorage;
    v86 = v85;
    sub_80C78();

    v87 = *(v0 + 8);

    return v87();
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_317AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_31844, v6, v5);
}

uint64_t sub_31844()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription;
  v3 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription);
  v4 = v1;
  if (v3)
  {
    [v3 invalidate];
    v4 = v0[2];
  }

  v5 = objc_opt_self();
  v6 = [v5 hiddenAppBundleIdentifiers];
  v7 = sub_81AD8();

  v8 = *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs);
  *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs) = v7;

  v9 = [v5 lockedAppBundleIdentifiers];
  v10 = sub_81AD8();

  v11 = *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs);
  *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs) = v10;

  v12 = [objc_msgSend(objc_opt_self() "subjectMonitorRegistry")];
  swift_unknownObjectRelease();
  v13 = *(v1 + v2);
  *(v1 + v2) = v12;
  swift_unknownObjectRelease();
  v14 = *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lastSizerResults);
  v0[6] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = swift_task_alloc();
    v0[7] = v16;
    *v16 = v0;
    v16[1] = sub_31A88;
    v17 = v0[2];

    return sub_29848(v15);
  }

  else
  {
    v19 = v0[3];

    *(v0[2] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries) = 0;
    sub_28F58();
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_31A88()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_31BA8, v4, v3);
}

uint64_t sub_31BA8()
{
  v1 = v0[6];
  v2 = v0[3];

  *(v0[2] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries) = 0;
  sub_28F58();
  v3 = v0[1];

  return v3();
}

uint64_t sub_31C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_81A88();
  *(v4 + 24) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_31CDC, v6, v5);
}

uint64_t sub_31CDC()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription;
  v4 = *(v2 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v2 + v3);
  }

  v6 = v0[2];
  *(v2 + v3) = 0;
  swift_unknownObjectRelease();
  [*(v6 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer) stopObserving];
  v7 = v0[1];

  return v7();
}

uint64_t sub_31DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_81A88();
  *(v4 + 40) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_31E40, v6, v5);
}

uint64_t sub_31E40()
{
  v2 = v0[4];
  v1 = v0[5];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v3 = v2;
  sub_80C78();
  v4 = v0[1];

  return v4();
}

uint64_t sub_31F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_81A88();
  *(v4 + 40) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_3CD28, v6, v5);
}

void sub_31FC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_81AB8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_81A88();
  v11 = a1;
  v12 = sub_81A78();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_68AE4(0, 0, v9, a4, v13);
}

uint64_t sub_320F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_81A88();
  v6[7] = sub_81A78();
  v8 = sub_81A58();

  return _swift_task_switch(sub_32190, v8, v7);
}

uint64_t sub_32190()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v3;
  v0[3] = v2;
  v5 = v4;

  sub_80C78();
  v6 = v0[1];

  return v6();
}

uint64_t sub_323A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_81A88();
  v5[4] = sub_81A78();
  v7 = sub_81A58();

  return _swift_task_switch(sub_3243C, v7, v6);
}

uint64_t sub_3243C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = type metadata accessor for DeepLinkParameters();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v8 = sub_6D12C(v7);
  sub_324E4(v8);

  v9 = v0[1];

  return v9();
}

void sub_324E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 && v2[2])
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = swift_allocObject();
    *(v6 + 2) = v1;
    *(v6 + 3) = v4;
    *(v6 + 4) = v5;
    *(v6 + 5) = a1;
    swift_bridgeObjectRetain_n();

    v7 = v1;
    v8 = sub_32D64(v7, v4, v5, a1);

    if ((v8 & 1) != 0 || (v9 = *(sub_254C4() + 16), , v9))
    {
    }

    else
    {
      if (qword_B7850 != -1)
      {
        swift_once();
      }

      v13 = sub_80BC8();
      sub_19818(v13, qword_BCF70);
      v14 = sub_80BB8();
      v15 = sub_81B38();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "Delaying deeplink execution until the application list is updated.", v16, 2u);
      }

      v17 = &v7[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
      v18 = *&v7[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
      v19 = *&v7[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback + 8];
      *v17 = sub_3C13C;
      v17[1] = v6;

      sub_3B938(v18);
    }
  }

  else
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v10 = sub_80BC8();
    sub_19818(v10, qword_BCF70);
    oslog = sub_80BB8();
    v11 = sub_81B18();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, oslog, v11, "No valid path found to handle. Bailing.", v12, 2u);
    }
  }
}

void sub_328F4()
{
  sub_32C6C();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_32D10(319, &qword_B8168, &qword_B8170, &qword_88E78);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_32D10(319, &qword_B8178, &qword_B8180, &qword_88E80);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_32D10(319, &qword_B8188, &qword_B8190, &qword_88E88);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_32D10(319, &qword_B8198, &qword_B81A0, &qword_88E90);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            sub_32CC4(319, &qword_B81A8);
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_32CC4(319, &qword_B81B0);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_32D10(319, &qword_B81B8, &qword_B81C0, &qword_88E98);
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  v16 = sub_81818();
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_32C6C()
{
  if (!qword_B8160)
  {
    sub_817E8();
    v0 = sub_80C88();
    if (!v1)
    {
      atomic_store(v0, &qword_B8160);
    }
  }
}

void sub_32CC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_80C88();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_32D10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_14E2C(a3, a4);
    v5 = sub_80C88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_32D64(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = &a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
  v13 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
  v14 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback + 8];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_3B938(v13);
  v15 = sub_254C4();
  if (*(v15 + 16) && (v16 = sub_34B30(a2, a3), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v15 + 56);
    v20 = type metadata accessor for Application();
    v21 = *(v20 - 8);
    sub_3B948(v19 + *(v21 + 72) * v18, v11, type metadata accessor for Application);

    (*(v21 + 56))(v11, 0, 1, v20);
    sub_14FD4(v11, &qword_B7E50, &qword_8A3F0);
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v22 = sub_80BC8();
    sub_19818(v22, qword_BCF70);

    v23 = sub_80BB8();
    v24 = sub_81B38();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315138;
      v27 = *(a4 + 16);
      v28 = sub_81848();
      v30 = sub_34588(v28, v29, &v44);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_0, v23, v24, "Deeplink opened with information: %s", v25, 0xCu);
      sub_20FD0(v26);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v44 = a4;

    v31 = a1;
    sub_80C78();
    return 1;
  }

  else
  {

    v33 = type metadata accessor for Application();
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
    sub_14FD4(v11, &qword_B7E50, &qword_8A3F0);
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v34 = sub_80BC8();
    sub_19818(v34, qword_BCF70);

    v35 = sub_80BB8();
    v36 = sub_81B18();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v37 = 136315138;
      v39 = *(a4 + 16);
      v40 = sub_81848();
      v42 = sub_34588(v40, v41, &v44);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_0, v35, v36, "DeepLink %s provided does not match a valid application bundleID.", v37, 0xCu);
      sub_20FD0(v38);
    }

    return 0;
  }
}

uint64_t sub_33200@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_80C48();
  *a1 = result;
  return result;
}

uint64_t sub_33240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_332D8, v6, v5);
}

uint64_t sub_332D8()
{
  v1 = v0[2];
  v2 = objc_opt_self();
  v3 = [v2 hiddenAppBundleIdentifiers];
  v4 = sub_81AD8();

  v5 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs);
  *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs) = v4;

  v6 = [v2 lockedAppBundleIdentifiers];
  v7 = sub_81AD8();

  v8 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs);
  *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs) = v7;

  v9 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lastSizerResults);
  v0[6] = v9;
  if (v9)
  {
    v10 = v9;
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_33484;
    v12 = v0[2];

    return sub_29848(v10);
  }

  else
  {
    v14 = v0[3];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_33484()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_335A4, v4, v3);
}

uint64_t sub_335A4()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_3374C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_2FC5C(a1, v4, v5, v6);
}

uint64_t sub_33800(uint64_t a1)
{
  v2 = sub_80858();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_80848();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_33944@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a2 = v5;
  return result;
}

uint64_t sub_339C4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_80C78();
}

uint64_t sub_33A70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a2 = v5;
  return result;
}

uint64_t sub_33B00(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_80C78();
}

uint64_t sub_33B74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a2 = v5;
  return result;
}

uint64_t sub_33BF4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_80C78();
}

uint64_t sub_33C6C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_33CB8(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

char *sub_33D10(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B82D8, &qword_891C0);
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

char *sub_33E1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8280, &qword_88FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_33F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8288, &qword_88FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_34040(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_147EC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_3421C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8338, &qword_89358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_34340(uint64_t a1, uint64_t a2)
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

  sub_147EC(&qword_B82D8, &qword_891C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_343C4(uint64_t a1, uint64_t a2)
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

  sub_147EC(&qword_B82C8, &qword_891B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_3445C(uint64_t a1, uint64_t a2)
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

  sub_147EC(&qword_B8338, &qword_89358);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4BDA12F684BDA13) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

_BYTE **sub_344F4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_3452C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_34588(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_34588(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_34654(v11, 0, 0, 1, a1, a2);
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
    sub_22B2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_20FD0(v11);
  return v7;
}

unint64_t sub_34654(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_34760(a5, a6);
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
    result = sub_81D28();
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

void *sub_34760(uint64_t a1, unint64_t a2)
{
  v4 = sub_347AC(a1, a2);
  sub_348DC(&off_AACC8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_347AC(uint64_t a1, unint64_t a2)
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

  v6 = sub_349C8(v5, 0);
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

  result = sub_81D28();
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
        v10 = sub_81998();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_349C8(v10, 0);
        result = sub_81CF8();
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

uint64_t sub_348DC(uint64_t result)
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

  result = sub_34A3C(result, v12, 1, v3);
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

void *sub_349C8(uint64_t a1, uint64_t a2)
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

  sub_147EC(&qword_B82C0, &qword_89160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_34A3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B82C0, &qword_89160);
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

unint64_t sub_34B30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_81E78();
  sub_81968();
  v6 = sub_81EB8();

  return sub_34C80(a1, a2, v6);
}

unint64_t sub_34BA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_81C98(*(v2 + 40));

  return sub_34D38(a1, v4);
}

unint64_t sub_34BEC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_81928();
  sub_81E78();
  sub_81968();
  v4 = sub_81EB8();

  return sub_34E00(a1, v4);
}

unint64_t sub_34C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_81E18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_34D38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_3CC30(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_81CA8();
      sub_3CC8C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_34E00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_81928();
      v9 = v8;
      if (v7 == sub_81928() && v9 == v10)
      {
        break;
      }

      v12 = sub_81E18();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_34F04(char *a1, int64_t a2, char a3)
{
  result = sub_34FA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34F24(char *a1, int64_t a2, char a3)
{
  result = sub_350B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34F44(char *a1, int64_t a2, char a3)
{
  result = sub_351D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34F64(char *a1, int64_t a2, char a3)
{
  result = sub_352F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_34F84(size_t a1, int64_t a2, char a3)
{
  result = sub_35414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B82D8, &qword_891C0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_350B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&unk_B82E0, &unk_8C580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_351D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8280, &qword_88FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_352F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8338, &qword_89358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_35414(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_147EC(&qword_B82B8, &qword_89148);
  v10 = *(type metadata accessor for Application() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Application() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_355EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_34B30(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_3834C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Application();
    v22 = *(v15 - 8);
    sub_3C81C(v14 + *(v22 + 72) * v9, a3, type metadata accessor for Application);
    sub_37654(v9, v12, type metadata accessor for Application);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Application();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_3576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_34B30(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_38C0C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_80A38();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_37654(v9, v12, &type metadata accessor for Date);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_80A38();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_358F0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Application();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_147EC(&qword_B82B0, &qword_89140);
  v44 = a2;
  result = sub_81DA8();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_3C81C(v31, v45, type metadata accessor for Application);
      }

      else
      {
        sub_3B948(v31, v45, type metadata accessor for Application);
      }

      v32 = *(v12 + 40);
      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_3C81C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Application);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_35C68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_147EC(&qword_B82F0, &qword_891C8);
  v43 = a2;
  result = sub_81DA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 144 * v22;
      if (v43)
      {
        v44 = *(v26 + 8);
        v45 = *(v26 + 24);
        v46 = *v26;
        v47 = *(v26 + 32);
        v48 = *(v26 + 48);
        v54 = *(v26 + 64);
        v50 = *(v26 + 16);
        v51 = *(v26 + 72);
        v49 = *(v26 + 80);
        v52 = *(v26 + 96);
        v55 = *(v26 + 88);
        v56 = *(v26 + 104);
        v53 = *(v26 + 112);
        v57 = *(v26 + 128);
      }

      else
      {
        v59 = *v26;
        v27 = *(v26 + 64);
        v29 = *(v26 + 16);
        v28 = *(v26 + 32);
        v62 = *(v26 + 48);
        v63 = v27;
        v60 = v29;
        v61 = v28;
        v30 = *(v26 + 128);
        v32 = *(v26 + 80);
        v31 = *(v26 + 96);
        v66 = *(v26 + 112);
        v67 = v30;
        v64 = v32;
        v65 = v31;
        v57 = v30;
        v53 = v66;
        v55 = *(&v32 + 1);
        v56 = *(&v31 + 1);
        v52 = v31;
        v54 = v63;
        v49 = v32;
        v47 = v61;
        v48 = v62;
        v50 = v60;
        v51 = *(&v63 + 1);
        v45 = *(&v60 + 1);
        v44 = *(&v59 + 1);
        v46 = v59;

        sub_3BE20(&v59, v58);
      }

      v33 = *(v8 + 40);
      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 144 * v16;
      *v18 = v46;
      *(v18 + 8) = v44;
      *(v18 + 16) = v50;
      *(v18 + 24) = v45;
      *(v18 + 32) = v47;
      *(v18 + 48) = v48;
      *(v18 + 64) = v54;
      *(v18 + 72) = v51;
      *(v18 + 80) = v49;
      *(v18 + 88) = v55;
      *(v18 + 96) = v52;
      *(v18 + 104) = v56;
      *(v18 + 112) = v53;
      *(v18 + 128) = v57;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_3604C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_147EC(&qword_B83C8, &qword_89450);
  v37 = a2;
  result = sub_81DA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_81928();
      sub_81E78();
      sub_81968();
      v26 = sub_81EB8();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_36314(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_147EC(&qword_B83D0, &qword_89458);
  v36 = a2;
  result = sub_81DA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + 16 * v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_81928();
      sub_81E78();
      sub_81968();
      v25 = sub_81EB8();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 16 * v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_365D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_147EC(&qword_B82D0, &qword_891B8);
  v43 = a2;
  result = sub_81DA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 88 * v22;
      if (v43)
      {
        v44 = *(v26 + 8);
        v45 = *(v26 + 24);
        v46 = *v26;
        v47 = *(v26 + 32);
        v48 = *(v26 + 16);
        v49 = *(v26 + 40);
        v50 = *(v26 + 48);
        v51 = *(v26 + 49);
        v27 = *(v26 + 56);
        v28 = *(v26 + 64);
        v52 = v27;
        v53 = *(v26 + 72);
        v54 = *(v26 + 80);
      }

      else
      {
        v29 = *(v26 + 32);
        v30 = *(v26 + 48);
        v31 = *(v26 + 64);
        v59 = *(v26 + 80);
        v57 = v30;
        v58 = v31;
        v56[2] = v29;
        v32 = *(v26 + 16);
        v56[0] = *v26;
        v56[1] = v32;
        v54 = v59;
        v28 = v31;
        v52 = *(&v57 + 1);
        v53 = *(&v31 + 1);
        v50 = v57;
        v51 = BYTE1(v57);
        v48 = v32;
        v49 = *(&v29 + 1);
        v46 = *&v56[0];
        v47 = v29;
        v44 = *(&v56[0] + 1);
        v45 = *(&v32 + 1);

        sub_3BC1C(v56, v55);
      }

      v33 = *(v8 + 40);
      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 88 * v16;
      *v18 = v46;
      *(v18 + 8) = v44;
      *(v18 + 16) = v48;
      *(v18 + 24) = v45;
      *(v18 + 32) = v47;
      *(v18 + 40) = v49;
      *(v18 + 48) = v50;
      *(v18 + 49) = v51;
      *(v18 + 56) = v52;
      *(v18 + 64) = v28;
      *(v18 + 72) = v53;
      *(v18 + 80) = v54;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_3698C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_80A38();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_147EC(&unk_B8310, &qword_89230);
  v46 = a2;
  result = sub_81DA8();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_36D0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_147EC(&qword_B8340, &unk_89360);
  v50 = a2;
  result = sub_81DA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v48 = v3;
    v49 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 216 * v22);
      if (v50)
      {
        v57 = v27[2];
        v52 = v27[1];
        v53 = v27[3];
        v55 = *v27;
        v56 = v27[5];
        v62 = v27[7];
        v60 = *(v27 + 64);
        v58 = v27[9];
        v59 = v27[4];
        v54 = v27[10];
        v65 = v27[11];
        v66 = v27[6];
        v61 = v27[12];
        v63 = *(v27 + 13);
        v64 = *(v27 + 15);
        v67 = *(v27 + 144);
        v28 = *(v27 + 19);
        v68 = v28;
        v69 = *(v27 + 21);
        v51 = *(v27 + 184);
        v73 = v27[24];
        v70 = v27[17];
        v71 = v27[25];
        v72 = *(v27 + 208);
      }

      else
      {
        v29 = *(v27 + 1);
        v75 = *v27;
        v76 = v29;
        v30 = *(v27 + 5);
        v32 = *(v27 + 2);
        v31 = *(v27 + 3);
        v79 = *(v27 + 4);
        v80 = v30;
        v77 = v32;
        v78 = v31;
        v33 = *(v27 + 9);
        v35 = *(v27 + 6);
        v34 = *(v27 + 7);
        *&v81[32] = *(v27 + 8);
        *v82 = v33;
        *v81 = v35;
        *&v81[16] = v34;
        v37 = *(v27 + 11);
        v36 = *(v27 + 12);
        v38 = *(v27 + 10);
        v84 = *(v27 + 208);
        *&v82[32] = v37;
        v83 = v36;
        *&v82[16] = v38;
        v72 = v84;
        v73 = v36;
        v51 = BYTE8(v37);
        v68 = *&v82[8];
        v69 = *&v82[24];
        v70 = *&v81[40];
        v71 = *(&v36 + 1);
        v67 = v82[0];
        v63 = *&v81[8];
        v64 = *&v81[24];
        v65 = *(&v80 + 1);
        v66 = v78;
        v61 = v35;
        v62 = *(&v78 + 1);
        v60 = v79;
        v58 = *(&v79 + 1);
        v56 = *(&v77 + 1);
        v59 = v77;
        v53 = *(&v76 + 1);
        v57 = v76;
        v54 = v80;
        v52 = *(&v75 + 1);
        v55 = v75;

        sub_3C168(&v75, v74);
      }

      v39 = *(v8 + 40);
      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v40 = -1 << *(v8 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v15 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v15 + 8 * v42);
          if (v46 != -1)
          {
            v16 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v41) & ~*(v15 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v75) = v51;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = *(v8 + 56) + 216 * v16;
      *v18 = v55;
      *(v18 + 8) = v52;
      *(v18 + 16) = v57;
      *(v18 + 24) = v53;
      *(v18 + 32) = v59;
      *(v18 + 40) = v56;
      *(v18 + 48) = v66;
      *(v18 + 56) = v62;
      *(v18 + 64) = v60;
      *(v18 + 72) = v58;
      *(v18 + 80) = v54;
      *(v18 + 88) = v65;
      *(v18 + 96) = v61;
      *(v18 + 120) = v64;
      *(v18 + 104) = v63;
      *(v18 + 136) = v70;
      *(v18 + 144) = v67;
      *(v18 + 168) = v69;
      *(v18 + 152) = v68;
      *(v18 + 184) = v75;
      *(v18 + 192) = v73;
      *(v18 + 200) = v71;
      *(v18 + 208) = v72;
      ++*(v8 + 16);
      v5 = v49;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v10, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_371CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_147EC(&qword_B8290, &qword_88FB8);
  v40 = a2;
  result = sub_81DA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_3748C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_81C18() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_81928();
      sub_81E78();
      v11 = v10;
      sub_81968();
      v12 = sub_81EB8();

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
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
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

unint64_t sub_37654(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_81C18() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_81E78();

      sub_81968();
      v15 = sub_81EB8();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_37848(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_81C18() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_81E78();

      sub_81968();
      v13 = sub_81EB8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 216 * v3);
        v19 = (v18 + 216 * v6);
        if (216 * v3 < (216 * v6) || result >= v19 + 216 || v3 != v6)
        {
          result = memmove(result, v19, 0xD8uLL);
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

  return result;
}

uint64_t sub_37A0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_34B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_3834C();
      goto LABEL_7;
    }

    sub_358F0(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_34B30(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_81E38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Application() - 8) + 72) * v12;

    return sub_3BAA0(a1, v20);
  }

LABEL_13:
  sub_38164(v12, a2, a3, a1, v18);
}

uint64_t sub_37B70(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_34B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_35C68(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_34B30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_81E38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_385A4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 144 * v11;

    return sub_3BDC4(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 144 * v11);
  *v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  v29 = a1[4];
  v26[3] = a1[3];
  v26[4] = v29;
  v26[1] = v27;
  v26[2] = v28;
  v30 = a1[5];
  v31 = a1[6];
  v32 = a1[8];
  v26[7] = a1[7];
  v26[8] = v32;
  v26[5] = v30;
  v26[6] = v31;
  v33 = v22[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v34;
}

id sub_37D18(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_34BEC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_3604C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_34BEC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for FPProviderDomainID(0);
        result = sub_81E38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_38778();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}