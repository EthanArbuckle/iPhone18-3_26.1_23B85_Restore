uint64_t sub_100035318(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10007EBC0(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100035380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPeopleCellViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000353E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t sub_10003544C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_10007EBC0(a5);
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

uint64_t sub_100035650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000356B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_100035718(void **a1)
{
  v2 = *(type metadata accessor for FMPeopleCellViewModel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10003599C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100035E10(v6);
  *a1 = v3;
  return result;
}

size_t sub_1000357C0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_10007EBC0(a5);
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

uint64_t sub_1000359D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMPeopleCellViewModel();
  v9 = __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v51 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v51 - v17);
  v53 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v60 = -v20;
    v22 = a1 - a3;
    v65 = v19;
    v52 = v20;
    v23 = v19 + v20 * a3;
    v58 = v11;
LABEL_5:
    v56 = v21;
    v57 = a3;
    v54 = v23;
    v55 = v22;
    while (1)
    {
      sub_1000353E4(v23, v18, type metadata accessor for FMPeopleCellViewModel);
      sub_1000353E4(v21, v14, type metadata accessor for FMPeopleCellViewModel);
      v24 = v8[17];
      v25 = *(v18 + v24);
      v26 = *(v14 + v24);
      if (v25 != v26)
      {
        v31 = v25 < v26;
        goto LABEL_26;
      }

      v27 = v8[16];
      v28 = round(*(v18 + v27));
      v29 = v28 > -9.22337204e18;
      if (v28 >= 9.22337204e18)
      {
        v29 = 0;
      }

      if (v29)
      {
        v30 = 30 * (v28 / 30);
      }

      else
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v32 = round(*(v14 + v27));
      if (v32 > -9.22337204e18 && v32 < 9.22337204e18)
      {
        v34 = 30 * (v32 / 30);
        if (v30 == v34)
        {
LABEL_21:
          v36 = (v18 + v8[6]);
          v37 = v36[1];
          v38 = *v18;
          v39 = v18[1];
          v63 = *v36;
          v64 = v37;

          v40._countAndFlagsBits = v38;
          v40._object = v39;
          String.append(_:)(v40);
          v41 = v64;
          v59 = v63;
          v42 = (v14 + v8[6]);
          v43 = v42[1];
          v44 = *v14;
          v45 = v14[1];
          v63 = *v42;
          v64 = v43;

          v46._countAndFlagsBits = v44;
          v46._object = v45;
          String.append(_:)(v46);
          v47 = v63;
          v48 = v64;
          v63 = v59;
          v64 = v41;
          v61 = v47;
          v62 = v48;
          sub_100035F3C();
          v49 = StringProtocol.caseInsensitiveCompare<A>(_:)();
          v11 = v58;

          v31 = v49 == -1;
          goto LABEL_26;
        }

        if (!v29)
        {
LABEL_24:
          v35 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_25;
        }

        v35 = 30 * (v28 / 30);
      }

      else
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_21;
        }

        if (!v29)
        {
          goto LABEL_24;
        }

        v35 = 30 * (v28 / 30);
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_25:
      v31 = v35 < v34;
LABEL_26:
      sub_100035650(v14, type metadata accessor for FMPeopleCellViewModel);
      result = sub_100035650(v18, type metadata accessor for FMPeopleCellViewModel);
      if (!v31)
      {
        goto LABEL_4;
      }

      if (!v65)
      {
        __break(1u);
        return result;
      }

      sub_1000356B0(v23, v11, type metadata accessor for FMPeopleCellViewModel);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000356B0(v11, v21, type metadata accessor for FMPeopleCellViewModel);
      v21 += v60;
      v23 += v60;
      if (__CFADD__(v22++, 1))
      {
LABEL_4:
        a3 = v57 + 1;
        v21 = v56 + v52;
        v22 = v55 - 1;
        v23 = v54 + v52;
        if (v57 + 1 == v53)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

Swift::Int sub_100035E10(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMPeopleCellViewModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMPeopleCellViewModel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1005333D4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000359D8(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_100035F3C()
{
  result = qword_1006B0150;
  if (!qword_1006B0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0150);
  }

  return result;
}

void *sub_100035F90(uint64_t a1)
{
  v2 = type metadata accessor for FMAllowLocationAlertCellViewModel();
  v78 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v82 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v72 - v5;
  v6 = sub_10007EBC0(&qword_1006B0050);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v72 - v11;
  __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v98 = type metadata accessor for FMFFriend();
  v15 = *(v98 - 8);
  v16 = __chkstk_darwin(v98);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v73 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v79 = &v72 - v21;
  __chkstk_darwin(v20);
  v80 = &v72 - v22;
  v23 = type metadata accessor for FMFLocationAlert();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v76 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v72 - v28;
  v92 = *(a1 + 16);
  if (v92)
  {
    v30 = 0;
    v32 = *(v24 + 16);
    v31 = v24 + 16;
    v94 = v32;
    v99 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator;
    v91 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v33 = (v15 + 48);
    v85 = (v15 + 32);
    v88 = (v15 + 56);
    v75 = (v15 + 16);
    v74 = (v15 + 8);
    v87 = (v31 - 8);
    v90 = *(v31 + 56);
    v86 = _swiftEmptyArrayStorage;
    v34 = v98;
    v96 = v27;
    v83 = &v72 - v28;
    v84 = v14;
    v35 = v27;
    v89 = v12;
    v93 = v31;
    while (1)
    {
      v36 = v14;
      v97 = v30;
      v94(v29, v91 + v90 * v30, v35);
      v37 = FMFLocationAlert.friendId.getter();
      v95 = v33 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (!v38)
      {
        goto LABEL_10;
      }

      v39 = v37;
      v40 = v38;
      v41 = *(v100 + v99);

      sub_1000BD300(v39, v40, v12);

      v42 = *v33;
      if ((*v33)(v12, 1, v34) == 1)
      {
        break;
      }

      v51 = v12;
      v52 = *v85;
      v53 = v79;
      (*v85)(v79, v51, v34);
      v54 = v53;
      v14 = v36;
      v52(v36, v54, v34);
LABEL_19:
      (*v88)(v14, 0, 1, v34);
      v56 = v42(v14, 1, v34);
      v35 = v96;
      if (v56 != 1)
      {
        v57 = v14;
        v58 = v96;
        v59 = v80;
        v52(v80, v57, v34);

        v60 = v34;
        v61 = sub_10002DCD8(v59, 0);

        v62 = v29;
        v63 = v76;
        v94(v76, v62, v58);

        v64 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

        v65 = v77;
        (*v75)(v77, v59, v60);
        v66 = v61;
        v67 = v81;
        sub_1005117A4(v41, v63, v64 & 1, v65, v61, 0, v81);
        sub_1000353E4(v67, v82, type metadata accessor for FMAllowLocationAlertCellViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_10008BBA4(0, v86[2] + 1, 1, v86);
        }

        v69 = v86[2];
        v68 = v86[3];
        v34 = v98;
        v70 = v96;
        v29 = v83;
        v14 = v84;
        if (v69 >= v68 >> 1)
        {
          v86 = sub_10008BBA4(v68 > 1, v69 + 1, 1, v86);
        }

        sub_100035650(v81, type metadata accessor for FMAllowLocationAlertCellViewModel);
        (*v74)(v80, v34);
        v35 = v70;
        (*v87)(v29, v70);
        v71 = v86;
        v86[2] = v69 + 1;
        sub_1000356B0(v82, v71 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v69, type metadata accessor for FMAllowLocationAlertCellViewModel);
        goto LABEL_6;
      }

LABEL_5:
      (*v87)(v29, v35);
      sub_100012DF0(v14, &qword_1006B0050);
LABEL_6:
      v30 = v97 + 1;
      v12 = v89;
      if (v97 + 1 == v92)
      {
        return v86;
      }
    }

    sub_100012DF0(v12, &qword_1006B0050);
LABEL_10:
    result = FMFLocationAlert.followerIds.getter();
    v14 = v36;
    v35 = v96;
    if (result)
    {
      v44 = result;
      v45 = result[2];
      if (v45)
      {
        v46 = 0;
        v47 = result + 5;
        while (v46 < v44[2])
        {
          v48 = *(v47 - 1);
          v49 = *v47;
          v41 = *(v100 + v99);

          v50 = v48;
          v34 = v98;
          sub_1000BD300(v50, v49, v9);

          v42 = *v33;
          if ((*v33)(v9, 1, v34) != 1)
          {

            v52 = *v85;
            v55 = v73;
            (*v85)(v73, v9, v34);
            v14 = v84;
            v52(v84, v55, v34);
            v29 = v83;
            goto LABEL_19;
          }

          ++v46;
          result = sub_100012DF0(v9, &qword_1006B0050);
          v47 += 2;
          if (v45 == v46)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        return result;
      }

LABEL_3:

      v29 = v83;
      v14 = v84;
      v35 = v96;
    }

    (*v88)(v14, 1, 1, v34);
    goto LABEL_5;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100036858(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4)
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_1000369F8(0, v11, 0);
    v12 = v22;
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      sub_1000353E4(v13, v10, a3);
      v22 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000369F8((v15 > 1), v16 + 1, 1);
        v12 = v22;
      }

      v20 = v7;
      v21 = a4;
      v17 = sub_100008FC0(&v19);
      sub_1000353E4(v10, v17, a3);
      v12[2] = v16 + 1;
      sub_100006A54(&v19, &v12[5 * v16 + 4]);
      sub_100035650(v10, a3);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void *sub_1000369F8(void *a1, int64_t a2, char a3)
{
  result = sub_100036A38(a1, a2, a3, *v3, &unk_1006B40B0, &unk_100555D60, &unk_1006BBCC0);
  *v3 = result;
  return result;
}

void *sub_100036A38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_10007EBC0(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_100036B80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v7 = *(v60 - 8);
  __chkstk_darwin(v60);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v56 = sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMItemAger: scheduleNextInterval", v13, 2u);
  }

  *&aBlock = a1;

  sub_100037438(&aBlock);
  v14 = aBlock;
  v57 = sub_100003E90();
  v15 = static OS_dispatch_queue.main.getter();
  v69 = sub_100059578;
  v70 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v67 = sub_100004AE4;
  v68 = &unk_100630148;
  v16 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  v17 = sub_100037918();
  v18 = sub_10007EBC0(&unk_1006B0640);
  v19 = sub_100037970();
  v59 = v18;
  v58 = v19;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  v20 = *(v61 + 8);
  v61 += 8;
  v20(v6, v4);
  v22 = v7 + 8;
  v21 = *(v7 + 8);
  v21(v9, v60);
  if (!*(v14 + 16))
  {
  }

  v52 = v21;
  v53 = v20;
  v54 = v17;
  sub_100037840(v14 + 32, &aBlock);

  sub_100006A54(&aBlock, v63);
  v23 = v64;
  v24 = v65;
  sub_1000244BC(v63, v64);
  v25 = (*(v24 + 16))(v23, v24);
  v26 = swift_allocObject();
  v55 = v2;
  swift_weakInit();
  sub_100037840(v63, v62);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  sub_100006A54(v62, v27 + 24);
  v69 = sub_10022CA4C;
  v70 = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v67 = sub_100017328;
  v68 = &unk_1006301C0;
  v28 = _Block_copy(&aBlock);
  v29 = objc_opt_self();

  v30 = [v29 timerWithTimeInterval:0 repeats:v28 block:v25];
  _Block_release(v28);

  sub_100037840(v63, &aBlock);
  v31 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v51[1] = v22;
    v35 = v34;
    v36 = swift_slowAlloc();
    *&v62[0] = v36;
    *v35 = 134218242;
    v56 = v4;
    v38 = v68;
    v37 = v69;
    sub_1000244BC(&aBlock, v68);
    v39 = v37[2](v38, v37);
    sub_100006060(&aBlock);
    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = [v31 debugDescription];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_100005B4C(v41, v43, v62);
    v4 = v56;

    *(v35 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "FMItemAger: nextItemToRefresh time scheduled %fs, %s", v35, 0x16u);
    sub_100006060(v36);
  }

  else
  {

    sub_100006060(&aBlock);
  }

  v46 = static OS_dispatch_queue.main.getter();
  v47 = swift_allocObject();
  v48 = v55;
  *(v47 + 16) = v31;
  *(v47 + 24) = v48;
  v69 = sub_1000598F4;
  v70 = v47;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v67 = sub_100004AE4;
  v68 = &unk_100630210;
  v49 = _Block_copy(&aBlock);

  v50 = v31;

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);

  v53(v6, v4);
  v52(v9, v60);
  return sub_100006060(v63);
}

uint64_t sub_100037380()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000373B8()
{

  sub_100006060(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000373F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100037438(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000374A4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1000374DC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000374DC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007EBC0(&unk_1006BBCC0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10022B9F0(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000375E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000375E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = v31 + 40 * a3;
    v17 = a1 - a3;
LABEL_5:
    v29 = v16;
    v30 = a3;
    v28 = v17;
    while (1)
    {
      sub_100037840(v16, &v35);
      sub_100037840(v16 - 40, v32);
      v18 = v36;
      v19 = v37;
      sub_1000244BC(&v35, v36);
      (*(v19 + 8))(v18, v19);
      v20 = v33;
      v21 = v34;
      sub_1000244BC(v32, v33);
      (*(v21 + 8))(v20, v21);
      LOBYTE(v20) = static Date.< infix(_:_:)();
      v22 = *v15;
      v23 = v38;
      (*v15)(v10, v38);
      v22(v14, v23);
      sub_100006060(v32);
      result = sub_100006060(&v35);
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v16 = v29 + 40;
        v17 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      sub_100006A54(v16, &v35);
      v24 = *(v16 - 24);
      *v16 = *(v16 - 40);
      *(v16 + 16) = v24;
      *(v16 + 32) = *(v16 - 8);
      result = sub_100006A54(&v35, v16 - 40);
      v16 -= 40;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100037840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000378A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_100037918()
{
  result = qword_1006AEDE0;
  if (!qword_1006AEDE0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AEDE0);
  }

  return result;
}

unint64_t sub_100037970()
{
  result = qword_1006AEDF0;
  if (!qword_1006AEDF0)
  {
    sub_10007EC08(&unk_1006B0640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AEDF0);
  }

  return result;
}

void sub_1000379D4(void (*a1)(void))
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  a1(0);
  Date.timeIntervalSince1970.getter();
  v9 = v7 - v8;
  if (v9 < 0.0 || v9 > 30.0)
  {
    v11 = 60.0;
    if (v9 < 30.0 || v9 > 60.0)
    {
      v11 = 3600.0;
      if (v9 >= 60.0 && v9 <= 3600.0)
      {
        v11 = 60.0;
      }
    }

    fmod(v9, v11);
  }
}

uint64_t sub_100037BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_100027A40(v18, v15, a4);
        sub_100027A40(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_100029F80(v12, a4);
        sub_100029F80(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

id sub_100037D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315138;
    type metadata accessor for FMPeopleCellViewModel();
    v13 = Array.debugDescription.getter();
    v15 = sub_100005B4C(v13, v14, v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPeopleListDataSource: model update with %s", v11, 0xCu);
    sub_100006060(v12);
  }

  v16 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
  swift_beginAccess();
  *(a2 + v16) = a1;

  if (a3)
  {
    *(a2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_fenceCellModels) = a4;
  }

  sub_100037FA8();
  v17 = a2 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(a2, &off_100644F70, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  return sub_1000382F0();
}

uint64_t sub_100037FA8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentThread];
  v11 = [v10 isMainThread];

  if (v11)
  {
    result = [v1 isEditing];
    if ((result & 1) == 0)
    {

      return [v1 reloadData];
    }
  }

  else
  {
    sub_100003E90();
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    aBlock[4] = sub_1000D6258;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100625A00;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_1000382B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000382F0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    [*(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableView) setTableFooterView:*(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableViewFooter)];
    sub_10052AE74();
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableView) setTableFooterView:0];
  }

  v3 = *(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_tableViewFooter);

  v4 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  return [v3 setUserInteractionEnabled:(v4 & 1) == 0];
}

void *sub_1000383D8(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_isFirstLayout] = 1;
  v4 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView;
  *&v2[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconViewContainer;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel;
  *&v2[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton;
  v9 = objc_allocWithZone(type metadata accessor for FMEmptyListButton());
  v10 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v11 = objc_opt_self();
  *&v9[v10] = [v11 systemBlueColor];
  v9[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *&v2[v8] = sub_100038758([v11 tertiarySystemFillColor], 1, 1, 0);
  v12 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollView;
  *&v2[v12] = [objc_allocWithZone(type metadata accessor for FMScrollView()) init];
  v13 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_fixedContainerView;
  *&v2[v13] = [objc_allocWithZone(UIStackView) init];
  v14 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView;
  *&v2[v14] = [objc_allocWithZone(UIStackView) init];
  v15 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView;
  *&v2[v15] = [objc_allocWithZone(UIStackView) init];
  v16 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonCenteringConstraint;
  *&v2[v16] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v2[OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FMEmptyListView();

  v17 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v18 = *((swift_isaMask & *v17) + 0x110);
  v19 = v17;
  v21 = v18(v19, v20);
  v22 = (*((swift_isaMask & *v19) + 0x118))(v21);
  v23 = (*((swift_isaMask & *v19) + 0x120))(v22);
  (*((swift_isaMask & *v19) + 0x128))(v23);
  sub_10003C1E4();

  return v19;
}

id sub_100038758(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicator;
  *&v4[v10] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v11 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color;
  *&v4[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color] = 0;
  v12 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_isBackgroundColor;
  v4[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_isBackgroundColor] = 0;
  v13 = &v4[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_textAlignment];
  *v13 = 0;
  v13[8] = 1;
  v4[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicatorPosition] = 0;
  v4[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_showActivityIndicator] = 0;
  *&v4[v11] = a1;
  v4[v12] = a2;
  *v13 = a3;
  v13[8] = a4 & 1;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for FMSingleLinePlatterButton();
  return objc_msgSendSuper2(&v15, "init");
}

void *sub_100038884()
{
  v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment] = 3;
  v1 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator;
  *&v0[v2] = [objc_allocWithZone(UIView) init];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v3 = [objc_opt_self() mainScreen];
  v4 = [v3 traitCollection];

  v5 = sub_100356E0C(v4);
  *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v5;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for FMPlatterButton();
  v6 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = *((swift_isaMask & *v6) + 0xD0);
  v8 = v6;
  v9 = v7();
  v10 = (*((swift_isaMask & *v8) + 0xD8))(v9);
  (*((swift_isaMask & *v8) + 0xE0))(v10);
  v11 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v11];

  return v8;
}

id sub_100038AEC()
{
  v1 = v0;
  sub_100038EE8();
  v2 = [v0 layer];
  [v2 setCornerRadius:10.0];

  v27 = &type metadata for SolariumFeatureFlag;
  v28 = sub_10000BD04();
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100006060(v26);
  if ((v2 & 1) == 0)
  {
    v3 = [v1 layer];
    [v3 setShouldRasterize:1];

    v4 = [v1 layer];
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
    v7 = v6;

    [v4 setRasterizationScale:v7];
  }

  v8 = [v1 layer];
  [v8 setCornerRadius:10.0];

  v9 = [v1 layer];
  [v9 setMasksToBounds:0];

  v10 = [v1 layer];
  v11 = [objc_opt_self() blackColor];
  v12 = [v11 CGColor];

  [v10 setShadowColor:v12];
  v13 = [v1 layer];
  LODWORD(v14) = 1031127695;
  [v13 setShadowOpacity:v14];

  v15 = [v1 layer];
  [v15 setShadowRadius:16.0];

  v16 = [v1 layer];
  [v16 setShadowOffset:{0.0, 0.0}];

  v17 = *&v1[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = sub_100039388(0x8000);

  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v21 = UIFontWeightTrait;
  v22 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v23 = sub_10002ACDC(v22);

  [v17 setFont:v23];

  [v17 setTextColor:*&v1[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor]];
  [v17 setNumberOfLines:0];
  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v24) = v26[0];
  return [v17 setContentCompressionResistancePriority:1 forAxis:{v24, 0x447A00003F800000}];
}

id sub_100038EE8()
{
  sub_1000391A0();
  v1 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v1 setFont:v2];

  [v1 setNumberOfLines:0];
  [v1 setAdjustsFontForContentSizeCategory:1];
  if (v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_textAlignment + 8])
  {
    v3 = 4;
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_textAlignment];
  }

  [v1 setTextAlignment:v3];
  if (v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_isBackgroundColor] == 1)
  {
    v4 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color];
    if (v4)
    {
      v5 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color];
    }

    else
    {
      v5 = [objc_opt_self() systemRedColor];
      v4 = 0;
    }

    v11 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v5;
    v12 = v4;

    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v13 = [v0 traitCollection];
    v10 = sub_100356E0C(v13);
  }

  else
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v6 = [v0 traitCollection];
    v7 = sub_100356E0C(v6);

    v8 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v7;

    v9 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color];
    if (v9)
    {
      v10 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color];
    }

    else
    {
      v10 = [objc_opt_self() systemRedColor];
      v9 = 0;
    }

    v14 = v9;
  }

  [v1 setTextColor:v10];

  [v0 addSubview:v1];
  v15 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicator];
  [v15 setHidden:1];

  return [v0 addSubview:v15];
}

id sub_1000391A0()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v1 = [v0 traitCollection];
  v2 = sub_100356E0C(v1);

  v3 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
  *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v2;

  v4 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.1];

  [v7 setBackgroundColor:v9];
  [*&v0[v4] setHidden:1];
  v10 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator;
  v11 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator];
  v12 = [v6 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.1];

  [v11 setBackgroundColor:v13];
  [*&v0[v10] setHidden:1];
  [v0 addSubview:*&v0[v4]];
  v14 = *&v0[v10];

  return [v0 addSubview:v14];
}

uint64_t sub_100039388(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:a1];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(61);
    v7._object = 0x80000001005816A0;
    v7._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v7);
    type metadata accessor for SymbolicTraits(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000394CC()
{
  result = qword_1006B8510;
  if (!qword_1006B8510)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B8510);
  }

  return result;
}

void sub_100039524()
{
  v1 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator;
  [*&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator;
  [*&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [*&v0[v1] bottomAnchor];
  v4 = [v0 bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  v37 = v2;
  v6 = [*&v0[v2] topAnchor];
  v7 = [v0 topAnchor];
  v36 = [v6 constraintEqualToAnchor:v7];

  v39 = &type metadata for SolariumFeatureFlag;
  v8 = sub_10000BD04();
  v40 = v8;
  LOBYTE(v7) = isFeatureEnabled(_:)();
  sub_100006060(v38);
  v9 = 0.0;
  if (v7)
  {
    v39 = &type metadata for SolariumFeatureFlag;
    v40 = v8;
    v10 = isFeatureEnabled(_:)();
    sub_100006060(v38);
    v9 = 16.0;
    if ((v10 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v9 = *&qword_1006D4798;
    }
  }

  v34 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1005521F0;
  v12 = [*&v0[v1] heightAnchor];
  v13 = [v12 constraintEqualToConstant:1.0];

  *(v11 + 32) = v13;
  *(v11 + 40) = v5;
  v14 = *&v0[v1];
  v35 = v5;
  v15 = [v14 leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:v9];

  *(v11 + 48) = v17;
  v18 = [*&v0[v1] trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-v9];

  *(v11 + 56) = v20;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1005521F0;
  v23 = [*&v0[v37] heightAnchor];
  v24 = [v23 constraintEqualToConstant:1.0];

  *(v22 + 32) = v24;
  *(v22 + 40) = v36;
  v25 = *&v0[v37];
  v26 = v36;
  v27 = [v25 leadingAnchor];
  v28 = [v0 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v9];

  *(v22 + 48) = v29;
  v30 = [*&v0[v37] trailingAnchor];
  v31 = [v0 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-v9];

  *(v22 + 56) = v32;
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:v33];
}

id sub_100039A04()
{
  v1 = v0;
  sub_100039524();
  v31 = &type metadata for SolariumFeatureFlag;
  v32 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v30);
  v3 = 16.0;
  if ((v2 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v3 = *&qword_1006D4798;
  }

  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v5 = *&v1[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  *(inited + 32) = v5;
  v6 = *&v1[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicator];
  *(inited + 40) = v6;
  v7 = v5;
  v8 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  for (i = v7; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v10 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v11 = *(inited + 40);
      goto LABEL_11;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1005521F0;
  v15 = [v7 topAnchor];
  v16 = [v1 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:15.0];

  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v18) = v30[0];
  [v17 setPriority:{v18, 0x447A00003F800000}];
  *(v14 + 32) = v17;
  v19 = [v7 leadingAnchor];
  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v3];

  *(v14 + 40) = v21;
  v22 = [v7 trailingAnchor];
  v23 = [v1 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v3];

  *(v14 + 48) = v24;
  v25 = [v7 bottomAnchor];
  v26 = [v1 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-15.0];

  *(v14 + 56) = v27;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  return sub_100039DFC();
}

id sub_100039DFC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicator];
  v3 = [v2 constraints];
  sub_10002B27C();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v2 removeConstraint:v7];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (v1[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicatorPosition])
  {
    v34 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100552EE0;
    v11 = [v2 centerYAnchor];
    v12 = [v1 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    type metadata accessor for UILayoutPriority(0);
    sub_1000394CC();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v14) = v35[0];
    [v13 setPriority:v14];
    *(v10 + 32) = v13;
    v15 = [v2 centerXAnchor];
    v16 = [v1 centerXAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    v38 = 1065353216;
    v39 = 1148846080;
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v18) = v35[0];
    [v17 setPriority:v18];
    *(v10 + 40) = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints:isa];

    return [*&v1[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label] setHidden:{v1[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_showActivityIndicator], v34}];
  }

  else
  {
    v36 = &type metadata for SolariumFeatureFlag;
    v37 = sub_10000BD04();
    v21 = isFeatureEnabled(_:)();
    sub_100006060(v35);
    v22 = 16.0;
    if ((v21 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v22 = *&qword_1006D4798;
    }

    v23 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100552EE0;
    v25 = [v2 topAnchor];
    v26 = [v1 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:15.0];

    type metadata accessor for UILayoutPriority(0);
    v38 = 1065353216;
    v39 = 1148846080;
    sub_1000394CC();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v28) = v35[0];
    [v27 setPriority:v28];
    *(v24 + 32) = v27;
    v29 = [v2 trailingAnchor];
    v30 = [v1 trailingAnchor];
    v31 = [v29 constraintLessThanOrEqualToAnchor:v30 constant:-v22];

    *(v24 + 40) = v31;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v23 activateConstraints:v32];

    return [*&v1[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label] setHidden:{0, v33}];
  }
}

void sub_10003A318()
{
  [v0 setBackgroundColor:*&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background]];
  v13 = &type metadata for SolariumFeatureFlag;
  v1 = sub_10000BD04();
  v14 = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v12);
  if ((v2 & 1) == 0)
  {
    v3 = [v0 layer];
    [v3 setShouldRasterize:1];

    v4 = [v0 layer];
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
    v7 = v6;

    [v4 setRasterizationScale:v7];
  }

  v8 = [v0 layer];
  v13 = &type metadata for SolariumFeatureFlag;
  v14 = v1;
  v9 = isFeatureEnabled(_:)();
  sub_100006060(v12);
  v10 = _UISheetCornerRadius;
  if (v9)
  {
    v10 = 26.0;
  }

  [v8 setCornerRadius:v10];

  v11 = [v0 layer];
  [v11 setMasksToBounds:0];
}

void sub_10003A4C0()
{
  if ((v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_isBackgroundColor] & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v1 = [v0 traitCollection];
    v2 = sub_100356E0C(v1);

    v3 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v2;
  }

  sub_10003A318();
}

void sub_10003A640()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy12FMScrollView_content;
  [*&v0[OBJC_IVAR____TtC6FindMy12FMScrollView_content] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [*&v1[v2] topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [*&v1[v2] bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [*&v1[v2] leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [*&v1[v2] trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_10003A898()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconViewContainer];
  v26 = *&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView];
  [v2 addSubview:?];
  v3 = *&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_fixedContainerView];
  v4 = *&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollView];
  [v3 addArrangedSubview:v4];
  v5 = *&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView];
  [v3 addArrangedSubview:v5];
  v6 = *&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView];
  [v6 addArrangedSubview:v2];
  v7 = *&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel];
  [v6 addArrangedSubview:v7];
  v8 = *&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel];
  [v6 addArrangedSubview:v8];
  [v5 addArrangedSubview:*&v1[OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton]];
  LODWORD(v9) = 1132068864;
  [v5 setContentCompressionResistancePriority:1 forAxis:v9];
  [*(v4 + OBJC_IVAR____TtC6FindMy12FMScrollView_content) addSubview:v6];
  [v1 addSubview:v3];
  [v3 setAxis:1];
  [v3 setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  [v3 setLayoutMarginsRelativeArrangement:1];
  LODWORD(v10) = 1132068864;
  [v3 setContentCompressionResistancePriority:1 forAxis:v10];
  [v6 setAxis:1];
  [v6 setAlignment:0];
  [v6 setSpacing:12.0];
  [v6 setDirectionalLayoutMargins:{0.0, 18.0, 0.0, 18.0}];
  [v6 setLayoutMarginsRelativeArrangement:1];
  [v5 setAxis:1];
  [v5 setSpacing:10.0];
  [v5 setDirectionalLayoutMargins:{0.0, 18.0, 0.0, 18.0}];
  [v5 setLayoutMarginsRelativeArrangement:1];
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v12 = v7;
  v13 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v12; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v15 = i;
    [i setNumberOfLines:0];
    [v15 setTextAlignment:1];
    [v15 setAdjustsFontForContentSizeCategory:1];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v16 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v17 = v16;
  [v16 setNumberOfLines:0];
  [v17 setTextAlignment:1];
  [v17 setAdjustsFontForContentSizeCategory:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  v18 = objc_opt_self();
  v19 = [v18 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v20 = sub_100039388(2);

  [v12 setFont:v20];
  v21 = objc_opt_self();
  v22 = [v21 labelColor];
  [v12 setTextColor:v22];

  v23 = [v18 preferredFontForTextStyle:UIFontTextStyleCallout];
  [v13 setFont:v23];

  v24 = [v21 labelColor];
  [v13 setTextColor:v24];

  return [v26 setContentMode:1];
}

void sub_10003AD64()
{
  sub_10003A898();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v21._object = 0x8000000100599C60;
  v4._countAndFlagsBits = 0x4F535245505F4F4ELL;
  v4._object = 0xEF454C5449545F4ELL;
  v21._countAndFlagsBits = 0xD000000000000021;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v21);

  v6 = String._bridgeToObjectiveC()();

  [v1 setText:v6];

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v8 = [v2 mainBundle];
  v22._object = 0x8000000100599CB0;
  v9._object = 0x8000000100599C90;
  v22._countAndFlagsBits = 0xD000000000000023;
  v9._countAndFlagsBits = 0xD000000000000011;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v22);

  v11 = String._bridgeToObjectiveC()();

  [v7 setText:v11];

  v12 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView);
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() imageNamed:v13];

  [v12 setImage:v14];
  v15 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v16 = [v2 mainBundle];
  v23._object = 0x8000000100599D00;
  v17._countAndFlagsBits = 0xD000000000000016;
  v17._object = 0x8000000100599CE0;
  v23._countAndFlagsBits = 0xD000000000000028;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v23);

  v19 = String._bridgeToObjectiveC()();

  [v15 setText:v19];
}

void sub_10003B068()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552200;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_fixedContainerView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollView];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconViewContainer];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView];
  *(inited + 72) = v7;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel];
  *(inited + 80) = v8;
  v107 = v0;
  v9 = *&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel];
  *(inited + 88) = v9;
  v10 = inited & 0xC000000000000001;
  v103 = v2;
  v106 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v104 = v7;
  v14 = v8;
  v15 = v9;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  for (i = *(inited + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v10)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_30;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v10)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_30;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v10)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_30;
      }

      v21 = *(inited + 56);
    }

    v22 = v21;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v10)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_30;
      }

      v23 = *(inited + 64);
    }

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v10)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_30;
      }

      v25 = *(inited + 72);
    }

    v26 = v25;
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v10)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
      {
        goto LABEL_30;
      }

      v27 = *(inited + 80);
    }

    v28 = v27;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v102 = v13;
    if (v10)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 8uLL)
    {
      v29 = *(inited + 88);
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_25:
  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v105 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1005521F0;
  v32 = [v103 leadingAnchor];
  v33 = [v0 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [v103 trailingAnchor];
  v36 = [v0 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = [v103 topAnchor];
  v39 = [v0 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v31 + 48) = v40;
  v41 = [v103 bottomAnchor];
  v42 = [v107 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v44) = v108;
  [v43 setPriority:v44];
  *(v31 + 56) = v43;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v105 activateConstraints:isa];

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100552F00;
  v47 = [v106 leadingAnchor];
  v48 = OBJC_IVAR____TtC6FindMy12FMScrollView_content;
  v49 = [*&v12[OBJC_IVAR____TtC6FindMy12FMScrollView_content] leadingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];

  *(v46 + 32) = v50;
  v51 = [v106 trailingAnchor];
  v52 = [*&v12[v48] trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v46 + 40) = v53;
  v54 = [v106 bottomAnchor];
  v55 = [*&v12[v48] bottomAnchor];
  v56 = [v54 constraintLessThanOrEqualToAnchor:v55];

  *(v46 + 48) = v56;
  v57 = [v106 topAnchor];
  v58 = [*&v12[v48] topAnchor];
  v59 = [v57 constraintGreaterThanOrEqualToAnchor:v58];

  *(v46 + 56) = v59;
  v60 = [v106 widthAnchor];
  v61 = [v107 widthAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  *(v46 + 64) = v62;
  v63 = Array._bridgeToObjectiveC()().super.isa;

  [v105 activateConstraints:v63];

  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100552EE0;
  v65 = [*&v12[v48] widthAnchor];
  v66 = [v12 widthAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v64 + 32) = v67;
  v68 = [*&v12[v48] heightAnchor];
  v69 = [v12 heightAnchor];
  v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69];

  LODWORD(v71) = 1132068864;
  [v70 setPriority:v71];
  *(v64 + 40) = v70;
  v72 = Array._bridgeToObjectiveC()().super.isa;

  [v105 activateConstraints:v72];

  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1005521F0;
  v74 = [v104 centerXAnchor];
  v75 = [v102 centerXAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v73 + 32) = v76;
  v77 = [v104 topAnchor];
  v78 = [v102 topAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v73 + 40) = v79;
  v80 = [v104 bottomAnchor];
  v81 = [v102 bottomAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v73 + 48) = v82;
  v83 = [v104 widthAnchor];
  v84 = [v104 heightAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 multiplier:1.684];

  *(v73 + 56) = v85;
  v86 = Array._bridgeToObjectiveC()().super.isa;

  [v105 activateConstraints:v86];

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v87 = [objc_opt_self() mainScreen];
  [v87 nativeBounds];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;

  v109.origin.x = v89;
  v109.origin.y = v91;
  v109.size.width = v93;
  v109.size.height = v95;
  if (CGRectGetHeight(v109) <= 1136.0)
  {
    v96 = [v104 heightAnchor];
    v97 = [v96 constraintEqualToConstant:70.0];

    [v97 setActive:1];
  }

  v98 = [v106 centerYAnchor];
  v99 = [*&v12[v48] centerYAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];

  v101 = *&v107[OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonCenteringConstraint];
  *&v107[OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonCenteringConstraint] = v100;
}

void sub_10003BCDC()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) addGestureRecognizer:v1];
}

void sub_10003BD5C()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  [v0 frame];
  v5 = v4 > 360.0;
  if (*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_isFirstLayout))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 0.1;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v5;
  *(v8 + 25) = v3 & 1;
  v11[4] = sub_10003C1D4;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100004AE4;
  v11[3] = &unk_100632980;
  v9 = _Block_copy(v11);
  v10 = v0;

  [v7 animateWithDuration:0x20000 delay:v9 options:0 animations:v6 completion:0.0];
  _Block_release(v9);
}

uint64_t sub_10003BEF8()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10003BF30()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  sub_10007EBC0(&qword_1006AFC30);
  if (v1)
  {
    v3 = swift_allocObject();
    v4 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconViewContainer);
    *(v3 + 16) = xmmword_100552EF0;
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
    *(v3 + 32) = v4;
    *(v3 + 40) = v5;
    v6 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
    *(v3 + 48) = v6;
    v7 = v4;
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100552EE0;
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
    v6 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
    *(v3 + 32) = v5;
    *(v3 + 40) = v6;
  }

  v8 = v5;
  v9 = v6;
  return v3;
}

uint64_t sub_10003C050(void *a1, char a2, char a3)
{
  LOBYTE(v3) = a3;
  v5 = (*((swift_isaMask & *a1) + 0xF8))();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    if (a2)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    a2 = v3 & (a2 ^ 1);
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v3 = v10;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v10 setAlpha:v9];
      if ((a2 & 1) != [v3 isHidden])
      {
        [v3 setHidden:?];
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
}

id sub_10003C1E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView);
  [v1 removeFromSuperview];
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v4)
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    [v1 setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing}];
    v9 = &OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView;
    v10 = 18.0;
    v11 = &OBJC_IVAR____TtC6FindMy15FMEmptyListView_fixedContainerView;
    v12 = 18.0;
    v13 = 18.0;
    v14 = 18.0;
  }

  else
  {
    top = 0.0;
    leading = 18.0;
    [v1 setDirectionalLayoutMargins:{0.0, 18.0, 0.0, 18.0}];
    v9 = &OBJC_IVAR____TtC6FindMy15FMEmptyListView_fixedContainerView;
    v11 = &OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView;
    v10 = 12.0;
    bottom = 0.0;
    trailing = 18.0;
    v12 = 0.0;
    v13 = 18.0;
    v14 = 0.0;
  }

  [*(v0 + *v11) setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
  v15 = *(v0 + *v9);
  [v15 setDirectionalLayoutMargins:{v10, v12, v13, v14}];
  [*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonCenteringConstraint) setActive:v4 & 1];

  return [v15 addArrangedSubview:v1];
}

void *sub_10003C3C0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_isVisible) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_isPeopleTab) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_conditionSubcription) = 0;

  v4 = sub_1000383D8(v3);
  v5 = *(a1 + 16);
  v6 = v4;
  v7 = v5;
  v8 = sub_10003C5F4(v6, v7);

  *(v6 + OBJC_IVAR____TtC6FindMy14FMTerminalView_conditionSubcription) = v8;

  sub_10003C718();

  return v6;
}

void sub_10003C490()
{
  v1 = v0;
  sub_10003A898();
  [*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconViewContainer) setHidden:1];
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v5 = sub_100039388(2);

  [v2 setFont:v5];
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v7 = [v3 preferredFontForTextStyle:UIFontTextStyleCallout];
  [v6 setFont:v7];

  v8 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor:v8];
}

uint64_t sub_10003C5F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_10063D7A0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_10003C718()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMTerminalView: Evaluate conditions", v5, 2u);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_13:

      goto LABEL_14;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "FMTerminalView: Skipping conditions since no delegate";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator;
  v7 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 16);
  if (*(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged))
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMTerminalView: Show no managed account state", v10, 2u);
    }

    v11 = 1;
LABEL_36:

    return sub_10040B9A8(v11);
  }

  if ((*(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) & 1) == 0 && *(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) == 1)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMTerminalView: Show no account state", v19, 2u);
    }

    v11 = 2;
    goto LABEL_36;
  }

  if (*(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp) == 1)
  {
    if (*(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize) & 1) != 0 || (*(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize))
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "FMTerminalView: Show no initialization failed", v22, 2u);
      }

      v11 = 5;
      goto LABEL_36;
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "FMTerminalView: No terminal view needed, hiding.";
    goto LABEL_12;
  }

  if (*(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized) != 1 || (*(v7 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized) & 1) == 0)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMTerminalView: Show no network state", v25, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_isPeopleTab) == 1 && *(*(*(v1 + v6) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieServiceState) == 1)
    {
      v11 = 4;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_36;
  }

LABEL_14:

  return sub_10003CBC4();
}

uint64_t sub_10003CBC4()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMTerminalView: Hide terminal view", v5, 2u);
  }

  [v1 setAlpha:0.0];
  [v1 setUserInteractionEnabled:0];
  [v1 setHidden:1];
  *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_isVisible) = 0;
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state);
  *(v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) = 6;
  if (v6 > 5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      (*((swift_isaMask & *v1) + 0x1E0))(v8);
    }
  }

  v9 = v1 + OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v1, 0, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003CEC0()
{
  sub_10003D290();
  if (*(v0 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) == 2)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return;
    }
  }

  v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v19._object = 0x80000001005894E0;
  v5._countAndFlagsBits = 0xD000000000000017;
  v5._object = 0x80000001005894C0;
  v19._countAndFlagsBits = 0xD000000000000029;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v19);

  v7 = String._bridgeToObjectiveC()();

  [v2 setText:v7];

  v8 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v9 = [v3 mainBundle];
  v20._object = 0x8000000100589530;
  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x8000000100589510;
  v20._countAndFlagsBits = 0xD00000000000002BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v20);

  v12 = String._bridgeToObjectiveC()();

  [v8 setText:v12];

  v13 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v14 = [v3 mainBundle];
  v21._object = 0x8000000100584530;
  v15._object = 0x8000000100584510;
  v21._countAndFlagsBits = 0xD000000000000023;
  v15._countAndFlagsBits = 0xD000000000000011;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

  v17 = String._bridgeToObjectiveC()();

  [v13 setText:v17];
}

void sub_10003D290()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state);
  if (v1 <= 2)
  {
    if (!*(v0 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state))
    {
      return;
    }

    if (v1 == 1)
    {
      v14 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
      v15 = objc_opt_self();
      v16 = [v15 mainBundle];
      v17._countAndFlagsBits = 0xD000000000000011;
      v71._object = 0x8000000100597020;
      v17._object = 0x8000000100597000;
      v71._countAndFlagsBits = 0xD000000000000023;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v71);

      v19 = String._bridgeToObjectiveC()();

      [v14 setText:v19];

      v20 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
      v21 = [v15 mainBundle];
      v72._object = 0x8000000100597070;
      v22._countAndFlagsBits = 0xD000000000000013;
      v22._object = 0x8000000100597050;
      v72._countAndFlagsBits = 0xD000000000000025;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v72);

      v24 = String._bridgeToObjectiveC()();

      [v20 setText:v24];

      v12 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
      v25 = [v15 mainBundle];
      v66 = 0x80000001005970C0;
      v26 = 0x80000001005970A0;
      v27 = 0xD000000000000024;
      v28 = 0xD000000000000012;
LABEL_17:
      v61 = 0;
      v60 = 0;
      goto LABEL_18;
    }

    v40 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
    v41 = objc_opt_self();
    v42 = [v41 mainBundle];
    v43._countAndFlagsBits = 0xD000000000000010;
    v75._object = 0x8000000100597110;
    v43._object = 0x80000001005970F0;
    v75._countAndFlagsBits = 0xD000000000000022;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v75);

    v45 = String._bridgeToObjectiveC()();

    [v40 setText:v45];

    if (FMIPItemsTabEnabled.getter())
    {
      v46 = [v41 mainBundle];
      v67 = 0x8000000100579A00;
      v47 = 0x8000000100597140;
      v48 = 0xD000000000000013;
      v49 = 0x80000001005799E0;
      v50 = 0xD000000000000018;
      v51 = 0xD000000000000012;
    }

    else
    {
      v46 = [v41 mainBundle];
      v67 = 0x8000000100597160;
      v47 = 0x8000000100597140;
      v50 = 0xD000000000000024;
      v51 = 0xD000000000000012;
      v48 = 0;
      v49 = 0;
    }

    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v51, *&v48, v46, v62, *&v50);

    v63 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
    v64 = String._bridgeToObjectiveC()();

    [v63 setText:v64];

    v10 = "NO_ACCOUNT_MESSAGE_ITEMS";
    v11 = 0x8000000100584530;
    v12 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v13 = [v41 mainBundle];
LABEL_16:
    v25 = v13;
    v28 = 0xD000000000000011;
    v66 = v11;
    v26 = v10 | 0x8000000000000000;
    v27 = 0xD000000000000023;
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) > 4u)
  {
    if (v1 != 5)
    {
      return;
    }

    v29 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
    v30 = objc_opt_self();
    v31 = [v30 mainBundle];
    v73._object = 0x800000010058A600;
    v32._object = 0xED0000454C544954;
    v73._countAndFlagsBits = 0xD00000000000001FLL;
    v32._countAndFlagsBits = 0x5F4552554C494146;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v73);

    v34 = String._bridgeToObjectiveC()();

    [v29 setText:v34];

    v35 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
    v36 = [v30 mainBundle];
    v74._object = 0x800000010057D450;
    v37._object = 0xEF4547415353454DLL;
    v74._countAndFlagsBits = 0xD000000000000021;
    v37._countAndFlagsBits = 0x5F4552554C494146;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v74);

    v39 = String._bridgeToObjectiveC()();

    [v35 setText:v39];

    v12 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v25 = [v30 mainBundle];
    v66 = 0x8000000100596ED0;
    v26 = 0xEE004E4F49544341;
    v27 = 0xD000000000000020;
    v28 = 0x5F4552554C494146;
    goto LABEL_17;
  }

  if (v1 == 3)
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
    v3 = objc_opt_self();
    v4 = [v3 mainBundle];
    v5._countAndFlagsBits = 0xD000000000000010;
    v70._object = 0x8000000100596F20;
    v5._object = 0x8000000100596F00;
    v70._countAndFlagsBits = 0xD000000000000022;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v70);

    v7 = String._bridgeToObjectiveC()();

    [v2 setText:v7];

    v8 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
    sub_10022EF6C(0xD000000000000012, 0x8000000100596F90);
    v9 = String._bridgeToObjectiveC()();

    [v8 setText:v9];

    v10 = "NO_NETWORK_MESSAGE";
    v11 = 0x8000000100596FD0;
    v12 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v13 = [v3 mainBundle];
    goto LABEL_16;
  }

  v52 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v53 = objc_opt_self();
  v54 = [v53 mainBundle];
  v55._countAndFlagsBits = 0xD000000000000010;
  v76._object = 0x8000000100596F20;
  v55._object = 0x8000000100596F00;
  v76._countAndFlagsBits = 0xD000000000000022;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v76);

  v57 = String._bridgeToObjectiveC()();

  [v52 setText:v57];

  v58 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  sub_10022F844(0xD000000000000019, 0x8000000100596F50);
  v59 = String._bridgeToObjectiveC()();

  [v58 setText:v59];

  v12 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v25 = [v53 mainBundle];
  v66 = 0x800000010057FD20;
  v28 = 0xD000000000000018;
  v26 = 0x8000000100596F70;
  v60 = 0x800000010057FD00;
  v27 = 0xD000000000000017;
  v61 = 0xD000000000000012;
LABEL_18:
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v28, *&v61, v25, v65, *&v27);

  v68 = String._bridgeToObjectiveC()();

  [v12 setText:v68];
}

id sub_10003DCB0(char a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMListViewController: FMTerminalView didUpdate visibility: %{BOOL}d", v7, 8u);
  }

  if (a1)
  {
    [*(v2 + qword_1006BA980) setHidden:1];
    sub_1002D62B4(1);
    [*(v2 + qword_1006BA9A0) setHidden:1];
  }

  *(v2 + qword_1006BA9E8) = a1 & 1;

  return sub_10003DE2C(0xD000000000000015, 0x800000010058E1F0);
}

id sub_10003DE2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = swift_isaMask & *v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100005B4C(a1, a2, &v34);
    _os_log_impl(&_mh_execute_header, v8, v9, "FMListViewController: reevaluateEmptyStateVisibility reason: %s", v10, 0xCu);
    sub_100006060(v11);
  }

  if (v3[qword_1006BA9E8] == 1 && v3[qword_1006BA9F0] != 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMListViewController: Not refreshing view state because terminal view is showing", v14, 2u);
    }

    goto LABEL_17;
  }

  if (!(*((swift_isaMask & **&v3[qword_1006BA988]) + 0x1B0))())
  {

LABEL_14:
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMListViewController: Not refreshing view state because we're still waiting for terminal view to decide it's state.", v18, 2u);
    }

    sub_1002D62B4(1);
LABEL_17:

    return sub_10004B5A0();
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_14;
  }

  v20 = *(v6 + 120);
  v21 = *(v20 + 64);
  v22 = *(v6 + 96);
  if ((v21(v22, v20) & 1) != 0 && v3[qword_1006BA9D8] == 1)
  {
    sub_10004B5A0();
    v23 = sub_10004B5BC();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v23 & 1;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMListViewController: data source empty? %{BOOL}d", v26, 8u);
    }

    if (v23)
    {
      sub_1002D6074();
    }

    else
    {
      sub_10004B7F0();
    }

    return sub_10003F3B4();
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMListViewController: Won't update state since data source didn't finish initializing:", v29, 2u);
    }

    v30 = v3;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109376;
      *(v33 + 4) = v21(v22, v20) & 1;
      *(v33 + 8) = 1024;
      *(v33 + 10) = *(&v30->isa + qword_1006BA9D8);

      _os_log_impl(&_mh_execute_header, v31, v32, "FMListViewController: isInitialized: %{BOOL}d didReceiveValidDataSourceUpdate: %{BOOL}d", v33, 0xEu);
    }

    else
    {

      v31 = v30;
    }

    sub_1002D62B4(1);
    return sub_10003E678();
  }
}

uint64_t sub_10003E4E0()
{

  v0 = dispatch thunk of FMFManager.isInitialized.getter();

  return v0 & 1;
}

id sub_10003E52C(const char *a1, char a2, char a3, const char **a4)
{
  v9 = v4;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
  }

  v14 = *(v9 + qword_1006BA9A0);
  [v14 setUserInteractionEnabled:a2 & 1];
  [v14 setHidden:a3 & 1];
  v15 = *&v14[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator];
  v16 = *a4;

  return [v15 v16];
}

void sub_10003E6A4(void *a1, char *a2, void *a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    sub_10004184C();
    [a2 addChildViewController:a1];
    v8 = *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
    v34 = &type metadata for SolariumFeatureFlag;
    v9 = sub_10000BD04();
    v35 = v9;
    v10 = isFeatureEnabled(_:)();
    sub_100006060(v33);
    if (v10)
    {
      v11 = *(v8 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView);
    }

    else
    {
      v11 = [*(v8 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground) contentView];
    }

    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v7 setFrame:{v14, v16, v18, v20}];
    [v7 setAutoresizingMask:18];
    [v7 setPreservesSuperviewLayoutMargins:1];
    v34 = &type metadata for SolariumFeatureFlag;
    v35 = v9;
    LOBYTE(v12) = isFeatureEnabled(_:)();
    sub_100006060(v33);
    if (v12)
    {
      v21 = *(v8 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView);
    }

    else
    {
      v21 = [*(v8 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground) contentView];
    }

    v22 = v21;
    [v21 addSubview:v7];

    v34 = &type metadata for SolariumFeatureFlag;
    v35 = v9;
    LOBYTE(v22) = isFeatureEnabled(_:)();
    sub_100006060(v33);
    if (v22)
    {
      v23 = *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
      v24 = *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar + 8];
      v25 = v23;
      sub_100457D40(v23, v24);
    }

    [a1 didMoveToParentViewController:a2];
    v26 = a1;
    sub_100048E34(a1, a3);
    [v7 layoutIfNeeded];
    sub_1000490B0();
    sub_1000493F8(0, v27);
    sub_1000490B0();
    v29 = v28;
    v34 = &type metadata for SolariumFeatureFlag;
    v35 = v9;
    v30 = isFeatureEnabled(_:)();
    sub_100006060(v33);
    v31 = 0.64;
    if (v30)
    {
      v31 = 0.5;
    }

    v32 = v31 - v29;
    if (v32 <= 0.0)
    {
      v32 = 0.0;
    }

    [*&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v32 * *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
  }
}

void sub_10003E9AC(void *a1)
{
  v1 = a1;
  sub_10003E9F4();
}

id sub_10003E9F4()
{
  v3 = *((swift_isaMask & *v0) + 0x60);
  v4 = *((swift_isaMask & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMListViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad", v3, v4);
  sub_10003EAD0();
  sub_10003FC88();
  sub_10003F3B4();
  v1 = *(v0 + qword_1006BA990);
  [v1 setDataSource:*(v0 + qword_1006BA978)];
  [v1 setDelegate:v0];
  return [v1 setSectionHeaderTopPadding:0.0];
}

id sub_10003EAD0()
{
  v1 = v0;
  v54 = swift_isaMask & *v0;
  v55 = *(v0 + qword_1006BA980);
  [v55 setHidden:1];
  v2 = *(v0 + qword_1006BA9E0);
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  v4 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v4];

  v58 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v59 = v5;
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100006060(v57);
  if (v4)
  {
    sub_10018D020(v2);
    v6 = [v2 layer];
    [v6 setCornerRadius:*&v1[qword_1006BA9B0 + 80] * 0.5];
  }

  else
  {
    v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
    v8 = [objc_opt_self() configurationWithFont:v7];

    v6 = v8;
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v6];

    [v2 setImage:v10 forState:0];
    v11 = [v2 imageView];
    if (v11)
    {
      v12 = v11;
      [v11 setContentMode:1];
    }
  }

  [v2 setShowsMenuAsPrimaryAction:1];
  [v2 setPointerInteractionEnabled:1];
  v56 = *&v1[qword_1006BA998];
  sub_1002D4F2C(v56);
  v13 = *&v1[qword_1006BA990];
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v13 setBackgroundColor:v15];

  [v13 setRowHeight:UITableViewAutomaticDimension];
  [v13 setEstimatedSectionHeaderHeight:0.0];
  [v13 setEstimatedSectionFooterHeight:0.0];
  [v13 setEstimatedRowHeight:UITableViewAutomaticDimension];
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  [v13 setContentInset:{0.0, 0.0, *&qword_1006D44F0, 0.0}];
  [v13 _setHeaderAndFooterViewsFloat:0];
  v16 = *&v1[qword_1006BA9A8];
  if (v1[qword_1006BA9B0 + 96])
  {
    v17 = &selRef_separatorColor;
  }

  else
  {
    v17 = &selRef_clearColor;
  }

  v18 = [v14 *v17];
  [v16 setBackgroundColor:v18];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v20 = result;
  v21 = String._bridgeToObjectiveC()();
  [v20 setAccessibilityIdentifier:v21];

  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = result;
  [result addSubview:v13];

  v58 = &type metadata for SolariumFeatureFlag;
  v59 = v5;
  v23 = isFeatureEnabled(_:)();
  sub_100006060(v57);
  p_cache = (&OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator + 16);
  if (v23)
  {
    v53 = v2;
    v25 = [objc_allocWithZone(UITableViewHeaderFooterView) init];
    v26 = *&v1[qword_1006BA9C0];
    *&v1[qword_1006BA9C0] = v25;
    v27 = v25;

    v28 = v27;
    v29 = [v14 clearColor];
    [v28 setBackgroundColor:v29];

    v30 = [objc_allocWithZone(UILabel) init];
    v31 = *&v1[qword_1006BA9C8];
    *&v1[qword_1006BA9C8] = v30;
    v32 = v30;

    sub_1002D4F2C(v32);
    [v56 setHidden:1];
    v33 = [v28 contentView];
    [v33 addSubview:v32];

    sub_1004E6750([v13 setTableHeaderView:v28]);
    v34 = *(v54 + 120);
    v35 = *(v34 + 16);
    v36 = *(v54 + 96);
    v37 = v13;
    v38 = v35(v36, v34);
    v40 = v39;
    v41 = objc_allocWithZone(type metadata accessor for FMScrollPocketView());
    v42 = sub_1001A2204(v37, v38, v40);
    v43 = *&v1[qword_1006BA9B8];
    *&v1[qword_1006BA9B8] = v42;
    v44 = v42;

    result = [v1 view];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v45 = result;
    [result addSubview:v44];

    v2 = v53;
    p_cache = &OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator.cache;
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_28;
  }

  v46 = result;
  [result addSubview:v56];

  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v47 = result;
  [result addSubview:v16];

  result = [v1 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v48 = result;
  [result addSubview:v55];

  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v49 = result;
  [result addSubview:*&v1[qword_1006BA9A0]];

  result = [v1 view];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v50 = result;
  [result addSubview:*&v1[qword_1006BA988]];

  v51 = *(p_cache[311] + v1);
  if (v51)
  {
    [v51 addSubview:v2];
    return sub_10003F3B4();
  }

  result = [v1 view];
  if (result)
  {
    v52 = result;
    [result addSubview:v2];

    return sub_10003F3B4();
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10003F304()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100587640;
  v1._countAndFlagsBits = 0x545F454C504F4550;
  v1._object = 0xEA00000000004241;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_10003F3B4()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  *&v56[24] = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v57 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v56);
  if (v4)
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 96);
    v7 = (*(v5 + 72))(v6, v5);
    v8 = *&v1[qword_1006BA9E0];
    if (v7)
    {
      (*(v5 + 32))(v6, v5);
      *v56 = v6;
      *&v56[8] = *(v2 + 104);
      *&v56[24] = v5;
      v9 = type metadata accessor for FMListViewController();
      v10._rawValue = v8;
      sub_10018CAC4(v10, v9, &off_100634BD0);
    }

    else
    {
      return [*&v1[qword_1006BA9E0] setHidden:1];
    }
  }

  else
  {
    v12 = *(*(*&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn);
    v13 = sub_10004B5BC();
    v14 = 0;
    if ((v13 & 1) == 0 && v12)
    {
      v14 = (*(*(v2 + 120) + 72))(*(v2 + 96));
    }

    v55 = v3;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = sub_100005B14(v15, qword_1006D4630);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v14 & 1;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMListViewController: Base Action Button Visibility: %{BOOL}d", v19, 8u);
    }

    v20 = v1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109632;
      *(v23 + 4) = (*(*(v2 + 120) + 72))(*(v2 + 96)) & 1;

      *(v23 + 8) = 1024;
      *(v23 + 10) = v12;
      *(v23 + 14) = 1024;
      *(v23 + 16) = (v13 & 1) == 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMListViewController: canShowAddButton: %{BOOL}d areAccountsSignedIn: %{BOOL}d dataSourceHasContents: %{BOOL}d", v23, 0x14u);
    }

    else
    {

      v21 = v20;
    }

    v24 = sub_1002D6408();
    v25 = v24;
    v26 = v24 >> 62;
    if (v24 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      children._rawValue = v16;
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = v27 != 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "FMListViewController: hasActions: %{BOOL}d", v30, 8u);
    }

    v31 = v14 & (v27 != 0);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "FMListViewController: Platform Action Button Visibility: %{BOOL}d", v34, 8u);
    }

    *&v56[24] = &type metadata for SolariumFeatureFlag;
    v57 = v55;
    v35 = isFeatureEnabled(_:)();
    sub_100006060(v56);
    if (v35)
    {
      if (v26)
      {
        sub_10000905C(0, &unk_1006BAA80);

        preferredElementSize = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_10000905C(0, &unk_1006BAA80);
        preferredElementSize = v25;
      }

      sub_10000905C(0, &unk_1006AF720);
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      v58.value.super.isa = 0;
      v58.is_nil = 0;
      v38.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v58, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
      v39 = *(v2 + 112);
      *v56 = *(v2 + 96);
      *&v56[16] = v39;
      v40 = type metadata accessor for FMListViewController();
      v41 = sub_10018C298(v40, &off_100634BD0);
      if (v41)
      {
        v42 = v41;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v43 = v38.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    *&v56[24] = &type metadata for SolariumFeatureFlag;
    v57 = v55;
    v44 = isFeatureEnabled(_:)();
    sub_100006060(v56);
    if (v44)
    {

      v45 = *(&v20->isa + qword_1006BA9E0);
      sub_10000905C(0, &unk_1006AF720);
      v46 = [objc_opt_self() mainBundle];
      swift__string._object = 0x80000001005795D0;
      v47._object = 0x80000001005795B0;
      swift__string._countAndFlagsBits = 0xD00000000000002BLL;
      v47._countAndFlagsBits = 0xD000000000000019;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, swift__string);

      v59.value.super.isa = 0;
      v59.is_nil = 0;
      isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v49, 0, v59, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, children).super.super.isa;
    }

    else
    {

      v45 = *(&v20->isa + qword_1006BA9E0);
      if (v26)
      {
        sub_10000905C(0, &unk_1006BAA80);

        v51 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_10000905C(0, &unk_1006BAA80);
        v51 = v25;
      }

      sub_10000905C(0, &unk_1006AF720);
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      v60.value.super.isa = 0;
      v60.is_nil = 0;
      isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, 0, v60, 0, 0xFFFFFFFFFFFFFFFFLL, v51, children).super.super.isa;
    }

    v53 = isa;
    [v45 setMenu:isa];

    return [v45 setHidden:v31 ^ 1u];
  }
}

void sub_10003FC88()
{
  v1 = v0;
  v2 = *&v0[qword_1006BA980];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[qword_1006BA990];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[qword_1006BA9A8];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v1[qword_1006BA998];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v1[qword_1006BA9E0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v245 = *&v1[qword_1006BA9A0];
  [v245 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v1[qword_1006BA988];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v1[qword_1006BA9C0];
  if (v8)
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v9 = *&v1[qword_1006BA9B8];
  if (v9)
  {
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v249 = v3;
  v244 = v7;
  v10 = *&v1[qword_1006BA9C8];
  if (v10)
  {
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v246 = v2;
  v11 = *&v1[qword_1006BA9C0];
  v252 = v4;
  v253 = v5;
  if (v11 && (v12 = *&v1[qword_1006BA9C8]) != 0)
  {
    sub_10007EBC0(&qword_1006AFC30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100555120;
    v14 = v12;
    v15 = v11;
    v16 = v14;
    v17 = [v16 topAnchor];
    v18 = [v15 contentView];
    v19 = [v18 topAnchor];

    v20 = &v1[qword_1006BA9B0];
    v21 = *&v1[qword_1006BA9B0 + 32];
    v22 = [v17 constraintEqualToAnchor:v19 constant:v21];

    *(v13 + 32) = v22;
    v23 = [v16 trailingAnchor];
    v24 = [v15 contentView];
    v25 = [v24 trailingAnchor];

    v26 = -v20[16];
    v27 = [v23 constraintEqualToAnchor:v25 constant:v26];

    *(v13 + 40) = v27;
    v28 = [v16 leadingAnchor];
    v29 = [v15 contentView];
    v30 = [v29 leadingAnchor];

    v31 = v20[14];
    v32 = [v28 constraintEqualToAnchor:v30 constant:v31];

    *(v13 + 48) = v32;
    v33 = [v16 bottomAnchor];

    v34 = [v15 contentView];
    v35 = [v34 bottomAnchor];

    v36 = [v33 constraintEqualToAnchor:v35 constant:-v20[3]];
    *(v13 + 56) = v36;
    v37 = [v253 topAnchor];
    v38 = [v1 view];
    if (!v38)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v39 = v38;
    v40 = [v38 topAnchor];

    v41 = [v37 constraintEqualToAnchor:v40 constant:v21];
    *(v13 + 64) = v41;
    v42 = [v253 leadingAnchor];
    v43 = [v1 view];
    if (!v43)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v44 = v43;
    v45 = [v43 leadingAnchor];

    v46 = [v42 constraintEqualToAnchor:v45 constant:v31];
    *(v13 + 72) = v46;
    v47 = [v253 trailingAnchor];
    v48 = [v1 view];
    if (!v48)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v49 = v48;
    v50 = objc_opt_self();
    v51 = [v49 trailingAnchor];

    v52 = [v47 constraintEqualToAnchor:v51 constant:v26];
    *(v13 + 80) = v52;
    sub_10000905C(0, &qword_1006B3A70);
    v53.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:v53.super.isa];

    v54 = v6;
  }

  else
  {
    sub_10007EBC0(&qword_1006AFC30);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100552EE0;
    v56 = [v5 topAnchor];
    v57 = [v1 view];
    if (!v57)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v58 = v57;
    v59 = [v57 topAnchor];

    v60 = [v56 constraintEqualToAnchor:v59 constant:*&v1[qword_1006BA9B0 + 32]];
    *(v55 + 32) = v60;
    v61 = [v5 leadingAnchor];
    v62 = [v1 view];
    if (!v62)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v63 = v62;
    v64 = objc_opt_self();
    v65 = [v63 layoutMarginsGuide];

    v66 = [v65 leadingAnchor];
    v67 = [v61 constraintEqualToAnchor:v66];

    *(v55 + 40) = v67;
    sub_10000905C(0, &qword_1006B3A70);
    v53.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v64 activateConstraints:v53.super.isa];
    v54 = v6;
  }

  v68 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_100552EE0;
  v70 = [v54 widthAnchor];
  v71 = &v1[qword_1006BA9B0];
  v72 = [v70 constraintEqualToConstant:*&v1[qword_1006BA9B0 + 80]];

  *(v69 + 32) = v72;
  v73 = [v54 heightAnchor];
  v247 = v71;
  v74 = [v73 constraintEqualToConstant:v71[11]];

  *(v69 + 40) = v74;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:isa];

  v256 = &type metadata for SolariumFeatureFlag;
  v250 = sub_10000BD04();
  v257 = v250;
  LOBYTE(isa) = isFeatureEnabled(_:)();
  sub_100006060(v255);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_100552EE0;
  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  v254 = v68;
  if (isa)
  {
    v78 = [v54 topAnchor];
    v79 = [v1 view];
    if (!v79)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v80 = v79;
    v81 = v54;
    v82 = [v79 topAnchor];

    v83 = v247;
    v84 = [v78 constraintEqualToAnchor:v82 constant:v247[6]];

    *(v76 + 32) = v84;
    v85 = [v81 trailingAnchor];
    v86 = [v1 view];
    if (!v86)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v87 = v86;
    v88 = [v86 trailingAnchor];

    v89 = [v85 constraintEqualToAnchor:v88 constant:-v247[9]];
    v90 = (&LocateDeviceIntentResponse__metaData + 16);
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  }

  else
  {
    v91 = [v54 centerYAnchor];
    v92 = [v253 centerYAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];

    *(v76 + 32) = v93;
    v85 = [v54 trailingAnchor];
    v94 = [v1 view];
    if (!v94)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v95 = v94;
    v96 = [v94 layoutMarginsGuide];

    v88 = [v96 trailingAnchor];
    v83 = v247;
    v89 = [v85 constraintEqualToAnchor:v88 constant:v247[9]];
    v90 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  v97 = v89;

  *(v76 + 40) = v97;
  v98 = Array._bridgeToObjectiveC()().super.isa;

  [v254 activateConstraints:v98];

  v99 = p_ivar_lyt[429];
  v100 = v4;
  v101 = [v4 v99];
  v102 = [v253 v90[430]];
  v103 = [v101 constraintEqualToAnchor:v102 constant:v83[3]];

  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1005521F0;
  *(v104 + 32) = v103;
  v248 = v103;
  v105 = [v252 leadingAnchor];
  v106 = [v1 view];
  if (!v106)
  {
    __break(1u);
    goto LABEL_52;
  }

  v107 = v106;
  v108 = [v106 leadingAnchor];

  v109 = [v105 constraintEqualToAnchor:v108];
  *(v104 + 40) = v109;
  v110 = [v252 trailingAnchor];
  v111 = [v1 view];
  if (!v111)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v112 = v111;
  v113 = [v111 trailingAnchor];

  v114 = [v110 constraintEqualToAnchor:v113];
  *(v104 + 48) = v114;
  v115 = [v252 heightAnchor];
  v116 = [objc_opt_self() mainScreen];
  [v116 scale];
  v118 = v117;

  v119 = [v115 constraintEqualToConstant:1.0 / v118];
  *(v104 + 56) = v119;
  v120 = Array._bridgeToObjectiveC()().super.isa;

  [v254 activateConstraints:v120];

  v256 = &type metadata for SolariumFeatureFlag;
  v257 = v250;
  v121 = isFeatureEnabled(_:)();
  sub_100006060(v255);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1005521F0;
  if ((v121 & 1) == 0)
  {
    v165 = [v249 topAnchor];
    v166 = [v252 v90[430]];
    v167 = [v165 constraintEqualToAnchor:v166];

    *(v122 + 32) = v167;
    v168 = [v249 leadingAnchor];
    v169 = [v1 view];
    if (!v169)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v170 = v169;
    v171 = [v169 leadingAnchor];

    v172 = [v168 constraintEqualToAnchor:v171];
    *(v122 + 40) = v172;
    v173 = [v249 trailingAnchor];
    v174 = [v1 view];
    if (!v174)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v175 = v174;
    v176 = [v174 trailingAnchor];

    v177 = [v173 constraintEqualToAnchor:v176];
    *(v122 + 48) = v177;
    v178 = [v249 v90[430]];
    v179 = [v1 view];
    if (!v179)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v180 = v179;
    v181 = [v179 v90[430]];

    v182 = [v178 constraintEqualToAnchor:v181];
    type metadata accessor for UILayoutPriority(0);
    sub_1000394CC();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v183) = v255[0];
    [v182 setPriority:v183];
    *(v122 + 56) = v182;
    v164.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v254 activateConstraints:v164.super.isa];
    v146 = v246;
    goto LABEL_38;
  }

  v123 = [v249 topAnchor];
  v124 = [v1 view];
  if (!v124)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v125 = v124;
  v126 = [v124 topAnchor];

  v127 = [v123 constraintEqualToAnchor:v126];
  *(v122 + 32) = v127;
  v128 = [v249 leadingAnchor];
  v129 = [v1 view];
  if (!v129)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v130 = v129;
  v131 = [v129 leadingAnchor];

  v132 = [v128 constraintEqualToAnchor:v131];
  *(v122 + 40) = v132;
  v133 = [v249 trailingAnchor];
  v134 = [v1 view];
  if (!v134)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v135 = v134;
  v136 = [v134 trailingAnchor];

  v137 = [v133 constraintEqualToAnchor:v136];
  *(v122 + 48) = v137;
  v138 = [v249 v90[430]];
  v139 = [v1 view];
  if (!v139)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v140 = v139;
  v141 = [v139 v90[430]];

  v142 = [v138 constraintEqualToAnchor:v141];
  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v143) = v255[0];
  [v142 setPriority:v143];
  *(v122 + 56) = v142;
  v144 = Array._bridgeToObjectiveC()().super.isa;

  [v254 activateConstraints:v144];

  v145 = *&v1[qword_1006BA9B8];
  v146 = v246;
  v100 = v252;
  if (!v145)
  {
LABEL_39:
    v256 = &type metadata for SolariumFeatureFlag;
    v257 = v250;
    v184 = isFeatureEnabled(_:)();
    sub_100006060(v255);
    v185 = 0.0;
    if ((v184 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v185 = *(&xmmword_1006D4720 + 1);
    }

    v186 = swift_allocObject();
    *(v186 + 16) = xmmword_1005521F0;
    v187 = [v146 topAnchor];
    v188 = [v100 v90[430]];
    v189 = [v187 constraintEqualToAnchor:v188];

    *(v186 + 32) = v189;
    v190 = [v146 leadingAnchor];
    v191 = [v1 view];
    if (v191)
    {
      v192 = v191;
      v193 = [v191 leadingAnchor];

      v194 = [v190 constraintEqualToAnchor:v193];
      *(v186 + 40) = v194;
      v195 = [v146 trailingAnchor];
      v196 = [v1 view];
      if (v196)
      {
        v197 = v196;
        v198 = [v196 trailingAnchor];

        v199 = [v195 constraintEqualToAnchor:v198];
        *(v186 + 48) = v199;
        v200 = [v146 v90[430]];
        v201 = [v1 view];
        if (v201)
        {
          v202 = v201;
          v203 = [v201 safeAreaLayoutGuide];

          v204 = [v203 v90[430]];
          v205 = -v185;
          v206 = [v200 constraintGreaterThanOrEqualToAnchor:v204 constant:v205];

          *(v186 + 56) = v206;
          v207 = Array._bridgeToObjectiveC()().super.isa;

          [v254 activateConstraints:v207];

          v208 = [v245 centerYAnchor];
          v209 = [v249 centerYAnchor];
          v210 = [v208 constraintEqualToAnchor:v209 constant:v205];

          LODWORD(v211) = 1144750080;
          [v210 setPriority:v211];
          v212 = swift_allocObject();
          *(v212 + 16) = xmmword_100552EF0;
          v213 = [v245 topAnchor];
          v214 = [v249 topAnchor];
          v215 = v90;
          v216 = [v213 constraintGreaterThanOrEqualToAnchor:v214];

          *(v212 + 32) = v216;
          v217 = [v245 centerXAnchor];
          v218 = [v1 view];
          if (v218)
          {
            v219 = v218;
            v220 = [v218 centerXAnchor];

            v221 = [v217 constraintEqualToAnchor:v220];
            *(v212 + 40) = v221;
            *(v212 + 48) = v210;
            v251 = v210;
            v222 = Array._bridgeToObjectiveC()().super.isa;

            [v254 activateConstraints:v222];

            v223 = swift_allocObject();
            *(v223 + 16) = xmmword_1005521F0;
            v224 = [v244 topAnchor];
            v225 = [v252 v215[430]];
            v226 = [v224 constraintEqualToAnchor:v225];

            *(v223 + 32) = v226;
            v227 = [v244 leadingAnchor];
            v228 = [v1 view];
            if (v228)
            {
              v229 = v228;
              v230 = [v228 leadingAnchor];

              v231 = [v227 constraintEqualToAnchor:v230];
              *(v223 + 40) = v231;
              v232 = [v244 trailingAnchor];
              v233 = [v1 view];
              if (v233)
              {
                v234 = v233;
                v235 = [v233 trailingAnchor];

                v236 = [v232 constraintEqualToAnchor:v235];
                *(v223 + 48) = v236;
                v237 = [v244 bottomAnchor];
                v238 = [v1 view];
                if (v238)
                {
                  v239 = v238;
                  v240 = [v238 safeAreaLayoutGuide];

                  v241 = [v240 bottomAnchor];
                  v242 = [v237 constraintGreaterThanOrEqualToAnchor:v241 constant:v205];

                  *(v223 + 56) = v242;
                  v243 = Array._bridgeToObjectiveC()().super.isa;

                  [v254 activateConstraints:v243];

                  return;
                }

                goto LABEL_59;
              }

LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_100552EF0;
  v148 = v145;
  v149 = [v148 topAnchor];
  v150 = [v1 view];
  if (!v150)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v151 = v150;
  v152 = [v150 topAnchor];

  v153 = [v149 constraintEqualToAnchor:v152];
  *(v147 + 32) = v153;
  v154 = [v148 leadingAnchor];
  v155 = [v1 view];
  if (!v155)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v156 = v155;
  v157 = [v155 leadingAnchor];

  v158 = [v154 constraintEqualToAnchor:v157];
  *(v147 + 40) = v158;
  v159 = [v148 trailingAnchor];

  v160 = [v1 view];
  if (v160)
  {
    v161 = v160;
    v162 = [v160 trailingAnchor];

    v163 = [v159 constraintEqualToAnchor:v162];
    *(v147 + 48) = v163;
    v164.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v254 activateConstraints:v164.super.isa];

    v90 = (&LocateDeviceIntentResponse__metaData + 16);
    v100 = v252;
LABEL_38:

    goto LABEL_39;
  }

LABEL_77:
  __break(1u);
}

id sub_10004184C()
{
  v1 = [v0 childViewControllers];
  sub_10000905C(0, &qword_1006B87E0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController:0];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1000419C8()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = [v2 leadingAnchor];
    v4 = [v0 leadingAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:-8.0];

    v6 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint;
    v7 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint];
    *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint] = v5;

    v8 = [v2 trailingAnchor];
    v9 = [v0 trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:8.0];

    v11 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint;
    v12 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint];
    *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint] = v10;

    v13 = [v2 bottomAnchor];
    v14 = [v0 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-8.0];

    v16 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint;
    v17 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint];
    *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint] = v15;

    v18 = *&v0[v6];
    if (v18)
    {
      [v18 setActive:1];
    }

    v19 = *&v0[v11];
    if (v19)
    {
      [v19 setActive:1];
    }

    v20 = *&v0[v16];
    if (v20)
    {
      [v20 setActive:1];
    }

    v21 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1005528C0;
    v23 = [v2 heightAnchor];
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }

    v24 = [v23 constraintEqualToConstant:*&xmmword_1006D4380];

    *(v22 + 32) = v24;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v21 activateConstraints:isa];
  }

  else
  {
    v25 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint];
    if (v25)
    {
      [v25 setActive:0];
    }

    v26 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint];
    if (v26)
    {
      [v26 setActive:0];
    }

    v27 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint];
    if (v27)
    {

      [v27 setActive:0];
    }
  }
}

void sub_100041D78(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100041DE4(a3);
}

void sub_100041DE4(uint64_t a1)
{
  v2 = v1;
  v16 = *((swift_isaMask & *v2) + 0x60);
  v17 = *((swift_isaMask & *v2) + 0x70);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FMListViewController();
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", a1, v16, v17);
  v4 = [v2 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      if (qword_1006AEBD0 != -1)
      {
        swift_once();
      }

      left = *(&xmmword_1006D4500 + 1);
      top = 0.0;
      bottom = 0.0;
      right = *(&xmmword_1006D4500 + 1);
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v10 = type metadata accessor for Logger();
      sub_100005B14(v10, qword_1006D4630);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "FMListViewController: unhandled trait collection size class", v13, 2u);
      }
    }
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    [v14 setLayoutMargins:{top, left, bottom, right}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100042030(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_10004253C(v6, a4);
  v9 = v8;

  return v9;
}

id sub_100042090(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = type metadata accessor for UIListContentConfiguration.TextProperties.TextTransform();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  v14 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v13];

  if (v14)
  {
    v39 = v10;
    static UIListContentConfiguration.groupedHeader()();
    v15 = *(v3 + qword_1006BA978);
    v16 = [v15 respondsToSelector:"tableView:titleForHeaderInSection:"];
    v40 = a1;
    v38 = a2;
    if (v16)
    {
      v17 = [v15 tableView:a1 titleForHeaderInSection:a2];
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    UIListContentConfiguration.text.setter();
    v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    sub_100039388(2);

    v20 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v20(v42, 0);
    v21 = [objc_opt_self() secondaryLabelColor];
    v22 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v22(v42, 0);
    (*(v6 + 104))(v8, enum case for UIListContentConfiguration.TextProperties.TextTransform.none(_:), v41);
    v23 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.transform.setter();
    v23(v42, 0);
    v24 = *(v3 + qword_1006BA9B0 + 136);
    v25 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *(v26 + 8) = v24;
    v25(v42, 0);
    v42[3] = v9;
    v42[4] = &protocol witness table for UIListContentConfiguration;
    v27 = sub_100008FC0(v42);
    v28 = v39;
    (*(v39 + 16))(v27, v12, v9);
    UITableViewHeaderFooterView.contentConfiguration.setter();
    v29 = v40;
    v30 = [v40 dataSource];
    v31 = v38;
    if (v30)
    {
      ObjectType = swift_getObjectType();
      v33 = swift_conformsToProtocol2();
      if (v33)
      {
        v34 = (*(v33 + 144))(v29, v31, ObjectType, v33);
        swift_unknownObjectRelease();
        (*(v28 + 8))(v12, v9);
        if (v34)
        {
          return v14;
        }

        goto LABEL_14;
      }

      swift_unknownObjectRelease();
    }

    if (v31)
    {
      v35 = [v29 numberOfSections];
      (*(v28 + 8))(v12, v9);
      if (v35 > 1)
      {
        return v14;
      }
    }

    else
    {
      (*(v28 + 8))(v12, v9);
    }

LABEL_14:

    return 0;
  }

  return v14;
}

id sub_10004253C(void *a1, uint64_t a2)
{
  v4 = sub_100042090(a1, a2);
  if (v4)
  {
    v5 = v4;
    [v4 sizeToFit];
    [v5 frame];
  }

  result = [a1 dataSource];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      (*(v8 + 144))(a1, a2, ObjectType, v8);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100042790(uint64_t a1)
{
  if (!*(*(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_fenceCellModels) + 16))
  {
    return 0;
  }

  if (a1 == 2)
  {
    v2 = [objc_opt_self() mainBundle];
    v9 = 0x800000010059E730;
    v4 = 0x800000010059E710;
    v5 = 0xD00000000000002DLL;
    v3 = 0xD00000000000001BLL;
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v9 = 0x800000010059E790;
  v3 = 0xD000000000000029;
  v4 = 0x800000010059E760;
  v5 = 0xD00000000000003BLL;
LABEL_7:
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10004290C(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v2 = v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
      swift_beginAccess();
      return *(*v2 + 16);
    case 1:
      v2 = v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_fenceCellModels;
      return *(*v2 + 16);
    case 0:
      v2 = v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_meCellViewModel;
      return *(*v2 + 16);
  }

  return 0;
}

void sub_1000429BC(void *a1)
{
  v1 = a1;
  sub_100042A04();
}

uint64_t sub_100042A04()
{
  v1 = *((swift_isaMask & *v0) + 0x70);
  v4 = *((swift_isaMask & *v0) + 0x60);
  v5 = v1;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FMListViewController();
  objc_msgSendSuper2(&v7, "viewDidLayoutSubviews", v4, v5);
  sub_10052AE74();
  *(&v5 + 1) = &type metadata for SolariumFeatureFlag;
  v6 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  result = sub_100006060(&v4);
  if (v2)
  {
    return sub_1004E6750(result);
  }

  return result;
}

id sub_100042C90(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  (*(v7 + 16))(v9, a2, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = a2;
    v16 = a1;
    v17 = v15;
    v34[0] = v15;
    *v14 = 136315138;
    v18 = IndexPath.debugDescription.getter();
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_100005B4C(v18, v20, v34);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMPeopleListDataSource: cell for row at %s", v14, 0xCu);
    sub_100006060(v17);
    a1 = v16;
    a2 = v32;

    v3 = v33;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v22 = IndexPath.section.getter();
  if (v22 == 2)
  {
    v26 = IndexPath.row.getter();
    v27 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
    result = swift_beginAccess();
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v29 = *(v3 + v27);
      if (v26 < *(v29 + 16))
      {
        type metadata accessor for FMPeopleCellViewModel();
        v23 = String._bridgeToObjectiveC()();

        v24.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v25 = [a1 dequeueReusableCellWithIdentifier:v23 forIndexPath:v24.super.isa];
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    if (v22 <= 1)
    {
      v23 = String._bridgeToObjectiveC()();
      v24.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v25 = [a1 dequeueReusableCellWithIdentifier:v23 forIndexPath:v24.super.isa];
LABEL_12:
      v30 = v25;

      sub_10004540C(a1, v30, a2);
      return v30;
    }

    return [objc_allocWithZone(UITableViewCell) init];
  }

  return result;
}

void *sub_1000430F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100043140(a3, a4, v6);
}

void *sub_100043140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_1006B7268;
  *&v3[v6] = [objc_allocWithZone(NUIContainerStackView) init];
  v7 = qword_1006B7270;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for FMTableViewCellImageContainer()) init];
  v8 = qword_1006B7278;
  *&v3[v8] = [objc_allocWithZone(NUIContainerStackView) init];
  v9 = qword_1006B7280;
  *&v3[v9] = [objc_allocWithZone(NUIContainerStackView) init];
  v10 = qword_1006B7288;
  *&v3[v10] = [objc_allocWithZone(NUIContainerStackView) init];
  v11 = qword_1006B7290;
  *&v3[v11] = [objc_allocWithZone(UILabel) init];
  v12 = qword_1006B7298;
  type metadata accessor for FMSubtitleLabel();
  *&v3[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = qword_1006B72A0;
  *&v3[v13] = [objc_allocWithZone(UILabel) init];
  v14 = qword_1006B72A8;
  *&v3[v14] = [objc_allocWithZone(type metadata accessor for FMBatteryView()) init];
  v15 = qword_1006B72B0;
  *&v3[v15] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v16 = qword_1006B72B8;
  *&v3[v16] = [objc_allocWithZone(UIView) init];
  v17 = qword_1006B72C0;
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18];

  v20 = [objc_allocWithZone(UIImageView) initWithImage:v19];
  *&v3[v17] = v20;
  v3[qword_1006B72C8] = 0;
  v3[qword_1006B72D0] = 0;
  v3[qword_1006B72D8] = 0;
  v3[qword_1006B72E0] = 0;
  if (a3)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v27.receiver = v3;
  v27.super_class = type metadata accessor for FMListTableViewCell();
  v22 = objc_msgSendSuper2(&v27, "initWithStyle:reuseIdentifier:", a1, v21);

  v23 = *((swift_isaMask & *v22) + 0x178);
  v24 = v22;
  v25 = v23();
  (*((swift_isaMask & *v24) + 0x180))(v25);

  return v24;
}

id sub_1000434E4()
{
  v1 = &v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_style];
  *v1 = xmmword_10055CEC0;
  *(v1 + 1) = xmmword_10055CED0;
  *(v1 + 4) = 0x4047000000000000;
  v2 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_maskableContainer;
  *&v0[v2] = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer;
  *&v0[v3] = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView;
  *&v0[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView;
  *&v0[v5] = [objc_allocWithZone(UIImageView) init];
  v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_hasBackplate] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_currentMaskingContext] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMTableViewCellImageContainer();
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100043640();

  return v6;
}

uint64_t sub_100043640()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView];
  [v3 setContentMode:4];
  v4 = [v1 whiteColor];
  [v3 setTintColor:v4];

  v5 = [v3 layer];
  [v5 setCornerRadius:8.0];

  v6 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v6];

  v7 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView];
  v8 = String._bridgeToObjectiveC()();
  [v7 setAccessibilityIdentifier:v8];

  v9 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer];
  [v9 setCornerRadius:22.0];
  [v9 frame];
  [v9 setFrame:?];
  [v0 setHorizontalAlignment:3];
  [v0 setVerticalAlignment:3];
  v10 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_maskableContainer];
  [v0 addArrangedSubview:v10];
  [v0 addArrangedSubview:v3];
  v11 = [v10 layer];
  [v11 addSublayer:v9];

  [v10 addSubview:v7];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100043AFC;
  *(v13 + 24) = v12;
  v17[4] = sub_10000964C;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000095FC;
  v17[3] = &unk_100635198;
  v14 = _Block_copy(v17);
  v15 = v0;

  [v15 performBatchUpdates:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000439C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100043A08(char *a1, double a2, double a3, double a4)
{
  LODWORD(a4) = 1148846080;
  [a1 setLayoutSize:46.0 withContentPriority:{46.0, a4}];
  v5 = *&a1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_maskableContainer];
  [*&a1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer] frame];
  v7 = v6;
  LODWORD(v6) = 1148846080;
  [v5 setLayoutSize:v7 withContentPriority:{v8, v6}];
  v9 = *&a1[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView];
  LODWORD(v10) = 1148846080;
  [v9 setLayoutSize:16.0 withContentPriority:{16.0, v10}];
  [a1 setAlignment:4 forView:v9 inAxis:1];

  return [a1 setAlignment:4 forView:v9 inAxis:0];
}

char *sub_100043BE0()
{
  v1 = [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v1 setIsAccessibilityElement:1];
  v2 = OBJC_IVAR____TtC6FindMy13FMBatteryView_outlineView;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_outlineView]];
  v3 = OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView]];
  v4 = OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView]];
  v5 = *&v1[v2];
  [v1 bounds];
  [v5 setFrame:?];
  [*&v1[v3] setAutoresizingMask:20];
  v6 = *&v1[v4];
  [v1 bounds];
  v9 = v8 + v7 * 0.5 + -1.0;
  [v1 bounds];
  [v6 setCenter:{v9, v11 + v10 * 0.5}];
  v12 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v12];

  return v1;
}

void sub_100043D5C(double a1, double a2, double a3, double a4)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = objc_opt_self();
  v11 = [v10 imageNamed:v9];

  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = OBJC_IVAR____TtC6FindMy13FMBatteryView_outlineView;
  v13 = [v11 imageWithRenderingMode:2];

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  *&v4[v12] = v14;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v10 imageNamed:v15];

  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView;
  v18 = [v16 imageWithRenderingMode:2];

  v19 = [objc_allocWithZone(UIImageView) initWithImage:v18];
  *&v4[v17] = v19;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v10 imageNamed:v20];

  if (v21)
  {
    v22 = OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView;
    v23 = [v21 imageWithRenderingMode:2];

    v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];
    *&v4[v22] = v24;
    v4[OBJC_IVAR____TtC6FindMy13FMBatteryView_isCharging] = 0;
    *&v4[OBJC_IVAR____TtC6FindMy13FMBatteryView_level] = 0;
    v4[OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode] = 0;
    v25.receiver = v4;
    v25.super_class = type metadata accessor for FMBatteryView();
    objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100044010()
{
  sub_100044038();

  return swift_getObjCClassFromMetadata();
}

void sub_100044064()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  v2 = *&v0[qword_1006B72A0];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v2 setFont:v4];

  LODWORD(v5) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = [v0 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  [v2 setTextAlignment:v9];
  v10 = objc_opt_self();
  v11 = [v10 secondaryLabelColor];
  [v2 setTextColor:v11];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v12 = *&v0[qword_1006B7290];
  v13 = [v3 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v12 setFont:v13];

  [v12 setNumberOfLines:0];
  v14 = [v10 labelColor];
  [v12 setTextColor:v14];

  [v12 setAdjustsFontForContentSizeCategory:1];
  v15 = *&v0[qword_1006B7298];
  v16 = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v15 setFont:v16];

  [v15 setNumberOfLines:0];
  v17 = [v10 secondaryLabelColor];
  [v15 setTextColor:v17];

  [v15 setAdjustsFontForContentSizeCategory:1];
  v18 = *&v0[qword_1006B72B0];
  CGAffineTransformMakeScale(&v23, 0.9, 0.9);
  [v18 setTransform:&v23];
  v19 = *&v0[qword_1006B72B8];
  if (qword_1006AEB60 != -1)
  {
    v22 = *&v0[qword_1006B72B8];
    swift_once();
    v19 = v22;
  }

  [v19 setBackgroundColor:qword_1006D4200];
  v20 = *&v0[qword_1006B72C0];
  v21 = [v10 secondaryLabelColor];
  [v20 setTintColor:v21];
}

double sub_100044440()
{
  v0 = [objc_opt_self() effectWithStyle:1100];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.1];

  v4 = [v1 tertiarySystemFillColor];
  v12 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v13 = v5;
  v6 = isFeatureEnabled(_:)();
  sub_100006060(v11);
  if (v6)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = 0.0;
  }

  v12 = &type metadata for SolariumFeatureFlag;
  v13 = v5;
  v8 = isFeatureEnabled(_:)();
  sub_100006060(v11);
  v9 = 8.0;
  if ((v8 & 1) == 0)
  {
    v9 = 0.0;
  }

  xmmword_1006D41B0 = xmmword_100559690;
  unk_1006D41C0 = xmmword_1005596A0;
  xmmword_1006D41D0 = xmmword_1005596B0;
  *&qword_1006D41E0 = xmmword_1005596C0;
  qword_1006D41F0 = 0x404A000000000000;
  unk_1006D41F8 = v0;
  qword_1006D4200 = v3;
  qword_1006D4208 = v4;
  result = 2.0;
  xmmword_1006D4210 = xmmword_1005521A0;
  *&qword_1006D4220 = xmmword_1005596D0;
  qword_1006D4230 = 0x4034000000000000;
  qword_1006D4238 = *&v7;
  qword_1006D4240 = *&v9;
  return result;
}

void sub_1000445C8()
{
  v1 = v0;
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_1006D41D0 + 1);
  v69 = *&xmmword_1006D41D0;
  v3 = *&qword_1006D41E0;
  v4 = unk_1006D41E8;
  v5 = xmmword_1006D4210;
  v6 = *&qword_1006D4220;
  v7 = *&qword_1006D4228;
  v8 = *&qword_1006D4230;
  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  v71 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v11 = [v1 containerView];
  [v11 setAxis:0];
  [v11 setDistribution:2];
  [v11 setAlignment:3];
  [v11 setSpacing:v2];
  v12 = v11;
  [v12 setPreservesSuperviewLayoutMargins:0];
  [v12 setInsetsLayoutMarginsFromSafeArea:0];
  [v12 setDirectionalLayoutMargins:{*(&v5 + 1), v6, v7, v8}];
  v72 = v12;

  v13 = *&v1[qword_1006B72A8];
  [v13 setFrame:{0.0, 0.0, v3, v4}];
  v14 = *&v1[qword_1006B7280];
  [v14 setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  [v14 setInsetsLayoutMarginsFromSafeArea:0];
  v15 = *&v1[qword_1006B72A0];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v16];
  v17 = *&v1[qword_1006B72C0];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v13 setContentCompressionResistancePriority:0 forAxis:v19];
  v20 = *&v1[qword_1006B7268];
  sub_10007EBC0(&qword_1006AFC30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100552EF0;
  *(v21 + 32) = v17;
  *(v21 + 40) = v15;
  v22 = *&v1[qword_1006B72B0];
  *(v21 + 48) = v22;
  sub_10000905C(0, &qword_1006BA410);
  v23 = v17;
  v24 = v15;
  v25 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setArrangedSubviews:isa];

  LODWORD(v27) = 1148846080;
  [v20 setContentHuggingPriority:0 forAxis:v27];
  if (v71)
  {
    v28 = *&v1[qword_1006B7288];
    [v28 setAxis:1];
    [v28 setDistribution:0];
    [v28 setAlignment:1];
    [v28 setSpacing:5.0];
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100552F00;
    v30 = *&v1[qword_1006B7270];
    v31 = *&v1[qword_1006B7290];
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    v32 = *&v1[qword_1006B7298];
    *(v29 + 48) = v13;
    *(v29 + 56) = v32;
    *(v29 + 64) = v20;
    v70 = v13;
    v33 = v20;
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v28 setArrangedSubviews:v37];

    [v33 setDistribution:4];
    [v33 setAlignment:3];
    v74 = &type metadata for SolariumFeatureFlag;
    v75 = sub_10000BD04();
    v38 = isFeatureEnabled(_:)();
    sub_100006060(v73);
    if ((v38 & 1) == 0)
    {
      [v28 setAlignment:3 forView:v34 inAxis:0];
      [v28 setAlignment:3 forView:v70 inAxis:0];
      [v28 setAlignment:3 forView:v33 inAxis:0];
    }

    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1005528C0;
    *(v39 + 32) = v28;
    v40 = v72;
    v41 = v72;
    v42 = v28;
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v41 setArrangedSubviews:v43];
  }

  else
  {
    [v20 setDistribution:4];
    [v20 setAlignment:4];
    LODWORD(v44) = 1132068864;
    [v14 setContentCompressionResistancePriority:0 forAxis:v44];
    LODWORD(v45) = 1148846080;
    [v14 setContentCompressionResistancePriority:1 forAxis:v45];
    [v14 setAxis:1];
    [v14 setDistribution:0];
    [v14 setAlignment:1];
    [v14 setSpacing:*&v5];
    [v14 setLayoutMarginsRelativeArrangement:1];
    v46 = *&v1[qword_1006B7278];
    [v46 setContentCompressionResistancePriority:0 forAxis:0.0];
    LODWORD(v47) = 1148846080;
    [v46 setContentCompressionResistancePriority:1 forAxis:v47];
    [v46 setAxis:0];
    [v46 setDistribution:0];
    [v46 setAlignment:3];
    [v46 setSpacing:v69];
    v48 = *&v1[qword_1006B7290];
    LODWORD(v49) = 1148846080;
    [v48 setContentCompressionResistancePriority:1 forAxis:v49];
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100552EE0;
    *(v50 + 32) = v48;
    *(v50 + 40) = v13;
    v51 = v48;
    v52 = v13;
    v53 = Array._bridgeToObjectiveC()().super.isa;

    [v46 setArrangedSubviews:v53];

    v54 = *&v1[qword_1006B7298];
    type metadata accessor for UILayoutPriority(0);
    v76 = 1065353216;
    v77 = 1148846080;
    sub_1000394CC();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v55) = v73[0];
    [v54 setContentCompressionResistancePriority:1 forAxis:v55];
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100552EE0;
    *(v56 + 32) = v46;
    *(v56 + 40) = v54;
    v57 = v46;
    v58 = v54;
    v59 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setArrangedSubviews:v59];

    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_100552EF0;
    v61 = *&v1[qword_1006B7270];
    *(v60 + 32) = v61;
    *(v60 + 40) = v14;
    *(v60 + 48) = v20;
    v62 = v72;
    v63 = v61;
    v64 = v14;
    v65 = v20;
    v66 = Array._bridgeToObjectiveC()().super.isa;

    [v62 setArrangedSubviews:v66];

    [v62 setAlignment:1 forView:v63 inAxis:1];
    v40 = v72;
  }

  v67 = *&v1[qword_1006B72B8];
  [v67 setAutoresizingMask:{10, 3, 7}];
  sub_100044E98();
  v68 = [v1 containerView];
  [v68 addSubview:v67];
}

id sub_100044E98()
{
  v1 = [v0 containerView];
  [v1 bounds];
  v3 = v2;

  v4 = *&v0[qword_1006B72B8];
  sub_100044F38();
  v6 = v5;
  sub_100045168();

  return [v4 setFrame:{v6, v3 + -1.0, v7, 1.0}];
}

void sub_100044F38()
{
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v6 = &type metadata for SolariumFeatureFlag;
  v7 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v5);
  if (v2)
  {
    if (v1 == 1)
    {
      sub_1000453B4();
    }

    else
    {
      sub_100045064();
    }
  }

  else if ((*(v0 + qword_1006B72D0) & 1) == 0)
  {
    if (*(v0 + qword_1006B72D8) == 1)
    {
      v3 = [v0 containerView];
      [v3 directionalLayoutMargins];
    }

    else if (v1 != 1)
    {
      v4 = [v0 containerView];
      [v4 bounds];

      sub_100045168();
    }
  }
}

double sub_100045064()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = [v0 containerView];
  [v4 directionalLayoutMargins];
  v6 = v5;

  if ((*(v0 + qword_1006B72D8) & 1) == 0 && (v3 & 1) == 0)
  {
    if (qword_1006AEB60 != -1)
    {
      swift_once();
    }

    return v6 + *(&xmmword_1006D41D0 + 1) + 46.0;
  }

  return v6;
}

void sub_100045168()
{
  v11 = &type metadata for SolariumFeatureFlag;
  v12 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (v1)
  {
    v2 = [v0 containerView];
    [v2 bounds];

    sub_100045064();
    sub_1000453B4();
    return;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v0[qword_1006B72C8] == 1 && v0[qword_1006B72E0] == 1)
  {
    if ((v0[qword_1006B72D0] | v5))
    {
      goto LABEL_12;
    }
  }

  else if (v5)
  {
    goto LABEL_12;
  }

  v6 = v0[qword_1006B72D8];
  v7 = [v0 containerView];
  v8 = v7;
  if (v6 == 1)
  {
    [v7 bounds];

    sub_100044F38();
    return;
  }

  [v7 directionalLayoutMargins];

  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

LABEL_12:
  v9 = [v0 containerView];
  [v9 bounds];
}

double sub_1000453B4()
{
  v1 = [v0 containerView];
  [v1 directionalLayoutMargins];
  v3 = v2;

  return v3;
}

void sub_10004540C(uint64_t a1, void *a2, uint64_t a3)
{
  v168 = a2;
  v152 = a1;
  v4 = type metadata accessor for FMPeopleCellViewModel();
  v158 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for FMAllowLocationAlertCellViewModel();
  v157 = *(v151 - 8);
  __chkstk_darwin(v151);
  v159 = (&v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10007EBC0(&unk_1006B77C0);
  __chkstk_darwin(v8 - 8);
  v161 = &v149 - v9;
  v10 = sub_10007EBC0(&qword_1006BA5F8);
  __chkstk_darwin(v10 - 8);
  v160 = &v149 - v11;
  v12 = type metadata accessor for UIBackgroundConfiguration();
  v162 = *(v12 - 8);
  v163 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v155 = &v149 - v16;
  v17 = type metadata accessor for PeopleListPersonRow.State();
  v164 = *(v17 - 8);
  v165 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v154 = &v149 - v21;
  v150 = type metadata accessor for FMMeCellViewModel();
  v156 = *(v150 - 8);
  __chkstk_darwin(v150);
  v153 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for IndexPath();
  v24 = *(v23 - 1);
  v25 = __chkstk_darwin(v23);
  v27 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v149 - v29;
  __chkstk_darwin(v28);
  v32 = &v149 - v31;
  v167 = a3;
  v33 = IndexPath.section.getter();
  if (v33 == 2)
  {
    v155 = v4;
    v156 = v20;
    v157 = v15;
    v159 = v6;
    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v33 != 1)
    {
      if (v33)
      {
        return;
      }

      if (qword_1006AEBE0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_56;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100005B14(v46, qword_1006D4630);
    (*(v24 + 2))(v30, v167, v23);
    v47 = v166;
    v48 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v27))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v169[0] = v50;
      *v49 = 136315394;
      v51 = IndexPath.debugDescription.getter();
      v53 = v52;
      v54 = *(v24 + 1);
      v24 += 8;
      v54(v30, v23);
      v55 = sub_100005B4C(v51, v53, v169);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2048;
      v56 = *(*&v47[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_fenceCellModels] + 16);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v48, v27, "FMPeopleListDataSource: configuring inbox cell for row at %s, fenceCellModels: %ld", v49, 0x16u);
      sub_100006060(v50);
    }

    else
    {

      v69 = *(v24 + 1);
      v24 += 8;
      v69(v30, v23);
    }

    v70 = IndexPath.row.getter();
    v23 = v159;
    if ((v70 & 0x8000000000000000) == 0)
    {
      v71 = *&v47[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_fenceCellModels];
      if (v70 < *(v71 + 16))
      {
        sub_1000353E4(v71 + ((v157[80] + 32) & ~v157[80]) + *(v157 + 9) * v70, v159, type metadata accessor for FMAllowLocationAlertCellViewModel);
        sub_10007EBC0(&qword_1006C3C08);
        v72 = swift_dynamicCastClass();
        if (v72)
        {
          v73 = v72;
          v74 = v168;
          sub_10052BD48(v23);
          [v73 setSelectionStyle:0];
          sub_100035650(v23, type metadata accessor for FMAllowLocationAlertCellViewModel);
          v75 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v76 = (v73 + *((swift_isaMask & *v73) + 0x198));
          v77 = *v76;
          *v76 = sub_100536118;
          v76[1] = v75;
          sub_10001835C(v77);

          return;
        }

        v124 = v164;
        v123 = v165;
        v125 = v154;
        v134 = (*(v164 + 16))(v154, v23 + *(v151 + 60), v165);
        __chkstk_darwin(v134);
        *(&v149 - 2) = v125;
        v170 = sub_10007EBC0(&qword_1006C3C40);
        v171 = sub_100004098(&qword_1006C3C48, &qword_1006C3C40);
        sub_100008FC0(v169);
        sub_10007EBC0(&qword_1006C3C50);
        sub_10053600C();
        UIHostingConfiguration<>.init(content:)();
        v135 = v168;
        UITableViewCell.contentConfiguration.setter();
        v136 = v155;
        static UIBackgroundConfiguration.listPlainCell()();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v137 = v160;
        UIConfigurationColorTransformer.init(_:)();
        v138 = type metadata accessor for UIConfigurationColorTransformer();
        (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
        UIBackgroundConfiguration.backgroundColorTransformer.setter();
        v139 = v161;
        v140 = v162;
        v141 = v163;
        (*(v162 + 16))(v161, v136, v163);
        (*(v140 + 56))(v139, 0, 1, v141);
        UITableViewCell.backgroundConfiguration.setter();
        [v135 setSeparatorStyle:1];
        (*(v140 + 8))(v136, v141);
        sub_100035650(v23, type metadata accessor for FMAllowLocationAlertCellViewModel);
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_58;
    }

    __break(1u);
  }

  swift_once();
LABEL_12:
  v57 = type metadata accessor for Logger();
  sub_100005B14(v57, qword_1006D4630);
  (*(v24 + 2))(v27, v167, v23);
  v32 = v166;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  v60 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
  if (os_log_type_enabled(v58, v59))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v169[0] = v62;
    *v61 = 136315394;
    v63 = IndexPath.debugDescription.getter();
    v65 = v64;
    (*(v24 + 1))(v27, v23);
    v66 = sub_100005B4C(v63, v65, v169);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2048;
    v67 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_cellsViewModel;
    swift_beginAccess();
    v68 = *(*&v32[v67] + 16);

    *(v61 + 14) = v68;
    v60 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;

    _os_log_impl(&_mh_execute_header, v58, v59, "FMPeopleListDataSource: configuring regulars cell for row at %s, cellsViewModel: %ld", v61, 0x16u);
    sub_100006060(v62);
  }

  else
  {

    (*(v24 + 1))(v27, v23);
  }

  v78 = v155;
  v79 = v158;
  v80 = v60[370];
  swift_beginAccess();
  v81 = *(*&v32[v80] + 16);
  v82 = IndexPath.row.getter();
  v83 = v159;
  v24 = v157;
  v23 = v156;
  if ((v82 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_56:
    swift_once();
LABEL_5:
    v34 = type metadata accessor for Logger();
    sub_100005B14(v34, qword_1006D4630);
    (*(v24 + 2))(v32, v167, v23);
    v35 = v166;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v169[0] = v40;
      *v39 = 136315394;
      v41 = IndexPath.debugDescription.getter();
      v43 = v42;
      (*(v24 + 1))(v32, v23);
      v44 = sub_100005B4C(v41, v43, v169);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2048;
      v45 = *(*&v35[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_meCellViewModel] + 16);

      *(v39 + 14) = v45;
      v38 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;

      _os_log_impl(&_mh_execute_header, v36, v37, "FMPeopleListDataSource: configuring me cell for row at %s, meCellViewModel: %ld", v39, 0x16u);
      sub_100006060(v40);
    }

    else
    {

      (*(v24 + 1))(v32, v23);
    }

    sub_10007EBC0(&qword_1006C3BF8);
    v113 = swift_dynamicCastClass();
    if (v113)
    {
      v114 = v113;
      v115 = v168;
      v116 = IndexPath.row.getter();
      if ((v116 & 0x8000000000000000) == 0)
      {
        v117 = *&v35[v38[369]];
        if (v116 < *(v117 + 16))
        {
          v118 = v153;
          sub_1000353E4(v117 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + v156[9] * v116, v153, type metadata accessor for FMMeCellViewModel);
          (*((swift_isaMask & *v114) + 0x168))(v118);

          v119 = v118;
          v120 = type metadata accessor for FMMeCellViewModel;
LABEL_51:
          sub_100035650(v119, v120);
          return;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v121 = IndexPath.row.getter();
    if ((v121 & 0x8000000000000000) != 0)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v122 = *&v35[v38[369]];
    if (v121 >= *(v122 + 16))
    {
LABEL_62:
      __break(1u);
      return;
    }

    v124 = v164;
    v123 = v165;
    v125 = v154;
    v126 = (*(v164 + 16))(v154, v122 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + v156[9] * v121 + *(v150 + 48), v165);
    __chkstk_darwin(v126);
    *(&v149 - 2) = v125;
    v170 = sub_10007EBC0(&qword_1006C3C40);
    v171 = sub_100004098(&qword_1006C3C48, &qword_1006C3C40);
    sub_100008FC0(v169);
    sub_10007EBC0(&qword_1006C3C50);
    sub_10053600C();
    UIHostingConfiguration<>.init(content:)();
    v127 = v168;
    UITableViewCell.contentConfiguration.setter();
    v128 = v155;
    static UIBackgroundConfiguration.listPlainCell()();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v129 = v160;
    UIConfigurationColorTransformer.init(_:)();
    v130 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
    UIBackgroundConfiguration.backgroundColorTransformer.setter();
    v131 = v161;
    v132 = v162;
    v133 = v163;
    (*(v162 + 16))(v161, v128, v163);
    (*(v132 + 56))(v131, 0, 1, v133);
    UITableViewCell.backgroundConfiguration.setter();
    [v127 setSeparatorStyle:1];
    (*(v132 + 8))(v128, v133);
LABEL_44:
    (*(v124 + 8))(v125, v123);
    return;
  }

  v84 = *&v32[v80];
  if (v82 >= *(v84 + 16))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1000353E4(v84 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v82, v159, type metadata accessor for FMPeopleCellViewModel);
  sub_10007EBC0(&qword_1006BAA90);
  v85 = swift_dynamicCastClass();
  if (v85)
  {
    v86 = v85;
    v87 = v168;
    v88 = IndexPath.row.getter() == v81 - 1;
    v89 = qword_1006B72D0;
    *(v86 + qword_1006B72D0) = v88;
    v90 = qword_1006B72B8;
    [*(v86 + qword_1006B72B8) setHidden:?];
    v91 = [v86 containerView];
    [v91 bounds];
    v93 = v92;

    v94 = *(v86 + v90);
    v95 = sub_100046C64(sub_100046EA0);
    sub_100046EA0();
    [v94 setFrame:{v95, v93 + -1.0, v96, 1.0}];
    v97 = v159;
    v98 = IndexPath.section.getter();
    *(v86 + qword_1006B72E0) = v98 == 2;
    if (v98 == 2)
    {
      v99 = 0;
    }

    else
    {
      v99 = *(v86 + v89);
    }

    if (*(v86 + qword_1006B72C8))
    {
      v100 = v99;
    }

    else
    {
      v100 = *(v86 + v89);
    }

    [*(v86 + v90) setHidden:v100];
    (*((swift_isaMask & *v86) + 0x168))(v97);
    sub_10007EBC0(&qword_1006C3C00);
    v101 = swift_dynamicCastClass();
    if (!v101)
    {

      v120 = type metadata accessor for FMPeopleCellViewModel;
      v119 = v97;
      goto LABEL_51;
    }

    v102 = v101;
    v170 = &type metadata for SolariumFeatureFlag;
    v103 = sub_10000BD04();
    v171 = v103;
    v104 = isFeatureEnabled(_:)();
    sub_100006060(v169);
    if (v104)
    {
      v105.super.super.isa = sub_100530428(v97, v102).super.super.isa;
      v106 = *(v102 + *((swift_isaMask & *v102) + 0x1A8));
      [v106 setMenu:v105.super.super.isa];
      [v106 setContextMenuIsPrimary:1];
      v170 = &type metadata for SolariumFeatureFlag;
      v171 = v103;
      v107 = isFeatureEnabled(_:)();
      sub_100006060(v169);
      if ((v107 & 1) == 0)
      {
        UIEdgeInsetsMakeWithEdges();
        [v106 setCustomAlignmentRectInsets:?];
      }
    }

    sub_100035650(v97, type metadata accessor for FMPeopleCellViewModel);
    v108 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v109 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110 = swift_allocObject();
    *(v110 + 16) = v108;
    *(v110 + 24) = v109;
    v111 = (v102 + *((swift_isaMask & *v102) + 0x198));
    v112 = *v111;
    *v111 = sub_1005360F4;
    v111[1] = v110;
    sub_10001835C(v112);
  }

  else
  {
    v142 = (*(v164 + 16))(v23, v83 + *(v78 + 32), v165);
    __chkstk_darwin(v142);
    *(&v149 - 2) = v23;
    v170 = sub_10007EBC0(&qword_1006C3C40);
    v171 = sub_100004098(&qword_1006C3C48, &qword_1006C3C40);
    sub_100008FC0(v169);
    sub_10007EBC0(&qword_1006C3C50);
    sub_10053600C();
    UIHostingConfiguration<>.init(content:)();
    UITableViewCell.contentConfiguration.setter();
    static UIBackgroundConfiguration.listPlainCell()();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v143 = v160;
    UIConfigurationColorTransformer.init(_:)();
    v144 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v144 - 8) + 56))(v143, 0, 1, v144);
    UIBackgroundConfiguration.backgroundColorTransformer.setter();
    v145 = v161;
    v146 = v162;
    v147 = v163;
    (*(v162 + 16))(v161, v24, v163);
    (*(v146 + 56))(v145, 0, 1, v147);
    UITableViewCell.backgroundConfiguration.setter();
    v148 = IndexPath.row.getter() != v81 - 1 || IndexPath.section.getter() != 2;
    [v168 setSeparatorStyle:v148];
    (*(v146 + 8))(v24, v147);
    sub_100035650(v83, type metadata accessor for FMPeopleCellViewModel);
    (*(v164 + 8))(v23, v165);
  }
}

uint64_t sub_100046BEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046C24()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100046C64(double (*a1)(void))
{
  v3 = [v1 effectiveUserInterfaceLayoutDirection];
  v20 = &type metadata for SolariumFeatureFlag;
  v21 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v19);
  if (v4)
  {
    if (v3 == 1)
    {
      v5 = [v1 containerView];
      [v5 directionalLayoutMargins];
      v7 = v6;
    }

    else
    {
      v10 = [v1 traitCollection];
      v11 = [v10 preferredContentSizeCategory];

      v12 = UIContentSizeCategory.isAccessibilityCategory.getter();
      v13 = [v1 containerView];
      [v13 directionalLayoutMargins];
      v7 = v14;

      if ((*(v1 + qword_1006B72D8) & 1) == 0 && (v12 & 1) == 0)
      {
        if (qword_1006AEB60 != -1)
        {
          swift_once();
        }

        return v7 + *(&xmmword_1006D41D0 + 1) + 46.0;
      }
    }
  }

  else
  {
    v7 = 0.0;
    if ((*(v1 + qword_1006B72D0) & 1) == 0)
    {
      if (*(v1 + qword_1006B72D8) == 1)
      {
        v8 = [v1 containerView];
        [v8 directionalLayoutMargins];
        v7 = v9;
      }

      else if (v3 != 1)
      {
        v15 = [v1 containerView];
        [v15 bounds];
        v17 = v16;

        return v17 - a1();
      }
    }
  }

  return v7;
}

void sub_100046EB8(double (*a1)(void))
{
  v18 = &type metadata for SolariumFeatureFlag;
  v19 = sub_10000BD04();
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if ((v3 & 1) == 0)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 preferredContentSizeCategory];

    v12 = UIContentSizeCategory.isAccessibilityCategory.getter();
    if ((v1[qword_1006B72C8] & 1) != 0 && v1[qword_1006B72E0] == 1)
    {
      if (((v1[qword_1006B72D0] | v12) & 1) == 0)
      {
LABEL_10:
        v13 = v1[qword_1006B72D8];
        v14 = [v1 containerView];
        v15 = v14;
        if (v13 == 1)
        {
          [v14 bounds];

          sub_100046C64(a1);
          return;
        }

        [v14 directionalLayoutMargins];

        if (qword_1006AEB60 != -1)
        {
          swift_once();
        }
      }
    }

    else if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    v16 = [v1 containerView];
    [v16 bounds];

    return;
  }

  v4 = [v1 containerView];
  [v4 bounds];

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v8 = [v1 containerView];
  [v8 directionalLayoutMargins];

  if ((v1[qword_1006B72D8] & 1) == 0 && (v7 & 1) == 0 && qword_1006AEB60 != -1)
  {
    swift_once();
  }

  v9 = [v1 containerView];
  [v9 directionalLayoutMargins];
}

id sub_100047218(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x50);
  v86 = *(v4 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v85 = &v70[-v9];
  v10 = __chkstk_darwin(v8);
  v84 = &v70[-v11];
  v12 = __chkstk_darwin(v10);
  v83 = &v70[-v13];
  v14 = __chkstk_darwin(v12);
  v82 = &v70[-v15];
  v18 = *((v17 & v16) + 0x58);
  sub_100047BF0(v14, v4, v18);
  v19 = *(v1 + qword_1006B7290);
  v80 = *(v18 + 88);
  v81 = (v18 + 88);
  v80(v4, v18);
  v20 = String._bridgeToObjectiveC()();

  [v19 setText:v20];

  v21 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityIdentifier:v21];

  v22 = *(v2 + qword_1006B7298);
  v78 = *(v18 + 80);
  v79 = v18 + 80;
  v78(v4, v18);
  v23 = String._bridgeToObjectiveC()();

  [v22 setText:v23];

  v24 = String._bridgeToObjectiveC()();
  [v22 setAccessibilityIdentifier:v24];

  v25 = *(v2 + qword_1006B72A0);
  v76 = *(v18 + 24);
  v77 = v18 + 24;
  v76(v4, v18);
  v87 = v7;
  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v25 setText:v27];

  v28 = [objc_opt_self() secondaryLabelColor];
  [v25 setTextColor:v28];

  v29 = String._bridgeToObjectiveC()();
  [v25 setAccessibilityIdentifier:v29];

  v30 = *(v2 + qword_1006B72A8);
  v74 = *(v18 + 248);
  v75 = v18 + 248;
  [v30 setHidden:{(v74(v4, v18) & 1) == 0}];
  *&v30[OBJC_IVAR____TtC6FindMy13FMBatteryView_level] = (*(v18 + 240))(v4, v18);
  sub_10004802C();
  v31 = (*(v18 + 256))(v4, v18);
  if (v31 == 5)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2 * (v31 == 6);
  }

  v30[OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode] = v32;
  sub_100048358();
  v33 = (*(v18 + 272))(v4, v18);
  v30[OBJC_IVAR____TtC6FindMy13FMBatteryView_isCharging] = v33 & 1;
  [*&v30[OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView] setHidden:(v33 & 1) == 0];
  v34 = String._bridgeToObjectiveC()();
  [v30 setAccessibilityIdentifier:v34];

  [*(v2 + qword_1006B72C0) setHidden:{((*(v18 + 120))(v4, v18) & 1) == 0}];
  v73 = *(v18 + 152);
  v35 = v73(v4, v18);
  v36 = v35;
  if (v35)
  {
    v37 = &selRef_startAnimating;
  }

  else
  {
    v37 = &selRef_stopAnimating;
  }

  [v25 setHidden:v35 & 1];
  v38 = *(v2 + qword_1006B72B0);
  [v38 setHidden:(v36 & 1) == 0];
  [v38 *v37];
  if (qword_1006AEB68 != -1)
  {
    swift_once();
  }

  v39 = v86;
  v40 = v87;
  if (byte_1006D4248 == 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100005B14(v41, qword_1006D4630);
    v42 = v39[2];
    v42(v82, a1, v4);
    v42(v83, a1, v4);
    v42(v84, a1, v4);
    v42(v85, a1, v4);
    v42(v40, a1, v4);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v88 = v72;
      *v45 = 136316162;
      v71 = v44;
      v46 = v82;
      v80 = (v80)(v4, v18);
      v81 = v43;
      v48 = v47;
      v86 = v39[1];
      (v86)(v46, v4);
      v49 = sub_100005B4C(v80, v48, &v88);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = v83;
      v51 = (v78)(v4, v18);
      v53 = v52;
      v54 = v50;
      v55 = v86;
      (v86)(v54, v4);
      v56 = sub_100005B4C(v51, v53, &v88);

      *(v45 + 14) = v56;
      *(v45 + 22) = 2080;
      v57 = v84;
      v58 = (v76)(v4, v18);
      v60 = 7104878;
      if (v59)
      {
        v60 = v58;
      }

      v83 = v60;
      if (v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = 0xE300000000000000;
      }

      v55(v57, v4);
      v62 = sub_100005B4C(v83, v61, &v88);

      *(v45 + 24) = v62;
      *(v45 + 32) = 1024;
      v63 = v85;
      v64 = v73(v4, v18) & 1;
      v65 = v86;
      (v86)(v63, v4);
      *(v45 + 34) = v64;
      *(v45 + 38) = 1024;
      v66 = v87;
      LODWORD(v63) = v74(v4, v18) & 1;
      v65(v66, v4);
      *(v45 + 40) = v63;
      v67 = v81;
      _os_log_impl(&_mh_execute_header, v81, v71, "FMTableViewCell: Content\ntitle: %s\nsubtitle: %s\ndistance: %s\nlocating: %{BOOL}d\nbatteryIndicatorShowing: %{BOOL}d", v45, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
      v68 = v39[1];
      v68(v40, v4);
      v68(v85, v4);

      v68(v84, v4);
      v68(v83, v4);
      v68(v82, v4);
    }
  }

  *(v2 + qword_1006B72D8) = (*(v18 + 192))(v4, v18) & 1;
  sub_100044E98();
  return sub_100044E98();
}

id sub_100047BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 192))(a2, a3);
  v3[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_hasBackplate] = (*(a3 + 184))(a2, a3) & 1;
  v7 = (*(a3 + 96))(a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor];
  *&v3[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor] = v7;

  if (v6)
  {
    [*&v3[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView] setHidden:1];
    [*&v3[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView] setHidden:1];
    [v3 setHidden:1];
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView];
    v10 = *(a3 + 40);
    v11 = v10(a2, a3);
    [v9 setImage:v11];

    v12 = (*(a3 + 48))(a2, a3);
    [v9 setBackgroundColor:v12];

    v13 = v10(a2, a3);
    v14 = v13;
    if (v13)
    {
    }

    [v9 setHidden:v14 == 0];
    v15 = *&v3[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView];
    v16 = (*(a3 + 32))(a2, a3);
    [v15 setImage:v16];

    v17 = *(a3 + 176);
    v17(a2, a3);
    v17(a2, a3);
    [v15 frame];
    [v15 setFrame:?];
    [v15 setHidden:0];
    [v3 setHidden:0];
  }

  return [v3 setNeedsLayout];
}

id sub_100047EB4()
{
  v0 = [objc_opt_self() systemGray6Color];

  return v0;
}

void *sub_100047EF4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  v3 = v2;
  return v2;
}

void *sub_100047F20(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

void *sub_100047F4C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

uint64_t sub_100047F84(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_100047FBC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));

  return v2;
}

uint64_t sub_100047FF4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

_OWORD *sub_10004802C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v22._object = 0x8000000100598DE0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x8000000100598DC0;
  v22._countAndFlagsBits = 0xD00000000000002CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v22);

  sub_10007EBC0(&unk_1006B20B0);
  result = swift_allocObject();
  result[1] = xmmword_100552220;
  v7 = OBJC_IVAR____TtC6FindMy13FMBatteryView_level;
  v8 = *&v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_level] * 100.0;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(result + 7) = &type metadata for Int;
  *(result + 8) = &protocol witness table for Int;
  *(result + 4) = v8;
  String.init(format:_:)();

  if (v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_isCharging] == 1)
  {
    v9 = [v2 mainBundle];
    v23._object = 0x8000000100598E30;
    v10._object = 0x8000000100598E10;
    v23._countAndFlagsBits = 0xD00000000000002BLL;
    v10._countAndFlagsBits = 0xD000000000000019;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v23);

    String.append(_:)(v12);
  }

  v13 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v13];

  sub_100048358();
  if (*&v1[v7] * 18.0 > 4.0)
  {
    v14 = *&v1[v7] * 18.0;
  }

  else
  {
    v14 = 4.0;
  }

  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 userInterfaceLayoutDirection];

  v17 = 2.0;
  if (v16 == 1)
  {
    [v1 bounds];
    v17 = CGRectGetWidth(v24) + -2.0 - v14;
  }

  [v1 bounds];
  v19 = v18 + -4.0;
  v20 = *&v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView];

  return [v20 setFrame:{v17, 2.0, v14, v19}];
}

id sub_100048358()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView);
  if (*(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode))
  {
    if (*(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode) == 1)
    {
      if (qword_1006AED08 != -1)
      {
        v6 = *(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView);
        swift_once();
        v1 = v6;
      }

      v2 = &qword_1006BFB10;
    }

    else
    {
      if (qword_1006AED00 != -1)
      {
        v8 = *(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView);
        swift_once();
        v1 = v8;
      }

      v2 = &qword_1006BFB08;
    }
  }

  else
  {
    if (qword_1006AECF8 != -1)
    {
      v7 = *(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView);
      swift_once();
      v1 = v7;
    }

    v2 = &qword_1006BFB00;
  }

  v3 = *v2;
  [v1 setTintColor:*v2];
  [*(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_outlineView) setTintColor:v3];
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView);

  return [v4 setTintColor:v3];
}

void sub_1000484F0()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  LOBYTE(v0) = [v0 BOOLForKey:v1 inDomain:v2];

  byte_1006D4248 = v0;
}

void sub_1000485DC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FMBatteryView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy13FMBatteryView_outlineView];
  [v0 bounds];
  [v1 setFrame:?];
  [*&v0[OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView] setAutoresizingMask:20];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView];
  [v0 bounds];
  v5 = v4 + v3 * 0.5 + -1.0;
  [v0 bounds];
  [v2 setCenter:{v5, v7 + v6 * 0.5}];
  v8 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v8];
}

id sub_100048740()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FMTableViewCellImageContainer();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_maskableContainer];
  [v2 bounds];
  [v1 setCenter:{v4 + v3 * 0.5, v6 + v5 * 0.5}];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer];
  [v2 bounds];
  [v7 setFrame:?];
  sub_100048800();
  return sub_100048C58();
}

void sub_100048800()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView);
  if ([v2 isHidden])
  {
    v3 = [*(v0 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_maskableContainer) layer];
    [v3 setMask:0];

    v4 = *(v1 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_currentMaskingContext);
    *(v1 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_currentMaskingContext) = 0;
  }

  else
  {
    [v2 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = *(v0 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_maskableContainer);
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = type metadata accessor for FMTableViewCellImageContainer.MaskingContext();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_knockoutSize] = 0x4000000000000000;
    v24 = &v23[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_badgeViewFrame];
    *v24 = v6;
    *(v24 + 1) = v8;
    *(v24 + 2) = v10;
    *(v24 + 3) = v12;
    v25 = &v23[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_maskViewFrame];
    *v25 = v15;
    *(v25 + 1) = v17;
    *(v25 + 2) = v19;
    *(v25 + 3) = v21;
    v61.receiver = v23;
    v61.super_class = v22;
    v26 = objc_msgSendSuper2(&v61, "init");
    v27 = v26;
    v28 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_currentMaskingContext;
    v29 = *(v1 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_currentMaskingContext);
    if (v29)
    {
      v30 = v26;
      v31 = v29;
      v32 = static NSObject.== infix(_:_:)();

      if (v32)
      {

        return;
      }
    }

    else
    {
      v33 = v26;
    }

    if (qword_1006AEBE8 != -1)
    {
      swift_once();
    }

    v34 = qword_1006BADE0;
    v35 = [qword_1006BADE0 objectForKey:v27];
    v36 = v35;
    if (!v35)
    {
      v37 = [v13 coordinateSpace];
      [v2 bounds];
      [v37 convertRect:objc_msgSend(v2 fromCoordinateSpace:{"coordinateSpace"), v38, v39, v40, v41}];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      [v13 bounds];
      v71.origin.x = v50;
      v71.origin.y = v51;
      v71.size.width = v52;
      v71.size.height = v53;
      v69.origin.x = v43;
      v69.origin.y = v45;
      v69.size.width = v47;
      v69.size.height = v49;
      CGRectUnion(v69, v71);
      Mutable = CGPathCreateMutable();
      v62 = 0x3FF0000000000000;
      v63 = 0;
      v64 = 0;
      v65 = 0x3FF0000000000000;
      v66 = 0;
      v67 = 0;
      v36 = Mutable;
      CGMutablePathRef.addRect(_:transform:)();
      v70.origin.x = v43;
      v70.origin.y = v45;
      v70.size.width = v47;
      v70.size.height = v49;
      CGRectInset(v70, -2.0, -2.0);
      CGMutablePathRef.addEllipse(in:transform:)();
      [v34 setObject:v36 forKey:v27];
    }

    v55 = objc_allocWithZone(CAShapeLayer);
    v56 = v35;
    v57 = [v55 init];
    [v57 setFillRule:kCAFillRuleEvenOdd];
    [v57 setPath:v36];

    v58 = *(v1 + v28);
    *(v1 + v28) = v27;

    v59 = [v13 layer];
    v60 = v57;
    [v59 setMask:v60];
  }
}

id sub_100048C58()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer];
  v2 = "setHidden:";
  if (v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_hasBackplate] == 1)
  {
    [*&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer] setHidden:0];
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = objc_opt_self();
    v6 = &selRef_systemGray3Color;
    if (v4 != 2)
    {
      v6 = &selRef_whiteColor;
    }

    v7 = [v5 *v6];
    v8 = [v7 CGColor];

    [v1 setBackgroundColor:v8];
    if (v4 == 2)
    {
      v9 = [objc_opt_self() clearColor];
      v10 = [v9 CGColor];
    }

    else
    {
      v14 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor];
      if (v14)
      {
        v10 = [v14 CGColor];
      }

      else
      {
        v10 = 0;
      }
    }

    [v1 setBorderColor:v10];

    v2 = "setBorderWidth:";
    v11 = v1;
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer];
    v12 = 1;
  }

  return [v11 v2];
}

void sub_100048E34(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  v4 = *(v2 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  *v3 = a1;
  v3[1] = a2;
  v11 = a1;

  v5 = *v3;
  if (*v3)
  {
    v6 = v3[1];
    ObjectType = swift_getObjectType();
    v8 = v6[4];
    v9 = *(v2 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent);
    v10 = v5;
    v8(v9, ObjectType, v6);
  }
}

void sub_100048F18(char a1)
{
  v3 = *(v1 + qword_1006BA980);
  type metadata accessor for FMNoItemView();
  if (swift_dynamicCastClass())
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = &type metadata for SolariumFeatureFlag;
        v17 = sub_10000BD04();
        v4 = v3;
        v5 = isFeatureEnabled(_:)();
        sub_100006060(v15);
        v6 = 0.64;
        if (v5)
        {
          v6 = 0.5;
        }
      }

      else
      {
        v8 = v3;
        v6 = 1.0;
      }
    }

    else
    {
      v7 = v3;
      v6 = 0.0;
    }

    sub_10046F36C(0, v6);
  }

  v9 = *(v1 + qword_1006BA988);
  type metadata accessor for FMItemTerminalView();
  if (swift_dynamicCastClass())
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = &type metadata for SolariumFeatureFlag;
        v17 = sub_10000BD04();
        v10 = v9;
        v11 = isFeatureEnabled(_:)();
        sub_100006060(v15);
        v12 = 0.64;
        if (v11)
        {
          v12 = 0.5;
        }
      }

      else
      {
        v14 = v9;
        v12 = 1.0;
      }
    }

    else
    {
      v13 = v9;
      v12 = 0.0;
    }

    sub_1001AA740(0, v12);
  }
}

void sub_1000490B0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    v5 = &OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTopConstraint;
    if (v4 != 1)
    {
      v5 = &OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularCardTopConstraint;
    }

    v6 = *&v0[*v5];
    if (v6)
    {
      [v6 constant];
    }

    sub_100250C9C();
    v9 = &type metadata for SolariumFeatureFlag;
    v10 = sub_10000BD04();
    v7 = isFeatureEnabled(_:)();
    sub_100006060(v8);
    if (v7)
    {
      sub_100250DD0();
      if (qword_1006AEBA8 != -1)
      {
        swift_once();
      }
    }

    else
    {
      sub_100250F24();
      sub_1002510B8();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_10004922C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for FMAppDelegate();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_mainViewController);
      v4 = v3;
      swift_unknownObjectRelease();
      result = v3;
      if (v3)
      {
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = static os_log_type_t.error.getter();
  v8 = Logger.logObject.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100005B4C(0xD000000000000026, 0x80000001005897F0, &v11);
    _os_log_impl(&_mh_execute_header, v8, v7, "%s", v9, 0xCu);
    sub_100006060(v10);
  }

  return 0;
}

void sub_1000493F8(char a1, double a2)
{
  v22 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v23 = v5;
  v6 = isFeatureEnabled(_:)();
  sub_100006060(v21);
  if (v6)
  {
    sub_100049768();
    sub_100049C34(a2);
    sub_100049F9C(a2);
  }

  v22 = &type metadata for SolariumFeatureFlag;
  v23 = v5;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v21);
  if (v7)
  {
    sub_100250DD0();
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_100250F24();
    sub_1002510B8();
  }

  sub_100250C9C();
  v8 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale();
  v10 = v9;

  v11 = [v2 traitCollection];
  v12 = [v11 horizontalSizeClass];

  v13 = &OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTopConstraint;
  if (v12 != 1)
  {
    v13 = &OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularCardTopConstraint;
  }

  [*&v2[*v13] setConstant:v10];
  sub_10007EBC0(&unk_1006BF7D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v10;
  *(inited + 72) = &type metadata for CGFloat;
  *(inited + 80) = 0x746E6563726570;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 120) = &type metadata for CGFloat;
  *(inited + 128) = 0x656372756F73;
  v15 = 0x726568746FLL;
  if (a1)
  {
    v15 = 0x75747365476E6170;
  }

  v16 = 0xE500000000000000;
  if (a1)
  {
    v16 = 0xEA00000000006572;
  }

  *(inited + 96) = a2;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  v17 = sub_1000070D4(inited);
  swift_setDeallocating();
  sub_10007EBC0(&unk_1006B8500);
  swift_arrayDestroy();
  v18 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  v19 = qword_1006D4E20;
  sub_10004A27C(v17);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v18 postNotificationName:v19 object:0 userInfo:isa];
}

uint64_t sub_100049768()
{
  v0 = sub_10007EBC0(&unk_1006B84F0);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  v4 = __chkstk_darwin(v3 - 8);
  v19[1] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v8 = type metadata accessor for _UICornerMaskingConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &type metadata for SolariumFeatureFlag;
  v22 = sub_10000BD04();
  isFeatureEnabled(_:)();
  sub_100006060(v20);
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = [v19[2] traitCollection];
  if (v13 == 1)
  {
    [v14 horizontalSizeClass];
  }

  else
  {
    [v14 displayCornerRadius];
  }

  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v15 = kCACornerCurveContinuous;
  _UICornerMaskingConfiguration.init(topLeft:topRight:bottomLeft:bottomRight:cornerCurve:)();
  v16 = *(v9 + 16);
  v16(v2, v11, v8);
  v17 = *(v9 + 56);
  v17(v2, 0, 1, v8);
  UIView.cornerMaskingConfiguration.setter();
  v16(v2, v11, v8);
  v17(v2, 0, 1, v8);
  UIView.cornerMaskingConfiguration.setter();
  v16(v2, v11, v8);
  v17(v2, 0, 1, v8);
  UIView.cornerMaskingConfiguration.setter();
  return (*(v9 + 8))(v11, v8);
}

void sub_100049C34(double a1)
{
  v2 = v1;
  sub_1002E6944();
  v5 = v4;
  v7 = v6;
  v8 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
  if (v8)
  {
    type metadata accessor for FMBaseContentViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed;
      v12 = *(v9 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed);
      *(v9 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed) = a1 >= 1.0;
      v34 = &type metadata for SolariumFeatureFlag;
      v35 = sub_10000BD04();
      v13 = v8;
      v14 = isFeatureEnabled(_:)();
      v15 = sub_100006060(v33);
      if ((v14 & 1) != 0 && v12 != *(v10 + v11))
      {
        (*((swift_isaMask & *v10) + 0x2A8))(v15);
      }
    }
  }

  v16 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardLeadingConstraint];
  if (v16)
  {
    [v16 setConstant:v5];
  }

  v17 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTrailingConstraint];
  if (v17)
  {
    [v17 setConstant:-v5];
  }

  v18 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardBottomConstraint];
  if (v18)
  {
    [v18 setConstant:-v7];
  }

  v19 = [v2 traitCollection];
  v20 = [v19 horizontalSizeClass];

  v21 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
  v22 = *(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint);
  if (v20 == 1)
  {
    if (v22)
    {
      [v22 setConstant:8.0 - v5];
    }

    v23 = *(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint);
    if (v23)
    {
      [v23 setConstant:v5 + -8.0];
    }

    v24 = *(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint);
    if (v24)
    {
      [v24 setConstant:v7 + -8.0];
    }

    if (*&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar])
    {
      if (qword_1006AEBA8 != -1)
      {
        swift_once();
      }

      v25 = v7 - *&xmmword_1006D4380 + -8.0;
    }

    else
    {
      v25 = 0.0;
    }

    [*(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint) setConstant:v25];
  }

  else
  {
    if (v22)
    {
      [v22 setConstant:-8.0];
    }

    v26 = *(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint);
    if (v26)
    {
      [v26 setConstant:8.0];
    }

    v27 = *(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint);
    if (v27)
    {
      [v27 setConstant:8.0];
    }
  }

  v28 = *(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar);
  if (v28)
  {
    v29 = *(v21 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar + 8);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 48);
    v32 = v28;
    v31(ObjectType, v29, a1);
  }
}

void sub_100049F9C(double a1)
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    v10 = &type metadata for SolariumFeatureFlag;
    v11 = sub_10000BD04();
    v6 = isFeatureEnabled(_:)();
    sub_100006060(v9);
    if (v6)
    {
      if (a1 >= 0.25)
      {
LABEL_4:
        v7 = 1;
LABEL_9:
        sub_10004A118(v7);
        return;
      }
    }

    else if (a1 >= 0.32)
    {
      goto LABEL_4;
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
  if ((*(v8 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle) & 1) == 0)
  {
    *(v8 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle) = 1;
    static _Glass._GlassVariant.regular.getter();
    v10 = type metadata accessor for _Glass();
    v11 = &protocol witness table for _Glass;
    sub_100008FC0(v9);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
  }
}

uint64_t sub_10004A118(unsigned __int8 a1)
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  result = __chkstk_darwin(v3 - 8);
  v5 = *(v1 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle);
  if (v5 == 2 || ((v5 ^ a1) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle) = a1 & 1;
    if (a1)
    {
      static _Glass._GlassVariant.regular.getter();
      v9 = type metadata accessor for _Glass();
      v10 = &protocol witness table for _Glass;
      sub_100008FC0(v8);
      _Glass.init(_:smoothness:)();
    }

    else
    {
      v7 = [objc_opt_self() systemBackgroundColor];
      v9 = sub_10000905C(0, &qword_1006C0000);
      v10 = &protocol witness table for UIColor;
      v8[0] = v7;
    }

    return UIView._background.setter();
  }

  return result;
}

NSString sub_10004A244()
{
  result = String._bridgeToObjectiveC()();
  qword_1006D4E20 = result;
  return result;
}

uint64_t sub_10004A27C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007EBC0(&qword_1006B1AF8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100006004(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000072E4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000072E4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000072E4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000072E4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_10004A544(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10004A598(a3);
}

id sub_10004A598(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v1;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v22 - v12;
  v14 = *((v5 & v4) + 0x70);
  v15 = *((v5 & v4) + 0x78);
  v22[0] = *(v6 + 96);
  v22[1] = v22[0];
  v23 = v14;
  v24 = v15;
  v16 = type metadata accessor for FMListViewController();
  v25.receiver = v2;
  v25.super_class = v16;
  objc_msgSendSuper2(&v25, "viewWillAppear:", a1 & 1);
  v17 = *&v2[qword_1006BA990];
  v18 = [v17 indexPathForSelectedRow];
  if (v18)
  {
    v19 = v18;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 32))(v13, v11, v7);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v17 deselectRowAtIndexPath:isa animated:1];

    [v17 setContentOffset:0 animated:{0.0, 0.0}];
    (*(v8 + 8))(v13, v7);
  }

  (*(v15 + 48))(1, *&v22[0], v15);
  sub_10004B914();
  sub_10004B990();
  return sub_10003DE2C(0x6C6C695777656976, 0xEE00726165707041);
}

void sub_10004A81C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136315138;
    if (v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled])
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100005B4C(v9, v10, v38);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleListDataSource: updatesEnabled: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled;
  if (v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled] != 1)
  {
    if (*&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_peopleSubscription])
    {
      v23 = *(*(*&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator] + 48) + 32);

      os_unfair_lock_lock((v23 + 24));
      sub_10008FB88((v23 + 16));
      os_unfair_lock_unlock((v23 + 24));
    }

    v24 = *&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_locationSubscription];
    if (!v24)
    {
LABEL_21:
      v31 = *&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_selectionSubscription];
      if (!v31)
      {
        return;
      }

      v32 = *(*&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator] + 56);
      swift_beginAccess();

      v28 = sub_1003CD53C((v32 + 16), v31);
      v33 = *(v32 + 16);
      if (!(v33 >> 62))
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34 >= v28)
        {
LABEL_24:
          sub_1003CD570(v28, v34);
          swift_endAccess();

          return;
        }

LABEL_29:
        __break(1u);
        return;
      }

LABEL_28:
      v36 = v28;
      v34 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v36;
      if (v34 >= v36)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v25 = *(*&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator] + 40);
    v26 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
    swift_beginAccess();

    v27 = v25;
    v28 = sub_1003CEA10(&v25[v26], v24);
    v29 = *&v25[v26];
    if (v29 >> 62)
    {
      v35 = v28;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v35;
      if (v30 >= v35)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 >= v28)
      {
LABEL_20:
        sub_1003CEA44(v28, v30);
        swift_endAccess();

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v13 = *&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_mediator];
  v14 = *(v13 + 48);
  type metadata accessor for FMPeopleSubscription();
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v15 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100645040;
  swift_unknownObjectWeakAssign();
  v16 = *(v14 + 32);

  os_unfair_lock_lock((v16 + 24));
  sub_10000E7C0((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  *&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_peopleSubscription] = v15;

  v17 = *(v13 + 40);
  v18 = sub_10004AD88(v4, v17);

  *&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_locationSubscription] = v18;

  v19 = *(v13 + 56);

  v20 = sub_10004AEAC(v4, v19);

  *&v4[OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_selectionSubscription] = v20;

  LOBYTE(v14) = v4[v12] ^ a1;

  v21 = dispatch thunk of FMFManager.friends.getter();

  v22 = *(*(v13 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v37 = v22;
  sub_10002C9BC(v21, v22, 0, v14 & 1);
}

void sub_10004AD70(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled);
  *(v1 + OBJC_IVAR____TtC6FindMy22FMPeopleListDataSource_updatesEnabled) = a1;
  sub_10004A81C(v2);
}

uint64_t sub_10004AD88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_1006450A8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_10004AEDC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FMPeopleCellViewModel();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[9];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v5[10];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    sub_10000905C(0, &qword_1006BC2B0);
    v20 = v19;
    v21 = v18;
    v22 = static NSObject.== infix(_:_:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (*(a1 + v5[13]) != *(a2 + v5[13]) || *(a1 + v5[15]) != *(a2 + v5[15]) || *(a1 + v5[17]) != *(a2 + v5[17]))
  {
    return 0;
  }

  v23 = v5[18];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if ((v24 != *v26 || v25 != v26[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[19]) != *(a2 + v5[19]))
  {
    return 0;
  }

  v28 = v5[24];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v33 = v5[25];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  if (*(a1 + v5[7]) != *(a2 + v5[7]) || *(a1 + v5[26]) != *(a2 + v5[26]) || *(a1 + v5[23]) != *(a2 + v5[23]))
  {
    return 0;
  }

  v38 = v5[11];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    sub_10000905C(0, &qword_1006BC2B0);
    v41 = v40;
    v42 = v39;
    v43 = static NSObject.== infix(_:_:)();

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v44 = v5[12];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (!v45)
  {
    if (!v46)
    {
      goto LABEL_61;
    }

    return 0;
  }

  if (!v46)
  {
    return 0;
  }

  sub_10000905C(0, &qword_1006C0000);
  v47 = v46;
  v48 = v45;
  v49 = static NSObject.== infix(_:_:)();

  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v50 = v5[32];

  return static PeopleListPersonRow.State.== infix(_:_:)(a1 + v50, a2 + v50);
}

uint64_t sub_10004B264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAllowLocationAlertCellViewModel() - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    do
    {
      sub_100027A40(v13, v10, type metadata accessor for FMAllowLocationAlertCellViewModel);
      sub_100027A40(v14, v7, type metadata accessor for FMAllowLocationAlertCellViewModel);
      if (*(v10 + 2) == *(v7 + 2) && *(v10 + 3) == *(v7 + 3))
      {
        sub_100029F80(v7, type metadata accessor for FMAllowLocationAlertCellViewModel);
        sub_100029F80(v10, type metadata accessor for FMAllowLocationAlertCellViewModel);
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100029F80(v7, type metadata accessor for FMAllowLocationAlertCellViewModel);
        sub_100029F80(v10, type metadata accessor for FMAllowLocationAlertCellViewModel);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

id sub_10004B44C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMListViewController: Data Source did update.", v8, 2u);
  }

  ObjectType = swift_getObjectType();
  *(v3 + qword_1006BA9D8) = (*(a2 + 64))(ObjectType, a2) & 1;
  sub_10003DE2C(0xD00000000000001CLL, 0x800000010058E3D0);

  return sub_10003F3B4();
}

uint64_t sub_10004B5BC()
{
  v1 = *(v0 + qword_1006BA990);
  v2 = [v1 dataSource];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    swift_unknownObjectRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_unknownObjectRetain();
      sub_10007EBC0(&unk_1006BAAB0);
      v9 = String.init<A>(describing:)();
      v11 = sub_100005B4C(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "FMListViewController: data source %s", v7, 0xCu);
      sub_100006060(v8);
    }

    if ([v3 respondsToSelector:"numberOfSectionsInTableView:"])
    {
      break;
    }

    v12 = 1;
LABEL_10:
    v14 = 0;
    while (1)
    {
      v13 = v12 == v14;
      if (v12 == v14)
      {
LABEL_14:
        swift_unknownObjectRelease();
        return v13;
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      v15 = [v3 tableView:v1 numberOfRowsInSection:v14++];
      if (v15 >= 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v12 = [v3 numberOfSectionsInTableView:v1];
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  __break(1u);
  return 1;
}

id sub_10004B7F0()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMListViewController: Hiding empty list", v5, 2u);
  }

  v6 = *(v1 + qword_1006BA980);
  [v6 setUserInteractionEnabled:0];
  [v6 setHidden:1];

  return sub_1002D62B4(0);
}

void sub_10004B914()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"reload" name:UIApplicationDidBecomeActiveNotification object:0];
}

uint64_t sub_10004B990()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16);
  v2 = type metadata accessor for FMListViewController();
  v3 = sub_10004BA58(v0, v1, v2, &off_100634BE8);

  *(v0 + qword_1006BA9D0) = v3;
}

uint64_t sub_10004BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FMConditionSubscription();
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v6 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = a4;
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v6;
}

id sub_10004BC64()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    sub_1003F87FC();
  }

  else
  {
    sub_10004BEA4();
  }

  [v1 setLayoutMargins:?];
  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    sub_1003F87FC();
  }

  else
  {
    sub_10004BEA4();
  }

  [v1 _setEdgeInsets:?];
  v6 = [v0 traitCollection];
  v7 = [v6 horizontalSizeClass];

  result = [v0 view];
  v9 = result;
  if (v7 != 2)
  {
    if (result)
    {
      [result safeAreaInsets];
      v15 = v14;

      result = [v0 view];
      if (result)
      {
        v16 = result;
        if (v15 > 40.0)
        {
          v17 = 70.0;
        }

        else
        {
          v17 = 90.0;
        }

        [result safeAreaInsets];
        v19 = v18;

        if (qword_1006AEC30 != -1)
        {
          swift_once();
        }

        v12 = v17 + v19;
        v13 = -*&qword_1006D4798;
        goto LABEL_18;
      }

LABEL_23:
      __break(1u);
      return result;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  [result safeAreaInsets];
  v11 = v10;

  v12 = v11 + 40.0;
  v13 = -50.0;
LABEL_18:

  return [v1 _setCompassInsets:{v12, 0.0, 0.0, v13}];
}

void sub_10004BEA4()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 frame];

  v10 = &type metadata for SolariumFeatureFlag;
  v11 = sub_10000BD04();
  isFeatureEnabled(_:)();
  sub_100006060(v9);
  v3 = [v0 view];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 safeAreaInsets];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 safeAreaInsets];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10004C0B4()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 userInterfaceLayoutDirection];

  qword_1006D47A0 = v2;
  v3 = [v0 traitCollection];
  [v3 horizontalSizeClass];

  sub_100026B90();
  v4 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_tabBar];

  return [v4 setNeedsLayout];
}

void sub_10004C204()
{
  v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled] = 1;
  sub_10004BC64();
  sub_1000202F4(1, 0, 0);
  v6 = &type metadata for SolariumFeatureFlag;
  v7 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v5);
  if (v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == 2)
    {
      v4 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView];
      if (v4)
      {
        [v4 setAlpha:1.0];
      }
    }
  }
}

void sub_10004C338()
{
  v1 = [v0 traitCollection];
  [v1 horizontalSizeClass];

  sub_100023790();
  if (v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_isNoLocationShowing] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView];
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = 0.07;
    if (v4 == 2)
    {
      v5 = 0.25;
    }

    [v2 setAlpha:v5];
  }
}

id sub_10004C4FC(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FMCardContainerViewController();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  sub_100025A40();
  v3 = [v1 traitCollection];
  [v3 horizontalSizeClass];

  sub_100025A2C();
  sub_1000490B0();
  sub_1000493F8(0, v4);
  sub_1000490B0();
  v6 = v5;
  v11 = &type metadata for SolariumFeatureFlag;
  v12 = sub_10000BD04();
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_100006060(v10);
  v7 = 0.64;
  if (v3)
  {
    v7 = 0.5;
  }

  v8 = v7 - v6;
  if (v8 <= 0.0)
  {
    v8 = 0.0;
  }

  return [*&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v8 * *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
}

void sub_10004C6FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v35 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v42[0] = Notification.userInfo.getter();
    sub_10007EBC0(&unk_1006BEF60);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_100005B4C(v14, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMMapViewController: cardPositionChanged %s", v12, 0xCu);
    sub_100006060(v13);

    v2 = v35;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v18 = Notification.userInfo.getter();
  if (v18)
  {
    v19 = v18;
    v40 = 9.08367217e223;
    v41 = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v19 + 16) && (v20 = sub_10004CC50(aBlock), (v21 & 1) != 0))
    {
      sub_100006004(*(v19 + 56) + 32 * v20, v42);
      sub_10004CDB8(aBlock);
      if (swift_dynamicCast())
      {
        v22 = v40;
        v23 = objc_opt_self();
        v24 = swift_allocObject();
        *(v24 + 16) = v2;
        *(v24 + 24) = v22;
        v38 = sub_10004D144;
        v39 = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        v37 = &unk_10063D518;
        v25 = _Block_copy(aBlock);
        v26 = v2;

        [v23 animateWithDuration:v25 animations:0.2];
        _Block_release(v25);
      }
    }

    else
    {
      sub_10004CDB8(aBlock);
    }

    v37 = &type metadata for SolariumFeatureFlag;
    v38 = sub_10000BD04();
    v27 = isFeatureEnabled(_:)();
    sub_100006060(aBlock);
    if ((v27 & 1) == 0)
    {
      goto LABEL_19;
    }

    v28 = [v2 view];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = [v28 traitCollection];

    v31 = [v30 horizontalSizeClass];
    if (v31 == 1)
    {
      v40 = 1.81844024e-306;
      v41 = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16) && (v32 = sub_10004CC50(aBlock), (v33 & 1) != 0))
      {
        sub_100006004(*(v19 + 56) + 32 * v32, v42);
        sub_10004CDB8(aBlock);

        if (swift_dynamicCast())
        {
          sub_10004D178(v40);
        }
      }

      else
      {

        sub_10004CDB8(aBlock);
      }
    }

    else
    {
LABEL_19:
    }
  }
}

uint64_t sub_10004CC18()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004CC50(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10004CC94(a1, v4);
}

unint64_t sub_10004CC94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004CD5C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10004CDB8(v8);
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

void sub_10004CE14(double a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_29;
  }

  v4 = v3;
  v5 = [v3 traitCollection];

  v6 = [v5 horizontalSizeClass];
  if (v6 != 1)
  {
    return;
  }

  v7 = [v1 view];
  if (!v7)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 safeAreaInsets];
  v10 = v9;

  if (v10 == 0.0)
  {
    v11 = -20.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = sub_1002524A0(1);
  v26 = &type metadata for SolariumFeatureFlag;
  v13 = sub_10000BD04();
  v27 = v13;
  v14 = isFeatureEnabled(_:)();
  sub_100006060(v25);
  if (v14)
  {
    sub_100250DD0();
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_100250F24();
    sub_1002510B8();
  }

  sub_100250C9C();
  v15 = objc_opt_self();
  v16 = [v15 mainScreen];
  UIRoundToScreenScale();
  v18 = v17;

  v26 = &type metadata for SolariumFeatureFlag;
  v27 = v13;
  v19 = isFeatureEnabled(_:)();
  sub_100006060(v25);
  if (v19)
  {
    sub_100250DD0();
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_100250F24();
    sub_1002510B8();
  }

  sub_100250C9C();
  v20 = [v15 mainScreen];
  UIRoundToScreenScale();
  v22 = v21;

  if (v12 >= a1)
  {
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }

    v24 = -*&xmmword_1006D4380;
  }

  else
  {
    v23 = a1 - v12;
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }

    if (v11 - (v23 + *&xmmword_1006D4380) >= v22 * -0.5 - v18)
    {
      v24 = v11 - (v23 + *&xmmword_1006D4380);
    }

    else
    {
      v24 = v22 * -0.5 - v18;
    }
  }

  [*&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView] _setAttributionInsets:{0.0, 0.0, v24, -20.0}];
}

void sub_10004D178(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView];
  if (v2)
  {
    v11 = v2;
    [v11 frame];
    MaxY = CGRectGetMaxY(v13);
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 frame];
      v8 = v7;

      v9 = 0.0;
      if (MaxY / v8 <= a1)
      {
        v10 = MaxY / v8 + 0.15;
        v9 = 1.0;
        if (v10 > a1)
        {
          v9 = (v10 - a1) / -0.15 + 1.0;
        }
      }

      [v11 setAlpha:v9];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10004D35C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10004D3C8(a3);
}

id sub_10004D3C8(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FMListTableViewCell();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = *&v1[qword_1006B72A0];
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
  [v3 setTextAlignment:(v4 & 1) == 0];
  return sub_100044E98();
}

void sub_10004D7B4()
{
  tableName_8 = objc_opt_self();
  v0 = [tableName_8 mainBundle];
  v1._countAndFlagsBits = 0xD000000000000013;
  v209._object = 0x800000010057C010;
  v1._object = 0x800000010057BFF0;
  v209._countAndFlagsBits = 0xD000000000000025;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v209);

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();

  v193 = objc_opt_self();
  v5 = [v193 actionWithIdentifier:v3 title:v4 options:1];

  v6 = [tableName_8 mainBundle];
  v7._countAndFlagsBits = 0xD000000000000014;
  v210._object = 0x800000010057C080;
  v7._object = 0x800000010057C060;
  v210._countAndFlagsBits = 0xD000000000000026;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v210);

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v193 actionWithIdentifier:v9 title:v10 options:1];

  sub_10007EBC0(&qword_1006AFC30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100552EE0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v5;
  v188 = v11;
  v187 = v5;
  v13 = String._bridgeToObjectiveC()();
  sub_10000905C(0, &qword_1006B0730);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = Array._bridgeToObjectiveC()().super.isa;
  v16 = Array._bridgeToObjectiveC()().super.isa;
  v195 = objc_opt_self();
  v185 = [v195 categoryWithIdentifier:v13 actions:isa minimalActions:v15 intentIdentifiers:v16 options:0];

  v17 = [tableName_8 mainBundle];
  v211._object = 0x800000010057C0F0;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = 0x800000010057C0D0;
  v211._countAndFlagsBits = 0xD00000000000002DLL;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v211);

  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();

  v182 = [v193 actionWithIdentifier:v20 title:v21 options:1];

  v22 = [tableName_8 mainBundle];
  v23._countAndFlagsBits = 0xD000000000000016;
  v212._object = 0x800000010057C160;
  v23._object = 0x800000010057C140;
  v212._countAndFlagsBits = 0xD000000000000028;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v212);

  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();

  v180 = [v193 actionWithIdentifier:v25 title:v26 options:1];

  v27 = [tableName_8 mainBundle];
  v213._object = 0x800000010057C1D0;
  v28._countAndFlagsBits = 0xD00000000000001ALL;
  v28._object = 0x800000010057C1B0;
  v213._countAndFlagsBits = 0xD00000000000002CLL;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v213);

  v30 = String._bridgeToObjectiveC()();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v193 actionWithIdentifier:v30 title:v31 options:1];

  v33 = [tableName_8 mainBundle];
  v214._object = 0x800000010057C240;
  v34._object = 0x800000010057C220;
  v214._countAndFlagsBits = 0xD000000000000029;
  v34._countAndFlagsBits = 0xD000000000000017;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v214);

  v36 = String._bridgeToObjectiveC()();
  v37 = String._bridgeToObjectiveC()();

  v38 = [v193 actionWithIdentifier:v36 title:v37 options:1];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1005521F0;
  *(v39 + 32) = v182;
  *(v39 + 40) = v180;
  *(v39 + 48) = v32;
  *(v39 + 56) = v38;
  v184 = v182;
  v183 = v180;
  v181 = v32;
  v179 = v38;
  v40 = String._bridgeToObjectiveC()();
  v41 = Array._bridgeToObjectiveC()().super.isa;

  v42 = Array._bridgeToObjectiveC()().super.isa;
  v43 = Array._bridgeToObjectiveC()().super.isa;
  v175 = [v195 categoryWithIdentifier:v40 actions:v41 minimalActions:v42 intentIdentifiers:v43 options:0];

  v44 = [tableName_8 mainBundle];
  v215._object = 0x8000000100579A00;
  v45._countAndFlagsBits = 0xD000000000000026;
  v45._object = 0x800000010057C2A0;
  v46.value._object = 0x80000001005799E0;
  v215._countAndFlagsBits = 0xD000000000000018;
  v46.value._countAndFlagsBits = 0xD000000000000013;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v215);

  v48 = String._bridgeToObjectiveC()();
  v49 = String._bridgeToObjectiveC()();

  v50 = [v193 actionWithIdentifier:v48 title:v49 options:5];

  v51 = [tableName_8 mainBundle];
  v216._object = 0x8000000100579A00;
  v52._countAndFlagsBits = 0xD000000000000026;
  v52._object = 0x800000010057C300;
  v53.value._object = 0x80000001005799E0;
  v216._countAndFlagsBits = 0xD000000000000018;
  v53.value._countAndFlagsBits = 0xD000000000000013;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v216);

  v55 = String._bridgeToObjectiveC()();
  v56 = String._bridgeToObjectiveC()();

  v57 = [v193 actionWithIdentifier:v55 title:v56 options:5];

  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100552EE0;
  *(v58 + 32) = v50;
  *(v58 + 40) = v57;
  tableName = v50;
  v177 = v57;
  v59 = String._bridgeToObjectiveC()();
  v60 = Array._bridgeToObjectiveC()().super.isa;

  v61 = Array._bridgeToObjectiveC()().super.isa;
  v62 = Array._bridgeToObjectiveC()().super.isa;
  v176 = [v195 categoryWithIdentifier:v59 actions:v60 minimalActions:v61 intentIdentifiers:v62 options:0x20000];

  v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v202 = v63;
  v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v204 = v64;
  v205 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v206 = v65;
  v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v208 = v66;
  specialized ContiguousArray.reserveCapacity(_:)();

  v67 = String._bridgeToObjectiveC()();

  v68 = Array._bridgeToObjectiveC()().super.isa;
  v69 = Array._bridgeToObjectiveC()().super.isa;
  v70 = [v195 categoryWithIdentifier:v67 actions:v68 intentIdentifiers:v69 options:0];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  v71 = String._bridgeToObjectiveC()();

  v72 = Array._bridgeToObjectiveC()().super.isa;
  v73 = Array._bridgeToObjectiveC()().super.isa;
  v74 = [v195 categoryWithIdentifier:v71 actions:v72 intentIdentifiers:v73 options:0];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  v75 = String._bridgeToObjectiveC()();

  v76 = Array._bridgeToObjectiveC()().super.isa;
  v77 = Array._bridgeToObjectiveC()().super.isa;
  v78 = [v195 categoryWithIdentifier:v75 actions:v76 intentIdentifiers:v77 options:0];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  v79 = String._bridgeToObjectiveC()();

  v80 = Array._bridgeToObjectiveC()().super.isa;
  v81 = Array._bridgeToObjectiveC()().super.isa;
  v82 = [v195 categoryWithIdentifier:v79 actions:v80 intentIdentifiers:v81 options:0];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  swift_arrayDestroy();
  v83 = [tableName_8 mainBundle];
  v217._object = 0x800000010057C3B0;
  v84._countAndFlagsBits = 0xD000000000000022;
  v84._object = 0x800000010057C380;
  v217._countAndFlagsBits = 0xD000000000000034;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v217);

  v86 = String._bridgeToObjectiveC()();
  v87 = String._bridgeToObjectiveC()();

  v88 = [v193 actionWithIdentifier:v86 title:v87 options:1];

  v89 = [tableName_8 mainBundle];
  v218._object = 0x800000010057C440;
  v90._countAndFlagsBits = 0xD000000000000023;
  v90._object = 0x800000010057C410;
  v218._countAndFlagsBits = 0xD000000000000035;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, v89, v91, v218);

  v92 = String._bridgeToObjectiveC()();
  v93 = String._bridgeToObjectiveC()();

  v94 = [v193 actionWithIdentifier:v92 title:v93 options:1];

  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_100552EE0;
  *(v95 + 32) = v88;
  *(v95 + 40) = v94;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_100552EE0;
  *(v96 + 32) = v88;
  *(v96 + 40) = v94;
  v97 = v88;
  v98 = v94;
  v174 = v97;
  v173 = v98;
  v99 = String._bridgeToObjectiveC()();
  v100 = Array._bridgeToObjectiveC()().super.isa;

  v101 = Array._bridgeToObjectiveC()().super.isa;

  v102 = Array._bridgeToObjectiveC()().super.isa;
  v172 = [v195 categoryWithIdentifier:v99 actions:v100 minimalActions:v101 intentIdentifiers:v102 options:0];

  v103 = [tableName_8 mainBundle];
  v219._object = 0x800000010057ABB0;
  v104._countAndFlagsBits = 0xD00000000000001ELL;
  v104._object = 0x800000010057C4C0;
  v105.value._object = 0x800000010057AB90;
  v105.value._countAndFlagsBits = 0xD000000000000012;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  v219._countAndFlagsBits = 0xD000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v103, v106, v219);

  v107 = String._bridgeToObjectiveC()();
  v108 = String._bridgeToObjectiveC()();

  v170 = [v193 actionWithIdentifier:v107 title:v108 options:1];

  v109 = [tableName_8 mainBundle];
  v220._object = 0x800000010057ABB0;
  v110._countAndFlagsBits = 0xD000000000000021;
  v110._object = 0x800000010057C500;
  v111.value._object = 0x800000010057AB90;
  v111.value._countAndFlagsBits = 0xD000000000000012;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v220._countAndFlagsBits = 0xD000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v110, v111, v109, v112, v220);

  v113 = String._bridgeToObjectiveC()();
  v114 = String._bridgeToObjectiveC()();

  v115 = [v193 actionWithIdentifier:v113 title:v114 options:1];

  v116 = [tableName_8 mainBundle];
  v221._object = 0x800000010057ABB0;
  v117._countAndFlagsBits = 0xD00000000000001ELL;
  v117._object = 0x800000010057C550;
  v118.value._object = 0x800000010057AB90;
  v118.value._countAndFlagsBits = 0xD000000000000012;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v221._countAndFlagsBits = 0xD000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v117, v118, v116, v119, v221);

  v120 = String._bridgeToObjectiveC()();
  v121 = String._bridgeToObjectiveC()();

  v122 = [v193 actionWithIdentifier:v120 title:v121 options:1];

  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_100552EF0;
  *(v123 + 32) = v122;
  *(v123 + 40) = v115;
  *(v123 + 48) = v170;
  v124 = v122;
  v125 = v115;
  v194 = v170;
  v126 = String._bridgeToObjectiveC()();
  v127 = Array._bridgeToObjectiveC()().super.isa;

  v128 = Array._bridgeToObjectiveC()().super.isa;
  v169 = [v195 categoryWithIdentifier:v126 actions:v127 intentIdentifiers:v128 options:0];

  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_100552EE0;
  *(v129 + 32) = v124;
  *(v129 + 40) = v125;
  tableName_8a = v124;
  v171 = v125;
  v130 = String._bridgeToObjectiveC()();
  v131 = Array._bridgeToObjectiveC()().super.isa;

  v132 = Array._bridgeToObjectiveC()().super.isa;
  v168 = [v195 categoryWithIdentifier:v130 actions:v131 intentIdentifiers:v132 options:0];

  v133 = String._bridgeToObjectiveC()();
  v134 = Array._bridgeToObjectiveC()().super.isa;
  v135 = Array._bridgeToObjectiveC()().super.isa;
  v136 = [v195 categoryWithIdentifier:v133 actions:v134 intentIdentifiers:v135 options:0];

  v137 = String._bridgeToObjectiveC()();
  v138 = Array._bridgeToObjectiveC()().super.isa;
  v139 = Array._bridgeToObjectiveC()().super.isa;
  v140 = [v195 categoryWithIdentifier:v137 actions:v138 intentIdentifiers:v139 options:0];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  *(inited + 32) = v136;
  *(inited + 40) = v140;
  v197 = v136;
  v178 = v140;
  v141 = String._bridgeToObjectiveC()();
  v142 = Array._bridgeToObjectiveC()().super.isa;
  v143 = Array._bridgeToObjectiveC()().super.isa;
  v167 = [v195 categoryWithIdentifier:v141 actions:v142 intentIdentifiers:v143 options:0];

  v144 = String._bridgeToObjectiveC()();
  v145 = Array._bridgeToObjectiveC()().super.isa;
  v146 = Array._bridgeToObjectiveC()().super.isa;
  v147 = [v195 categoryWithIdentifier:v144 actions:v145 intentIdentifiers:v146 options:0];

  v148 = swift_initStackObject();
  *(v148 + 16) = xmmword_1005528C0;
  *(v148 + 32) = v147;
  v149 = objc_opt_self();
  v198 = v147;
  v150 = [v149 currentNotificationCenter];
  v151 = objc_allocWithZone(UNUserNotificationCenter);
  v152 = String._bridgeToObjectiveC()();
  v153 = [v151 initWithBundleIdentifier:v152];

  v154 = swift_initStackObject();
  *(v154 + 16) = xmmword_100552F00;
  *(v154 + 32) = v185;
  *(v154 + 40) = v175;
  *(v154 + 48) = v172;
  *(v154 + 56) = v169;
  *(v154 + 64) = v168;
  v200 = v154;
  v186 = v185;
  v155 = v175;
  v196 = v172;
  v156 = v169;
  v157 = v168;
  sub_10004F210(_swiftEmptyArrayStorage);
  sub_10004F210(inited);
  sub_10004F210(v148);
  v158 = swift_initStackObject();
  *(v158 + 16) = xmmword_1005528C0;
  *(v158 + 32) = v167;
  v159 = v167;
  sub_10004F210(v158);
  sub_10004F3DC(v200);

  sub_10000905C(0, &qword_1006C00F0);
  sub_10004F51C();
  v160 = Set._bridgeToObjectiveC()().super.isa;

  [v150 setNotificationCategories:v160];

  [v150 setDelegate:v189];
  v161 = [objc_opt_self() sharedApplication];
  [v161 registerForRemoteNotifications];

  v162 = swift_allocObject();
  *(v162 + 16) = v153;
  *(v162 + 24) = v189;
  aBlock[4] = sub_1000C5FD0;
  aBlock[5] = v162;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100625028;
  v163 = _Block_copy(aBlock);
  v164 = v153;
  v165 = v189;

  [v150 getNotificationSettingsWithCompletionHandler:v163];
  _Block_release(v163);
}

uint64_t sub_10004F1D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F23C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&qword_1006C0100, &qword_1006C00F8);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C00F8);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000905C(0, &qword_1006C00F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}