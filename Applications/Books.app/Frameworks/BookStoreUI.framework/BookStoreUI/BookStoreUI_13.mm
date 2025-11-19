uint64_t sub_1BEBD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BEE4C()
{
  sub_68CD0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF0D0()
{
  sub_68CD0(v0 + 56);
  sub_68CD0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF35C()
{
  sub_68CD0(v0 + 96);
  sub_68CD0(v0 + 56);
  sub_68CD0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF5F0()
{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1016);

  sub_1BFCD0(v6, type metadata accessor for SeriesPageStoreResourceIntent);
  sub_69198(v5, &qword_3BFEC0);
  sub_69198(v4, &qword_3C13C8);
  (*(v2 + 8))(v1, v3);
  sub_68CD0(v0 + 96);
  sub_68CD0(v0 + 56);
  sub_68CD0(v0 + 16);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BF90C(uint64_t a1)
{
  v2 = sub_2C4C48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C13C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2C4E88();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, v8, &qword_3C13C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_69198(v8, &qword_3C13C8);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_2C4C38();
  if (qword_3BB938 != -1)
  {
    swift_once();
  }

  v14 = sub_6620C(&qword_3C13E8);
  sub_57AD8(v14, qword_3E8948);
  sub_2C4E78();
  sub_2C4E98();

  if (qword_3BB940 != -1)
  {
    swift_once();
  }

  sub_57AD8(v14, qword_3E8960);
  sub_2C4E78();
  sub_2C4E98();

  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1BFC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7100C;

  return SeriesSeeAllPageIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_1BFCD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BFD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BFEC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFE40()
{
  sub_68CD0(v0 + 16);
  if (*(v0 + 88))
  {
    sub_68CD0(v0 + 64);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1BFE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BFEE0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v46 = a3;
  v47 = a2;
  v42 = a1;
  v3 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v3 - 8);
  v45 = &v40 - v4;
  v5 = sub_2C5418();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C5288();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2BF368();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2BFDD8();
  v43 = *(v17 - 8);
  v44 = v17;
  __chkstk_darwin(v17);
  v48 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v40 - v21;
  LODWORD(v47) = *v47;
  (*(v14 + 16))(v16, v42, v13, v20);
  v23 = (*(v14 + 88))(v16, v13);
  if (v23 == enum case for SeriesType.audiobook(_:) || v23 == enum case for SeriesType.book(_:))
  {
    sub_2C5278();
    v24 = enum case for LocalizerLookupStrategy.default(_:);
    (*(v6 + 104))(v8, enum case for LocalizerLookupStrategy.default(_:), v5);
    sub_2BFD98();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2BFDC8();
    (*(v14 + 8))(v16, v13);
    v24 = enum case for LocalizerLookupStrategy.default(_:);
  }

  v25 = 0x4040000000000000;
  if (v47)
  {
    v25 = 0;
  }

  v41 = v22;
  v42 = v25;
  sub_2C5278();
  (*(v6 + 104))(v8, v24, v5);
  sub_2BFD98();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v26 = v43;
  v27 = *(v43 + 16);
  v28 = v45;
  v29 = v22;
  v30 = v44;
  v27(v45, v29, v44);
  (*(v26 + 56))(v28, 0, 1, v30);
  v40 = 0x80000000003065B0;
  v31 = type metadata accessor for ContentUnavailableComponentModel();
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  sub_6932C(v50, v49, &unk_3BDC90);
  v32 = v46;
  sub_2C1DB8();
  sub_69198(v50, &unk_3BDC90);
  v33 = v31[11];
  v34 = sub_2C5018();
  (*(*(v34 - 8) + 56))(&v32[v33], 1, 1, v34);
  *v32 = xmmword_2F2360;
  v35 = v48;
  v27(&v32[v31[5]], v48, v30);
  sub_6932C(v28, &v32[v31[6]], &qword_3BEF80);
  v36 = &v32[v31[7]];
  v37 = v42;
  *v36 = 0;
  *(v36 + 1) = v37;
  v36[16] = v47;
  *&v50[0] = 0xD000000000000014;
  *(&v50[0] + 1) = v40;
  sub_2C61A8();
  sub_69198(v28, &qword_3BEF80);
  v38 = *(v26 + 8);
  v38(v35, v30);
  result = (v38)(v41, v30);
  v32[v31[8]] = 0;
  return result;
}

uint64_t sub_1C05DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_D4DF4(a3, v22 - v9);
  v11 = sub_2C5C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_69198(v10, &unk_3BDBB0);
  }

  else
  {
    sub_2C5C48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2C5BB8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2C5938() + 32;

      sub_6620C(&unk_3BD1A0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_69198(a3, &unk_3BDBB0);

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

  sub_69198(a3, &unk_3BDBB0);
  sub_6620C(&unk_3BD1A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_D4DF4(a3, v22 - v9);
  v11 = sub_2C5C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_69198(v10, &unk_3BDBB0);
  }

  else
  {
    sub_2C5C48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2C5BB8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2C5938() + 32;

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

      sub_69198(a3, &unk_3BDBB0);

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

  sub_69198(a3, &unk_3BDBB0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double PaginationController.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t sub_1C0B94(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1C0C24@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

double PaginationController.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t sub_1C0C88(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v4 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v75 = sub_6620C(&qword_3BD1B0);
  v69 = *(v75 - 8);
  v7 = *(v69 + 64);
  __chkstk_darwin(v75);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v63 - v9;
  v10 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_2C4BF8();
  __chkstk_darwin(v13 - 8);
  v72 = sub_6620C(&qword_3BD478);
  v68 = *(v72 - 8);
  v14 = *(v68 + 64);
  __chkstk_darwin(v72);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v63 - v16;
  v78 = sub_2C00B8();
  v17 = *(v78 - 8);
  __chkstk_darwin(v78);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  if (*(v2 + 18) != 1)
  {
    v33 = v2;
    sub_2C0088();
    v77 = a1;
    sub_691F8(a1, &v81);
    v34 = sub_2C0098();
    v35 = sub_2C5DE8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v80[0] = v37;
      *v36 = 136315138;
      sub_72084(&v81, *(&v82 + 1));
      v38 = sub_2C4A88();
      v40 = v39;
      sub_68CD0(&v81);
      v41 = sub_5CCF4(v38, v40, v80);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "The initial page intent result hasn't come back yet. Staging this intent to be re-dispatched later: %s", v36, 0xCu);
      sub_68CD0(v37);

      (*(v17 + 8))(v19, v78);
    }

    else
    {

      (*(v17 + 8))(v19, v78);
      sub_68CD0(&v81);
    }

    sub_691F8(v77, &v81);
    swift_beginAccess();
    v42 = *(&v82 + 1);
    if (*(v33 + 48))
    {
      sub_68CD0(v33 + 24);
      if (v42)
      {
LABEL_10:
        sub_68D1C(&v81, v33 + 24);
        return swift_endAccess();
      }
    }

    else if (*(&v82 + 1))
    {
      goto LABEL_10;
    }

    v43 = v82;
    *(v33 + 24) = v81;
    *(v33 + 40) = v43;
    *(v33 + 56) = v83;
    return swift_endAccess();
  }

  result = swift_beginAccess();
  if (!*(v2 + 17))
  {
    v24 = v2;
    sub_2C0088();
    v77 = a1;
    sub_691F8(a1, &v81);
    v25 = sub_2C0098();
    v26 = sub_2C5DE8();
    v27 = os_log_type_enabled(v25, v26);
    v67 = v6;
    v66 = v24;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v79 = v65;
      *v28 = 136315138;
      v63 = v83;
      sub_72084(&v81, *(&v82 + 1));
      v64 = v26;
      v29 = sub_2C4A88();
      v31 = v30;
      sub_68CD0(&v81);
      v32 = sub_5CCF4(v29, v31, &v79);
      v24 = v66;

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v25, v64, "Loading next page with intent: %s", v28, 0xCu);
      sub_68CD0(v65);

      (*(v17 + 8))(v22, v78);
    }

    else
    {

      (*(v17 + 8))(v22, v78);
      sub_68CD0(&v81);
    }

    *(v24 + 17) = 1;
    sub_2C4BE8();
    sub_691F8(v77, &v81);
    v44 = sub_2BF088();
    (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
    type metadata accessor for Page();
    type metadata accessor for Shelf();
    sub_1C3638(&qword_3BD4F0, type metadata accessor for Page);
    sub_1C3638(&qword_3BD4F8, type metadata accessor for Shelf);
    v45 = v71;
    sub_2C10E8();
    v46 = v74;
    v47 = v75;
    sub_2C4DB8();
    v48 = sub_2C5C58();
    (*(*(v48 - 8) + 56))(v67, 1, 1, v48);
    v49 = v69;
    (*(v69 + 16))(v73, v46, v47);
    v50 = v68;
    (*(v68 + 16))(v70, v45, v72);
    sub_691F8(v77, &v81);
    sub_2C5C18();

    v51 = sub_2C5C08();
    v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v53 = (v7 + *(v50 + 80) + v52) & ~*(v50 + 80);
    v54 = (v14 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v51;
    *(v56 + 24) = &protocol witness table for MainActor;
    v57 = v56 + v52;
    v58 = v75;
    (*(v49 + 32))(v57, v73, v75);
    v59 = v56 + v53;
    v60 = v72;
    (*(v50 + 32))(v59, v70, v72);
    *(v56 + v54) = v76;
    sub_68D1C(&v81, v56 + v55);
    v61 = v66;
    *(v56 + ((v55 + 47) & 0xFFFFFFFFFFFFFFF8)) = v66;
    v62 = sub_1C0888(0, 0, v67, &unk_2F2380, v56);
    (*(v49 + 8))(v74, v58);
    (*(v50 + 8))(v71, v60);
    *(v61 + 64) = v62;
  }

  return result;
}

uint64_t sub_1C1628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a7;
  v8[30] = a8;
  v8[27] = a5;
  v8[28] = a6;
  v8[26] = a4;
  v9 = sub_2C6338();
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v10 = sub_2C6328();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v11 = sub_2C00B8();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v12 = sub_6620C(&qword_3BD858);
  v8[44] = v12;
  v8[45] = *(v12 - 8);
  v8[46] = swift_task_alloc();
  v13 = sub_2C4C08();
  v8[47] = v13;
  v8[48] = *(v13 - 8);
  v8[49] = swift_task_alloc();
  sub_2C5C18();
  v8[50] = sub_2C5C08();
  v15 = sub_2C5BB8();
  v8[51] = v15;
  v8[52] = v14;

  return _swift_task_switch(sub_1C18D0, v15, v14);
}

uint64_t sub_1C18D0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[27];
  v5 = sub_6620C(&qword_3BD478);
  v0[5] = v5;
  v0[6] = sub_D30CC();
  v6 = sub_720C8(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  (*(v2 + 104))(v1, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v3);
  v7 = swift_task_alloc();
  v0[53] = v7;
  v8 = sub_6620C(&qword_3BD1B0);
  *v7 = v0;
  v7[1] = sub_1C1A2C;
  v9 = v0[49];
  v10 = v0[46];
  v11 = v0[28];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v9, v0 + 2, v10, v11, v8);
}

uint64_t sub_1C1A2C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    (*(v2[45] + 8))(v2[46], v2[44]);
    v3 = v2[51];
    v4 = v2[52];
    v5 = sub_1C22E0;
  }

  else
  {
    v7 = v2[48];
    v6 = v2[49];
    v8 = v2[47];
    (*(v2[45] + 8))(v2[46], v2[44]);
    (*(v7 + 8))(v6, v8);
    sub_68CD0((v2 + 2));
    v3 = v2[51];
    v4 = v2[52];
    v5 = sub_1C1B9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1C1B9C()
{
  v30 = v0;
  v1 = *(v0 + 232);
  sub_2C0088();
  sub_691F8(v1, v0 + 96);
  v2 = sub_2C0098();
  v3 = sub_2C5DE8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 344);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  if (v4)
  {
    v28 = *(v0 + 344);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    sub_72084((v0 + 96), *(v0 + 120));
    v10 = sub_2C4A88();
    v12 = v11;
    sub_68CD0(v0 + 96);
    v13 = sub_5CCF4(v10, v12, &v29);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v2, v3, "Finished loading next page with intent: %s)", v8, 0xCu);
    sub_68CD0(v9);

    v14 = *(v6 + 8);
    v14(v28, v7);
  }

  else
  {

    v14 = *(v6 + 8);
    v14(v5, v7);
    sub_68CD0(v0 + 96);
  }

  v15 = *(v0 + 432);
  *(v0 + 440) = v14;
  sub_2C5C88();
  if (v15)
  {

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v21 = *(v0 + 240);
    swift_beginAccess();
    *(v21 + 17) = 2;
    sub_2C6308();
    sub_2C6318();
    v22 = *(v20 + 8);
    *(v0 + 448) = v22;
    *(v0 + 456) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v18, v19);
    *(v0 + 192) = 0;
    *(v0 + 184) = 0;
    *(v0 + 200) = 1;
    sub_2C66A8();
    v23 = swift_task_alloc();
    *(v0 + 464) = v23;
    v24 = sub_1C3638(&qword_3C5130, &type metadata accessor for ContinuousClock);
    *v23 = v0;
    v23[1] = sub_1C1F38;
    v25 = *(v0 + 296);
    v26 = *(v0 + 264);
    v27 = *(v0 + 248);

    return static Task<>.sleep<A>(until:tolerance:clock:)(v25, v0 + 184, v26, v27, v24);
  }
}

uint64_t sub_1C1F38()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = v2[56];
  if (v0)
  {
    v4 = v2[37];
    v5 = v2[34];
    (*(v2[32] + 8))(v2[33], v2[31]);
    v3(v4, v5);
    v6 = v2[51];
    v7 = v2[52];
    v8 = sub_1C2704;
  }

  else
  {
    v9 = v2[37];
    v10 = v2[34];
    (*(v2[32] + 8))(v2[33], v2[31]);
    v3(v9, v10);
    v6 = v2[51];
    v7 = v2[52];
    v8 = sub_1C20B4;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1C20B4()
{

  v1 = v0[59];
  sub_2C5C88();
  if (v1)
  {

    v2 = v0[1];
  }

  else
  {
    sub_2C0088();
    v3 = sub_2C0098();
    v4 = sub_2C5DE8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "PaginationController reset to idle", v5, 2u);
    }

    v6 = v0[55];
    v7 = v0[42];
    v8 = v0[38];
    v9 = v0[30];

    v6(v7, v8);
    *(v9 + 17) = 0;
    *(v9 + 64) = 0;

    swift_beginAccess();
    *(v9 + 16) = 0;

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_1C22E0()
{
  v30 = v0;
  v1 = *(v0 + 232);
  sub_68CD0(v0 + 16);
  sub_2C0088();
  sub_691F8(v1, v0 + 56);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v8 = 136315394;
    v28 = v5;
    v29 = v27;
    sub_72084((v0 + 56), *(v0 + 80));
    v10 = sub_2C4A88();
    v12 = v11;
    sub_68CD0(v0 + 56);
    v13 = sub_5CCF4(v10, v12, &v29);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_0, v2, v3, "Failed to load next page with intent: %s, error: %@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0);

    sub_68CD0(v27);

    v15 = *(v7 + 8);
    v15(v28, v6);
  }

  else
  {

    v15 = *(v7 + 8);
    v15(v5, v6);
    sub_68CD0(v0 + 56);
  }

  *(v0 + 440) = v15;
  sub_2C5C88();
  v16 = *(v0 + 288);
  v17 = *(v0 + 272);
  v18 = *(v0 + 280);
  v19 = *(v0 + 240);
  swift_beginAccess();
  *(v19 + 17) = 2;
  sub_2C6308();
  sub_2C6318();
  v20 = *(v18 + 8);
  *(v0 + 448) = v20;
  *(v0 + 456) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  *(v0 + 192) = 0;
  *(v0 + 184) = 0;
  *(v0 + 200) = 1;
  sub_2C66A8();
  v21 = swift_task_alloc();
  *(v0 + 464) = v21;
  v22 = sub_1C3638(&qword_3C5130, &type metadata accessor for ContinuousClock);
  *v21 = v0;
  v21[1] = sub_1C1F38;
  v23 = *(v0 + 296);
  v24 = *(v0 + 264);
  v25 = *(v0 + 248);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v23, v0 + 184, v24, v25, v22);
}

uint64_t sub_1C2704()
{

  sub_2C0088();
  swift_errorRetain();
  v1 = sub_2C0098();
  v2 = sub_2C5DC8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to wait for 1s of settle-down time: %@", v3, 0xCu);
    sub_69198(v4, &qword_3BFEE0);
  }

  else
  {
  }

  (*(v0 + 440))(*(v0 + 320), *(v0 + 304));
  sub_2C5C88();
  sub_2C0088();
  v6 = sub_2C0098();
  v7 = sub_2C5DE8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "PaginationController reset to idle", v8, 2u);
  }

  v9 = *(v0 + 440);
  v10 = *(v0 + 336);
  v11 = *(v0 + 304);
  v12 = *(v0 + 240);

  v9(v10, v11);
  *(v12 + 17) = 0;
  *(v12 + 64) = 0;

  swift_beginAccess();
  *(v12 + 16) = 0;

  v13 = *(v0 + 8);

  return v13();
}

void sub_1C2A4C(uint64_t a1)
{
  v3 = sub_2C00B8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 18))
  {
    return;
  }

  *(v1 + 18) = 1;
  swift_beginAccess();
  if (*(v1 + 48))
  {
    sub_691F8(v1 + 24, &v25);
  }

  else
  {
    v25 = *(v1 + 24);
    v26 = *(v1 + 40);
    v27 = *(v1 + 56);
  }

  swift_beginAccess();
  if (*(v1 + 48))
  {
    sub_68CD0(v1 + 24);
  }

  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  swift_endAccess();
  if (*(&v26 + 1))
  {
    sub_691F8(&v25, &v21);
    if (*(&v22 + 1))
    {
      v19 = v1;
      sub_68D1C(&v21, v24);
      sub_2C0088();
      sub_691F8(v24, &v21);
      v7 = sub_2C0098();
      v8 = sub_2C5DE8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v18 = a1;
        v10 = v9;
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        sub_72084(&v21, *(&v22 + 1));
        v12 = sub_2C4A88();
        v14 = v13;
        sub_68CD0(&v21);
        v15 = sub_5CCF4(v12, v14, &v20);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_0, v7, v8, "Enabling pagination by re-dispatching the staged intent: %s", v10, 0xCu);
        sub_68CD0(v11);

        a1 = v18;

        (*(v4 + 8))(v6, v3);
      }

      else
      {

        (*(v4 + 8))(v6, v3);
        sub_68CD0(&v21);
      }

      sub_1C0C88(v24, a1);
      sub_68CD0(v24);
      if (*(&v26 + 1))
      {
        v16 = &v25;
        goto LABEL_18;
      }

      return;
    }
  }

  else
  {
    v21 = v25;
    v22 = v26;
    v23 = v27;
  }

  if (*(&v26 + 1))
  {
    sub_68CD0(&v25);
    if (*(&v22 + 1))
    {
      v16 = &v21;
LABEL_18:
      sub_68CD0(v16);
    }
  }
}

uint64_t sub_1C2D94(char a1)
{
  v2 = v1;
  v4 = sub_2C00B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2C0088();
  v8 = sub_2C0098();
  v9 = sub_2C5DE8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Resetting paginationController to initial state and canceling any pagination task.", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  if (*(v2 + 64))
  {

    sub_6620C(&unk_3BF5A0);
    sub_2C5C78();
  }

  *(v2 + 64) = 0;

  swift_beginAccess();
  *(v2 + 17) = 0;
  result = swift_beginAccess();
  *(v2 + 16) = 0;
  if (a1)
  {
    *(v2 + 18) = 0;
  }

  return result;
}

uint64_t PaginationController.deinit()
{
  if (*(v0 + 48))
  {
    sub_68CD0(v0 + 24);
  }

  return v0;
}

uint64_t PaginationController.__deallocating_deinit()
{
  if (*(v0 + 48))
  {
    sub_68CD0(v0 + 24);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C2FEC()
{
  v1 = sub_6620C(&qword_3BD1B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_6620C(&qword_3BD478);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  sub_68CD0(v0 + v10);

  return _swift_deallocObject(v0, ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_1C3198(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_6620C(&qword_3BD1B0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_6620C(&qword_3BD478) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_7100C;

  return sub_1C1628(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11, v15);
}

unint64_t sub_1C3360()
{
  result = qword_3C4FD8;
  if (!qword_3C4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4FD8);
  }

  return result;
}

uint64_t sub_1C33B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C33FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C3440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C3488(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 17) = v2;
  return result;
}

uint64_t sub_1C3638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PageAlert.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2C0368();
  v4 = *(*(v2 - 8) + 56);
  (v4)((v2 - 8), a1, 1, 1, v2);
  sub_69198(a1, &qword_3C1E38);

  return v4(a1, 1, 1, v2);
}

BOOL sub_1C3738()
{
  v1 = sub_6620C(&qword_3C1E38);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_6932C(v0, &v7 - v2, &qword_3C1E38);
  v4 = sub_2C0368();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_69198(v3, &qword_3C1E38);
  return v5;
}

void *sub_1C3820()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PageAlertViewModifier(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1C3980@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageAlertViewModifier(0);
  result = sub_6932C(v1 + *(v7 + 24), v11, &unk_3C24B0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1C3AFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3C4360);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PageAlertViewModifier(0);
  sub_6932C(v1 + *(v10 + 28), v9, &unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BFF28();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PageAlertViewModifier.init(alert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageAlertViewModifier(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 40) = 0;
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_6620C(&unk_3C4360);
  swift_storeEnumTagMultiPayload();
  return sub_69130(a1, a2, &qword_3C0C70);
}

uint64_t PageAlertViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  v72 = a2;
  v4 = type metadata accessor for PageAlertViewModifier(0);
  v69 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v70 = v5;
  v71 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C1E38);
  v66 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v68 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = v52 - v9;
  v67 = v10;
  __chkstk_darwin(v11);
  v63 = v52 - v12;
  v13 = sub_6620C(&qword_3C0C70);
  __chkstk_darwin(v13);
  v15 = v52 - v14;
  v16 = sub_2C0368();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PageAlert(0);
  __chkstk_darwin(v20 - 8);
  v58 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v52 - v23;
  __chkstk_darwin(v25);
  v27 = v52 - v26;
  v28 = sub_6620C(&qword_3C5138);
  v61 = *(v28 - 8);
  v62 = v28;
  __chkstk_darwin(v28);
  v59 = v52 - v29;
  sub_2C44C8();
  v30 = *(v17 + 48);
  v57 = v17 + 48;
  v56 = v30;
  v31 = v30(v27, 1, v16);
  v60 = v16;
  if (v31)
  {
    sub_1C65F0(v27, type metadata accessor for PageAlert);
  }

  else
  {
    (*(v17 + 16))(v19, v27, v16);
    sub_1C65F0(v27, type metadata accessor for PageAlert);
    v32 = sub_2C02D8();
    v33 = v34;
    (*(v17 + 8))(v19, v16);
    if (v33)
    {
      goto LABEL_5;
    }
  }

  v32 = 0;
  v33 = 0xE000000000000000;
LABEL_5:
  v76 = v32;
  v77 = v33;
  sub_2C44F8();
  swift_getKeyPath();
  sub_2C44E8();

  sub_69198(v15, &qword_3C0C70);
  v52[1] = v73;
  v52[0] = v74;
  v53 = v75;
  v35 = sub_2C44C8();
  v54 = v52;
  __chkstk_darwin(v35);
  sub_6620C(&qword_3C5140);
  v55 = v13;
  v36 = v3;
  sub_6620C(&qword_3C5148);
  sub_6620C(&qword_3BF818);
  sub_72B74(&qword_3C5150, &qword_3C5140);
  sub_7212C();
  sub_1C60EC();
  sub_CEDAC();
  v37 = v60;
  v38 = v59;
  sub_2C4068();

  sub_69198(v24, &qword_3C1E38);
  v39 = v58;
  sub_2C44C8();
  v40 = v39;
  v41 = v63;
  sub_69130(v40, v63, &qword_3C1E38);
  v42 = v56(v41, 1, v37) != 1;
  sub_69198(v41, &qword_3C1E38);
  sub_2C44C8();
  v43 = v65;
  sub_69130(v24, v65, &qword_3C1E38);
  v44 = v71;
  sub_1C619C(v36, v71);
  v45 = v68;
  sub_69130(v43, v68, &qword_3C1E38);
  v46 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v47 = (v70 + *(v66 + 80) + v46) & ~*(v66 + 80);
  v48 = swift_allocObject();
  sub_1C64AC(v44, v48 + v46);
  sub_69130(v45, v48 + v47, &qword_3C1E38);
  v49 = v72;
  (*(v61 + 32))(v72, v38, v62);
  result = sub_6620C(&qword_3C5170);
  v51 = v49 + *(result + 36);
  *v51 = v42;
  *(v51 + 8) = sub_1C6510;
  *(v51 + 16) = v48;
  return result;
}

uint64_t sub_1C45C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_6620C(&qword_3C1E38);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_6932C(a1, &v9 - v5, &qword_3C1E38);
  v7 = sub_2C0368();
  LOBYTE(a1) = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  result = sub_69198(v6, &qword_3C1E38);
  *a2 = a1;
  return result;
}

_BYTE *sub_1C46B8(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    sub_69198(a2, &qword_3C1E38);
    v4 = sub_2C0368();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1C4748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v19 = a3;
  v16 = sub_2C0368();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v16);
  v6 = type metadata accessor for PageAlertViewModifier(0);
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6620C(&qword_3C52E0);
  __chkstk_darwin(v18);
  v20 = sub_2C0348();
  sub_6620C(&qword_3C52E8);
  sub_72B74(&qword_3C52F0, &qword_3C52E8);
  sub_2BFF38();
  swift_getKeyPath();
  sub_1C619C(v17, v8);
  v9 = v16;
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = (v7 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1C64AC(v8, v12 + v10);
  (*(v4 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C714C;
  *(v13 + 24) = v12;
  sub_6620C(&qword_3C5168);
  sub_72B74(&qword_3C52F8, &qword_3C52E0);
  sub_72B74(&qword_3C5160, &qword_3C5168);
  return sub_2C4558();
}

uint64_t sub_1C4AC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v46 = sub_2C0338();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v6;
  v48 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2C0368();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v8;
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageAlertViewModifier(0);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v39 = v11;
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C24B8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&unk_3C43D0);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - v18;
  v49 = sub_2C0318();
  v50 = v20;
  v44 = a1;
  v21 = sub_2C02F8();
  v47 = a4;
  v36[1] = v19;
  if (v22)
  {
    v23 = v22;
    if (v21 == sub_2C0298() && v23 == v24)
    {
    }

    else
    {
      v25 = sub_2C65B8();

      if ((v25 & 1) == 0)
      {
        sub_2C2488();
        goto LABEL_9;
      }
    }

    sub_2C24A8();
LABEL_9:
    (*(v14 + 32))(v19, v16, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    goto LABEL_10;
  }

  (*(v14 + 56))(v19, 1, 1, v13);
LABEL_10:
  sub_1C619C(v42, v12);
  v26 = v7;
  v27 = *(v7 + 16);
  v28 = v38;
  v27(v9, v43, v38);
  v29 = v40;
  v30 = v46;
  (*(v40 + 16))(v48, v44, v46);
  v31 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v32 = (v39 + *(v26 + 80) + v31) & ~*(v26 + 80);
  v33 = (v41 + *(v29 + 80) + v32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  sub_1C64AC(v12, v34 + v31);
  (*(v26 + 32))(v34 + v32, v9, v28);
  (*(v29 + 32))(v34 + v33, v48, v30);
  sub_7212C();
  return sub_2C43E8();
}

uint64_t sub_1C4F68()
{
  v0 = sub_2BFF28();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2BEBB8();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2BE888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3820();
  v9 = &unk_2E3000;
  if (v8)
  {
    v10 = v8;
    sub_2C02A8();
    sub_6620C(&unk_3C43E0);
    v11 = sub_2BE798();
    v12 = *(v11 - 8);
    v13 = *(v12 + 80);
    v29 = v2;
    v14 = (v13 + 32) & ~v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2E3F30;
    (*(v12 + 104))(v15 + v14, enum case for DataEventTrait.onlyOnce(_:), v11);
    sub_1C6EAC(&qword_3C2C38, &type metadata accessor for DialogData);
    sub_1C6EAC(&qword_3C52D8, &type metadata accessor for DialogData);
    v2 = v29;
    sub_2BEFE8();

    (*(v5 + 8))(v7, v4);
    v9 = &unk_2E3000;
  }

  v16 = v9;
  v17 = sub_1C3820();
  if (v17)
  {
    v18 = v17;
    v19 = v33;
    sub_2C02E8();
    sub_6620C(&unk_3C43E0);
    v20 = sub_2BE798();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v16[243];
    (*(v21 + 104))(v23 + v22, enum case for DataEventTrait.onlyOnce(_:), v20);
    sub_1C6EAC(&qword_3C2C30, &type metadata accessor for DialogActionData);
    sub_1C6EAC(&qword_3C5308, &type metadata accessor for DialogActionData);
    sub_2BEFE8();

    (*(v34 + 8))(v19, v2);
  }

  v24 = sub_1C3820();
  if (v24)
  {
    v25 = v24;
    sub_2BEC18();
    sub_1C6EAC(&qword_3C2C40, &type metadata accessor for DialogActionEvent);
    sub_2BF018();
  }

  sub_2C0328();
  if (v36)
  {
    sub_693D0(&v35, v37);
    sub_1C3980(&v35);
    if (v36)
    {
      sub_72084(&v35, v36);
      v26 = v30;
      sub_1C3AFC(v30);
      sub_2BFCD8();
      (*(v31 + 8))(v26, v32);
      sub_68CD0(v37);
      return sub_68CD0(&v35);
    }

    sub_68CD0(v37);
    v28 = &qword_3BC840;
  }

  else
  {
    v28 = &unk_3BDC90;
  }

  return sub_69198(&v35, v28);
}

uint64_t sub_1C55A8@<X0>(uint64_t *a1@<X8>)
{
  sub_2C0358();
  if (v2)
  {
    sub_7212C();
    result = sub_2C3A48();
    v6 = v5 & 1;
  }

  else
  {
    result = 0;
    v6 = 0;
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v2;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

id sub_1C5614(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v5 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v5 - 8);
  v57 = &v54 - v6;
  v7 = sub_2BEF28();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BE888();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C1E38);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_2C0368();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v61 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v18 - 8);
  v20 = &v54 - v19;
  v21 = sub_2C30F8();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v25 = a2 + *(type metadata accessor for PageAlertViewModifier(0) + 20);
    v26 = *v25;
    if (*(v25 + 8) == 1)
    {
      result = v26;
      if (!v26)
      {
        return result;
      }
    }

    else
    {

      sub_2C5DD8();
      v28 = sub_2C3718();
      sub_2C0058();

      sub_2C30E8();
      swift_getAtKeyPath();
      sub_9E94C(v26, 0);
      result = (*(v22 + 8))(v24, v21);
      v26 = v63;
      if (!v63)
      {
        return result;
      }
    }

    sub_2BECD8();
    v29 = sub_2BE588();
    (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
    sub_1C6EAC(&qword_3C52D0, &type metadata accessor for DialogExposureEvent);
    sub_2BEFF8();

    return sub_69198(v20, &qword_3BC418);
  }

  sub_6932C(v62, v14, &qword_3C1E38);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_69198(v14, &qword_3C1E38);
  }

  v54 = v16;
  v30 = *(v16 + 32);
  v31 = v61;
  v62 = v15;
  v30(v61, v14, v15);
  v32 = sub_1C3820();
  v33 = &unk_2E3000;
  if (v32)
  {
    v34 = v32;
    sub_2C02A8();
    sub_6620C(&unk_3C43E0);
    v35 = sub_2BE798();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2E3F30;
    (*(v36 + 104))(v38 + v37, enum case for DataEventTrait.onlyOnce(_:), v35);
    sub_1C6EAC(&qword_3C2C38, &type metadata accessor for DialogData);
    sub_1C6EAC(&qword_3C52D8, &type metadata accessor for DialogData);
    v39 = v56;
    sub_2BEFE8();

    (*(v55 + 8))(v11, v39);
    v33 = &unk_2E3000;
  }

  v40 = v33;
  v41 = sub_1C3820();
  if (v41)
  {
    v42 = v41;
    v43 = v57;
    sub_2C02B8();
    v44 = sub_2C0778();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = v58;
    LinkData.init(actionOrigin:)(v43, v58);
    sub_6620C(&unk_3C43E0);
    v46 = sub_2BE798();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v40[243];
    v50 = v49 + v48;
    v31 = v61;
    (*(v47 + 104))(v50, enum case for DataEventTrait.onlyOnce(_:), v46);
    sub_1C6EAC(&qword_3C13A0, &type metadata accessor for LinkData);
    sub_1C6EAC(&qword_3C13A8, &type metadata accessor for LinkData);
    v51 = v60;
    sub_2BEFE8();

    (*(v59 + 8))(v45, v51);
  }

  v52 = sub_1C3820();
  if (v52)
  {
    v53 = v52;
    sub_2BECD8();
    sub_1C6EAC(&qword_3C52D0, &type metadata accessor for DialogExposureEvent);
    sub_2BF018();
  }

  return (*(v54 + 8))(v31, v62);
}

uint64_t View.alert(_:)(uint64_t a1)
{
  v2 = type metadata accessor for PageAlertViewModifier(0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, v4, &qword_3C0C70);
  v5 = &v4[v2[5]];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = &v4[v2[6]];
  *v6 = swift_getKeyPath();
  v6[40] = 0;
  v7 = v2[7];
  *&v4[v7] = swift_getKeyPath();
  sub_6620C(&unk_3C4360);
  swift_storeEnumTagMultiPayload();
  sub_2C40E8();
  return sub_1C65F0(v4, type metadata accessor for PageAlertViewModifier);
}

unint64_t sub_1C60EC()
{
  result = qword_3C5158;
  if (!qword_3C5158)
  {
    sub_718D4(&qword_3C5148);
    sub_72B74(&qword_3C5160, &qword_3C5168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5158);
  }

  return result;
}

uint64_t sub_1C619C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6200()
{
  v1 = type metadata accessor for PageAlertViewModifier(0);
  v18 = *(*(v1 - 1) + 80);
  v2 = (v18 + 16) & ~v18;
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(sub_6620C(&qword_3C1E38) - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v6 = v0 + v2;

  v7 = *(sub_6620C(&qword_3C0C70) + 32);
  v8 = sub_2C0368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v11 = v3 + v5;
  sub_9E94C(*(v6 + v1[5]), *(v6 + v1[5] + 8));
  v12 = v6 + v1[6];
  if (*(v12 + 40))
  {
    if (*(v12 + 24))
    {
      sub_68CD0(v12);
    }
  }

  else
  {
  }

  v13 = v11 & ~v5;
  v14 = v1[7];
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2BFF28();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  if (!v10(v0 + v13, 1, v8))
  {
    (*(v9 + 8))(v0 + v13, v8);
  }

  return _swift_deallocObject(v0, v13 + v17, v18 | v5 | 7);
}

uint64_t sub_1C64AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1C6510(_BYTE *a1)
{
  v3 = *(type metadata accessor for PageAlertViewModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_6620C(&qword_3C1E38) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1C5614(a1, v1 + v4, v7);
}

uint64_t sub_1C65F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6680(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C1E38);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C670C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C1E38);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1C6788()
{
  sub_1C6C04(319, &unk_3C51E0, &type metadata accessor for BooksAlertAction, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C6838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C0C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_6620C(&qword_3BC7B8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3C0C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = sub_6620C(&qword_3BC7B8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1C6AC0()
{
  sub_1C6C04(319, &unk_3C5278, type metadata accessor for PageAlert, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0);
    if (v1 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3BC838, &qword_3BC840);
      if (v2 <= 0x3F)
      {
        sub_1C6C04(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C6C6C()
{
  result = qword_3C52B0;
  if (!qword_3C52B0)
  {
    sub_718D4(&qword_3C5170);
    sub_718D4(&qword_3C5140);
    sub_718D4(&qword_3C5148);
    sub_718D4(&qword_3BF818);
    sub_2C0368();
    sub_72B74(&qword_3C5150, &qword_3C5140);
    sub_7212C();
    sub_1C60EC();
    sub_CEDAC();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C52B8, &qword_3C52C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C52B0);
  }

  return result;
}

uint64_t sub_1C6E10()
{
  type metadata accessor for PageAlertViewModifier(255);
  sub_2C2A08();
  sub_1C6EAC(&qword_3C52C8, type metadata accessor for PageAlertViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1C6EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6EF4()
{
  v1 = type metadata accessor for PageAlertViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = sub_2C0368();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = *(sub_6620C(&qword_3C0C70) + 32);
  if (!(*(v5 + 48))(v0 + v3 + v9, 1, v4))
  {
    (*(v5 + 8))(v8 + v9, v4);
  }

  sub_9E94C(*(v8 + v1[5]), *(v8 + v1[5] + 8));
  v10 = v8 + v1[6];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      sub_68CD0(v10);
    }
  }

  else
  {
  }

  v11 = v1[7];
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2BFF28();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v2 | v6;
  v14 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v14, v4);

  return _swift_deallocObject(v0, v14 + v7, v13 | 7);
}

uint64_t sub_1C714C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageAlertViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2C0368() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1C4AC4(a1, v2 + v6, v9, a2);
}

uint64_t sub_1C7238()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C7270(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_6620C(&qword_3C5300);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1C72D8()
{
  v1 = type metadata accessor for PageAlertViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = sub_2C0368();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v18 = sub_2C0338();
  v6 = *(v18 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);
  v8 = v0 + ((v2 + 16) & ~v2);

  v9 = *(sub_6620C(&qword_3C0C70) + 32);
  if (!(*(v4 + 48))(v8 + v9, 1, v3))
  {
    (*(v4 + 8))(v8 + v9, v3);
  }

  sub_9E94C(*(v8 + v1[5]), *(v8 + v1[5] + 8));
  v10 = v8 + v1[6];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      sub_68CD0(v10);
    }
  }

  else
  {
  }

  v11 = v1[7];
  sub_6620C(&unk_3C4360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2BFF28();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = (((v2 + 16) & ~v2) + v19 + v5) & ~v5;
  v14 = (v13 + v16 + v7) & ~v7;
  (*(v4 + 8))(v0 + v13, v3);
  (*(v6 + 8))(v0 + v14, v18);

  return _swift_deallocObject(v0, v14 + v17, v2 | v5 | v7 | 7);
}

uint64_t sub_1C75C0()
{
  type metadata accessor for PageAlertViewModifier(0);
  sub_2C0368();
  sub_2C0338();

  return sub_1C4F68();
}

uint64_t static FlowActionDestination<>.page(intent:pageMetadata:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C0838();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_691F8(a1, v10);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for Page();
  sub_1C77F0();
  return sub_2C04C8();
}

unint64_t sub_1C77F0()
{
  result = qword_3BD4F0;
  if (!qword_3BD4F0)
  {
    type metadata accessor for Page();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD4F0);
  }

  return result;
}

uint64_t FlowActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2C0578();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_6620C(&qword_3BDAB8);

  v13 = sub_2C5738();
  v14 = sub_2C5C58();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2F2650;
  v15[5] = v12;
  v15[6] = v13;

  sub_1CDB58(0, 0, v6, &unk_2E4D80, v15);

  return v13;
}

uint64_t sub_1C7AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_2C5C18();
  v3[3] = sub_2C5C08();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_DD4E8;

  return sub_1C7D1C(a1, a2, a3);
}

uint64_t sub_1C7B74()
{
  v1 = sub_2C0578();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C7C10(uint64_t a1)
{
  v4 = *(sub_2C0578() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_1C7AAC(a1, v1 + v5, v6);
}

uint64_t sub_1C7D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[89] = a3;
  v3[88] = a2;
  v3[87] = a1;
  v4 = sub_2C04A8();
  v3[90] = v4;
  v3[91] = *(v4 - 8);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v5 = sub_2BF7B8();
  v3[94] = v5;
  v3[95] = *(v5 - 8);
  v3[96] = swift_task_alloc();
  sub_6620C(&qword_3C48E8);
  v3[97] = swift_task_alloc();
  v6 = sub_2C51D8();
  v3[98] = v6;
  v3[99] = *(v6 - 8);
  v3[100] = swift_task_alloc();
  v7 = sub_2C2338();
  v3[101] = v7;
  v3[102] = *(v7 - 8);
  v3[103] = swift_task_alloc();
  sub_6620C(&qword_3C5310);
  v3[104] = swift_task_alloc();
  v8 = sub_2C0538();
  v3[105] = v8;
  v3[106] = *(v8 - 8);
  v3[107] = swift_task_alloc();
  sub_6620C(&qword_3BCE28);
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  sub_2C5C18();
  v3[110] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v3[111] = v10;
  v3[112] = v9;

  return _swift_task_switch(sub_1C804C, v10, v9);
}

uint64_t sub_1C804C()
{
  v1 = v0[109];
  sub_2C0568();
  v2 = sub_2C0778();
  v0[113] = v2;
  v3 = *(v2 - 8);
  v0[114] = v3;
  v4 = *(v3 + 48);
  v0[115] = v4;
  v0[116] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[109];
  if (v5 == 1)
  {
    sub_69198(v0[109], &qword_3BCE28);
    v7 = 0;
  }

  else
  {
    v7 = ActionOrigin.appAnalyticsMetricsFeedOptions.getter();
    (*(v3 + 8))(v6, v2);
  }

  v0[117] = v7;
  v0[86] = v7;
  v8 = sub_6620C(&qword_3BCE30);
  v9 = swift_task_alloc();
  v0[118] = v9;
  *v9 = v0;
  v9[1] = sub_1C81E0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v8, v8);
}

uint64_t sub_1C81E0()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  v3 = *(v2 + 896);
  v4 = *(v2 + 888);
  if (v0)
  {
    v5 = sub_1CA21C;
  }

  else
  {
    v5 = sub_1C831C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C831C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_72084((v0 + 16), v1);
  if ((*(v2 + 8))(v1, v2))
  {
    v3 = 1;
  }

  else
  {
    v4 = sub_2C0478();
    v6 = v5;
    if (v4 == sub_2C5318() && v6 == v7)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_2C65B8();
    }
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  sub_72084((v0 + 16), v9);
  if ((*(v10 + 16))(v9, v10))
  {
    goto LABEL_20;
  }

  v11 = sub_2C0478();
  v13 = v12;
  if (sub_2C5318() == v11 && v14 == v13)
  {
    goto LABEL_18;
  }

  v16 = sub_2C65B8();

  if (v16)
  {
LABEL_19:

LABEL_20:
    v18 = 1;
    goto LABEL_21;
  }

  if (sub_2C5338() == v11 && v17 == v13)
  {
    goto LABEL_18;
  }

  v24 = sub_2C65B8();

  if (v24)
  {
    goto LABEL_19;
  }

  if (sub_2C52D8() == v11 && v25 == v13)
  {
    goto LABEL_18;
  }

  v26 = sub_2C65B8();

  if (v26)
  {
    goto LABEL_19;
  }

  if (sub_2C52E8() == v11 && v27 == v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  v28 = sub_2C65B8();

  if (v28)
  {
    goto LABEL_19;
  }

  if (sub_2C5348() == v11 && v29 == v13)
  {
    goto LABEL_33;
  }

  v30 = sub_2C65B8();

  if (v30)
  {
    goto LABEL_35;
  }

  if (sub_2C5328() == v11 && v33 == v13)
  {
LABEL_33:

LABEL_35:

LABEL_36:
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    sub_72084((v0 + 16), v31);
    v18 = (*(v32 + 16))(v31, v32);
    goto LABEL_21;
  }

  v34 = sub_2C65B8();

  if (v34)
  {
    goto LABEL_35;
  }

  if (sub_2C52F8() == v11 && v35 == v13)
  {
    goto LABEL_42;
  }

  v36 = sub_2C65B8();

  if (v36)
  {
    goto LABEL_48;
  }

  if (sub_2C5358() == v11 && v37 == v13)
  {
    goto LABEL_42;
  }

  v38 = sub_2C65B8();

  if (v38)
  {
    goto LABEL_48;
  }

  if (sub_2C5308() == v11 && v39 == v13)
  {
LABEL_42:

LABEL_48:

    v18 = 0;
    goto LABEL_21;
  }

  v40 = sub_2C65B8();

  v18 = 0;
  if ((v40 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  *(v0 + 1032) = v18 & 1;
  v19 = swift_task_alloc();
  *(v0 + 960) = v19;
  *v19 = v0;
  v19[1] = sub_1C874C;
  v20 = *(v0 + 936);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);

  return sub_1CA6D0(v22, v21, (v0 + 1032), v3 & 1, v20);
}

uint64_t sub_1C874C(uint64_t a1)
{
  v3 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  v4 = v3[112];
  v5 = v3[111];
  if (v1)
  {
    v6 = sub_1CA328;
  }

  else
  {
    v6 = sub_1C886C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1C886C()
{
  v1 = sub_2C0478();
  v3 = v2;
  if (sub_2C5318() == v1 && v4 == v3)
  {

LABEL_8:

    sub_2C0468();
    sub_6620C(&qword_3C48F8);
    v7 = swift_dynamicCast();
    v8 = v0[106];
    v9 = v0[105];
    v10 = v0[104];
    if (v7)
    {
      v11 = v0[107];
      v12 = v0[103];
      v13 = v0[102];
      v14 = v0[101];
      (*(v8 + 56))(v0[104], 0, 1, v0[105]);
      (*(v8 + 32))(v11, v10, v9);
      sub_2C0528();
      v15 = sub_2C2328();
      v0[123] = v15;
      (*(v13 + 8))(v12, v14);
      v0[85] = v15;
      v16 = swift_task_alloc();
      v0[124] = v16;
      *v16 = v0;
      v16[1] = sub_1C961C;
      v17 = v0[97];

      return BaseObjectGraph.injectIfAvailable<A>(_:)(v17);
    }

    v18 = v0[121];
    v19 = v0[87];

    (*(v8 + 56))(v10, 1, 1, v9);
    sub_69198(v10, &qword_3C5310);
    goto LABEL_13;
  }

  v6 = sub_2C65B8();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_2C5338() == v1 && v21 == v3)
  {

    goto LABEL_18;
  }

  v22 = sub_2C65B8();

  if (v22)
  {
LABEL_18:

    v23 = v0[121];

    if (v23)
    {
      v24 = v0[121];
      v25 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v24];
      [v25 setModalPresentationStyle:2];
      v26 = [v25 sheetPresentationController];
      if (v26)
      {
        v27 = v26;
        sub_2C5F18();
      }

      v19 = v0[87];
      v28 = v0[5];
      v29 = v0[6];
      sub_72084(v0 + 2, v28);
      (*(v29 + 72))(v25, 1, v28, v29);

      goto LABEL_29;
    }

    goto LABEL_44;
  }

  if (sub_2C5348() == v1 && v30 == v3)
  {

    goto LABEL_26;
  }

  v31 = sub_2C65B8();

  if ((v31 & 1) == 0)
  {
    if (sub_2C5328() == v1 && v40 == v3)
    {

LABEL_37:

      v42 = v0[121];

      if (!v42)
      {
        goto LABEL_44;
      }

      v33 = v0[121];
      v43 = v0[96];
      v44 = v0[95];
      v45 = v0[94];
      (*(v44 + 104))(v43, enum case for BooksUIKitFeatureFlag.fluidTransitions(_:), v45);
      v46 = sub_2BF6A8();
      (*(v44 + 8))(v43, v45);
      if ((v46 & 1) == 0)
      {
        goto LABEL_28;
      }

      v47 = sub_2C04E8();
      if (!v48)
      {
        goto LABEL_28;
      }

      v49 = v47;
      v50 = v48;
      v51 = v0[5];
      v52 = v0[6];
      sub_72084(v0 + 2, v51);
      v53 = (*(v52 + 32))(v51, v52);
      if (v53)
      {
        v54 = v53;
        objc_opt_self();
        v55 = swift_dynamicCastObjCClass();
        if (v55)
        {
          v56 = v55;
          v57 = sub_2C5888();
          v58 = [v57 tui_identiferFromString];

          v59 = [v56 descendentViewWithIdentifier:v58];
          swift_unknownObjectRelease();
          if (v59)
          {

            sub_66278(0, &qword_3C5318);
            v60 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v61 = swift_allocObject();
            v61[2] = v60;
            v61[3] = v49;
            v61[4] = v50;

            v62 = sub_2C5EF8();

            [v33 setPreferredTransition:v62];

            goto LABEL_28;
          }

          goto LABEL_67;
        }
      }

      v87 = v0[5];
      v88 = v0[6];
      sub_72084(v0 + 2, v87);
      v89 = (*(v88 + 32))(v87, v88);
      if (!v89)
      {
LABEL_68:

        goto LABEL_28;
      }

      v54 = v89;
      type metadata accessor for PageHostingController();
      v90 = swift_dynamicCastClass();
      if (!v90)
      {
LABEL_67:

        goto LABEL_68;
      }

      v91 = v90;
      v0[82] = v49;
      v0[83] = v50;
      v17 = [v90 view];
      if (v17)
      {
        v92 = v17;
        v93 = sub_2C5F68();

        if (v93)
        {

          sub_66278(0, &qword_3C5318);
          v94 = swift_allocObject();
          v94[2] = v91;
          v94[3] = v49;
          v94[4] = v50;
          v95 = v54;
          v96 = sub_2C5EF8();

          [v33 setPreferredTransition:v96];

          goto LABEL_28;
        }

        goto LABEL_67;
      }

LABEL_79:
      __break(1u);
      return BaseObjectGraph.injectIfAvailable<A>(_:)(v17);
    }

    v41 = sub_2C65B8();

    if (v41)
    {
      goto LABEL_37;
    }

    if (sub_2C52E8() == v1 && v63 == v3)
    {
    }

    else
    {
      v64 = sub_2C65B8();

      if ((v64 & 1) == 0)
      {
        v83 = v0[121];
        v19 = v0[87];

        sub_2C5358();

        goto LABEL_13;
      }
    }

    v65 = v0[121];
    if (!v65)
    {
      v19 = v0[87];

      goto LABEL_13;
    }

    sub_2C0468();
    sub_6620C(&qword_3C48F8);
    if (!swift_dynamicCast())
    {

      if (swift_dynamicCast())
      {
        (*(v0[91] + 32))(v0[92], v0[93], v0[90]);
        v84 = sub_2C0498();
        v85 = sub_1CDA28(v84);

        if (v85)
        {
          type metadata accessor for BSUINavigationControllerOptionsKey(0);
          sub_1CEB40(&qword_3BC478, type metadata accessor for BSUINavigationControllerOptionsKey);
          v86.super.isa = sub_2C57C8().super.isa;
        }

        else
        {
          v86.super.isa = 0;
        }

        v97 = [objc_allocWithZone(BSUINavigationController) initWithOptions:v86.super.isa];

        sub_6620C(&qword_3BFDD8);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_2E9480;
        *(v98 + 32) = v65;
        sub_66278(0, &qword_3BEFB0);
        v66 = v97;
        v99 = v65;
        isa = sub_2C5B18().super.isa;

        [v66 setViewControllers:isa animated:0];

        v101 = sub_2C0488();
        if ((v103 & 1) == 0)
        {
          [v66 setPreferredContentSize:{*&v101, v102}];
        }

        (*(v0[91] + 8))(v0[92], v0[90]);
      }

      else
      {
        v66 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v65];
      }

      goto LABEL_77;
    }

    v66 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v65];
    [v66 setModalPresentationStyle:2];
    v67 = v0[5];
    v68 = v0[6];
    sub_72084(v0 + 2, v67);
    v69 = (*(v68 + 32))(v67, v68);
    if (v69)
    {
      v70 = v69;
      v71 = [v69 view];

      if (!v71)
      {
        __break(1u);
        goto LABEL_79;
      }

      v72 = [v71 window];

      if (v72)
      {
        v73 = [v72 safeAreaLayoutGuide];
        [v73 layoutFrame];
        v75 = v74;
        v77 = v76;
        v79 = v78;
        v81 = v80;

        v107.origin.x = v75;
        v107.origin.y = v77;
        v107.size.width = v79;
        v107.size.height = v81;
        Height = CGRectGetHeight(v107);
        if (Height < 1024.0)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {

      v72 = 0;
    }

    Height = 1024.0;
LABEL_72:
    [v66 setPreferredContentSize:Height * 0.0625 * 9.0];

    sub_1CE550((v0 + 12));
LABEL_77:
    v19 = v0[87];
    sub_68CD0((v0 + 7));
    v104 = v0[5];
    v105 = v0[6];
    sub_72084(v0 + 2, v104);
    (*(v105 + 72))(v66, 1, v104, v105);

    goto LABEL_29;
  }

LABEL_26:

  v32 = v0[121];

  if (v32)
  {
    v33 = v0[121];
LABEL_28:
    v19 = v0[87];
    v34 = v0[5];
    v35 = v0[6];
    sub_72084(v0 + 2, v34);
    (*(v35 + 40))(v33, 1, v34, v35);

LABEL_29:
    v20 = &enum case for ActionOutcome.performed(_:);
    goto LABEL_30;
  }

LABEL_44:
  v19 = v0[87];
LABEL_13:
  v20 = &enum case for ActionOutcome.unsupported(_:);
LABEL_30:
  v36 = *v20;
  v37 = sub_2C4C08();
  (*(*(v37 - 8) + 104))(v19, v36, v37);
  sub_68CD0((v0 + 2));

  v38 = v0[1];

  return v38();
}

uint64_t sub_1C961C()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  v3 = *(v2 + 896);
  v4 = *(v2 + 888);
  if (v0)
  {
    v5 = sub_1CA43C;
  }

  else
  {
    v5 = sub_1C9758;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C9758()
{
  v41 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_69198(v3, &qword_3C48E8);
    goto LABEL_18;
  }

  v4 = *(v0 + 936);
  (*(v1 + 32))(*(v0 + 800), v3, v2);
  if (v4)
  {
    if (*(*(v0 + 984) + 16) && (v5 = sub_5D228(25705, 0xE200000000000000), (v6 & 1) != 0) && (sub_68C64(*(*(v0 + 984) + 56) + 32 * v5, v0 + 256), sub_6620C(&qword_3C4900), swift_dynamicCast()))
    {
      v7 = *(v0 + 624);
      v8 = *(v0 + 632);
    }

    else
    {
      v8 = 0;
      v7 = 0;
      *(v0 + 624) = 0;
      *(v0 + 632) = 0;
    }

    v9 = *(v0 + 920);
    v10 = *(v0 + 904);
    v11 = *(v0 + 864);
    *(v0 + 640) = v7;
    *(v0 + 648) = v8;

    sub_6620C(&qword_3BDB00);
    sub_1CEAC4();
    sub_2C61A8();
    sub_2C0568();
    if (v9(v11, 1, v10) == 1)
    {
      sub_69198(*(v0 + 864), &qword_3BCE28);
    }

    else
    {
      v12 = *(v0 + 912);
      v13 = *(v0 + 904);
      v14 = *(v0 + 864);
      v15 = sub_2C06B8();
      v17 = v16;
      (*(v12 + 8))(v14, v13);
      if (v17)
      {
        *(v0 + 608) = v15;
        *(v0 + 616) = v17;
        sub_2C61A8();
        goto LABEL_15;
      }
    }

    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
LABEL_15:
    v18 = sub_285C2C(v0 + 216, v0 + 176);
    sub_69198(v0 + 176, &qword_3BE008);
    sub_68D90(v0 + 216);

    v19 = *(v0 + 800);
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    if (v18)
    {
      v22 = sub_6620C(&qword_3BD860);
      *(v0 + 600) = v22;
      *(v0 + 576) = v18;
      sub_693CC((v0 + 576), (v0 + 288));
      v23 = *(v0 + 688);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v23;
      v25 = *(v0 + 312);
      v26 = sub_8C564(v0 + 288, v25);
      v27 = *(v25 - 8);
      v28 = swift_task_alloc();
      (*(v27 + 16))(v28, v26, v25);
      sub_1AC51C(v28, 0xD000000000000013, 0x80000000003061C0, isUniquelyReferenced_nonNull_native, &v40, v22);
      (*(v20 + 8))(v19, v21);
      sub_68CD0(v0 + 288);

      *(v0 + 688) = v40;
    }

    else
    {
      sub_24DAE8(0xD000000000000013, 0x80000000003061C0, (v0 + 320));
      sub_69198(v0 + 320, &qword_3C4908);
      (*(v20 + 8))(v19, v21);
    }

    goto LABEL_18;
  }

  (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
LABEL_18:
  v29 = *(v0 + 688);
  *(v0 + 1008) = v29;
  if (v29)
  {
    v30 = sub_6620C(&qword_3BC208);
    *(v0 + 376) = v30;
    *(v0 + 352) = v29;
    sub_693CC((v0 + 352), (v0 + 544));

    v31 = *(v0 + 680);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v31;
    v33 = *(v0 + 568);
    v34 = sub_8C564(v0 + 544, v33);
    v35 = *(v33 - 8);
    v36 = swift_task_alloc();
    (*(v35 + 16))(v36, v34, v33);
    sub_1AC51C(v36, 0xD000000000000013, 0x8000000000302260, v32, &v40, v30);
    sub_68CD0(v0 + 544);

    *(v0 + 680) = v40;
  }

  else
  {
    sub_24DAE8(0xD000000000000013, 0x8000000000302260, (v0 + 384));
    sub_69198(v0 + 384, &qword_3C4908);
  }

  v37 = sub_6620C(&qword_3C0248);
  v38 = swift_task_alloc();
  *(v0 + 1016) = v38;
  *v38 = v0;
  v38[1] = sub_1C9D48;

  return BaseObjectGraph.inject<A>(_:)(v0 + 672, v37, v37);
}

uint64_t sub_1C9D48()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  v3 = *(v2 + 896);
  v4 = *(v2 + 888);
  if (v0)
  {
    v5 = sub_1CA588;
  }

  else
  {
    v5 = sub_1C9E84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C9E84()
{
  v26 = v0;
  v1 = *(v0 + 968);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v23 = *(v0 + 856);
  v24 = *(v0 + 696);

  v4 = *(v0 + 672);
  *(v0 + 440) = swift_getObjectType();
  *(v0 + 416) = v4;
  sub_693CC((v0 + 416), (v0 + 448));
  v5 = *(v0 + 680);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v5;
  v7 = *(v0 + 472);
  v8 = sub_8C564(v0 + 448, v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  sub_1AC51C(v10, 0xD000000000000013, 0x80000000003061E0, isUniquelyReferenced_nonNull_native, &v25, v7);
  sub_68CD0(v0 + 448);

  v11 = v25;
  *(v0 + 680) = v25;
  *(v0 + 504) = &type metadata for Bool;
  *(v0 + 480) = 1;
  sub_693CC((v0 + 480), (v0 + 512));
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v11;
  v13 = sub_8C564(v0 + 512, *(v0 + 536));
  sub_1CE8E8(*v13, 0x647261436E497369, 0xE800000000000000, v12, &v25);
  sub_68CD0(v0 + 512);
  v14 = v25;
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  sub_72084((v0 + 16), v15);
  sub_6620C(&qword_3BC1F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2E3F30;
  *(v17 + 32) = sub_2936E0(v14);
  v18 = sub_6864C(_swiftEmptyArrayStorage);
  (*(v16 + 88))(v17, 0, 1, v18, v15, v16);

  (*(v2 + 8))(v23, v3);
  v19 = enum case for ActionOutcome.performed(_:);
  v20 = sub_2C4C08();
  (*(*(v20 - 8) + 104))(v24, v19, v20);

  sub_68CD0(v0 + 16);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1CA21C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA328()
{

  sub_68CD0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA43C()
{
  v1 = v0[121];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];

  (*(v3 + 8))(v2, v4);

  sub_68CD0((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CA588()
{
  v1 = v0[121];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];

  (*(v3 + 8))(v2, v4);

  sub_68CD0((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CA6D0(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5)
{
  *(v5 + 872) = a5;
  *(v5 + 1331) = a4;
  *(v5 + 864) = a2;
  *(v5 + 856) = a1;
  v7 = sub_2C4478();
  *(v5 + 880) = v7;
  *(v5 + 888) = *(v7 - 8);
  *(v5 + 896) = swift_task_alloc();
  v8 = sub_2C1A28();
  *(v5 + 904) = v8;
  *(v5 + 912) = *(v8 - 8);
  *(v5 + 920) = swift_task_alloc();
  v9 = sub_2C04A8();
  *(v5 + 928) = v9;
  *(v5 + 936) = *(v9 - 8);
  *(v5 + 944) = swift_task_alloc();
  *(v5 + 952) = swift_task_alloc();
  *(v5 + 960) = type metadata accessor for RootHostingControllerConfiguration(0);
  *(v5 + 968) = swift_task_alloc();
  *(v5 + 976) = swift_task_alloc();
  *(v5 + 984) = swift_task_alloc();
  *(v5 + 992) = swift_task_alloc();
  *(v5 + 1000) = swift_task_alloc();
  *(v5 + 1008) = sub_6620C(&qword_3BCE28);
  *(v5 + 1016) = swift_task_alloc();
  *(v5 + 1024) = swift_task_alloc();
  *(v5 + 1032) = swift_task_alloc();
  *(v5 + 1040) = swift_task_alloc();
  *(v5 + 1048) = swift_task_alloc();
  *(v5 + 1056) = swift_task_alloc();
  v10 = sub_2C0838();
  *(v5 + 1064) = v10;
  *(v5 + 1072) = *(v10 - 8);
  *(v5 + 1080) = swift_task_alloc();
  v11 = sub_6620C(&qword_3BD490);
  *(v5 + 1088) = v11;
  *(v5 + 1096) = *(v11 - 8);
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1332) = *a3;
  v12 = sub_2BF028();
  *(v5 + 1120) = v12;
  v13 = swift_task_alloc();
  *(v5 + 1128) = v13;
  *v13 = v5;
  v13[1] = sub_1CAA70;

  return BaseObjectGraph.inject<A>(_:)(v5 + 752, v12, v12);
}

uint64_t sub_1CAA70()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1CCF14;
  }

  else
  {
    v2 = sub_1CAB84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CAB84()
{
  v22 = v0;
  v1 = *(v0 + 752);
  *(v0 + 1144) = v1;
  sub_2C0468();
  sub_6620C(&qword_3C48F8);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 1096) + 32))(*(v0 + 1104), *(v0 + 1112), *(v0 + 1088));
    v2 = swift_task_alloc();
    *(v0 + 1152) = v2;
    *v2 = v0;
    v2[1] = sub_1CB0E8;
    v3 = &type metadata for FigaroPageConfiguration;
    v4 = v0 + 1330;
LABEL_3:
    v5 = &type metadata for FigaroPageConfiguration;
LABEL_12:

    return BaseObjectGraph.inject<A>(_:)(v4, v3, v5);
  }

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 872);
    (*(*(v0 + 936) + 32))(*(v0 + 944), *(v0 + 952), *(v0 + 928));
    v7 = sub_2C0498();
    *(v0 + 776) = v7;
    if (v6)
    {
      v8 = v7;
      v9 = *(v0 + 872);
      v10 = sub_6620C(&qword_3BC208);
      *(v0 + 680) = v10;
      *(v0 + 656) = v9;
      sub_693CC((v0 + 656), (v0 + 464));

      LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
      v21 = v8;
      v11 = *(v0 + 488);
      v12 = sub_8C564(v0 + 464, v11);
      v13 = *(v11 - 8);
      v14 = swift_task_alloc();
      (*(v13 + 16))(v14, v12, v11);
      sub_1AC51C(v14, 0xD000000000000013, 0x8000000000302260, v9, &v21, v10);
      sub_68CD0(v0 + 464);

      *(v0 + 776) = v21;
    }

    else
    {
      sub_24DAE8(0xD000000000000013, 0x8000000000302260, (v0 + 624));
      sub_69198(v0 + 624, &qword_3C4908);
    }

    v17 = sub_6620C(&qword_3C0248);
    v18 = swift_task_alloc();
    *(v0 + 1216) = v18;
    *v18 = v0;
    v18[1] = sub_1CB8B0;
    v4 = v0 + 808;
    v3 = v17;
    v5 = v17;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v15 = *(v0 + 200);
    *(v0 + 224) = *(v0 + 184);
    *(v0 + 240) = v15;
    *(v0 + 256) = *(v0 + 216);
    sub_691F8(v0 + 224, v0 + 264);
    sub_6620C(&qword_3C5338);
    if (swift_dynamicCast())
    {
      *(v0 + 1256) = *(v0 + 840);
      v16 = swift_task_alloc();
      *(v0 + 1264) = v16;
      *v16 = v0;
      v16[1] = sub_1CBE68;
      v3 = &type metadata for FigaroPageConfiguration;
      v4 = v0 + 1329;
      goto LABEL_3;
    }

    sub_1CE550(v0 + 224);
  }

  sub_68CD0(v0 + 144);

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_1CB0E8()
{
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v2 = sub_1CD07C;
  }

  else
  {
    v2 = sub_1CB1FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CB1FC()
{
  if (*(v0 + 1330))
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2C0558() ^ 1;
  }

  *(v0 + 1333) = v1 & 1;
  v2 = swift_task_alloc();
  *(v0 + 1168) = v2;
  *v2 = v0;
  v2[1] = sub_1CB2C8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 832, &type metadata for PageControllerFactory, &type metadata for PageControllerFactory);
}

uint64_t sub_1CB2C8()
{
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2 = sub_1CD218;
  }

  else
  {
    v2 = sub_1CB3DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CB3DC()
{
  v15 = *(v0 + 1332);
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1000);
  v13 = *(v0 + 960);
  v14 = *(v0 + 1064);
  v4 = *(v0 + 832);
  *(v0 + 1184) = v4;
  sub_2C04B8();
  sub_2C07D8();
  sub_2C07E8();
  sub_2C04D8();
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = sub_72084((v0 + 304), v5);
  *(v0 + 848) = v4;
  sub_2C0568();
  (*(v2 + 16))(&v3[*(v13 + 20)], v1, v14);
  *v3 = v15;
  v8 = swift_task_alloc();
  *(v0 + 1192) = v8;
  *v8 = v0;
  v8[1] = sub_1CB568;
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1056);
  v11 = *(v0 + 1000);

  return PageControllerFactory.create<A>(intent:parentTracker:origin:configuration:)(v7, v9, v10, v11, v5, v6);
}

uint64_t sub_1CB568(uint64_t a1)
{
  v4 = *v2;
  (*v2)[150] = v1;

  if (v1)
  {
    v5 = v4[132];
    sub_E060C(v4[125]);
    sub_69198(v5, &qword_3BCE28);
    v6 = sub_1CD3B4;
  }

  else
  {
    v7 = v4[132];
    v8 = v4[125];
    v4[151] = a1;
    sub_E060C(v8);
    sub_69198(v7, &qword_3BCE28);
    v6 = sub_1CB6D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1CB6D4()
{
  v10 = v0[151];
  v1 = v0[143];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[133];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_68CD0((v0 + 38));
  sub_68CD0((v0 + 18));

  v8 = v0[1];

  return v8(v10);
}

uint64_t sub_1CB8B0()
{
  *(*v1 + 1224) = v0;

  if (v0)
  {

    v2 = sub_1CD588;
  }

  else
  {
    v2 = sub_1CB9CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CB9CC()
{
  v16 = v0;
  v1 = *(v0 + 1331);
  v2 = *(v0 + 808);
  *(v0 + 616) = swift_getObjectType();
  *(v0 + 592) = v2;
  sub_693CC((v0 + 592), (v0 + 560));
  v3 = *(v0 + 776);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v3;
  v5 = *(v0 + 584);
  v6 = sub_8C564(v0 + 560, v5);
  v7 = *(v5 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v5);
  sub_1AC51C(v8, 0xD000000000000013, 0x80000000003061E0, isUniquelyReferenced_nonNull_native, &v15, v5);
  sub_68CD0(v0 + 560);

  v9 = v15;
  *(v0 + 776) = v15;
  *(v0 + 552) = &type metadata for Bool;
  *(v0 + 528) = v1;
  sub_693CC((v0 + 528), (v0 + 496));
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v15 = v9;
  v11 = sub_8C564(v0 + 496, *(v0 + 520));
  sub_1CE8E8(*v11, 0x647261436E497369, 0xE800000000000000, v10, &v15);
  sub_68CD0(v0 + 496);
  *(v0 + 1232) = sub_2936E0(v15);

  sub_2C5C18();
  *(v0 + 1240) = sub_2C5C08();
  v13 = sub_2C5BB8();

  return _swift_task_switch(sub_1CBBF0, v13, v12);
}

uint64_t sub_1CBBF0()
{

  v1 = objc_allocWithZone(BSUIFeedViewController);
  isa = sub_2C57C8().super.isa;

  *(v0 + 1248) = [v1 initWithOptions:isa];

  return _swift_task_switch(sub_1CBCC0, 0, 0);
}

uint64_t sub_1CBCC0()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);

  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 1248);
  sub_68CD0(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_1CBE68()
{
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v2 = sub_1CD724;
  }

  else
  {
    v2 = sub_1CBF7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CBF7C()
{
  if (*(v0 + 1329))
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2C0558() ^ 1;
  }

  *(v0 + 1334) = v1 & 1;
  sub_2C0568();
  *(v0 + 1280) = sub_2C5C18();
  *(v0 + 1288) = sub_2C5C08();
  v2 = swift_task_alloc();
  *(v0 + 1296) = v2;
  *v2 = v0;
  v2[1] = sub_1CC058;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_1CC058(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1304) = a1;
  *(v3 + 1312) = v1;

  v5 = sub_2C5BB8();
  if (v1)
  {
    v6 = sub_1CCD10;
  }

  else
  {
    v6 = sub_1CC1BC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1CC1BC()
{
  v47 = *(v0 + 1256);
  v40 = *(v0 + 1144);
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v50 = *(v0 + 1024);
  v39 = *(v0 + 1016);
  v4 = *(v0 + 992);
  v51 = *(v0 + 984);
  v49 = *(v0 + 976);
  v43 = *(v0 + 968);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v44 = *(v0 + 896);
  v45 = *(v0 + 888);
  v46 = *(v0 + 880);

  sub_6932C(v1, v2, &qword_3BCE28);
  (*(v6 + 104))(v5, enum case for NavigationBarTitleStyle.inline(_:), v7);
  sub_2C0808();
  *v4 = 1;
  v48 = v3;
  sub_6932C(v2, v3, &qword_3BCE28);
  sub_78BA4(v4, v51);
  v8 = objc_allocWithZone(type metadata accessor for YearInReviewHostingController());
  sub_6932C(v3, v50, &qword_3BCE28);
  sub_78BA4(v51, v49);
  *&v8[qword_3BCB60 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v8[qword_3BCC58];
  *v9 = 0;
  v9[8] = 1;
  v8[qword_3BCB80] = 0;
  *&v8[qword_3BCC60] = &_swiftEmptySetSingleton;
  v38 = type metadata accessor for HostProxy(0);
  swift_allocObject();

  v10 = v40;
  v11 = sub_C2644();
  v35 = qword_3BCB68;
  *&v8[qword_3BCB68] = v11;
  sub_2C09A8();
  swift_allocObject();
  v12 = sub_2C0998();
  v34 = qword_3BCC48;
  *&v8[qword_3BCC48] = v12;
  v37 = type metadata accessor for NavigationProvider();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = qword_3BCC50;
  *&v8[qword_3BCC50] = v13;
  sub_2BEED8();
  swift_allocObject();
  v14 = sub_2BEEC8();
  v33 = qword_3BCB90;
  *&v8[qword_3BCB90] = v14;
  sub_78BA4(v49, &v8[qword_3E8830]);
  sub_6620C(&qword_3BC330);
  sub_2C4968();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2E3BC0;
  sub_6932C(v50, v39, &qword_3BCE28);
  sub_2C4958();
  *(v0 + 824) = v10;
  v42 = v10;
  sub_2C4958();
  sub_2BEC48();
  swift_allocObject();
  *(v0 + 816) = sub_2BEC38();
  sub_2C4958();
  *(v0 + 1328) = sub_2C07D8() & 1;
  sub_2C4958();
  *(v0 + 800) = *&v8[v34];

  sub_2C4958();
  *(v0 + 792) = *&v8[v33];

  sub_2C4958();
  *(v0 + 784) = *&v8[v35];

  sub_2C4958();
  sub_6620C(&unk_3BFED0);
  sub_2C53F8();
  *(v0 + 736) = sub_2C53E8();
  *(v0 + 744) = &protocol witness table for BasicImpressionsTracker;
  sub_2C4958();
  sub_6620C(&qword_3BCE30);
  v15 = *&v8[v36];
  *(v0 + 368) = v37;
  *(v0 + 376) = &protocol witness table for NavigationProvider;
  *(v0 + 344) = v15;

  sub_2C4958();
  type metadata accessor for PageLifecycleHandler();
  v16 = swift_allocObject();
  type metadata accessor for Page.LifecycleInfo();
  v17 = swift_allocObject();
  *(v17 + 16) = &_swiftEmptyDictionarySingleton;
  *(v16 + 16) = v17;
  *(v0 + 768) = v16;
  sub_2C4958();
  sub_6620C(&qword_3BCE38);
  v18 = *&v8[v35];
  *(v0 + 408) = v38;
  *(v0 + 416) = sub_1CEB40(&qword_3BCE40, type metadata accessor for HostProxy);
  *(v0 + 384) = v18;

  sub_2C4958();
  sub_6620C(&qword_3BCE48);
  v19 = *&v8[v35];
  *(v0 + 448) = v38;
  *(v0 + 456) = sub_1CEB40(&unk_3BCE50, type metadata accessor for HostProxy);
  *(v0 + 424) = v19;

  sub_2C4958();
  sub_78BA4(v49, v43);
  sub_2C4958();
  *(v0 + 760) = v41;
  sub_6620C(&unk_3BD220);
  sub_8A870();
  v20 = sub_2C4DF8();

  sub_2C4468();
  sub_2C46F8();
  (*(v45 + 8))(v44, v46);
  v21 = sub_2C25E8();
  *(v0 + 80) = v20;
  *(v0 + 112) = &type metadata for YearInReviewRootView;
  v22 = sub_1CEB88();
  *(v0 + 88) = v47;
  *(v0 + 96) = v20;
  *(v0 + 104) = v21;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 120) = v22;
  sub_77E04(v0 + 80, v0 + 16);

  v23 = sub_2C3398();
  *(v0 + 1320) = v23;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_731AC();
  sub_73578();

  sub_E060C(v49);
  sub_69198(v50, &qword_3BCE28);
  sub_77C1C(v0 + 80);
  sub_E060C(v51);
  sub_69198(v48, &qword_3BCE28);
  v24 = [v23 view];
  if (v24)
  {
    v27 = v24;
    v28 = *(v0 + 1048);
    v29 = *(v0 + 1040);
    v30 = *(v0 + 992);
    sub_66278(0, &qword_3C5348);
    sub_2C1408();
    v31 = sub_2C5FD8();
    [v27 setBackgroundColor:v31];

    sub_E060C(v30);
    sub_69198(v29, &qword_3BCE28);
    sub_69198(v28, &qword_3BCE28);
    v24 = sub_1CCB7C;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_1CCB7C()
{
  v1 = *(v0 + 1144);

  sub_1CE550(v0 + 224);
  v4 = *(v0 + 1320);
  sub_68CD0(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v4);
}

uint64_t sub_1CCD10()
{
  v1 = *(v0 + 1048);

  sub_69198(v1, &qword_3BCE28);

  return _swift_task_switch(sub_1CCD94, 0, 0);
}

uint64_t sub_1CCD94()
{
  sub_1CE550(v0 + 224);
  sub_68CD0(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CCF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CD07C()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  sub_68CD0(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CD218()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  sub_68CD0(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CD3B4()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  sub_68CD0(v0 + 304);
  sub_68CD0(v0 + 144);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1CD588()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);

  (*(v2 + 8))(v1, v3);
  sub_68CD0(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CD724()
{
  sub_1CE550(v0 + 224);
  sub_68CD0(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1CD8A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sub_2C5888();
    v2 = [v1 tui_identiferFromString];

    v3 = [Strong descendentViewWithIdentifier:v2];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [v3 window];
      if (v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v3;
      }

      if (v4)
      {
        Strong = v3;
      }

      else
      {
        Strong = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return Strong;
}

id sub_1CD990(int a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 view];
  if (result)
  {
    v5 = result;
    v6 = sub_2C5F68();

    v7 = [v6 window];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (!v7)
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CDA28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_6620C(&qword_3C5328);
    result = sub_2C63C8();
  }

  else
  {
    result = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  if ((v5 & v4) != 0)
  {

    v7 = __clz(__rbit64(v6));
LABEL_12:
    v12 = *(a1 + 56);
    v13 = (*(a1 + 48) + 16 * v7);
    v15 = *v13;
    v14 = v13[1];
    sub_68C64(v12 + 32 * v7, &v17);
    v16[0] = v15;
    v16[1] = v14;

    sub_69198(v16, &qword_3C5330);
    return 0;
  }

  else
  {
    v8 = ((v3 + 63) >> 6) - 1;
    v9 = (a1 + 72);
    while (v8)
    {
      v11 = *v9++;
      v10 = v11;
      --v8;
      v6 -= 64;
      if (v11)
      {

        v7 = __clz(__rbit64(v10)) - v6;
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1CDB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_6932C(a3, v23 - v10, &unk_3BDBB0);
  v12 = sub_2C5C58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_69198(v11, &unk_3BDBB0);
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

  sub_2C5C48();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2C5BB8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2C5938() + 32;
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

    sub_69198(a3, &unk_3BDBB0);

    return v21;
  }

LABEL_8:
  sub_69198(a3, &unk_3BDBB0);
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

uint64_t sub_1CDE54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CDF4C;

  return v6(a1);
}

uint64_t sub_1CDF4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CE044(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2C4C08();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1CE1A4;

  return v12(v9);
}

uint64_t sub_1CE1A4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1CE348;
  }

  else
  {
    v2 = sub_1CE2B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CE2B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2C5718();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CE348()
{
  sub_2C5708();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CE3C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1CE460()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CE498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_88BE0;

  return sub_1CDE54(a1, v4);
}

uint64_t sub_1CE5A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1CE5F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1CE628()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1CE674(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2C50A8();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1CE7D4;

  return v12(v9);
}

uint64_t sub_1CE7D4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1CEBDC;
  }

  else
  {
    v2 = sub_1CEBE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

_OWORD *sub_1CE8E8(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v23) = a1;
  v24 = &type metadata for Bool;
  v9 = *a5;
  v11 = sub_5D228(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_68CD0(v18);
      return sub_693CC(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_64184();
    goto LABEL_7;
  }

  sub_6086C(v14, a4 & 1);
  v20 = sub_5D228(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_8C564(&v23, &type metadata for Bool);
  sub_1CEA40(v11, a2, a3, *v22, v17);

  return sub_68CD0(&v23);
}

_OWORD *sub_1CEA40(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_693CC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1CEAC4()
{
  result = qword_3C5320;
  if (!qword_3C5320)
  {
    sub_718D4(&qword_3BDB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5320);
  }

  return result;
}

uint64_t sub_1CEB40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CEB88()
{
  result = qword_3C5340;
  if (!qword_3C5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5340);
  }

  return result;
}

void sub_1CEBE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall BATracker.privateContentData(_:completion:)(JSValue _, JSValue completion)
{
  v3 = [(objc_class *)_.super.isa toString];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2C58C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2].super.isa = v8;
  v9[3].super.isa = completion.super.isa;
  v9[4].super.isa = v5;
  v9[5].super.isa = v7;

  v10 = completion.super.isa;
  sub_2BEFB8();
}

uint64_t sub_1CED64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1CED9C(uint64_t a1, objc_class *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((sub_2C5F78() & 1) == 0)
    {
      if (a4)
      {
        v18._countAndFlagsBits = a3;
        v18._object = a4;
        v9 = sub_2BEFA8(v18);
        if (v10)
        {
          sub_1B6334(v9, v10, 0xD000000000000010, 0x80000000003068C0);
        }

        v19._countAndFlagsBits = a3;
        v19._object = a4;
        v11 = sub_2BEF98(v19);
        if (v12)
        {
          sub_1B6334(v11, v12, 0x55746E65746E6F63, 0xED00004449726573);
        }
      }

      v13 = [objc_opt_self() sharedInstance];
      sub_6620C(&qword_3BC308);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2E3F30;
      *(v14 + 56) = sub_6620C(&qword_3BD8A8);
      *(v14 + 32) = &_swiftEmptyDictionarySingleton;
      v17.is_nil = 111;
      v20._countAndFlagsBits = 0x8000000000306850;
      v15.super.isa = a2;
      v17.value._rawValue = v14;
      v20._object = &stru_20 + 2;
      sub_2C6078(v15, v17, v20, v16);
    }
  }
}

void sub_1CEF50(id a1, SEL a2, id a3, id a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  BATracker.privateContentData(_:completion:)(v6, v7);
}

JSValue __swiftcall BATracker.privateContentData(_:)(JSValue a1)
{
  v3 = [(objc_class *)a1.super.isa context];
  v4 = swift_allocObject();
  v4[2].super.isa = v1;
  v4[3].super.isa = a1.super.isa;
  v10[4] = sub_1CF2A0;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1CEBE8;
  v10[3] = &unk_3912F0;
  v5 = _Block_copy(v10);
  v6 = v1;
  v7 = a1.super.isa;

  v8 = [objc_opt_self() valueWithNewPromiseInContext:v3 fromExecutor:v5];
  _Block_release(v5);

  if (v8)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_1CF0F0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v13 = a1;
    if ([v13 isObject])
    {
      v5 = [a4 toString];
      if (v5)
      {
        v6 = v5;
        v7 = sub_2C58C8();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v13;
      v11[4] = v7;
      v11[5] = v9;
      v12 = v13;

      sub_2BEFB8();
    }

    else
    {
    }
  }
}

uint64_t sub_1CF260()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CF2A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CF2C0(id a1, SEL a2, id a3)
{
  v4 = a3;
  v5 = a1;
  v6.super.isa = BATracker.privateContentData(_:)(v4).super.isa;

  return v6.super.isa;
}

uint64_t sub_1CF320()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1CF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2C1A28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1CF458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2C1A28();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor()
{
  result = qword_3C53A8;
  if (!qword_3C53A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF560()
{
  result = sub_2C1A28();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HostProxy(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1CF5F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*v0)
    {
      v3 = 1;
    }

    else
    {
      v4 = sub_2C1A18();
      v3 = sub_166BF0(v4);
    }

    [v2 bsui_configureHideSmallTitleOnScroll:v3 & 1];
  }
}

uint64_t MenuLikeStateController.init(authStatusProvider:authServiceProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_68D1C(a1, a3);

  return sub_68D1C(a2, a3 + 40);
}

uint64_t sub_1CF6DC()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3C53E8);
  sub_57AD8(v0, qword_3C53E8);
  return sub_2C00A8();
}

uint64_t sub_1CF780(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CF81C;

  return AccountController.signIn(enableAccountCreation:)(a1);
}

uint64_t sub_1CF81C(char a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v10 = *(v13 + 8);
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1 & 1;
    v8 = a2;
    v9 = a3;
  }

  return v10(v11, v8, v9);
}

uint64_t MenuLikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 56) = a4;
  *(v6 + 120) = a1;
  return _swift_task_switch(sub_1CF964, 0, 0);
}

uint64_t sub_1CF964()
{
  v1 = *(v0 + 72);
  v2 = v1[3];
  v3 = v1[4];
  sub_72084(v1, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 120);
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    *(v7 + 25) = 2;
    *(v7 + 32) = v4;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    type metadata accessor for ContentTasteType(0);
    *v8 = v0;
    v8[1] = sub_1CFCF4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D25D0, v7, v9);
  }

  else
  {
    v10 = *(v0 + 72);
    v11 = v10[8];
    v12 = v10[9];
    sub_72084(v10 + 5, v11);
    v15 = (*(v12 + 8) + **(v12 + 8));
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_1CFBB4;

    return v15(0, v11, v12);
  }
}

uint64_t sub_1CFBB4(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1D00CC;
  }

  else
  {

    *(v4 + 121) = a1 & 1;
    v5 = sub_1CFE90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1CFCF4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1CFE2C;
  }

  else
  {

    v2 = sub_1CFE10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CFE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFE90()
{
  if (*(v0 + 121) == 1)
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v3 = *(v0 + 120);
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    *(v4 + 25) = 2;
    *(v4 + 32) = v1;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    type metadata accessor for ContentTasteType(0);
    *v5 = v0;
    v5[1] = sub_1CFCF4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D25D0, v4, v6);
  }

  else
  {
    if (qword_3BB908 != -1)
    {
      swift_once();
    }

    v7 = sub_2C00B8();
    sub_57AD8(v7, qword_3C53E8);
    v8 = sub_2C0098();
    v9 = sub_2C5DC8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Unable to submit dislike state because account sign in failed", v10, 2u);
    }

    sub_1D257C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D00CC()
{
  v12 = v0;
  if (qword_3BB908 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C53E8);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_2C66B8();
    v8 = sub_5CCF4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "error trying to authenticate with error : %s", v4, 0xCu);
    sub_68CD0(v5);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t MenuLikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a3;
  return _swift_task_switch(sub_1D02A4, 0, 0);
}

uint64_t sub_1D02A4()
{
  v1 = v0[9];
  v2 = v1[3];
  v3 = v1[4];
  sub_72084(v1, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = 258;
    *(v6 + 32) = v4;
    v7 = swift_task_alloc();
    v0[13] = v7;
    type metadata accessor for ContentTasteType(0);
    *v7 = v0;
    v7[1] = sub_1D062C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D3070, v6, v8);
  }

  else
  {
    v9 = v0[9];
    v10 = v9[8];
    v11 = v9[9];
    sub_72084(v9 + 5, v10);
    v14 = (*(v11 + 8) + **(v11 + 8));
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_1D04EC;

    return v14(0, v10, v11);
  }
}

uint64_t sub_1D04EC(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1D00CC;
  }

  else
  {

    *(v4 + 120) = a1 & 1;
    v5 = sub_1D0748;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1D062C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1CFE2C;
  }

  else
  {

    v2 = sub_7E77C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1D0748()
{
  if (*(v0 + 120) == 1)
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = 258;
    *(v3 + 32) = v1;
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    type metadata accessor for ContentTasteType(0);
    *v4 = v0;
    v4[1] = sub_1D062C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD00000000000004CLL, 0x8000000000306AC0, sub_1D3070, v3, v5);
  }

  else
  {
    if (qword_3BB908 != -1)
    {
      swift_once();
    }

    v6 = sub_2C00B8();
    sub_57AD8(v6, qword_3C53E8);
    v7 = sub_2C0098();
    v8 = sub_2C5DC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Unable to submit dislike state because account sign in failed", v9, 2u);
    }

    sub_1D257C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D097C(uint64_t a1, uint64_t a2, char a3, int a4, void *a5)
{
  v25 = a4;
  v9 = sub_6620C(&qword_3C5410);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24[-v12];
  v14 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v24[-v15];
  v17 = sub_2C5C58();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_691F8(a2, v26);
  (*(v10 + 16))(v13, a1, v9);
  sub_2C5C18();
  v18 = a5;
  v19 = sub_2C5C08();
  v20 = (*(v10 + 80) + 74) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_68D1C(v26, v22 + 32);
  *(v22 + 72) = a3;
  *(v22 + 73) = v25;
  (*(v10 + 32))(v22 + v20, v13, v9);
  *(v22 + v21) = a5;
  sub_249B98(0, 0, v16, &unk_2F29D8, v22);
}

uint64_t sub_1D0BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 296) = a7;
  *(v8 + 304) = a8;
  *(v8 + 282) = a6;
  *(v8 + 281) = a5;
  *(v8 + 288) = a4;
  sub_2C5C18();
  *(v8 + 312) = sub_2C5C08();
  v10 = sub_2C5BB8();
  *(v8 + 320) = v10;
  *(v8 + 328) = v9;

  return _swift_task_switch(sub_1D0C6C, v10, v9);
}

uint64_t sub_1D0C6C()
{
  v1 = v0[36];
  v2 = v1[3];
  v3 = v1[4];
  sub_72084(v1, v2);
  v4 = (*(v3 + 288))(v2, v3);
  v0[42] = v4;
  v0[43] = v5;
  if (v5)
  {
    v6 = objc_opt_self();
    v0[44] = v6;
    v7 = [v6 sharedController];
    v0[45] = v7;
    v8 = sub_2C5888();
    v0[46] = v8;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1D0E10;
    v9 = swift_continuation_init();
    v0[33] = sub_6620C(&qword_3C5418);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1D1A24;
    v0[29] = &unk_3914B0;
    v0[30] = v9;
    [v7 fetchTasteTypeForStoreID:v8 completion:v0 + 26];
    v4 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v4);
}

uint64_t sub_1D0E10()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_1D0F18, v2, v1);
}

uint64_t sub_1D0F18()
{
  v1 = v0 + 272;
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 281);
  v5 = *(v0 + 272);
  *(v0 + 376) = v5;

  if (v4 == 2)
  {
    *(v0 + 283) = 1;
    *(v0 + 408) = v5;
    v6 = *(v0 + 282);
    if (v6 == 2)
    {

      if (*(v0 + 283) == 1)
      {
        v7 = *(v0 + 304);
        if (v7 && (v8 = *(v0 + 408), v9 = *(v0 + 344), *(v0 + 376) != v8))
        {
          v20 = *(v0 + 336);
          sub_691F8(*(v0 + 288), v0 + 208);
          v21 = swift_allocObject();
          v21[2] = v20;
          v21[3] = v9;
          sub_68D1C((v0 + 208), (v21 + 4));
          v21[9] = v7;
          v21[10] = v8;
          v22 = v7;
          sub_2BEF88();
        }

        else
        {
        }

        *(v0 + 208) = *(v0 + 408);
        sub_6620C(&qword_3C5410);
        sub_2C5BD8();
      }

      else
      {

        sub_1D257C();
        v15 = swift_allocError();
        *v16 = 1;
        *(v0 + 208) = v15;
        sub_6620C(&qword_3C5410);
        sub_2C5BC8();
      }

      goto LABEL_27;
    }

    v11 = [*(v0 + 352) sharedController];
    *(v0 + 416) = v11;
    v12 = sub_2C5888();
    *(v0 + 424) = v12;
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = sub_1D1778;
    v13 = swift_continuation_init();
    *(v0 + 264) = sub_6620C(&qword_3BE890);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_B2618;
    *(v0 + 232) = &unk_391500;
    *(v0 + 240) = v13;
    [v11 setExplicitlyDeclined:v6 & 1 forStoreID:v12 completion:v0 + 208];
    v14 = v0 + 80;
  }

  else
  {
    if (v5 == 2)
    {
      v10 = *(v0 + 281) & 1;
    }

    else if (v5 == 1)
    {
      if (*(v0 + 281))
      {
        v10 = 0;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      if (v5)
      {

LABEL_27:
        v23 = *(v0 + 8);

        return v23();
      }

      if (*(v0 + 281))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    *(v0 + 384) = v10;
    v17 = [*(v0 + 352) sharedController];
    *(v0 + 392) = v17;
    v18 = sub_2C5888();
    *(v0 + 400) = v18;
    *(v0 + 144) = v0;
    *(v0 + 184) = v1;
    *(v0 + 152) = sub_1D1378;
    v19 = swift_continuation_init();
    *(v0 + 264) = sub_6620C(&qword_3BE890);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_B2618;
    *(v0 + 232) = &unk_391528;
    *(v0 + 240) = v19;
    [v17 setTasteType:v10 forStoreID:v18 completion:v0 + 208];
    v14 = v0 + 144;
  }

  return _swift_continuation_await(v14);
}

uint64_t sub_1D1378()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_1D1480, v2, v1);
}

uint64_t sub_1D1480()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 272);

  v3 = *(v0 + 384);
  *(v0 + 283) = v2;
  *(v0 + 408) = v3;
  v4 = *(v0 + 282);
  if (v4 == 2)
  {

    if (*(v0 + 283) == 1)
    {
      v5 = *(v0 + 304);
      if (v5 && (v6 = *(v0 + 408), v7 = *(v0 + 344), *(v0 + 376) != v6))
      {
        v13 = *(v0 + 336);
        sub_691F8(*(v0 + 288), v0 + 208);
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = v7;
        sub_68D1C((v0 + 208), (v14 + 4));
        v14[9] = v5;
        v14[10] = v6;
        v15 = v5;
        sub_2BEF88();
      }

      else
      {
      }

      *(v0 + 208) = *(v0 + 408);
      sub_6620C(&qword_3C5410);
      sub_2C5BD8();
    }

    else
    {

      sub_1D257C();
      v11 = swift_allocError();
      *v12 = 1;
      *(v0 + 208) = v11;
      sub_6620C(&qword_3C5410);
      sub_2C5BC8();
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v8 = [*(v0 + 352) sharedController];
    *(v0 + 416) = v8;
    v9 = sub_2C5888();
    *(v0 + 424) = v9;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 272;
    *(v0 + 88) = sub_1D1778;
    v10 = swift_continuation_init();
    *(v0 + 264) = sub_6620C(&qword_3BE890);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_B2618;
    *(v0 + 232) = &unk_391500;
    *(v0 + 240) = v10;
    [v8 setExplicitlyDeclined:v4 & 1 forStoreID:v9 completion:v0 + 208];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_1D1778()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_1D1880, v2, v1);
}

uint64_t sub_1D1880()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);

  if (*(v0 + 283) == 1)
  {
    v3 = *(v0 + 304);
    if (v3 && (v4 = *(v0 + 408), v5 = *(v0 + 344), *(v0 + 376) != v4))
    {
      v8 = *(v0 + 336);
      sub_691F8(*(v0 + 288), v0 + 208);
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = v5;
      sub_68D1C((v0 + 208), (v9 + 4));
      v9[9] = v3;
      v9[10] = v4;
      v10 = v3;
      sub_2BEF88();
    }

    else
    {
    }

    *(v0 + 208) = *(v0 + 408);
    sub_6620C(&qword_3C5410);
    sub_2C5BD8();
  }

  else
  {

    sub_1D257C();
    v6 = swift_allocError();
    *v7 = 1;
    *(v0 + 208) = v6;
    sub_6620C(&qword_3C5410);
    sub_2C5BC8();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D1A24(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *sub_72084((a1 + 32), *(a1 + 56));
  v6 = *(*(v5 + 64) + 40);
  *v6 = a2;
  *(v6 + 8) = a3;

  return _swift_continuation_resume(v5);
}

uint64_t sub_1D1A88(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5, uint64_t a6)
{
  v88 = a6;
  v89 = a1;
  v84 = a5;
  v79 = a3;
  v91 = a2;
  v7 = sub_6620C(&qword_3C5420);
  __chkstk_darwin(v7 - 8);
  v82 = &v73[-v8];
  v9 = sub_6620C(&qword_3C5428);
  __chkstk_darwin(v9 - 8);
  v80 = &v73[-v10];
  v11 = sub_6620C(&qword_3C5430);
  __chkstk_darwin(v11 - 8);
  v90 = &v73[-v12];
  v13 = sub_6620C(&qword_3C5438);
  __chkstk_darwin(v13 - 8);
  v15 = &v73[-v14];
  v16 = sub_6620C(&qword_3C5440);
  __chkstk_darwin(v16 - 8);
  v18 = &v73[-v17];
  v19 = sub_2BE988();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v73[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_2BE968();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v73[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_2BF558();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v73[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v25 + 104))(v28, enum case for BooksFeatureFlag.unifiedProductPage(_:), v24, v26);
  sub_1D3020(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
  sub_1D2FBC();
  v74 = sub_2C5A78();
  (*(v25 + 8))(v28, v24);
  v29 = a4[3];
  v30 = a4[4];
  sub_72084(a4, v29);
  v31 = (*(v30 + 16))(v29, v30);
  v32 = *(v20 + 104);
  v33 = &enum case for ContentType.audiobook(_:);
  if (v31 != 3)
  {
    v33 = &enum case for ContentType.book(_:);
  }

  v34 = *v33;
  v81 = v22;
  v32(v22, v34, v19);
  v35 = v91;
  v93._countAndFlagsBits = v91;
  v36 = v79;
  v93._object = v79;
  v37 = sub_2BEFA8(v93);
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v77 = v40;
  v78 = v39;
  v94._countAndFlagsBits = v35;
  v94._object = v36;
  v41 = sub_2BEF98(v94);
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  v76 = v43;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  v75 = v44;
  v45 = enum case for ContentAcquisitionType.storeBought(_:);
  v46 = sub_2BED78();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v18, v45, v46);
  v48 = *(v47 + 56);
  v83 = v18;
  v48(v18, 0, 1, v46);
  v49 = sub_2BEB18();
  v50 = *(*(v49 - 8) + 56);
  v84 = v15;
  v50(v15, 1, 1, v49);
  v51 = a4[3];
  v52 = a4[4];
  sub_72084(a4, v51);
  (*(v52 + 304))(v51, v52);
  sub_2C6098();
  sub_2BEAD8();
  v53 = sub_2BEAC8();
  sub_2BEAB8();

  v54 = enum case for ProductionType.unknown(_:);
  v55 = sub_2BEB38();
  v56 = *(v55 - 8);
  v57 = v80;
  (*(v56 + 104))(v80, v54, v55);
  (*(v56 + 56))(v57, 0, 1, v55);
  v58 = sub_2BF0E8();
  (*(*(v58 - 8) + 56))();
  if (v74)
  {
    v59 = a4[3];
    v60 = a4[4];
    sub_72084(a4, v59);
    (*(v60 + 296))(v59, v60);
    v61 = a4[3];
    v62 = a4[4];
    sub_72084(a4, v61);
    (*(v62 + 56))(v61, v62);
  }

  LOBYTE(v92[0]) = 1;
  v63 = v86;
  sub_2BE938();
  sub_6620C(&unk_3C43E0);
  v64 = sub_2BE798();
  v65 = *(v64 - 8);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2E3F30;
  (*(v65 + 104))(v67 + v66, enum case for DataEventTrait.onlyOnce(_:), v64);
  sub_1D3020(&qword_3BF460, &type metadata accessor for ContentData);
  v68 = v87;
  sub_2BE768();

  v69 = (v85 + 8);
  if (v88 == 1)
  {
    sub_2BF0D8();
    v70 = &unk_3C5450;
    v71 = &type metadata accessor for LoveEvent;
  }

  else
  {
    sub_2BEA48();
    v70 = &unk_3C5448;
    v71 = &type metadata accessor for DislikeEvent;
  }

  sub_1D3020(v70, v71);
  memset(v92, 0, 32);
  sub_2BE778();
  sub_7A844(v92);
  return (*v69)(v63, v68);
}

uint64_t sub_1D242C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_B5FE4;

  return MenuLikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(a1, v10, v11, a4, a5);
}

uint64_t sub_1D24D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_7100C;

  return MenuLikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(v7, v8, a3, a4);
}

unint64_t sub_1D257C()
{
  result = qword_3C5400;
  if (!qword_3C5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5400);
  }

  return result;
}

uint64_t dispatch thunk of LikeStateController.authAndsubmitLikeState(liked:context:data:assetInfo:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D273C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1D273C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of LikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_7100C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AuthenticationServiceProvider.signIn(enableAccountCreation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2ABC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D2ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

__n128 sub_1D2BD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D2BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D2C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2CAC()
{
  result = qword_3C5408;
  if (!qword_3C5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5408);
  }

  return result;
}

uint64_t sub_1D2D00()
{
  v1 = sub_6620C(&qword_3C5410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 74) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_68CD0(v0 + 32);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D2DEC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_6620C(&qword_3C5410) - 8);
  v6 = (*(v5 + 80) + 74) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v1 + 73);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_7100C;

  return sub_1D0BC8(a1, v7, v8, v1 + 32, v11, v10, v1 + v6, v9);
}

uint64_t sub_1D2F64()
{

  sub_68CD0(v0 + 32);

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1D2FBC()
{
  result = qword_3BD680;
  if (!qword_3BD680)
  {
    sub_718D4(&qword_3BD688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD680);
  }

  return result;
}

uint64_t sub_1D3020(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D3080()
{
  v0 = UIFontDescriptorSystemDesignSerif;
  v1 = UIFontTextStyleTitle2;
  *&v4 = UIFontDescriptorSystemDesignSerif;
  *(&v4 + 1) = UIFontWeightBold;
  LOBYTE(v5) = 0;
  *(&v5 + 1) = UIFontTextStyleTitle2;
  *&v6 = 0;
  BYTE8(v6) = 1;
  LOWORD(v7) = 0;
  LOBYTE(v8) = 1;
  v2 = TextAttributesBuilder.build()();
  v9[2] = v6;
  v9[3] = 0uLL;
  v9[4] = v7;
  v9[5] = v8;
  v9[0] = v4;
  v9[1] = v5;
  sub_FED60(v9);
  return v2;
}

void *sub_1D3154()
{
  *&v2 = 0;
  *(&v2 + 1) = UIFontWeightBold;
  LOBYTE(v3) = 0;
  *&v4 = 0;
  BYTE8(v4) = 1;
  LOWORD(v5) = 0;
  LOBYTE(v6) = 1;
  *(&v6 + 1) = sub_1D3080();
  v0 = TextAttributesBuilder.build()();
  v7[2] = v4;
  v7[3] = 0uLL;
  v7[4] = v5;
  v7[5] = v6;
  v7[0] = v2;
  v7[1] = v3;
  sub_FED60(v7);
  return v0;
}

void *sub_1D3204(double a1)
{
  v2 = UIFontDescriptorSystemDesignDefault;
  v3 = UIFontTextStyleSubheadline;
  *&v6 = UIFontDescriptorSystemDesignDefault;
  *(&v6 + 1) = a1;
  LOBYTE(v7) = 0;
  *(&v7 + 1) = UIFontTextStyleSubheadline;
  *&v8 = 0;
  BYTE8(v8) = 1;
  LOWORD(v9) = 0;
  LOBYTE(v10) = 1;
  v4 = TextAttributesBuilder.build()();
  v11[2] = v8;
  v11[3] = 0uLL;
  v11[4] = v9;
  v11[5] = v10;
  v11[0] = v6;
  v11[1] = v7;
  sub_FED60(v11);
  return v4;
}

void *_s11BookStoreUI21ToolKitTextAttributesV13toolbarHeader4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(void *a1)
{
  LOBYTE(v14[0]) = 1;
  LOBYTE(v8) = 1;
  v2 = UIFontDescriptorSystemDesignSerif;
  v15 = 0;
  v3 = UIFontTextStyleTitle0;
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    v4 = UIContentSizeCategoryAccessibilityMedium;
    v5 = UIContentSizeCategoryAccessibilityMedium;
  }

  else
  {
    v4 = 0;
  }

  *&v9 = v2;
  *(&v9 + 1) = UIFontWeightBold;
  LOBYTE(v10) = 0;
  *(&v10 + 1) = v3;
  *&v11 = 0;
  BYTE8(v11) = 1;
  LOWORD(v12) = 0;
  LOBYTE(v13) = 1;
  v6 = TextAttributesBuilder.build()();
  v14[2] = v11;
  v14[3] = v4;
  v14[4] = v12;
  v14[5] = v13;
  v14[0] = v9;
  v14[1] = v10;
  sub_FED60(v14);
  return v6;
}

void sub_1D33EC(void **a1)
{
  v2 = *(type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_111AB8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D7024(v5);
  *a1 = v3;
}

void *sub_1D3494(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C5650);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v20 = &v19 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = *(sub_2BF168() - 8);
  v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v14 = _swiftEmptyArrayStorage;
  v19 = v13;
  do
  {
    sub_1D3778(v12, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_69198(v4, &qword_3C5650);
    }

    else
    {
      v15 = v20;
      sub_1D98F4(v4, v20, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      sub_1D98F4(v15, v21, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_5C4A0(0, v14[2] + 1, 1, v14);
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_5C4A0(v16 > 1, v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      sub_1D98F4(v21, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v13 = v19;
    }

    v12 += v13;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_1D3778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_2BF168();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BF138();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_2BE588();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2BF158();
  sub_1D3CAC(v16, v17, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_69198(v11, &qword_3BC418);
    if (qword_3BB848 != -1)
    {
      swift_once();
    }

    v18 = sub_2C00B8();
    sub_57AD8(v18, qword_3C3170);
    v20 = v40;
    v19 = v41;
    v21 = v42;
    (*(v41 + 16))(v40, a1, v42);
    v22 = sub_2C0098();
    v23 = sub_2C5DC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = v25;
      *v24 = 136315138;
      v26 = sub_2BF158();
      v27 = v20;
      v29 = v28;
      (*(v19 + 8))(v27, v21);
      v30 = sub_5CCF4(v26, v29, &v44);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_0, v22, v23, "Error creating dayEntry. Unable to make date from string '%s'", v24, 0xCu);
      sub_68CD0(v25);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    v37 = v43;
    v38 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
    return (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    v42 = *(v13 + 32);
    v42(v15, v11, v12);
    sub_2BF148();
    v41 = sub_2BF118();
    v31 = *(v6 + 8);
    v31(v8, v5);
    sub_2BF148();
    v40 = sub_2BF128();
    v31(v8, v5);
    sub_2BF148();
    v32 = sub_2BF108();
    v31(v8, v5);
    v33 = v43;
    v42(v43, v15, v12);
    v34 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
    v35 = v40;
    *(v33 + v34[5]) = v41;
    *(v33 + v34[6]) = v35;
    *(v33 + v34[7]) = v32 & 1;
    return (*(*(v34 - 1) + 56))(v33, 0, 1, v34);
  }
}

uint64_t sub_1D3CAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_3BB910 != -1)
  {
    swift_once();
  }

  v6 = qword_3C5458;
  v7 = sub_2C5888();
  v8 = [v6 dateFromString:v7];

  if (v8)
  {
    sub_2BE538();

    v9 = 0;
  }

  else
  {
    if (qword_3BB848 != -1)
    {
      swift_once();
    }

    v10 = sub_2C00B8();
    sub_57AD8(v10, qword_3C3170);

    v11 = sub_2C0098();
    v12 = sub_2C5DC8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_5CCF4(a1, a2, &v18);
      _os_log_impl(&dword_0, v11, v12, "Error creating date from string: %s", v13, 0xCu);
      sub_68CD0(v14);
    }

    v9 = 1;
  }

  v15 = sub_2BE588();
  v16 = *(*(v15 - 8) + 56);

  return v16(a3, v9, 1, v15);
}

void *sub_1D3ED8()
{
  v0 = sub_6620C(&qword_3C5628);
  __chkstk_darwin(v0 - 8);
  v2 = &v25 - v1;
  v3 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v27 = &v25 - v7;

  v9 = sub_1D9428(v8);

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v28 = v4;
  v15 = (v4 + 48);
  v16 = v9;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v29 = v3;
  for (i = v16; v13; v16 = i)
  {
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v31[0] = *(*(v16 + 56) + ((v17 << 9) | (8 * v20)));
      sub_1D484C(v31, v2);
      if ((*v15)(v2, 1, v3) != 1)
      {
        break;
      }

      sub_69198(v2, &qword_3C5628);
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v21 = v27;
    sub_1D98F4(v2, v27, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    sub_1D98F4(v21, v30, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_5C4C8(0, v18[2] + 1, 1, v18);
    }

    v23 = v18[2];
    v22 = v18[3];
    if (v23 >= v22 >> 1)
    {
      v18 = sub_5C4C8(v22 > 1, v23 + 1, 1, v18);
    }

    v18[2] = v23 + 1;
    sub_1D98F4(v30, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v3 = v29;
  }

LABEL_6:
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      v31[0] = v18;

      sub_1D33EC(v31);

      return v31[0];
    }

    v13 = *(v10 + 8 * v19);
    ++v17;
    if (v13)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D4244@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v50 = sub_2BE588();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v47 = sub_2BE698();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE298();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE608();
  sub_6620C(&qword_3C5630);
  v11 = sub_2BE678();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2E15C0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, enum case for Calendar.Component.year(_:), v11);
  v18 = v16 + v13;
  v19 = v46;
  v17(v18, enum case for Calendar.Component.month(_:), v11);
  sub_1D9108(v15);
  swift_setDeallocating();
  v20 = v10;
  v21 = v50;
  v22 = v51;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2BE618();

  v23 = *(v5 + 8);
  v24 = v47;
  v23(v7, v47);
  sub_2BE608();
  sub_2BE638();
  v23(v7, v24);
  if ((*(v19 + 48))(v4, 1, v21) == 1)
  {
    v25 = v48;
    v26 = v49;
    sub_69198(v4, &qword_3BC418);
    if (qword_3BB848 != -1)
    {
      swift_once();
    }

    v27 = sub_2C00B8();
    sub_57AD8(v27, qword_3C3170);
    v28 = v45;
    (*(v19 + 16))(v45, v22, v21);
    v29 = sub_2C0098();
    v30 = sub_2C5DC8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v20;
      v33 = v32;
      v53 = v32;
      *v31 = 136315138;
      sub_1D995C(&qword_3C5620, &type metadata accessor for Date);
      v34 = sub_2C6568();
      v35 = v28;
      v36 = v34;
      v38 = v37;
      (*(v19 + 8))(v35, v21);
      v39 = sub_5CCF4(v36, v38, &v53);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_0, v29, v30, "Error getting first day of month for date: %s", v31, 0xCu);
      sub_68CD0(v33);

      (*(v25 + 8))(v51, v26);
    }

    else
    {

      (*(v19 + 8))(v28, v21);
      (*(v25 + 8))(v20, v26);
    }

    v41 = 1;
    v42 = v52;
  }

  else
  {
    (*(v48 + 8))(v20, v49);
    v40 = v52;
    (*(v19 + 32))(v52, v4, v21);
    v41 = 0;
    v42 = v40;
  }

  return (*(v19 + 56))(v42, v41, 1, v21);
}

uint64_t sub_1D484C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2BE588();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_2BE228();
  v17 = __chkstk_darwin(v13);
  v18 = *a1;
  v19 = *(v18 + 16);
  if (v19)
  {
    v42 = v16;
    v43 = v14;
    v44 = a2;
    v46 = v4;
    v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    a2 = *(v5 + 72);
    v45 = v20 + a2 * (v19 - 1);
    v21 = *(v8 + 16);
    v22 = v49;
    v21(v12, v20, v49, v17);
    (v21)(v48, v45, v22);
    v23 = v47;
    sub_2BE1F8();
    v24 = 0;
    v25 = *(v46 + 20);
    while (1)
    {
      sub_1D982C(v20, v7, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v26 = *&v7[v25];
      sub_1D9894(v7, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v27 = __OFADD__(v24, v26);
      v24 += v26;
      if (v27)
      {
        break;
      }

      v20 += a2;
      if (!--v19)
      {
        v28 = v44;
        *v44 = v24;
        v29 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
        (*(v42 + 32))(&v28[*(v29 + 20)], v23, v43);
        return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_3BB848 != -1)
  {
LABEL_11:
    swift_once();
  }

  v31 = sub_2C00B8();
  sub_57AD8(v31, qword_3C3170);

  v32 = sub_2C0098();
  v33 = sub_2C5DC8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50 = v35;
    *v34 = 136315138;
    v36 = sub_2C5B38();
    v38 = a2;
    v39 = sub_5CCF4(v36, v37, &v50);

    *(v34 + 4) = v39;
    a2 = v38;
    _os_log_impl(&dword_0, v32, v33, "Error getting first or last entry from entries: %s", v34, 0xCu);
    sub_68CD0(v35);
  }

  v40 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  return (*(*(v40 - 8) + 56))(a2, 1, 1, v40);
}

BOOL sub_1D4CF0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v27 = a1;
  v30 = sub_2BE588();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BE678();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2BE698();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE608();
  v26 = enum case for Calendar.Component.month(_:);
  v25 = *(v6 + 104);
  v25(v8);
  v24 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  sub_2BE208();
  v27 = sub_2BE688();
  v12 = *(v2 + 8);
  v22 = v2 + 8;
  v23 = v12;
  v12(v4, v30);
  v13 = *(v6 + 8);
  v20 = v5;
  v21 = v6 + 8;
  v14 = v5;
  v13(v8, v5);
  v15 = *(v9 + 8);
  v16 = v28;
  v15(v11, v28);
  sub_2BE608();
  (v25)(v8, v26, v14);
  sub_2BE208();
  v17 = sub_2BE688();
  v23(v4, v30);
  v13(v8, v20);
  v15(v11, v16);
  return v27 < v17;
}

uint64_t sub_1D5008()
{
  sub_2C61F8(53);
  v5._countAndFlagsBits = 0x203A65746164;
  v5._object = 0xE600000000000000;
  sub_2C5978(v5);
  sub_2BE588();
  sub_1D995C(&qword_3C5620, &type metadata accessor for Date);
  v6._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v6);

  v7._object = 0x8000000000306BD0;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_2C5978(v7);
  v1 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v8._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v8);

  v9._countAndFlagsBits = 0x3A6C616F67202D20;
  v9._object = 0xE900000000000020;
  sub_2C5978(v9);
  v10._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v10);

  v11._countAndFlagsBits = 0x6165727453736920;
  v11._object = 0xEE00203A7961446BLL;
  sub_2C5978(v11);
  if (*(v0 + *(v1 + 28)))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_2C5978(v2);

  return 0;
}

uint64_t sub_1D5208()
{
  v22 = sub_2BE588();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2BE678();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2BE698();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_2C61F8(49);

  v25 = 0x203A72616579;
  v26 = 0xE600000000000000;
  sub_2BE608();
  v20 = *(v4 + 104);
  v20(v6, enum case for Calendar.Component.year(_:), v3);
  v23 = *(type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0) + 20);
  sub_2BE208();
  v10 = sub_2BE688();
  v11 = *(v0 + 8);
  v17[2] = v0 + 8;
  v18 = v11;
  v11(v2, v22);
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v7 + 8);
  v17[1] = v7 + 8;
  v13(v9, v21);
  v24 = v10;
  v27._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v27);

  v28._countAndFlagsBits = 0x203A68746E6F6D20;
  v28._object = 0xE800000000000000;
  sub_2C5978(v28);
  sub_2BE608();
  v20(v6, enum case for Calendar.Component.month(_:), v3);
  v14 = v19;
  sub_2BE208();
  v15 = sub_2BE688();
  v18(v2, v22);
  v12(v6, v3);
  v13(v9, v21);
  v24 = v15;
  v29._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v29);

  v30._object = 0x8000000000306BB0;
  v30._countAndFlagsBits = 0xD000000000000013;
  sub_2C5978(v30);
  v24 = *v14;
  v31._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v31);

  v32._countAndFlagsBits = 0x203A65676E617220;
  v32._object = 0xE800000000000000;
  sub_2C5978(v32);
  sub_2BE228();
  sub_1D995C(&qword_3C5618, &type metadata accessor for DateInterval);
  v33._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v33);

  return v25;
}

uint64_t ReadingInsightsDataProvider.MonthTotal.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2BE588();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingInsightsDataProvider.MonthTotal.description.getter()
{
  v0 = sub_2BE478();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2BE4B8();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2BE498();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BE4D8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_2C61F8(18);

  v36 = 0x203A65746164;
  v37 = 0xE600000000000000;
  sub_2BE198();
  sub_2BE488();
  sub_2BE448();
  (*(v5 + 8))(v7, v28);
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_2BE4A8();
  sub_2BE458();
  (*(v29 + 8))(v4, v30);
  v21(v14, v8);
  v22 = v31;
  sub_2BE468();
  sub_2BE438();
  (*(v32 + 8))(v22, v33);
  v21(v17, v8);
  sub_1D995C(&qword_3BE900, &type metadata accessor for Date.FormatStyle);
  v23 = v34;
  sub_2BE568();
  v21(v20, v8);
  sub_2C5978(v35);

  v38._countAndFlagsBits = 0x203A65756C617620;
  v38._object = 0xE800000000000000;
  sub_2C5978(v38);
  sub_6620C(&qword_3BE868);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2E3F30;
  v25 = *(v23 + *(type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0) + 20));
  *(v24 + 56) = &type metadata for Double;
  *(v24 + 64) = &protocol witness table for Double;
  *(v24 + 32) = v25;
  v39._countAndFlagsBits = sub_2C58E8();
  sub_2C5978(v39);

  return v36;
}

BOOL static ReadingInsightsDataProvider.MonthTotal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2BE528() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1D5CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BE588();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2BE588();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DB8()
{
  result = sub_2BE588();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2BE228();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D5ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2BE228();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D5F68()
{
  result = sub_2BE228();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BE588();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D60D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2BE588();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D61B0()
{
  result = sub_2BE588();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6230@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_2BE228();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v76 = &v67 - v7;
  v8 = sub_2BE588();
  v82 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v87 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v86 = &v67 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v67 - v14;
  __chkstk_darwin(v13);
  v16 = &v67 - v15;
  v17 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v81 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6620C(&qword_3BE6D8);
  v21 = __chkstk_darwin(v20 - 8);
  v75 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v85 = &v67 - v24;
  v25 = __chkstk_darwin(v23);
  v84 = &v67 - v26;
  v27 = __chkstk_darwin(v25);
  v83 = &v67 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v67 - v30;
  __chkstk_darwin(v29);
  v33 = &v67 - v32;
  v34 = *v2;
  v90 = v4;
  v36 = v4 + 56;
  v35 = *(v4 + 7);
  v35(&v67 - v32, 1, 1, v3);
  v89 = v31;
  v37 = v31;
  v38 = v33;
  v92 = v35;
  v93 = v36;
  v35(v37, 1, 1, v3);
  v39 = *(v34 + 16);
  if (v39)
  {
    v40 = v34 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v91 = (v90 + 48);
    v41 = *(v81 + 72);
    v78 = (v82 + 16);
    v69 = (v82 + 32);
    v73 = (v90 + 32);
    v72 = (v90 + 8);
    v77 = (v82 + 8);
    v81 = v17;
    v82 = v3;
    v74 = v8;
    v79 = v41;
    v80 = v38;
    v88 = v19;
    v71 = v16;
    do
    {
      sub_1D982C(v40, v19, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      if (v19[*(v17 + 28)] == 1)
      {
        v90 = *v91;
        v42 = (v90)(v38, 1, v3);
        v43 = v78;
        if (v42)
        {
          v44 = *v78;
          v19 = v88;
          (*v78)(v16, v88, v8);
        }

        else
        {
          v45 = v70;
          sub_2BE208();
          (*v69)(v16, v45, v8);
          v44 = *v43;
          v19 = v88;
        }

        v44(v86, v16, v8);
        v46 = v16;
        v47 = v8;
        v44(v87, v19, v8);
        v48 = v83;
        sub_2BE1F8();
        v3 = v82;
        v92(v48, 0, 1, v82);
        sub_1D99A4(v48, v38);
        v49 = v84;
        sub_1D9A14(v38, v84);
        v50 = v85;
        sub_1D9A14(v89, v85);
        v51 = v90;
        if ((v90)(v50, 1, v3) == 1)
        {
          sub_69198(v49, &qword_3BE6D8);
          (*v77)(v46, v47);
          sub_1D9894(v19, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
          sub_69198(v50, &qword_3BE6D8);
          v8 = v47;
          v16 = v46;
          v38 = v80;
          v17 = v81;
          v41 = v79;
        }

        else
        {
          v53 = v50;
          v54 = *v73;
          v55 = v49;
          v56 = v76;
          (*v73)(v76, v53, v3);
          v57 = v75;
          sub_1D9A14(v55, v75);
          if (v51(v57, 1, v3) == 1)
          {
            (*v72)(v56, v3);
            sub_69198(v55, &qword_3BE6D8);
            v58 = v57;
            v16 = v71;
            v8 = v74;
            (*v77)(v71, v74);
            v19 = v88;
            sub_1D9894(v88, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
            sub_69198(v58, &qword_3BE6D8);
            v38 = v80;
            v17 = v81;
            v41 = v79;
            goto LABEL_4;
          }

          v59 = v56;
          v60 = v68;
          v54(v68, v57, v3);
          sub_2BE218();
          v62 = v61;
          sub_2BE218();
          v64 = v63;
          v65 = *v72;
          (*v72)(v60, v3);
          v65(v59, v3);
          sub_69198(v55, &qword_3BE6D8);
          v16 = v71;
          v8 = v74;
          (*v77)(v71, v74);
          v19 = v88;
          sub_1D9894(v88, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
          v38 = v80;
          v17 = v81;
          v41 = v79;
          if (v64 > v62)
          {
            goto LABEL_4;
          }
        }

        v52 = v89;
        sub_69198(v89, &qword_3BE6D8);
        sub_1D9A14(v38, v52);
      }

      else
      {
        sub_1D9894(v19, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
        sub_69198(v38, &qword_3BE6D8);
        v92(v38, 1, 1, v3);
      }

LABEL_4:
      v40 += v41;
      --v39;
    }

    while (v39);
  }

  sub_69130(v89, v67, &qword_3BE6D8);
  return sub_69198(v38, &qword_3BE6D8);
}

uint64_t sub_1D6B0C()
{
  v1 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v8 = &v19 - v7;
  v9 = *v0;
  v10 = *(*v0 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = &_swiftEmptyArrayStorage;
    v20 = v5;
    v21 = v1;
    while (v11 < *(v9 + 16))
    {
      v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v14 = *(v2 + 72);
      sub_1D982C(v9 + v13 + v14 * v11, v8, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      if (v8[*(v1 + 28)] == 1)
      {
        sub_1D98F4(v8, v5, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_6471C(0, v12[2] + 1, 1);
          v12 = v22;
        }

        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          sub_6471C(v16 > 1, v17 + 1, 1);
          v12 = v22;
        }

        v12[2] = v17 + 1;
        v5 = v20;
        result = sub_1D98F4(v20, v12 + v13 + v17 * v14, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
        v1 = v21;
      }

      else
      {
        result = sub_1D9894(v8, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      }

      if (v10 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_13:
    v18 = v12[2];

    return v18;
  }

  return result;
}

void *sub_1D6D4C()
{
  v18 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 8);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return &_swiftEmptyArrayStorage;
  }

  v10 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  v12 = &_swiftEmptyArrayStorage;
  do
  {
    sub_1D982C(v10, v7, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v13 = *v7;
    sub_2BE208();
    sub_1D9894(v7, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    *&v3[*(v18 + 20)] = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_5BE1C(0, v12[2] + 1, 1, v12);
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_5BE1C(v14 > 1, v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    sub_1D98F4(v3, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v15, type metadata accessor for ReadingInsightsDataProvider.MonthTotal);
    v10 += v11;
    --v9;
  }

  while (v9);
  return v12;
}

void sub_1D6FB0()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = sub_2C5888();
  [v0 setDateFormat:v1];

  qword_3C5458 = v0;
}

void sub_1D7024(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2C6548(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
        v6 = sub_2C5B68();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D7728(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7150(0, v2, 1, a1);
  }
}

void sub_1D7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = a1;
  v68 = sub_2BE588();
  v7 = *(v68 - 8);
  __chkstk_darwin(v68);
  v53 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_2BE678();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_2BE698();
  v11 = *(v67 - 8);
  __chkstk_darwin(v67);
  v50 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  __chkstk_darwin(v13);
  v45 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v66 = &v36[-v16];
  __chkstk_darwin(v17);
  v65 = &v36[-v19];
  v38 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v63 = enum case for Calendar.Component.month(_:);
    v48 = (v7 + 8);
    v49 = (v9 + 104);
    v47 = (v9 + 8);
    v46 = (v11 + 8);
    v22 = v20 + v21 * (a3 - 1);
    v43 = -v21;
    v23 = v62 - a3;
    v44 = v20;
    v37 = v21;
    v24 = v20 + v21 * a3;
    v64 = v13;
    v25 = v50;
LABEL_5:
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v54 = v23;
    v41 = v22;
    while (1)
    {
      v61 = v22;
      v62 = v24;
      v60 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
      sub_1D982C(v24, v65, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      sub_1D982C(v22, v66, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      sub_2BE608();
      v58 = *v49;
      v27 = v51;
      v26 = v52;
      v58(v51, v63, v52);
      v28 = v53;
      sub_2BE208();
      v59 = sub_2BE688();
      v57 = *v48;
      v57(v28, v68);
      v56 = *v47;
      v56(v27, v26);
      v55 = *v46;
      v55(v25, v67);
      sub_2BE608();
      v58(v27, v63, v26);
      v29 = v66;
      sub_2BE208();
      v30 = sub_2BE688();
      v57(v28, v68);
      v56(v27, v26);
      v31 = v62;
      v55(v25, v67);
      v32 = v60;
      v33 = v61;
      sub_1D9894(v29, v60);
      sub_1D9894(v65, v32);
      if (v59 >= v30)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = v41 + v37;
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v34 = v45;
      sub_1D98F4(v31, v45, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D98F4(v34, v33, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      v22 = v33 + v43;
      v24 = v31 + v43;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D7728(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v168 = sub_2BE588();
  v8 = *(v168 - 8);
  __chkstk_darwin(v168);
  v153 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2BE678();
  v10 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2BE698();
  v12 = *(v167 - 8);
  __chkstk_darwin(v167);
  v150 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  v14 = *(v154 - 8);
  __chkstk_darwin(v154);
  v127 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v145 = &v126 - v17;
  __chkstk_darwin(v18);
  v166 = &v126 - v19;
  __chkstk_darwin(v20);
  v165 = &v126 - v21;
  __chkstk_darwin(v22);
  v129 = &v126 - v23;
  __chkstk_darwin(v24);
  v128 = &v126 - v25;
  v26 = *(a3 + 8);
  v137 = a3;
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_97:
    v8 = *v133;
    if (!*v133)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_99;
  }

  v27 = 0;
  v164 = enum case for Calendar.Component.month(_:);
  v148 = (v8 + 8);
  v149 = (v10 + 104);
  v147 = (v10 + 8);
  v146 = (v12 + 8);
  v28 = _swiftEmptyArrayStorage;
  v141 = v14;
  v132 = a4;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    v134 = v27;
    if (v27 + 1 >= v26)
    {
      v40 = v27 + 1;
      v56 = v133;
    }

    else
    {
      v142 = v26;
      v31 = v27;
      v32 = *a3;
      v33 = *(v14 + 72);
      v34 = *a3 + v33 * v30;
      v35 = v128;
      sub_1D982C(v34, v128, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      v36 = v129;
      sub_1D982C(v32 + v33 * v31, v129, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      LODWORD(v143) = sub_1D4CF0(v35, v36);
      if (v5)
      {
        sub_1D9894(v36, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_1D9894(v35, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        goto LABEL_110;
      }

      v130 = v28;
      v131 = 0;
      v8 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
      sub_1D9894(v36, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      sub_1D9894(v35, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
      v37 = (v31 + 2);
      v38 = (v32 + v33 * (v31 + 2));
      v39 = v33;
      v144 = v33;
      while (1)
      {
        v40 = v142;
        if (v142 == v37)
        {
          break;
        }

        v160 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
        v161 = v37;
        v163 = v38;
        sub_1D982C(v38, v165, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_1D982C(v34, v166, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        v162 = v34;
        v41 = v150;
        sub_2BE608();
        v158 = *v149;
        v43 = v151;
        v42 = v152;
        (v158)(v151, v164, v152);
        v28 = v153;
        sub_2BE208();
        v159 = sub_2BE688();
        v157 = *v148;
        (v157)(v28, v168);
        v156 = *v147;
        v156(v43, v42);
        v155 = *v146;
        (v155)(v41, v167);
        sub_2BE608();
        (v158)(v43, v164, v42);
        v44 = v166;
        sub_2BE208();
        v45 = sub_2BE688();
        (v157)(v28, v168);
        v156(v43, v42);
        v46 = v41;
        v47 = v162;
        (v155)(v46, v167);
        v48 = v44;
        v8 = v160;
        sub_1D9894(v48, v160);
        sub_1D9894(v165, v8);
        v39 = v144;
        v37 = v161 + 1;
        v38 = (v163 + v144);
        v34 = v47 + v144;
        if (((v143 ^ (v159 >= v45)) & 1) == 0)
        {
          v40 = v161;
          break;
        }
      }

      a4 = v132;
      v5 = v131;
      v14 = v141;
      a3 = v137;
      v29 = v134;
      if ((v143 & 1) == 0)
      {
        goto LABEL_24;
      }

      v49 = v127;
      if (v40 < v134)
      {
        goto LABEL_131;
      }

      if (v134 < v40)
      {
        v50 = v39 * (v40 - 1);
        v51 = v40 * v39;
        v142 = v40;
        v52 = v40;
        v53 = v134;
        v54 = v134 * v39;
        v28 = v130;
        do
        {
          if (v53 != --v52)
          {
            v55 = *v137;
            if (!*v137)
            {
              goto LABEL_135;
            }

            v8 = v55 + v54;
            sub_1D98F4(v55 + v54, v49, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            if (v54 < v50 || v8 >= v55 + v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D98F4(v49, v55 + v50, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            v39 = v144;
          }

          ++v53;
          v50 -= v39;
          v51 -= v39;
          v54 += v39;
        }

        while (v53 < v52);
        v5 = v131;
        v14 = v141;
        v56 = v133;
        a4 = v132;
        a3 = v137;
        v29 = v134;
        v40 = v142;
      }

      else
      {
LABEL_24:
        v56 = v133;
        v28 = v130;
      }
    }

    v57 = *(a3 + 8);
    if (v40 < v57)
    {
      if (__OFSUB__(v40, v29))
      {
        goto LABEL_128;
      }

      if (v40 - v29 < a4)
      {
        if (__OFADD__(v29, a4))
        {
          goto LABEL_129;
        }

        if (v29 + a4 >= v57)
        {
          v58 = *(a3 + 8);
        }

        else
        {
          v58 = v29 + a4;
        }

        if (v58 < v29)
        {
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          v28 = sub_111978(v28);
LABEL_99:
          v169 = v28;
          v121 = *(v28 + 16);
          if (v121 >= 2)
          {
            do
            {
              v122 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v123 = *(v28 + 16 * v121);
              a3 = v28;
              v124 = *(v28 + 16 * (v121 - 1) + 32);
              v28 = *(v28 + 16 * (v121 - 1) + 40);
              sub_1D86A8(v122 + *(v14 + 72) * v123, v122 + *(v14 + 72) * v124, (v122 + *(v14 + 72) * v28), v8);
              if (v5)
              {
                break;
              }

              if (v28 < v123)
              {
                goto LABEL_125;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a3 = sub_111978(a3);
              }

              if (v121 - 2 >= *(a3 + 16))
              {
                goto LABEL_126;
              }

              v125 = (a3 + 16 * v121);
              *v125 = v123;
              v125[1] = v28;
              v169 = a3;
              sub_1118EC(v121 - 1);
              v28 = v169;
              v121 = *(v169 + 16);
              a3 = v137;
            }

            while (v121 > 1);
          }

LABEL_110:

          return;
        }

        if (v40 != v58)
        {
          break;
        }
      }
    }

    v27 = v40;
    if (v40 < v29)
    {
      goto LABEL_127;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_5BFE4(0, *(v28 + 16) + 1, 1, v28);
    }

    v8 = *(v28 + 16);
    v59 = *(v28 + 24);
    v60 = v8 + 1;
    if (v8 >= v59 >> 1)
    {
      v28 = sub_5BFE4((v59 > 1), v8 + 1, 1, v28);
    }

    *(v28 + 16) = v60;
    v61 = v28 + 16 * v8;
    *(v61 + 32) = v134;
    *(v61 + 40) = v27;
    if (!*v56)
    {
      goto LABEL_137;
    }

    if (v8)
    {
      v14 = *v56;
      while (1)
      {
        v62 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v28 + 32);
          v64 = *(v28 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_56:
          if (v66)
          {
            goto LABEL_116;
          }

          v79 = (v28 + 16 * v60);
          v81 = *v79;
          v80 = v79[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_119;
          }

          v85 = (v28 + 32 + 16 * v62);
          v87 = *v85;
          v86 = v85[1];
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_123;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v60 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v89 = (v28 + 16 * v60);
        v91 = *v89;
        v90 = v89[1];
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_70:
        if (v84)
        {
          goto LABEL_118;
        }

        v92 = v28 + 16 * v62;
        v94 = *(v92 + 32);
        v93 = *(v92 + 40);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_121;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_77:
        v8 = v62 - 1;
        if (v62 - 1 >= v60)
        {
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
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v100 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v101 = a3;
        v102 = *(v28 + 32 + 16 * v8);
        a3 = *(v28 + 32 + 16 * v62 + 8);
        sub_1D86A8(v100 + *(v141 + 72) * v102, v100 + *(v141 + 72) * *(v28 + 32 + 16 * v62), (v100 + *(v141 + 72) * a3), v14);
        if (v5)
        {
          goto LABEL_110;
        }

        if (a3 < v102)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_111978(v28);
        }

        if (v8 >= *(v28 + 16))
        {
          goto LABEL_113;
        }

        v103 = v28 + 16 * v8;
        *(v103 + 32) = v102;
        *(v103 + 40) = a3;
        v169 = v28;
        sub_1118EC(v62);
        v28 = v169;
        v60 = *(v169 + 16);
        a3 = v101;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = v28 + 32 + 16 * v60;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_114;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_115;
      }

      v74 = (v28 + 16 * v60);
      v76 = *v74;
      v75 = v74[1];
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_117;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_120;
      }

      if (v78 >= v70)
      {
        v96 = (v28 + 32 + 16 * v62);
        v98 = *v96;
        v97 = v96[1];
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_124;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v26 = *(a3 + 8);
    a4 = v132;
    v14 = v141;
    if (v27 >= v26)
    {
      goto LABEL_97;
    }
  }

  v130 = v28;
  v131 = v5;
  v104 = *a3;
  v105 = *(v14 + 72);
  v106 = *a3 + v105 * (v40 - 1);
  v143 = -v105;
  v107 = (v29 - v40);
  v144 = v104;
  v135 = v105;
  v8 = v104 + v40 * v105;
  v136 = v58;
LABEL_88:
  v142 = v40;
  v138 = v8;
  v139 = v107;
  v108 = v107;
  v140 = v106;
  while (1)
  {
    v156 = v8;
    v157 = v108;
    v163 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
    sub_1D982C(v8, v165, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v155 = v106;
    sub_1D982C(v106, v166, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v109 = v150;
    sub_2BE608();
    v161 = *v149;
    v110 = v151;
    v111 = v152;
    (v161)(v151, v164, v152);
    v112 = v153;
    sub_2BE208();
    v162 = sub_2BE688();
    v14 = v148;
    v160 = *v148;
    (v160)(v112, v168);
    v159 = *v147;
    v159(v110, v111);
    v158 = *v146;
    (v158)(v109, v167);
    sub_2BE608();
    (v161)(v110, v164, v111);
    v113 = v166;
    sub_2BE208();
    v114 = sub_2BE688();
    (v160)(v112, v168);
    v159(v110, v111);
    (v158)(v109, v167);
    v115 = v163;
    sub_1D9894(v113, v163);
    sub_1D9894(v165, v115);
    if (v162 >= v114)
    {
LABEL_87:
      v40 = v142 + 1;
      v106 = v140 + v135;
      v107 = (v139 - 1);
      v8 = v138 + v135;
      v27 = v136;
      if (v142 + 1 != v136)
      {
        goto LABEL_88;
      }

      v5 = v131;
      a3 = v137;
      v56 = v133;
      v28 = v130;
      if (v136 < v134)
      {
        goto LABEL_127;
      }

      goto LABEL_36;
    }

    v116 = v157;
    if (!v144)
    {
      break;
    }

    v117 = v156;
    v118 = v145;
    sub_1D98F4(v156, v145, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v119 = v155;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D98F4(v118, v119, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
    v106 = v119 + v143;
    v8 = v117 + v143;
    v120 = __CFADD__(v116, 1);
    v108 = (v116 + 1);
    if (v120)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void sub_1D86A8(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t a1), unint64_t a4)
{
  v82 = sub_2BE588();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2BE678();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2BE698();
  v12 = *(v81 - 8);
  __chkstk_darwin(v81);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry(0);
  __chkstk_darwin(v83);
  v80 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v52 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v19 = a3 - a2;
  if ((a3 - a2) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_63;
  }

  v20 = (a2 - a1) / v18;
  v86 = a1;
  v85 = a4;
  if (v20 >= v19 / v18)
  {
    v78 = v8;
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      v23 = v12;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v23 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v37 = a4 + v22;
    if (v22 >= 1)
    {
      v38 = -v18;
      v58 = (v10 + 104);
      v74 = enum case for Calendar.Component.month(_:);
      v57 = (v78 + 8);
      v56 = (v10 + 8);
      v55 = (v23 + 8);
      v39 = v37;
      v76 = a4;
      v77 = a1;
      v59 = -v18;
      v40 = v56;
      while (2)
      {
        while (1)
        {
          v53 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v78 = v42;
          v60 = v41;
          while (1)
          {
            if (v41 <= a1)
            {
              v86 = v41;
              v84 = v53;
              goto LABEL_60;
            }

            v54 = v37;
            v75 = (a3 + v38);
            v72 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
            v61 = (v39 + v38);
            v73 = a3;
            sub_1D982C(v39 + v38, v79, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            sub_1D982C(v42, v80, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
            v43 = v64;
            sub_2BE608();
            v69 = *v58;
            v44 = v65;
            v45 = v66;
            (v69)(v65, v74, v66);
            v71 = v39;
            v46 = v67;
            sub_2BE208();
            v70 = sub_2BE688();
            v68 = *v57;
            v68(v46, v82);
            v63 = *v40;
            v63(v44, v45);
            v62 = *v55;
            v62(v43, v81);
            sub_2BE608();
            (v69)(v44, v74, v45);
            v47 = v80;
            sub_2BE208();
            v48 = sub_2BE688();
            v68(v46, v82);
            v63(v44, v45);
            v62(v43, v81);
            v49 = v72;
            sub_1D9894(v47, v72);
            sub_1D9894(v79, v49);
            if (v70 < v48)
            {
              break;
            }

            v50 = v61;
            v37 = v61;
            a3 = v75;
            if (v73 < v71 || v75 >= v71)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v77;
              v42 = v78;
              v38 = v59;
            }

            else
            {
              a1 = v77;
              v42 = v78;
              v38 = v59;
              if (v73 != v71)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v37;
            v41 = v60;
            if (v50 <= v76)
            {
              a2 = v60;
              goto LABEL_59;
            }
          }

          v39 = v71;
          a3 = v75;
          v51 = v76;
          if (v73 < v60 || v75 >= v60)
          {
            break;
          }

          a1 = v77;
          a2 = v78;
          v37 = v54;
          v38 = v59;
          if (v73 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v51)
          {
            goto LABEL_59;
          }
        }

        a2 = v78;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v77;
        v37 = v54;
        v38 = v59;
        if (v39 > v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v86 = a2;
    v84 = v37;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = (a4 + v21);
    v84 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v74 = enum case for Calendar.Component.month(_:);
      v61 = (v10 + 104);
      v60 = (v8 + 8);
      v59 = v10 + 8;
      v58 = (v12 + 8);
      v75 = a3;
      v62 = v18;
      v25 = v64;
      do
      {
        v76 = a4;
        v77 = a1;
        v73 = type metadata accessor for ReadingInsightsDataProvider.MonthEntry;
        v78 = a2;
        sub_1D982C(a2, v79, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_1D982C(a4, v80, type metadata accessor for ReadingInsightsDataProvider.MonthEntry);
        sub_2BE608();
        v71 = *v61;
        v27 = v65;
        v26 = v66;
        (v71)(v65, v74, v66);
        v28 = v67;
        sub_2BE208();
        v72 = sub_2BE688();
        v70 = *v60;
        v70(v28, v82);
        v69 = *v59;
        v69(v27, v26);
        v68 = *v58;
        v68(v25, v81);
        sub_2BE608();
        (v71)(v27, v74, v26);
        v29 = v80;
        sub_2BE208();
        v30 = sub_2BE688();
        v70(v28, v82);
        v69(v27, v26);
        v68(v25, v81);
        v31 = v29;
        v32 = v73;
        sub_1D9894(v31, v73);
        sub_1D9894(v79, v32);
        if (v72 >= v30)
        {
          v34 = v77;
          a2 = v78;
          v33 = v62;
          a4 = v62 + v76;
          if (v77 < v76 || v77 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v75;
          }

          else
          {
            v36 = v75;
            if (v77 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v85 = a4;
        }

        else
        {
          v33 = v62;
          v34 = v77;
          v35 = v62 + v78;
          a4 = v76;
          if (v77 < v78 || v77 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            v36 = v75;
          }

          else
          {
            v36 = v75;
            if (v77 != v78)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        a1 = v33 + v34;
        v86 = a1;
      }

      while (a4 < v63 && a2 < v36);
    }
  }

LABEL_60:
  sub_1119A4(&v86, &v85, &v84);
}

void *sub_1D9108(uint64_t a1)
{
  v2 = sub_2BE678();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_6620C(&qword_3C5638);
    v9 = sub_2C61D8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D995C(&qword_3C5640, &type metadata accessor for Calendar.Component);
      v16 = sub_2C5828();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D995C(&qword_3C5648, &type metadata accessor for Calendar.Component);
          v23 = sub_2C5878();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1D9428(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BC418);
  v44 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v39 - v3;
  v5 = type metadata accessor for ReadingInsightsDataProvider.DayEntry(0) - 8;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = &_swiftEmptyDictionarySingleton;
  v47 = &_swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v39 = v2;
  v41 = *(v9 + 80);
  v14 = *(v9 + 72);
  v46 = (v41 + 32) & ~v41;
  v15 = a1 + v46;
  v40 = xmmword_2E3F30;
  v42 = v4;
  v43 = v7;
  v45 = v14;
  while (1)
  {
    sub_1D982C(v15, v11, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
    sub_1D4244(v4);
    v19 = sub_5D508(v4);
    v20 = v12[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v12[3] < v22)
    {
      sub_60304(v22, 1);
      v12 = v47;
      v24 = sub_5D508(v4);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {
      sub_69198(v4, &qword_3BC418);
      v26 = v11;
      v27 = v12[7];
      v28 = v26;
      sub_1D98F4(v26, v7, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v29 = *(v27 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v19) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_5C4A0(0, v29[2] + 1, 1, v29);
        *(v27 + 8 * v19) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_5C4A0(v31 > 1, v32 + 1, 1, v29);
        *(v27 + 8 * v19) = v29;
      }

      v11 = v28;
      v29[2] = v32 + 1;
      v16 = v45;
      v17 = v29 + v46 + v32 * v45;
      v7 = v43;
      sub_1D98F4(v43, v17, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v4 = v42;
    }

    else
    {
      sub_6620C(&qword_3BC430);
      v33 = v46;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      sub_1D98F4(v11, v34 + v33, type metadata accessor for ReadingInsightsDataProvider.DayEntry);
      v12[(v19 >> 6) + 8] |= 1 << v19;
      sub_69130(v4, v12[6] + *(v44 + 72) * v19, &qword_3BC418);
      *(v12[7] + 8 * v19) = v34;
      v35 = v12[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v12[2] = v37;
      v16 = v45;
    }

    v15 += v16;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2C6678();
  __break(1u);
  return result;
}

uint64_t sub_1D982C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D98F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D995C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D99A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE6D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE6D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double JSShelfPaginationIntentProvider.paginationIntent(for:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C2AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_2C0E58();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Shelf();
  sub_1D9D50(a1 + *(v15 + 72), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D9DC0(v7);
  }

  else
  {
    v28 = a1;
    v29 = v2;
    v16 = *(v9 + 32);
    v16(v14, v7, v8);
    v16(v11, v14, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for PaginationInfo.nextHref(_:))
    {
      (*(v9 + 96))(v11, v8);
      v27 = *v11;
      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      v20 = *v28;
      v19 = v28[1];
      v21 = *(*(v28 + *(v15 + 68)) + 16);
      v22 = type metadata accessor for JSShelfPaginationIntent();
      *(a2 + 24) = v22;
      *(a2 + 32) = sub_1D9E28();
      v23 = sub_720C8(a2);
      v24 = *(v22 + 32);
      v25 = sub_2C49F8();
      (*(*(v25 - 8) + 16))(v23 + v24, v29, v25);
      *v23 = v20;
      v23[1] = v19;
      *(v23 + 1) = v27;
      v23[4] = v18;
      v23[5] = v17;
      v23[6] = v21;

      return result;
    }

    (*(v9 + 8))(v11, v8);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D9D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C2AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9DC0(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C2AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9E28()
{
  result = qword_3BD2F0;
  if (!qword_3BD2F0)
  {
    type metadata accessor for JSShelfPaginationIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD2F0);
  }

  return result;
}

uint64_t sub_1D9EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C49F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D9F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C49F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for JSShelfPaginationIntentProvider()
{
  result = qword_3C56B0;
  if (!qword_3C56B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9FE8()
{
  result = sub_2C49F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA078()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_2C5888();
  v3 = sub_2C5888();
  v4 = sub_2C5888();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_2C58C8();
  return v6;
}

uint64_t sub_1DA178(uint64_t a1, int a2)
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

uint64_t sub_1DA1C0(uint64_t result, int a2, int a3)
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

Swift::Int sub_1DA218(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_111ACC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DB2B4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DA284(uint64_t a1)
{
  v2 = sub_1DBD50();

  return ReflectedStringConvertible.description.getter(a1, v2);
}

uint64_t sub_1DA2C0()
{
  v1 = v0;
  v2 = 0;
  v3 = sub_2C1BC8();
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v85 = (&v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2C1BE8();
  __chkstk_darwin(v5 - 8);
  v90 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BE5F8();
  v83 = *(v7 - 8);
  v84 = v7;
  __chkstk_darwin(v7);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C1B18();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v80 - v12;
  sub_6620C(&qword_3BC4E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2F1A80;
  sub_72084(v0, v0[3]);
  sub_284714();
  *(v13 + 32) = v14;
  *(v13 + 40) = 2;
  sub_72084(v1, v1[3]);
  sub_284A3C();
  *(v13 + 48) = v15;
  *(v13 + 56) = 4;
  v16 = sub_72084(v1, v1[3]);
  v17 = 0.0;
  if (v16[4] >= 2)
  {
    v18 = v16[2];
    v19 = sub_1DAFF0(v16[5]);
    v20 = v19;
    v21 = v19 + 64;
    v22 = 1 << *(v19 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v19 + 64);
    if (v24)
    {
      v80 = v18;
      v81 = 0;
      v25 = 0;
      v26 = __clz(__rbit64(v24));
      v27 = (v24 - 1) & v24;
      v28 = (v22 + 63) >> 6;
LABEL_10:
      v2 = *(*(v19 + 48) + 16 * v26 + 8);
      v31 = *(*(v19 + 56) + 8 * v26);

      if (!v27)
      {
        goto LABEL_13;
      }

      do
      {
LABEL_11:
        while (1)
        {
          v32 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v33 = v32 | (v25 << 6);
          v34 = *(*(v20 + 56) + 8 * v33);
          if (v31 < v34)
          {
            break;
          }

          if (!v27)
          {
            goto LABEL_13;
          }
        }

        v36 = *(*(v20 + 48) + 16 * v33 + 8);

        v2 = v36;
        v31 = v34;
      }

      while (v27);
      while (1)
      {
LABEL_13:
        v35 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v35 >= v28)
        {
          break;
        }

        v27 = *(v21 + 8 * v35);
        ++v25;
        if (v27)
        {
          v25 = v35;
          goto LABEL_11;
        }
      }

      if (v31 >= 2)
      {
        v17 = v31 / *(v80 + 16);
      }

      v2 = v81;
    }

    else
    {
      v29 = 0;
      v28 = (v22 + 63) >> 6;
      while (v28 - 1 != v24)
      {
        v25 = v24 + 1;
        v30 = *(v19 + 8 * v24 + 72);
        v29 -= 64;
        ++v24;
        if (v30)
        {
          v80 = v18;
          v81 = 0;
          v27 = (v30 - 1) & v30;
          v26 = __clz(__rbit64(v30)) - v29;
          goto LABEL_10;
        }
      }
    }
  }

  *(v13 + 64) = v17;
  *(v13 + 72) = 3;
  sub_72084(v1, v1[3]);
  sub_284B44();
  *(v13 + 80) = v37;
  *(v13 + 88) = 0;
  sub_72084(v1, v1[3]);
  sub_284CDC();
  *(v13 + 96) = v38;
  *(v13 + 104) = 1;
  *(v13 + 112) = 0x3FD0000000000000;
  *(v13 + 120) = 5;
  if (qword_3BB828 != -1)
  {
LABEL_44:
    swift_once();
  }

  v39 = sub_2C00B8();
  sub_57AD8(v39, qword_3C3110);

  v40 = sub_2C0098();
  v41 = sub_2C5DE8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v93 = v43;
    *v42 = 136315138;
    v44 = sub_2C5B38();
    v46 = sub_5CCF4(v44, v45, &v93);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_0, v40, v41, "scoreList: %s", v42, 0xCu);
    sub_68CD0(v43);
  }

  v47 = *(v13 + 16);
  if (v47)
  {
    v48 = (v13 + 40);
    v49 = _swiftEmptyArrayStorage;
    do
    {
      v53 = *(v48 - 1);
      if (v53 > 0.0)
      {
        v54 = *v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_64B94(0, *(v49 + 2) + 1, 1);
          v49 = v93;
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          sub_64B94((v50 > 1), v51 + 1, 1);
          v49 = v93;
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[16 * v51];
        *(v52 + 4) = v53;
        v52[40] = v54;
      }

      v48 += 2;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
  }

  v93 = v49;

  sub_1DA218(&v93);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    if (*(v93 + 2))
    {
      v56 = *(v93 + 4);
      v57 = v93[40];
    }

    else
    {
      v56 = 0;
      v57 = 6;
    }

    v58 = sub_2C0098();
    v59 = sub_2C5DE8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v95[0] = v61;
      *v60 = 136315138;
      v93 = v56;
      v94 = v57;
      sub_6620C(&qword_3C5788);
      v62 = sub_2C5918();
      v64 = sub_5CCF4(v62, v63, v95);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_0, v58, v59, "selected score: %s", v60, 0xCu);
      sub_68CD0(v61);
    }

    v65 = *sub_72084(v1, v1[3]);
    v66 = v82;
    sub_2BE5E8();
    v67 = sub_1E2374(v65, v66);
    v68 = v84;
    v69 = *(v83 + 8);
    v69(v66, v84);
    v70 = v86;
    sub_1DAC88(v57, v67);

    sub_6620C(&qword_3BC400);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_2E15C0;
    v72 = *sub_72084(v1, v1[3]);
    sub_2BE5E8();
    v73 = sub_1E2374(v72, v66);
    v75 = v74;
    v69(v66, v68);
    v76 = v85;
    *v85 = v73;
    v76[1] = v75;
    (*(v88 + 104))(v76, enum case for TransitionFrameViewModel.Section.readerType(_:), v89);
    sub_2C1BD8();
    *(v71 + 56) = sub_2C0FD8();
    *(v71 + 64) = sub_1DAFA8(&qword_3BE6B0, &type metadata accessor for TransitionFrame);
    sub_720C8((v71 + 32));
    sub_2C0FC8();
    v78 = v91;
    v77 = v92;
    (*(v91 + 16))(v87, v70, v92);
    *(v71 + 96) = sub_2C0FA8();
    *(v71 + 104) = sub_1DAFA8(&qword_3C5780, &type metadata accessor for ReaderTypeFrame);
    sub_720C8((v71 + 72));
    sub_2C0F98();
    (*(v78 + 8))(v70, v77);
    return v71;
  }

  return result;
}

uint64_t sub_1DAC88(char a1, uint64_t a2)
{
  v21[1] = a2;
  v3 = sub_6620C(&qword_3BE6C8);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = sub_6620C(&qword_3BE6D0);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = sub_2BEB08();
  __chkstk_darwin(v9 - 8);
  v10 = sub_2C1AF8();
  v11 = __chkstk_darwin(v10);
  v13 = *(&off_391790 + a1);
  v14 = *(&off_3917C8 + a1);
  (*(v15 + 104))(v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *v13, v11);
  v16 = sub_2BF0C8();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = *v14;
  v18 = sub_2BE8D8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v5, v17, v18);
  (*(v19 + 56))(v5, 0, 1, v18);

  sub_2BEAF8();
  return sub_2C1B08();
}

uint64_t sub_1DAFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAFF0(uint64_t a1)
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
    result = sub_1DB150(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1DB23C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1DB150(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_61C48(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_61C48(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DB23C(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1DB150(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_1DB2B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2C6548(v2);
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
        v5 = sub_2C5B68();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DB440(v7, v8, a1, v4);
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
    return sub_1DB3AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DB3AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    v9 = v5;
    while (1)
    {
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *(v9 - 2);
      v9 -= 2;
      v13 = v12 < *v8;
      v14 = v11 < *(v8 - 8);
      if (*v8 != v12)
      {
        v14 = v13;
      }

      if (!v14)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v8 = *v9;
      *(v8 - 2) = v10;
      *(v8 - 8) = v11;
      v8 = v9;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB440(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_97:
    v5 = *v96;
    if (!*v96)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_129:
      result = sub_111978(v10);
      v10 = result;
    }

    v91 = *(v10 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = *&v10[16 * v91];
        v93 = *&v10[16 * v91 + 24];
        sub_1DBA24((*a3 + 16 * v92), (*a3 + 16 * *&v10[16 * v91 + 16]), (*a3 + 16 * v93), v5);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_111978(v10);
        }

        if (v91 - 2 >= *(v10 + 2))
        {
          goto LABEL_123;
        }

        v94 = &v10[16 * v91];
        *v94 = v92;
        *(v94 + 1) = v93;
        result = sub_1118EC(v91 - 1);
        v91 = *(v10 + 2);
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = v14 < *(v16 + 8);
      if (v13 != *v16)
      {
        v17 = *v16 < v13;
      }

      v18 = v11 + 2;
      v19 = (v16 + 24);
      while (v7 != v18)
      {
        v20 = v19[1];
        v21 = *(v19 - 1);
        v22 = *v19;
        v23 = *(v19 + 16);
        v19 += 2;
        v24 = v23 >= v22;
        if (v20 != v21)
        {
          v24 = v21 >= v20;
        }

        ++v18;
        if (v17 == v24)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_27;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_27;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_126;
      }

      if (v11 < v9)
      {
        v25 = 16 * v9 - 16;
        v26 = v9;
        v27 = v11;
        do
        {
          if (v27 != --v26)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v30 = (v29 + v15);
            v31 = (v29 + v25);
            v32 = *(v29 + v15);
            v33 = *(v29 + v15 + 8);
            if (v15 != v25 || v30 >= v31 + 1)
            {
              *v30 = *v31;
            }

            v28 = v29 + v25;
            *v28 = v32;
            *(v28 + 8) = v33;
          }

          ++v27;
          v25 -= 16;
          v15 += 16;
        }

        while (v27 < v26);
        v7 = a3[1];
      }
    }

LABEL_27:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_125;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_127;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_46:
    if (v9 < v11)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_5BFE4(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v46 = *(v10 + 3);
    v47 = v5 + 1;
    if (v5 >= v46 >> 1)
    {
      result = sub_5BFE4((v46 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v47;
    v48 = &v10[16 * v5];
    *(v48 + 4) = v11;
    *(v48 + 5) = v9;
    v49 = *v96;
    if (!*v96)
    {
      goto LABEL_134;
    }

    if (v5)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v10 + 4);
          v52 = *(v10 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_66:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v10[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v10[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v77 = &v10[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_80:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v10[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_87:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
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

        if (!*a3)
        {
          goto LABEL_131;
        }

        v89 = *&v10[16 * v88 + 32];
        v5 = *&v10[16 * v50 + 40];
        sub_1DBA24((*a3 + 16 * v89), (*a3 + 16 * *&v10[16 * v50 + 32]), (*a3 + 16 * v5), v49);
        if (v4)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_111978(v10);
        }

        if (v88 >= *(v10 + 2))
        {
          goto LABEL_110;
        }

        v90 = &v10[16 * v88];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        result = sub_1118EC(v50);
        v47 = *(v10 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v10[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v10[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v10[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_97;
    }
  }

  v34 = *a3;
  v35 = *a3 + 16 * v9;
  v36 = v11 - v9;
LABEL_37:
  v37 = v36;
  v38 = v35;
  v39 = v35;
  while (1)
  {
    v40 = *v38;
    v41 = *(v38 + 8);
    v42 = *(v39 - 2);
    v39 -= 2;
    v43 = v42 < *v38;
    v44 = v41 < *(v38 - 8);
    if (*v38 != v42)
    {
      v44 = v43;
    }

    if (!v44)
    {
LABEL_36:
      ++v9;
      v35 += 16;
      --v36;
      if (v9 != v7)
      {
        goto LABEL_37;
      }

      v9 = v7;
      goto LABEL_46;
    }

    if (!v34)
    {
      break;
    }

    *v38 = *v39;
    *(v38 - 2) = v40;
    *(v38 - 8) = v41;
    v38 = v39;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_36;
    }
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