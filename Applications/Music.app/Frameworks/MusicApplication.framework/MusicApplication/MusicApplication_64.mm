uint64_t sub_585E08()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_15F84(v7, v75, &qword_E0E348);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_512C64(v82, v80);

    sub_513BF8(v21, v19, v20, v18, SBYTE1(v18));
    sub_12E1C(v22, &qword_E0E348);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_512C64(v82, v80);

    sub_513BF8(v21, v19, v20, v18, SBYTE1(v18));

    sub_58B738(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_15F84(v25, v26, &qword_E0E348);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_58B738(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_15F84(v32, v33, &qword_E0E348);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_15F84(v39 + v15[6], *(v0 + 200), &qword_E0DC30);
    sub_58B738(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_36B0C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_E0DC30);
  sub_15F84(v40, v41, &qword_E0E348);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_58B738(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_15F84(v45, v46, &qword_E0E348);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_12E1C(v48, &qword_E0E348);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_58B738(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_15F84(v50, v51, &qword_E0E348);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_12E1C(*(v0 + 120), &qword_E0E348);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_58B738(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_36B0C(v57, v58, &qword_E0E348);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_12E1C(v61, &qword_E0E348);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_58B738(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_58B6D0(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_53EF4C(v68, v67, v66, v73, SBYTE1(v73));
  sub_58B738(v72, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v71, &qword_E0DC30);

  return _swift_task_switch(sub_5865EC, 0, 0);
}

uint64_t sub_5865EC()
{
  sub_58B738(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_53F19C;
}

uint64_t (*sub_586838())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_53F19C;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_53F19C;
}

uint64_t (*sub_586A54())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_53F19C;
}

uint64_t sub_586B2C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_586BAC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_AB5520();
}

uint64_t sub_586C2C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v16 = v1;
  v4 = *(v1 - 8);
  v5 = (v3 + *(*(v2 - 1) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64) + v5 + 7;
  v7 = v0 + v3;

  v8 = v2[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v7 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_AB4C10();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v2[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      sub_466B8(v11[2], v12);
    }
  }

  v13 = v7 + v2[7];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  (*(v4 + 8))(v0 + v5, v16);
  v14 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8));
  if (v14 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_586E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_5848E0((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_586F64()
{
  v1 = type metadata accessor for Actions.PlaybackContext();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2 + 7;
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_AB4C10();
      (*(*(v7 - 8) + 8))(v4 + v5, v7);
    }

    else
    {
    }
  }

  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];
    if (v10 >> 60 != 15)
    {
      sub_466B8(v9[2], v10);
    }
  }

  v11 = v4 + v1[7];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v12 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v8);
  if (v13 >= 4)
  {
  }

  v14 = v0 + v12;
  swift_unknownObjectWeakDestroy();
  v15 = *(v0 + v12 + 48);
  if (v15 != 255)
  {
    sub_17774(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_587168()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_584DE0(v0 + v3, v6, v0 + v5);
}

uint64_t sub_587278()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v17 = v1;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v16 = *(v10 + 24);
      v11 = sub_AB31C0();
      v14 = *(v11 - 8);
      v15 = v11;
      if (!(*(v14 + 48))(v9 + v16, 1))
      {
        (*(v14 + 8))(v9 + v16, v15);
      }
    }

    v1 = v17;
  }

  (*(v4 + 8))(v0 + v5, v1);
  v12 = *(v0 + v6);
  if (v12 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_587554()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_17CF8;

  return sub_585870(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_5876CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_587910();
  }

  return result;
}

uint64_t sub_587724()
{
  v0 = sub_AB80A0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_AB80D0();
    __chkstk_darwin(v8);
    v9 = sub_AB86C0();
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v1 + 16))(v4, v6, v0);
    sub_AB5520();
    return (*(v1 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_587910()
{
  v78 = sub_AB86C0();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_AB8070();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = sub_AB8080();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v77 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v82 = v0;

  sub_AB80B0();

  v20 = *(v10 + 16);
  v80 = v19;
  v76 = v10 + 16;
  v20(v17, v19, v9);
  v81 = v10;
  v21 = (*(v10 + 88))(v17, v9);
  v22 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v81 + 96))(v17, v9);
    (*(v3 + 32))(v8, v17, v2);
    (*(v3 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v73 = v8;
    v23 = sub_AB8060();
    v24 = *(v3 + 8);
    v74 = (v3 + 8);
    v75 = v2;
    v24(v6, v2);
    if ((v23 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510(), , , , v83))
    {

      v25 = v81;
      v26 = v77;
      v27 = (*(v81 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v9);
      __chkstk_darwin(v27);
      v28 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v72 - 2) = v28;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v26, v9);

      sub_AB5520();
      v30 = *(v25 + 8);
      v30(v26, v9);
      v24(v73, v75);
    }

    else
    {
      v41 = v77;
      v42 = (v20)(v77, v80, v9);
      __chkstk_darwin(v42);
      v43 = v81;
      v72 = v24;
      v44 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v45 = swift_getKeyPath();
      __chkstk_darwin(v45);
      *(&v72 - 2) = v44;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v41, v9);

      sub_AB5520();
      v30 = *(v43 + 8);
      v30(v41, v9);
      v72(v73, v75);
    }

    return (v30)(v80, v9);
  }

  v31 = v21;
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    if (!v83 || (v83, swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510(), , , , (v83 & 1) != 0) || (, v32 = Player.supportsDelegation.getter(), , (v32 & 1) != 0))
    {
      v33 = v77;
      v34 = v80;
      v35 = (v20)(v77, v80, v9);
      __chkstk_darwin(v35);
      v36 = v20;
      v37 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v38 = swift_getKeyPath();
      __chkstk_darwin(v38);
      *(&v72 - 2) = v37;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v36(v79, v33, v9);

      sub_AB5520();
      v39 = *(v81 + 8);
      v39(v33, v9);
      return (v39)(v34, v9);
    }

    v53 = v82;
    v54 = *(*v82 + 120);
    swift_beginAccess();
    v56 = v74;
    v55 = v75;
    v57 = v53 + v54;
    v58 = v78;
    (*(v75 + 16))(v74, v57, v78);
    sub_AB85F0();
    v60 = v59;
    (*(v55 + 8))(v56, v58);
    if (!v60)
    {
      v67 = v77;
      (*(v3 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v68 = v81;
      v69 = (*(v81 + 104))(v67, v22, v9);
      __chkstk_darwin(v69);
      *(&v72 - 2) = v58;
      *(&v72 - 1) = &protocol witness table for Song;
      v70 = swift_getKeyPath();
      __chkstk_darwin(v70);
      *(&v72 - 2) = v71;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v67, v9);

      sub_AB5520();
      v30 = *(v68 + 8);
      v30(v67, v9);
      return (v30)(v80, v9);
    }

    v61 = v81;
    v62 = v77;
    v63 = (*(v81 + 104))(v77, v31, v9);
    __chkstk_darwin(v63);
    *(&v72 - 2) = v58;
    *(&v72 - 1) = &protocol witness table for Song;
    v64 = swift_getKeyPath();
    __chkstk_darwin(v64);
    *(&v72 - 2) = v65;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v20(v79, v62, v9);

    sub_AB5520();
    v66 = *(v61 + 8);
    v66(v62, v9);
    return (v66)(v80, v9);
  }

  else
  {
    v46 = v20;
    v47 = v77;
    v48 = v80;
    v49 = v46(v77, v80, v9);
    __chkstk_darwin(v49);
    v50 = v78;
    *(&v72 - 2) = v78;
    *(&v72 - 1) = &protocol witness table for Song;
    v51 = swift_getKeyPath();
    __chkstk_darwin(v51);
    *(&v72 - 2) = v50;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v46(v79, v47, v9);

    sub_AB5520();
    v52 = *(v81 + 8);
    v52(v47, v9);
    v52(v48, v9);
    return (v52)(v17, v9);
  }
}

uint64_t sub_588518()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO7PreviewO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_588950()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_588B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v11 = v3;
  if (v3 >= 4)
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v10 = *(a1 + 8);
    sub_58B910(&v11, v9);
    sub_15F84(&v10, v9, &unk_E12FB0);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = sub_581068;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &unk_B19EB8;
    *(a2 + 112) = 0;
    *(a2 + 120) = &unk_B19EC0;
    *(a2 + 128) = 0;
  }

  return result;
}

uint64_t sub_588CAC()
{

  return swift_deallocObject();
}

uint64_t sub_588CE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_57B20C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_588E30()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v14 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;

  v7 = v2[5];
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_AB4C10();
      (*(*(v9 - 8) + 8))(v6 + v7, v9);
    }

    else
    {
    }
  }

  v10 = (v6 + v2[6]);
  if (v10[1])
  {

    v11 = v10[3];
    if (v11 >> 60 != 15)
    {
      sub_466B8(v10[2], v11);
    }
  }

  v12 = v6 + v2[7];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  (*(v4 + 8))(v0 + ((v3 + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

unint64_t sub_58905C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_57CFDC((v0 + v3), v4, v1);
}

uint64_t sub_58912C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v11 = v0 + v6;

  v12 = v5[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v6 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_AB4C10();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = v10 + v9;
  v16 = (v11 + v5[6]);
  if (v16[1])
  {

    v17 = v16[3];
    if (v17 >> 60 != 15)
    {
      sub_466B8(v16[2], v17);
    }
  }

  v18 = v15 + 7;
  v19 = v11 + v5[7];
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + v9;
  v22 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v22 - 8) + 48))(v0 + v9, 1, v22))
  {
    if (*(v21 + 8) >= 0xDuLL)
    {
    }

    v23 = v21 + *(v22 + 20);
    v24 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_AB31C0();
      v27 = *(v26 - 8);
      v31 = v26;
      if (!(*(v27 + 48))(v23 + v25, 1))
      {
        (*(v27 + 8))(v23 + v25, v31);
      }
    }
  }

  v28 = v0 + v20;
  swift_unknownObjectWeakDestroy();
  v29 = *(v0 + v20 + 48);
  if (v29 != 255)
  {
    sub_17774(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), v29);
  }

  if (*(v28 + 64))
  {
  }

  if (*(v28 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_589588()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_17BD0;

  return sub_57DC2C(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t sub_589760()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_57FD68(v0 + v5, v0 + v6, v2, v3);
}

char *sub_5898A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v82 = a2;
  v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E135C0);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F508);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510);
  __chkstk_darwin(v9 - 8);
  v81 = &v60 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135B0);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v60 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13E70);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F518);
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v60 - v13;
  v63 = sub_AB80A0();
  v62 = *(v63 - 8);
  v14 = __chkstk_darwin(v63);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F520);
  v19 = *(v61 - 1);
  __chkstk_darwin(v61);
  v21 = &v60 - v20;
  v22 = sub_AB8080();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  *(v4 + 4) = _swiftEmptyArrayStorage;
  v66 = v4 + 32;
  v29 = *(*v4 + 128);
  (*(v23 + 104))(&v60 - v27, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v22);
  (*(v23 + 16))(v26, v28, v22);
  sub_AB54D0();
  (*(v23 + 8))(v28, v22);
  (*(v19 + 32))(&v4[v29], v21, v61);
  v30 = *(*v4 + 136);
  v31 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v32 = sub_AB8090();
  (*(*(v32 - 8) + 104))(v18, v31, v32);
  v33 = v62;
  v34 = v63;
  (*(v62 + 104))(v18, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v63);
  v61 = *(v33 + 16);
  v61(v16, v18, v34);
  v35 = v64;
  sub_AB54D0();
  v62 = *(v33 + 8);
  (v62)(v18, v34);
  (*(v65 + 32))(&v4[v30], v35, v72);
  v36 = *(*v4 + 120);
  v37 = sub_AB86C0();
  v72 = *(v37 - 8);
  (*(v72 + 16))(&v4[v36], v83, v37);
  v38 = v74;
  *(v4 + 2) = v82;
  *(v4 + 3) = v38;

  sub_587910();
  sub_AB80D0();
  v86 = v37;
  v87 = &protocol witness table for Song;
  swift_getKeyPath();
  v74 = v37;
  v84 = v37;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v61(v16, v18, v34);

  sub_AB5520();
  (v62)(v18, v34);
  v39 = v67;
  sub_AB80C0();
  sub_58B7D4();
  v40 = sub_ABA150();
  v88 = v40;
  v41 = sub_ABA130();
  v42 = *(v41 - 8);
  v43 = v81;
  v65 = *(v42 + 56);
  v64 = (v42 + 56);
  (v65)(v81, 1, 1, v41);
  sub_36A00(&qword_E0F528, &unk_E135B0);
  v44 = sub_58B820(&qword_E13540, sub_58B7D4);
  v45 = v68;
  v46 = v43;
  v47 = v69;
  v63 = v44;
  sub_AB5590();
  sub_12E1C(v46, &qword_E0F510);

  (*(v70 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  sub_36A00(&unk_E13E80, &unk_E13E70);

  v48 = v71;
  sub_AB55C0();

  v49 = v66;
  (*(v73 + 8))(v45, v48);
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*v49 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v49 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  v50 = v75;
  v51 = v82;
  sub_AB80E0();
  v52 = sub_ABA150();
  v88 = v52;
  v53 = v81;
  (v65)(v81, 1, 1, v41);
  sub_36A00(&qword_E0F530, &qword_E135C0);
  v54 = v77;
  v55 = v78;
  sub_AB5590();
  sub_12E1C(v53, &qword_E0F510);

  (*(v76 + 8))(v50, v54);
  v56 = swift_allocObject();
  swift_weakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v51;
  sub_36A00(qword_E13E90, &qword_E0F508);

  v58 = v80;
  sub_AB55C0();

  (*(v79 + 8))(v55, v58);
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v4 + 4) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v4 + 4) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  (*(v72 + 8))(v83, v74);
  return v4;
}

uint64_t sub_58A584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_578FA4;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_B19CE0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_B19CE8;
  *(a2 + 112) = 0;
}

uint64_t sub_58A63C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440) - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v21 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v3;

  v10 = v2[5];
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v11 - 8) + 48))(v9 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_AB4C10();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
    }
  }

  v13 = (v9 + v2[6]);
  if (v13[1])
  {

    v14 = v13[3];
    if (v14 >> 60 != 15)
    {
      sub_466B8(v13[2], v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = v9 + v2[7];
  if (*(v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  v17 = sub_AB8080();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v15, 1, v17))
  {
    (*(v18 + 8))(v0 + v15, v17);
  }

  (*(v7 + 8))(v0 + ((v15 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

unint64_t sub_58A95C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v9 = *(v0 + ((*(*(v1 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_581A20(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_58AAC8()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Actions.PlaybackContext();
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = sub_AB8080();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  (*(v4 + 8))(v0 + v5, v1);
  v11 = v0 + v8;

  v12 = v7[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v8 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_AB4C10();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = (v11 + v7[6]);
  if (v15[1])
  {

    v16 = v15[3];
    if (v16 >> 60 != 15)
    {
      sub_466B8(v15[2], v16);
    }
  }

  v17 = v11 + v7[7];
  if (*(v17 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  return swift_deallocObject();
}

uint64_t sub_58ADDC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_17CF8;

  return sub_582C38(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_58AFB8()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_AB31C0();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_58B284()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_17CF8;

  return sub_583C00(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC13InsertCommandV8LocationO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_58B4A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_58B4F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_58B550()
{

  return swift_deallocObject();
}

uint64_t sub_58B588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_58B5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E130E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_58B660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_58B6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_58B738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_58B7B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_58B7D4()
{
  result = qword_E103C0;
  if (!qword_E103C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E103C0);
  }

  return result;
}

uint64_t sub_58B820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_58B868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_58B8A8()
{

  return swift_deallocObject();
}

void sub_58B900(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_58B9F8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_5A4E14(a2, a1);
  sub_AB9C60();
  sub_AB9CA0();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = sub_AB9D80();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  sub_C8C3C(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_53842C;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_B19ED0;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_B19ED8;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_58BD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_53842C;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_B19ED0;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_B19ED8;
  *(a2 + 120) = 0;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000000B6B230;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000000B6B230;
  return sub_53EAA8;
}

uint64_t sub_58BEA0()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000000B6B250;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000000B6B250;
  return sub_53F19C;
}

uint64_t (*sub_58BF78())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000000B6B230;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000000B6B230;
  return sub_53F19C;
}

uint64_t (*sub_58C018())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000000B6B250;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000000B6B250;
  return sub_53F19C;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v45 = a6;
  v37 = a5;
  v40 = a4;
  v41 = a2;
  v42 = a3;
  v11 = sub_AB35C0();
  __chkstk_darwin(v11 - 8);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB9250();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = __chkstk_darwin(v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v35 = *(v18 - 8);
  v19 = *(v35 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  sub_E8BA0(a1, v47);
  v22 = swift_allocObject();
  sub_70DF8(v47, v22 + 16);
  *(v22 + 56) = a2;
  *(v22 + 64) = a3;
  v23 = swift_allocObject();
  v24 = v37;
  v38 = v23;
  *(v23 + 16) = v40;
  *(v23 + 24) = v24;
  sub_15F84(v45, v21, &qword_E0EAA0);
  v40 = a1;
  sub_E8BA0(a1, v46);
  v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_36B0C(v21, v27 + v25, &qword_E0EAA0);
  sub_70DF8(v46, v27 + v26);

  sub_AB91E0();
  (*(v43 + 16))();
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v28 = qword_E71B20;
  sub_AB3550();
  v29 = sub_AB9320();
  v31 = v30;

  sub_12E1C(v45, &qword_E0EAA0);
  __swift_destroy_boxed_opaque_existential_0(v40);
  result = (*(v43 + 8))(v17, v44);
  *a7 = sub_58C9A8;
  a7[1] = v22;
  v33 = v38;
  a7[2] = &unk_B19EF0;
  a7[3] = v33;
  a7[4] = &unk_B19F00;
  a7[5] = v27;
  a7[6] = v29;
  a7[7] = v31;
  return result;
}

unint64_t sub_58C4B0(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_AB8130();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F838);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  sub_E8BA0(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F848);
  if (swift_dynamicCast())
  {
    sub_70DF8(v37, v40);
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_AB4020();
    sub_AB82C0();
    (*(v25 + 8))(v9, v7);
    v14 = sub_58C9B4();
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_0(v40);
    return v14;
  }

  memset(v37, 0, sizeof(v37));
  v38 = 0;
  sub_12E1C(v37, &qword_E0F850);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v36[4] = v32;
  v36[5] = v33;
  v36[6] = v34;
  v36[7] = v35;
  v36[0] = v28;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v31;
  sub_70C54(v36);
  if ((BYTE1(v36[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 16))(v16, v17);
  v18 = sub_AB31C0();
  v19 = (*(*(v18 - 8) + 48))(v6, 1, v18);
  sub_12E1C(v6, &qword_E0DC30);
  if (v19 != 1)
  {
    return 0;
  }

  sub_E8BA0(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E368);
  if (swift_dynamicCast())
  {
    v20 = *(&v29 + 1);
    v21 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    (*(v21 + 8))(v20, v21);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(&v28);
    if (v23)
    {

      return 0;
    }
  }

  else
  {
    *&v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_12E1C(&v28, &unk_E13D70);
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_58C960()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_58C9B4()
{
  v1 = sub_AB8120();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v27 = &v24 - v6;
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F838);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(v10 + 16);
  v26 = v0;
  v16(&v24 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v27;
    v18(v27, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v21 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v8, v1);
      return v21;
    }

    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_ABAD90(17);

        v28 = 0x206E776F6E6B6E55;
        v29 = 0xEF206E6F73616572;
        v18(v25, v8, v1);
        v31._countAndFlagsBits = sub_AB9350();
        sub_AB94A0(v31);

        v21 = v28;
        v23 = *(v2 + 8);
        v23(v8, v1);
        v23(v27, v1);
        return v21;
      }

      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v8, v1);
  }

  else if (v17 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_ABAD90(27);

    v28 = 0xD000000000000019;
    v29 = 0x8000000000B6B4A0;
    v16(v13, v26, v9);
    v30._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v30);

    v21 = v28;
    (*(v10 + 8))(v15, v9);
    return v21;
  }

  return 0;
}

uint64_t sub_58CE58(int *a1)
{
  v1[2] = sub_AB9940();
  v1[3] = sub_AB9930();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_51E844;

  return v5();
}

uint64_t sub_58CF68()
{

  return swift_deallocObject();
}

uint64_t sub_58CFA0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58CE58(v2);
}

uint64_t sub_58D038(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_58D248, 0, 0);
}

uint64_t sub_58D248()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 200), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_53EEE4(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_AB31C0();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    v14 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_51717C(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 296) = sub_AB9930();
    v20 = sub_AB98B0();

    return _swift_task_switch(sub_58D560, v20, v19);
  }
}

uint64_t sub_58D560()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12293;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_548758(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_12E1C(*(v0 + 120), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_15F84(v36 + v14[6], *(v0 + 176), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_36B0C(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_548758(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 96), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_548758(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_548758(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_5A4E70, 0, 0);
}

uint64_t sub_58DD18()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17CF8;

  return sub_58D038(v0 + v3, v0 + v4);
}

uint64_t static Actions.ShareLyrics.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B19F08;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B19F10;
  *(a2 + 104) = 0;
}

uint64_t sub_58DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B19F08;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B19F10;
  *(a2 + 104) = 0;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_36B0C(a6, v17 + v15, &qword_E0EAA0);
  result = sub_70DF8(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &unk_B19F20;
  a7[5] = v17;
  return result;
}

uint64_t sub_58E0A8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_58E2B8, 0, 0);
}

uint64_t sub_58E2B8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 200), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_53EEE4(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_AB31C0();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    v14 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_51717C(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 296) = sub_AB9930();
    v20 = sub_AB98B0();

    return _swift_task_switch(sub_58E5D0, v20, v19);
  }
}

uint64_t sub_58E5D0()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12805;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_548758(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_12E1C(*(v0 + 120), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_15F84(v36 + v14[6], *(v0 + 176), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_36B0C(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_548758(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 96), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_548758(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_548758(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_58ED84, 0, 0);
}

uint64_t sub_58ED84()
{
  sub_548758(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = sub_AB31C0();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_58F118()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17BD0;

  return sub_58E0A8(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id sub_58F43C()
{
  v0 = sub_AB9260();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_58F6AC, 0, 0);
}

uint64_t sub_58F6AC()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_58F720(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_58F7BC, 0, 0);
}

uint64_t sub_58F7BC()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v7 = 0;
  if (v5 != 1)
  {
    v8 = *(v0 + 24);
    sub_AB30F0(v6);
    v7 = v9;
    (*(v4 + 8))(v8, v3);
  }

  [v2 setOriginalURL:v7];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_58F914(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58F9B0, 0, 0);
}

uint64_t sub_58F9B0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8A70();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_58FAD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58FB74, 0, 0);
}

uint64_t sub_58FB74()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB4530();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_58FC9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58FD38, 0, 0);
}

uint64_t sub_58FD38()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8780();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_58FE60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58FEFC, 0, 0);
}

uint64_t sub_58FEFC()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8E30();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_590024(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5900C0, 0, 0);
}

uint64_t sub_5900C0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8520();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_5901E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_590284, 0, 0);
}

uint64_t sub_590284()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB4570();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ShareableMusicItem.augmentMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_59044C, 0, 0);
}

uint64_t sub_59044C()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_590564;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

uint64_t sub_590564()
{

  return _swift_task_switch(sub_590660, 0, 0);
}

uint64_t sub_590660()
{
  v1 = *(v0 + 48);
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_AB30F0(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 56) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t Album.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F550);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F558);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_590B70, 0, 0);
}

uint64_t sub_590B70()
{
  v1 = v0[16];
  sub_AB8740();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB8710();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB8770();
      sub_5A4D8C(&qword_E0ED10, &type metadata accessor for Album);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_590E10;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_590E10()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_591170;
  }

  else
  {

    v2 = sub_590F2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_590F2C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F3E8, &qword_E0F830, &type metadata accessor for Album, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0EC98);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8740();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_591170()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t Album.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_AB44D0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_AB44F0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F550);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F558);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_591744, 0, 0);
}

uint64_t sub_591744()
{
  v1 = sub_AB8710();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 216) = v5;
    v6 = [v5 specialization];
    *(v0 + 224) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 232) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 240) = sub_AB8770();
        sub_5A4D8C(&qword_E0ED10, &type metadata accessor for Album);

        sub_AB7F00();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_AF82B0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ED08);
        *(v9 + 32) = sub_AB7D20();
        sub_AB7EF0();
        v10 = swift_task_alloc();
        *(v0 + 248) = v10;
        *v10 = v0;
        v10[1] = sub_5919F4;
        v11 = *(v0 + 168);
        v12 = *(v0 + 176);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_5919F4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_592074;
  }

  else
  {

    v2 = sub_591B10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_591B10()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_AB7F30();
  sub_58B9F8(&qword_E0F3E8, &qword_E0F830, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  sub_15F84(v2, v3, &qword_E0EC98);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    sub_12E1C(*(v0 + 136), &qword_E0EC98);
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    sub_AB8740();
    (*(v7 + 8))(v13, v12);
    v15 = sub_AB31C0();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      sub_AB30F0(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  sub_15F84(v21, v22, &qword_E0EC98);
  if (v8(v22, 1, v20) == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0EC98);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = sub_AB8700();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        sub_503918(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v30;
        v56 = v0;
        v52 = (v28 - 8);
        v53 = (v29 + 8);
        do
        {
          v32 = *(v0 + 88);
          v33 = *(v0 + 64);
          v34 = *(v0 + 72);
          v35 = *(v0 + 48);
          v55(v32, v31, v34);
          sub_AB44E0();
          v36 = sub_AB44C0();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_503918((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v54;
          --v27;
          v0 = v56;
        }

        while (v27);
      }

      isa = sub_AB9740().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  [*(v0 + 232) setOffers:isa];

  sub_12E1C(v49, &qword_E0EC98);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_592074()
{
  v22 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);
    v19 = *(v0 + 176);
    v20 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_592370(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Album.shareURL.getter(a1);
}

uint64_t sub_592420(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F568);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F578);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F580);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5928A4, 0, 0);
}

uint64_t sub_5928A4()
{
  v1 = v0[16];
  sub_AB88D0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB88C0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB88F0();
      sub_5A4D8C(&qword_E0F588, &type metadata accessor for Artist);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_592B44;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_592B44()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_592EA4;
  }

  else
  {

    v2 = sub_592C60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_592C60()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F568, &qword_E0F828, &type metadata accessor for Artist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F570);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB88D0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_592EA4()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_593188(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Artist.shareURL.getter(a1);
}

uint64_t sub_593238(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5932D4, 0, 0);
}

uint64_t sub_5932D4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

uint64_t sub_593374()
{

  return _swift_task_switch(sub_5A4E90, 0, 0);
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB31C0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Composer.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_5936E0()
{
  v1 = *(v0 + 16);
  v2 = sub_AB31C0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_593794(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58F720(a1);
}

uint64_t Curator.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_593A24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593A44, 0, 0);
}

uint64_t sub_593A44()
{
  sub_AB8A70();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_593ABC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58F914(a1);
}

uint64_t sub_593B6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593B8C, 0, 0);
}

uint64_t sub_593B8C()
{
  sub_AB4530();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_593C04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58FAD8(a1);
}

uint64_t Genre.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_593E94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593EB4, 0, 0);
}

uint64_t sub_593EB4()
{
  sub_AB8780();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_593F2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58FC9C(a1);
}

uint64_t MusicMovie.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F590);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F598);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5A0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5A8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5943C4, 0, 0);
}

uint64_t sub_5943C4()
{
  v1 = v0[16];
  sub_AB4480();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB44A0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB44B0();
      sub_5A4D8C(&qword_E0F5B0, &type metadata accessor for MusicMovie);
      sub_5A4D8C(&qword_E0F5B8, &type metadata accessor for MusicMovie);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_594698;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_594698()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_5949F8;
  }

  else
  {

    v2 = sub_5947B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5947B4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F590, &qword_E0F820, &type metadata accessor for MusicMovie, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F598);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB4480();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_5949F8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_594CDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t sub_594D8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_594E28, 0, 0);
}

uint64_t sub_594E28()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5C0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECD8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5C8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5D0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5950D8, 0, 0);
}

uint64_t sub_5950D8()
{
  v1 = v0[16];
  sub_AB8000();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB7FE0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB8030();
      sub_5A4D8C(&qword_E0F5D8, &type metadata accessor for MusicVideo);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_595378;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_595378()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_5956D8;
  }

  else
  {

    v2 = sub_595494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_595494()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F5C0, &qword_E0F818, &type metadata accessor for MusicVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0ECD8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8000();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_5956D8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_5959D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t sub_595A6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_595B08, 0, 0);
}

uint64_t sub_595B08()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5E0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5E8);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5F0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_595FA4, 0, 0);
}

uint64_t sub_595FA4()
{
  v1 = v0[17];
  sub_AB8D20();
  v2 = sub_AB31C0();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[17], &qword_E0DC30);
    v4 = sub_AB8CE0();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = sub_AB8E20();
      sub_5A4D8C(&qword_E0F5F8, &type metadata accessor for Playlist);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = sub_5962B8;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = sub_596624;
      v14 = v0[9];

      return Playlist.publish()(v14);
    }
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[17], v2);
    (*(v3 + 56))(v11, 0, 1, v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_5962B8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_5968A0;
  }

  else
  {

    v2 = sub_5963D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5963D4()
{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F5E0, &qword_E0F810, &type metadata accessor for Playlist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E10B00);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[22];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];
    sub_AB8D20();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_596624()
{

  return _swift_task_switch(sub_596720, 0, 0);
}

uint64_t sub_596720()
{
  v1 = v0[9];
  v2 = sub_AB8E20();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    sub_12E1C(v1, &qword_E10B00);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    sub_AB8D20();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_5968A0()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[15];
    v18 = v0[14];
    v19 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[19] + 56))(v0[4], 1, 1, v0[18]);

  v15 = v0[1];

  return v15();
}

uint64_t Playlist.publish()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_AB8E20();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F600);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F608);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F610);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B30);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_596DBC, 0, 0);
}

uint64_t sub_596DBC()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = sub_AB8A90();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_AB4340();
  sub_12E1C(v1, &qword_E0F610);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  sub_AB4330();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_596F38;
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

uint64_t sub_596F38()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_59716C;
  }

  else
  {
    v2 = sub_59704C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59704C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_AB4380();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_59716C()
{
  v30 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, qword_E0F538);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v8)
  {
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136446466;
    sub_5A4D8C(&qword_E10A80, &type metadata accessor for Playlist);
    v27 = v12;
    v28 = v10;
    v17 = sub_ABB330();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_500C84(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v21 = sub_AB9350();
    v23 = sub_500C84(v21, v22, &v29);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_0, v6, v26, "Failed to make playlist=%{public}s public with error=%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v28, v27);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  (*(v0[6] + 56))(v0[3], 1, 1, v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_5974B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Playlist.shareURL.getter(a1);
}

uint64_t sub_597564(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_597600, 0, 0);
}

uint64_t sub_597600()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t sub_5976AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_5976CC, 0, 0);
}

uint64_t sub_5976CC()
{
  sub_AB8E30();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_59772C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58FE60(a1);
}

uint64_t RecordLabel.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_5979BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_5979DC, 0, 0);
}

uint64_t sub_5979DC()
{
  sub_AB8520();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_597A54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_590024(a1);
}

uint64_t SocialProfile.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_597CE4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_597D04, 0, 0);
}

uint64_t sub_597D04()
{
  sub_AB4570();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_597D7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_5901E8(a1);
}

uint64_t Song.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F618);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECE0);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F620);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F628);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_598214, 0, 0);
}

uint64_t sub_598214()
{
  v1 = v0[16];
  sub_AB8670();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB85F0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB86C0();
      sub_5A4D8C(&qword_E0F630, &type metadata accessor for Song);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_5984B4;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_5984B4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_598814;
  }

  else
  {

    v2 = sub_5985D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5985D0()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F618, &qword_E0F808, &type metadata accessor for Song, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0ECE0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8670();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_598814()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_598B0C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_AB8570();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_AB44D0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_AB44F0();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F618);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECE0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F620);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F628);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_598EB4, 0, 0);
}

uint64_t sub_598EB4()
{
  v1 = sub_AB85F0();
  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 256) = v5;
    v6 = [v5 specialization];
    *(v0 + 264) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 272) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 280) = sub_AB86C0();
        sub_5A4D8C(&qword_E0F630, &type metadata accessor for Song);

        sub_AB7F00();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_AF82B0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F638);
        *(v9 + 32) = sub_AB7D10();
        sub_AB7EF0();
        v10 = swift_task_alloc();
        *(v0 + 288) = v10;
        *v10 = v0;
        v10[1] = sub_599198;
        v11 = *(v0 + 208);
        v12 = *(v0 + 216);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_599198()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_599A44;
  }

  else
  {

    v2 = sub_5992B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5992B4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_AB7F30();
  sub_58B9F8(&qword_E0F618, &qword_E0F808, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  sub_15F84(v2, v3, &qword_E0ECE0);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    sub_12E1C(*(v0 + 176), &qword_E0ECE0);
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    sub_AB8670();
    (*(v7 + 8))(v13, v12);
    v15 = sub_AB31C0();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      sub_AB30F0(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  sub_15F84(v21, v22, &qword_E0ECE0);
  if (v8(v22, 1, v20) == 1)
  {
    sub_12E1C(*(v0 + 168), &qword_E0ECE0);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = sub_AB85E0();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v71 = v8;
        v72 = v7;
        v28 = *(v0 + 104);
        v29 = *(v0 + 80);
        sub_503918(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v70 = v26;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v75 = *(v28 + 56);
        v76 = v30;
        v77 = v0;
        v73 = (v28 - 8);
        v74 = (v29 + 8);
        do
        {
          v32 = *(v0 + 112);
          v33 = *(v0 + 88);
          v34 = *(v0 + 96);
          v35 = *(v0 + 72);
          v76(v32, v31, v34);
          sub_AB44E0();
          v36 = sub_AB44C0();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_503918((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v75;
          --v27;
          v0 = v77;
        }

        while (v27);

        v7 = v72;
        v8 = v71;
      }

      else
      {
      }

      isa = sub_AB9740().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  [*(v0 + 272) setOffers:{isa, v70}];

  sub_15F84(v43, v44, &qword_E0ECE0);
  if (v8(v44, 1, v42) == 1)
  {
    sub_12E1C(*(v0 + 160), &qword_E0ECE0);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = sub_AB31C0();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = sub_AB8640();
  (*(v7 + 8))(v46, v45);
  if (!v47)
  {
    goto LABEL_24;
  }

  if (!*(v47 + 16))
  {

    goto LABEL_24;
  }

  v48 = *(v0 + 120);
  v50 = *(v0 + 56);
  v49 = *(v0 + 64);
  v51 = *(v0 + 48);
  (*(v50 + 16))(v49, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);

  sub_AB8560();
  (*(v50 + 8))(v49, v51);
  v52 = sub_AB31C0();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    sub_AB30F0(v54);
    v55 = v57;
    (*(v53 + 8))(v56, v52);
  }

LABEL_25:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 184);
  [*(v0 + 272) setPreviewURL:v55];

  sub_12E1C(v67, &qword_E0ECE0);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_599A44()
{
  v22 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 224);
    v19 = *(v0 + 216);
    v20 = *(v0 + 232);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_599D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Song.shareURL.getter(a1);
}

uint64_t sub_599E18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F640);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FC0);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F648);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F650);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59A2A0, 0, 0);
}

uint64_t sub_59A2A0()
{
  v1 = v0[16];
  sub_AB8AC0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = sub_AB8AE0();
    sub_5A4D8C(&qword_E0F658, &type metadata accessor for Station);

    sub_AB7F00();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_59A524;
    v8 = v0[12];
    v9 = v0[13];

    return MusicCatalogResourceRequest.response()(v8, v9);
  }

  else
  {
    v10 = v0[4];
    (*(v3 + 32))(v10, v0[16], v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_59A524()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59A884;
  }

  else
  {

    v2 = sub_59A640;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59A640()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F640, &qword_E0F800, &type metadata accessor for Station, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &unk_E12FC0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8AC0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59A884()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59AB68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Station.shareURL.getter(a1);
}

uint64_t sub_59AC18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59ACB4, 0, 0);
}

uint64_t sub_59ACB4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_AB8860();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for Track.song(_:) || v13 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 8))(v12, v9);
    sub_AB91E0();
    (*(v3 + 16))(v6, v8, v2);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v14 = qword_E71B20;
    sub_AB3550();
    v15 = sub_AB9320();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v15 = Track.failureMessage.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v15;
}

uint64_t Track.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_AB86C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_AB8030();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_AB8860();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_59B214, 0, 0);
}

uint64_t sub_59B214()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Track.song(_:))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v0[11] + 96))(v5, v0[10]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_59B650;
    v10 = v0[2];

    return Song.shareURL.getter(v10);
  }

  else if (v4 == enum case for Track.musicVideo(_:))
  {
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 96))(v12, v0[10]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_59B4BC;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = sub_AB31C0();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_59B4BC()
{

  return _swift_task_switch(sub_59B5B8, 0, 0);
}

uint64_t sub_59B5B8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_59B650()
{

  return _swift_task_switch(sub_59B74C, 0, 0);
}

uint64_t sub_59B74C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_59B7EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Track.shareURL.getter(a1);
}

uint64_t sub_59B888(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59B924, 0, 0);
}

uint64_t sub_59B924()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F660);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F668);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F670);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F678);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59BDB4, 0, 0);
}

uint64_t sub_59BDB4()
{
  v1 = v0[16];
  sub_AB4740();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB4760();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB4770();
      sub_5A4D8C(&qword_E0F680, &type metadata accessor for TVEpisode);
      sub_5A4D8C(&qword_E0F688, &type metadata accessor for TVEpisode);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59C088;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59C088()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59C3E8;
  }

  else
  {

    v2 = sub_59C1A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59C1A4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F660, &qword_E0F7F8, &type metadata accessor for TVEpisode, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F668);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB4740();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59C3E8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59C6CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t sub_59C77C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59C818, 0, 0);
}

uint64_t sub_59C818()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F690);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6A0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6A8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59CCA8, 0, 0);
}

uint64_t sub_59CCA8()
{
  v1 = v0[16];
  sub_AB46E0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB4700();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB4710();
      sub_5A4D8C(&qword_E0F6B0, &type metadata accessor for TVSeason);
      sub_5A4D8C(&qword_E0F6B8, &type metadata accessor for TVSeason);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59CF7C;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59CF7C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59D2DC;
  }

  else
  {

    v2 = sub_59D098;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59D098()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F690, &qword_E0F7F0, &type metadata accessor for TVSeason, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F698);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB46E0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59D2DC()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59D5C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return TVSeason.shareURL.getter(a1);
}

uint64_t sub_59D670(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59D70C, 0, 0);
}

uint64_t sub_59D70C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t sub_59D7B4()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6D0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6D8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59DBA0, 0, 0);
}

uint64_t sub_59DBA0()
{
  v1 = v0[16];
  sub_AB4680();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB46A0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB46B0();
      sub_5A4D8C(&qword_E0F6E0, &type metadata accessor for TVShow);
      sub_5A4D8C(&qword_E0F6E8, &type metadata accessor for TVShow);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59DE74;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59DE74()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59E1D4;
  }

  else
  {

    v2 = sub_59DF90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59DF90()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F6C0, &qword_E0F7E8, &type metadata accessor for TVShow, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F6C8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB4680();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59E1D4()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59E4B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return TVShow.shareURL.getter(a1);
}

uint64_t sub_59E568(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59E604, 0, 0);
}

uint64_t sub_59E604()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6F0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6F8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F700);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F708);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59E8B4, 0, 0);
}

uint64_t sub_59E8B4()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB45D0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB45E0();
      sub_5A4D8C(&qword_E0F710, &type metadata accessor for UploadedAudio);
      sub_5A4D8C(&qword_E0F718, &type metadata accessor for UploadedAudio);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59EB88;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59EB88()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59EEE8;
  }

  else
  {

    v2 = sub_59ECA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59ECA4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F6F0, &qword_E0F7E0, &type metadata accessor for UploadedAudio, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F6F8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59EEE8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59F1CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t sub_59F264(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59F300, 0, 0);
}

uint64_t sub_59F300()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t sub_59F3A8()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F720);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F728);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F730);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F738);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59F794, 0, 0);
}

uint64_t sub_59F794()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30);
    v4 = sub_AB4620();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB4630();
      sub_5A4D8C(&qword_E0F740, &type metadata accessor for UploadedVideo);
      sub_5A4D8C(&qword_E0F748, &type metadata accessor for UploadedVideo);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59FA68;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59FA68()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59FDC8;
  }

  else
  {

    v2 = sub_59FB84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59FB84()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F720, &qword_E0F7D8, &type metadata accessor for UploadedVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F728);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59FDC8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_5A00AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t sub_5A015C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5A01F8, 0, 0);
}

uint64_t sub_5A01F8()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v54 = sub_AB4630();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_AB45E0();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_AB46B0();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_AB4710();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_AB4770();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_AB8AE0();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_AB86C0();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_AB4590();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_AB8540();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB8E50();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v79 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB8E20();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v82 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB8030();
  v86 = *(v14 - 8);
  v87 = v14;
  __chkstk_darwin(v14);
  v85 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB44B0();
  v89 = *(v16 - 8);
  v90 = v16;
  __chkstk_darwin(v16);
  v88 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB87A0();
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18);
  v91 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB4550();
  v95 = *(v20 - 8);
  v96 = v20;
  __chkstk_darwin(v20);
  v94 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_AB8A90();
  v97 = *(v22 - 8);
  v98 = v22;
  __chkstk_darwin(v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_AB88F0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_AB8770();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_AB3F80();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v36, v99, v33);
  v37 = (*(v34 + 88))(v36, v33);
  if (v37 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v30 + 32))(v32, v36, v29);
    sub_AB8740();
    return (*(v30 + 8))(v32, v29);
  }

  v39 = v100;
  if (v37 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v26 + 32))(v28, v36, v25);
    sub_AB88D0();
    return (*(v26 + 8))(v28, v25);
  }

  if (v37 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v36, v33);
    v40 = sub_AB31C0();
    return (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  }

  v41 = v100;
  if (v37 == enum case for GenericMusicItem.creditArtist(_:))
  {
    goto LABEL_8;
  }

  if (v37 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v34 + 96))(v36, v33);
    v44 = v97;
    v43 = v98;
    (*(v97 + 32))(v24, v36, v98);
    sub_AB8A70();
    return (*(v44 + 8))(v24, v43);
  }

  if (v37 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v94;
    v46 = v95;
    v47 = v96;
    (*(v95 + 32))(v94, v36, v96);
    sub_AB4530();
  }

  else if (v37 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v91;
    v46 = v92;
    v47 = v93;
    (*(v92 + 32))(v91, v36, v93);
    sub_AB8780();
  }

  else if (v37 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v88;
    v46 = v89;
    v47 = v90;
    (*(v89 + 32))(v88, v36, v90);
    sub_AB4480();
  }

  else if (v37 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v85;
    v46 = v86;
    v47 = v87;
    (*(v86 + 32))(v85, v36, v87);
    sub_AB8000();
  }

  else if (v37 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v82;
    v46 = v83;
    v47 = v84;
    (*(v83 + 32))(v82, v36, v84);
    sub_AB8D20();
  }

  else
  {
    if (v37 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v36, v33);
      v42 = sub_AB31C0();
      return (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    }

    if (v37 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v80;
      v47 = v81;
      v45 = v79;
      (*(v80 + 32))(v79, v36, v81);
      sub_AB8E30();
    }

    else if (v37 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v77;
      v45 = v76;
      v47 = v78;
      (*(v77 + 32))(v76, v36, v78);
      sub_AB8520();
    }

    else
    {
      if (v37 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v37 == enum case for GenericMusicItem.song(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v71;
          v49 = v70;
          v50 = v72;
          (*(v71 + 32))(v70, v36, v72);
          sub_AB8670();
        }

        else if (v37 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v68;
          v49 = v67;
          v50 = v69;
          (*(v68 + 32))(v67, v36, v69);
          sub_AB8AC0();
        }

        else if (v37 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v65;
          v49 = v64;
          v50 = v66;
          (*(v65 + 32))(v64, v36, v66);
          sub_AB4740();
        }

        else if (v37 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v62;
          v49 = v61;
          v50 = v63;
          (*(v62 + 32))(v61, v36, v63);
          sub_AB46E0();
        }

        else if (v37 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v59;
          v49 = v58;
          v50 = v60;
          (*(v59 + 32))(v58, v36, v60);
          sub_AB4680();
        }

        else if (v37 == enum case for GenericMusicItem.uploadedAudio(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v56;
          v49 = v55;
          v50 = v57;
          (*(v56 + 32))(v55, v36, v57);
          _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        else
        {
          if (v37 != enum case for GenericMusicItem.uploadedVideo(_:))
          {
            v41 = v100;
            if (v37 != enum case for GenericMusicItem.other(_:))
            {
              v51 = sub_AB31C0();
              (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
              return (*(v34 + 8))(v36, v33);
            }

            goto LABEL_8;
          }

          (*(v34 + 96))(v36, v33);
          v48 = v53;
          v49 = v52;
          v50 = v54;
          (*(v53 + 32))(v52, v36, v54);
          _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        return (*(v48 + 8))(v49, v50);
      }

      (*(v34 + 96))(v36, v33);
      v46 = v74;
      v45 = v73;
      v47 = v75;
      (*(v74 + 32))(v73, v36, v75);
      sub_AB4570();
    }
  }

  return (*(v46 + 8))(v45, v47);
}

uint64_t GenericMusicItem.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_AB4630();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_AB45E0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_AB46B0();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_AB4710();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_AB4770();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = sub_AB86C0();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = sub_AB8E20();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = sub_AB8030();
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = sub_AB44B0();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v12 = sub_AB88F0();
  v2[31] = v12;
  v2[32] = *(v12 - 8);
  v2[33] = swift_task_alloc();
  v13 = sub_AB8770();
  v2[34] = v13;
  v2[35] = *(v13 - 8);
  v2[36] = swift_task_alloc();
  v14 = sub_AB3F80();
  v2[37] = v14;
  v2[38] = *(v14 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_5A1A70, 0, 0);
}

uint64_t sub_5A1A70()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[35];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_5A2654;
    v10 = v0[2];

    return Album.shareURL.getter(v10);
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    (*(v0[38] + 96))(v12, v0[37]);
    (*(v14 + 32))(v13, v12, v15);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_5A2870;
    v17 = v0[2];

    return Artist.shareURL.getter(v17);
  }

  if (v4 == enum case for GenericMusicItem.composer(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.creditArtist(_:))
  {
LABEL_12:
    v19 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    v20 = sub_AB31C0();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  if (v4 == enum case for GenericMusicItem.curator(_:) || v4 == enum case for GenericMusicItem.editorialItem(_:) || v4 == enum case for GenericMusicItem.genre(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v24 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    (*(v0[38] + 96))(v24, v0[37]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = swift_task_alloc();
    v0[42] = v28;
    *v28 = v0;
    v28[1] = sub_5A2A8C;
    v29 = v0[2];

    return MusicMovie.shareURL.getter(v29);
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v30 = v0[39];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    (*(v0[38] + 96))(v30, v0[37]);
    (*(v32 + 32))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = sub_5A2CA8;
    v35 = v0[2];

    return MusicVideo.shareURL.getter(v35);
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v36 = v0[39];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[22];
    (*(v0[38] + 96))(v36, v0[37]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[44] = v40;
    *v40 = v0;
    v40[1] = sub_5A2EC4;
    v41 = v0[2];

    return Playlist.shareURL.getter(v41);
  }

  if (v4 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.radioShow(_:) || v4 == enum case for GenericMusicItem.recordLabel(_:) || v4 == enum case for GenericMusicItem.socialProfile(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v42 = v0[39];
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    (*(v0[38] + 96))(v42, v0[37]);
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = sub_5A30E0;
    v47 = v0[2];

    return Song.shareURL.getter(v47);
  }

  if (v4 == enum case for GenericMusicItem.station(_:))
  {
LABEL_10:
    v18 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    GenericMusicItem.url.getter(v18);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  if (v4 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v48 = v0[39];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[16];
    (*(v0[38] + 96))(v48, v0[37]);
    (*(v50 + 32))(v49, v48, v51);
    v52 = swift_task_alloc();
    v0[46] = v52;
    *v52 = v0;
    v52[1] = sub_5A32FC;
    v53 = v0[2];

    return TVEpisode.shareURL.getter(v53);
  }

  else if (v4 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v54 = v0[39];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[13];
    (*(v0[38] + 96))(v54, v0[37]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v0[47] = v58;
    *v58 = v0;
    v58[1] = sub_5A3518;
    v59 = v0[2];

    return TVSeason.shareURL.getter(v59);
  }

  else if (v4 == enum case for GenericMusicItem.tvShow(_:))
  {
    v60 = v0[39];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    (*(v0[38] + 96))(v60, v0[37]);
    (*(v62 + 32))(v61, v60, v63);
    v64 = swift_task_alloc();
    v0[48] = v64;
    *v64 = v0;
    v64[1] = sub_5A3734;
    v65 = v0[2];

    return TVShow.shareURL.getter(v65);
  }

  else if (v4 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v66 = v0[39];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v0[38] + 96))(v66, v0[37]);
    (*(v68 + 32))(v67, v66, v69);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = sub_5A3950;
    v71 = v0[2];

    return UploadedAudio.shareURL.getter(v71);
  }

  else
  {
    if (v4 != enum case for GenericMusicItem.uploadedVideo(_:))
    {
      if (v4 != enum case for GenericMusicItem.other(_:))
      {
        v79 = v0[38];
        v78 = v0[39];
        v80 = v0[37];
        GenericMusicItem.url.getter(v0[2]);
        (*(v79 + 8))(v78, v80);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v72 = v0[39];
    v74 = v0[5];
    v73 = v0[6];
    v75 = v0[4];
    (*(v0[38] + 96))(v72, v0[37]);
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = sub_5A3B6C;
    v77 = v0[2];

    return UploadedVideo.shareURL.getter(v77);
  }
}

uint64_t sub_5A2654()
{

  return _swift_task_switch(sub_5A2750, 0, 0);
}

uint64_t sub_5A2750()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2870()
{

  return _swift_task_switch(sub_5A296C, 0, 0);
}

uint64_t sub_5A296C()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2A8C()
{

  return _swift_task_switch(sub_5A2B88, 0, 0);
}

uint64_t sub_5A2B88()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2CA8()
{

  return _swift_task_switch(sub_5A2DA4, 0, 0);
}

uint64_t sub_5A2DA4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2EC4()
{

  return _swift_task_switch(sub_5A2FC0, 0, 0);
}

uint64_t sub_5A2FC0()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A30E0()
{

  return _swift_task_switch(sub_5A31DC, 0, 0);
}

uint64_t sub_5A31DC()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A32FC()
{

  return _swift_task_switch(sub_5A33F8, 0, 0);
}

uint64_t sub_5A33F8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3518()
{

  return _swift_task_switch(sub_5A3614, 0, 0);
}

uint64_t sub_5A3614()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3734()
{

  return _swift_task_switch(sub_5A3830, 0, 0);
}

uint64_t sub_5A3830()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3950()
{

  return _swift_task_switch(sub_5A3A4C, 0, 0);
}

uint64_t sub_5A3A4C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3B6C()
{

  return _swift_task_switch(sub_5A3C68, 0, 0);
}

uint64_t sub_5A3C68()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_AB3F80();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for GenericMusicItem.album(_:) || v13 == enum case for GenericMusicItem.artist(_:) || v13 == enum case for GenericMusicItem.composer(_:) || v13 == enum case for GenericMusicItem.curator(_:) || v13 == enum case for GenericMusicItem.genre(_:) || v13 == enum case for GenericMusicItem.musicMovie(_:) || v13 == enum case for GenericMusicItem.musicVideo(_:) || v13 == enum case for GenericMusicItem.playlist(_:) || v13 == enum case for GenericMusicItem.radioShow(_:) || v13 == enum case for GenericMusicItem.recordLabel(_:) || v13 == enum case for GenericMusicItem.socialProfile(_:) || v13 == enum case for GenericMusicItem.song(_:) || v13 == enum case for GenericMusicItem.station(_:) || v13 == enum case for GenericMusicItem.tvEpisode(_:) || v13 == enum case for GenericMusicItem.tvSeason(_:) || v13 == enum case for GenericMusicItem.tvShow(_:) || v13 == enum case for GenericMusicItem.uploadedAudio(_:) || v13 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v10 + 8))(v12, v9);
    sub_AB91E0();
    (*(v3 + 16))(v6, v8, v2);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v14 = qword_E71B20;
    sub_AB3550();
    v15 = sub_AB9320();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v15 = GenericMusicItem.failureMessage.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v15;
}

uint64_t sub_5A444C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17BD0;

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t sub_5A44E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5A4584, 0, 0);
}

uint64_t sub_5A4584()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_5A4624;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

uint64_t sub_5A4624()
{

  return _swift_task_switch(sub_5A4720, 0, 0);
}

uint64_t sub_5A4720()
{
  v1 = *(v0 + 32);
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_AB30F0(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 40) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_5A4844()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E0F538);
  __swift_project_value_buffer(v0, qword_E0F538);
  return sub_AB4BB0();
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_5A4A1C(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F790, &type metadata accessor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4A74(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F798, &type metadata accessor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4ACC(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7A0, &type metadata accessor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4B24(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7A8, &type metadata accessor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4B7C(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7B0, &type metadata accessor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4BD4(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7B8, &type metadata accessor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4C2C(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7C0, &type metadata accessor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4C84(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7C8, &type metadata accessor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4CDC(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7D0, &type metadata accessor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4D34(uint64_t a1)
{
  result = sub_5A4D8C(&unk_E12FD0, &type metadata accessor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4D8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5A4E14(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  sub_36B0C(v50, v27 + v26, &qword_E0F858);
  sub_70DF8(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  sub_36B0C(v55, v36 + v34, &qword_E0EAA0);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = sub_5A5FC0;
  v40[1] = v41;
  v40[2] = &unk_B1A938;
  v40[3] = v27;
  v40[4] = &unk_B1A948;
  v40[5] = v36;
  return result;
}

uint64_t Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  sub_36B0C(v50, v27 + v26, &qword_E0F858);
  sub_70DF8(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  sub_36B0C(v55, v36 + v34, &qword_E0EAA0);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = sub_5A8CDC;
  v40[1] = v41;
  v40[2] = &unk_B1A968;
  v40[3] = v27;
  v40[4] = &unk_B1A978;
  v40[5] = v36;
  return result;
}

uint64_t Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v49 = a4;
  v50 = a7;
  v47 = a3;
  v51 = a1;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v41 = v39 - v14;
  v16 = v15;
  v46 = v15;
  __chkstk_darwin(v13);
  v18 = v39 - v17;
  v40 = *(v10 + 16);
  v40(v39 - v17);
  v44 = *(v10 + 80);
  v19 = (v44 + 40) & ~v44;
  v20 = swift_allocObject();
  v48 = v20;
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  v42 = a6;
  v43 = a2;
  v21 = a2;
  *(v20 + 4) = a2;
  v22 = *(v10 + 32);
  v39[1] = v10 + 32;
  v22(v20 + v19, v18, a5);
  v23 = v41;
  (v40)(v41, v51, a5);
  v24 = swift_allocObject();
  *(v24 + 2) = a5;
  *(v24 + 3) = a6;
  *(v24 + 4) = v21;
  v25 = v23;
  v26 = v22;
  v22(v24 + v19, v25, a5);
  v27 = v24 + ((v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = v47;
  v29 = v47[1];
  *v27 = *v47;
  *(v27 + 1) = v29;
  *(v27 + 4) = *(v28 + 4);
  v30 = v45;
  v22(v45, v51, a5);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = (*(v31 + 64) + v44 + v32) & ~v44;
  v34 = swift_allocObject();
  v35 = v42;
  *(v34 + 16) = a5;
  *(v34 + 24) = v35;
  sub_36B0C(v49, v34 + v32, &qword_E0EAA0);
  v26(v34 + v33, v30, a5);

  v37 = v50;
  v38 = v48;
  *v50 = sub_5AC5F8;
  v37[1] = v38;
  v37[2] = &unk_B1A998;
  v37[3] = v24;
  v37[4] = &unk_B1A9A8;
  v37[5] = v34;
  return result;
}

uint64_t Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v42 = a3;
  v43 = a6;
  v39 = a2;
  v35 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v37 = &v33 - v13;
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  sub_12E1C(v16, &qword_E0EB30);
  v36 = *(v9 + 16);
  v36(v15, a1, a4);
  v38 = *(v9 + 80);
  v17 = (v38 + 40) & ~v38;
  v18 = swift_allocObject();
  v40 = v18;
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v19 = v39;
  *(v18 + 4) = v39;
  v34 = *(v9 + 32);
  v44 = v9 + 32;
  v34(v18 + v17, v15, a4);
  v20 = v37;
  v21 = v35;
  v36(v37, v35, a4);
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  *(v22 + 4) = v19;
  v23 = v20;
  v24 = v34;
  v34(v22 + v17, v23, a4);
  v25 = v41;
  v24(v41, v21, a4);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = (*(v26 + 64) + v38 + v27) & ~v38;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  sub_36B0C(v42, v29 + v27, &qword_E0EAA0);
  v24((v29 + v28), v25, a4);

  v31 = v43;
  v32 = v40;
  *v43 = sub_5AE388;
  v31[1] = v32;
  v31[2] = &unk_B1A9C8;
  v31[3] = v22;
  v31[4] = &unk_B1A9D8;
  v31[5] = v29;
  return result;
}

uint64_t sub_5A5E00()
{
  v0 = sub_AB8260();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_AB4070();
  sub_AB82C0();
  (*(v1 + 8))(v3, v0);
  v8 = sub_5A5FD8();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_5A5FD8()
{
  v1 = sub_AB8250();
  v26 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - v5;
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = *(v10 + 16);
  v25 = v0;
  v15(&v23 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v35[0] = 0;
      *(&v35[0] + 1) = 0xE000000000000000;
      sub_ABAD90(27);

      *&v35[0] = 0xD000000000000019;
      *(&v35[0] + 1) = 0x8000000000B6B4A0;
      v15(v24, v25, v9);
      v36._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v36);

      v20 = *&v35[0];
      (*(v10 + 8))(v14, v9);
      return v20;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v26;
  (*(v26 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.alreadyFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000011;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cannotFavoriteWhenDisliked(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD00000000000001DLL;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_E0CC60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      v35[4] = v31;
      v35[5] = v32;
      v35[6] = v33;
      v35[7] = v34;
      v35[0] = v27;
      v35[1] = v28;
      v35[2] = v29;
      v35[3] = v30;
      sub_70C54(v35);
      if ((WORD4(v35[0]) & 0x100) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0xD000000000000016;
      }

      goto LABEL_35;
    }

    if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.networkRequired(_:))
      {
        v20 = 0xD000000000000010;
      }

      else
      {
        if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD000000000000025;
        }

        v20 = 0x206E776F6E6B6E55;
        if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unknown(_:))
        {
          *&v35[0] = 0;
          *(&v35[0] + 1) = 0xE000000000000000;
          sub_ABAD90(17);

          *&v35[0] = 0x206E776F6E6B6E55;
          *(&v35[0] + 1) = 0xEF206E6F73616572;
          v18(v23, v8, v1);
          v37._countAndFlagsBits = sub_AB9350();
          sub_AB94A0(v37);

          v20 = *&v35[0];
          v22 = *(v17 + 8);
          v22(v8, v1);
          v22(v6, v1);
          return v20;
        }
      }

LABEL_35:
      (*(v17 + 8))(v8, v1);
      return v20;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v20 = 0xD000000000000010;
  (*(v17 + 8))(v8, v1);
  return v20;
}

uint64_t sub_5A681C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_AB8250();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_AB8260();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F8);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_5A69F4, 0, 0);
}

uint64_t sub_5A69F4()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_AB4070();
  sub_AB82C0();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_15F84(v0[52], (v0 + 14), &qword_E0F858);
      if (v0[22] != 1)
      {
        sub_17704((v0 + 14), (v0 + 2));
        v0[81] = sub_AB9940();
        v0[82] = sub_AB9930();
        v32 = sub_AB98B0();
        v28 = v33;
        v0[83] = v32;
        v0[84] = v33;
        v26 = sub_5A76B0;
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      sub_12E1C((v0 + 14), &qword_E0F858);
      v14 = v13[3];
      v0[76] = v14;
      v0[77] = v13[4];
      v0[78] = __swift_project_boxed_opaque_existential_1(v13, v14);
      sub_AB9940();
      v0[79] = sub_AB9930();
      v15 = sub_AB98B0();
      v17 = v16;
      v18 = sub_5A747C;
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[88] = v24;
      v0[89] = v23[4];
      v0[90] = __swift_project_boxed_opaque_existential_1(v23, v24);
      sub_AB9940();
      v0[91] = sub_AB9930();
      v15 = sub_AB98B0();
      v17 = v25;
      v18 = sub_5A798C;
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = sub_5A6EBC;
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.favorite<A>(_:)(v22, v20, v21);
}

uint64_t sub_5A6EBC()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_5B0320;
  }

  else
  {
    v2 = sub_5A6FD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5A6FD0()
{
  sub_15F84(v0[51], (v0 + 44), &qword_E0EB30);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = __swift_project_boxed_opaque_existential_1(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_AB9940();
    v0[74] = sub_AB9930();
    v3 = sub_AB98B0();

    return _swift_task_switch(sub_5A7154, v3, v2);
  }

  else
  {
    sub_12E1C((v0 + 44), &qword_E0EB30);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = sub_5A72B4;
    v5 = v0[52];

    return sub_773F98(v5);
  }
}

uint64_t sub_5A7154()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_720990(v3, 0, v2, v1);
  sub_5B0254(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_5A7204, 0, 0);
}

uint64_t sub_5A7204()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 352);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_5A72B4;
  v2 = *(v0 + 416);

  return sub_773F98(v2);
}

uint64_t sub_5A72B4()
{

  return _swift_task_switch(sub_5A73B0, 0, 0);
}

uint64_t sub_5A73B0()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A747C()
{
  v6 = v0[77];

  sub_6004AC(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_5A75AC;
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_5A75AC()
{
  v1 = *v0;

  sub_111904(v1 + 280);

  return _swift_task_switch(sub_5B0324, 0, 0);
}

uint64_t sub_5A76B0()
{
  v1 = sub_AB9930();
  v0[85] = v1;
  v2 = swift_task_alloc();
  v0[86] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[87] = v3;
  *v3 = v0;
  v3[1] = sub_5A77C4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 93, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_5B0344, v2, &type metadata for Bool);
}

uint64_t sub_5A77C4()
{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(sub_5A7924, v3, v2);
}

uint64_t sub_5A7924()
{

  return _swift_task_switch(sub_5B0348, 0, 0);
}

uint64_t sub_5A798C()
{
  v6 = v0[89];

  sub_5FEC68(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_5A7ABC;
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_5A7ABC()
{
  v1 = *v0;

  sub_111904(v1 + 208);

  return _swift_task_switch(sub_5B0324, 0, 0);
}

uint64_t sub_5A7BC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_5A681C(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_5A7CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_5A7F08, 0, 0);
}

uint64_t sub_5A7F08()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_15F84(*(v0 + 88), v4, &qword_E0EAA0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 232), &qword_E0EAA0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_53EEE4(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_AB31C0();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_51717C(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 328) = sub_AB9930();
    v19 = sub_AB98B0();

    return _swift_task_switch(sub_5A8214, v19, v18);
  }
}

uint64_t sub_5A8214()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5637;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_5B0254(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 160), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_5B0254(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_15F84(v36 + v14[6], *(v0 + 208), &qword_E0DC30);
    sub_5B0254(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_36B0C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_5B0254(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_5B0254(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_5B0254(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_5B0254(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_5B0254(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_5B02BC, 0, 0);
}

uint64_t sub_5A89C8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_17CF8;

  return sub_5A7CF0(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_5A8B20()
{
  v0 = sub_AB8300();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_AB3FE0();
  sub_AB82C0();
  (*(v1 + 8))(v3, v0);
  v8 = sub_5A8CF4();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_5A8CF4()
{
  v1 = sub_AB82F0();
  v27 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - v5;
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = *(v10 + 16);
  v26 = v0;
  v15(&v24 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v36[0] = 0;
      *(&v36[0] + 1) = 0xE000000000000000;
      sub_ABAD90(27);

      *&v36[0] = 0xD000000000000019;
      *(&v36[0] + 1) = 0x8000000000B6B4A0;
      v15(v25, v26, v9);
      v37._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v37);

      v21 = *&v36[0];
      (*(v10 + 8))(v14, v9);
      return v21;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v27;
  (*(v27 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  v20 = v8;
  if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.notFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0x6F76614620746F4ELL;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_E0CC60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      v36[4] = v32;
      v36[5] = v33;
      v36[6] = v34;
      v36[7] = v35;
      v36[0] = v28;
      v36[1] = v29;
      v36[2] = v30;
      v36[3] = v31;
      sub_70C54(v36);
      if ((WORD4(v36[0]) & 0x100) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0xD000000000000016;
      }

      goto LABEL_31;
    }

    if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000025;
      }

      v21 = 0x206E776F6E6B6E55;
      if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unknown(_:))
      {
        *&v36[0] = 0;
        *(&v36[0] + 1) = 0xE000000000000000;
        sub_ABAD90(17);

        *&v36[0] = 0x206E776F6E6B6E55;
        *(&v36[0] + 1) = 0xEF206E6F73616572;
        v18(v24, v20, v1);
        v38._countAndFlagsBits = sub_AB9350();
        sub_AB94A0(v38);

        v21 = *&v36[0];
        v23 = *(v17 + 8);
        v23(v20, v1);
        v23(v6, v1);
        return v21;
      }

LABEL_31:
      (*(v17 + 8))(v20, v1);
      return v21;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v21 = 0xD000000000000010;
  (*(v17 + 8))(v20, v1);
  return v21;
}

uint64_t sub_5A94C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_AB82F0();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_AB8300();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F0);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_5A969C, 0, 0);
}

uint64_t sub_5A969C()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_AB3FE0();
  sub_AB82C0();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_15F84(v0[52], (v0 + 14), &qword_E0F858);
      if (v0[22] != 1)
      {
        sub_17704((v0 + 14), (v0 + 2));
        v0[80] = sub_AB9940();
        v0[81] = sub_AB9930();
        v32 = sub_AB98B0();
        v28 = v33;
        v0[82] = v32;
        v0[83] = v33;
        v26 = sub_5AA1D8;
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      sub_12E1C((v0 + 14), &qword_E0F858);
      v14 = v13[3];
      v0[75] = v14;
      v0[76] = v13[4];
      v0[77] = __swift_project_boxed_opaque_existential_1(v13, v14);
      sub_AB9940();
      v0[78] = sub_AB9930();
      v15 = sub_AB98B0();
      v17 = v16;
      v18 = sub_5A9FA4;
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[87] = v24;
      v0[88] = v23[4];
      v0[89] = __swift_project_boxed_opaque_existential_1(v23, v24);
      sub_AB9940();
      v0[90] = sub_AB9930();
      v15 = sub_AB98B0();
      v17 = v25;
      v18 = sub_5AA5A0;
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = sub_5A9B64;
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.undoFavorite<A>(_:)(v22, v20, v21);
}