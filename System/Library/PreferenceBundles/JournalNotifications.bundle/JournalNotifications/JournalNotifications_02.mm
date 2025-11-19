uint64_t sub_2E040(uint64_t a1)
{
  v3 = sub_3CB0(&qword_105CE8);
  __chkstk_darwin(v3 - 8);
  v89 = &v82 - v4;
  v5 = sub_C4534();
  v90 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v86 = &v82 - v8;
  v9 = sub_C45C4();
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  v11 = __chkstk_darwin(v9);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v82 - v13;
  v14 = sub_3CB0(&qword_1047C0);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v93 = &v82 - v18;
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = sub_3CB0(&qword_1047E0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v100 = &v82 - v23;
  v101 = v1;
  v24 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager;
  v25 = *(v1 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager);
  v99 = v20;
  if (v25)
  {
    v26 = v21;
    v27 = OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity;
    v28 = *&v25[OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity];
    v29 = *(v28 + 24);
    v30 = v25;
    if (v29)
    {
      sub_60174();
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
  v94 = sub_59FC4(&off_F0288);
  if (qword_104200 != -1)
  {
    swift_once();
  }

  v35 = unk_115460;
  v92 = qword_115458;
  (*(v22 + 16))(v100, a1, v21);
  v36 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
  v37 = v101;
  swift_beginAccess();
  v87 = v36;
  sub_B954(v37 + v36, v20, &qword_1047C0);
  v38 = *(v37 + v24);
  v5 = v97;
  v96 = v35;
  if (v38)
  {
    v39 = qword_1041A0;
    v20 = v38;
    if (v39 == -1)
    {
LABEL_11:
      v40 = sub_C4CD4();
      sub_B680(v40, qword_105720);

      v41 = sub_C4CB4();
      v42 = sub_C5A34();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102[0] = v44;
        *v43 = 136315138;

        v45 = v22;
        v46 = v21;
        v47 = sub_BA920(v92, v96, v102);

        *(v43 + 4) = v47;
        v21 = v46;
        v22 = v45;
        v5 = v97;
        _os_log_impl(&dword_0, v41, v42, "undoable (%s)", v43, 0xCu);
        sub_BED0(v44);
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
  v48 = sub_2B018();
  v49 = *(v98 + 48);
  if (!v49(v50, 1, v5))
  {
    sub_C4584();
  }

  (v48)(v102, 0);
  v51 = *(v101 + v24);
  v52 = v99;
  v53 = v95;
  if (v51)
  {
    v54 = v93;
    sub_B954(v99, v93, &qword_1047C0);
    if (v49(v54, 1, v5) == 1)
    {

      sub_C060(v52, &qword_1047C0);
      (*(v22 + 8))(v100, v21);
      v55 = v54;
      v56 = &qword_1047C0;
    }

    else
    {
      v82 = v22;
      v58 = v54;
      v59 = v98;
      v60 = v91;
      (*(v98 + 32))(v91, v58, v5);
      sub_B954(v87 + v101, v53, &qword_1047C0);
      if (v49(v53, 1, v5))
      {

        (*(v59 + 8))(v60, v5);
        sub_C060(v52, &qword_1047C0);
        (*(v82 + 8))(v100, v21);
        sub_C060(v53, &qword_1047C0);
        v61 = v89;
        (*(v90 + 56))(v89, 1, 1, v88);
      }

      else
      {
        v62 = v53;
        v63 = v85;
        (*(v59 + 16))(v85, v62, v5);
        v93 = v51;
        sub_C060(v62, &qword_1047C0);
        v61 = v89;
        sub_C4554();
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
          v69 = sub_C5444();
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
          sub_C59C4();

          (*(v67 + 8))(v86, v68);
          v95(v91, v97);
          sub_C060(v99, &qword_1047C0);
          result = (*(v82 + 8))(v100, v89);
          goto LABEL_28;
        }

        (v64)(v60, v5);
        sub_C060(v52, &qword_1047C0);
        (*(v82 + 8))(v100, v21);
      }

      v56 = &qword_105CE8;
      v55 = v61;
    }

    result = sub_C060(v55, v56);
  }

  else
  {

    sub_C060(v52, &qword_1047C0);
    result = (*(v22 + 8))(v100, v21);
  }

LABEL_28:
  *(v101 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_textChanged) = 1;
  return result;
}

void sub_2EB44(id a1)
{
  v2 = v1;
  v4 = sub_3CB0(&qword_105CE8);
  __chkstk_darwin(v4 - 8);
  v86 = v79 - v5;
  v87 = sub_C4534();
  v88 = *(v87 - 8);
  v6 = __chkstk_darwin(v87);
  v84 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v85 = v79 - v8;
  v9 = sub_C45C4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v93 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = v79 - v13;
  v14 = sub_3CB0(&qword_1047C0);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v96 = (v79 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = v79 - v20;
  __chkstk_darwin(v19);
  v99 = v79 - v22;
  v23 = sub_3CB0(&qword_105CF0);
  v101 = *(v23 - 8);
  v102 = v23;
  v24 = __chkstk_darwin(v23);
  v89 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v100 = v79 - v26;
  v27 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager;
  v28 = *(v1 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_undoManager);
  v98 = v10;
  if (v28)
  {
    v29 = OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity;
    v30 = *&v28[OBJC_IVAR____TtC20JournalNotifications16EntryUndoManager_lastUndoableActivity];
    v31 = *(v30 + 24);
    v10 = v28;
    if (v31 != 1)
    {
      sub_60174();
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

  v94 = sub_59FC4(&off_F02B0);
  if (qword_104200 != -1)
  {
    swift_once();
  }

  v28 = unk_115460;
  v90 = qword_115458;
  (*(v101 + 16))(v100, a1, v102);
  v36 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v97 = v36;
  sub_B954(v2 + v36, v99, &qword_1047C0);
  v37 = *(v2 + v27);
  v91 = v28;
  if (v37)
  {
    v38 = qword_1041A0;
    a1 = v37;
    if (v38 == -1)
    {
LABEL_11:
      v39 = sub_C4CD4();
      sub_B680(v39, qword_105720);

      v40 = sub_C4CB4();
      v41 = sub_C5A34();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v9;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103[0] = v44;
        *v43 = 136315138;

        v45 = sub_BA920(v90, v28, v103);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_0, v40, v41, "undoable (%s)", v43, 0xCu);
        sub_BED0(v44);

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
  v46 = sub_2B018();
  v47 = *(v10 + 6);
  if (!v47(v48, 1, v9))
  {
    sub_C4594();
  }

  (v46)(v103, 0);
  v49 = *(v2 + v27);
  v50 = v99;
  v51 = v96;
  if (!v49)
  {

    sub_C060(v50, &qword_1047C0);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_22;
  }

  sub_B954(v99, v21, &qword_1047C0);
  if (v47(v21, 1, v9) == 1)
  {

    sub_C060(v50, &qword_1047C0);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_C060(v21, &qword_1047C0);
LABEL_22:
    v53 = v95;
    v54 = v97;
    goto LABEL_28;
  }

  v55 = v92;
  (*(v10 + 4))(v92, v21, v9);
  v54 = v97;
  sub_B954(v2 + v97, v51, &qword_1047C0);
  if (v47(v51, 1, v9))
  {

    (*(v10 + 1))(v55, v9);
    sub_C060(v50, &qword_1047C0);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_C060(v51, &qword_1047C0);
    v56 = v86;
    (*(v88 + 56))(v86, 1, 1, v87);
LABEL_27:
    v53 = v95;
    sub_C060(v56, &qword_105CE8);
    goto LABEL_28;
  }

  v57 = v93;
  (*(v10 + 2))(v93, v51, v9);
  v82 = v49;
  sub_C060(v51, &qword_1047C0);
  v56 = v86;
  sub_C4554();
  v96 = *(v10 + 1);
  v96(v57, v9);
  v58 = v88;
  v59 = v87;
  if ((*(v88 + 48))(v56, 1, v87) == 1)
  {

    v96(v92, v9);
    sub_C060(v99, &qword_1047C0);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_27;
  }

  v66 = *(v58 + 32);
  v79[1] = v58 + 32;
  v80 = v66;
  v66(v85, v56, v59);
  v67 = sub_C5444();
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
  sub_C59C4();

  (*(v88 + 8))(v85, v59);
  v96(v92, v9);
  sub_C060(v99, &qword_1047C0);
  v52 = *(v101 + 8);
  v52(v100, v102);
  v53 = v95;
LABEL_28:
  sub_B954(v2 + v54, v53, &qword_1047C0);
  if (v47(v53, 1, v9))
  {
    sub_C060(v53, &qword_1047C0);
    v60 = 0;
  }

  else
  {
    v61 = v93;
    (*(v10 + 2))(v93, v53, v9);
    sub_C060(v53, &qword_1047C0);
    v62 = v89;
    sub_C45B4();
    (*(v10 + 1))(v61, v9);
    v63 = [objc_allocWithZone(UITraitCollection) init];
    v64 = sub_13CD0();
    v103[3] = &_s22TitleAttributeProviderVN;
    v103[4] = v64;
    sub_BF70(v103);
    sub_2F84C(&qword_105CF8, &type metadata accessor for MergeableTitleAttributeScope);
    v65 = v102;
    v60 = sub_C51B4();

    sub_BED0(v103);
    v52(v62, v65);
  }

  sub_2BD18(v60);

  *(v2 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_textChanged) = 1;
}

uint64_t sub_2F84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2F89C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2F900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2F954()
{
  v1 = sub_C4534();
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

uint64_t sub_2FA44(uint64_t a1)
{
  v3 = *(sub_C4534() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_2CD34(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2FB10(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_28D98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2FB94()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_105D18);
  sub_B680(v0, qword_105D18);
  return sub_C4CC4();
}

uint64_t sub_2FC14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_3CB0(&qword_105EA8);
  v3[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_C5724();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[6] = v5;
  v3[7] = v7;

  return _swift_task_switch(sub_2FCF0, v5, v7);
}

uint64_t sub_2FCF0()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2FD88;
  v2 = v0[3];
  v3 = v0[2];

  return sub_68090(v3, v2);
}

uint64_t sub_2FD88(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_2FEB0, v4, v3);
}

uint64_t sub_2FEB0()
{
  v1 = v0[9];
  if (v1)
  {
LABEL_13:

    v16 = v0[1];

    return v16(v1);
  }

  v2 = v0[5];
  sub_31180(v0[4] + qword_1153D8, v2);
  v3 = sub_C4614();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_C060(v0[5], &qword_105EA8);
LABEL_8:
    if (qword_1041A8 != -1)
    {
      swift_once();
    }

    v12 = sub_C4CD4();
    sub_B680(v12, qword_105D18);
    v13 = sub_C4CB4();
    v14 = sub_C5A44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "no visits data", v15, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_C45D4();
  v0[10] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_3011C;
  v9 = v0[3];
  v10 = v0[2];

  return sub_30688(v10, v9, v7);
}

uint64_t sub_3011C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_30268, v4, v3);
}

uint64_t sub_30268()
{
  if (*(v0 + 96))
  {
    v1 = *(*(v0 + 32) + qword_115590);
    *(v0 + 120) = v1;
    if (sub_7EC34(v1))
    {
      sub_5DAF8();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_303CC;
      v8 = *(v0 + 16);

      return sub_5DBF0(v8, v3 * v6);
    }

    v10 = *(v0 + 96);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_303CC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_304F4, v4, v3);
}

uint64_t sub_304F4()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (sub_7E424(*(v0 + 120)))
    {
      if (qword_104290 != -1)
      {
        swift_once();
      }

      sub_6B8E0(v1, *(*(v0 + 32) + qword_107B38), *(*(v0 + 32) + qword_107B38 + 8));
    }
  }

  else
  {
    if (qword_1041A8 != -1)
    {
      swift_once();
    }

    v2 = sub_C4CD4();
    sub_B680(v2, qword_105D18);
    v1 = sub_C4CB4();
    v3 = sub_C5A44();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v1, v3, "error creating thumbnail from video preview image", v4, 2u);
    }
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_30688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  sub_3CB0(&qword_105EA8);
  v4[21] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_C5724();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v4[22] = v6;
  v4[23] = v8;

  return _swift_task_switch(sub_30760, v6, v8);
}

uint64_t sub_30760()
{
  v1 = v0[20];
  v2 = sub_1D1C0(v0[19]);
  v0[24] = v2;
  v3 = *(v1 + qword_1155A0);
  v4 = *(v1 + qword_115590);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_30844;

  return sub_1C5DC(v2, v4, v3);
}

uint64_t sub_30844(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_30990, v4, v3);
}

uint64_t sub_30990()
{
  v1 = *(v0 + 168);
  sub_31180(*(v0 + 160) + qword_1153D8, v1);
  v2 = sub_C4614();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_C060(*(v0 + 168), &qword_105EA8);
  }

  else
  {
    v4 = sub_C45E4();
    v6 = *(v0 + 168);
    if (v5 >> 60 == 15)
    {
      (*(v3 + 8))(*(v0 + 168), v2);
    }

    else
    {
      v7 = v4;
      v8 = v5;
      sub_31208();
      v9 = sub_C5D14();
      sub_1D580(v7, v8);
      (*(v3 + 8))(v6, v2);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = [*(v0 + 208) camera];
LABEL_7:
  v10 = *(v0 + 208);
  [v10 setCamera:v9];

  [v10 _setRendersInBackground:1];
  v11 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v10];
  *(v0 + 216) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_30C3C;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_3CB0(&qword_1050E8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_327E0;
  *(v0 + 104) = &unk_F1F20;
  *(v0 + 112) = v12;
  [v11 startWithCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_30C3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_30E08;
  }

  else
  {
    v5 = sub_30D6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_30D6C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_30E08()
{
  swift_willThrow();
  if (qword_1041A8 != -1)
  {
    swift_once();
  }

  v1 = sub_C4CD4();
  sub_B680(v1, qword_105D18);
  swift_errorRetain();
  v2 = sub_C4CB4();
  v3 = sub_C5A44();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_C060(v8, &qword_1050F0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t type metadata accessor for MultiPinMapThumbnailCacheOperation()
{
  result = qword_105D58;
  if (!qword_105D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_31090()
{
  sub_31120();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_31120()
{
  if (!qword_105D68)
  {
    sub_C4614();
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_105D68);
    }
  }
}

uint64_t sub_31180(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_105EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_31208()
{
  result = qword_105EB0;
  if (!qword_105EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_105EB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_313A8()
{
  result = qword_105EB8;
  if (!qword_105EB8)
  {
    sub_28D98(&qword_105EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105EB8);
  }

  return result;
}

uint64_t sub_3140C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000070756FLL;
  v3 = 0x72476465696E6564;
  v4 = a1;
  v5 = 0x6F546B6165727473;
  v6 = 0xEC000000656C6767;
  if (a1 != 6)
  {
    v5 = 0x69546B6165727473;
    v6 = 0xEA0000000000656DLL;
  }

  v7 = 0x656C756465686373;
  v8 = 0xEC0000006B6E694CLL;
  if (a1 != 4)
  {
    v7 = 0x72476B6165727473;
    v8 = 0xEB0000000070756FLL;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000000000C7DA0;
  if (a1 != 2)
  {
    v9 = 0x656C756465686373;
    v10 = 0xED000070756F7247;
  }

  v11 = 0x75426465696E6564;
  v12 = 0xEC0000006E6F7474;
  if (!a1)
  {
    v11 = 0x72476465696E6564;
    v12 = 0xEB0000000070756FLL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        if (v13 != 0x72476B6165727473)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v15 = 0x656C756465686373;
      v16 = 1802398028;
      goto LABEL_32;
    }

    if (a2 == 6)
    {
      v15 = 0x6F546B6165727473;
      v16 = 1701603175;
LABEL_32:
      v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v13 != v15)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v2 = 0xEA0000000000656DLL;
    if (v13 != 0x69546B6165727473)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000000000C7DA0;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x656C756465686373;
      v2 = 0xED000070756F7247;
    }

    else if (a2)
    {
      v15 = 0x75426465696E6564;
      v16 = 1852798068;
      goto LABEL_32;
    }

    if (v13 != v3)
    {
LABEL_41:
      v17 = sub_C6244();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_316A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  v6 = 0xE200000000000000;
  v7 = 30324;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000000000C7B30;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x74736163646F70;
  if (a1 != 1)
  {
    v8 = 0x656C6369747261;
  }

  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x636973756DLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1802465122)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE200000000000000;
      if (v9 != 30324)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x80000000000C7B30;
      if (v9 != 0xD000000000000010)
      {
LABEL_34:
        v12 = sub_C6244();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x656C6369747261)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x636973756DLL)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_31858(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6172656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79636176697270;
    }

    else
    {
      v4 = 0x796C616E41707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC00000073636974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6163696669746F6ELL;
    }

    else
    {
      v4 = 0x6C6172656E6567;
    }

    if (v3)
    {
      v5 = 0xED0000736E6F6974;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x79636176697270;
  if (a2 != 2)
  {
    v8 = 0x796C616E41707061;
    v7 = 0xEC00000073636974;
  }

  if (a2)
  {
    v2 = 0x6163696669746F6ELL;
    v6 = 0xED0000736E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_C6244();
  }

  return v11 & 1;
}

uint64_t sub_319C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = 0x6154656772614C78;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a1 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a1 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x69576D756964656DLL;
  v10 = 0xE500000000000000;
  if (a1 == 2)
  {
    v10 = 0xEA00000000006564;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  v11 = 0xE600000000000000;
  v12 = 0x656772614C78;
  if (!a1)
  {
    v12 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x6C6C616D73)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEA00000000006E65;
        if (v13 != 0x657263536C6C7566)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D756964656DLL)
      {
        goto LABEL_43;
      }
    }

    else if (v13 != 0x61546D756964656DLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000006564;
        if (v13 != 0x69576D756964656DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE500000000000000;
      v3 = 0x656772616CLL;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x656772614C78)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_C6244();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

Swift::Int sub_31C04()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_31CF8()
{
  sub_C5514();
}

uint64_t sub_31E58()
{
  sub_C5514();
}

Swift::Int sub_31F78()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

Swift::Int sub_320AC()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

Swift::Int sub_3219C()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_32310()
{
  v0 = sub_C3D54();
  __chkstk_darwin(v0 - 8);
  v1 = sub_C5414();
  __chkstk_darwin(v1 - 8);
  sub_C53B4();
  sub_C3D44();
  return sub_C54A4();
}

uint64_t sub_3256C()
{
  sub_C5514();
}

uint64_t sub_32650@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_32794(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_32680(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973756DLL;
  v5 = 0xE400000000000000;
  v6 = 1802465122;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000000000C7B30;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x74736163646F70;
  if (v2 != 1)
  {
    v9 = 0x656C6369747261;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_32740()
{
  result = qword_105EC8;
  if (!qword_105EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105EC8);
  }

  return result;
}

uint64_t sub_32794(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F04F0;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_327E0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_13DC4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_3CB0(&unk_10A100);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_328B8()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_105ED0);
  sub_B680(v0, qword_105ED0);
  return sub_C4CC4();
}

uint64_t sub_32938(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_3CB0(&qword_106060);
  v3[5] = swift_task_alloc();
  sub_3CB0(&qword_106068);
  v3[6] = swift_task_alloc();
  v5 = sub_C43A4();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_C5724();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[10] = v6;
  v3[11] = v8;

  return _swift_task_switch(sub_32AA8, v6, v8);
}

uint64_t sub_32AA8()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_32B40;
  v2 = v0[3];
  v3 = v0[2];

  return sub_68090(v3, v2);
}

uint64_t sub_32B40(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_32C68, v4, v3);
}

uint64_t sub_32C68()
{
  v1 = v0[13];
  if (v1)
  {
LABEL_10:

    v14 = v0[1];

    return v14(v1);
  }

  v2 = v0[5];
  sub_33F5C(v0[4] + qword_1153E0, v2);
  v3 = sub_C4504();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  if (v5 == 1)
  {
    sub_C060(v0[5], &qword_106060);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_5:
    sub_C060(v0[6], &qword_106068);
    if (qword_1041B0 != -1)
    {
      swift_once();
    }

    v10 = sub_C4CD4();
    sub_B680(v10, qword_105ED0);
    v11 = sub_C4CB4();
    v12 = sub_C5A44();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "no visits data", v13, 2u);
    }

    goto LABEL_10;
  }

  sub_C44F4();
  (*(v4 + 8))(v8, v3);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_5;
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_32F60;
  v17 = v0[9];
  v18 = v0[3];
  v19 = v0[2];

  return sub_335E0(v19, v18, v17);
}

uint64_t sub_32F60(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_33088, v4, v3);
}

uint64_t sub_33088()
{
  if (*(v0 + 120))
  {
    v1 = *(*(v0 + 32) + qword_115590);
    *(v0 + 144) = v1;
    if (sub_7EC34(v1))
    {
      sub_5DAF8();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_3323C;
      v8 = *(v0 + 16);

      return sub_5DBF0(v8, v3 * v6);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = *(v0 + 120);
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_3323C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_33364, v4, v3);
}

uint64_t sub_33364()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    if (sub_7E424(*(v0 + 144)))
    {
      if (qword_104290 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      v4 = *(v0 + 56);
      sub_6B8E0(v1, *(*(v0 + 32) + qword_107B38), *(*(v0 + 32) + qword_107B38 + 8));

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }
  }

  else
  {
    if (qword_1041B0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_C4CD4();
    sub_B680(v6, qword_105ED0);
    v7 = v5;
    v8 = sub_C4CB4();
    v9 = sub_C5A44();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    if (v10)
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&dword_0, v8, v9, "%@ - error creating thumbnail from MKMap", v15, 0xCu);
      sub_C060(v16, &qword_1050F0);
    }

    (*(v12 + 8))(v11, v13);
  }

  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_335E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_C5724();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_33670, v5, v7);
}

uint64_t sub_33670()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_3CB0(&qword_106070);
  v3 = sub_C43A4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_CE5B0;
  (*(v4 + 16))(v6 + v5, v1, v3);
  *(v0 + 184) = sub_1D1C0(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  *(v0 + 232) = *(v2 + qword_115590);
  *(v0 + 192) = *(v2 + qword_1155A0);
  sub_C5774();
  *(v0 + 200) = sub_C5764();
  v8 = sub_C5724();

  return _swift_task_switch(sub_33830, v8, v7);
}

uint64_t sub_33830()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 232);

  *(v0 + 208) = sub_1B2D0(v2, 0, v3, 0, 0, 1, v1, 0);

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return _swift_task_switch(sub_338D4, v4, v5);
}

uint64_t sub_338D4()
{
  v1 = v0[26];
  [v1 _setRendersInBackground:1];
  v2 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v1];
  v0[27] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_33A28;
  v3 = swift_continuation_init();
  v0[17] = sub_3CB0(&qword_1050E8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_327E0;
  v0[13] = &unk_F1FD8;
  v0[14] = v3;
  [v2 startWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_33A28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_33BEC;
  }

  else
  {
    v5 = sub_33B58;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_33B58()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_33BEC()
{
  swift_willThrow();
  if (qword_1041B0 != -1)
  {
    swift_once();
  }

  v1 = sub_C4CD4();
  sub_B680(v1, qword_105ED0);
  swift_errorRetain();
  v2 = sub_C4CB4();
  v3 = sub_C5A44();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_C060(v8, &qword_1050F0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t type metadata accessor for GenericMapThumbnailCacheOperation()
{
  result = qword_105F10;
  if (!qword_105F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_33E6C()
{
  sub_33EFC();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_33EFC()
{
  if (!qword_105F20)
  {
    sub_C4504();
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_105F20);
    }
  }
}

uint64_t sub_33F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_106060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_34020(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_34064()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption1;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = sub_23C60(UIFontWeightBold);
  qword_115400 = v3;
}

void sub_340EC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000C93A0;
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_C3734(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_115408 = v2;
  unk_115410 = v4;
}

void sub_34190()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000C9360;
  v6._countAndFlagsBits = 0xD000000000000038;
  v6._object = 0x80000000000C9300;
  v8._object = 0x80000000000C9340;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000010;
  v2 = sub_C3734(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_115418 = v2;
  unk_115420 = v4;
}

void sub_3425C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000C92D0;
  v8._countAndFlagsBits = 0x25209480E2204025;
  v6._object = 0x80000000000C92B0;
  v6._countAndFlagsBits = 0x1000000000000011;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xA900000000000040;
  v2 = sub_C3734(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_115428 = v2;
  unk_115430 = v4;
}

void sub_34320()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000C9400;
  v6._object = 0x80000000000C93E0;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_C3734(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_115438 = v2;
  unk_115440 = v4;
}

void sub_343D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000C9480;
  v6._countAndFlagsBits = 0x7373412065766F4DLL;
  v6._object = 0xEA00000000007465;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_C3734(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_115448 = v2;
  unk_115450 = v4;
}

void sub_3448C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000C9440;
  v6._countAndFlagsBits = 0x676E69707954;
  v6._object = 0xE600000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_C3734(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_115458 = v2;
  unk_115460 = v4;
}

void sub_34538()
{
  v0 = sub_C5444();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_115468 = v1;
}

uint64_t sub_34660(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_346B8()
{
  sub_26118();
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_C5444();
  [v1 addObserver:v0 selector:"handleAllowedVideosNotification:" name:v2 object:0];
}

uint64_t sub_3476C()
{
  v0 = sub_C50E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5154();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36B6C();
  v8 = sub_C5B24();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_36BF0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_34660;
  aBlock[3] = &unk_F2028;
  v10 = _Block_copy(aBlock);

  sub_C5104();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_36D5C(&qword_105558, &type metadata accessor for DispatchWorkItemFlags);
  sub_3CB0(&qword_105560);
  sub_28D34();
  sub_C5E94();
  sub_C5B34();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_34A24()
{
  v0 = sub_3CB0(&qword_104E88);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC20JournalNotifications18VideoAssetGridView_durationLabel;
    v6 = [*(result + OBJC_IVAR____TtC20JournalNotifications18VideoAssetGridView_durationLabel) superview];
    if (v6)
    {

      [v4 bringSubviewToFront:*&v4[v5]];
    }

    else
    {
      v7 = qword_1041D0;
      v8 = *&v4[v5];
      if (v7 != -1)
      {
        swift_once();
      }

      [v8 setFont:qword_115400];

      v9 = *&v4[v5];
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 whiteColor];
      [v11 setTextColor:v12];

      [*&v4[v5] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [*&v4[v5] setAdjustsFontForContentSizeCategory:1];
      [*&v4[v5] setAdjustsFontSizeToFitWidth:1];
      [v4 addSubview:*&v4[v5]];
      v13 = *&v4[v5];
      v14 = [v13 superview];
      p_align = &stru_FAFE8.align;
      if (v14)
      {
        v16 = v14;
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [v13 trailingAnchor];
        v18 = [v16 trailingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];

        [v19 setConstant:-8.0];
        if (v19)
        {
          [v19 setActive:1];
        }

        p_align = (&stru_FAFE8 + 24);
      }

      else
      {
        v19 = 0;
        v16 = v13;
      }

      v20 = *&v4[v5];
      v21 = [v20 superview];
      if (v21)
      {
        v22 = v21;
        [v20 *(p_align + 454)];
        v23 = [v20 leadingAnchor];
        v24 = [v22 leadingAnchor];
        v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

        [v25 setConstant:8.0];
        if (v25)
        {
          [v25 setActive:1];
        }
      }

      else
      {
        v25 = 0;
        v22 = v20;
      }

      v26 = *&v4[v5];
      v27 = sub_23424(0, 1, 6.0);
    }

    v28 = sub_C5794();
    (*(*(v28 - 8) + 56))(v2, 1, 1, v28);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_C5774();

    v30 = sub_C5764();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = v29;

    sub_3627C(0, 0, v2, &unk_CF1B8, v31);
  }

  return result;
}

uint64_t sub_34EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = sub_C50E4();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = sub_C5154();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  sub_3CB0(&qword_1063B8);
  v4[35] = swift_task_alloc();
  v7 = sub_C3934();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = sub_C5774();
  v4[40] = sub_C5764();
  v9 = sub_C5724();
  v4[41] = v9;
  v4[42] = v8;

  return _swift_task_switch(sub_350C4, v9, v8);
}

uint64_t sub_350C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    if (v7)
    {
      v8 = [v7 currentItem];

      if (v8)
      {
        v0[43] = [v8 asset];

        sub_3CB0(&qword_1063C8);
        v9 = sub_C3F94();
        v0[44] = v9;
        v10 = sub_C5764();
        v0[45] = v10;
        v11 = swift_task_alloc();
        v0[46] = v11;
        *v11 = v0;
        v11[1] = sub_35470;

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 55, v9, v10, &protocol witness table for MainActor);
      }
    }

    else
    {
LABEL_10:
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = *(v12 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_videoAsset), v14 = v12, v15 = v13, v14, !v13))
  {
    v21 = v0[36];
    v22 = v0[37];
    v23 = v0[35];

    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_16;
  }

  v16 = v0[36];
  v17 = v0[37];
  v18 = v0[35];
  sub_496EC(0, 1, v18);

  v19 = (*(v17 + 48))(v18, 1, v16);
  v20 = v0[40];
  if (v19 == 1)
  {

LABEL_16:
    sub_C060(v0[35], &qword_1063B8);

    v24 = v0[1];

    return v24();
  }

  (*(v0[37] + 32))(v0[38], v0[35], v0[36]);

  if (v20)
  {
    swift_getObjectType();
    v25 = sub_C5724();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v0[48] = v25;
  v0[49] = v27;

  return _swift_task_switch(sub_35858, v25, v27);
}

uint64_t sub_35470()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_35F30;
  }

  else
  {
    v6 = v2[43];

    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_355A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_355A4()
{
  v13 = v0[34];
  v1 = v0[31];
  v15 = v0[33];
  v16 = v0[32];
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[55];
  v5 = v0[57];
  sub_36B6C();
  v6 = v0[56];
  v14 = sub_C5B24();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v6;
  v9[5] = v5;
  v0[12] = sub_36DB8;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_34660;
  v0[11] = &unk_F20F0;
  v10 = _Block_copy(v0 + 8);

  sub_C5104();
  v0[27] = _swiftEmptyArrayStorage;
  sub_36D5C(&qword_105558, &type metadata accessor for DispatchWorkItemFlags);
  sub_3CB0(&qword_105560);
  sub_28D34();
  sub_C5E94();
  sub_C5B34();
  _Block_release(v10);

  (*(v3 + 8))(v1, v2);
  (*(v15 + 8))(v13, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_35858()
{
  v1 = v0[40];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_C38D4(v3);
  v5 = v4;
  v0[50] = [v2 initWithURL:v4 options:0];

  sub_3CB0(&qword_1063C0);
  v6 = sub_C3F94();
  v0[51] = v6;
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_35974;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 58, v6, v1, &protocol witness table for MainActor);
}

uint64_t sub_35974()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_35E10;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_35AB8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_35AB8()
{
  v1 = v0[50];

  v2 = v0[58];
  v0[61] = v0[59];
  v3 = v0[60];
  v0[53] = v2;
  v0[54] = v3;
  v4 = v0[41];
  v5 = v0[42];

  return _swift_task_switch(sub_35B38, v4, v5);
}

uint64_t sub_35B38()
{
  v1 = v0[53];
  v13 = v0[54];
  v18 = v0[36];
  v19 = v0[38];
  v2 = v0[34];
  v15 = v0[33];
  v3 = v0[31];
  v16 = v0[32];
  v17 = v0[37];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[61];

  sub_36B6C();
  v14 = sub_C5B24();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v1;
  v9[4] = v6;
  v9[5] = v13;
  v0[6] = sub_36D04;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_34660;
  v0[5] = &unk_F20A0;
  v10 = _Block_copy(v0 + 2);

  sub_C5104();
  v0[26] = _swiftEmptyArrayStorage;
  sub_36D5C(&qword_105558, &type metadata accessor for DispatchWorkItemFlags);
  sub_3CB0(&qword_105560);
  sub_28D34();
  sub_C5E94();
  sub_C5B34();
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);
  (*(v17 + 8))(v19, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_35E10()
{
  v1 = v0[50];

  v2 = v0[41];
  v3 = v0[42];

  return _swift_task_switch(sub_35E7C, v2, v3);
}

uint64_t sub_35E7C()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_35F30()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

void sub_35FF4()
{
  v0 = sub_C63B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C63C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC20JournalNotifications18VideoAssetGridView_durationLabel);

    sub_C5CD4();
    sub_C6404();
    if (sub_C63F4())
    {
      sub_C6394();
    }

    else
    {
      sub_C63A4();
    }

    sub_C34F4();
    (*(v1 + 8))(v3, v0);
    sub_36D5C(&qword_1063D0, &type metadata accessor for Duration.TimeFormatStyle);
    sub_C63E4();
    (*(v5 + 8))(v7, v4);
    v10 = sub_C5444();

    v11 = v12;
    [v12 setText:v10];
  }
}

uint64_t sub_3627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_3CB0(&qword_104E88);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1CF70(a3, v22 - v9);
  v11 = sub_C5794();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_C060(v10, &qword_104E88);
  }

  else
  {
    sub_C5784();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_C5724();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_C54E4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_C060(a3, &qword_104E88);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_C060(a3, &qword_104E88);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_36518()
{
  v1 = v0;
  v2 = sub_C3D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_C3594();
  if (v6)
  {
    v7 = v6;
    v22 = 0xD000000000000019;
    v23 = 0x80000000000C9530;
    sub_C5F64();
    if (*(v7 + 16) && (v8 = sub_23FB0(v24), (v9 & 1) != 0))
    {
      sub_B760(*(v7 + 56) + 32 * v8, v25);
      sub_B6B8(v24);

      sub_3CB0(&qword_1063B0);
      if (swift_dynamicCast())
      {
        v10 = v22;
        v11 = *(v1 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_videoAsset);
        if (v11)
        {
          (*(v3 + 16))(v5, v11 + OBJC_IVAR____TtC20JournalNotifications5Asset_id, v2);
          v12 = v11;
          v13 = sub_C3CC4();
          v15 = v14;
          v16 = (*(v3 + 8))(v5, v2);
          v24[0] = v13;
          v24[1] = v15;
          __chkstk_darwin(v16);
          *(&v21 - 2) = v24;
          LOBYTE(v13) = sub_54EDC(sub_36B14, (&v21 - 4), v10);

          if ((v13 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isLoaded) & 1) == 0)
          {
          }

          else
          {
            v17 = (v1 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction);
            v18 = *(v1 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction);
            *v17 = 0;
            v17[1] = 0;
            sub_2881C(v18);
            sub_268A8();
            sub_266D8();
          }
        }

        else
        {

          v19 = (v1 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction);
          v20 = *(v1 + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction);
          *v19 = 0;
          v19[1] = 0;
          sub_2881C(v20);
          sub_268A8();
          sub_266D8();
        }
      }
    }

    else
    {

      sub_B6B8(v24);
    }
  }
}

id sub_36A30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAssetGridView()
{
  result = qword_1063A0;
  if (!qword_1063A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36B14(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_C6244() & 1;
  }
}

unint64_t sub_36B6C()
{
  result = qword_105550;
  if (!qword_105550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_105550);
  }

  return result;
}

uint64_t sub_36BB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_36BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_36C10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_36C50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CE7C;

  return sub_34EDC(a1, v4, v5, v6);
}

uint64_t sub_36D24()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_36D5C(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_36DBC()
{
  result = sub_C5444();
  qword_115470 = result;
  return result;
}

NSString sub_36DF8()
{
  result = sub_C5444();
  qword_115478 = result;
  return result;
}

uint64_t sub_36E68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_C39F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_C3D54();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_C3EA4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_C3F24();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_C3874();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_C3CB4();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_37094(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_C39F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_C3D54();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_C3EA4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_C3F24();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_C3874();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_C3CB4();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t _s23YearAdaptiveFormatStyleVMa()
{
  result = qword_1064C8;
  if (!qword_1064C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_37304()
{
  result = sub_C39F4();
  if (v1 <= 0x3F)
  {
    result = sub_C3D54();
    if (v2 <= 0x3F)
    {
      result = sub_C3EA4();
      if (v3 <= 0x3F)
      {
        result = sub_C3F24();
        if (v4 <= 0x3F)
        {
          result = sub_C3874();
          if (v5 <= 0x3F)
          {
            result = sub_C3CB4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_373E8(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_C3A84();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_C3AD4();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_C3B04();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_C3874();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v80 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3F24();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v77 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_C3EA4();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v74 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_C3D54();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_106530);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_3CB0(&qword_106538);
  __chkstk_darwin(v18 - 8);
  v67 = &v55 - v19;
  v20 = sub_C3B34();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v55 - v25;
  v27 = __chkstk_darwin(v24);
  v55 = &v55 - v28;
  __chkstk_darwin(v27);
  v71 = &v55 - v29;
  v30 = sub_C3E84();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s23YearAdaptiveFormatStyleVMa();
  v35 = v34[6];
  (*(v31 + 104))(v33, enum case for Calendar.Component.year(_:), v30);
  v36 = sub_C3E54();
  (*(v31 + 8))(v33, v30);
  if (v36)
  {
    v37 = sub_C3A24();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_C39F4();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v17, v2, v38);
    (*(v39 + 56))(v17, 0, 1, v38);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    sub_C3A44();
    v40 = v56;
    sub_C3AF4();
    sub_C3B24();
    (*(v57 + 8))(v40, v58);
    v42 = v72;
    v41 = v73;
    v43 = *(v72 + 8);
    v43(v23, v73);
    v44 = v59;
    sub_C3AC4();
    v45 = v55;
    sub_C3A64();
    (*(v60 + 8))(v44, v61);
    v43(v26, v41);
    v46 = v62;
    sub_C3A74();
    v47 = v71;
    sub_C3A34();
    (*(v63 + 8))(v46, v64);
    v43(v45, v41);
    v48 = v42;
  }

  else
  {
    v49 = v67;
    sub_C3A14();
    v50 = sub_C3A24();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = sub_C39F4();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v17, v2, v51);
    (*(v52 + 56))(v17, 0, 1, v51);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    v47 = v71;
    sub_C3A44();
    v48 = v72;
    v41 = v73;
  }

  v53 = sub_C3B14();
  (*(v48 + 8))(v47, v41);
  return v53;
}

uint64_t sub_37E1C()
{
  v1 = *v0;
  v2 = 0x6C797453656D6974;
  v3 = 0x656E6F5A656D6974;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x636E657265666572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_37ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_398F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_37F18(uint64_t a1)
{
  v2 = sub_39624();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_37F54(uint64_t a1)
{
  v2 = sub_39624();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_37F90(void *a1)
{
  v3 = sub_3CB0(&qword_106580);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_13DC4(a1, a1[3]);
  sub_39624();
  sub_C6384();
  v8[15] = 0;
  sub_C39F4();
  sub_396D4(&qword_106588, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_C61F4();
  if (!v1)
  {
    _s23YearAdaptiveFormatStyleVMa();
    v8[14] = 1;
    sub_C3D54();
    sub_396D4(&qword_106590, &type metadata accessor for Locale);
    sub_C61F4();
    v8[13] = 2;
    sub_C3EA4();
    sub_396D4(&qword_106598, &type metadata accessor for Calendar);
    sub_C61F4();
    v8[12] = 3;
    sub_C3F24();
    sub_396D4(&qword_1065A0, &type metadata accessor for TimeZone);
    sub_C61F4();
    v8[11] = 4;
    sub_C3874();
    sub_396D4(&qword_1065A8, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_C61F4();
    v8[10] = 5;
    sub_C3CB4();
    sub_396D4(&qword_1065B0, &type metadata accessor for Date);
    sub_C61F4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_38364@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_C3CB4();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_C3874();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_C3F24();
  v59 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_C3EA4();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_C3D54();
  v63 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_C39F4();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_3CB0(&qword_106540);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v38 - v14;
  v16 = _s23YearAdaptiveFormatStyleVMa();
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v17[7];
  sub_C3D24();
  v60 = v17[8];
  sub_C3DE4();
  v58 = v17[9];
  sub_C3EF4();
  v49 = v17[10];
  sub_C3864();
  v50 = v17[11];
  sub_C3C74();
  v20 = a1[3];
  v52 = a1;
  sub_13DC4(a1, v20);
  sub_39624();
  v46 = v15;
  v21 = v48;
  sub_C6374();
  if (v21)
  {
    v22 = v57;
    v23 = v55;
    v26 = v51;
    v27 = v49;
    sub_BED0(v52);
    v29 = v53;
    v28 = v54;
    (*(v63 + 8))(&v19[v62], v26);
    (*(v61 + 8))(&v19[v60], v64);
    (*(v59 + 8))(&v19[v58], v29);
    (*(v28 + 8))(&v19[v27], v23);
    return (*(v56 + 8))(&v19[v50], v22);
  }

  else
  {
    v70 = 0;
    sub_396D4(&qword_106550, &type metadata accessor for Date.FormatStyle.TimeStyle);
    sub_C6194();
    v24 = v57;
    v25 = v55;
    v31 = *(v44 + 32);
    v48 = v11;
    v31(v19, v13, v11);
    v69 = 1;
    sub_396D4(&qword_106558, &type metadata accessor for Locale);
    v32 = v10;
    v33 = v51;
    sub_C6194();
    v34 = v49;
    (*(v63 + 40))(&v19[v62], v32, v33);
    v68 = 2;
    sub_396D4(&qword_106560, &type metadata accessor for Calendar);
    v35 = v64;
    sub_C6194();
    v36 = v54;
    (*(v61 + 40))(&v19[v60], v43, v35);
    v67 = 3;
    sub_396D4(&qword_106568, &type metadata accessor for TimeZone);
    v37 = v53;
    sub_C6194();
    (*(v59 + 40))(&v19[v58], v42, v37);
    v66 = 4;
    sub_396D4(&qword_106570, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_C6194();
    (*(v36 + 40))(&v19[v34], v41, v25);
    v65 = 5;
    sub_396D4(&qword_106578, &type metadata accessor for Date);
    sub_C6194();
    (*(v45 + 8))(v46, v47);
    (*(v56 + 40))(&v19[v50], v40, v24);
    sub_395C0(v19, v39);
    sub_BED0(v52);
    return sub_39678(v19);
  }
}

uint64_t sub_38CE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_373E8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_38D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_395C0(v3, a3);
  v7 = *(a2 + 20);
  v8 = sub_C3D54();
  v9 = *(*(v8 - 8) + 24);

  return v9(a3 + v7, a1, v8);
}

Swift::Int sub_38DC0()
{
  sub_C62F4();
  sub_C39F4();
  sub_396D4(&qword_1065B8, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_C5304();
  sub_C3D54();
  sub_396D4(&qword_1065C0, &type metadata accessor for Locale);
  sub_C5304();
  sub_C3EA4();
  sub_396D4(&qword_1065C8, &type metadata accessor for Calendar);
  sub_C5304();
  sub_C3F24();
  sub_396D4(&qword_1065D0, &type metadata accessor for TimeZone);
  sub_C5304();
  sub_C3874();
  sub_396D4(&qword_1065D8, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_C5304();
  sub_C3CB4();
  sub_396D4(&qword_1065E0, &type metadata accessor for Date);
  sub_C5304();
  return sub_C6344();
}

uint64_t sub_39010()
{
  sub_C39F4();
  sub_396D4(&qword_1065B8, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_C5304();
  sub_C3D54();
  sub_396D4(&qword_1065C0, &type metadata accessor for Locale);
  sub_C5304();
  sub_C3EA4();
  sub_396D4(&qword_1065C8, &type metadata accessor for Calendar);
  sub_C5304();
  sub_C3F24();
  sub_396D4(&qword_1065D0, &type metadata accessor for TimeZone);
  sub_C5304();
  sub_C3874();
  sub_396D4(&qword_1065D8, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_C5304();
  sub_C3CB4();
  sub_396D4(&qword_1065E0, &type metadata accessor for Date);
  return sub_C5304();
}

Swift::Int sub_39250()
{
  sub_C62F4();
  sub_C39F4();
  sub_396D4(&qword_1065B8, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_C5304();
  sub_C3D54();
  sub_396D4(&qword_1065C0, &type metadata accessor for Locale);
  sub_C5304();
  sub_C3EA4();
  sub_396D4(&qword_1065C8, &type metadata accessor for Calendar);
  sub_C5304();
  sub_C3F24();
  sub_396D4(&qword_1065D0, &type metadata accessor for TimeZone);
  sub_C5304();
  sub_C3874();
  sub_396D4(&qword_1065D8, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_C5304();
  sub_C3CB4();
  sub_396D4(&qword_1065E0, &type metadata accessor for Date);
  sub_C5304();
  return sub_C6344();
}

uint64_t sub_395C0(uint64_t a1, uint64_t a2)
{
  v4 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_39624()
{
  result = qword_106548;
  if (!qword_106548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106548);
  }

  return result;
}

uint64_t sub_39678(uint64_t a1)
{
  v2 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_396D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3971C()
{
  if ((sub_C39C4() & 1) == 0)
  {
    return 0;
  }

  _s23YearAdaptiveFormatStyleVMa();
  if ((sub_C3D34() & 1) == 0 || (sub_C3DF4() & 1) == 0 || (sub_C3F04() & 1) == 0 || (sub_C3854() & 1) == 0)
  {
    return 0;
  }

  return sub_C3C54();
}

unint64_t sub_397F0()
{
  result = qword_1065E8;
  if (!qword_1065E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1065E8);
  }

  return result;
}

unint64_t sub_39848()
{
  result = qword_1065F0;
  if (!qword_1065F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1065F0);
  }

  return result;
}

unint64_t sub_398A0()
{
  result = qword_1065F8;
  if (!qword_1065F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1065F8);
  }

  return result;
}

uint64_t sub_398F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C797453656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_C6244() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_C6244() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_C6244() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (sub_C6244() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000000C95B0 == a2 || (sub_C6244() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_C6244();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_39B04(void *a1, uint64_t a2, char a3)
{
  v6 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3EA4();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_C3CB4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  if ((a3 & 1) == 0 && (a1[2] < 2uLL || *(a2 + 16) < 2uLL))
  {
    return 0;
  }

  v45 = a1;

  sub_3C330(v18);

  sub_3AC74(&v45);

  v19 = v45[2];
  if (!v19)
  {

    return 0;
  }

  v41 = v13;
  v42 = v17;
  v21 = v13 + 16;
  v20 = *(v13 + 16);
  v22 = v45 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v20(v42, v22, v12);
  v23 = &v22[*(v21 + 56) * (v19 - 1)];
  v24 = v44;
  v20(v44, v23, v12);
  v25 = v42;

  sub_C3E64();
  LOBYTE(v22) = sub_C3E44();
  (*(v43 + 8))(v11, v9);
  if (v22)
  {
    sub_C39D4();
    sub_C3844();
    sub_C3D24();
    sub_C3DE4();
    sub_C3EF4();
    sub_C3C74();
    sub_3C45C();
    sub_C3C94();
    sub_39678(v8);
    v26 = *(v41 + 8);
    v26(v24, v12);
    v26(v25, v12);
    return v45;
  }

  else
  {
    v43 = v12;
    if (qword_1041E8 != -1)
    {
      swift_once();
    }

    v40 = qword_115428;
    sub_3CB0(&qword_106600);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_CE0A0;
    sub_C39D4();
    sub_C3844();
    sub_C3D24();
    sub_C3DE4();
    sub_C3EF4();
    sub_C3C74();
    sub_3C45C();
    v29 = v42;
    sub_C3C94();
    sub_39678(v8);
    v30 = v45;
    v31 = v46;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_3C4B4();
    *(v28 + 64) = v32;
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    sub_C39D4();
    sub_C3844();
    sub_C3D24();
    sub_C3DE4();
    sub_C3EF4();
    sub_C3C74();
    v33 = v44;
    sub_C3C94();
    sub_39678(v8);
    v34 = v45;
    v35 = v46;
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    v36 = sub_C5454();

    v37 = *(v41 + 8);
    v38 = v33;
    v39 = v43;
    v37(v38, v43);
    v37(v29, v39);
    return v36;
  }
}

char *sub_3A060(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB0(&qword_106698);
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

double *sub_3A1B8(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_3CB0(&qword_104E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_3A31C(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_3CB0(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = (v11 + 4);
  v15 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_3A418(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB0(&qword_106690);
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
    v10 = &_swiftEmptyArrayStorage;
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

double *sub_3A544(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_3CB0(&qword_106628);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_3A650(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_3CB0(&qword_106648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_3A798(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_3CB0(a5);
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

size_t sub_3A974(size_t result, int64_t a2, char a3, unint64_t a4)
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_3CB0(&qword_106630);
  v10 = *(sub_3CB0(&qword_106638) - 8);
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

  *(v13 + 2) = v8;
  *(v13 + 3) = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_3CB0(&qword_106638) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

double *sub_3AB64(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_3CB0(&qword_106650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_3AC74(void **a1)
{
  v2 = *(sub_C3CB4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_3C8EC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_3AD1C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_3AD1C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_C6204(v2);
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
        sub_C3CB4();
        v6 = sub_C56B4();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_C3CB4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_3B0CC(v8, v9, a1, v4);
      v6[2] = 0.0;
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
    return sub_3AE48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_3AE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_C3CB4();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_C3C24();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_3B0CC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_C3CB4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  result = __chkstk_darwin(v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_3C0E8(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_3BAB8(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_3C0E8(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[2 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_3C05C(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_C3C24();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_C3C24() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_3C22C(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_3C22C((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[2 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[2 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[2 * v56 + 4];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[2 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[2 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[2 * a4 + 4];
        v5 = *&v21[2 * v56 + 5];
        sub_3BAB8(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[2 * v56 + 4], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_3C0E8(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[2 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_3C05C(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[2 * v5 + 4];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[2 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[2 * v56 + 4];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_C3C24();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_3BAB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_C3CB4();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
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

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
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

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_C3C24();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
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

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_C3C24();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_3C144(&v60, &v59, &v58, &type metadata accessor for Date);
  return 1;
}

uint64_t sub_3C05C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_3C0E8(v3);
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

uint64_t sub_3C144(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

double *sub_3C22C(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_3CB0(&qword_106618);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_3C330(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_488A0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_C3CB4();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_3C45C()
{
  result = qword_106608;
  if (!qword_106608)
  {
    _s23YearAdaptiveFormatStyleVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106608);
  }

  return result;
}

unint64_t sub_3C4B4()
{
  result = qword_106610;
  if (!qword_106610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106610);
  }

  return result;
}

uint64_t sub_3C508(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_C60E4();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_C60E4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_3C5F8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_3C698(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_3C5F8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_C60E4();
LABEL_9:
  result = sub_C5FF4();
  *v1 = result;
  return result;
}

uint64_t sub_3C698(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_C60E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_C60E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_3C9D4();
          for (i = 0; i != v6; ++i)
          {
            sub_3CB0(&qword_106660);
            v9 = sub_3C818(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_3C988();
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

void (*sub_3C818(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_C5FE4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_3C898;
  }

  __break(1u);
  return result;
}

unint64_t sub_3C988()
{
  result = qword_106658;
  if (!qword_106658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_106658);
  }

  return result;
}

unint64_t sub_3C9D4()
{
  result = qword_106668;
  if (!qword_106668)
  {
    sub_28D98(&qword_106660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106668);
  }

  return result;
}

uint64_t sub_3CA5C(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 16) = a4;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_C5724();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;

  return _swift_task_switch(sub_3CAF0, v5, v7);
}

uint64_t sub_3CAF0()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_C38D4(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];
  *(v0 + 6) = v6;

  v7 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v6];
  *(v0 + 7) = v7;
  [v7 setAppliesPreferredTrackTransform:1];
  [v7 setMaximumSize:{v1, v1}];
  [v7 setDynamicRangePolicy:AVAssetImageGeneratorDynamicRangePolicyForceSDR];
  v8 = sub_C5CC4(0.0, 60);
  v10 = v9;
  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 8) = v13;
  *v13 = v0;
  v13[1] = sub_3CC60;

  return AVAssetImageGenerator.image(at:)(v8, v10, v12);
}

uint64_t sub_3CC60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_3CE24;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_3CD88;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_3CD88()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = [objc_allocWithZone(UIImage) initWithCGImage:v1];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_3CE24()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_3CEE0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_3CF7C()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_1067C8);
  v1 = sub_B680(v0, qword_1067C8);
  if (qword_1042F0 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_1156B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_3D044(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_3CB0(&qword_1063B8);
  v3[5] = swift_task_alloc();
  v5 = sub_C3934();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_C5724();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_3D17C, v6, v8);
}

uint64_t sub_3D17C()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_3D214;
  v2 = v0[3];
  v3 = v0[2];

  return sub_68090(v3, v2);
}

uint64_t sub_3D214(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_3D33C, v4, v3);
}

uint64_t sub_3D33C()
{
  v1 = *(v0 + 96);
  if (v1)
  {
LABEL_4:

    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_3D95C(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_C060(*(v0 + 40), &qword_1063B8);
    goto LABEL_4;
  }

  v7 = *(v0 + 32);
  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  *(v0 + 128) = *(v7 + qword_115590);
  sub_5DAF8();
  v9 = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_3D520;
  v14 = *(v0 + 64);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_3CA5C(v16, v9 * v12, v15, v14);
}

uint64_t sub_3D520(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_3D754;
  }

  else
  {
    v7 = sub_3D664;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_3D664()
{
  if (sub_7E424(*(v0 + 128)))
  {
    if (qword_104290 != -1)
    {
      swift_once();
    }

    sub_6B8E0(*(v0 + 112), *(*(v0 + 32) + qword_107B38), *(*(v0 + 32) + qword_107B38 + 8));
  }

  v1 = *(v0 + 112);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_3D754()
{
  if (qword_104220 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_C4CD4();
  sub_B680(v2, qword_1067C8);
  v3 = v1;
  swift_errorRetain();
  v4 = sub_C4CB4();
  v5 = sub_C5A44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&dword_0, v4, v5, "%@ - error generating video preview image: %@", v7, 0x16u);
    sub_3CB0(&qword_1050F0);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_3D95C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106940);
  v4 = __chkstk_darwin(v3 - 8);
  v106 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v109 = &v96 - v6;
  v126 = sub_C4BF4();
  v108 = *(v126 - 8);
  v7 = __chkstk_darwin(v126 - 8);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v125 = &v96 - v10;
  __chkstk_darwin(v9);
  v110 = &v96 - v11;
  v116 = sub_C44D4();
  v107 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v128);
  v113 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v112 = &v96 - v16;
  v17 = __chkstk_darwin(v15);
  v127 = (&v96 - v18);
  __chkstk_darwin(v17);
  v121 = (&v96 - v19);
  v20 = sub_3CB0(&qword_1063B8);
  v21 = __chkstk_darwin(v20 - 8);
  v120 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v96 - v23;
  v25 = sub_C3934();
  v114 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v111 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v117 = &v96 - v28;
  v29 = type metadata accessor for AssetAttachment.AssetType(0);
  v30 = __chkstk_darwin(v29);
  v119 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v131 = &v96 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v96 - v35;
  __chkstk_darwin(v34);
  v38 = &v96 - v37;
  v132 = *(v1 + qword_115570);
  v105 = a1;
  if (v132 >> 62)
  {
    goto LABEL_92;
  }

  v39 = *(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v101 = v1;
  v138 = v1 + qword_115598;
  v129 = v29;
  v130 = v25;
  v1 = v132;
  if (v39)
  {
    v40 = 0;
    v134 = v132 & 0xFFFFFFFFFFFFFF8;
    v135 = v132 & 0xC000000000000001;
    v123 = (v114 + 56);
    v100 = (v107 + 8);
    v118 = (v114 + 32);
    v122 = (v114 + 48);
    v104 = (v108 + 48);
    v98 = (v108 + 32);
    v97 = (v108 + 8);
    v102 = (v114 + 8);
    v124 = v24;
    v103 = v36;
    v133 = v39;
    while (1)
    {
      if (v135)
      {
        v44 = sub_C5FE4();
        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        if (v40 >= *(v134 + 16))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v39 = sub_C60E4();
          goto LABEL_3;
        }

        v44 = *(v1 + 8 * v40 + 32);

        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_43;
        }
      }

      v136 = *v138;
      v137 = *(v138 + 8);
      v46 = OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType;
      sub_3ED7C(v44 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v38, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v41 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v41 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        v42 = v41;
        v43 = v38;
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v53 = v38;
        if (v137)
        {
          goto LABEL_88;
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      sub_3ED7C(v44 + v46, v36, type metadata accessor for AssetAttachment.AssetType);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = v48;
      if (v48 > 1)
      {
        break;
      }

      v51 = v36;
      v52 = v127;
      if (!v49)
      {
        goto LABEL_24;
      }

      sub_3ECB8(v36, type metadata accessor for AssetAttachment.AssetType);
      v60 = 1;
      v24 = v124;
LABEL_28:
      (*v123)(v24, v60, 1, v25);
      v53 = &v38[*(sub_3CB0(&qword_106948) + 48)];
      if ((*v122)(v24, 1, v25) == 1)
      {

        sub_C060(v24, &qword_1063B8);
      }

      else
      {
        v61 = v117;
        (*v118)(v117, v24, v25);
        sub_C38A4();
        v62 = v125;
        sub_C4B64();
        v24 = v109;
        sub_C4B34();
        v63 = v126;
        if ((*v104)(v24, 1, v126) == 1)
        {

          v25 = v130;
          (*v102)(v61, v130);
          sub_C060(v24, &qword_106940);
          v29 = v129;
          v36 = v103;
        }

        else
        {
          (*v98)();
          sub_C4BB4();
          v64 = sub_C4BD4();
          v24 = *v97;
          (*v97)(v62, v63);
          if (v64)
          {
            (v24)(v110, v63);
            v25 = v130;
            (*v102)(v117, v130);
            v36 = v103;
LABEL_38:
            v29 = v129;
            if (v137)
            {
              v38 = v53;
              goto LABEL_88;
            }

LABEL_21:
            v54 = *(v44 + 16);
            sub_3ECB8(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v54 == v136)
            {
LABEL_86:
              v94 = v105;
              goto LABEL_89;
            }

            v1 = v132;
            goto LABEL_8;
          }

          sub_C4BA4();
          v96 = v24;
          v24 = v110;
          v65 = sub_C4BD4();
          v66 = v62;
          v67 = v96;
          (v96)(v66, v63);
          (v67)(v24, v63);
          v25 = v130;
          (*v102)(v117, v130);
          v36 = v103;
          if (v65)
          {
            goto LABEL_38;
          }

          v29 = v129;
        }

        v1 = v132;
      }

      v42 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      v43 = v53;
LABEL_7:
      sub_3ECB8(v43, v42);
LABEL_8:
      ++v40;
      if (v45 == v133)
      {
        goto LABEL_44;
      }
    }

    v50 = v48 - 2;
    v51 = v36;
    v52 = v127;
    if (v50 >= 2)
    {

      v51 = v36 + *(sub_3CB0(&qword_106948) + 48);
    }

LABEL_24:
    v55 = v121;
    sub_3ED18(v51, v121);
    sub_3ED7C(v55, v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_3ECB8(v55, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v24 = v124;
      (*v118)(v124, v52, v25);
    }

    else
    {
      v56 = v115;
      sub_C44C4();
      v57 = v124;
      sub_C4494();
      v29 = v129;

      v58 = v56;
      v1 = v132;
      (*v100)(v58, v116);
      v59 = v55;
      v24 = v57;
      v25 = v130;
      sub_3ECB8(v59, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v60 = 0;
    goto LABEL_28;
  }

LABEL_44:
  v36 = *(v101 + qword_115578);
  if (v36 >> 62)
  {
    v24 = sub_C60E4();
    v1 = v131;
    if (v24)
    {
      goto LABEL_46;
    }

    return (*(v114 + 56))(v105, 1, 1, v25);
  }

  v24 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
  v1 = v131;
  if (!v24)
  {
    return (*(v114 + 56))(v105, 1, 1, v25);
  }

LABEL_46:
  v68 = 0;
  v38 = (v36 & 0xC000000000000001);
  v135 = v36 & 0xFFFFFFFFFFFFFF8;
  v132 = v114 + 56;
  v118 = (v107 + 8);
  v124 = (v114 + 32);
  v127 = (v114 + 48);
  v122 = (v108 + 48);
  v117 = (v108 + 32);
  v110 = (v108 + 8);
  v121 = (v114 + 8);
  v133 = v24;
  v134 = v36 & 0xC000000000000001;
  v123 = v36;
  while (1)
  {
    if (v38)
    {
      v70 = sub_C5FE4();
      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v68 >= *(v135 + 16))
      {
        goto LABEL_91;
      }

      v70 = *(v36 + 8 * v68 + 32);

      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v136 = *v138;
    v137 = *(v138 + 8);
    v72 = OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType;
    sub_3ED7C(v70 + OBJC_IVAR____TtC20JournalNotifications15AssetAttachment_assetType, v1, type metadata accessor for AssetAttachment.AssetType);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 > 1)
    {
      break;
    }

    if (v73)
    {

      v69 = type metadata accessor for AssetAttachment.AssetType;
      goto LABEL_48;
    }

LABEL_47:

    v69 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
LABEL_48:
    sub_3ECB8(v1, v69);
LABEL_49:
    ++v68;
    if (v71 == v24)
    {
      return (*(v114 + 56))(v105, 1, 1, v25);
    }
  }

  if (v73 != 2)
  {
    if (v73 != 3)
    {

      v74 = v70 + v72;
      v75 = v119;
      sub_3ED7C(v74, v119, type metadata accessor for AssetAttachment.AssetType);
      v76 = swift_getEnumCaseMultiPayload();
      v77 = v76;
      if (v76 <= 1)
      {
        v79 = v75;
        if (!v77)
        {
          goto LABEL_65;
        }

        sub_3ECB8(v75, type metadata accessor for AssetAttachment.AssetType);
        v85 = 1;
        v84 = v25;
        v83 = v120;
      }

      else
      {
        v78 = v76 - 2;
        v79 = v75;
        if (v78 >= 2)
        {

          v79 = v75 + *(sub_3CB0(&qword_106948) + 48);
        }

LABEL_65:
        v81 = v112;
        sub_3ED18(v79, v112);
        v82 = v113;
        sub_3ED7C(v81, v113, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_3ECB8(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v83 = v120;
          v84 = v130;
          (*v124)(v120, v82, v130);
          v85 = 0;
        }

        else
        {
          v86 = v115;
          sub_C44C4();
          v83 = v120;
          sub_C4494();
          v1 = v131;

          (*v118)(v86, v116);
          sub_3ECB8(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v85 = 0;
          v84 = v130;
        }

        v24 = v133;
      }

      (*v132)(v83, v85, 1, v84);
      v38 = (v1 + *(sub_3CB0(&qword_106948) + 48));
      if ((*v127)(v83, 1, v84) == 1)
      {

        sub_C060(v83, &qword_1063B8);
        v25 = v84;
        v29 = v129;
        goto LABEL_74;
      }

      v87 = v111;
      (*v124)(v111, v83, v84);
      sub_C38A4();
      v88 = v125;
      sub_C4B64();
      v89 = v106;
      sub_C4B34();
      v90 = v126;
      if ((*v122)(v89, 1, v126) == 1)
      {

        (*v121)(v87, v84);
        sub_C060(v89, &qword_106940);
        v25 = v84;
        v29 = v129;
        v36 = v123;
LABEL_73:
        v24 = v133;
LABEL_74:
        sub_3ECB8(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_75:
        v1 = v131;
        v38 = v134;
        goto LABEL_49;
      }

      v91 = v99;
      (*v117)(v99, v89, v90);
      sub_C4BB4();
      v92 = sub_C4BD4();
      v93 = *v110;
      (*v110)(v88, v90);
      if (v92)
      {
        v93(v91, v90);
        v25 = v130;
        (*v121)(v111, v130);
        v29 = v129;
        v36 = v123;
      }

      else
      {
        sub_C4BA4();
        LODWORD(v109) = sub_C4BD4();
        v93(v88, v90);
        v93(v91, v90);
        v25 = v130;
        (*v121)(v111, v130);
        v29 = v129;
        v36 = v123;
        if ((v109 & 1) == 0)
        {

          goto LABEL_73;
        }
      }

      v24 = v133;
      if (v137)
      {
        goto LABEL_88;
      }

LABEL_62:
      v80 = *(v70 + 16);
      sub_3ECB8(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (v80 == v136)
      {
        goto LABEL_86;
      }

      goto LABEL_75;
    }

    goto LABEL_47;
  }

  v38 = v1;
  if ((v137 & 1) == 0)
  {
    goto LABEL_62;
  }

  v38 = v131;
LABEL_88:
  v94 = v105;
  sub_3ECB8(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_89:
  sub_7BFE8(v94);
}

uint64_t type metadata accessor for VideoThumbnailCacheOperation()
{
  result = qword_106808;
  if (!qword_106808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3ECB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3ED18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3ED7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3EDE4()
{
  v0 = sub_C5B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5AF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5154();
  __chkstk_darwin(v5 - 8);
  sub_36B6C();
  sub_C50F4();
  sub_C5AE4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_C5B44();
  qword_115480 = result;
  return result;
}

uint64_t sub_3EF94()
{
  v0 = sub_C5B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5AF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5154();
  __chkstk_darwin(v5 - 8);
  sub_36B6C();
  sub_C5124();
  sub_C5AE4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_C5B44();
  qword_115488 = result;
  return result;
}

uint64_t sub_3F144()
{
  v0 = sub_C5B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_C5AF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_C5154();
  __chkstk_darwin(v5 - 8);
  sub_36B6C();
  sub_C50F4();
  sub_C5AE4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_C5B44();
  qword_115490 = result;
  return result;
}

uint64_t sub_3F2FC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v60 = a4;
  LOBYTE(v5) = a1;
  v6 = sub_C3D14();
  v59 = *(v6 - 1);
  __chkstk_darwin(v6);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_align = &stru_FAFE8.align;
  if ((a3 & 1) == 0)
  {
    v57 = 0x80000000000C9650;
    v56 = v5 & 1;
    goto LABEL_5;
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_1042D0 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v10 = qword_115660;
    sub_3CB0(&qword_106950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_CF5C0;
    strcpy(&v63, "downloadIDKey");
    HIWORD(v63) = -4864;
    sub_C5F64();
    v12 = sub_C3CC4();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    *&v63 = 0xD000000000000013;
    *(&v63 + 1) = 0x80000000000C9650;
    v57 = 0x80000000000C9650;
    sub_C5F64();
    *(inited + 168) = &_s16DownloadPriorityON;
    v56 = v5 & 1;
    *(inited + 144) = v5 & 1;
    *&v63 = 0x64616F6C6E776F64;
    *(&v63 + 1) = 0xEF79654B65707954;
    sub_C5F64();
    *(inited + 240) = &_s12DownloadTypeON;
    *(inited + 216) = 1;
    sub_25528(inited);
    swift_setDeallocating();
    sub_3CB0(&qword_105440);
    swift_arrayDestroy();
    isa = sub_C52A4().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];

    p_align = (&stru_FAFE8 + 24);
LABEL_5:
    v15 = v60 + 56;
    v16 = 1 << *(v60 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v9 = v17 & *(v60 + 56);
    v18 = (v16 + 63) >> 6;
    v54 = (v59 + 8);
    v55 = v59 + 16;

    v19 = 0;
    v5 = v58;
    v52 = v15;
    v53 = v18;
    v51 = v6;
    if (!v9)
    {
      break;
    }

    while (1)
    {
      v20 = v19;
LABEL_12:
      (*(v59 + 16))(v5, *(v60 + 48) + *(v59 + 72) * (__clz(__rbit64(v9)) | (v20 << 6)), v6);
      v62 = [objc_opt_self() *(p_align + 485)];
      if (qword_1042D0 != -1)
      {
        swift_once();
      }

      v61 = qword_115660;
      strcpy(&v63, "downloadIDKey");
      HIWORD(v63) = -4864;
      sub_C5F64();
      v21 = sub_C3CC4();
      v23 = v22;
      (*v54)(v5, v6);
      v68[8] = &type metadata for String;
      v68[5] = v21;
      v68[6] = v23;
      *&v63 = 0xD000000000000013;
      *(&v63 + 1) = v57;
      sub_C5F64();
      v70 = &_s16DownloadPriorityON;
      v69[40] = v56;
      *&v63 = 0x64616F6C6E776F64;
      v5 = &v67;
      *(&v63 + 1) = 0xEF79654B65707954;
      sub_C5F64();
      v72 = &_s12DownloadTypeON;
      v71[40] = 0;
      sub_3CB0(&qword_105438);
      v24 = sub_C6114();
      sub_3FA30(v68, &v63);
      v25 = sub_23FB0(&v63);
      v6 = &v63;
      if (v26)
      {
        break;
      }

      v27 = v24 + 8;
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
      v28 = v24[6] + 40 * v25;
      v29 = v63;
      v30 = v64;
      *(v28 + 32) = v65;
      *v28 = v29;
      *(v28 + 16) = v30;
      sub_D564(v66, (v24[7] + 32 * v25));
      v31 = v24[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v33;
      sub_3FA30(v69, &v63);
      v34 = sub_23FB0(&v63);
      if (v35)
      {
        break;
      }

      *(v27 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v36 = v24[6] + 40 * v34;
      v37 = v63;
      v38 = v64;
      *(v36 + 32) = v65;
      *v36 = v37;
      *(v36 + 16) = v38;
      sub_D564(v66, (v24[7] + 32 * v34));
      v39 = v24[2];
      v32 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v40;
      sub_3FA30(v71, &v63);
      v41 = sub_23FB0(&v63);
      if (v42)
      {
        break;
      }

      *(v27 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v43 = v24[6] + 40 * v41;
      v44 = v63;
      v45 = v64;
      *(v43 + 32) = v65;
      *v43 = v44;
      *(v43 + 16) = v45;
      sub_D564(v66, (v24[7] + 32 * v41));
      v46 = v24[2];
      v32 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v9 &= v9 - 1;
      v24[2] = v47;
      sub_3CB0(&qword_105440);
      swift_arrayDestroy();
      v48 = sub_C52A4().super.isa;

      v49 = v62;
      [v62 postNotificationName:v61 object:0 userInfo:v48];

      v19 = v20;
      v6 = v51;
      v15 = v52;
      v5 = v58;
      p_align = (&stru_FAFE8 + 24);
      v18 = v53;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  while (1)
  {
LABEL_9:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v20 >= v18)
    {
    }

    v9 = *(v15 + 8 * v20);
    ++v19;
    if (v9)
    {
      goto LABEL_12;
    }
  }
}

uint64_t sub_3FA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_105440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3FACC()
{
  result = qword_106958;
  if (!qword_106958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106958);
  }

  return result;
}

unint64_t sub_3FB24()
{
  result = qword_106960[0];
  if (!qword_106960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_106960);
  }

  return result;
}

uint64_t sub_3FB98()
{
  sub_C5DA4();
  result = sub_C5DA4();
  if (v1 <= 0x3F)
  {
    result = _s8MetadataC5InputOMa();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_3FC88@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

BOOL sub_3FF30(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  if (v2)
  {
  }

  return v2 == 0;
}

uint64_t sub_3FF78(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_3FFB8(a1);
  return v2;
}

uint64_t sub_3FFB8(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = sub_C5DA4();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + *(*v1 + 112)) = xmmword_CF6E0;
  v5 = *(*v1 + 120);
  v6 = _s8MetadataC5InputOMa();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t sub_400F8()
{
  v1 = *(*v0 + 104);
  sub_C5DA4();
  v2 = sub_C5DA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_409E0(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  v3 = *(*v0 + 120);
  v4 = _s8MetadataC5InputOMa();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_4022C()
{
  sub_400F8();

  return swift_deallocClassInstance();
}

uint64_t sub_402BC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4032C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_40444(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_405FC(uint64_t a1, uint64_t a2)
{
  v5 = (*(&stru_108.reloff + (swift_isaMask & *v2)))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 assetMetaData];

    if (v7)
    {
      v9 = sub_C3984();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v16 = v9;
    v17 = v11;
    __chkstk_darwin(v8);
    v15[2] = a1;
    v15[3] = a2;
    sub_3CB0(&qword_106A68);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v12 = _s8MetadataCMa();
    sub_3FC88(sub_4096C, v15, &type metadata for Never, v12, v13, &v18);
    sub_1D580(v16, v17);
    v5 = v18;
  }

  return (*(a2 + 40))(v5, a1, a2);
}

uint64_t sub_407FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = _s8MetadataC5InputOMa();
  __chkstk_darwin(v4);
  v6 = (&v11 - v5);
  v8 = *a1;
  v7 = a1[1];
  _s8MetadataCMa();
  *v6 = v8;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  sub_3FFB8(v6);
  *a2 = v9;
  return sub_4098C(v8, v7);
}

uint64_t sub_4098C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_409E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1D580(a1, a2);
  }

  return a1;
}

id sub_409F4(int a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v4 = 0x300000005;
    v5 = 6;
    v6 = a1;
    v7 = 0x100010024;
    v3 = result;
    [result replaceAttributes:&v4 count:3];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_40A7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C58);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106C60);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106C60);
  v13 = sub_3CB0(&qword_105EA8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_105EA8);
  }

  sub_C060(v11, &qword_106C60);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106C58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4614();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4614();
    sub_48C28(&qword_106C68, &type metadata accessor for MultiPinMapAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_105EA8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106C60);
  return swift_endAccess();
}

uint64_t sub_40E20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C40);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106C48);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106C48);
  v13 = sub_3CB0(&qword_106060);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106060);
  }

  sub_C060(v11, &qword_106C48);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4504();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4504();
    sub_48C28(&qword_106C50, &type metadata accessor for GenericMapAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106060);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106C48);
  return swift_endAccess();
}

uint64_t sub_411C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D50);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106D58);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106D58);
  v13 = sub_3CB0(&qword_105700);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_105700);
  }

  sub_C060(v11, &qword_106D58);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C47D4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C47D4();
    sub_48C28(&qword_106D60, &type metadata accessor for WorkoutRouteAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_105700);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106D58);
  return swift_endAccess();
}

uint64_t sub_41568@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B40);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106B50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106B50);
  v13 = sub_3CB0(&qword_106B00);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106B00);
  }

  sub_C060(v11, &qword_106B50);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106B40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4484();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4484();
    sub_48C28(&qword_106AA8, &type metadata accessor for ConfettiAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106B00);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106B50);
  return swift_endAccess();
}

uint64_t sub_4190C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B58);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106B70);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106B70);
  v13 = sub_3CB0(&qword_106B68);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106B68);
  }

  sub_C060(v11, &qword_106B70);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106B58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C43D4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C43D4();
    sub_48C28(&qword_106B78, &type metadata accessor for ContactAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106B68);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106B70);
  return swift_endAccess();
}

uint64_t sub_41CB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B80);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106B98);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106B98);
  v13 = sub_3CB0(&qword_106B90);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106B90);
  }

  sub_C060(v11, &qword_106B98);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4734();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4734();
    sub_48C28(&qword_106BA0, &type metadata accessor for PhotoLibraryAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106B90);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106B98);
  return swift_endAccess();
}

uint64_t sub_42054@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106BA8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106BC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106BC0);
  v13 = sub_3CB0(&qword_106BB8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106BB8);
  }

  sub_C060(v11, &qword_106BC0);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C42E4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C42E4();
    sub_48C28(&qword_106BC8, &type metadata accessor for MusicAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106BB8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106BC0);
  return swift_endAccess();
}

uint64_t sub_423F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106BD0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106BE8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106BE8);
  v13 = sub_3CB0(&qword_106BE0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106BE0);
  }

  sub_C060(v11, &qword_106BE8);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C41C4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C41C4();
    sub_48C28(&qword_106BF0, &type metadata accessor for BookAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106BE0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106BE8);
  return swift_endAccess();
}

uint64_t sub_4279C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106BF8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106C10);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106C10);
  v13 = sub_3CB0(&qword_106C08);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106C08);
  }

  sub_C060(v11, &qword_106C10);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106BF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4434();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4434();
    sub_48C28(&qword_106C18, &type metadata accessor for PodcastAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106C08);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106C10);
  return swift_endAccess();
}

uint64_t sub_42B40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C20);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106C28);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106C28);
  v13 = sub_3CB0(&qword_106C30);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106C30);
  }

  sub_C060(v11, &qword_106C28);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4874();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4874();
    sub_48C28(&qword_106C38, &type metadata accessor for MotionActivityAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106C30);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106C28);
  return swift_endAccess();
}

uint64_t sub_42EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C70);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106C78);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106C78);
  v13 = sub_3CB0(&qword_106C80);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106C80);
  }

  sub_C060(v11, &qword_106C78);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4264();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4264();
    sub_48C28(&qword_106C88, &type metadata accessor for AudioAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106C80);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106C78);
  return swift_endAccess();
}

uint64_t sub_43288@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C98);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106CA0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106CA0);
  v13 = sub_3CB0(&qword_106CA8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106CA8);
  }

  sub_C060(v11, &qword_106CA0);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C41F4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C41F4();
    sub_48C28(&qword_106CB0, &type metadata accessor for LinkAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106CA8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106CA0);
  return swift_endAccess();
}

uint64_t sub_4362C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106CB8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106CD0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106CD0);
  v13 = sub_3CB0(&qword_106CC8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106CC8);
  }

  sub_C060(v11, &qword_106CD0);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106CB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4524();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4524();
    sub_48C28(&qword_106CD8, &type metadata accessor for ReflectionAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106CC8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106CD0);
  return swift_endAccess();
}

uint64_t sub_439D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106CE0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106CF8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106CF8);
  v13 = sub_3CB0(&qword_106CF0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106CF0);
  }

  sub_C060(v11, &qword_106CF8);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C43F4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C43F4();
    sub_48C28(&qword_106D00, &type metadata accessor for DrawingAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106CF0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106CF8);
  return swift_endAccess();
}

uint64_t sub_43D74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D08);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106D20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106D20);
  v13 = sub_3CB0(&qword_106D18);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106D18);
  }

  sub_C060(v11, &qword_106D20);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106D08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4654();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4654();
    sub_48C28(&qword_106D28, &type metadata accessor for StateOfMindAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106D18);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106D20);
  return swift_endAccess();
}

uint64_t sub_44118@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D30);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106D38);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106D38);
  v13 = sub_3CB0(&qword_106D40);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106D40);
  }

  sub_C060(v11, &qword_106D38);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C46F4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C46F4();
    sub_48C28(&qword_106D48, &type metadata accessor for WorkoutIconAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106D40);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106D38);
  return swift_endAccess();
}

uint64_t sub_444BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D68);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106D80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106D80);
  v13 = sub_3CB0(&qword_106D78);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106D78);
  }

  sub_C060(v11, &qword_106D80);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106D68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C4924();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C4924();
    sub_48C28(&qword_106D88, &type metadata accessor for ThirdPartyMediaAssetMetadata);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106D78);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106D80);
  return swift_endAccess();
}

uint64_t sub_44860@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D90);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_3CB0(&qword_106D98);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_B954(v1 + v12, v11, &qword_106D98);
  v13 = sub_3CB0(&qword_106DA0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_E9D4(v11, a1, &qword_106DA0);
  }

  sub_C060(v11, &qword_106D98);
  sub_B954(v1 + *(*v1 + 120), v5, &qword_106D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_C40D4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_C40D4();
    sub_48C28(&qword_106DA8, &type metadata accessor for StreakEvent);
    sub_C3964();
    sub_BF1C(v19, v18);
  }

  sub_B954(a1, v9, &qword_106DA0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_2882C(v9, v1 + v12, &qword_106D98);
  return swift_endAccess();
}

uint64_t sub_44C04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C40);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications15GenericMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications15GenericMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106DD0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106060);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106C40);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_40E20(a1);
  }

  else
  {
    v17 = sub_C4504();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_44E44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C58);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications16MultiPinMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications16MultiPinMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106DC8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_105EA8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106C58);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_40A7C(a1);
  }

  else
  {
    v17 = sub_C4614();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_45084@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D50);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications17WorkoutRouteAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications17WorkoutRouteAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106DC0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_105700);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106D50);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_411C4(a1);
  }

  else
  {
    v17 = sub_C47D4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_452C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B40);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications13ConfettiAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications13ConfettiAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106B48);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106B00);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106B40);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_41568(a1);
  }

  else
  {
    v17 = sub_C4484();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_45500@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B58);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications12ContactAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications12ContactAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106B60);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106B68);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106B58);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_4190C(a1);
  }

  else
  {
    v17 = sub_C43D4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_45740@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B80);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications10VideoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications10VideoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106B88);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106B90);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106B80);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_41CB0(a1);
  }

  else
  {
    v17 = sub_C4734();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_45980@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106BA8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications10MusicAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications10MusicAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106BB0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106BB8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106BA8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_42054(a1);
  }

  else
  {
    v17 = sub_C42E4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_45BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106BD0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications9BookAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications9BookAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106BD8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106BE0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106BD0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_423F8(a1);
  }

  else
  {
    v17 = sub_C41C4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_45E00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106BF8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications12PodcastAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications12PodcastAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106C00);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106C08);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106BF8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_4279C(a1);
  }

  else
  {
    v17 = sub_C4434();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_46040@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B80);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications14LivePhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications14LivePhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106B88);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106B90);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106B80);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_41CB0(a1);
  }

  else
  {
    v17 = sub_C4734();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_46280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106C70);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications10AudioAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications10AudioAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106C90);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106C80);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106C70);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_42EE4(a1);
  }

  else
  {
    v17 = sub_C4264();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_464C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106CB8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications15ReflectionAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications15ReflectionAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106CC0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106CC8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106CB8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_4362C(a1);
  }

  else
  {
    v17 = sub_C4524();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_46700@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106CE0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications12DrawingAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications12DrawingAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106CE8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106CF0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106CE0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_439D0(a1);
  }

  else
  {
    v17 = sub_C43F4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_46940@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D08);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications16StateOfMindAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications16StateOfMindAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106D10);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106D18);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106D08);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_43D74(a1);
  }

  else
  {
    v17 = sub_C4654();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_46B80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106D68);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications20ThirdPartyMediaAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications20ThirdPartyMediaAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106D70);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106D78);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106D68);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_444BC(a1);
  }

  else
  {
    v17 = sub_C4924();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_46DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CB0(&qword_106B80);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC20JournalNotifications10PhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC20JournalNotifications10PhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_C3984();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_3CB0(&qword_106B88);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_3CB0(&qword_106B90);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_CF6E0;
      sub_E9D4(v5, v13 + *(*v13 + 120), &qword_106B80);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_41CB0(a1);
  }

  else
  {
    v17 = sub_C4734();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}