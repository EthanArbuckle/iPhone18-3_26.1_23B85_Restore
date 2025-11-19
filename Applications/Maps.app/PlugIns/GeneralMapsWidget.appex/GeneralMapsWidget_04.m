void sub_10007635C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v51 = a3;
  v53 = a2;
  v5 = sub_100015240(&qword_1000DE638, &unk_1000826F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v50 = &v45 - v7;
  v47 = sub_100015240(&unk_1000E24B8, qword_100085F70);
  v8 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v49 = &v45 - v9;
  v48 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v52 = *(v48 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v48);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v45 - v26;
  sub_100026310(a1, v19, &qword_1000DE630, &unk_1000861F0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000256C0(v19, &qword_1000DE630, &unk_1000861F0);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v28 = sub_10007D5C8();
    sub_1000046BC(v28, qword_1000E4B28);
    v29 = sub_10007D5A8();
    v30 = sub_10007E2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "GeneralMapsTimelineProvider: could not resolve content; skipping entry", v31, 2u);
    }

    dispatch_group_leave(v53);
  }

  else
  {
    sub_100077E94(v19, v27, type metadata accessor for GeneralMapsTimelineEntryContent);
    v32 = v49;
    sub_100026310(v46, v49, &unk_1000E24B8, qword_100085F70);
    sub_1000797A8(v27, v17, type metadata accessor for GeneralMapsTimelineEntryContent);
    (*(v21 + 56))(v17, 0, 1, v20);
    sub_1000797A8(v27, v25, type metadata accessor for GeneralMapsTimelineEntryContent);
    v33 = dword_100086070[swift_getEnumCaseMultiPayload()];
    v34 = v50;
    sub_10007E088();
    v35 = *(v47 + 48);
    sub_100077A58(v25, type metadata accessor for GeneralMapsTimelineEntryContent);
    v36 = sub_10007E098();
    (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
    sub_10007D398();
    v37 = v48;
    v38 = *(v48 + 20);
    v39 = sub_10007D3B8();
    (*(*(v39 - 8) + 32))(&v12[v38], v32, v39);
    sub_10002DB0C(v17, &v12[*(v37 + 24)], &qword_1000DE630, &unk_1000861F0);
    sub_10002DB0C(v34, &v12[*(v37 + 28)], &qword_1000DE638, &unk_1000826F0);
    sub_1000250AC((v32 + v35));
    v40 = v51;
    swift_beginAccess();
    v41 = *(v40 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 16) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_100077664(0, v41[2] + 1, 1, v41, &qword_1000E2530, &qword_100086010, type metadata accessor for GeneralMapsTimelineEntry);
      *(v40 + 16) = v41;
    }

    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      v41 = sub_100077664(v43 > 1, v44 + 1, 1, v41, &qword_1000E2530, &qword_100086010, type metadata accessor for GeneralMapsTimelineEntry);
    }

    v41[2] = v44 + 1;
    sub_100077E94(v12, v41 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v44, type metadata accessor for GeneralMapsTimelineEntry);
    *(v40 + 16) = v41;
    swift_endAccess();
    dispatch_group_leave(v53);
    sub_100077A58(v27, type metadata accessor for GeneralMapsTimelineEntryContent);
  }
}

uint64_t sub_1000769DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v38 = a5;
  v39 = a3;
  v9 = sub_10007E078();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v34[1] = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100015240(&qword_1000E2528, &qword_100086008);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = v34 - v14;
  v16 = sub_10007D3B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v34 - v22;
  swift_beginAccess();
  sub_100076E00((a1 + 16));
  swift_endAccess();
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v24 = sub_10007D5C8();
  sub_1000046BC(v24, qword_1000E4B28);
  (*(v17 + 16))(v23, a2, v16);

  v25 = sub_10007D5A8();
  v26 = sub_10007E288();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v34[0] = a6;
    v28 = v27;
    *v27 = 134349312;
    swift_beginAccess();
    *(v28 + 1) = *(*(a1 + 16) + 16);

    *(v28 + 6) = 2050;
    sub_10007D3A8();
    sub_10007D2B8();
    v30 = v29;
    v31 = *(v17 + 8);
    v31(v21, v16);
    v31(v23, v16);
    *(v28 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "GeneralMapsTimelineProvider: will call 'timeline' completion with %{public}ld entries (%{public}f seconds elapsed)", v28, 0x16u);
    a6 = v34[0];
  }

  else
  {

    (*(v17 + 8))(v23, v16);
  }

  swift_beginAccess();
  v32 = *(a1 + 16);

  sub_10007E068();
  type metadata accessor for GeneralMapsTimelineEntry(0);
  sub_100077AB8(&qword_1000E24E8, type metadata accessor for GeneralMapsTimelineEntry);
  sub_10007E0D8();
  sub_100072D68(v37, v38, a6, v15);
  return (*(v35 + 8))(v15, v36);
}

Swift::Int sub_100076E00(void **a1)
{
  v2 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10007975C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000783B4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_100076EAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v3 = a1 + v2[5];
  sub_10007D3A8();
  v4 = v2[6];
  v5 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = sub_10007E098();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);

  return sub_10007D398();
}

uint64_t sub_100077018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100050E18;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000770CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100052944;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100077198(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100077214(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100015240(&qword_1000E2548, &qword_100086028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100015240(&qword_1000E2550, &unk_100086030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100077348(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015240(&qword_1000E2520, &qword_100086000);
  v10 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
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
  v15 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
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

char *sub_100077538(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015240(&qword_1000E2538, &qword_100086018);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_100077664(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100015240(a5, a6);
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

uint64_t sub_100077840()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100002F20(v3, (v0 + v2), v5, v6);
}

uint64_t sub_1000778DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_100077934(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_10007796C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000E24F0, &qword_100085FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000779DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100077A40(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100077A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100077AB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100077B00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007E388(*(v2 + 40));
  return sub_100077D88(a1, v4, &qword_1000DE960, MapsSuggestionsEntry_ptr);
}

unint64_t sub_100077B50(char a1)
{
  v3 = *(v1 + 40);
  sub_10007E5D8();
  sub_10007E5E8(a1 & 1);
  v4 = sub_10007E608();

  return sub_100077C50(a1 & 1, v4);
}

unint64_t sub_100077BBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007E418(*(v2 + 40));

  return sub_100077CC0(a1, v4);
}

unint64_t sub_100077C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007E388(*(v2 + 40));
  return sub_100077D88(a1, v4, &qword_1000DFD08, MKMapSnapshotter_ptr);
}

unint64_t sub_100077C50(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100077CC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100040ACC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10007E428();
      sub_1000415FC(v8);
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

unint64_t sub_100077D88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_10002620C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_10007E398();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_100077E54(char *a1, int64_t a2, char a3)
{
  result = sub_100077EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100077E74(size_t a1, int64_t a2, char a3)
{
  result = sub_100078008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100077E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_100077EFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015240(&qword_1000E2540, &qword_100086020);
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

size_t sub_100078008(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015240(&qword_1000E2518, &qword_100085FF8);
  v10 = *(type metadata accessor for CommuteWindowDetailsString(0) - 8);
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
  v15 = *(type metadata accessor for CommuteWindowDetailsString(0) - 8);
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

void *sub_1000781E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100078224(uint64_t a1)
{
  v3 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10007635C(a1, v4, v5, v6);
}

uint64_t sub_1000782A4()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10007E0C8() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1000769DC(v6, v0 + v2, v7, v0 + v5, v9, v10);
}

Swift::Int sub_1000783B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10007E578(v2);
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
        type metadata accessor for GeneralMapsTimelineEntry(0);
        v6 = sub_10007E1E8();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100078744(v8, v9, a1, v4);
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
    return sub_1000784E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000784E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1000797A8(v24, v18, type metadata accessor for GeneralMapsTimelineEntry);
      sub_1000797A8(v21, v14, type metadata accessor for GeneralMapsTimelineEntry);
      v25 = *(v8 + 20);
      v26 = sub_10007D2E8();
      sub_100077A58(v14, type metadata accessor for GeneralMapsTimelineEntry);
      result = sub_100077A58(v18, type metadata accessor for GeneralMapsTimelineEntry);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_100077E94(v24, v37, type metadata accessor for GeneralMapsTimelineEntry);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100077E94(v27, v21, type metadata accessor for GeneralMapsTimelineEntry);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100078744(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1000790A8(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100079664(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_1000795D8(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100079664(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1000797A8(v114 + v25 * v24, v19, type metadata accessor for GeneralMapsTimelineEntry);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1000797A8(v27, v120, type metadata accessor for GeneralMapsTimelineEntry);
      v30 = *(v9 + 20);
      LODWORD(v115) = sub_10007D2E8();
      sub_100077A58(v29, type metadata accessor for GeneralMapsTimelineEntry);
      result = sub_100077A58(v19, type metadata accessor for GeneralMapsTimelineEntry);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1000797A8(v32, v19, type metadata accessor for GeneralMapsTimelineEntry);
        v33 = v120;
        sub_1000797A8(v5, v120, type metadata accessor for GeneralMapsTimelineEntry);
        v34 = *(v121 + 20);
        v35 = sub_10007D2E8() & 1;
        sub_100077A58(v33, type metadata accessor for GeneralMapsTimelineEntry);
        result = sub_100077A58(v19, type metadata accessor for GeneralMapsTimelineEntry);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_100077E94(v42 + v41, v111, type metadata accessor for GeneralMapsTimelineEntry);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100077E94(v111, v42 + v36, type metadata accessor for GeneralMapsTimelineEntry);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1000797A8(v5, v19, type metadata accessor for GeneralMapsTimelineEntry);
    v96 = v120;
    sub_1000797A8(v93, v120, type metadata accessor for GeneralMapsTimelineEntry);
    v97 = *(v9 + 20);
    a4 = sub_10007D2E8();
    sub_100077A58(v96, type metadata accessor for GeneralMapsTimelineEntry);
    result = sub_100077A58(v19, type metadata accessor for GeneralMapsTimelineEntry);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100077538(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100077538((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1000790A8(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100079664(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_1000795D8(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for GeneralMapsTimelineEntry;
    v98 = v119;
    sub_100077E94(v5, v119, type metadata accessor for GeneralMapsTimelineEntry);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_100077E94(v98, v93, type metadata accessor for GeneralMapsTimelineEntry);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1000790A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for GeneralMapsTimelineEntry(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1000797A8(v33, v47, type metadata accessor for GeneralMapsTimelineEntry);
          v35 = v48;
          sub_1000797A8(v29, v48, type metadata accessor for GeneralMapsTimelineEntry);
          v36 = *(v31 + 20);
          v37 = sub_10007D2E8();
          sub_100077A58(v35, type metadata accessor for GeneralMapsTimelineEntry);
          sub_100077A58(v34, type metadata accessor for GeneralMapsTimelineEntry);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1000797A8(a2, v47, type metadata accessor for GeneralMapsTimelineEntry);
        v22 = v48;
        sub_1000797A8(a4, v48, type metadata accessor for GeneralMapsTimelineEntry);
        v23 = *(v49 + 20);
        v24 = sub_10007D2E8();
        sub_100077A58(v22, type metadata accessor for GeneralMapsTimelineEntry);
        sub_100077A58(v21, type metadata accessor for GeneralMapsTimelineEntry);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_100079678(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1000795D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100079664(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100079678(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for GeneralMapsTimelineEntry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000797A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100079810()
{
  v1 = v0;
  v2 = *(sub_100015240(&qword_1000E2528, &qword_100086008) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10007E0C8() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v1 + v4);
  v7(v1 + v3);
  sub_1000725C8();
}

uint64_t sub_100079920(uint64_t (*a1)(unint64_t, void, void))
{
  v3 = *(sub_10007E0C8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  return a1(v1 + v4, *(v1 + v5), *(v1 + v5 + 8));
}

uint64_t sub_1000799BC()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10007E0C8() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + 16 + v7) & ~v2;
  v9 = *(v0 + v4);
  v10 = (v0 + v7);
  v11 = *v10;
  v12 = v10[1];

  return sub_100073954(v0 + v3, v9, v0 + v6, v11, v12, v0 + v8);
}

uint64_t sub_100079ADC(uint64_t a1)
{
  v3 = *(sub_10007D3B8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10007E0C8() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
  v10 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_100015240(&unk_1000E24B8, qword_100085F70) - 8);
  v13 = *(v1 + v5);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1000742D8(a1, v1 + v4, v13, v1 + v7, v14, v15, v1 + v10, v16);
}

void sub_100079CA8()
{
  v1 = v0;
  v2 = *(type metadata accessor for GeneralMapsTimelineEntry(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10007E0C8() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v1 + v4);
  v7(v1 + v3);
  sub_1000725C8();
}

void sub_100079DC4(void *a1)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    if (*(v1 + 88) == 1)
    {
      v4 = v2;
      [v4 coordinate];
      v6 = v5;
      v8 = v7;
      [a1 pointForCoordinate:?];
      v10 = v9;
      [v4 horizontalAccuracy];
      v12 = v11;
      [v4 horizontalAccuracy];
      v14 = v13;
      v20.latitude = v6;
      v20.longitude = v8;
      v21 = MKCoordinateRegionMakeWithDistance(v20, v12, v14);
      [a1 pointForCoordinate:{v6, v8 + v21.span.longitudeDelta, v21.span.latitudeDelta}];
      v16 = vabdd_f64(v15, v10);
      v17 = [objc_opt_self() mainScreen];
      [v17 scale];
      v19 = v18;

      *(v1 + 80) = 1.0 / v19 * round(v16 / (1.0 / v19));
      *(v1 + 88) = 0;
    }
  }
}

uint64_t sub_100079EF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100079F60()
{
  v0 = sub_10007DFF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E0B8();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for WidgetFamily.systemSmall(_:) || v5 == enum case for WidgetFamily.systemMedium(_:) || v5 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_10007E0A8();
    return _MKMapRectThatFits();
  }

  else
  {
    result = sub_10007E518();
    __break(1u);
  }

  return result;
}

void sub_10007A224()
{
  sub_1000649A8(319, &qword_1000E19C0);
  if (v0 <= 0x3F)
  {
    sub_10007A434(319, &unk_1000E27B8, type metadata accessor for NearbyEntryContent.ResolvedContent, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007A330()
{
  sub_10007E0C8();
  if (v0 <= 0x3F)
  {
    sub_10007A434(319, &qword_1000E2850, type metadata accessor for NearbyButtonContent, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1000649A8(319, &qword_1000E05F0);
      if (v2 <= 0x3F)
      {
        sub_1000649A8(319, &unk_1000E2858);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007A434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10007A500()
{
  result = type metadata accessor for NearbyButtonAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007A584()
{
  result = sub_10007D288();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007A62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007BF14(v2, v6, type metadata accessor for NearbyButtonAction);
  v7 = sub_10007D288();
  return (*(*(v7 - 8) + 32))(a2, v6, v7);
}

id sub_10007A6F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  sub_1000301E4(*v2, v2[1]);
  return v3;
}

uint64_t sub_10007A748(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10007A800()
{
  type metadata accessor for NearbyEntryContent(319);
  if (v0 <= 0x3F)
  {
    sub_10007A914();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MKMapType(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MKMapRect(319);
        if (v3 <= 0x3F)
        {
          sub_100026254();
          if (v4 <= 0x3F)
          {
            sub_10007A434(319, &unk_1000E1B68, &type metadata accessor for UUID, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10007A914()
{
  if (!qword_1000E1B58)
  {
    sub_10002620C(255, &qword_1000DF538, CLLocation_ptr);
    v0 = sub_10007E3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E1B58);
    }
  }
}

uint64_t sub_10007A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v41 = a3;
  v42 = a4;
  v36 = a1;
  v44 = sub_10007DEB8();
  v47 = *(v44 - 8);
  v4 = *(v47 + 64);
  __chkstk_darwin(v44);
  v43 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10007D3B8();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007E0C8();
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NearbyEntryContentResolver(0);
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v39 = sub_10007E328();
  sub_10007BF14(v37, v17, type metadata accessor for NearbyEntryContentResolver);
  (*(v12 + 16))(v14, v36, v11);
  v18 = v35;
  (*(v9 + 16))(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v35);
  v19 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v20 = (v16 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  sub_10007CB14(v17, v22 + v19, type metadata accessor for NearbyEntryContentResolver);
  (*(v12 + 32))(v22 + v20, v14, v33);
  (*(v9 + 32))(v22 + v21, v34, v18);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v42;
  *v23 = v41;
  v23[1] = v24;
  aBlock[4] = sub_10007BF7C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9A90;
  v25 = _Block_copy(aBlock);

  v26 = v40;
  sub_10007DEC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007C0D4(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  v28 = v43;
  v27 = v44;
  sub_10007E3F8();
  v29 = v39;
  sub_10007E338();
  _Block_release(v25);

  (*(v47 + 8))(v28, v27);
  return (*(v45 + 8))(v26, v46);
}

uint64_t sub_10007AED8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), void (*a5)(char *))
{
  v75 = a4;
  v76 = a5;
  v68 = a3;
  v7 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v63 - v9;
  v67 = type metadata accessor for NearbyEntryContent(0);
  v11 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007E0C8();
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  __chkstk_darwin(v13);
  v69 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NearbyEntryContentResolver(0);
  v16 = v15 - 8;
  v65 = *(v15 - 8);
  v17 = *(v65 + 64);
  __chkstk_darwin(v15);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v63 - v20;
  v22 = sub_10007DFF8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v16 + 40);
  v71 = a1;
  v28 = sub_10007C11C(*(a1 + v27));
  v74 = a2;
  sub_10007E0B8();
  v29 = (*(v23 + 88))(v26, v22);
  if (v29 == enum case for WidgetFamily.systemSmall(_:) || v29 == enum case for WidgetFamily.systemMedium(_:) || v29 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v40 = sub_10007D5C8();
    sub_1000046BC(v40, qword_1000E4B28);
    v41 = sub_10007D5A8();
    v42 = sub_10007E288();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "NearbyEntryContentResolver: generating map snapshot (supported for this family)", v43, 2u);
    }

    v44 = v74;
    v45 = v68;
    v46 = v71;
    sub_10007B7B0(v74, v68, *(v28 + 16) < 2uLL);
    v70 = v47;
    v48 = sub_10007D3B8();
    v49 = *(v48 - 8);
    v50 = *(v49 + 16);
    v64 = v21;
    v50(v21, v45, v48);
    (*(v49 + 56))(v21, 0, 1, v48);
    v51 = v66;
    sub_10007BF14(v46, v66, type metadata accessor for NearbyEntryContentResolver);
    v52 = v28;
    v54 = v72;
    v53 = v73;
    v55 = v69;
    (*(v72 + 16))(v69, v44, v73);
    v56 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v57 = (v17 + *(v54 + 80) + v56) & ~*(v54 + 80);
    v58 = (v14 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    sub_10007CB14(v51, v59 + v56, type metadata accessor for NearbyEntryContentResolver);
    (*(v54 + 32))(v59 + v57, v55, v53);
    *(v59 + v58) = v52;
    v60 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
    v61 = v76;
    *v60 = v75;
    v60[1] = v61;

    v62 = v64;
    sub_10003AB38(v64, sub_10007CA04, v59);

    return sub_1000256C0(v62, &qword_1000DE928, &unk_100082900);
  }

  else
  {
    if (v29 == enum case for WidgetFamily.systemExtraLarge(_:) || v29 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v29 == enum case for WidgetFamily.accessoryCorner(_:) || v29 == enum case for WidgetFamily.accessoryCircular(_:) || v29 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      while (1)
      {
        sub_10007E518();
        __break(1u);
      }
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v30 = sub_10007D5C8();
    sub_1000046BC(v30, qword_1000E4B28);
    v31 = sub_10007D5A8();
    v32 = sub_10007E288();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "NearbyEntryContentResolver: skipping map snapshot (not supported for this family)", v33, 2u);
    }

    v34 = v70;
    sub_10007BF14(v71, v70, type metadata accessor for NearbyEntryContent);
    v35 = v34 + *(v67 + 20);
    sub_1000256C0(v35, &qword_1000DEF00, &qword_100082E50);
    (*(v72 + 16))(v35, v74, v73);
    v36 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
    *(v35 + v36[5]) = v28;
    *(v35 + v36[6]) = xmmword_1000845B0;
    v37 = v35 + v36[7];
    *v37 = 0;
    *(v37 + 8) = 1;
    (*(*(v36 - 1) + 56))(v35, 0, 1, v36);
    sub_10007BF14(v34, v10, type metadata accessor for NearbyEntryContent);
    v38 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
    v75(v10);
    sub_1000256C0(v10, &qword_1000DE630, &unk_1000861F0);
    return sub_10007C9A8(v34);
  }
}

void sub_10007B7B0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v50 = a3;
  v6 = sub_10007E0C8();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007DFF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007DF48();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v20 = sub_10007E328();
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = sub_10007DF68();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = type metadata accessor for MapSnapshotter();
  v23 = type metadata accessor for NearbyEntryContentResolver(0);
  v24 = v23[9];
  sub_10007E0B8();
  v48 = v24;
  v49 = v22;
  v25 = sub_10003D474(v4 + v24, v15);
  v26 = *(v12 + 8);
  v26(v15, v11);
  if (v25)
  {
    type metadata accessor for NearbySnapshotter();
    if (swift_dynamicCastClass())
    {
      return;
    }
  }

  v27 = v51;
  v28 = *(v52 + 16);
  v47 = a1;
  v28(v10, a1, v51);
  v29 = *(v4 + v23[5]);
  v46 = *(v4 + v23[6]);
  v30 = (v4 + v23[7]);
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  type metadata accessor for NearbySnapshotter();
  v35 = swift_allocObject();
  *(v35 + 80) = 0;
  *(v35 + 88) = 1;
  *(v35 + 96) = v29;
  *(v35 + 16) = xmmword_1000834F0;
  *(v35 + 32) = 0;
  v36 = v29;
  *(v35 + 40) = dispatch_group_create();
  *(v35 + 48) = 0;
  *(v35 + 56) = sub_100024EF0(_swiftEmptyArrayStorage);
  *(v35 + 64) = 0;
  *(v35 + 72) = _swiftEmptyArrayStorage;
  v37 = objc_allocWithZone(MKMapSnapshotOptions);
  swift_retain_n();
  v38 = [v37 init];
  v39 = *(v35 + 16);
  *(v35 + 16) = v38;

  if (!v38)
  {
    goto LABEL_12;
  }

  [v38 _setShowsAppleLogo:0];
  v40 = *(v35 + 16);
  if (!v40)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v41 = v40;
  sub_10007E0A8();
  [v41 setSize:?];

  sub_100079F60();
  v42 = *(v35 + 16);
  if (!v42)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v42 setMapRect:?];
  v43 = *(v35 + 16);
  v44 = v43;

  if (!v43)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v44 setMapType:v46];

  (*(v52 + 8))(v10, v27);
  sub_10007E0B8();
  sub_10003DC98(v35, v4 + v48, v15);
  v26(v15, v11);
}

uint64_t sub_10007BC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v29 = a5;
  v8 = sub_100015240(&qword_1000DE630, &unk_1000861F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for NearbyEntryContent(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NearbySnapshotter();
  v17 = swift_dynamicCastClassUnconditional();
  sub_10007BF14(a2, v16, type metadata accessor for NearbyEntryContent);
  v18 = &v16[*(v13 + 28)];
  sub_1000256C0(v18, &qword_1000DEF00, &qword_100082E50);
  v19 = sub_10007E0C8();
  (*(*(v19 - 8) + 16))(v18, a3, v19);
  v20 = *(v17 + 24);
  v21 = *(v17 + 32);
  v22 = *(v17 + 80);
  LOBYTE(v17) = *(v17 + 88);
  v23 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  *(v18 + v23[5]) = a4;
  v24 = (v18 + v23[6]);
  *v24 = v20;
  v24[1] = v21;
  v25 = v18 + v23[7];
  *v25 = v22;
  *(v25 + 8) = v17;
  (*(*(v23 - 1) + 56))(v18, 0, 1, v23);
  sub_10007BF14(v16, v11, type metadata accessor for NearbyEntryContent);
  v26 = type metadata accessor for GeneralMapsTimelineEntryContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v11, 0, 1, v26);

  sub_1000301E4(v20, v21);
  v29(v11);
  sub_1000256C0(v11, &qword_1000DE630, &unk_1000861F0);
  return sub_10007C9A8(v16);
}

uint64_t sub_10007BF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007BF7C()
{
  v1 = *(type metadata accessor for NearbyEntryContentResolver(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_10007E0C8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10007D3B8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_10007AED8(v0 + v2, v0 + v5, v0 + v8, v10, v11);
}

uint64_t sub_10007C0D4(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_10007C11C(unint64_t a1)
{
  v73 = a1;
  v72 = type metadata accessor for NearbyButtonAction(0);
  v1 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v70 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for NearbyButtonContent(0);
  v3 = *(v71 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v71);
  v75 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_10007DFF8();
  v6 = *(v74 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v74);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v62 - v10);
  sub_100015240(&qword_1000E2558, qword_100086200);
  v12 = *(v3 + 72);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v69 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100082820;
  v68 = v13;
  v15 = (v14 + v13);
  if (qword_1000DE228 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v17 = qword_1000E4AD0;
    v16 = *algn_1000E4AD8;
    v18 = qword_1000DE280;
    v19 = qword_1000E4AD0;
    v20 = v16;
    if (v18 != -1)
    {
      swift_once();
    }

    v21.super.isa = qword_1000E4B68;
    v61._countAndFlagsBits = 0x800000010008F6C0;
    v78._countAndFlagsBits = 0x686372616553;
    v76._object = 0x800000010008F6A0;
    v76._countAndFlagsBits = 0xD000000000000014;
    v77.value._countAndFlagsBits = 0;
    v77.value._object = 0;
    v78._object = 0xE600000000000000;
    v22 = sub_10007D258(v76, v77, v21, v78, v61);
    v24 = v23;
    v25 = *(v71 + 24);
    sub_10007E0B8();
    sub_10006707C(v11);
    v26 = v11;
    v11 = v74;
    (v6[1])(v26, v74);
    swift_storeEnumTagMultiPayload();
    *v15 = v17;
    v15[1] = v16;
    v15[2] = v22;
    v15[3] = v24;
    if (!v73)
    {
      return v14;
    }

    v27 = v67;
    sub_10007E0B8();
    v28 = v6[11];
    v6 += 11;
    v29 = (v28)(v27, v11);
    if (v29 != enum case for WidgetFamily.systemSmall(_:))
    {
      if (v29 == enum case for WidgetFamily.systemMedium(_:))
      {
        v30 = 2;
        goto LABEL_11;
      }

      if (v29 == enum case for WidgetFamily.systemLarge(_:))
      {
        v30 = 4;
        goto LABEL_11;
      }

      if (v29 == enum case for WidgetFamily.systemExtraLarge(_:) || v29 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v29 == enum case for WidgetFamily.accessoryCorner(_:) || v29 == enum case for WidgetFamily.accessoryCircular(_:))
      {
        goto LABEL_38;
      }

      if (v29 != enum case for WidgetFamily.accessoryRectangular(_:))
      {
        if (v29 == enum case for WidgetFamily.accessoryInline(_:))
        {
LABEL_38:
          LODWORD(v61._object) = 0;
        }

        else
        {
LABEL_47:
          LODWORD(v61._object) = 0;
        }

        sub_10007E518();
        __break(1u);
        goto LABEL_40;
      }
    }

    v30 = 1;
LABEL_11:
    v67 = v30;
    v63 = v73 & 0xFFFFFFFFFFFFFF8;
    if (v73 >> 62)
    {
      v31 = sub_10007E528();
      if (!v31)
      {
        return v14;
      }
    }

    else
    {
      v31 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        return v14;
      }
    }

    v32 = objc_opt_self();
    v33 = 0;
    v65 = v32;
    v66 = v73 & 0xC000000000000001;
    v6 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
    v11 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
    v64 = v31;
    while (1)
    {
      if (v66)
      {
        v34 = sub_10007E468();
      }

      else
      {
        if (v33 >= *(v63 + 16))
        {
          goto LABEL_41;
        }

        v34 = *(v73 + 8 * v33 + 32);
      }

      v15 = v34;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v74 = v33 + 1;
      v35 = [v34 styleAttributes];
      v36 = [v32 v6[34]];
      [v36 v11[35]];
      v38 = v37;

      if (!v35 || (v39 = [objc_opt_self() imageForStyle:v35 size:4 forScale:0 format:0 nightMode:v38]) == 0)
      {
        v40 = objc_opt_self();
        v41 = [objc_opt_self() markerStyleAttributes];
        v39 = [v40 imageForStyle:v41 size:4 forScale:0 format:0 nightMode:v38];
      }

      v42 = [v32 v6[34]];
      [v42 v11[35]];
      v44 = v43;

      if (!v35 || (v45 = [objc_opt_self() imageForStyle:v35 size:4 forScale:0 format:1 nightMode:v44]) == 0)
      {
        v46 = objc_opt_self();
        v47 = [objc_opt_self() markerStyleAttributes];
        v45 = [v46 imageForStyle:v47 size:4 forScale:0 format:1 nightMode:v44];
      }

      v11 = v6;

      v48 = [v15 shortDisplayString];
      if (!v48)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v49 = v48;
      v6 = v14;
      v50 = sub_10007E158();
      v52 = v51;

      v53 = [v15 mapsURL];
      if (!v53)
      {
        goto LABEL_46;
      }

      v54 = v53;
      v55 = v70;
      sub_10007D278();

      swift_storeEnumTagMultiPayload();
      v56 = v75;
      *v75 = v39;
      v56[1] = v45;
      v56[2] = v50;
      v56[3] = v52;
      sub_10007CB14(v55, v56 + *(v71 + 24), type metadata accessor for NearbyButtonAction);
      v14 = v6;
      v58 = v6[2];
      v57 = v6[3];
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v14 = sub_10007763C(v57 > 1, v58 + 1, 1, v6);
      }

      v32 = v65;
      v6 = v11;

      *(v14 + 16) = v59;
      sub_10007CB14(v75, v14 + v68 + v58 * v69, type metadata accessor for NearbyButtonContent);
      v11 = &selRef_ticketForCategoryListWithTraits_isFromNoQueryState_;
      if (v59 < v67)
      {
        ++v33;
        if (v74 != v64)
        {
          continue;
        }
      }

      return v14;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }
}

uint64_t sub_10007C9A8(uint64_t a1)
{
  v2 = type metadata accessor for NearbyEntryContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007CA04(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyEntryContentResolver(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10007E0C8() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_10007BC64(a1, v1 + v4, v1 + v7, v9, v11);
}

uint64_t sub_10007CB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_10007CBA0(int a1, int a2, int a3)
{
  if (qword_1000E4AB0 == -1)
  {
    v3 = dword_1000E4AA0 < a1;
    if (dword_1000E4AA0 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10007D1E8();
    a2 = v6;
    a3 = v5;
    v3 = dword_1000E4AA0 < a1;
    if (dword_1000E4AA0 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1000E4AA4 > a2)
  {
    return 1;
  }

  if (dword_1000E4AA4 < a2)
  {
    return 0;
  }

  return dword_1000E4AA8 >= a3;
}

uint64_t sub_10007CC60(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000E4AB8 == -1)
  {
    if (qword_1000E4AC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10007D200();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000E4AC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000E4AB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10007D1E8();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000E4AA0 < v11;
    if (dword_1000E4AA0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000E4AA4 > a3)
      {
        return 1;
      }

      if (dword_1000E4AA4 >= a3)
      {
        return dword_1000E4AA8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000E4AA0 < a2;
  if (dword_1000E4AA0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10007CDF4(uint64_t result)
{
  v1 = qword_1000E4AC0;
  if (qword_1000E4AC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000E4AC0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000E4AA0, &dword_1000E4AA4, &dword_1000E4AA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

id sub_10007D18C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if ([a1 type] == 11)
    {
      a1 = [v2 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}